using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;

namespace ProductionSystem
{
    public class ProductionSystemFileLoader
    {
        private readonly Dictionary<string, Fact> _idsToFacts = new Dictionary<string, Fact>();
        private readonly Dictionary<string, Fact> _namesToFacts = new Dictionary<string, Fact>();
        private readonly Dictionary<string, Rule> _idsToRules = new Dictionary<string, Rule>();
        private readonly string _blocksSeparator;
        private readonly string _conditionAndConsequenceSeparator;
        private readonly string _factTokensSeparator;
        private readonly string _factsSeparator;
        private readonly string _commentStart;
        private int _lastRuleId = 1;
        
        public ProductionSystemFileLoader(string blocksSeparator = "===", string conditionAndConsequenceSeparator = "->",
                                          string factTokensSeparator = ";", string factsSeparator = ",", 
                                          string commentStart="- -")
        {
            _blocksSeparator = blocksSeparator;
            _conditionAndConsequenceSeparator = conditionAndConsequenceSeparator;
            _factTokensSeparator = factTokensSeparator;
            _factsSeparator = factsSeparator;
            _commentStart = commentStart;
        }
        
        public ProductionSystem LoadFromFile(string filename)
        {
            string[] lines = System.IO.File.ReadAllLines(filename);
            List<string> filteredLines = SkipCommentAndEmptyLines(lines);
            
            List<string> factLines = ExtractFactLines(filteredLines);
            List<string> rulesLines = ExtractRuleLines(filteredLines);

            return CreateProductionSystemFromLines(factLines, rulesLines);
        }

        private List<string> ExtractFactLines(IReadOnlyList<string> lines)
        {
            List<string> factLines = new List<string>();
            for (int i = 0; lines[i] != _blocksSeparator; i++)
            {
                factLines.Add(lines[i]);
            }

            return factLines;
        }

        private List<string> ExtractRuleLines(List<string> lines)
        {
            int separatorLineIndex = lines.FindIndex(line => line.Trim() == _blocksSeparator);
            if (separatorLineIndex == -1)
                throw new InvalidOperationException($"Block separator {_blocksSeparator} not found in file");

            List<string> ruleLines = new List<string>();
            for (int i = separatorLineIndex + 1; i < lines.Count; i++)
            {
                ruleLines.Add(lines[i]);
            }

            return ruleLines;
        }
        
        public ProductionSystem LoadFromFiles(string factsFileName, string rulesFileName)
        {
            string[] factLines = System.IO.File.ReadAllLines(factsFileName);
            string[] ruleLines = System.IO.File.ReadAllLines(rulesFileName);

            List<string> filteredFactLines = SkipCommentAndEmptyLines(factLines);
            List<string> filteredRuleLines = SkipCommentAndEmptyLines(ruleLines);
            
            return CreateProductionSystemFromLines(filteredFactLines, filteredRuleLines);
        }

        private List<string> SkipCommentAndEmptyLines(IEnumerable<string> lines)
        {
            return lines.Where(CorrectLine).ToList();
        }

        private bool CorrectLine(string line)
        {
            return !line.StartsWith(_commentStart) && !string.IsNullOrEmpty(line) && line != "________________";
        }

        private ProductionSystem CreateProductionSystemFromLines(List<string> factsLines, List<string> rulesLines)
        {
            LoadFacts(factsLines);
            LoadRules(rulesLines);

            return new ProductionSystem(_idsToFacts, _namesToFacts, _idsToRules);
        }

        private void LoadFacts(List<string> factLines)
        {
            foreach (string factLine in factLines)
            {
                Fact fact = CreateFactFromLine(factLine);
                _idsToFacts[fact.Id] = fact;
                _namesToFacts[fact.Name] = fact;
            }
        }

        private Fact CreateFactFromLine(string factLine)
        {
            string[] tokens = factLine.Split(new [] {_factTokensSeparator}, StringSplitOptions.RemoveEmptyEntries);
            string id = tokens[0];
            string name = tokens[1];
            string confidence = tokens[2];
            Fact fact = new Fact(id, name, confidence);
            return fact;
        }
        
        private void LoadRules(List<string> ruleLines)
        {
            foreach (var ruleLine in ruleLines)
            {
                var rule = CreateRuleFromLine(ruleLine);
                _idsToRules[rule.Id] = rule;
            }
        }

        // uses _idsToFacts, so facts should be loaded before
        private Rule CreateRuleFromLine(string ruleLine)
        {
            string[] tokens = ruleLine.Split(new[] {_factTokensSeparator}, StringSplitOptions.RemoveEmptyEntries);
            string rule = tokens[0];
            string confidence = tokens[1];
            tokens = rule.Split(new [] {_conditionAndConsequenceSeparator}, StringSplitOptions.RemoveEmptyEntries);
            
            ValidateRuleTokens(tokens);
            
            string leftSide = tokens[0];
            List<Fact> conditions = FactsFromEnumeration(leftSide);
            
            string rightSide = tokens[1];
            List<Fact> consequences = FactsFromEnumeration(rightSide);
            
            return new Rule(_lastRuleId++, conditions, consequences, confidence);
        }

        private void ValidateRuleTokens(string[] tokens)
        {
            if (tokens.Length > 2)
                throw new ArgumentException(
                    $"Rule line contains more than 2 tokens separated by {_conditionAndConsequenceSeparator}");
        }

        private List<Fact> FactsFromEnumeration(string factsEnumeration)
        {
            return FactIdsFromEnumeration(factsEnumeration).Select(HandleFactId).Where(f=>f != null).ToList();
        }
        
        private Fact HandleFactId(string factId)
        {
            if (factId[0] == '!')
            {
                return null;
                /*Fact fact = _idsToFacts[factId.Substring(1)].clone();
                fact.isInvert = true;
                return fact;*/
            }
                
            return _idsToFacts[factId];
        }
        
        private IEnumerable<string> FactIdsFromEnumeration(string factsEnumeration)
        {
            return factsEnumeration.Split(new [] {_factTokensSeparator}, StringSplitOptions.RemoveEmptyEntries)[0]
                                   .Split(new [] {_factsSeparator}, StringSplitOptions.RemoveEmptyEntries)
                                   .Select(idString=>idString.Trim());
        }
    }
}
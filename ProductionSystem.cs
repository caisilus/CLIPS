using System.Collections.Generic;
using System.Text;
using CLIPSNET;

namespace ProductionSystem
{
    public class ProductionSystem
    {
        public Dictionary<string, Fact> IdsToFacts { get; }
        public Dictionary<string, Fact> NamesToFacts { get; }
        public List<Rule> Rules { get; }
        
        public ProductionSystem(Dictionary<string, Fact> idsToFacts, 
                                Dictionary<string, Fact> namesToFacts, 
                                List<Rule> rules)
        {
            IdsToFacts = idsToFacts;
            NamesToFacts = namesToFacts;
            Rules = rules;
        }

        public string RulesToClipsText()
        {
            var sb = new StringBuilder();
            foreach (var rule in Rules)
            {
                sb.Append(rule.ToClipsString());
                sb.Append("\n");
            }

            return sb.ToString();
        }
    }
}
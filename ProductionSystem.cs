using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProductionSystem
{
    public class ProductionSystem
    {
        public Dictionary<string, Fact> IdsToFacts { get; }
        public Dictionary<string, Fact> NamesToFacts { get; }
        
        public Dictionary<string, Rule> IdsToRules { get; }
        public List<Rule> Rules { get; }
        
        public ProductionSystem(Dictionary<string, Fact> idsToFacts, 
                                Dictionary<string, Fact> namesToFacts, 
                                Dictionary<string, Rule> idsToRules)
        {
            IdsToFacts = idsToFacts;
            NamesToFacts = namesToFacts;
            IdsToRules = idsToRules;
            Rules = idsToRules.Values.ToList();
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
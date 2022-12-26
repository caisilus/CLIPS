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
            
            sb.Append(UpdateConfidenceRuleClipsString());
            
            foreach (var rule in Rules)
            {
                sb.Append(rule.ToClipsString());
                sb.Append("\n");
            }

            return sb.ToString();
        }

        public string UpdateConfidenceRuleClipsString()
        {
            var sb = new StringBuilder();
            sb.Append("(defrule updateConf\n");
            sb.Append("\t(declare (salience 110))\n");
            sb.Append("\t?f1 <- (fact_entity (id ?id) (name ?name) (confidence ?c1))\n");
            sb.Append("\t?f2 <- (fact_entity (id ?id) (name ?name) (confidence ?c2))\n");
            sb.Append("\t(test (!= ?c1 ?c2))\n");
            sb.Append("=>\n");
            sb.Append("\t(assert (fact_entity (id ?id) (name ?name) (confidence (- (+ ?c1 ?c2) (* ?c1 ?c2)))))\n");
            sb.Append("\t(retract ?f1)\n");
            sb.Append("\t(retract ?f2)\n");
            sb.Append(")\n");
            return sb.ToString();
        }
    }
}
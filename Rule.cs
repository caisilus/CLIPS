using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProductionSystem
{
    public class Rule
    {
        public string Id { get; private set; }
        public List<Fact> Conditions { get; private set; }
        public List<Fact> Consequences { get; private set; }
        
        public string Confidence { get; private set; }

        public Rule(int id, List<Fact> conditions, List<Fact> consequences, string confidence)
        {
            Id = $"r{id}";
            Conditions = conditions;
            Consequences = consequences;
            Confidence = confidence;
        }

        public bool IsApplicable(HashSet<Fact> facts)
        {
            foreach (Fact cond in Conditions)
            {
                if (cond.isInvert)
                {
                    if (facts.Contains(cond)){
                        return false;
                    }
                }
                else
                {
                    if (!facts.Contains(cond))
                    {
                        return false;
                    }
                }
            }
            if (!facts.Contains(Consequences[0]))
            {
                return true;
            }
            return false;
        }

        public bool HasConsequence(Fact possibleConsequence)
        {
            return Consequences.Contains(possibleConsequence);
        }
        
        // TODO can be changed for your needs
        public override string ToString()
        {
            return Id + ":" + Environment.NewLine + FactsListToString(Conditions) + 
                              Environment.NewLine + "->" + Environment.NewLine + FactsListToString(Consequences);
        }

        private string FactsListToString(List<Fact> facts)
        {
            return string.Join("," + Environment.NewLine, facts);
        }

        public string ToClipsString()
        {
            var sb = new StringBuilder();
            sb.Append($"(defrule {Id}\n");
            sb.Append("\t(declare (salience 10))\n");
            //sb.Append($"\t?raddr <- (used_rule (rule_id ~{Id}))\n");
            
            foreach (var condition in Conditions)
            {
                sb.Append("\t");
                sb.Append(condition.ToClipsCondition());
                sb.Append("\n");
            }

            sb.Append("\t=>\n");

            foreach (var consequence in Consequences)
            {
                sb.Append("\t");
                sb.Append(consequence.ToClipsConsequence(Confidence, 
                                      Conditions.Select(cond => cond.ConfidenceVariableName())));
                sb.Append("\n");
            }

            //sb.Append("\t(retract ?raddr)\n");
            sb.Append($"\t(assert (used_rule (rule_id {Id})))\n");
            
            sb.Append(")");
            return sb.ToString();
        }
    }
}
using System;

namespace ProductionSystem
{
    public class Fact
    {
        public Fact(string id, string name, string confidence)
        {
            Id = id;
            Name = name;
            isInvert = false;
            Confidence = confidence;
        }

        public Fact clone()
        {
            return new Fact(Id, Name, Confidence);
        }

        public string Id { get; }

        public string Name { get; }

        public bool isInvert { get; set; }
        
        public string Confidence { get; }

        public override string ToString()
        {
            if (isInvert)
            {
                return $"!{Id}: NOT {Name}";
            }
            return $"{Id}: {Name}";
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            if (obj?.GetType() != typeof(Fact))
                return false;
            return this.Equals(obj as Fact);
        }

        private bool Equals(Fact fact)
        {
            return this.Id == fact.Id && this.isInvert == fact.isInvert;
        }

        public string ToClipsCondition()
        {
            if (isInvert)
            {
                return $"(fact_entity (id ~{Id}) (name ?) (confidence ?))";
            }
            
            return $"(fact_entity (id {Id}) (name \"{Name}\") (confidence {Confidence}))";
        }

        public string ToClipsConsequence()
        {
            if (isInvert)
            {
                throw new ApplicationException("Invert consequence is not allowed");
            }
            
            return $"(assert (fact_entity (id {Id}) (name \"{Name}\") (confidence {Confidence})))";
        }
    }
}
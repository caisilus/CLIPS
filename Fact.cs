using System;

namespace ProductionSystem
{
    public class Fact
    {
        public Fact(string id, string name)
        {
            Id = id;
            Name = name;
            isInvert = false;
        }

        public Fact clone()
        {
            return new Fact(Id, Name);
        }

        public string Id { get; }

        public string Name { get; }

        public bool isInvert { get; set; }

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
                return $"(fact_entity (id ~{Id}) (name _))";
            }
            
            return $"(fact_entity (id {Id}) (name \"{Name}\"))";
        }

        public string ToClipsConsequence()
        {
            if (isInvert)
            {
                throw new ApplicationException("Invert consequence is not allowed");
            }
            
            return $"(assert (fact_entity (id {Id}) (name \"{Name}\")))";
        }
    }
}
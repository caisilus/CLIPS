using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using CLIPSNET;
using ProductionSystem;
using Environment = System.Environment;
using Rule = ProductionSystem.Rule;

namespace ClipsFormsExample
{
    public partial class ClipsFormsExample : Form
    {
        private readonly CLIPSNET.Environment _clips = new CLIPSNET.Environment();
        private ProductionSystem.ProductionSystem _productionSystem;
        private List<Fact> _goals;
        public ClipsFormsExample()
        {
            InitProductionSystem();
            
            _autoCompleteCollection = new AutoCompleteStringCollection();
            UpdateAutoCompleteCollection(_productionSystem.IdsToFacts.Values.Select(f=>f.Name).ToArray());
            
            File.WriteAllText("../../clips_files/rules.clp", _productionSystem.RulesToClipsText());
            
            InitClipsData();
            
            InitializeComponent();
        }

        void InitProductionSystem()
        {
            ProductionSystemFileLoader loader = new ProductionSystemFileLoader();
            string storageFolder = "../../storage/";
            string factsFile = storageFolder + "Facts_with_confidence.txt";
            string rulesFule = storageFolder + "Rules_with_confidence.txt";
            _productionSystem = loader.LoadFromFiles(factsFile, rulesFule);
        }
        
        private void InitClipsData()
        {
            _clips.Load("../../clips_files/fact_template.clp");
            _clips.Load("../../clips_files/used_rule_template.clp");
            _clips.Load("../../clips_files/rules.clp");
        }

        private void UpdateAutoCompleteCollection(string[] factNames)
        {
            _autoCompleteCollection.AddRange(factNames);
        }
        
        private void inputFactsBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter)
            {
                return;
            }

            string factName = inputFactsBox.Text;
            chosenInputsFactsBox.Text += factName;
            chosenInputsFactsBox.Text += Environment.NewLine;
        }
        
        private void goalFactsBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter)
            {
                return;
            }

            string factName = goalFactBox.Text;
            chosenGoalsFactBox.Text += factName;
            chosenGoalsFactBox.Text += Environment.NewLine;
        }

        private void nextBtn_Click(object sender, EventArgs e)
        {
            _clips.Run();
            UpdateOutput();
        }

        private void UpdateOutput()
        {
            List<Rule> usedRules = new List<Rule>();
            HashSet<Fact> deducedFacts = new HashSet<Fact>();
            foreach (var factInstance in _clips.GetFactList())
            {
                var factDict = ClipsFactToDictionary(factInstance);
                switch (factInstance.RelationName)
                {
                    case "fact_entity":
                    {
                        Fact fact = new Fact(factDict["id"], factDict["name"], factDict["confidence"]);
                        deducedFacts.Add(fact);
                        break;   
                    }
                    case "used_rule":
                    {
                        Rule rule = _productionSystem.IdsToRules[factDict["rule_id"].Trim()];
                        usedRules.Add(rule);
                        break;
                    }
                }
            }

            FillOutputHeading(deducedFacts);
            OutputUsedRules(usedRules);
            OutputDeducedFacts(deducedFacts);
        }

        private void FillOutputHeading(HashSet<Fact> deducedFacts)
        {
            bool reachedGoals = _goals.All(goal => deducedFacts.Contains(goal));
            if (reachedGoals)
            {
                outputBox.Text = "ЦЕЛИ ДОСТИГНУТЫ" + Environment.NewLine + "------------------------------";
            }
            else
            {
                outputBox.Text = "НЕВОЗМОЖНО ВЫВЕСТИ" + Environment.NewLine + "------------------------------";
            }
        }

        private void OutputUsedRules(List<Rule> usedRules)
        {
            outputBox.Text += Environment.NewLine;
            outputBox.Text += "ИСПОЛЬЗОВАННЫЕ ПРАВИЛА:" + Environment.NewLine;
            outputBox.Text += Environment.NewLine + 
                              string.Join(Environment.NewLine + Environment.NewLine, usedRules);
        }
        
        private void OutputDeducedFacts(HashSet<Fact> deducedFacts)
        {
            outputBox.Text += Environment.NewLine;
            outputBox.Text += "ВЫВЕДЕННЫЕ ФАКТЫ:";
            outputBox.Text += Environment.NewLine;
            foreach (var fact in deducedFacts)
            {
                outputBox.Text += Environment.NewLine;
                outputBox.Text += "id: ";
                outputBox.Text += fact.Id;
                outputBox.Text += " name: ";
                outputBox.Text += fact.Name;
                outputBox.Text += " confidence: ";
                outputBox.Text += fact.Confidence;
            }
        }
        
        private Dictionary<string, string> ClipsFactToDictionary(FactInstance factInstance)
        {
            Dictionary<string, string> factDict = new Dictionary<string, string>();
            foreach (var slot in factInstance.GetSlotValues())
            {
                factDict[slot.SlotName] = slot.Contents;
            }

            return factDict;
        }
        
        private void resetBtn_Click(object sender, EventArgs e)
        {
            outputBox.Text = "Выполнена команда Reset." + System.Environment.NewLine;
            
            _clips.Reset();
            
            LoadStartingFacts();
            UpdateGoals();
        }

        private void LoadStartingFacts()
        {
            foreach (string factLine in chosenInputsFactsBox.Text.Split('\n').
                Select(line => line.Trim()).
                Where(line => !string.IsNullOrEmpty(line)))
            {
                Fact fact = _productionSystem.NamesToFacts[factLine];
                var clipsString = fact.ToClipsConsequence();
                _clips.Eval(fact.ToClipsConsequence());
            }
        }

        private void UpdateGoals()
        {
            _goals = new List<Fact>();
            foreach (string factLine in chosenGoalsFactBox.Text.Split('\n').
                Select(line => line.Trim()).
                Where(line => !string.IsNullOrEmpty(line)))
            {
                Fact fact = _productionSystem.NamesToFacts[factLine];
                _goals.Add(fact);
            }
            
            _clips.LoadFromString(StopOnGoalsRule());
        }

        private string StopOnGoalsRule()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append($"(defrule goal_rule");
            sb.Append(Environment.NewLine);
            sb.Append("\t(declare (salience 100))");
            sb.Append(Environment.NewLine);
            foreach (var goal in _goals)
            {
                sb.Append("\t");
                sb.Append(goal.ToClipsCondition());
                sb.Append(Environment.NewLine);    
            }

            sb.Append("=>");
            sb.Append(Environment.NewLine);
            sb.Append("\t(halt)");
            sb.Append(Environment.NewLine);
            sb.Append(")");
            Console.WriteLine(sb.ToString());
            return sb.ToString();
        }

        private void openFile_Click(object sender, EventArgs e)
        {
            if (clipsOpenFileDialog.ShowDialog() == DialogResult.OK)
            {
                /*codeBox.Text += System.IO.File.ReadAllText(clipsOpenFileDialog.FileName);*/
                Text = "Экспертная система \"HM&M-5\" – " + clipsOpenFileDialog.FileName;
                using StreamReader sr = new StreamReader(clipsOpenFileDialog.FileName);
                _clips.LoadFromString(sr.ReadToEnd());
                //_clips.Load(clipsOpenFileDialog.FileName);
            }
        }

        private void fontSelect_Click(object sender, EventArgs e)
        {
            if (fontDialog1.ShowDialog() == DialogResult.OK)
            {
                inputFactsBox.Font = fontDialog1.Font;
                outputBox.Font = fontDialog1.Font;
            }
        }

        private void saveAsButton_Click(object sender, EventArgs e)
        {
            clipsSaveFileDialog.FileName = clipsOpenFileDialog.FileName;
            if (clipsSaveFileDialog.ShowDialog() == DialogResult.OK)
            {
                System.IO.File.WriteAllText(clipsSaveFileDialog.FileName, inputFactsBox.Text);
            }
        }

    }
}

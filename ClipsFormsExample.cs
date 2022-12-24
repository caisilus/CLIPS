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

namespace ClipsFormsExample
{
    public partial class ClipsFormsExample : Form
    {
        private readonly CLIPSNET.Environment _clips = new CLIPSNET.Environment();
        private readonly ProductionSystem.ProductionSystem _productionSystem;
        public ClipsFormsExample()
        {
            ProductionSystemFileLoader loader = new ProductionSystemFileLoader();
            string storageFolder = "../../storage/";
            string factsFile = storageFolder + "Facts_new.txt";
            string rulesFule = storageFolder + "Rules.txt";
            _productionSystem = loader.LoadFromFiles(factsFile, rulesFule);
            _autoCompleteCollection = new AutoCompleteStringCollection();
            UpdateAutoCompleteCollection(_productionSystem.IdsToFacts.Values.Select(f=>f.Name).ToArray());
            _clips.Load("../../clips_files/fact_template.clp");
            _clips.Load("../../clips_files/rules.clp");
            //File.WriteAllText("../../clips_files/rules.clp", _productionSystem.RulesToClipsText());
            InitializeComponent();
        }

        private void UpdateAutoCompleteCollection(string[] factNames)
        {
            _autoCompleteCollection.AddRange(factNames);
        }
        
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
        }

        private void HandleResponse()
        {
            //  Вытаскиаваем факт из ЭС
            String evalStr = "(find-fact ((?f ioproxy)) TRUE)";
            FactAddressValue fv = (FactAddressValue)((MultifieldValue)_clips.Eval(evalStr))[0];

            MultifieldValue damf = (MultifieldValue)fv["messages"];
            MultifieldValue vamf = (MultifieldValue)fv["answers"];

            outputBox.Text += "Новая итерация : " + System.Environment.NewLine;
            for (int i = 0; i < damf.Count; i++)
            {
                LexemeValue da = (LexemeValue)damf[i];
                byte[] bytes = Encoding.Default.GetBytes(da.Value);
                string message = Encoding.UTF8.GetString(bytes);
                outputBox.Text += message + System.Environment.NewLine;
            }

            var phrases = new List<string>();
            if (vamf.Count > 0)
            {
                outputBox.Text += "----------------------------------------------------" + System.Environment.NewLine;
                for (int i = 0; i < vamf.Count; i++)
                {
                    //  Варианты !!!!!
                    LexemeValue va = (LexemeValue)vamf[i];
                    byte[] bytes = Encoding.Default.GetBytes(va.Value);
                    string message = Encoding.UTF8.GetString(bytes);
                    phrases.Add(message);
                    outputBox.Text += "Добавлен вариант для распознавания " + message + System.Environment.NewLine;
                }
            }
            
            if(vamf.Count == 0)
                _clips.Eval("(assert (clearmessage))");
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

        private void nextBtn_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Next clicked");
            foreach (var fact in _clips.GetFactList())
            {
                foreach (var slot in fact.GetSlotValues())
                {
                    Console.WriteLine(slot.SlotName);
                    Console.WriteLine(slot.Contents);
                }
            }
            _clips.Run(1);
            Console.WriteLine("Run ended");
            foreach (var fact in _clips.GetFactList())
            {
                foreach (var slot in fact.GetSlotValues())
                {
                    Console.WriteLine(slot.SlotName);
                    Console.WriteLine(slot.Contents);
                }
            }
            //HandleResponse();
        }

        private void resetBtn_Click(object sender, EventArgs e)
        {
            outputBox.Text = "Выполнена команда Reset." + System.Environment.NewLine;
            
            _clips.Reset();

            foreach (string factLine in chosenInputsFactsBox.Text.Split('\n').
                                                                  Select(fline => fline.Trim()).
                                                                  Where(fline => !string.IsNullOrEmpty(fline)))
            {
                Console.WriteLine(factLine);
                Fact fact = _productionSystem.NamesToFacts[factLine];
                var clipsString = fact.ToClipsConsequence();
                Console.WriteLine(clipsString);
                _clips.Eval(fact.ToClipsConsequence());
            }
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

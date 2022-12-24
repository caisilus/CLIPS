using System;
using System.Windows.Forms;

namespace ClipsFormsExample
{
    partial class ClipsFormsExample
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ClipsFormsExample));
            this.panel1 = new System.Windows.Forms.Panel();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.verticalSplitContainer = new System.Windows.Forms.SplitContainer();
            this.inputLayoutContainer = new System.Windows.Forms.SplitContainer();
            this.goalLayoutContainer = new System.Windows.Forms.SplitContainer();
            this.inputFactsBox = new System.Windows.Forms.TextBox();
            this.chosenInputsFactsBox = new System.Windows.Forms.TextBox();
            this.chosenGoalsFactBox = new System.Windows.Forms.TextBox();
            this.goalFactBox = new System.Windows.Forms.TextBox();
            this.outputBox = new System.Windows.Forms.TextBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.fontButton = new System.Windows.Forms.Button();
            this.nextButton = new System.Windows.Forms.Button();
            this.resetButton = new System.Windows.Forms.Button();
            this.saveAsButton = new System.Windows.Forms.Button();
            this.openButton = new System.Windows.Forms.Button();
            this.clipsOpenFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.fontDialog1 = new System.Windows.Forms.FontDialog();
            this.clipsSaveFileDialog = new System.Windows.Forms.SaveFileDialog();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize) (this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize) (this.verticalSplitContainer)).BeginInit();
            this.verticalSplitContainer.Panel1.SuspendLayout();
            this.verticalSplitContainer.Panel2.SuspendLayout();
            this.verticalSplitContainer.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize) (this.inputLayoutContainer)).BeginInit();
            this.inputLayoutContainer.Panel1.SuspendLayout();
            this.inputLayoutContainer.Panel2.SuspendLayout();
            this.inputLayoutContainer.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize) (this.goalLayoutContainer)).BeginInit();
            this.goalLayoutContainer.Panel1.SuspendLayout();
            this.goalLayoutContainer.Panel2.SuspendLayout();
            this.goalLayoutContainer.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles) ((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) | System.Windows.Forms.AnchorStyles.Left) | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.Controls.Add(this.splitContainer1);
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1315, 746);
            this.panel1.TabIndex = 2;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.splitContainer1.Name = "splitContainer1";
            //
            // verticalSplitContainer
            //

            this.verticalSplitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.verticalSplitContainer.Location = new System.Drawing.Point(0, 0);
            this.verticalSplitContainer.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.verticalSplitContainer.Name = "verticalSplitContainer";
            this.verticalSplitContainer.Orientation = System.Windows.Forms.Orientation.Horizontal;
            
            //
            // inputLayoutContainer
            //

            this.inputLayoutContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.inputLayoutContainer.Location = new System.Drawing.Point(0, 0);
            this.inputLayoutContainer.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.inputLayoutContainer.Name = "inputLayoutContainer";
            this.inputLayoutContainer.Orientation = System.Windows.Forms.Orientation.Horizontal;

            
            this.inputLayoutContainer.Panel1.Controls.Add(this.inputFactsBox);
            this.inputLayoutContainer.Panel2.Controls.Add(this.chosenInputsFactsBox);
            
            this.inputLayoutContainer.Size = new System.Drawing.Size(617, 373);
            this.inputLayoutContainer.SplitterDistance = 5;
            this.inputLayoutContainer.SplitterWidth = 2;
            this.inputLayoutContainer.TabIndex = 2;
            
            //
            // goalLayoutContainer
            //
            
            this.goalLayoutContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.goalLayoutContainer.Location = new System.Drawing.Point(0, 0);
            this.goalLayoutContainer.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.goalLayoutContainer.Name = "goalLayoutContainer";
            this.goalLayoutContainer.Orientation = System.Windows.Forms.Orientation.Horizontal;

            
            this.goalLayoutContainer.Panel1.Controls.Add(this.goalFactBox);
            this.goalLayoutContainer.Panel2.Controls.Add(this.chosenGoalsFactBox);
            
            this.goalLayoutContainer.Size = new System.Drawing.Size(617, 373);
            this.goalLayoutContainer.SplitterDistance = 5;
            this.goalLayoutContainer.SplitterWidth = 2;
            this.goalLayoutContainer.TabIndex = 2;
            
            
            //
            // verticalSplitContainer.Panel1
            //
            this.verticalSplitContainer.Panel1.Controls.Add(this.inputLayoutContainer);
            
            //
            // verticalSplitContainer.Panel2
            //
            this.verticalSplitContainer.Panel2.Controls.Add(this.goalLayoutContainer);
            
            this.verticalSplitContainer.Size = new System.Drawing.Size(617, 746);
            this.verticalSplitContainer.SplitterDistance = 200;
            this.verticalSplitContainer.SplitterWidth = 5;
            this.verticalSplitContainer.TabIndex = 2;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.verticalSplitContainer);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.outputBox);
            this.splitContainer1.Size = new System.Drawing.Size(1315, 746);
            this.splitContainer1.SplitterDistance = 500; //617;
            this.splitContainer1.SplitterWidth = 5;
            this.splitContainer1.TabIndex = 2;
            // 
            // inputFactsBox
            // 
            this.inputFactsBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.inputFactsBox.Font = new System.Drawing.Font("Lucida Console", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (204)));
            this.inputFactsBox.Location = new System.Drawing.Point(0, 0);
            this.inputFactsBox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            // this.inputFactsBox.Multiline = true;
            this.inputFactsBox.Name = "inputFactsBox"; 
            // this.inputFactsBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.inputFactsBox.Size = new System.Drawing.Size(617, 30); //373);
            this.inputFactsBox.TabIndex = 2;
            
            this.inputFactsBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            this.inputFactsBox.AutoCompleteCustomSource = _autoCompleteCollection;
            this.inputFactsBox.AutoCompleteMode = AutoCompleteMode.SuggestAppend;

            this.inputFactsBox.KeyDown += inputFactsBox_KeyDown;
            
            // 
            // chosenInputsFactsBox
            // 
            this.chosenInputsFactsBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.chosenInputsFactsBox.Font = new System.Drawing.Font("Lucida Console", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (204)));
            this.chosenInputsFactsBox.Location = new System.Drawing.Point(0, 0);
            this.chosenInputsFactsBox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.chosenInputsFactsBox.Multiline = true;
            this.chosenInputsFactsBox.Name = "chosenInputsFactBox"; 
            this.chosenInputsFactsBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.chosenInputsFactsBox.Size = new System.Drawing.Size(617, 300); //373);
            this.chosenInputsFactsBox.TabIndex = 2;
            
            // 
            // goalFactBox
            // 
            this.goalFactBox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.goalFactBox.Font = new System.Drawing.Font("Lucida Console", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (204)));
            this.goalFactBox.Location = new System.Drawing.Point(0, 0);
            this.goalFactBox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.goalFactBox.Name = "goalFactsBox";
            this.goalFactBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.goalFactBox.Size = new System.Drawing.Size(617, 30);
            this.goalFactBox.TabIndex = 2;
            
            this.goalFactBox.AutoCompleteCustomSource = _autoCompleteCollection;
            this.goalFactBox.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
            this.goalFactBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            
            // 
            // chosenGoalsFactBox
            // 
            this.chosenGoalsFactBox.Dock = System.Windows.Forms.DockStyle.Top;
            this.chosenGoalsFactBox.Font = new System.Drawing.Font("Lucida Console", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (204)));
            this.chosenGoalsFactBox.Location = new System.Drawing.Point(0, 0);
            this.chosenGoalsFactBox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.chosenGoalsFactBox.Multiline = true;
            this.chosenGoalsFactBox.Name = "chosenGoalsFactBox"; 
            this.chosenGoalsFactBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.chosenGoalsFactBox.Size = new System.Drawing.Size(617, 300); //373);
            this.chosenGoalsFactBox.TabIndex = 2;
            
            // 
            // outputBox
            // 
            this.outputBox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.outputBox.Font = new System.Drawing.Font("Lucida Console", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (204)));
            this.outputBox.Location = new System.Drawing.Point(0, 0);
            this.outputBox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.outputBox.Multiline = true;
            this.outputBox.Name = "outputBox";
            this.outputBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.outputBox.Size = new System.Drawing.Size(693, 746);
            this.outputBox.TabIndex = 1;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.fontButton);
            this.panel2.Controls.Add(this.nextButton);
            this.panel2.Controls.Add(this.resetButton);
            this.panel2.Controls.Add(this.saveAsButton);
            this.panel2.Controls.Add(this.openButton);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 746);
            this.panel2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1317, 66);
            this.panel2.TabIndex = 6;
            // 
            // fontButton
            // 
            this.fontButton.Location = new System.Drawing.Point(352, 15);
            this.fontButton.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.fontButton.Name = "fontButton";
            this.fontButton.Size = new System.Drawing.Size(160, 37);
            this.fontButton.TabIndex = 9;
            this.fontButton.Text = "Шрифт...";
            this.fontButton.UseVisualStyleBackColor = true;
            this.fontButton.Click += new System.EventHandler(this.fontSelect_Click);
            // 
            // nextButton
            // 
            this.nextButton.Anchor = ((System.Windows.Forms.AnchorStyles) ((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.nextButton.Location = new System.Drawing.Point(1140, 15);
            this.nextButton.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.nextButton.Name = "nextButton";
            this.nextButton.Size = new System.Drawing.Size(160, 37);
            this.nextButton.TabIndex = 8;
            this.nextButton.Text = "Дальше";
            this.nextButton.UseVisualStyleBackColor = true;
            this.nextButton.Click += new System.EventHandler(this.nextBtn_Click);
            // 
            // resetButton
            // 
            this.resetButton.Anchor = ((System.Windows.Forms.AnchorStyles) ((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.resetButton.Location = new System.Drawing.Point(972, 15);
            this.resetButton.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.resetButton.Name = "resetButton";
            this.resetButton.Size = new System.Drawing.Size(160, 37);
            this.resetButton.TabIndex = 7;
            this.resetButton.Text = "Рестарт";
            this.resetButton.UseVisualStyleBackColor = true;
            this.resetButton.Click += new System.EventHandler(this.resetBtn_Click);
            // 
            // saveAsButton
            // 
            this.saveAsButton.Location = new System.Drawing.Point(184, 15);
            this.saveAsButton.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.saveAsButton.Name = "saveAsButton";
            this.saveAsButton.Size = new System.Drawing.Size(160, 37);
            this.saveAsButton.TabIndex = 6;
            this.saveAsButton.Text = "Сохранить как...";
            this.saveAsButton.UseVisualStyleBackColor = true;
            this.saveAsButton.Click += new System.EventHandler(this.saveAsButton_Click);
            // 
            // openButton
            // 
            this.openButton.Location = new System.Drawing.Point(16, 15);
            this.openButton.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.openButton.Name = "openButton";
            this.openButton.Size = new System.Drawing.Size(160, 37);
            this.openButton.TabIndex = 5;
            this.openButton.Text = "Открыть";
            this.openButton.UseVisualStyleBackColor = true;
            this.openButton.Click += new System.EventHandler(this.openFile_Click);
            // 
            // clipsOpenFileDialog
            // 
            this.clipsOpenFileDialog.Filter = "CLIPS files|*.clp|All files|*.*";
            this.clipsOpenFileDialog.Title = "Открыть файл кода CLIPS";
            // 
            // clipsSaveFileDialog
            // 
            this.clipsSaveFileDialog.Filter = "CLIPS files|*.clp|All files|*.*";
            this.clipsSaveFileDialog.Title = "Созранить файл как...";
            // 
            // ClipsFormsExample
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1317, 812);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon) (resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MinimumSize = new System.Drawing.Size(874, 358);
            this.Name = "ClipsFormsExample";
            this.Text = "Экспертная система \"Тиндер\"";
            this.panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize) (this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            
            this.verticalSplitContainer.Panel1.ResumeLayout(false);
            this.verticalSplitContainer.Panel1.PerformLayout();
            this.verticalSplitContainer.Panel2.ResumeLayout(false);
            this.verticalSplitContainer.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize) (this.verticalSplitContainer)).EndInit();
            this.verticalSplitContainer.ResumeLayout(false);
            
            this.inputLayoutContainer.Panel1.ResumeLayout(false);
            this.inputLayoutContainer.Panel1.PerformLayout();
            this.inputLayoutContainer.Panel2.ResumeLayout(false);
            this.inputLayoutContainer.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize) (this.inputLayoutContainer)).EndInit();
            this.inputLayoutContainer.ResumeLayout(false);
            
            this.goalLayoutContainer.Panel1.ResumeLayout(false);
            this.goalLayoutContainer.Panel1.PerformLayout();
            this.goalLayoutContainer.Panel2.ResumeLayout(false);
            this.goalLayoutContainer.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize) (this.goalLayoutContainer)).EndInit();
            this.goalLayoutContainer.ResumeLayout(false);
            
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);
        }

        #endregion
    private System.Windows.Forms.Panel panel1;
    private System.Windows.Forms.SplitContainer splitContainer1;
    private System.Windows.Forms.SplitContainer verticalSplitContainer;
    private System.Windows.Forms.SplitContainer inputLayoutContainer;
    private System.Windows.Forms.SplitContainer goalLayoutContainer;
    private System.Windows.Forms.TextBox inputFactsBox;
    private System.Windows.Forms.TextBox goalFactBox;
    private System.Windows.Forms.TextBox chosenInputsFactsBox;
    private System.Windows.Forms.TextBox chosenGoalsFactBox;
    private System.Windows.Forms.TextBox outputBox;
    private System.Windows.Forms.Panel panel2;
    private System.Windows.Forms.Button nextButton;
    private System.Windows.Forms.Button resetButton;
    private System.Windows.Forms.Button saveAsButton;
    private System.Windows.Forms.Button openButton;
    private System.Windows.Forms.OpenFileDialog clipsOpenFileDialog;
    private System.Windows.Forms.Button fontButton;
    private System.Windows.Forms.FontDialog fontDialog1;
    private System.Windows.Forms.SaveFileDialog clipsSaveFileDialog;
    private AutoCompleteStringCollection _autoCompleteCollection;
    }
}


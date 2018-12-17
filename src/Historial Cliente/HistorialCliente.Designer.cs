namespace PalcoNet.Historial_Cliente
{
    partial class HistorialCliente
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
            this.components = new System.ComponentModel.Container();
            this.dgtHistorial = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.gD2C2018DataSet = new PalcoNet.GD2C2018DataSet();
            this.gD2C2018DataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dgtHistorial)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSetBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dgtHistorial
            // 
            this.dgtHistorial.AllowUserToAddRows = false;
            this.dgtHistorial.AllowUserToDeleteRows = false;
            this.dgtHistorial.AutoGenerateColumns = false;
            this.dgtHistorial.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgtHistorial.DataSource = this.gD2C2018DataSetBindingSource;
            this.dgtHistorial.Location = new System.Drawing.Point(40, 132);
            this.dgtHistorial.Name = "dgtHistorial";
            this.dgtHistorial.ReadOnly = true;
            this.dgtHistorial.RowTemplate.Height = 28;
            this.dgtHistorial.Size = new System.Drawing.Size(668, 360);
            this.dgtHistorial.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, ((System.Drawing.FontStyle)(((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic) 
                | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(308, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(128, 32);
            this.label1.TabIndex = 1;
            this.label1.Text = "Historial";
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(574, 555);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(108, 42);
            this.btnAceptar.TabIndex = 2;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            // 
            // gD2C2018DataSet
            // 
            this.gD2C2018DataSet.DataSetName = "GD2C2018DataSet";
            this.gD2C2018DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // gD2C2018DataSetBindingSource
            // 
            this.gD2C2018DataSetBindingSource.DataSource = this.gD2C2018DataSet;
            this.gD2C2018DataSetBindingSource.Position = 0;
            // 
            // HistorialCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(760, 638);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgtHistorial);
            this.Name = "HistorialCliente";
            this.Text = "Historial de Compras";
            ((System.ComponentModel.ISupportInitialize)(this.dgtHistorial)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSetBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgtHistorial;
        private System.Windows.Forms.BindingSource gD2C2018DataSetBindingSource;
        private GD2C2018DataSet gD2C2018DataSet;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnAceptar;
    }
}
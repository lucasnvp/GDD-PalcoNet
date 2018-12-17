namespace PalcoNet.Listado_Estadistico
{
    partial class ListadoEstadistico
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtAnio = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.dgtListadoEstadistico = new System.Windows.Forms.DataGridView();
            this.gD2C2018DataSet = new PalcoNet.GD2C2018DataSet();
            this.gD2C2018DataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.btnMostrar = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnListado1 = new System.Windows.Forms.Button();
            this.btnListado2 = new System.Windows.Forms.Button();
            this.btnListado3 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgtListadoEstadistico)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSetBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)(((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic) 
                | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(402, 58);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(259, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "Listados Estadísticos";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, ((System.Drawing.FontStyle)(((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic) 
                | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(57, 179);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(302, 26);
            this.label2.TabIndex = 1;
            this.label2.Text = "Seleccione año y trimestre ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(109, 242);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(48, 25);
            this.label3.TabIndex = 2;
            this.label3.Text = "Año";
            // 
            // txtAnio
            // 
            this.txtAnio.Location = new System.Drawing.Point(201, 239);
            this.txtAnio.Name = "txtAnio";
            this.txtAnio.Size = new System.Drawing.Size(100, 30);
            this.txtAnio.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(63, 292);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(94, 25);
            this.label4.TabIndex = 4;
            this.label4.Text = "Trimestre";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "1º",
            "2º",
            "3º",
            "4º"});
            this.comboBox1.Location = new System.Drawing.Point(201, 288);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(100, 33);
            this.comboBox1.TabIndex = 5;
            // 
            // dgtListadoEstadistico
            // 
            this.dgtListadoEstadistico.AllowUserToAddRows = false;
            this.dgtListadoEstadistico.AllowUserToDeleteRows = false;
            this.dgtListadoEstadistico.AutoGenerateColumns = false;
            this.dgtListadoEstadistico.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgtListadoEstadistico.DataSource = this.gD2C2018DataSetBindingSource;
            this.dgtListadoEstadistico.Location = new System.Drawing.Point(407, 194);
            this.dgtListadoEstadistico.Name = "dgtListadoEstadistico";
            this.dgtListadoEstadistico.ReadOnly = true;
            this.dgtListadoEstadistico.RowTemplate.Height = 28;
            this.dgtListadoEstadistico.Size = new System.Drawing.Size(625, 447);
            this.dgtListadoEstadistico.TabIndex = 6;
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
            // btnMostrar
            // 
            this.btnMostrar.Location = new System.Drawing.Point(889, 693);
            this.btnMostrar.Name = "btnMostrar";
            this.btnMostrar.Size = new System.Drawing.Size(125, 52);
            this.btnMostrar.TabIndex = 7;
            this.btnMostrar.Text = "Aceptar";
            this.btnMostrar.UseVisualStyleBackColor = true;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(80, 693);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(125, 52);
            this.btnCancelar.TabIndex = 8;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // btnListado1
            // 
            this.btnListado1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnListado1.Location = new System.Drawing.Point(91, 352);
            this.btnListado1.Name = "btnListado1";
            this.btnListado1.Size = new System.Drawing.Size(222, 82);
            this.btnListado1.TabIndex = 9;
            this.btnListado1.Text = "Empresas con mayor cantidad de localidades no vendidas";
            this.btnListado1.UseVisualStyleBackColor = true;
            // 
            // btnListado2
            // 
            this.btnListado2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnListado2.Location = new System.Drawing.Point(91, 456);
            this.btnListado2.Name = "btnListado2";
            this.btnListado2.Size = new System.Drawing.Size(222, 82);
            this.btnListado2.TabIndex = 11;
            this.btnListado2.Text = "Clientes con mayor cantidad de puntos vencidos";
            this.btnListado2.UseVisualStyleBackColor = true;
            // 
            // btnListado3
            // 
            this.btnListado3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnListado3.Location = new System.Drawing.Point(91, 559);
            this.btnListado3.Name = "btnListado3";
            this.btnListado3.Size = new System.Drawing.Size(222, 82);
            this.btnListado3.TabIndex = 12;
            this.btnListado3.Text = "Clientes con mayor cantidad de compras";
            this.btnListado3.UseVisualStyleBackColor = true;
            // 
            // ListadoEstadistico
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1104, 782);
            this.Controls.Add(this.btnListado3);
            this.Controls.Add(this.btnListado2);
            this.Controls.Add(this.btnListado1);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnMostrar);
            this.Controls.Add(this.dgtListadoEstadistico);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtAnio);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "ListadoEstadistico";
            this.Text = "Listados Estadísticos";
            ((System.ComponentModel.ISupportInitialize)(this.dgtListadoEstadistico)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gD2C2018DataSetBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtAnio;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.DataGridView dgtListadoEstadistico;
        private System.Windows.Forms.BindingSource gD2C2018DataSetBindingSource;
        private GD2C2018DataSet gD2C2018DataSet;
        private System.Windows.Forms.Button btnMostrar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnListado1;
        private System.Windows.Forms.Button btnListado2;
        private System.Windows.Forms.Button btnListado3;
    }
}
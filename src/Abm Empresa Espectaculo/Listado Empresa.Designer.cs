namespace PalcoNet.Abm_Empresa_Espectaculo
{
    partial class ListadoEmpresa
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.lblBusqueda = new System.Windows.Forms.Label();
            this.gbDatos = new System.Windows.Forms.GroupBox();
            this.txtMail = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtApellido = new System.Windows.Forms.TextBox();
            this.lblApellido = new System.Windows.Forms.Label();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.lblNombre = new System.Windows.Forms.Label();
            this.Btn_Cerrar = new System.Windows.Forms.Button();
            this.Btn_Nueva_Empresa = new System.Windows.Forms.Button();
            this.Btn_Buscar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.gbDatos.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(40, 239);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(557, 211);
            this.dataGridView1.TabIndex = 65;
            // 
            // lblBusqueda
            // 
            this.lblBusqueda.AutoSize = true;
            this.lblBusqueda.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblBusqueda.Location = new System.Drawing.Point(219, 32);
            this.lblBusqueda.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblBusqueda.Name = "lblBusqueda";
            this.lblBusqueda.Size = new System.Drawing.Size(233, 24);
            this.lblBusqueda.TabIndex = 64;
            this.lblBusqueda.Text = "Búsqueda de Empresas";
            // 
            // gbDatos
            // 
            this.gbDatos.Controls.Add(this.txtMail);
            this.gbDatos.Controls.Add(this.label3);
            this.gbDatos.Controls.Add(this.txtApellido);
            this.gbDatos.Controls.Add(this.lblApellido);
            this.gbDatos.Controls.Add(this.txtNombre);
            this.gbDatos.Controls.Add(this.lblNombre);
            this.gbDatos.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbDatos.Location = new System.Drawing.Point(40, 91);
            this.gbDatos.Margin = new System.Windows.Forms.Padding(2);
            this.gbDatos.Name = "gbDatos";
            this.gbDatos.Padding = new System.Windows.Forms.Padding(2);
            this.gbDatos.Size = new System.Drawing.Size(557, 94);
            this.gbDatos.TabIndex = 63;
            this.gbDatos.TabStop = false;
            this.gbDatos.Text = "Datos de la Empresa";
            // 
            // txtMail
            // 
            this.txtMail.Location = new System.Drawing.Point(409, 43);
            this.txtMail.Margin = new System.Windows.Forms.Padding(2);
            this.txtMail.Name = "txtMail";
            this.txtMail.Size = new System.Drawing.Size(113, 20);
            this.txtMail.TabIndex = 35;
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label3.Location = new System.Drawing.Point(370, 44);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 15);
            this.label3.TabIndex = 34;
            this.label3.Text = "Mail";
            // 
            // txtApellido
            // 
            this.txtApellido.Location = new System.Drawing.Point(119, 59);
            this.txtApellido.Margin = new System.Windows.Forms.Padding(2);
            this.txtApellido.Name = "txtApellido";
            this.txtApellido.Size = new System.Drawing.Size(89, 20);
            this.txtApellido.TabIndex = 29;
            // 
            // lblApellido
            // 
            this.lblApellido.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lblApellido.Location = new System.Drawing.Point(30, 58);
            this.lblApellido.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(85, 15);
            this.lblApellido.TabIndex = 28;
            this.lblApellido.Text = "Razón Social";
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(119, 31);
            this.txtNombre.Margin = new System.Windows.Forms.Padding(2);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(89, 20);
            this.txtNombre.TabIndex = 27;
            // 
            // lblNombre
            // 
            this.lblNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lblNombre.Location = new System.Drawing.Point(75, 31);
            this.lblNombre.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(40, 15);
            this.lblNombre.TabIndex = 26;
            this.lblNombre.Text = "CUIT";
            // 
            // Btn_Cerrar
            // 
            this.Btn_Cerrar.Location = new System.Drawing.Point(450, 202);
            this.Btn_Cerrar.Name = "Btn_Cerrar";
            this.Btn_Cerrar.Size = new System.Drawing.Size(108, 23);
            this.Btn_Cerrar.TabIndex = 68;
            this.Btn_Cerrar.Text = "Cerrar";
            this.Btn_Cerrar.UseVisualStyleBackColor = true;
            this.Btn_Cerrar.Click += new System.EventHandler(this.Btn_Cerrar_Click);
            // 
            // Btn_Nueva_Empresa
            // 
            this.Btn_Nueva_Empresa.Location = new System.Drawing.Point(79, 202);
            this.Btn_Nueva_Empresa.Margin = new System.Windows.Forms.Padding(2);
            this.Btn_Nueva_Empresa.Name = "Btn_Nueva_Empresa";
            this.Btn_Nueva_Empresa.Size = new System.Drawing.Size(98, 23);
            this.Btn_Nueva_Empresa.TabIndex = 67;
            this.Btn_Nueva_Empresa.Text = "Nueva Empresa";
            this.Btn_Nueva_Empresa.UseVisualStyleBackColor = true;
            this.Btn_Nueva_Empresa.Click += new System.EventHandler(this.Btn_Nueva_Empresa_Click);
            // 
            // Btn_Buscar
            // 
            this.Btn_Buscar.Location = new System.Drawing.Point(268, 202);
            this.Btn_Buscar.Margin = new System.Windows.Forms.Padding(2);
            this.Btn_Buscar.Name = "Btn_Buscar";
            this.Btn_Buscar.Size = new System.Drawing.Size(87, 23);
            this.Btn_Buscar.TabIndex = 66;
            this.Btn_Buscar.Text = "Buscar";
            this.Btn_Buscar.UseVisualStyleBackColor = true;
            // 
            // ListadoEmpresa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(637, 426);
            this.Controls.Add(this.Btn_Cerrar);
            this.Controls.Add(this.Btn_Nueva_Empresa);
            this.Controls.Add(this.Btn_Buscar);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.lblBusqueda);
            this.Controls.Add(this.gbDatos);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "ListadoEmpresa";
            this.Text = "Listado de Empresas";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.gbDatos.ResumeLayout(false);
            this.gbDatos.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label lblBusqueda;
        private System.Windows.Forms.GroupBox gbDatos;
        private System.Windows.Forms.TextBox txtMail;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtApellido;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Button Btn_Cerrar;
        private System.Windows.Forms.Button Btn_Nueva_Empresa;
        private System.Windows.Forms.Button Btn_Buscar;
    }
}
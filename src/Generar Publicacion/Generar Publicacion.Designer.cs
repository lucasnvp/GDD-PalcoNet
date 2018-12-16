namespace PalcoNet.Generar_Publicacion
{
    partial class CrearPublicacion
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
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.gpTCredito = new System.Windows.Forms.GroupBox();
            this.gbOtros = new System.Windows.Forms.GroupBox();
            this.label12 = new System.Windows.Forms.Label();
            this.gbDatos = new System.Windows.Forms.GroupBox();
            this.dtpFechaEspectaculo = new System.Windows.Forms.DateTimePicker();
            this.label7 = new System.Windows.Forms.Label();
            this.txtDireccion = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtGrado = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtApellido = new System.Windows.Forms.TextBox();
            this.lblApellido = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.lblNombre = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.txtRubro = new System.Windows.Forms.TextBox();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.txtUsuarioResponsable = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtAsientos = new System.Windows.Forms.TextBox();
            this.txtFilas = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.gpTCredito.SuspendLayout();
            this.gbOtros.SuspendLayout();
            this.gbDatos.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Location = new System.Drawing.Point(152, 727);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(131, 35);
            this.btnLimpiar.TabIndex = 59;
            this.btnLimpiar.Text = "Limpiar";
            this.btnLimpiar.UseVisualStyleBackColor = true;
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(728, 727);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(131, 35);
            this.btnAceptar.TabIndex = 58;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            // 
            // gpTCredito
            // 
            this.gpTCredito.Controls.Add(this.txtDescripcion);
            this.gpTCredito.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpTCredito.Location = new System.Drawing.Point(76, 324);
            this.gpTCredito.Name = "gpTCredito";
            this.gpTCredito.Size = new System.Drawing.Size(835, 156);
            this.gpTCredito.TabIndex = 57;
            this.gpTCredito.TabStop = false;
            this.gpTCredito.Text = "Descripción";
            // 
            // gbOtros
            // 
            this.gbOtros.Controls.Add(this.txtFilas);
            this.gbOtros.Controls.Add(this.label6);
            this.gbOtros.Controls.Add(this.txtAsientos);
            this.gbOtros.Controls.Add(this.label12);
            this.gbOtros.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbOtros.Location = new System.Drawing.Point(76, 513);
            this.gbOtros.Name = "gbOtros";
            this.gbOtros.Size = new System.Drawing.Size(835, 197);
            this.gbOtros.TabIndex = 56;
            this.gbOtros.TabStop = false;
            this.gbOtros.Text = "Ubicaciones";
            // 
            // label12
            // 
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label12.Location = new System.Drawing.Point(34, 32);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(209, 23);
            this.label12.TabIndex = 44;
            this.label12.Text = "Cantidad de Asientos ";
            // 
            // gbDatos
            // 
            this.gbDatos.Controls.Add(this.txtEstado);
            this.gbDatos.Controls.Add(this.label5);
            this.gbDatos.Controls.Add(this.txtUsuarioResponsable);
            this.gbDatos.Controls.Add(this.label4);
            this.gbDatos.Controls.Add(this.txtRubro);
            this.gbDatos.Controls.Add(this.dtpFechaEspectaculo);
            this.gbDatos.Controls.Add(this.label7);
            this.gbDatos.Controls.Add(this.txtDireccion);
            this.gbDatos.Controls.Add(this.label3);
            this.gbDatos.Controls.Add(this.txtGrado);
            this.gbDatos.Controls.Add(this.label1);
            this.gbDatos.Controls.Add(this.label2);
            this.gbDatos.Controls.Add(this.txtApellido);
            this.gbDatos.Controls.Add(this.lblApellido);
            this.gbDatos.Controls.Add(this.txtCodigo);
            this.gbDatos.Controls.Add(this.lblNombre);
            this.gbDatos.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbDatos.Location = new System.Drawing.Point(76, 103);
            this.gbDatos.Name = "gbDatos";
            this.gbDatos.Size = new System.Drawing.Size(835, 188);
            this.gbDatos.TabIndex = 55;
            this.gbDatos.TabStop = false;
            this.gbDatos.Text = "Complete los campos";
            // 
            // dtpFechaEspectaculo
            // 
            this.dtpFechaEspectaculo.Location = new System.Drawing.Point(267, 105);
            this.dtpFechaEspectaculo.Name = "dtpFechaEspectaculo";
            this.dtpFechaEspectaculo.Size = new System.Drawing.Size(131, 26);
            this.dtpFechaEspectaculo.TabIndex = 54;
            // 
            // label7
            // 
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label7.Location = new System.Drawing.Point(6, 106);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(243, 23);
            this.label7.TabIndex = 42;
            this.label7.Text = "Fecha y Hora Espectáculo";
            // 
            // txtDireccion
            // 
            this.txtDireccion.Location = new System.Drawing.Point(652, 103);
            this.txtDireccion.Name = "txtDireccion";
            this.txtDireccion.Size = new System.Drawing.Size(131, 26);
            this.txtDireccion.TabIndex = 35;
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label3.Location = new System.Drawing.Point(540, 105);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(94, 23);
            this.label3.TabIndex = 34;
            this.label3.Text = "Dirección";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // txtGrado
            // 
            this.txtGrado.Location = new System.Drawing.Point(652, 66);
            this.txtGrado.Name = "txtGrado";
            this.txtGrado.Size = new System.Drawing.Size(131, 26);
            this.txtGrado.TabIndex = 33;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label1.Location = new System.Drawing.Point(569, 66);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 23);
            this.label1.TabIndex = 32;
            this.label1.Text = "Grado";
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label2.Location = new System.Drawing.Point(570, 28);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 23);
            this.label2.TabIndex = 30;
            this.label2.Text = "Rubro";
            // 
            // txtApellido
            // 
            this.txtApellido.Location = new System.Drawing.Point(267, 65);
            this.txtApellido.Name = "txtApellido";
            this.txtApellido.Size = new System.Drawing.Size(131, 26);
            this.txtApellido.TabIndex = 29;
            // 
            // lblApellido
            // 
            this.lblApellido.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lblApellido.Location = new System.Drawing.Point(54, 69);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(216, 23);
            this.lblApellido.TabIndex = 28;
            this.lblApellido.Text = "Fecha de Publicación";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(267, 30);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(131, 26);
            this.txtCodigo.TabIndex = 27;
            this.txtCodigo.TextChanged += new System.EventHandler(this.txtCodigo_TextChanged);
            // 
            // lblNombre
            // 
            this.lblNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.lblNombre.Location = new System.Drawing.Point(170, 30);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(100, 26);
            this.lblNombre.TabIndex = 26;
            this.lblNombre.Text = "Código";
            this.lblNombre.Click += new System.EventHandler(this.lblNombre_Click);
            // 
            // label13
            // 
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, ((System.Drawing.FontStyle)(((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic) 
                | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(237, 35);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(515, 23);
            this.label13.TabIndex = 60;
            this.label13.Text = "Ingrese los datos para crear una nueva publicación";
            // 
            // txtRubro
            // 
            this.txtRubro.Location = new System.Drawing.Point(652, 28);
            this.txtRubro.Name = "txtRubro";
            this.txtRubro.Size = new System.Drawing.Size(131, 26);
            this.txtRubro.TabIndex = 55;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(59, 45);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(724, 26);
            this.txtDescripcion.TabIndex = 0;
            this.txtDescripcion.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // txtUsuarioResponsable
            // 
            this.txtUsuarioResponsable.Location = new System.Drawing.Point(267, 144);
            this.txtUsuarioResponsable.Name = "txtUsuarioResponsable";
            this.txtUsuarioResponsable.Size = new System.Drawing.Size(131, 26);
            this.txtUsuarioResponsable.TabIndex = 57;
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label4.Location = new System.Drawing.Point(42, 147);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(207, 23);
            this.label4.TabIndex = 56;
            this.label4.Text = "Usuario Responsable";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(652, 144);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(131, 26);
            this.txtEstado.TabIndex = 59;
            // 
            // label5
            // 
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label5.Location = new System.Drawing.Point(558, 144);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(76, 23);
            this.label5.TabIndex = 58;
            this.label5.Text = "Estado";
            // 
            // txtAsientos
            // 
            this.txtAsientos.Location = new System.Drawing.Point(267, 28);
            this.txtAsientos.Name = "txtAsientos";
            this.txtAsientos.Size = new System.Drawing.Size(100, 26);
            this.txtAsientos.TabIndex = 45;
            // 
            // txtFilas
            // 
            this.txtFilas.Location = new System.Drawing.Point(267, 69);
            this.txtFilas.Name = "txtFilas";
            this.txtFilas.Size = new System.Drawing.Size(100, 26);
            this.txtFilas.TabIndex = 47;
            // 
            // label6
            // 
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label6.Location = new System.Drawing.Point(71, 72);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(209, 23);
            this.label6.TabIndex = 46;
            this.label6.Text = "Cantidad de Filas";
            // 
            // CrearPublicacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(986, 779);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.btnLimpiar);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.gpTCredito);
            this.Controls.Add(this.gbOtros);
            this.Controls.Add(this.gbDatos);
            this.Name = "CrearPublicacion";
            this.Text = "Crear Publicación";
            this.gpTCredito.ResumeLayout(false);
            this.gpTCredito.PerformLayout();
            this.gbOtros.ResumeLayout(false);
            this.gbOtros.PerformLayout();
            this.gbDatos.ResumeLayout(false);
            this.gbDatos.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.GroupBox gpTCredito;
        private System.Windows.Forms.GroupBox gbOtros;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.GroupBox gbDatos;
        private System.Windows.Forms.DateTimePicker dtpFechaEspectaculo;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtDireccion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtGrado;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtApellido;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtRubro;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.TextBox txtFilas;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtAsientos;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtUsuarioResponsable;
        private System.Windows.Forms.Label label4;
    }
}
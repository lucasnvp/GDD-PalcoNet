namespace PalcoNet.Menu
{
    partial class MenuInicial
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
            this.Btn_Salir = new System.Windows.Forms.Button();
            this.Btn_ABM_Rol = new System.Windows.Forms.Button();
            this.Btn_Registro_De_Usuario = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Btn_Salir
            // 
            this.Btn_Salir.Location = new System.Drawing.Point(12, 212);
            this.Btn_Salir.Name = "Btn_Salir";
            this.Btn_Salir.Size = new System.Drawing.Size(108, 37);
            this.Btn_Salir.TabIndex = 1;
            this.Btn_Salir.Text = "Salir";
            this.Btn_Salir.UseVisualStyleBackColor = true;
            this.Btn_Salir.Click += new System.EventHandler(this.Btn_Salir_Click);
            // 
            // Btn_ABM_Rol
            // 
            this.Btn_ABM_Rol.Location = new System.Drawing.Point(12, 12);
            this.Btn_ABM_Rol.Name = "Btn_ABM_Rol";
            this.Btn_ABM_Rol.Size = new System.Drawing.Size(108, 37);
            this.Btn_ABM_Rol.TabIndex = 6;
            this.Btn_ABM_Rol.Text = "ABM Rol";
            this.Btn_ABM_Rol.UseVisualStyleBackColor = true;
            this.Btn_ABM_Rol.Click += new System.EventHandler(this.Btn_ABM_Rol_Click);
            // 
            // Btn_Registro_De_Usuario
            // 
            this.Btn_Registro_De_Usuario.Location = new System.Drawing.Point(126, 12);
            this.Btn_Registro_De_Usuario.Name = "Btn_Registro_De_Usuario";
            this.Btn_Registro_De_Usuario.Size = new System.Drawing.Size(108, 37);
            this.Btn_Registro_De_Usuario.TabIndex = 7;
            this.Btn_Registro_De_Usuario.Text = "Registro De Usuario";
            this.Btn_Registro_De_Usuario.UseVisualStyleBackColor = true;
            this.Btn_Registro_De_Usuario.Click += new System.EventHandler(this.Btn_Registro_De_Usuario_Click);
            // 
            // MenuInicial
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(649, 261);
            this.Controls.Add(this.Btn_Registro_De_Usuario);
            this.Controls.Add(this.Btn_ABM_Rol);
            this.Controls.Add(this.Btn_Salir);
            this.Name = "MenuInicial";
            this.Text = "MenuInicial";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button Btn_Salir;
        private System.Windows.Forms.Button Btn_ABM_Rol;
        private System.Windows.Forms.Button Btn_Registro_De_Usuario;
    }
}
﻿namespace PalcoNet
{
    partial class Cl_Login
    {
        /// <summary>
        /// Variable del diseñador requerida.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén utilizando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben eliminar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido del método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.Txt_Password = new System.Windows.Forms.TextBox();
            this.Txt_Usuario = new System.Windows.Forms.TextBox();
            this.Lbl_Password = new System.Windows.Forms.Label();
            this.Lbl_Usuario = new System.Windows.Forms.Label();
            this.Btn_Cancelar = new System.Windows.Forms.Button();
            this.Btn_Aceptar = new System.Windows.Forms.Button();
            this.Btn_Registrarse = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Txt_Password
            // 
            this.Txt_Password.Location = new System.Drawing.Point(59, 88);
            this.Txt_Password.Name = "Txt_Password";
            this.Txt_Password.Size = new System.Drawing.Size(156, 20);
            this.Txt_Password.TabIndex = 11;
            // 
            // Txt_Usuario
            // 
            this.Txt_Usuario.Location = new System.Drawing.Point(59, 49);
            this.Txt_Usuario.Name = "Txt_Usuario";
            this.Txt_Usuario.Size = new System.Drawing.Size(156, 20);
            this.Txt_Usuario.TabIndex = 10;
            // 
            // Lbl_Password
            // 
            this.Lbl_Password.AutoSize = true;
            this.Lbl_Password.Location = new System.Drawing.Point(57, 71);
            this.Lbl_Password.Name = "Lbl_Password";
            this.Lbl_Password.Size = new System.Drawing.Size(53, 13);
            this.Lbl_Password.TabIndex = 9;
            this.Lbl_Password.Text = "Password";
            // 
            // Lbl_Usuario
            // 
            this.Lbl_Usuario.AutoSize = true;
            this.Lbl_Usuario.Location = new System.Drawing.Point(57, 32);
            this.Lbl_Usuario.Name = "Lbl_Usuario";
            this.Lbl_Usuario.Size = new System.Drawing.Size(43, 13);
            this.Lbl_Usuario.TabIndex = 8;
            this.Lbl_Usuario.Text = "Usuario";
            // 
            // Btn_Cancelar
            // 
            this.Btn_Cancelar.Location = new System.Drawing.Point(141, 129);
            this.Btn_Cancelar.Name = "Btn_Cancelar";
            this.Btn_Cancelar.Size = new System.Drawing.Size(75, 23);
            this.Btn_Cancelar.TabIndex = 7;
            this.Btn_Cancelar.Text = "Salir";
            this.Btn_Cancelar.UseVisualStyleBackColor = true;
            this.Btn_Cancelar.Click += new System.EventHandler(this.Btn_Cancelar_Click);
            // 
            // Btn_Aceptar
            // 
            this.Btn_Aceptar.Location = new System.Drawing.Point(59, 129);
            this.Btn_Aceptar.Name = "Btn_Aceptar";
            this.Btn_Aceptar.Size = new System.Drawing.Size(75, 23);
            this.Btn_Aceptar.TabIndex = 6;
            this.Btn_Aceptar.Text = "Aceptar";
            this.Btn_Aceptar.UseVisualStyleBackColor = true;
            this.Btn_Aceptar.Click += new System.EventHandler(this.Btn_Aceptar_Click);
            // 
            // Btn_Registrarse
            // 
            this.Btn_Registrarse.Location = new System.Drawing.Point(59, 158);
            this.Btn_Registrarse.Name = "Btn_Registrarse";
            this.Btn_Registrarse.Size = new System.Drawing.Size(157, 23);
            this.Btn_Registrarse.TabIndex = 12;
            this.Btn_Registrarse.Text = "Registrarse";
            this.Btn_Registrarse.UseVisualStyleBackColor = true;
            this.Btn_Registrarse.Click += new System.EventHandler(this.Btn_Registrarse_Click);
            // 
            // Cl_Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(273, 205);
            this.Controls.Add(this.Btn_Registrarse);
            this.Controls.Add(this.Txt_Password);
            this.Controls.Add(this.Txt_Usuario);
            this.Controls.Add(this.Lbl_Password);
            this.Controls.Add(this.Lbl_Usuario);
            this.Controls.Add(this.Btn_Cancelar);
            this.Controls.Add(this.Btn_Aceptar);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Cl_Login";
            this.Text = "Login";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox Txt_Password;
        private System.Windows.Forms.TextBox Txt_Usuario;
        private System.Windows.Forms.Label Lbl_Password;
        private System.Windows.Forms.Label Lbl_Usuario;
        private System.Windows.Forms.Button Btn_Cancelar;
        private System.Windows.Forms.Button Btn_Aceptar;
        private System.Windows.Forms.Button Btn_Registrarse;
    }
}


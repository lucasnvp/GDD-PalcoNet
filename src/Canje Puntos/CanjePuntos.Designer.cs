namespace PalcoNet.Canje_Puntos
{
    partial class CanjePuntos
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtPuntos = new System.Windows.Forms.TextBox();
            this.lnlBasesyCondiciones = new System.Windows.Forms.LinkLabel();
            this.btnCanjear = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.cbPremios = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, ((System.Drawing.FontStyle)(((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic) 
                | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(268, 55);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(279, 32);
            this.label1.TabIndex = 1;
            this.label1.Text = "¡Canjeá tus puntos!";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(43, 135);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(341, 29);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tus puntos disponibles son:";
            // 
            // txtPuntos
            // 
            this.txtPuntos.Location = new System.Drawing.Point(391, 139);
            this.txtPuntos.Name = "txtPuntos";
            this.txtPuntos.ReadOnly = true;
            this.txtPuntos.Size = new System.Drawing.Size(171, 26);
            this.txtPuntos.TabIndex = 3;
            // 
            // lnlBasesyCondiciones
            // 
            this.lnlBasesyCondiciones.AutoSize = true;
            this.lnlBasesyCondiciones.Location = new System.Drawing.Point(658, 142);
            this.lnlBasesyCondiciones.Name = "lnlBasesyCondiciones";
            this.lnlBasesyCondiciones.Size = new System.Drawing.Size(156, 20);
            this.lnlBasesyCondiciones.TabIndex = 4;
            this.lnlBasesyCondiciones.TabStop = true;
            this.lnlBasesyCondiciones.Text = "Bases y Condiciones";
            // 
            // btnCanjear
            // 
            this.btnCanjear.Location = new System.Drawing.Point(602, 383);
            this.btnCanjear.Name = "btnCanjear";
            this.btnCanjear.Size = new System.Drawing.Size(116, 42);
            this.btnCanjear.TabIndex = 14;
            this.btnCanjear.Text = "Canjear";
            this.btnCanjear.UseVisualStyleBackColor = true;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(108, 383);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(116, 42);
            this.btnCancelar.TabIndex = 15;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // cbPremios
            // 
            this.cbPremios.FormattingEnabled = true;
            this.cbPremios.Items.AddRange(new object[] {
            "a.\tDescuento del 20% en próxima compra-> 100 puntos.",
            "b.\tDescuento del 40% en próxima compra-> 160 puntos.",
            "c.\tDescuento del 70% en próxima compra-> 200 puntos.",
            "d.\t1 Compra sin cargo-> 450 puntos.",
            "e.\tVoucher de $1000 para futuras compras->300 puntos.",
            "f.\tVoucher de $2500 para futuras compras->600 puntos."});
            this.cbPremios.Location = new System.Drawing.Point(391, 270);
            this.cbPremios.Name = "cbPremios";
            this.cbPremios.Size = new System.Drawing.Size(171, 28);
            this.cbPremios.TabIndex = 16;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(43, 269);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(256, 29);
            this.label3.TabIndex = 17;
            this.label3.Text = "Premios Disponibles";
            // 
            // CanjePuntos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(826, 466);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cbPremios);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnCanjear);
            this.Controls.Add(this.lnlBasesyCondiciones);
            this.Controls.Add(this.txtPuntos);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "CanjePuntos";
            this.Text = "Canje de Puntos";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtPuntos;
        private System.Windows.Forms.LinkLabel lnlBasesyCondiciones;
        private System.Windows.Forms.Button btnCanjear;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.ComboBox cbPremios;
        private System.Windows.Forms.Label label3;
    }
}
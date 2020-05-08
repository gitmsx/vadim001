using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Windows_pol
{


    public class Labls : Label
    {
        public int position_in__true_answer;    // position of the word in the answer .true  position.
        public int USER_answer_position;        // position of the USER answer .
        public int position_in_choice_list;     // position of the word in the choice list.

        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(0, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 23);
            this.label1.TabIndex = 0;
            this.label1.Text = "label1";
            this.ResumeLayout(false);

        }

        private Label label1;
    }

    public partial class Form1 : Form
    {




        int[] massiv_word_user_answer = new int[75];
        int[] massiv_asks = new int[75];

        int count_all_word = 0;  // Current number of entered words.
        int count_inpuut_word = 0;  // Current number of entered words.


        public Form1()
        {
            InitializeComponent();
        }




        Labls vnesti_v_spisok_vibora(int i) 
        {
            Labls l = new Labls();
            l.Name = "" + i.ToString();
            l.Text = "Labls" + i.ToString();
            l.ForeColor = Color.DarkBlue;
            l.BackColor = Color.Aqua;
            l.Font = new Font("Serif", 24, FontStyle.Bold);
            l.Width = 180;
            l.Height = 50;
            l.TextAlign = ContentAlignment.MiddleCenter;
            l.Margin = new Padding(5);

            l.position_in__true_answer = i;
            l.USER_answer_position = 0;
            l.position_in_choice_list = 0;
            return l;
        }

        void Click_vibor_polzovatela(object sender, EventArgs ev1)
        {

            Labls cucerrentLabel1 = (Labls)sender;

       


            if (cucerrentLabel1.USER_answer_position == 0)
            {
                count_inpuut_word++;
                cucerrentLabel1.ForeColor = Color.Yellow;
                cucerrentLabel1.BackColor = Color.Red;
                cucerrentLabel1.USER_answer_position = 1;
                 vnesti_slovo_v_otvet(count_inpuut_word,  cucerrentLabel1);
            }
            else
            {
                cucerrentLabel1.ForeColor = Color.DarkBlue;
                cucerrentLabel1.BackColor = Color.Aqua;
                cucerrentLabel1.USER_answer_position = 0;
                //  flowLayoutPanel2refresh();
                ;
            }



        }

        Labls vnesli_v_spisok_otveta(int i, Labls cucerrentLabel_tmp2)
        {
            Labls l = new Labls();
            l.Name = "" + cucerrentLabel_tmp2.Name;
            l.Text = "" + cucerrentLabel_tmp2.Text;
            l.ForeColor = Color.Black;
            l.BackColor = Color.White;
            l.Font = new Font("Serif", 24, FontStyle.Regular);
            l.Width = 180;
            l.Height = 50;
            l.TextAlign = ContentAlignment.MiddleCenter;
            l.Margin = new Padding(5);


            return l;


        }
        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {
            ;
        }

        void vnesti_slovo_v_otvet(int i, Labls cucerrentLabel_tmp3)         // 
        {
            Labls ls = vnesli_v_spisok_otveta(i,  cucerrentLabel_tmp3);
            flowLayoutPanel2.Controls.Add(ls);
            ls.Click += new EventHandler(this.Click_vibor_polzovatela);
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            for (int i1 = 0; i1 < massiv_word_user_answer.Length; i1++)

            {
                massiv_word_user_answer[i1] = 0;
            }
            for (int i = 1; i <= 15; i++)
            {
                count_all_word++;
                Labls ls = vnesti_v_spisok_vibora(i);
                flowLayoutPanel1.Controls.Add(ls);

                ls.Click += new EventHandler(this.Click_vibor_polzovatela);
            }

        }
    }
}

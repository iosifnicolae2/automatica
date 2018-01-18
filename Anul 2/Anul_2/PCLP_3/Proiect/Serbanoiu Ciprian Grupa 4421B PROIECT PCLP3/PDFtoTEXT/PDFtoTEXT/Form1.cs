using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.pdf.parser;


namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            string filePath;
            dlg.Filter = "PDF Files(*.PDF)|*.PDF|All Files(*.*)|*.*";
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                filePath = dlg.FileName.ToString();
            


            string strText = string.Empty;
            try
            {
                PdfReader reader = new PdfReader(filePath);
                for (int page = 1; page <= reader.NumberOfPages; page++)
                {
                    ITextExtractionStrategy its = new iTextSharp.text.pdf.parser.LocationTextExtractionStrategy();
                    String s = PdfTextExtractor.GetTextFromPage(reader, page, its);
                    s = Encoding.UTF8.GetString(ASCIIEncoding.Convert(Encoding.Default, Encoding.UTF8, Encoding.Default.GetBytes(s)));
                    strText = strText + s;
                    richTextBox1.Text = strText;
                }
                reader.Close();

            } 
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            }
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            StreamWriter File = new StreamWriter(@"C:\Users\Ciprian\Desktop\Serbanoiu Ciprian Grupa 4421B PROIECT PCLP3\Pdf_to_text.txt");
            System.Diagnostics.Process.Start(@"C:\Users\Ciprian\Desktop\Serbanoiu Ciprian Grupa 4421B PROIECT PCLP3\Pdf_to_text.txt");
            File.Write(richTextBox1.Text);
            File.Close();
        }
    }
}

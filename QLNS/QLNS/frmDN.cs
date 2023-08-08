using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QLNS
{
    public partial class frmDN : Form
    {
        public frmDN()
        {
            InitializeComponent();
        }
        Clsdatabase cls = new Clsdatabase();
        private SqlConnection Con = null;
        bool Check_Number(string input)
        {
            int n;
            try
            {
                n = int.Parse(input);
                if (n >= 0) return true;
            }
            catch
            {
                return false;
            }
            return false;
        }
        void Null_All()
        {
            txtMatKhau.Text = txtDangNhap.Text = "";
            txtDangNhap.Focus();
        }
        bool Check_Null()
        {
            if (txtDangNhap.Text == "" || txtMatKhau.Text == "")
            {
                return true;
            }
            return false;
        }
        private void btnLogin_Click(object sender, EventArgs e)
        {

            if (Check_Null())
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin !!!!");
                return;
            }


            // Kiểm tra đăng nhập
            try
            {
                Con = new SqlConnection();
                Con.ConnectionString = @"Data Source=LAPTOP-PSVJ6D2U\SQLEXPRESS01;Initial Catalog=QLNS;Integrated Security=True";
                Con.Open();
                string sql = "Select * From tbuser where Username='" + txtDangNhap.Text + "' and Pass='" + txtMatKhau.Text + "' and Quyen='Admin'";
                SqlCommand cmd = new SqlCommand(sql, Con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // Đăng nhập với quyền Admin
                    MessageBox.Show("Xin chào Admin !", "Thông báo !");
                    FrmMain.quyen = "Admin";
                    this.Hide();
                }
                //else if (reader.Read())
                //else if (reader.Read())
                else
                {
                    // Đăng nhập với quyền User 
                    {
                        MessageBox.Show("Xin chào người dùng !", "Thông báo !");
                        FrmMain.quyen = "User";
                        this.Hide();
                    }
                }

                //else // Sai tên đăng nhập || mật khẩu 
                //{
                //    MessageBox.Show("Tên đăng nhập hoặc mật khẩu hoặc mã nhân viên không chính xác");
                //    MessageBox.Show("Vui lòng thử lại !!!");
                //    Null_All();
                //    return;
                //}
                FrmMain frm = new FrmMain();
                //frm.Show();
                frm.ShowDialog();
                cmd.Dispose();
                reader.Close();
                reader.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void cbShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (cbShowPassword.Checked == true)
            {
                txtMatKhau.PasswordChar = '\0';
            }
            else txtMatKhau.PasswordChar = '*';
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Do you want to Exit?", "Notification", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}

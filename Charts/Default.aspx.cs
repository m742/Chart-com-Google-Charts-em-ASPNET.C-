using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace Charts
{

    public partial class Default : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["conn_chamadosti"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                // this.BindGrid(); // executa a função BindGrid
               


            }

        }

        private void BindGrid()
        {

            // parte do codigo exclusiva para criação da gridview e população dela com o datareader

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT nome, descricao, carga, totaulas, ano from cursos"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }

        }
    }
}
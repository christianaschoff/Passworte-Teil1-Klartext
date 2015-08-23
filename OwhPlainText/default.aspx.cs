using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OwhPlainText
{
    public partial class _default : System.Web.UI.Page
    {

        protected void Anmelden_Click(object sender, EventArgs e)
        {
            var sql = "SELECT * FROM PlainText WHERE Benutzername = '" + user.Value + "' AND Passwort = '" + pw.Value + "';";
            var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            using (var comm = new SqlCommand(sql, conn))
            {
                conn.Open();
                ShowResult(comm.ExecuteReader());
                conn.Close();
            }            
        }

        private void ShowResult(SqlDataReader sqlDataReader)
        {
            if(!sqlDataReader.HasRows)
            {
                erg.InnerHtml = "Benutzer / Passwort nicht gefunden";
                return;
            }

            var sb = new StringBuilder();
            while(sqlDataReader.Read())
            {
                sb.AppendLine(string.Format("<div class='bw2'>Benutzer: {0}</div> Passwort: {1}", sqlDataReader.GetString(1), sqlDataReader.GetString(2))); 
            }
            erg.InnerHtml = sb.ToString().Replace(Environment.NewLine, "<br />");
        }

    }
}
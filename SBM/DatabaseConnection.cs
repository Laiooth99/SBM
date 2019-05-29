using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace SBM
{
    public class DatabaseConnection
    {
        public string con = ConfigurationManager.ConnectionStrings["Dbconnections"].ConnectionString;
    }
}
﻿using BlogEngine.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogEngine.NET
{
    public partial class news : BlogEngine.Core.Web.Controls.BlogBasePage
    {
        protected static object world;
        protected void Page_Load(object sender, EventArgs e)
        {
            world = sender.GetHashCode();

         
        }
    }
}
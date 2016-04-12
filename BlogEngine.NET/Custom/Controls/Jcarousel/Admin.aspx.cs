/* 
Author: rtur (http://rtur.net)
Jcarousel implementation for BlogEngine.NET (https://github.com/jsor/jcarousel)
*/

using System;
using System.IO;
using BlogEngine.Core;
using BlogEngine.Core.Web.Extensions;
using System.Data;
using System.Drawing;

namespace rtur.net.Jcarousel
{
    public partial class CarouselAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            App_Code.WebUtils.CheckIfPrimaryBlog(false);

            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                    DeleteItem(Request.QueryString["id"]);

                if (Request.QueryString["ctrl"] != null)
                    txtConrolId.Text = Request.QueryString["ctrl"];

                if (Request.QueryString["scs"] != null)
                    Master.SetStatus("success", "Image saved");
            }
        }

        protected void SaveItem(object sender, EventArgs e)
        {
            try
            {
                Upload();

                var src = txtUploadImage.FileName.ToLowerInvariant();

                Settings.ImageData.AddValues(new[] { txtConrolId.Text + ":" + src, txtTitle.Text });

                ExtensionManager.SaveSettings(Constants.ExtensionName, Settings.ImageData);
            }
            catch (Exception ex)
            {
                Utils.Log("rtur.net.CarouselAdmin.SaveItem", ex);
                Master.SetStatus("warning", ex.Message);
            }
            Response.Redirect(Request.RawUrl);
        }

        protected void EditItem(object sender, EventArgs e)
        {
            try
            {
                ImgItem oldItem = new ImgItem();
                ImgItem newItem = new ImgItem();

                newItem.ControlId = txtConrolId.Text;
                newItem.FileName = txtUploadImage.FileName.ToLowerInvariant();
                newItem.Title = txtTitle.Text;

                oldItem.Id = hdnEditId.Value;
                oldItem.ControlId = hdnEditId.Value.Split(':')[0];
                oldItem.FileName = hdnEditId.Value.Split(':')[1];

                if (Settings.ImageData != null)
                {
                    var table = Settings.ImageData.GetDataTable();
                    string uid, title;
                    int cnt = 0;
                    foreach (DataRow row in table.Rows)
                    {
                        uid = (string)row[0];
                        title = (string)row[1];

                        if (uid == oldItem.Id)
                        {
                            if (!string.IsNullOrEmpty(newItem.FileName) && newItem.FileName != oldItem.FileName)
                                Upload();
                            else
                                newItem.FileName = oldItem.FileName;

                            Settings.ImageData.Parameters[0].Values[cnt] = newItem.ControlId + ":" + newItem.FileName;
                            Settings.ImageData.Parameters[1].Values[cnt] = newItem.Title;
                            ExtensionManager.SaveSettings(Constants.ExtensionName, Settings.ImageData);
                            break;
                        }
                        cnt++;
                    }
                }
            }
            catch (Exception ex)
            {
                Utils.Log("rtur.net.CarouselAdmin.EditItem", ex);
                Master.SetStatus("warning", ex.Message);
            }
            var msgUrl = Request.RawUrl.Contains("?") ? "&scs=y" : "?scs=y";
            Response.Redirect(Request.RawUrl + msgUrl);
        }

        protected void DeleteItem(string id)
        {
            try
            {
                var table = Settings.ImageData.GetDataTable();

                for (int i = 0; i < table.Rows.Count; i++)
                {
                    if (table.Rows[i][Constants.UID].ToString() == id)
                    {
                        foreach (ExtensionParameter par in Settings.ImageData.Parameters)
                        {
                            par.DeleteValue(i);
                        }
                        ExtensionManager.SaveSettings(Constants.ExtensionName, Settings.ImageData);
                        break;
                    }
                }
                // delete image
                string[] uid = id.Split(':');
                if (uid.GetUpperBound(0) < 1) return;

                var folder = Server.MapPath(Blog.CurrentInstance.StorageLocation + Constants.ImageFolder + "/" + uid[0]);
                var imgPath = Path.Combine(folder, uid[1]);
                File.Delete(imgPath);

                // delete thumbnail
                var fInfo = new System.IO.FileInfo(imgPath);
                var thumbName = imgPath.Replace(fInfo.Extension, "_thumb" + fInfo.Extension);

                if (File.Exists(thumbName))
                    File.Delete(thumbName);

                Master.SetStatus("success", "Image deleted");
            }
            catch (Exception ex)
            {
                Utils.Log("rtur.net.CarouselAdmin.EditItem", ex);
                Master.SetStatus("warning", ex.Message);
            }
        }

        private void Upload()
        {
            var folder = Server.MapPath(Blog.CurrentInstance.StorageLocation + Constants.ImageFolder + "/" + txtConrolId.Text);
            var fileName = Path.Combine(folder, txtUploadImage.FileName);
            
            if (!Directory.Exists(folder))
                Directory.CreateDirectory(folder);

            if (File.Exists(fileName))
                File.Delete(fileName);

            txtUploadImage.PostedFile.SaveAs(fileName);

            // generate thumbnail
            var fInfo = new System.IO.FileInfo(fileName);
            var thumbName = fileName.Replace(fInfo.Extension, "_thumb" + fInfo.Extension);

            if (File.Exists(thumbName))
                File.Delete(thumbName);

            Image image = Image.FromFile(fileName);
            Image thumb = image.GetThumbnailImage(75, 75, () => false, IntPtr.Zero);
            
            thumb.Save(thumbName);
        }
    }

    class ImgItem
    {
        public string Id { get; set; }
        public string ControlId { get; set; }
        public string FileName { get; set; }
        public string Title { get; set; }
    }
}

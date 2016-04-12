<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/admin.master" CodeFile="Admin.aspx.cs" Inherits="rtur.net.Jcarousel.CarouselAdmin" %>
<%@ MasterType VirtualPath="~/admin/admin.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="rtur.net.Jcarousel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphAdmin" Runat="Server">
<style>
	.success {
		background-color: #3fad46;
		border-color: #3fad46;
		color: #ffffff;
		padding: 10px;
		margin-bottom: 8px;
		-webkit-border-radius: 5px;
		-moz-border-radius: 5px;
		border-radius: 5px;
	}
	.warning {
		background-color: #d9534f;
		border-color: #d9534f;
		color: #ffffff;
		padding: 10px;
		margin-bottom: 8px;
		-webkit-border-radius: 5px;
		-moz-border-radius: 5px;
		border-radius: 5px;
	}
</style>
<div class="content-box-outer">
    <div class="content-box-full">
        
        <div class="alert alert-info">
            <h4>Jcarousel Help</h4>
            <p>To use jcarousel, upload some images and then anywhere in your post or page add token like this to display "album1":</p>
            <p>	
	            [CAROUSEL:Album1]
            </p>
        </div>
        
        <div>
            <h3>Settings: Jcarousel</h3>
            <div style="float: left; width: 500px">
                <p>
                    <span style="width: 120px; display:inline-block;">Album:</span>
                    <asp:TextBox ID="txtConrolId" runat="server" MaxLength="100"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqCtrlId" ValidationGroup="data" ControlToValidate="txtConrolId" Text="<%$ Resources:labels, required %>" />
                </p>
                <p>
                    <span style="width: 120px; display:inline-block;">Image Title:</span>
                    <asp:TextBox ID="txtTitle" Width="300" runat="server" MaxLength="250"></asp:TextBox>
                </p>
                <p>
                    <span style="width: 120px; display:inline-block;"><%=Resources.labels.upload %>:</span>
                    <asp:FileUpload runat="server" id="txtUploadImage" />
                </p>
                <p>
                    <asp:button runat="server" ValidationGroup="data" CssClass="btn primary" id="btnSave" Text=" Add " OnClick="SaveItem" /> 
                    <asp:button runat="server" ValidationGroup="data" CssClass="btn primary" id="btnEdit" Text=" Update " OnClick="EditItem" /> 
                    <a id="btnCancel" href="" onclick="return CancelSliderEdit()">Cancel</a>    
                </p>
                <asp:HiddenField ID="hdnEditId" runat="server" />
            </div>

            <div class="clear"></div>
            
            <div>
                <table id="RoleService" class="table">
                  <thead>
                    <tr>
                      <th width="25">&nbsp;</th>
                      <th width="120">Album</th>
                      <th width="200">Image File</th>
	                  <th width="250">Title</th>
                      <th width="80">&nbsp;</th>
                      <th width="80">&nbsp;</th>
                    </tr>
                  </thead>
                  <tbody>
                    <%
                    var i = 0;
                    var root = BlogEngine.Core.Utils.RelativeWebRoot;
                    foreach (DataRow row in Settings.ImageData.GetDataTable().Rows)
                    {
                        var cls = i%2 == 0 ? "" : "alt";
                        string[] uid = row[Constants.UID].ToString().Split(':');
                        if (uid.GetUpperBound(0) < 1) continue;
                        var ctrl = uid[0];
                        var src = uid[1];
                        var editPars = string.Format("{0}|{1}|{2}", ctrl, src, row[Constants.Title]);
                    %>
                    <tr class="<%=cls %>">
                      <td><img src="<%=root %>image.axd?picture=/jcarousel/<%=ctrl %>/<%=src.Replace(".", "_thumb.") %>" width="24" height="24" alt=""/></td>
                      <td><%= ctrl %></td>
                      <td><%= src %></td>
	                  <td><%= row[Constants.Title] %></td>
                      <td align="center" style="vertical-align:middle"><a class="editAction" href="" onclick="return EditSlider('<%=row[0] %>', '<%=editPars %>');">Edit</a></td>
                      <td align="center" style="vertical-align:middle"><a class="deleteAction" href="?id=<%=row[Constants.UID].ToString() %>">Delete</a></td>
                    </tr>
                    <% i++; } %>
                  </tbody>
                </table>
            </div>
        
        </div>
    </div>
</div>
<script type="text/javascript">
    CancelSliderEdit();
    function EditSlider(id, pars) {
        var n = pars.split('|');
        $("[id$='_hdnEditId']").val(id);
        for (var i = 0; i < n.length; i++) {
            if (i == 0) { $("[id$='_txtConrolId']").val(n[i]); }
            if (i == 2) { $("[id$='_txtTitle']").val(n[i]); }
        }
        $("[id$='_btnSave']").hide();
        $("[id$='_btnEdit']").show();
        $("#btnCancel").show();
        return false;
    }
    function CancelSliderEdit() {
        $("[id$='_txtConrolId']").val('');
        $("[id$='_txtTitle']").val('');
        $("[id$='_btnSave']").show();
        $("[id$='_btnEdit']").hide();
        $("#btnCancel").hide();
        return false;
    }
</script>
</asp:Content>

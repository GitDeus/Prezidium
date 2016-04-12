using System;
using BlogEngine.Core;
using BlogEngine.Core.Web.Controls;
using BlogEngine.Core.Web.Extensions;

/// <summary>
/// Sends emails to newsletter subscribers
/// </summary>
[Extension("Sends emails to newsletter subscribers", "3.3.0.0", "BlogEngine.NET")]
public class newsletter
{
    #region Constructors and Destructors

    static newsletter()
    {
        Post.Published += Post_Published;
    }

    private static void Post_Published(object sender, EventArgs e)
    {
        if (!ExtensionManager.ExtensionEnabled("newsletter"))
            return;

        var publishable = (IPublishable)sender;
        BlogEngine.NET.Custom.Widgets.newsletter.SendEmails(publishable);
    }

    #endregion
}
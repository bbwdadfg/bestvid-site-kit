using System;

namespace BestVid.SiteKit
{
    public static class BestVidLinks
    {
        public const string SiteUrl = "https://bestvid.net";
        public const string SiteName = "BestVid";

        public static string Url(string path = "")
        {
            var normalized = (path ?? string.Empty).Trim();

            if (normalized.Length == 0 || normalized == "/")
            {
                return SiteUrl;
            }

            return SiteUrl + "/" + normalized.TrimStart('/');
        }

        public static string SearchUrl(string query)
        {
            return Url("/search") + "?q=" + Uri.EscapeDataString((query ?? string.Empty).Trim()).Replace("%20", "+");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;

namespace CheckList
{
    public class CMTool
    {
        /// <summary>
        /// 加密算法
        /// </summary>
        /// <param name="str">加密前字符串</param>
        /// <param name="code">16位加密还是32位加密</param>
        /// <returns>加密后字符串</returns>
        public static string EncryptStr(string str, int code)
        {
            if (code == 16) //16位MD5加密（取32位加密的9~25字符） 
            {
                return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower().Substring(8, 16);
            }
            if (code == 32) //32位加密 
            {
                return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower();
            }
            return "00000000000000000000000000000000";
        }

        /// <summary>
        /// Unix时间戳转成时间
        /// </summary>
        /// <param name="timeStamp"></param>
        /// <returns></returns>
        public static DateTime FROM_UNIXTIME(long timeStamp)
        {
            return DateTime.Parse("1970-01-01 00:00:00").AddSeconds(timeStamp).ToLocalTime();
        }

        /// <summary>
        /// Unix时间戳转成字符串
        /// </summary>
        /// <param name="timeStamp"></param>
        /// <returns></returns>
        public static string FORMAT_UNIXTIME(long timeStamp)
        {
            DateTime FormatTime = FROM_UNIXTIME(timeStamp);
            return FormatTime.ToString("yyyy-MM-dd HH:mm");
        }

        /// <summary>
        /// Unix时间戳转成字符串
        /// </summary>
        /// <param name="timeStamp"></param>
        /// <returns></returns>
        public static string SHORT_FORMAT_UNIXTIME(long timeStamp)
        {
            DateTime FormatTime = FROM_UNIXTIME(timeStamp);
            return FormatTime.ToString("yyyy-MM-dd");
        }

        /// <summary>
        /// 时间转成Unix时间戳
        /// </summary>
        /// <param name="dateTime"></param>
        /// <returns></returns>
        public static int UNIX_TIMESTAMP(DateTime dateTime)
        {
            return (int)((dateTime.ToUniversalTime().Ticks - DateTime.Parse("1970-01-01 00:00:00").Ticks) / 10000000);
        }

        /// <summary>
        /// 时间转成Unix时间戳
        /// </summary>
        /// <param name="dateTime"></param>
        /// <returns></returns>
        public static int UNIX_TIMESTAMP(string dateTime)
        {
            return UNIX_TIMESTAMP(DateTime.Parse(dateTime));
        }

        /// <summary>
        /// 过滤html标签并保留空格换行
        /// </summary>
        /// <param name="TempContent"></param>
        /// <returns></returns>
        public static string ReplaceHtmlTags(string html)
        {
            html = Regex.Replace(html, "<[^<]*/[p|P][^>]*>", "\n");
            html = Regex.Replace(html, "<[br|BR][^>]*>", "\n");
            html = Regex.Replace(html, "<[^>]+>", ""); //任意多个
            html = Regex.Replace(html, "&nbsp;", " ");
            html = Regex.Replace(html, "\r\n", "\n");
            html = Regex.Replace(html, "\n[ \n]*\n", "\n");
            html = Regex.Replace(html, "\n+", "\n\n");
            int begin = Regex.Match(html, @"[^ \r\n]").Index;
            html = html.Substring(begin);
            html = Regex.Replace(html, "&#8220;", "“");
            html = Regex.Replace(html, "&#8221;", "”");
            if (html.Length > 8000)
            {
                html = html.Substring(0, 7996) + "...";
            }
            return html;
        }

        public static string Encode(string str)
        {
            str = str.Replace("&", "&amp;");
            str = str.Replace("'", "''");
            str = str.Replace("<", "&lt;");
            str = str.Replace(">", "&gt;");

            return str;
        }

        public static string Decode(string str)
        {
            str = str.Replace("&gt;", ">");
            str = str.Replace("&lt;", "<");

            return str;
        }

    }
}

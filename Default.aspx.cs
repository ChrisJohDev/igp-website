using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.XPath;
using System.Xml.Xsl;
using System.Xml;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        double height, bHeight;
        double width, bWidth;
        double top;
        double left;
        bool isOpera = Request.Browser.Browser.Contains("Opera") ? true : false;

        bHeight = this.Page.Request.Browser.ScreenPixelsHeight > 0? this.Page.Request.Browser.ScreenPixelsHeight: 460;
        bWidth = Request.Browser.ScreenPixelsWidth > 0 ? Request.Browser.ScreenPixelsWidth : 600;

        width = bWidth * 0.9 > 680 ? 680 : bWidth * 0.9;
        left = (bWidth - width) / 2;
        height = bHeight * 0.9;
        top = (bHeight - height) / 2;

    }
	protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
	{
        bool isOpera = Request.Browser.Browser.Contains("Opera") ? true : false;

        Literal txt = new Literal();
        txt.Text = "<h3>Note!</h3><strong>Opera Browsers</strong> doesn't handle tables properly. <br />To get the most out of this site use 'Mozilla FireFox', 'Netscape Navigator', or Internet Explorer'.<br />For information contact ";
        HyperLink lnk = new HyperLink();
        lnk.NavigateUrl = "mailto:chris@data4mat.com";
        lnk.Text = "chris@data4mat.com";
        if (isOpera)
        {
            this.OperaNav.Controls.Add(txt);
            this.OperaNav.Controls.Add(lnk);
        }

        
		switch (e.Item.Value)
		{
			case "Home":
				this.Xml1.DocumentSource = "~/Data/XML/HomePage.xml";
                this.Xml1.TransformSource = "~/Data/StyleSheets/HomePage.xsl";
				this.Header.Title = "Intensity Glow Products - Home";
				break;
			case "cmpNews":
				this.Xml1.DocumentSource = "~/Data/XML/CompanyNews.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Company News";
				break;
			case "cmpInfo":
				this.Xml1.DocumentSource = "~/Data/XML/CompanyInfo.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Company Information";
				break;
			case "cmpContact":
				this.Xml1.DocumentSource = "~/Data/XML/ContactUs.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Contact Us";
				break;
			case "cmpOpportunities":
				this.Xml1.DocumentSource = "~/Data/XML/Opportunities.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Jobs &amp; Opportunities";
				break;
			case "Products":
				this.Xml1.DocumentSource = "~/Data/XML/default.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/default.xsl";
				this.Header.Title = "IGP - Products";
				break;
			case "prodNew":
				this.Xml1.XPathNavigator = GetNewProducts();
				this.Xml1.TransformSource = "~/Data/StyleSheets/productlists.xsl";
				this.Header.Title = "IGP - New Consumer Products";
				break;
			case "prodConsumer":
				this.Xml1.DocumentSource = "~/Data/XML/ConsumerProducts.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/productlists.xsl";
				this.Header.Title = "IGP - Product Catalog";
				break;
			case "prodProfessional":
				this.Xml1.DocumentSource = "~/Data/XML/ProProducts.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/proProdLists.xsl";
				this.Header.Title = "IGP - Professional Products";
				break;
			case "prodHowToBuy":
				this.Xml1.DocumentSource = "~/Data/XML/HowToBuy.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - How To Buy Information";
				break;
			case "glowGlowTips":
				this.Xml1.DocumentSource = "~/Data/XML/glowTips1.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Glow Beauty Tips!";
				break;
			case "infInformation":
				this.Xml1.DocumentSource = "~/Data/XML/Information.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - General Beauty Products Information";
				break;
            case "infNewResellers":
				this.Xml1.DocumentSource = "~/Data/XML/NewResellers.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - New Reseller Information &amp; Instruction";
				break;
            case "infOutlets":
                this.Xml1.DocumentSource = "~/Data/XML/StoresOutlets.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Stores &amp; Outlets Information";
				break;
			case "glowFAQ":
				this.Xml1.DocumentSource = "~/Data/XML/faq1.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Frequently Asked Questions";
				break;
			case "Terms":
				this.Xml1.DocumentSource = "~/Data/XML/Terms.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
				this.Header.Title = "IGP - Terms &amp; Conditions of Sales";
				break;
			case "set1Usage":
				this.Xml1.DocumentSource = "~/Data/XML/set1Usage.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
                this.Header.Title = "IGP - Intensity Glow Set - Usage Instructions ";
				break;
			case "set2Usage":
				this.Xml1.DocumentSource = "~/Data/XML/set2Usage.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
                this.Header.Title = "IGP - IGP Beauty Glow Set - Usage Instructions";
				break;
			case "set3Usage":
				this.Xml1.DocumentSource = "~/Data/XML/set3Usage.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
                this.Header.Title = "IGP - IGP Anti Wrinkle Set - Usage Instructions";
				break;
			case "set4Usage":
				this.Xml1.DocumentSource = "~/Data/XML/set4Usage.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
                this.Header.Title = "IGP - IGP Acne Control Set - Usage Instructions";
				break;
			case "set5Usage":
				this.Xml1.DocumentSource = "~/Data/XML/set5Usage.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/stndPage.xsl";
                this.Header.Title = "IGP - IGP Body Bleaching Set - Usage Instructions";
				break;
			default:
				this.Xml1.DocumentSource = "~/Data/XML/HomePage.xml";
				this.Xml1.TransformSource = "~/Data/StyleSheets/HomePage.xsl";
				this.Header.Title = "Intensity Glow Products";
				break;
		}
	}

	protected XPathNavigator GetNewProducts()
	{
		this.Xml1.DocumentSource = "~/Data/XML/ConsumerProducts.xml";
		string urlPath = this.Xml1.Document.BaseURI;
		XmlTextReader xread = new XmlTextReader(urlPath);
		XPathDocument doc = new XPathDocument(xread);
		XPathNavigator nav = doc.CreateNavigator();
		XPathNodeIterator iter = nav.Select("/Page/Products/category");
		XmlDocument xDoc = new XmlDocument();
		xDoc.LoadXml("<Page><head>IGP New Products</head><slogan>Valid from August 2007</slogan><Products>" + " " + "</Products></Page>");
		XmlNode root = xDoc.DocumentElement;
		XmlNode products = root.SelectSingleNode("/Page/Products");

		while (iter.MoveNext())
		{
			string tmpName = iter.Current.GetAttribute("name", "");
			XPathNavigator nav2 = iter.Current;
			XPathNodeIterator iter2 = nav2.SelectDescendants(XPathNodeType.Element, false);

			while (iter2.MoveNext())
			{
				if (iter2.Current.GetAttribute("new", "") == "true")
				{
					XmlElement elm = xDoc.CreateElement("category");
					elm.SetAttribute("name", tmpName);
					elm.InnerXml = iter2.Current.OuterXml;
					products.AppendChild(elm);
				}
			}
		}
		xread.Close();
		return xDoc.CreateNavigator();
	}
}

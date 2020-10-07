using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblcat.Text = Class1.cname;
            string opstr = "Oil painting can be a messy task and can be quite scary for beginners. Oil painting is suitable for almost all kinds of styles. You get to work with smooth texture of paint and it has a wonderful scent to it. Oil paint uses some drying oil as a binder to the pigments, which gives the wonderful buttery feel to the paint. The most common drying oils used as a binder are walnut oil, linseed oil, poppy seed oil and many more. Oil painting was first used by Indian and Chinese artists in the 5th century, but it became popular only in the 15th century. Pino Daeni(1939 – 2010) – Italian artist, his art and canvases elicit feelings of warmth, nostalgia, love and family. His paintings are often set on vibrantly sunny beaches on the Mediterranean where he grew up. Pinois noted for his exceptional ability to capture the movements and expressions of his subjects – a talent which has brought his artwork a worldwide following and private commissions to do portraits. Trained in Italy at the Art institute of Bari, and later at Milan’s Academy of Brera, Pino perfected his skills painting female and figure studies heavily influenced by the Pre-Raphaelites and Macchiaioli. After establishing himself as a successful artist in his native land, Pino immigrated to the United States, seeking more artistic freedom and opportunity.";
            string apstr = "If you are looking for faster drying painting, then acrylic painting is the best. These are water soluble paints, yet once the painting is complete, it turns water resistant. Interesting fact isnt't it? Most hobbyists love to work with acrylic paints. For sculptures, moulding, facial features, many artists use acrylic painting. It is easier to clean the brushes after ise, since acrylic paints need only water to wash them off.";
            string ppstr = "Pastel sticks are normally used to create the pastel paintings. Using pastel sticks you can immediately start drawing and coloring, it uses the same binding pigments, except pastel sticks are a powder form which are bound together using a binding agent, and they are readymade. If you are looking for pure and deep colors, then it's highly recommended to use the pastel sticks. Pastel paintings can be done on canvas, so you can do beautiful layering of colors with pastels.";
            string wpstr = "Watercolor painting is usually done on the paper. In this particuar type of painting, one uses water based solutions to mix the colors and hence the name water color painting. Compared to oil painting, watercolor painting is also similarly tough task. Nowadays you have plenty of artists trying out realistic looking portraits using watercolors. The mixing of colors is very crucial in this, since too much of anything, changes the shade of the colors.";
            if (Class1.cname == "Acrylic Paintings")
                spn.InnerHtml = apstr;
            else if (Class1.cname == "Pastel Paintings")
                spn.InnerHtml = ppstr;
            else if (Class1.cname == "Oil Paintings")
                spn.InnerHtml = opstr;
            else
                spn.InnerHtml = wpstr;

        }
    }
}

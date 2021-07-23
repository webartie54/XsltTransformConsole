using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace ConsoleXSLT
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //xml
                string sXmlPath = @"C:\temp\xml\contact.xml";
                //xsl
                string sXslPath = @"C:\temp\xml\contact.xsl";             
                XslCompiledTransform xslCompiledTransform = new XslCompiledTransform();
                xslCompiledTransform.Load(sXslPath);
                StringBuilder stringBuilder = new StringBuilder();
                StringWriter stringWriter = new StringWriter(stringBuilder);
                //do transform
                xslCompiledTransform.Transform(sXmlPath, null, stringWriter);
                stringWriter.Close();
                Console.Out.WriteLine("sb.ToString() = {0}", stringBuilder.ToString());
                //write to disk
                File.WriteAllText(@"C:\temp\xml\contact.html", stringBuilder.ToString());

            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex);
            }
        }
    }
}

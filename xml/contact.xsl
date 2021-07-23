<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
    <xsl:template match="/">
        <html>
            <body>
                <h2>All users and companies</h2>

                <table border="1">
                    <tr bgcolor="silver">
                        <th>id</th>
                        <th>Firstname</th>
                        <th>brand</th>
                        <th>Lastname</th>
                    </tr>


                    <xsl:for-each select="company">

                        <td>
                            <xsl:value-of select="userId" />
                        </td>
                        <td>
                            <xsl:value-of select="@brand" />
                        </td>
                        <td>
                            <xsl:value-of select="firstname" />
                        </td>
                        <td>
                            <xsl:value-of select="lastname" />
                        </td>


                    </xsl:for-each>

                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
    <xsl:template match="/companies">
        <html>
            
            <body>
                <h2>All users and companies</h2>

                <table border="1">
                    <tr bgcolor="silver">
                        <th>id</th>
                        <th>brand</th>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Turnover</th>
                    </tr>


                    <xsl:for-each select="company">

                       
                   
                        <xsl:if test="userId > 1000">
                            <tr>
                            <xsl:choose>
                                <xsl:when test="turnover &gt; 1000000">
                                    <td bgcolor="green">
                                        <xsl:value-of select="userId" />
                                    </td>
                                </xsl:when>                       
                                <xsl:otherwise>

                                    <xsl:choose>
                                        <xsl:when test="turnover = 1000000">
                                            <td bgcolor="orange">
                                                <xsl:value-of select="userId" />
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td bgcolor="red">
                                                <xsl:value-of select="userId" />
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>


                                    
                                </xsl:otherwise>
                            </xsl:choose>

                      

                           
                                <td>
                                    <xsl:value-of select="@brand" />
                                </td>
                                <td>
                                    <xsl:value-of select="firstname" />
                                </td>
                                <td>
                                    <xsl:value-of select="lastname" />
                                </td>
                                <td>
                                    <xsl:value-of select="turnover" />
                                </td>
                            </tr>
                        </xsl:if>


                    </xsl:for-each>

                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
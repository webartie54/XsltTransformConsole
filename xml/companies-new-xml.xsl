<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
    <xsl:template match="/companies">


        <xsl:for-each select="company">
            <company>
            <userId>
                <xsl:value-of select="userId" />
            </userId>

            <firstname>
                <xsl:value-of select="firstname" />
            </firstname>
            <xsl:value-of select="@brand" />

            <lastname>
                <xsl:value-of select="lastname" />
            </lastname>

            <turnover>
                <xsl:value-of select="turnover" />
                
            </turnover>

            <picture>
                <xsl:attribute name="source"/>
            </picture>
        </company>

        </xsl:for-each>


    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
    <xsl:template match="/companies">


        <xsl:for-each select="company">

            <xsl:value-of select="userId" />
            ;
            <xsl:value-of select="@brand" />
            ;
            <xsl:value-of select="firstname" />
            ;
            <xsl:value-of select="lastname" />
            ;
            <xsl:value-of select="turnover" />
            ;\n
        </xsl:for-each>


    </xsl:template>
</xsl:stylesheet>
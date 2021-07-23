<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
    <xsl:template match="/">
        <svg>
            <!-- viewBox="0 0 500 500" -->
            <xsl:attribute name="viewBox">0 0 500 500</xsl:attribute>

            <xsl:for-each select="svg">
                <path id="curve" fill="transparent" d="M73.2,148.6c4-6.1,65.5-96.8,178.6-95.6c111.3,1.2,170.8,90.3,175.1,97" />
                <text width="500">
                    <textPath>
                        <xsl:attribute name="xlink:href">#curve</xsl:attribute>
                        <xsl:value-of select="text" />
                    </textPath>
                </text>
            </xsl:for-each>

        </svg>
    </xsl:template>
</xsl:stylesheet>
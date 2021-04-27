<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>
    <xsl:template match="/museos">
        <museos>
            <xsl:copy>
                <xsl:apply-templates select="museo"/>
            </xsl:copy>
        </museos>
    </xsl:template>

    <xsl:template match="">
        
    </xsl:template>
</xsl:stylesheet>

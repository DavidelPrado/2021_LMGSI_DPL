<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/factura">
        <xsl:text xml:space="preserve">
            <factura>
                <xsl:apply-templates select="@*"/>
                <xsl:apply-templates select="datos_emisor"/>
            </factura>
        </xsl:text>
    </xsl:template>
    
    <xsl:apply-templates match="@*">
        <xsl:element name="{name()}">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:apply-templates>
    
    <xsl:apply-templates match="datos_emisor">
        <xsl:element name="{name()}">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:apply-templates>
</xsl:stylesheet>
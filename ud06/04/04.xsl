<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>
    <xsl:template match="/factura">
        <factura>
            <n_factura>
                <xsl:value-of select="@n_factura"/>
            </n_factura>
            <datos_emisor>
                <xsl:apply-templates  select="datos_emisor/*"/>          
            </datos_emisor>
            <datos_receptor>
                <xsl:apply-templates select="datos_receptor/@*"/>
                <xsl:apply-templates select="datos_receptor/*"/>
            </datos_receptor>
            <datos_factura>
                <xsl:apply-templates select="datos_factura/@*"/>
                <xsl:apply-templates select="datos_factura/child::*"/>
            </datos_factura>      
        </factura>
    </xsl:template>
    
     <xsl:template match="*">
        <xsl:choose>
            <xsl:when test="not(string())">
                <xsl:apply-templates select="@*"/>
            </xsl:when>
            <xsl:when test="name()='linea'">
                <xsl:copy-of select="current()"/>
            </xsl:when>
            <xsl:when test="text()!=''">
                <xsl:element name="{name()}">
                    <xsl:value-of select="current()"/>
                </xsl:element>
                <xsl:apply-templates select="@*"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="@*">
        <xsl:element name="{name()}">
            <xsl:value-of select="current()"/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
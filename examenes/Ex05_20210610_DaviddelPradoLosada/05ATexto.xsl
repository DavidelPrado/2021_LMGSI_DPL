<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="//database">
        <xsl:value-of select="concat('CREATE DATABASE if NOT EXISTS ', @name, ';')"/>
        <xsl:apply-templates select="table_structure"/>
    </xsl:template>
    
    <xsl:template match="table_structure">
        <xsl:value-of select="concat('CREATE TABLE ', @name, '(' )"/>
        <xsl:apply-templates select="field"/>
    </xsl:template>
    
    <xsl:template match="field">
        <xsl:value-of select="concat(@Field, ' ', @Type, ',')"/>
    </xsl:template>
</xsl:stylesheet>
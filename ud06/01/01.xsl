<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>01.xsl</title>
            </head>
            <body>
               <h1>Informacion de las viviendas</h1>
               <xsl:apply-templates select="vivienda"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="vivienda">
        <p>Piso:<xsl:value-of select="piso"/> Puerta:<xsl:value-of select="puerta"/></p>
        <xsl:apply-templates select="vecinos"/>
    </xsl:template>
    
    <xsl:template match="vecinos">
        <ol>
            <li>
                <xsl:value-of select="nombre"/>
            </li>
        </ol>
    </xsl:template>
</xsl:stylesheet>
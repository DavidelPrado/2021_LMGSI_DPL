<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/horario">
        <html>
            <head>
                <title>XSLT 03 David del Prado Losada</title>
            </head>
            <body>
                <h1>Horario del curso <xsl:value-of select="@curso"/> </h1>
                <table>
                    <tr>
                        <th>Código del módulo</th>
                        <th>Nombre del módulo</th>
                    </tr>
                    <xsl:apply-templates select="modulos/modulo"/>
                </table>
                <table>
                    <tr>
                        <th>Código del profesor</th>
                        <th>Nombre del profesor</th>
                    </tr>
                    <xsl:apply-templates select="profesores/profesor"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="modulos/modulo">
        <tr>
            <td><xsl:value-of select="@codM"/></td>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>
    
    <xsl:template match="profesores/profesor">
        <tr>
            <td><xsl:value-of select="@codP"/></td>
            <td><xsl:value-of select="."/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>

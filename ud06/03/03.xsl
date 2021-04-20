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
            </body>
        </html>
    </xsl:template>

    <xsl:template match="modulos/modulo">
        <td><xsl:value-of select="@codM"/></td>
        <td><xsl:value-of select="."/></td>
    </xsl:template>

</xsl:stylesheet>

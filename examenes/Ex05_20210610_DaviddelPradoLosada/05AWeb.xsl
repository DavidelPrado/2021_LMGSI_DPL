<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>05AWeb.xsl</title>
                <link rel="stylesheet" href="css/estilo.css" type="text/css"/>
            </head>
            <body>
                <h1>Base de datos: BDDepartamentos</h1>
                
                <xsl:apply-templates select="mysqldump/database/table_data[@name='DEPART' or @name='EMPLE']"/>
                <div>Realizado por: David del Prado Losada</div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="mysqldump/database/table_data[@name='DEPART' or @name='EMPLE']">
            <h2>Tabla: <xsl:value-of select="@name"/></h2>
            <table>
                <xsl:apply-templates select="row"/>
            </table>
    </xsl:template>

    <xsl:template match="row">
        <tr>
            <xsl:apply-templates select="field"/>
        </tr>
    </xsl:template>
    
    <xsl:template match="field">
        <td>
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../lib/web.xsl"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>08.xsl David del Prado Losada</title>
                <style>
                    table, tr, td, th{border: 1px solid blue;}
                </style>
                <link rel="stylesheet" href="prediccion.css" type="text/css"/>
            </head>
            <body>
                <h1>Predicción por municipios</h1>
                <table>
                    <caption>
                        <xsl:value-of select="concat('EL TIEMPO ',//municipio/nombre,'(',//municipio/provincia,')')"/>
                    </caption>
                    <tr>
                        <th>Día</th>
                        <th>Prob. precip.</th>
                        <th>Estado del cielo</th>
                        <th>Temperatura(ªC)</th>
                        <th>Viento(km/h)</th>
                    </tr>
                    <xsl:apply-templates select="//dia"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="dia">
        <tr>
            <td>
                <xsl:value-of select="substring(@fecha,9,2)"/>
            </td>
            <td>
                <xsl:value-of select="prob_precipitacion"/>
            </td>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',estado_cielo,'.gif')"/>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="estado_cielo/@descripcion"/>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="estado_cielo/@descripcion"/>
                    </xsl:attribute>
                </img>
                
            </td>
            <td>
                <span class="min">
                    <xsl:value-of select="temperatura/minima"/>
                </span>
                <span class="max">
                    <xsl:value-of select="temperatura/maxima"/>
                </span>
            </td>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/',viento/direccion,'.gif')"/>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="viento/direccion"/>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="viento/direccion"/>
                    </xsl:attribute>
                </img>
                <xsl:value-of select="viento/velocidad"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
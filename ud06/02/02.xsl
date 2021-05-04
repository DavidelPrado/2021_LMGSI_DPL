<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/listatickets">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; cahrset=UTF-8"/>
                <title>02 XSLT David del Prado Losada</title>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="David del Prado Losada"/>
                <meta name="application-name" content="AppWeb de LMSGI"/>
                <meta name="description" content="Informacion de tickets"/>
                <meta name="keywords" content="tickets, total, xslt, xml"/>
                <meta name="robots" content="index, follow"/>
                <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
                <link rel="icon" href="favicon.ico" type="image/x-icon"/>
            </head>
            <body>
                <h1>Información de tickets</h1>
                <h2>Listado de tickets</h2>
                <xsl:apply-templates select="ticket"/>
                <h3>Numero de tickets: <xsl:value-of select="count(//ticket)"/></h3>
                <h3>Total de tickets: <xsl:value-of select="sum(//total)"/></h3>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ticket">
        <p>Tickets: <xsl:value-of select="numero"/></p>
        <table>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
            </tr>
            <xsl:apply-templates select="producto"/>
            <tr>
                <th>Total</th>
                <th><xsl:value-of select="total"/></th>
            </tr>
            <tr>
                <th colspan="2">Fecha del ticket <xsl:value-of select="fecha"/></th>
            </tr>
        </table>
    </xsl:template>
    
    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
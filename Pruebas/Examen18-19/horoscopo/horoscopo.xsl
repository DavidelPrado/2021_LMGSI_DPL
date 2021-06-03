<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="../lib/web.xsl"/>

    <xsl:template match="/">
        <xsl:variable name="signo" select="'Aries'"/>
        <xsl:call-template name="docTipo"/>
        <html>
             <html>
            <head>
                <xsl:call-template name="metaWeb">
                    <xsl:with-param name="titulo" select="'Horoscopo David del Prado'"/>
                    <xsl:with-param name="descripcion" select="'Horoscopo'"/>
                    <xsl:with-param name="keywords" select="'Horoscopo, xsl, xslt, xml'"/>
                </xsl:call-template>
            </head>
            <body>
                <div class="imagenes">
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="concat('../images/bg-', //@id, '.jpg')"/>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                    </xsl:element>
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="concat('../images/', //@id, '.svg')"/>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="//source"/>
                        </xsl:attribute>
                    </xsl:element>
                </div>
                <h1>Horóscopo <xsl:value-of select="$signo"/></h1>
                <div class="prediccion">
                    <h2>Predicción para hoy <xsl:value-of select="//date"/></h2>
                    <p>
                        <xsl:value-of select="//message"/>
                    </p>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

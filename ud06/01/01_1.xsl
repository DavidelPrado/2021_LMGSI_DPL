<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/edificio">
        <html>
            <head>
                <title>01.xsl</title>
            </head>
            <body>
               <h1>Informacion de las viviendas</h1>
               <xsl:for-each select="vivienda">
                   <p>
                       Piso:<xsl:value-of select="piso"/> 
                       Puerta:<xsl:value-of select="puerta"/>
                   </p>
                    <ol>
                        <xsl:for-each select="vecinos/nombre">
                            <li>
                                <xsl:value-of select="."/>
                            </li>
                        </xsl:for-each>
                    </ol>
               </xsl:for-each>
               <p>Numero de viviendas:<xsl:value-of select="count(vivienda)"/></p>
               <p>Numero de vecinos:<xsl:value-of select="count(//nombre)"/></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
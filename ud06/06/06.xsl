<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <xsl:text xml:space="preserve">
            <root>
                <xsl:for-each select="root/row">
                    <row>
                        <anyo>
                            <xsl:value-of select="@Anyo"/>
                        </anyo>
                        <concepto>
                            <xsl:value-of select="@Concepto"/>
                        </concepto>
                        <usuarios>
                            <xsl:value-of select="@Usuarios_registrados"/>
                        </usuarios>
                    </row>
                </xsl:for-each>
            </root>
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>
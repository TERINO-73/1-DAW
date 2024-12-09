<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ies">
        <html>
            <head>
                <title>IES Velazquez</title>
            </head>
            <body>
                <h1>IES Velazquez</h1>
                <xsl:for-each select="ciclos/ciclo">
                    <p>
                        <xsl:value-of select="nombre"/>
                        <xsl:text>        </xsl:text>
                        <xsl:value-of select="horario"/>
                    </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



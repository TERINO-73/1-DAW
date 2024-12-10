<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <!-- Plantilla principal que coincide con el nodo raíz del documento XML de entrada -->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/ies/@nombre"/>
                </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="/ies/@nombre"/>
                </h1>
                <xsl:apply-templates select="/ies/ciclos/ciclo"/>
            </body>
        </html>
    </xsl:template>

    <!-- Plantilla para los elementos "ciclo" -->
    <xsl:template match="ciclo">
        <table border="1">
            <tr>
                <th>Ciclo</th>
                <td>
                    <xsl:value-of select="nombre"/>
                </td>
            </tr>
            <tr>
                <th>Grado</th>
                <td>
                    <xsl:value-of select="grado"/>
                </td>
            </tr>
            <tr>
                <th>Año Decreto</th>
                <td>
                    <xsl:value-of select="decretoTitulo/@año"/>
                </td>
            </tr>
            <tr>
                <th>Horario</th>
                <td>
                    <xsl:value-of select="horario"/>
                </td>
            </tr>
        </table>
        <br/>
    </xsl:template>
</xsl:stylesheet>


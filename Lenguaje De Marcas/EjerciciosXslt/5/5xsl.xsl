<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/catalog">
        <html>
            <head>
                <title>Discos</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 50%;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: lightgreen;
                    }
                    td {
                        background-color: lightblue;
                    }
                </style>
            </head>
            <body>
                <h2>Discos</h2>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Artista</th>
                        <th>País</th>
                    </tr>
                    <xsl:for-each select="cd[country='USA']">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="artist"/></td>
                            <td><xsl:value-of select="country"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


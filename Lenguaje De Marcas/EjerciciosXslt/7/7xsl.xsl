<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <!-- Plantilla principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Listado de discos País EU posteriores a 1995</title>
        <style>
          table { border-collapse: collapse; width: 100%; }
          th { background-color: red; color: white; }
          th, td { border: 1px solid black; padding: 8px; text-align: left; }
          tr { background-color: green; color: white; }
        </style>
      </head>
      <body>
        <h1>Listado de discos País EU posteriores a 1995</h1>
        <h2>Discos</h2>
        <table>
          <tr>
            <th>Título</th>
            <th>Artista</th>
            <th>Año</th>
            <th>Precio</th>
          </tr>
          <xsl:apply-templates select="catalog/cd[country='EU' and year > 1995]">
            <xsl:sort select="artist" order="ascending" />
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para cada CD -->
  <xsl:template match="cd">
    <tr>
      <td><xsl:value-of select="title" /></td>
      <td><xsl:value-of select="artist" /></td>
      <td><xsl:value-of select="year" /></td>
      <td><xsl:value-of select="price" /></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>








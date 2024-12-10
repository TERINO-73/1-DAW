<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />
  
  <!-- Plantilla principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca</title>
        <style>
          table { border-collapse: collapse; width: 100%; }
          th { background-color: grey; }
          th, td { border: 1px solid black; padding: 8px; text-align: left; }
          .expensive { background-color: red; }
          .affordable { background-color: green; }
          .italic { font-style: italic; }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>
        <table>
          <tr>
            <th>Precio</th>
            <th>Título</th>
            <th>Año de Publicación</th>
          </tr>
          <xsl:apply-templates select="//libro">
            <xsl:sort select="precio" data-type="number" order="ascending" />
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para cada libro -->
  <xsl:template match="libro">
    <tr>
      <td><xsl:value-of select="precio" /></td>
      <td>
        <xsl:attribute name="class">
          <xsl:choose>
            <xsl:when test="precio &gt; 100">expensive</xsl:when>
            <xsl:otherwise>affordable</xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <xsl:value-of select="titulo" />
      </td>
      <td class="italic"><xsl:value-of select="@año" /></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>



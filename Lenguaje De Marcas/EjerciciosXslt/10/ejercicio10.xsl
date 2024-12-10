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
          .expensive { color: red; }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>
        <table>
          <tr>
            <th>Título</th>
            <th>Autores</th>
            <th>Editores</th>
          </tr>
          <xsl:apply-templates select="//libro">
            <xsl:sort select="titulo" order="ascending" />
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para cada libro -->
  <xsl:template match="libro">
    <tr>
      <td>
        <xsl:choose>
          <xsl:when test="precio &gt; 100">
            <span class="expensive"><xsl:value-of select="titulo" /> (Caro)</span>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="titulo" />
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td>
        <xsl:for-each select="autor">
          <xsl:value-of select="nombre" /> <xsl:value-of select="apellido" />
          <xsl:if test="position() != last()">, </xsl:if>
        </xsl:for-each>
      </td>
      <td>
        <xsl:choose>
          <xsl:when test="editor">
            <xsl:for-each select="editor">
              <xsl:value-of select="nombre" /> <xsl:value-of select="apellido" />
              <xsl:if test="afiliacion"> (<xsl:value-of select="afiliacion" />)</xsl:if>
              <xsl:if test="position() != last()">, </xsl:if>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="editorial" />
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>


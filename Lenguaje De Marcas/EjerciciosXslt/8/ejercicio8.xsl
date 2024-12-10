<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <!-- Plantilla principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Catálogo de CDs</title>
        <style>
          table { border-collapse: collapse; width: 100%; }
          th { background-color: orange; color: white; }
          th, td { border: 1px solid black; padding: 8px; text-align: left; }
          tr:nth-child(even) { background-color: #d3d3d3; } /* Gris claro para filas pares */
          tr:nth-child(odd) { background-color: #ffffff; } /* Blanco para filas impares */
          td:nth-child(1) { background-color: #f4a460; } /* Color específico para primera columna (Título) */
          td:nth-child(2) { background-color: #98fb98; } /* Color específico para segunda columna (Artista) */
          td:nth-child(3) { background-color: #ff6347; } /* Color específico para tercera columna (País) */
          td:nth-child(4) { background-color: #ffd700; } /* Color específico para cuarta columna (Precio) */
          td:nth-child(5) { background-color: #9370db; } /* Color específico para quinta columna (Compañía) */
          td:nth-child(6) { background-color: #8a2be2; } /* Color específico para sexta columna (Año) */
        </style>
      </head>
      <body>
        <h1>Listado de discos País UK anteriores a 1990</h1>
        <h2>Discos</h2>
        <table>
          <tr>
            <th>Título</th>
            <th>Artista</th>
            <th>País</th>
            <th>Precio</th>
            <th>Compañía</th>
            <th>Año</th>
          </tr>
          <xsl:apply-templates select="catalog/cd[country='UK' and year &lt; 1990]">
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
      <td><xsl:value-of select="country" /></td>
      <td><xsl:value-of select="price" /></td>
      <td><xsl:value-of select="company" /></td>
      <td><xsl:value-of select="year" /></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>



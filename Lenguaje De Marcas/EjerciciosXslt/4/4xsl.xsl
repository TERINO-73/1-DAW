<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Template for the root element -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Ejercicio 4</title>
        <style type="text/css">
          tr {background-color: #777;}
          th {background-color: #2A2;}
          td {background-color: #A22;}
        </style>
      </head>
      <body>
        <h1>IES Velazquez</h1>
        <h2>Ciclos</h2>
        <table border="1">
          <tr>
            <th>Ciclo</th>
            <th>Nombre</th>
            <th>Turno</th>
          </tr>
          <!-- Applying templates to ciclo elements -->
          <xsl:apply-templates select="//ciclo"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Template for ciclo elements -->
  <xsl:template match="ciclo">
    <tr>
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="horario"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>


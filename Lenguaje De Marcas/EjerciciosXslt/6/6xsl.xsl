<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>CD Catalog</title>
        <style type="text/css">
          tr { background-color: #777; }
          th { background-color: #2A2; }
          td { background-color: #A22; }
        </style>
      </head>
      <body>
        <h1>CD Catalog</h1>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Artist</th>
            <th>Country</th>
            <th>Company</th>
            <th>Price</th>
            <th>Year</th>
          </tr>
          <!-- Filtrar y mostrar solo los CDs anteriores a 1995 -->
          <xsl:for-each select="catalog/cd[year &lt; 1995]">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="artist"/></td>
              <td><xsl:value-of select="country"/></td>
              <td><xsl:value-of select="company"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="year"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>




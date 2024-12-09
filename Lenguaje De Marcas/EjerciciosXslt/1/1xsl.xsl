<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" />

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
        <xsl:apply-templates select="/ies/ciclos/ciclo" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
    <p>
      <xsl:value-of select="nombre"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="horario"/>
    </p>
  </xsl:template>
</xsl:stylesheet>









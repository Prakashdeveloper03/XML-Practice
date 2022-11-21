<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="states.xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>STATES</h2>
  <table border="1">
    <tr bgcolor="green">
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Area</th>
    </tr>
    <xsl:for-each select="details/state">
    <xsl:if test="area &lt; 100000">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="area"/></td>
      </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
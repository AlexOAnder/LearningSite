<?xml version="1.0" encoding="WINDOWS-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<table border="1">
  <tr bgcolor="#CCCCCC">
    <td align="center"><strong>Id</strong></td>
    <td align="center"><strong><a href="#" onClick="orderByName();">Курс</a></strong></td>
    <td align="center"><strong><a href="#" onClick="orderByCost();">Цена</a></strong></td>
    <td align="center"><strong>Описание</strong></td>
  </tr>
  <xsl:for-each select="mainModel/courses/course">
  <xsl:sort order="ascending" select="courseName"/>
  <tr bgcolor="#F5F5F5">
	<td><xsl:value-of select="courseId"/></td>
    <td><xsl:value-of select="courseName"/></td>
    <td align="right"><xsl:value-of select="courseCost"/> <xsl:value-of select="courseCost/@caption"/></td>
    <td><xsl:value-of select="courseDesc"/></td>
  </tr>
  </xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
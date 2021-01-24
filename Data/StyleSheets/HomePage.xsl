<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--Omit the output of the xml declaration in the html code.-->
	<xsl:output omit-xml-declaration="yes" />
	
	<xsl:template match="/Page">
		<div style="color: blue; text-align: center">
			<br />
			<h1>
				<xsl:value-of select="text-block/head" />
			</h1>
			<h3>
				<i>
					<xsl:value-of select="text-block/slogan" />
				</i>
			</h3>
		</div>
		<xsl:for-each select="text-block">
			<div style="color: blue; padding-left: 10px; padding-rigth: 10px; text-align: left">
				<p style="margin-left: 40px; margin-right:40px">
					<xsl:apply-templates select="first-line" />
					<xsl:apply-templates select="content" />
				</p>
        <br />
			</div>
		</xsl:for-each>
<!-- Copyright Notice -->
		<tr>
			<td align="center" colspan="2" style="background-color: yellow">
				<table style="background-color: yellow; color: blue; font-size: 0.8em">
					<!--<tr>
						<td align="center">
							Prices and products are subject to change without prior notice.<br />
							Contact us for the latest information.
						</td>
					</tr>-->
					<tr>
						<td align="center">
							<hr />
							Copyright © 2007 Intensity Glow Products<br />
							All Rights Reserved
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</xsl:template>

	<xsl:template match="content">
		<xsl:apply-templates />
		<!--<xsl:value-of select="." />
		<xsl:apply-templates select="link" />-->
	</xsl:template>
	
	<xsl:template match="first-line">
		<!--Dummy-->
		<!--<xsl:if test="text()">-->
			<span style="font-weight: bold">
				<xsl:value-of select="." />
				<br />
			</span>
		<!--</xsl:if>-->
	</xsl:template>

	<xsl:template match="link">
		<xsl:element name="a">
			<!--<xsl:attribute name="class">
				<xsl:value-of select="attribute::xclass" />
			</xsl:attribute>-->
			<xsl:attribute name="href">
				<xsl:value-of select="attribute::src" />
			</xsl:attribute>
		<xsl:value-of select="." />
	</xsl:element>
	</xsl:template>
  <xsl:template match="xbr">
    <xsl:element name="br" />
  </xsl:template>
</xsl:stylesheet>

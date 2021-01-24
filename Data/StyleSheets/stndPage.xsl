<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--Omit the output of the xml declaration in the html code.-->
	<xsl:output omit-xml-declaration="yes" />
	
<xsl:template match="/Page">
	<div style="color: blue; text-align: center">
		<br />
		<xsl:if test="head != ''">
			<h1>
				<xsl:value-of select="head" />
			</h1>
		</xsl:if>
		<xsl:if test="slogan != ''">
			<h3>
				<i>
					<xsl:value-of select="slogan" />
				</i>
			</h3>
		</xsl:if>
	</div>
	<xsl:for-each select="block">
    <div style="color: blue; padding-left: 10px; padding-rigth: 10px; text-align: left">
      <xsl:apply-templates />
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

  <xsl:template match="text-block">
    <p style="margin-left: 40px; margin-right:40px">
      <xsl:apply-templates />
    </p>
  </xsl:template>
  
	<xsl:template match="content">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="first-line">
		<span style="font-weight: bold">
			<xsl:value-of select="." />
			<br />
		</span>
	</xsl:template>

	<xsl:template match="link">
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="attribute::src" />
			</xsl:attribute>
			<xsl:value-of select="." />
		</xsl:element>
	</xsl:template>

	<xsl:template match="xb">
		<xsl:element name="b">
			<xsl:value-of select="." />
		</xsl:element>
	</xsl:template>

	<xsl:template match="xi">
		<xsl:element name="i">
			<xsl:value-of select="." />
		</xsl:element>
	</xsl:template>

	<xsl:template match="xspan">
		<xsl:element name="span">
			<xsl:attribute name="class">
				<xsl:value-of select="attribute::xclass" />
			</xsl:attribute>
			<xsl:value-of select="." />
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="xbr">
		<xsl:element name="br" />
	</xsl:template>

	<xsl:template match="xhr">
		<xsl:element name="hr" />
	</xsl:template>

	<xsl:template match="email">
		<xsl:element name="a">
			<xsl:attribute name="href">
				mailto:<xsl:value-of select="attribute::data" />
			</xsl:attribute>
			<xsl:value-of select="." />
		</xsl:element>
	</xsl:template>

  <xsl:template match="img">
    <!--<xsl:element name="div">
      <xsl:attribute name="style">
        <xsl:text>filter:progid:DXImageTransform.Microsoft.Alpha(opacity=100); opacity: 1; -moz-opacity: 1;</xsl:text>
      </xsl:attribute>-->
      <xsl:copy-of select="." />
    <!--</xsl:element>-->
  </xsl:template>

</xsl:stylesheet> 


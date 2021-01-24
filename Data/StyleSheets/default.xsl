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
			<h2>
				<xsl:value-of select="text-block/error" />
			</h2>
		</div>
		<xsl:for-each select="text-block">
			<div style="color: blue; padding-left: 10px; padding-rigth: 10px; text-align: left">
				<p style="margin-left: 40px; margin-right:40px">
					<xsl:value-of select="content" />
				</p>
			</div>
		</xsl:for-each>
		<tr>
			<td align="center">
				<div style="background-color: yellow; color: blue; text-size: 0.5em">
					Copyright © 2007 Intensity Glow Products<br />
					All Rights Reserved
				</div>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet> 


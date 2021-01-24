<?xml version="1.0" encoding="utf-8"?>


<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--Omit the output of the xml declaration in the html code.-->
	<xsl:output omit-xml-declaration="yes" />

<xsl:template match="/page">
	<div style="background-color: silver; color: whitesmoke">
		<br />
		<xsl:apply-templates select="page-title" />
		<xsl:apply-templates select="page-head" />
		<table align="center" border="0" borders="" rules="rows" width="660px">
			<thead>
				<tr>
					<th></th>
					<th>Product ID</th>
					<th>Name</th>
					<th align="right">Price 5 units</th>
					<th align="right">Price 1 unit</th>
				</tr>
			</thead>
			<xsl:apply-templates select="Products" />
<!-- Copyright Notice -->
			<tr>
				<td colspan="5">
					<p>
						<br />
					</p>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="5" style="background-color: yellow">
					<table style="background-color: yellow; color: blue; font-size: 0.8em">
						<tr>
							<td align="center">
								Prices and products are subject to change without prior notice.<br />
								Contact us for the latest information.
							</td>
						</tr>
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
		</table>
	</div>
</xsl:template>

	<xsl:template match="page-title">
		<h1 style="color: blue; text-align: center">
			<xsl:value-of select="." />
		</h1>
	</xsl:template>

	<xsl:template match="page-head">
		<h3 style="color: blue; text-align: center">
			<xsl:value-of select="." />
		</h3>
	</xsl:template>

	<xsl:template match="products">
		<xsl:for-each select="category">
			<xsl:apply-templates />
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="category">
		<tr style="color: blue; background-color: MistyRose; text-align: center">
			<td colspan="5" style="font-size: large">
				<xsl:value-of select="attribute::name" />
			</td>
		</tr>
		<tr>
			<td colspan="3"></td>
			<td colspan="2" style="font-size: small; font-weight: bold; text-align: center">
				<xsl:text>Price per </xsl:text>
				<xsl:value-of select="attribute::unit" />
			</td>
		</tr>
		
		<xsl:for-each select="product" >
			<tr valign="top">
				<td valign="top">
					<xsl:if test="@new=&quot;true&quot;">
						<img src="Data/Graphics/newpic.png" align="left" style="height:61px;width:54px;border-width:0px;" />
					</xsl:if>
				</td>
				<td>
					<xsl:value-of select="id" />
				</td>
				<td>
					<b>
						<xsl:value-of select="name" />
					</b>
					<br />
					<xsl:value-of select="description" />
				</td>
				<td valign="top" align="right">
					P<xsl:value-of select="price5" />
				</td>
				<td valign="top" align="right">
					P<xsl:value-of select="price1" />
				</td>
			</tr>
		</xsl:for-each>
		
	</xsl:template>



</xsl:stylesheet> 


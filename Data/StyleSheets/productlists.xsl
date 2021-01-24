<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--Omit the output of the xml declaration in the html code.-->
	<xsl:output omit-xml-declaration="yes" />

	<xsl:template match="/Page">
		<div style="background-color: pink">
			<br />
			<div style="text-align: center; color: blue">
				<xsl:apply-templates select="head" />
				<xsl:apply-templates select="slogan" />
			</div>
			<xsl:apply-templates select="Products" />
		</div>
	</xsl:template>
	
	<xsl:template match="Products">
		
		<table align="center" border="0" borders="" rules="rows" class="tmp">
<!-- Skin Care Sets  -->
			<xsl:if test="child::category[attribute::name=&quot;SkinCareSets&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;SkinCareSets&quot;]/child::product">
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Skin Care Sets</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;SkinCareSets&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Eye Care Products -->
			<xsl:if test="child::category[attribute::name=&quot;EyeCare&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;EyeCare&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Eye Care Products</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;EyeCare&quot;]" />
				</xsl:if>
			</xsl:if>
<!--Armpit Care Products -->
			<xsl:if test="child::category[attribute::name=&quot;ArmpitCare&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;ArmpitCare&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Armpit Care Products</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;ArmpitCare&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Lotions-->
			<xsl:if test="child::category[attribute::name=&quot;Lotions&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;Lotions&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Lotions</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;Lotions&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Toners -->
			<xsl:if test="child::category[attribute::name=&quot;Toners&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;Toners&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Toners</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;Toners&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Soaps -->
			<xsl:if test="child::category[attribute::name=&quot;Soaps&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;Soaps&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Soaps</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;Soaps&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Creams -->
			<xsl:if test="child::category[attribute::name=&quot;Creams&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;Creams&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Creams</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;Creams&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Body Spa Products-->
			<xsl:if test="child::category[attribute::name=&quot;BodySpa&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;BodySpa&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Body Spa Products</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;BodySpa&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Massage Products -->
			<xsl:if test="child::category[attribute::name=&quot;Massage&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;Massage&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Massage Products</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;Massage&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Slimming & Firming Products -->
			<xsl:if test="child::category[attribute::name=&quot;Slimming&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;Slimming&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Slimming &amp; Firming Products</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;Slimming&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Sun Block Products -->
			<xsl:if test="child::category[attribute::name=&quot;SunBlock&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;SunBlock&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Sun-Block Products</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;SunBlock&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Supplements -->
			<xsl:if test="child::category[attribute::name=&quot;Supplements&quot;]">
				<xsl:if test="child::category[attribute::name=&quot;Supplements&quot;]/child::product">
					<tr>
						<td colspan="3">
							<p>
								<br />
							</p>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<h2 style="background: #FFFF66; color: red; text-align: center">Supplements</h2>
						</td>
					</tr>
					<xsl:apply-templates select="category[attribute::name=&quot;Supplements&quot;]" />
				</xsl:if>
			</xsl:if>
<!-- Copyright Notice -->
			<tr>
				<td colspan="3">
					<p>
						<br />
					</p>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="3" style="background-color: yellow">
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
	</xsl:template>

	<xsl:template match="category">
		<xsl:for-each select="product">
			<xsl:sort select="child::price" data-type="number" order="descending" />
			<xsl:if test="child::name !=''">
				<tr>
					<td align="left" valign="top">
						<xsl:if test="@new=&quot;true&quot;">
							<img src="Data/Graphics/newpic.png" align="left" style="height:61px;width:54px;border-width:0px;" />
						</xsl:if>
						<xsl:if test="@new=&quot;false&quot;">
							<img src="Data/Graphics/spacepic.gif" align="left" style="height:61px;width:54px;border-width:0px;" />
						</xsl:if>
					</td>
					<td align="left" valign="top">
						<xsl:apply-templates select="name" />
						<br />
						<xsl:apply-templates select="description" />
					</td>
					<td align="right" valign="top">
						<xsl:apply-templates select="price" />
					</td>
				</tr>
			</xsl:if>
		</xsl:for-each>
		
	</xsl:template>

	<xsl:template match="name">
		<span style="text-align: left; color: blue; font-size: 1em; font-weight: bold">
			<xsl:value-of select="." />
		</span>
	</xsl:template>

	<xsl:template match="description">
		<span style="text-align: left; font-size: 0.8em; color: blue">
			<xsl:apply-templates />
		</span>
	</xsl:template>

	<xsl:template match="price">
		<xsl:if test="text() != ''">
		<span style="font-size: 0.8em; color: blue; font-weight: bold; padding-right: 5px">
			P<xsl:value-of select="." />
		</span>
		</xsl:if>
	</xsl:template>

	<xsl:template match="head">
		<h1>
			<xsl:value-of select="." />
		</h1>
	</xsl:template>

	<xsl:template match="slogan">
		<h3>
			<xsl:value-of select="." />
		</h3>
	</xsl:template>

	<xsl:template match="description/xib">
		<b>
			<i>
				<xsl:value-of select="." />
			</i>
		</b>
	</xsl:template>

	

</xsl:stylesheet> 


<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Order Information:</h1>
				<xsl:apply-templates></xsl:apply-templates>
				<br></br>
				<b>
					Total Number of items in the order
					<xsl:value-of select="count(/Order/Item)"></xsl:value-of>
				</b><br></br>
				<b>
					Total price of the order:
					<xsl:value-of select="sum(/Order/Item/Price)"/>
				</b>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="CustomerName">
		<b>
			Customer Name:
			<xsl:value-of select="/Order/CustomerName"></xsl:value-of>
		</b>

	</xsl:template>
	<xsl:template match="Item">
		<br />
		Order Id:
		<xsl:value-of select="../@id"></xsl:value-of>
		Item Name:
		<xsl:value-of select="translate(./ItemName,'sdufhgowapodsiacnivjcmkx','AFJEOSGHU')"></xsl:value-of>
		<br />
		Price:
		<xsl:value-of select="round(./Price)"></xsl:value-of>
		<xsl:if test="Price &gt; 100">
			(Eligible for free shipping)
		</xsl:if>
		<xsl:if test="Price &lt; 100">
			(should be purchased an item whose price is greater than 100 for free
			shipping )
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Trump Information:</h1>
				<xsl:apply-templates select ="/StudentScores/Student[@id='4']"></xsl:apply-templates>
				<br></br>
				
			</body>
		</html>
	</xsl:template>
	<xsl:template match="College">
		<b>
			College Name:
			<xsl:value-of select="/StudentScores/College"></xsl:value-of>
		</b>

	</xsl:template>
	<xsl:template match="Student">
		<br />
		Name:
		<xsl:value-of select="./FirstName"></xsl:value-of>
		Last Name:
		<xsl:value-of select="./LastName"></xsl:value-of>
		<br />
		Score:
		<xsl:value-of select="./Score"></xsl:value-of>
		
	</xsl:template>
</xsl:stylesheet>
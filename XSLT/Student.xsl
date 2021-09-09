<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>
					Student of :
					<xsl:value-of ></xsl:value-of>
				</h2>
				
				<table border="1">
					<tr>
						<th>FirstName</th>
						<th>LastName</th>
						<th>Score</th>
						
						

					</tr>
					<xsl:for-each select="StudentScores/Student">
					
						<tr>
							<td>
								<xsl:value-of select="FirstName"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="LastName"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="Score"></xsl:value-of>
							</td>
						
						</tr>
					</xsl:for-each>

				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
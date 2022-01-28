<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Category</h1>
		<table border="1" align="center">
		<tr>
		<th>Name</th>
		<th>Price</th>
		<th>Quantity</th>
		</tr>
		<xsl:for-each select="Automania/Category">
		<xsl:sort select="Name"></xsl:sort>
		<xsl:if test="Quantity &gt; 25">
		<tr>
		<td>
		<xsl:value-of select="Name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Price"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Quantity"></xsl:value-of>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		
		<h1 style="text-align:center">Category Car</h1>
		<table border="2" align="center" >
			<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			</tr>
			<xsl:for-each select="Automania/Category">
			<xsl:sort select="Name"></xsl:sort>
			<xsl:if test="Quantity &gt; 25">
			<tr>
			<td>
			<xsl:value-of select="Name"></xsl:value-of>
			</td>
			<td style="color:green">
			<xsl:value-of select="Price"></xsl:value-of>
			</td>
			<td>
			<xsl:value-of select="Quantity"></xsl:value-of>
			</td>
			</tr>
			</xsl:if>
			</xsl:for-each>
			</table>

			<h1 style="text-align:center">Customer</h1>
			<table border="3" align="center" >
				<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				</tr>
				<xsl:for-each select="Automania/Customer">
				<xsl:sort select="Id"></xsl:sort>
				<tr>
				<td>
				<xsl:value-of select="Id"></xsl:value-of>
				</td>
				<td>
				<xsl:value-of select="C_Name"></xsl:value-of>
				</td>
				<td>
				<xsl:value-of select="Phone"></xsl:value-of>
				</td>
				<td>
				<xsl:value-of select="Emailid"></xsl:value-of>
				</td>
				</tr>
				</xsl:for-each>
				</table>

				
	
				<h1 style="text-align:Left">Supplier</h1>
				<table border="4" align="center" >
					<tr>
					<th>Supplier</th>
					<th>Warehouse_id</th>
					<th>Item_Type</th>
					<th>Contract_Expiry</th>
					<th>Unit_in_transit</th>
					</tr>
					<xsl:for-each select="Automania/Inventory">
					<xsl:sort select="S_Name"></xsl:sort>
					<xsl:choose>
					<xsl:when test="contract_exp &lt; 2025-01-01">
					<td bgcolor="red">
					<xsl:value-of select="S_Name"/></td>
					</xsl:when>
					<xsl:otherwise>
					<td><xsl:value-of select="S_Name"/></td>
					</xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
					<xsl:when test="contract_exp &gt; 2025-01-01">
					<td bgcolor="green">
					<xsl:value-of select="S_Name"/></td>
					</xsl:when>
					<xsl:otherwise>
					<td><xsl:value-of select="S_Name"/></td>
					</xsl:otherwise>
					</xsl:choose>
					<tr>
					<td>
					<xsl:value-of select="S_Name"></xsl:value-of>
					</td>
					<td>
					<xsl:value-of select="Item_type"></xsl:value-of>
					</td>
					<td>
					<xsl:value-of select="Contract_exp"></xsl:value-of>
					</td>
					<td>
					<xsl:value-of select="Unit_in_transit"></xsl:value-of>
					</td>
					</tr>
					</xsl:for-each>
					</table>

		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
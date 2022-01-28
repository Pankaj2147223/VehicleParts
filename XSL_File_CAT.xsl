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
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="2" align="center">
		<tr>
		<th>NAME</th>
		<th>AGE</th>
        <th>SALARY</th>
        <th>EMAIL</th>
        <th>MobNum</th>
        <th>Designation</th>
        <th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<xsl:sort select="Emp-Name"></xsl:sort>
		<xsl:if test="Emp-salary &gt; 50000 ">
		<tr>
		<td>
		    <xsl:value-of select="Emp-name"></xsl:value-of>
		    </td>
		<td>
		    <xsl:value-of select="Emp-age"></xsl:value-of>
		    </td>
		<td>
		    <xsl:value-of select="Emp-salary"></xsl:value-of>
		    </td>
        <td>
            <xsl:value-of select="Emp-emailid"></xsl:value-of>
            </td>
        <td>
            <xsl:value-of select="Emp-phonenum"></xsl:value-of>
            </td>
        <td>
            <xsl:value-of select="Emp-designation"></xsl:value-of>
            </td>
		</tr>
        </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="Company/Employee">
            <xsl:if test="Emp-age &gt; 49 ">
           
            </xsl:if>
        </xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
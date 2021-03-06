﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" omit-xml-declaration="yes" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"/>
<xsl:include href="header.xsl"/>
<xsl:include href="footer.xsl"/>
<xsl:include href="image.xsl"/>
<xsl:template match="diapositive">
	<xsl:call-template name="header"></xsl:call-template>	
	<html>
	<body id="body">
	<div id="container">		
		<div id="content">
			<h1>Fantastic Estate Agency</h1>	
			<div id="title">
				<span id="name"><xsl:value-of select="name/@value"/></span>
				<span id="price"><xsl:value-of select="price/@value"/></span>
			</div>
			<div id="main">
				<xsl:apply-templates select="image"/>
				<div id="description">
					<p>Ref: <xsl:value-of select="ref/@value"/></p>
					<p><xsl:value-of select="rooms/@value"/> room(s)</p>
					<p><xsl:value-of select="description/@value"/></p>
				</div>
			</div> 
			<div id="contact">Contact: <xsl:value-of select="contact/@value"/></div>
		</div>
	</div>
	<xsl:call-template name="footer"></xsl:call-template>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>



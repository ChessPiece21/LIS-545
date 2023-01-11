<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Songs of Innocence</title>
            </head>
            <body>
                <xsl:apply-templates select="text/body/div1"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="div1">
        <h1>
            <xsl:value-of select="head"/>
        </h1>
        <xsl:apply-templates select="pb | div2"/>
    </xsl:template>

    <xsl:template match="pb">
        <p>Page <xsl:value-of select="@n"/> </p>
    </xsl:template>

    <xsl:template match="div2">
        <h2>
            <xsl:value-of select="head"/>
        </h2>
        <xsl:apply-templates select="lg"/>
    </xsl:template>

    <xsl:template match="lg">
        <xsl:apply-templates select="l"/>
    </xsl:template>

    <xsl:template match="l">
        <xsl:value-of select="."/><br/>
    </xsl:template>
</xsl:stylesheet>

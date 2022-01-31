<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"
            indent="yes"
            version="1.0"
            encoding="iso-8859-1"
            doctype-public=""
            doctype-system=""/>
    <!--les liens vers les fichiers XSL-->
    <xsl:include href="index.xsl"/>
    <xsl:include href="liste-unites.xsl"/>
    <xsl:include href="liste_intervenants.xsl"/>

    <xsl:template match="/">
        <html>
            <body>
                <xsl:call-template name="index"/>
                <xsl:call-template name="liste-unites">
                <xsl:call-template name="liste-intervenants">
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
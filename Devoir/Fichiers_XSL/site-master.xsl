<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"
            indent="yes"
            encoding="UTF-8"
            doctype-system="about:legacy-compat"
            />
    <!--les liens vers les fichiers XSL-->
    <xsl:include href="index.xsl"/>
    <xsl:include href="parcours.xsl"/>
    <xsl:include href="unites.xsl"/>
    <xsl:include href="liste-unites.xsl"/>
    <xsl:include href="intervenants.xsl"/>
    <xsl:include href="liste-intervenants.xsl"/>
    
   
    
    <xsl:template match="/">
   
            <xsl:call-template name="index"/>
            <xsl:call-template name="parcours"/>
            <xsl:call-template name="unites"/>
            <xsl:call-template name="liste-unites"/>   
            <xsl:call-template name="intervenants"/>    
            <xsl:call-template name="liste-intervenants"/>
            
        
    </xsl:template>
</xsl:stylesheet>
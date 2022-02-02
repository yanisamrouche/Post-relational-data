<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="unites">
            <!--une variable qui permet de recuperer touts les ids des unites-->
            <xsl:variable name="unites_ids" select="//unite/@id"/>
            <xsl:variable name="liste-unites" select="//unite"/>
            <!--production des fichiers XHTML pour chaque UE-->
            <xsl:for-each select="$liste-unites">
                <xsl:variable name="nom-unite" select="nom"/>
                <xsl:variable name="id-unite" select="@id"/>
                <xsl:document href="{id-unite}.html">
                    <html>
                        <head>
                            <title>unite</title>
                        </head>

                        <body>
                            <h2> <xsl:value-of select="nom"/>  </h2>
                        </body>
                    </html>
                </xsl:document>
            </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>
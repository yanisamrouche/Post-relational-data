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
                        <a href="index.html"> parcours </a> 
                        <xsl:for-each select="//parcours">
                            <a href="{@code}.html">
                                <xsl:value-of select="@code"/>
                            </a>
                        </xsl:for-each>
                        <a href="liste-unites.html"> les unites</a>
                        <a href="liste-intervenants.html"> les intervenants</a>
                            <h2> <xsl:value-of select="nom"/>  </h2>
                        </body>
                    </html>
                </xsl:document>
            </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>
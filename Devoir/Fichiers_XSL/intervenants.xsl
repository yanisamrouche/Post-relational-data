<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="intervenant">
            <!--une variable qui permet de recuperer touts les ids des intervenants-->
            <xsl:variable name="intervenants_ids" select="//intervenant/@id"/>
            <xsl:variable name="liste-intervenants" select="//intervenant"/>
            <!--production des fichiers XHTML pour chaque UE-->
            <xsl:for-each select="//intervenant">
                <xsl:variable name="nom-intervenant" select="nom"/>
                <xsl:variable name="id-intervenant" select="@id"/>
                <xsl:document href="{id-intervenant}.html">
                    <head>
                        <title> <xsl:text>Fiche de : </xsl:text><xsl:value-of select="string(nom)"/> </title>
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
                        
                        <h2> <xsl:text>Fiche de : </xsl:text> <xsl:value-of select="nom"/>  </h2>
                        <!--INFO-->
                    </body>

                </xsl:document>
            </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
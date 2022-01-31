<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="intervenant">
            <!--une variable qui permet de recuperer touts les ids des intervenants-->
            <xsl:variable name="intervenants_ids" select="//intervenant/@id"/>
            <xsl:variable name="liste-intervenants" select="//intervenant"/>
            <!--production des fichiers XHTML pour chaque UE-->
            <xsl:for-each select="$liste-intervenants">
                <xsl:variable name="nom-intervenant" select="nom"/>
                <xsl:variable name="id-intervenant" select="@id"/>
                <xsl:document href="{id-intervenant}.html">
                    <head>
                        <title>intervenant</title>
                    </head>

                    <body>
                        <h2> <xsl:value-of select="nom"/>  </h2>
                    </body>

                </xsl:document>
            </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
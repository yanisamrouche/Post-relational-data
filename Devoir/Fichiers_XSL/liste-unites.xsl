<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="liste-unites">
        <xsl:document href="unites.html">
            <html>
                <head>
                </head>

                <body>
                    <h1>Les unités d'enseignements</h1>
                    <ul>
                    <xsl:for-each select="//unite">                       
                    <!--<xsl:apply-templates/> -->                       
                            <li> <a href="{attribute::id}.html"> <xsl:value-of select="string(nom)"/></a></li>                                
                    </xsl:for-each>  
                    </ul>

                    <h2>Les intervenants</h2>
                    <ul>
                    <xsl:for-each select="//intervenant">                       
                    <!--<xsl:apply-templates/> -->                       
                            <li> <a href="{attribute::id}.html"> <xsl:value-of select="string(nom)"/></a></li>                                
                    </xsl:for-each>  
                    </ul>

                </body>

            </html>
        </xsl:document>
    </xsl:template>

</xsl:stylesheet>
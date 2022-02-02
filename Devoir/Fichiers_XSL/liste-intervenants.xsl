<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="liste-intervenants">
        <xsl:document href="intervenants.html">
            <html>

                <head>
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
                    <h1>Les intervenants</h1>
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
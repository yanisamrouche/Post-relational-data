<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="liste-intervenants">
        <xsl:result-document href="../www/intervenants/liste-intervenants.html">
            <html>

                <head>
                    <title> <xsl:text> Les intervenants du Master Informatique </xsl:text> </title>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />                    
                    <!--CSS-->
                </head>

                <body>

                    <div class="main">
                
                        <!--MENU-->
                        <div class="menu">
                            <a href="../index.html"> Parcours </a>
                            <xsl:for-each select="//parcours">
                                <a href="../parcours/{@code}.html">
                                    <xsl:value-of select="@code"/>
                                </a>
                            </xsl:for-each>
                            <a  href="../unites/liste-unites.html">Les unites</a>
                            <a  href="liste-intervenants.html">Les intervenants</a> 
                        </div>

                        <div>
                
                            <h1>Les intervenants du Master Informatique</h1>
                            <ul>
                                <xsl:for-each select="//intervenant">                       
                                <!--<xsl:apply-templates/> -->                      
                                        <li> <a href="{attribute::id}.html"> <xsl:value-of select="string(nom)"/></a></li> 
                                        <li> <a target="_blank" href="mailto:{adresse/mail}"> <xsl:value-of select="adresse/mail"/></a></li> 
                                        <li> <a target="_blank" href="{adresse/site-web}"> <xsl:value-of select="adresse/site-web"/></a></li> 
                                </xsl:for-each>
                            </ul> 
                        </div>
                    </div>  

                </body>

            </html>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
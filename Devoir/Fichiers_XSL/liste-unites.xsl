<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="liste-unites">
        <xsl:result-document href="./www/unites/liste-unites.html">
            <html>
                <head>
                    <title> <xsl:text> Les unités d'enseignements </xsl:text>  </title>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
                    <link rel="stylesheet" type="text/css" href="../../assets/css/style.css" media="screen" />
                  
                </head>

                <body>

                    <div class="main">
                                <img src="../../assets/image/amu.jpg" alt=""/>

                        <!--MENU-->
                        <div class="menu">
                            <div class="menu-gauche">
                            <a href="../index.html"> parcours </a> 
                                <xsl:for-each select="//parcours">
                                    <a href="../parcours/{@code}.html">
                                        <xsl:value-of select="@code"/>
                                    </a>
                                </xsl:for-each>
                            </div>
                            <div class="menu-droite">
                            <a href="liste-unites.html"> les unites</a>
                            <a href="../intervenants/liste-intervenants.html"> les intervenants</a>
                            </div>
                        </div>
                        
                        <div>
                            <h1><xsl:text>Les unités d'enseignements</xsl:text></h1>
                            <ul>
                            <xsl:for-each select="//unite">                                            
                                    <li> <a href="{attribute::id}.html"> <xsl:value-of select="string(nom)"/></a></li>                                
                            </xsl:for-each>  
                            </ul>
                        
                        </div>
                    </div>
                </body>

            </html>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
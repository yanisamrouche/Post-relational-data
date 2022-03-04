<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="intervenants">
           <!--production des fichiers XHTML pour chaque UE-->
            <xsl:for-each select="//intervenant">
                <xsl:result-document href="./www/intervenants/{@id}.html">
                    <html>
                        <head>
                            <title> <xsl:text>Fiche de : </xsl:text><xsl:value-of select="string(nom)"/> </title>
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                            <!--CSS-->
                            <link rel="stylesheet" type="text/css" href="../../assets/css/style.css" media="screen" />

                        </head>

                        <body>
                            <div class="main">
                                <img src="../../assets/image/amu.jpg" alt=""/>

                                <!--MENU-->
                                <div class="menu">
                                    <div class="menu-gauche">
                                    <a href="../index.html"> Parcours </a>
                                    <xsl:for-each select="//parcours">
                                        <a href="../parcours/{@code}.html">
                                            <xsl:value-of select="@code"/>
                                        </a>
                                    </xsl:for-each>
                                    </div>
                                    <div class="menu-droite">
                                    <a  href="../unites/liste-unites.html">Les unites</a>
                                    <a  href="liste-intervenants.html">Les intervenants</a> 
                                    </div>
                                </div>

                                <div>
                                    <h1>
                                        <xsl:text>Fiche de : </xsl:text><xsl:value-of select="./nom"/>
                                    </h1>
                                    <p>
                                        <xsl:text>E-mail : </xsl:text>
                                        <a target="_blank" href="mailto:{adresse/mail}"> <xsl:value-of select="adresse/mail" /> </a>
                                    </p>
                                    <p>
                                     <xsl:text>Site web : </xsl:text>
                                        <a target="_blank" href="{adresse/site-web}"> <xsl:value-of select="adresse/site-web" /> </a>
                                    </p>
                                </div>
                            </div>
                        
                        </body>
                    </html>
                </xsl:result-document>
            </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
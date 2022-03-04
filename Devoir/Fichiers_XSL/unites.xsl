<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:preserve-space elements="nom"/>
	<xsl:key name="item-by-value" match="unite" use="."/>
    <xsl:template name="unites">
            <!--une variable qui permet de recuperer touts les ids des unites-->
            <xsl:variable name="unites_ids" select="//unite/@id"/>
            <xsl:variable name="liste-unites" select="//unite"/>
            <xsl:variable name="parcours" select="//parcours"/>
		    <xsl:variable name="semestres" select="//semestre"/>
            <!--production des fichiers XHTML pour chaque UE-->
            <xsl:for-each select="$unites_ids">
                <xsl:variable name="unite" select="$liste-unites[@id=current()[1]]"/>
                <xsl:variable name="id-unite" select="current()[1]"/>
                <xsl:result-document href="./www/unites/{current()[1]}.html">
                    <html>
                        <head>
                            <title><xsl:value-of select="distinct-values($unite/nom)"/></title>
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
                                        <xsl:for-each select="$parcours">
                                            <a href="../parcours/{@code}.html">
                                                <xsl:value-of select="@code"/>
                                            </a>
                                        </xsl:for-each>
                                    </div>
                                    <div class="menu-droite">
                                        <a href="liste-unites.html"> Les unites</a>
                                        <a href="../intervenants/liste-intervenants.html"> Les intervenants</a>
                                    </div>

                                </div>
                                <div class="unite-page">
                                    <h1> <xsl:text> Unité d'enseignement :  </xsl:text> 
                                         <xsl:value-of select="$unite/nom"/>  
                                    </h1>
                                    <h2> <xsl:text> Description </xsl:text> </h2>
                                    <h4> <xsl:text> Resume </xsl:text> </h4>
                                    <xsl:choose>
                                        <xsl:when test="distinct-values($unite/resume/texte)!=''">
                                            <xsl:for-each-group select="$unite/resume/texte" group-adjacent="boolean(self::p)">
                                                <xsl:copy-of select="current-group()[1]"/>
                                            </xsl:for-each-group>                                        
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>nous n'avons pas de résumé pour cette ue.</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <h4> <xsl:text> Plan </xsl:text> </h4>
                                    <xsl:choose>
                                    <xsl:when test="distinct-values($unite/plan/texte)!=''">
										<xsl:for-each-group select="$liste-unites/plan/texte" group-adjacent="boolean(self::ul)">
											<xsl:copy-of select="current-group()[1]"/>
										</xsl:for-each-group>                                        
                                    </xsl:when>
                                      <xsl:otherwise>
                                            <xsl:text>...</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:text> Semestre : </xsl:text> <xsl:value-of select="$semestres/descendant::unite[@id=$id-unite]/../../@id"/>
                                    <xsl:text> Crédits : </xsl:text> <xsl:value-of select="$unite/nombre-credits"/> <br/>

                                </div>

                            </div>
                        </body>
                    </html>
                </xsl:result-document>
            </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template name="parcours">

    <xsl:for-each select="//parcours">
        <xsl:variable name="code_parcours" select="//parcours/@code" />
        <xsl:document href="{code_parcours}.html">
            <html>
                <head>
                    <title> <xsl:text> AMU : Parcours</xsl:text> <xsl:value-of select="string(nom)"/> </title>
                
                </head>

                <body>
                    <h1>  <xsl:value-of select="./nom"/>  </h1>
                    <h2> <xsl:text> Responsable(s) : </xsl:text> </h2>
                    <xsl:variable name="id_responsable" select="responsable/@ref"/>
                    <xsl:for-each select="//intervenant[@id=$id_responsable]">
                        <ul>
                            <li>
                                <a href="{@id}.html"><xsl:value-of select="nom"/></a>
                            </li>
                        </ul>
                    </xsl:for-each>
                    <h2> <xsl:text> Lieu d'enseignements : </xsl:text></h2>
                    <ul>
                        <xsl:for-each select="lieu">
                            <li>
                                <xsl:text> Campus de </xsl:text> <xsl:value-of select="."/>
                            </li>

                        </xsl:for-each>
                    </ul>
                    <p>
                        <h2> <xsl:text> description </xsl:text> </h2>
                        <xsl:apply-templates select="description/texte"/>
                    </p>

                    <h2> <xsl:text> Enseignements : </xsl:text> </h2>
                    <xsl:for-each select="./semestre">
                        <h3><xsl:text>semestre : </xsl:text> <xsl:value-of select="@id"></h3>
                        <ul>
                            <li> Unités obligatoires : 
                                <ul>
                                    <xsl:for-each select="ue-obligatoires/unite">
                                        <li>
                                            <a href="{@id}.html">                                           
                                                    <xsl:value-of select="nom"/> <xsl:text>(</xsl:text><xsl:value-of select="credits"/> <xsl:text>credits)</xsl:text>
                                            </a>
                                        </li>
                                    <xsl:for-each>
        
                                </ul>
                            </li>
                            <xsl:for-each select="./ue-optionnelles">
                                <li>
                                    <xsl:value-of select="@credits-options"/><xsl:text> crédits à choisir </xsl:text>
                                    <ul>
                                        <xsl:for-each select="unite">
                                            <li>
                                                <a href="{@id}.html">
                                                    <xsl:value-of select="nom"/>
                                                    <xsl:text>(</xsl:text><xsl:value-of select="credits"/> <xsl:text>credits)</xsl:text>

                                                </a>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </xsl:for-each>
                    <h2><xsl:text> Liste débouchés </xsl:text></h2>
                    <p><xsl:apply-templates select="./liste-debouches/texte" /></p>

                </body>
            </html>

        </xsl:document>


    </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>
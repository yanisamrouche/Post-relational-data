<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template name="index">
        <xsl:result-document href="./www/index.html">
            <!--point d'entrée du site-->
            <html>
            	<xsl:attribute name="xml:lang">en</xsl:attribute>
				<xsl:attribute name="lang">en</xsl:attribute>
                <head>
                    <title> <xsl:text> Site Master AMU </xsl:text>   </title>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    <!-- ajout feuille de style ICI ! -->
                    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" media="screen" />
                </head>
                <body>
                    <div class="page-accueil">
                                <img src="../assets/image/amu.jpg" alt=""/>
                        <!--MENU-->

                        <div class="menu">
                            <div class="menu-gauche">
                                <a href="index.html"> Parcours </a>
                                <xsl:for-each select="//parcours">
                                    <a href="parcours/{@code}.html">
                                        <xsl:value-of select="@code"/>
                                    </a>
                                </xsl:for-each>
                            </div>
                            <div class="menu-droite">
                            <a  href="unites/liste-unites.html">Les unites</a>
							<a  href="intervenants/liste-intervenants.html">Les intervenants</a>
                            </div>
                        </div>
                        <!--PRESENTATION DU MASTER-->
                        <div class="presentation-master">
                            <h1> <xsl:text> Master Informatique de Marseille </xsl:text></h1>
                            <h2> <xsl:text> Présentation du Master Informatique </xsl:text></h2>
                            <h4> <xsl:text> Nouveautés </xsl:text> </h4>
                            <p>
                                En 2021/2022, deux nouveaux parcours sont créés (alternance possible à partir de la deuxième année), <br/>
                                pour mieux répondre aux attentes sociétales de compétences en informatique.
                            </p>
                            <h4> <xsl:text> Responsables </xsl:text> </h4>
                            <ul>
                                <li>
                                    Remi MORIN
                                </li>
                                <li>
                                    Cecile CAPPONI
                                </li>
                            </ul>
                            <h4> <xsl:text> Objectifs </xsl:text> </h4>
                            <p>
                                Le master Informatique a pour vocation la formation de professionnels de l'informatique au niveau bac+5.<br/>
                                L'objectif est d'offrir aux étudiants un large spectre de compétences et de savoirs afin de rendre accessibles des emplois de haut niveau <br/>
                                dans le monde de l'entreprise, ainsi que dans celui de la recherche, ou dans d'autres organisations. <br/>
                                La mention informatique offre une palette de six parcours adaptés à plusieurs secteurs de l'informatique. <br/>
                                Les diplômés auront donc accès à une grande diversité de métiers et de carrières.
                            </p>
                            <br/>
                            <h4> <xsl:text> Public visé </xsl:text> </h4>
                            <p>
                                Le master s'adresse à des étudiants ayant une licence générale en informatique (ou équivalent).<br/>
                                Selon les parcours, les étudiants titulaires d'une licence informatique-mathématiques, voire d'une licence de matdématiques sont également en mesure de suivre la formation.

                            </p>
                            <h4> <xsl:text> Conditions d'admission </xsl:text> </h4>
                            <a href="https://sciences.univ-amu.fr/fr/departements/informatique-interactions">https://sciences.univ-amu.fr/fr/departements/informatique-interactions</a>
                            
                            <h4> Prérequis obligatoires </h4>
                            <p>Compétences acquises sur les fondements en informatique lors d'une licence d'informatique, ou de mathématique-informatique.</p>
                            
                            <h4> <xsl:text> Structure et organisation </xsl:text> </h4>
                            <p>
                                La formation est organisée autour d’une spécialisation progressive des étudiants. <br/>
                                Le premier semestre est structuré autour d’un tronc-commun de 30 crédits constitué à la fois d’enseignements disciplinaires fondamentaux mais également d’enseignements transverses.
                            </p>
                            <p>
                                Le reste du M1 est constitué d’un projet de mise en application (éventuellement sous la forme d’un stage), <br/>
                                d’une option de découverte permettant de se familiariser avec les spécialisations proposées en M2,<br/> 
                                et de plusieurs options de préfiguration qui sont des prérequis pour la poursuite dans certains M2.
                            </p>
                            <p>
                                En deuxième année, les enseignements constituent une bonne partie du semestre 3. Ils comprennent des UE disciplinaires <br/> 
                                de spécialisation (pour un total de 24 crédits) et des UE transverses de pré-professionnalisation (mutualisées avec d’autres mentions de Master). <br/>
                                Le semestre se termine par un projet de mise en application. Le semestre 4 est réservé à un stage de cinq à six mois en entreprise ou en laboratoire.
                            </p>


                        </div>

                        <div class="parcours">
                            <h4> <xsl:text> Régimes d'inscription </xsl:text> </h4>
                            
                                <table>

                                    <tr> <th> Détails des Années ou parcours </th> <th> FI </th> <th> FC </th> <th> FAL </th> <th> FAP </th> <th> CP </th> </tr>
                                    <tr> <td> Parcours : Fiabilité et sécurité informatique (FSI) </td> <td> OUI </td> <td>OUI </td> <td>NON </td> <td>NON </td> <td>NON </td> </tr>
                                    <tr> <td> Parcours : Intelligence artificielle et apprentissage automatique (IAAA) 	</td> <td>OUI </td> <td>OUI </td> <td>NON </td> <td>NON </td> <td>NON </td> </tr>
                                    <tr> <td> Parcours : Informatique et mathématiques discrètes (IMD) </td> <td> OUI </td> <td> OUI </td> <td> NON</td> <td> NON</td> <td>NON </td> </tr>
                                    <tr> <td> Parcours : Géométrie et informatique graphique (GIG) </td> <td> OUI </td> <td> OUI </td> <td> NON</td> <td> NON</td> <td> NON</td> </tr>
                                    <tr> <td> Parcours : Ingénierie du développement logiciel (IDL) </td> <td> OUI</td> <td>OUI </td> <td> OUI</td> <td> OUI</td> <td> OUI</td> </tr>
                                    <tr> <td> Parcours : Science et ingénierie des données (SID) </td> <td>OUI </td> <td> NON</td> <td>OUI </td> <td> NON</td> <td> NON</td> </tr>

                                </table>
                            
                        </div>

                    </div>


                </body>
                 
            </html>

        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
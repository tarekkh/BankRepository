<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xml" version="2.0"
  xmlns:cc="http://creativecommons.org/ns#"
  xmlns:crm="http://www.cidoc-crm.org/rdfs/cidoc_crm_v5.0.2_english_label.rdfs#"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:dcterms="http://purl.org/dc/terms/"
  xmlns:ebucore="http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#"
  xmlns:edm="http://www.europeana.eu/schemas/edm/"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:odrl="http://www.w3.org/ns/odrl/2/"
  xmlns:ore="http://www.openarchives.org/ore/terms/"
  xmlns:owl="http://www.w3.org/2002/07/owl#"
  xmlns:rdaGr2="http://rdvocab.info/ElementsGr2/"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
  xmlns:skos="http://www.w3.org/2004/02/skos/core#"
  xmlns:svcs="http://rdfs.org/sioc/services#"
  xmlns:wdrs="http://www.w3.org/2007/05/powder-s#"
  xmlns:wgs84="http://www.w3.org/2003/01/geo/wgs84_pos#"
  xmlns:xalan="http://xml.apache.org/xalan"
  xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="no"/>
  <xsl:variable name="var0">
    <item>TEXT</item>
    <item>VIDEO</item>
    <item>IMAGE</item>
    <item>SOUND</item>
    <item>3D</item>
  </xsl:variable>
<!--  <xsl:template match="/">
    <xsl:apply-templates select="/repoxWrap"/>
  </xsl:template>
  <xsl:template match="/repoxWrap">-->
    <!-- rdf:RDF, id: 0 -->
    <rdf:RDF>
      <!-- Check for mandatory elements on edm:ProvidedCHO -->
      <xsl:if test="rdf:RDF/edm:ProvidedCHO/@rdf:about">
        <!-- edm:ProvidedCHO, id: 1 -->
        <xsl:for-each select="rdf:RDF/edm:ProvidedCHO">
          <edm:ProvidedCHO>
            <xsl:if test="@rdf:about">
              <xsl:attribute name="rdf:about">
                <xsl:for-each select="@rdf:about">
                  <xsl:if test="position() = 1">
                    <xsl:value-of select="."/>
                  </xsl:if>
                </xsl:for-each>
              </xsl:attribute>
            </xsl:if>
            <!-- dc:creator, id: 9 -->
            <xsl:for-each select="dc:creator">
              <dc:creator>
                <xsl:if test="@xml:lang">
                  <xsl:attribute name="xml:lang">
                    <xsl:for-each select="@xml:lang">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="."/>
              </dc:creator>
            </xsl:for-each>
            <!-- dc:description, id: 15 -->
            <xsl:for-each select="dc:description">
              <dc:description>
                <xsl:if test="@xml:lang">
                  <xsl:attribute name="xml:lang">
                    <xsl:for-each select="@xml:lang">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="."/>
              </dc:description>
            </xsl:for-each>
            <!-- dc:format, id: 18 -->
            <xsl:for-each select="dc:format">
              <dc:format>
                <xsl:if test="@xml:lang">
                  <xsl:attribute name="xml:lang">
                    <xsl:for-each select="@xml:lang">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="@rdf:resource">
                  <xsl:attribute name="rdf:resource">
                    <xsl:for-each select="@rdf:resource">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="."/>
              </dc:format>
            </xsl:for-each>
            <!-- dc:identifier, id: 21 -->
            <xsl:for-each select="dc:identifier">
              <dc:identifier>
                <xsl:value-of select="."/>
              </dc:identifier>
            </xsl:for-each>
            <!-- dc:rights, id: 31 -->
            <xsl:for-each select="dc:rights">
              <dc:rights>
                <xsl:value-of select="."/>
              </dc:rights>
            </xsl:for-each>
            <!-- dc:subject, id: 37 -->
            <xsl:for-each select="dc:subject">
              <dc:subject>
                <xsl:if test="@xml:lang">
                  <xsl:attribute name="xml:lang">
                    <xsl:for-each select="@xml:lang">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="@rdf:resource">
                  <xsl:attribute name="rdf:resource">
                    <xsl:for-each select="@rdf:resource">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="."/>
              </dc:subject>
            </xsl:for-each>
            <!-- dc:title, id: 40 -->
            <xsl:for-each select="dc:title">
              <dc:title>
                <xsl:if test="@xml:lang">
                  <xsl:attribute name="xml:lang">
                    <xsl:for-each select="@xml:lang">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="."/>
              </dc:title>
            </xsl:for-each>
            <!-- dc:type, id: 42 -->
            <xsl:for-each select="dc:type">
              <dc:type>
                <xsl:if test="@xml:lang">
                  <xsl:attribute name="xml:lang">
                    <xsl:for-each select="@xml:lang">
                      <xsl:if test="position() = 1">
                        <xsl:value-of select="."/>
                      </xsl:if>
                    </xsl:for-each>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="."/>
              </dc:type>
            </xsl:for-each>
            <!-- dcterms:created, id: 50 -->
            <xsl:for-each select="dcterms:created">
              <dcterms:created>
                <xsl:value-of select="."/>
              </dcterms:created>
            </xsl:for-each>
            <!-- dcterms:extent, id: 53 -->
            <xsl:for-each select="dcterms:extent">
              <dcterms:extent>
                <xsl:value-of select="."/>
              </dcterms:extent>
            </xsl:for-each>
            <!-- Check for mandatory elements on edm:type -->
            <xsl:if test="edm:type">
              <!-- edm:type, id: 134 -->
              <xsl:if test="(dc:creator = 'desconegut')">
                <xsl:for-each select="edm:type[(../dc:creator = 'desconegut')]">
                  <xsl:if test="position() = 1">
                    <xsl:if test="index-of($var0/item, replace(.,'^\s*(.+?)\s*$', '$1')) > 0">
                      <edm:type>
                        <xsl:value-of select="."/>
                      </edm:type>
                    </xsl:if>
                  </xsl:if>
                </xsl:for-each>
              </xsl:if>
            </xsl:if>
          </edm:ProvidedCHO>
        </xsl:for-each>
      </xsl:if>
      <!-- Check for mandatory elements on ore:Aggregation -->
      <xsl:if test="rdf:RDF/ore:Aggregation/@rdf:about">
        <!-- ore:Aggregation, id: 339 -->
        <xsl:for-each select="rdf:RDF/ore:Aggregation">
          <ore:Aggregation>
            <xsl:if test="@rdf:about">
              <xsl:attribute name="rdf:about">
                <xsl:for-each select="@rdf:about">
                  <xsl:if test="position() = 1">
                    <xsl:value-of select="."/>
                  </xsl:if>
                </xsl:for-each>
              </xsl:attribute>
            </xsl:if>
            <!-- Check for mandatory elements on edm:aggregatedCHO -->
            <xsl:if test="edm:aggregatedCHO and edm:aggregatedCHO/@rdf:resource">
              <!-- edm:aggregatedCHO, id: 341 -->
              <xsl:for-each select="edm:aggregatedCHO">
                <xsl:if test="position() = 1">
                  <edm:aggregatedCHO>
                    <xsl:if test="@rdf:resource">
                      <xsl:attribute name="rdf:resource">
                        <xsl:for-each select="@rdf:resource">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="."/>
                          </xsl:if>
                        </xsl:for-each>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </edm:aggregatedCHO>
                </xsl:if>
              </xsl:for-each>
            </xsl:if>
            <!-- edm:dataProvider, id: 343 -->
            <xsl:for-each select="edm:dataProvider">
              <xsl:if test="position() = 1">
                <edm:dataProvider>
                  <xsl:value-of select="."/>
                </edm:dataProvider>
              </xsl:if>
            </xsl:for-each>
            <!-- Check for mandatory elements on edm:isShownAt -->
            <xsl:if test="edm:isShownAt/@rdf:resource">
              <!-- edm:isShownAt, id: 348 -->
              <xsl:for-each select="edm:isShownAt">
                <xsl:if test="position() = 1">
                  <edm:isShownAt>
                    <xsl:if test="@rdf:resource">
                      <xsl:attribute name="rdf:resource">
                        <xsl:for-each select="@rdf:resource">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="."/>
                          </xsl:if>
                        </xsl:for-each>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </edm:isShownAt>
                </xsl:if>
              </xsl:for-each>
            </xsl:if>
            <!-- Check for mandatory elements on edm:isShownBy -->
            <xsl:if test="edm:isShownBy/@rdf:resource">
              <!-- edm:isShownBy, id: 350 -->
              <xsl:for-each select="edm:isShownBy">
                <xsl:if test="position() = 1">
                  <edm:isShownBy>
                    <xsl:if test="@rdf:resource">
                      <xsl:attribute name="rdf:resource">
                        <xsl:for-each select="@rdf:resource">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="."/>
                          </xsl:if>
                        </xsl:for-each>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </edm:isShownBy>
                </xsl:if>
              </xsl:for-each>
            </xsl:if>
            <!-- Check for mandatory elements on edm:object -->
            <xsl:if test="edm:object/@rdf:resource">
              <!-- edm:object, id: 352 -->
              <xsl:for-each select="edm:object">
                <xsl:if test="position() = 1">
                  <edm:object>
                    <xsl:if test="@rdf:resource">
                      <xsl:attribute name="rdf:resource">
                        <xsl:for-each select="@rdf:resource">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="."/>
                          </xsl:if>
                        </xsl:for-each>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </edm:object>
                </xsl:if>
              </xsl:for-each>
            </xsl:if>
            <!-- Check for mandatory elements on edm:provider -->
            <xsl:if test="edm:provider">
              <!-- edm:provider, id: 354 -->
              <xsl:for-each select="edm:provider">
                <xsl:if test="position() = 1">
                  <edm:provider>
                    <xsl:value-of select="."/>
                  </edm:provider>
                </xsl:if>
              </xsl:for-each>
            </xsl:if>
            <!-- Check for mandatory elements on edm:rights -->
            <xsl:if test="edm:rights/@rdf:resource">
              <!-- edm:rights, id: 360 -->
              <xsl:for-each select="edm:rights">
                <xsl:if test="position() = 1">
                  <edm:rights>
                    <xsl:if test="@rdf:resource">
                      <xsl:attribute name="rdf:resource">
                        <xsl:for-each select="@rdf:resource">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="."/>
                          </xsl:if>
                        </xsl:for-each>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </edm:rights>
                </xsl:if>
              </xsl:for-each>
            </xsl:if>
          </ore:Aggregation>
        </xsl:for-each>
      </xsl:if>
    </rdf:RDF>
<!--  </xsl:template>-->
</xsl:stylesheet>

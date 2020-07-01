require "spec_helper"

RSpec.describe IsoDoc::Ogc do
   it "processes IsoXML bibliographies (Presentation XML)" do
    expect(xmlpp(IsoDoc::Ogc::PresentationXMLConvert.new({}).convert("test", <<~"INPUT", true).sub(/^.*<body/m, "<body").sub(%r{</body>.*$}m, "</body>"))).to be_equivalent_to xmlpp(<<~"OUTPUT")
    <iso-standard xmlns="http://riboseinc.com/isoxml">
    <bibdata>
    <language>en</language>
    </bibdata>
    <preface><foreword>
  <p id="_f06fd0d1-a203-4f3d-a515-0bdba0f8d83f">
  <eref bibitemid="ISO712"/>
  <eref bibitemid="ISBN"/>
  <eref bibitemid="ISSN"/>
  <eref bibitemid="ISO16634"/>
  <eref bibitemid="ref1"/>
  <eref bibitemid="ref10"/>
  <eref bibitemid="ref12"/>
  <eref bibitemid="zip_ffs"/>
  </p>
    </foreword></preface>
    <bibliography><references id="_normative_references" obligation="informative" normative="true"><title>Normative References</title>
    <p>The following documents are referred to in the text in such a way that some or all of their content constitutes requirements of this document. For dated references, only the edition cited applies. For undated references, the latest edition of the referenced document (including any amendments) applies.</p>
<bibitem id="ISO712" type="standard">
  <title format="text/plain">Cereals or cereal products</title>
  <title type="main" format="text/plain">Cereals and cereal products</title>
  <docidentifier type="ISO">ISO 712</docidentifier>
  <docidentifier type="metanorma">[110]</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ISO16634" type="standard">
  <title language="x" format="text/plain">Cereals, pulses, milled cereal products, xxxx, oilseeds and animal feeding stuffs</title>
  <title language="en" format="text/plain">Cereals, pulses, milled cereal products, oilseeds and animal feeding stuffs</title>
  <docidentifier type="ISO">ISO 16634:-- (all parts)</docidentifier>
  <date type="published"><on>--</on></date>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
      <abbreviation>ISO</abbreviation>
    </organization>
  </contributor>
  <extent type="part">
  <referenceFrom>all</referenceFrom>
  </extent>
</bibitem>
<bibitem id="ISO20483" type="standard">
  <title format="text/plain">Cereals and pulses</title>
  <docidentifier type="ISO">ISO 20483:2013-2014</docidentifier>
  <date type="published"><from>2013</from><to>2014</to></date>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ref1">
  <formattedref format="application/x-isodoc+xml"><smallcap>Standard No I.C.C 167</smallcap>. <em>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</em> (see <link target="http://www.icc.or.at"/>)</formattedref>
  <docidentifier type="ICC">167</docidentifier>
</bibitem>
<note><name>NOTE i</name><p>This is an annotation of ISO 20483:2013-2014</p></note>
    <bibitem id="zip_ffs"><formattedref format="application/x-isodoc+xml">Title 5</formattedref><docidentifier type="metanorma">[5]</docidentifier></bibitem>
</references><references id="_bibliography" obligation="informative" normative="false">
  <title>Bibliography</title>
<bibitem id="ISBN" type="ISBN">
  <title format="text/plain">Chemicals for analytical laboratory use</title>
  <docidentifier type="ISBN">ISBN</docidentifier>
  <docidentifier type="metanorma">[1]</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>ISBN</name>
      <abbreviation>ISBN</abbreviation>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ISSN" type="ISSN">
  <title format="text/plain">Instruments for analytical laboratory use</title>
  <docidentifier type="ISSN">ISSN</docidentifier>
  <docidentifier type="metanorma">[2]</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>ISSN</name>
    </organization>
  </contributor>
</bibitem>
<note><name>NOTE i</name><p>This is an annotation of document ISSN.</p></note>
<note><name>NOTE i</name><p>This is another annotation of document ISSN.</p></note>
<bibitem id="ISO3696" type="standard">
  <title format="text/plain">Water for analytical laboratory use</title>
  <docidentifier type="ISO">ISO 3696</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ref10">
  <formattedref format="application/x-isodoc+xml"><smallcap>Standard No I.C.C 167</smallcap>. <em>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</em> (see <link target="http://www.icc.or.at"/>)</formattedref>
  <docidentifier type="metanorma">[10]</docidentifier>
</bibitem>
<bibitem id="ref11">
  <title>Internet Calendaring and Scheduling Core Object Specification (iCalendar)</title>
  <docidentifier type="IETF">RFC 10</docidentifier>
</bibitem>
<bibitem id="ref12">
  <formattedref format="application/x-isodoc+xml">CitationWorks. 2019. <em>How to cite a reference</em>.</formattedref>
  <docidentifier type="metanorma">[Citn]</docidentifier>
  <docidentifier type="IETF">RFC 20</docidentifier>
</bibitem>
</references>
</bibliography>
    </iso-standard>
    INPUT
    <?xml version='1.0'?>
        <iso-standard xmlns='http://riboseinc.com/isoxml'>
          <bibdata>
            <language>en</language>
          </bibdata>
          <preface>
            <foreword>
              <p id='_f06fd0d1-a203-4f3d-a515-0bdba0f8d83f'>
                <eref bibitemid='ISO712'>[110]</eref>
                <eref bibitemid='ISBN'>[1]</eref>
                <eref bibitemid='ISSN'>[2]</eref>
                <eref bibitemid='ISO16634'>ISO 16634:-- (all parts)</eref>
                <eref bibitemid='ref1'>ICC 167</eref>
                <eref bibitemid='ref10'>[10]</eref>
                <eref bibitemid='ref12'>Citn</eref>
                <eref bibitemid='zip_ffs'>[5]</eref>
              </p>
            </foreword>
          </preface>
          <bibliography>
            <references id='_normative_references' obligation='informative' normative='true'>
              <title>Normative References</title>
              <p>
                The following documents are referred to in the text in such a way that
                some or all of their content constitutes requirements of this document.
                For dated references, only the edition cited applies. For undated
                references, the latest edition of the referenced document (including any
                amendments) applies.
              </p>
              <bibitem id='ISO712' type='standard'>
                <title format='text/plain'>Cereals or cereal products</title>
                <title type='main' format='text/plain'>Cereals and cereal products</title>
                <docidentifier type='ISO'>ISO 712</docidentifier>
                <docidentifier type='metanorma'>[110]</docidentifier>
                <contributor>
                  <role type='publisher'/>
                  <organization>
                    <name>International Organization for Standardization</name>
                  </organization>
                </contributor>
              </bibitem>
              <bibitem id='ISO16634' type='standard'>
                <title language='x' format='text/plain'>
                  Cereals, pulses, milled cereal products, xxxx, oilseeds and animal
                  feeding stuffs
                </title>
                <title language='en' format='text/plain'>Cereals, pulses, milled cereal products, oilseeds and animal feeding stuffs</title>
                <docidentifier type='ISO'>ISO 16634:-- (all parts)</docidentifier>
                <date type='published'>
                  <on>--</on>
                </date>
                <contributor>
                  <role type='publisher'/>
                  <organization>
                    <name>International Organization for Standardization</name>
                    <abbreviation>ISO</abbreviation>
                  </organization>
                </contributor>
                <extent type='part'>
                  <referenceFrom>all</referenceFrom>
                </extent>
              </bibitem>
              <bibitem id='ISO20483' type='standard'>
                <title format='text/plain'>Cereals and pulses</title>
                <docidentifier type='ISO'>ISO 20483:2013-2014</docidentifier>
                <date type='published'>
                  <from>2013</from>
                  <to>2014</to>
                </date>
                <contributor>
                  <role type='publisher'/>
                  <organization>
                    <name>International Organization for Standardization</name>
                  </organization>
                </contributor>
              </bibitem>
              <bibitem id='ref1'>
                <formattedref format='application/x-isodoc+xml'>
                  <smallcap>Standard No I.C.C 167</smallcap>
                  . 
                  <em>
                    Determination of the protein content in cereal and cereal products
                    for food and animal feeding stuffs according to the Dumas combustion
                    method
                  </em>
                   (see 
                  <link target='http://www.icc.or.at'/>
                  )
                </formattedref>
                <docidentifier type='ICC'>167</docidentifier>
              </bibitem>
              <note>
                <name>NOTE iNOTE i</name>
                <p>This is an annotation of ISO 20483:2013-2014</p>
              </note>
              <bibitem id='zip_ffs'>
                <formattedref format='application/x-isodoc+xml'>Title 5</formattedref>
                <docidentifier type='metanorma'>[5]</docidentifier>
              </bibitem>
            </references>
            <references id='_bibliography' obligation='informative' normative='false'>
              <title>Bibliography</title>
              <bibitem id='ISBN' type='ISBN'>
                <title format='text/plain'>Chemicals for analytical laboratory use</title>
                <docidentifier type='ISBN'>ISBN</docidentifier>
                <docidentifier type='metanorma'>[1]</docidentifier>
                <contributor>
                  <role type='publisher'/>
                  <organization>
                    <name>ISBN</name>
                    <abbreviation>ISBN</abbreviation>
                  </organization>
                </contributor>
              </bibitem>
              <bibitem id='ISSN' type='ISSN'>
                <title format='text/plain'>Instruments for analytical laboratory use</title>
                <docidentifier type='ISSN'>ISSN</docidentifier>
                <docidentifier type='metanorma'>[2]</docidentifier>
                <contributor>
                  <role type='publisher'/>
                  <organization>
                    <name>ISSN</name>
                  </organization>
                </contributor>
              </bibitem>
              <note>
                <name>NOTE iNOTE i</name>
                <p>This is an annotation of document ISSN.</p>
              </note>
              <note>
                <name>NOTE iNOTE i</name>
                <p>This is another annotation of document ISSN.</p>
              </note>
              <bibitem id='ISO3696' type='standard'>
                <title format='text/plain'>Water for analytical laboratory use</title>
                <docidentifier type='ISO'>ISO 3696</docidentifier>
                <contributor>
                  <role type='publisher'/>
                  <organization>
                    <name>International Organization for Standardization</name>
                  </organization>
                </contributor>
              </bibitem>
              <bibitem id='ref10'>
                <formattedref format='application/x-isodoc+xml'>
                  <smallcap>Standard No I.C.C 167</smallcap>
                  . 
                  <em>
                    Determination of the protein content in cereal and cereal products
                    for food and animal feeding stuffs according to the Dumas combustion
                    method
                  </em>
                   (see 
                  <link target='http://www.icc.or.at'/>
                  )
                </formattedref>
                <docidentifier type='metanorma'>[10]</docidentifier>
              </bibitem>
              <bibitem id='ref11'>
                <title>Internet Calendaring and Scheduling Core Object Specification (iCalendar)</title>
                <docidentifier type='IETF'>RFC 10</docidentifier>
              </bibitem>
              <bibitem id='ref12'>
                <formattedref format='application/x-isodoc+xml'>
                  CitationWorks. 2019. 
                  <em>How to cite a reference</em>
                  .
                </formattedref>
                <docidentifier type='metanorma'>[Citn]</docidentifier>
                <docidentifier type='IETF'>RFC 20</docidentifier>
              </bibitem>
            </references>
          </bibliography>
        </iso-standard>
OUTPUT
   end

  it "processes IsoXML bibliographies (HTML)" do
    expect(xmlpp(IsoDoc::Ogc::HtmlConvert.new({}).convert("test", <<~"INPUT", true).sub(/^.*<body/m, "<body").sub(%r{</body>.*$}m, "</body>"))).to be_equivalent_to xmlpp(<<~"OUTPUT")
    <iso-standard xmlns="http://riboseinc.com/isoxml">
    <bibdata>
    <language>en</language>
    </bibdata>
    <preface><foreword>
  <p id="_f06fd0d1-a203-4f3d-a515-0bdba0f8d83f">
  </p>
    </foreword></preface>
    <bibliography><references id="_normative_references" obligation="informative" normative="true"><title>Normative References</title>
    <p>The following documents are referred to in the text in such a way that some or all of their content constitutes requirements of this document. For dated references, only the edition cited applies. For undated references, the latest edition of the referenced document (including any amendments) applies.</p>
<bibitem id="ISO712" type="standard">
  <title format="text/plain">Cereals or cereal products</title>
  <title type="main" format="text/plain">Cereals and cereal products</title>
  <docidentifier type="ISO">ISO 712</docidentifier>
  <docidentifier type="metanorma">[110]</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ISO16634" type="standard">
  <title language="x" format="text/plain">Cereals, pulses, milled cereal products, xxxx, oilseeds and animal feeding stuffs</title>
  <title language="en" format="text/plain">Cereals, pulses, milled cereal products, oilseeds and animal feeding stuffs</title>
  <docidentifier type="ISO">ISO 16634:-- (all parts)</docidentifier>
  <date type="published"><on>--</on></date>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
      <abbreviation>ISO</abbreviation>
    </organization>
  </contributor>
  <extent type="part">
  <referenceFrom>all</referenceFrom>
  </extent>
</bibitem>
<bibitem id="ISO20483" type="standard">
  <title format="text/plain">Cereals and pulses</title>
  <docidentifier type="ISO">ISO 20483:2013-2014</docidentifier>
  <date type="published"><from>2013</from><to>2014</to></date>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ref1">
  <formattedref format="application/x-isodoc+xml"><smallcap>Standard No I.C.C 167</smallcap>. <em>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</em> (see <link target="http://www.icc.or.at"/>)</formattedref>
  <docidentifier type="ICC">167</docidentifier>
</bibitem>
<note><name>NOTE i</name><p>This is an annotation of ISO 20483:2013-2014</p></note>
    <bibitem id="zip_ffs"><formattedref format="application/x-isodoc+xml">Title 5</formattedref><docidentifier type="metanorma">[5]</docidentifier></bibitem>
</references><references id="_bibliography" obligation="informative" normative="false">
  <title>Bibliography</title>
<bibitem id="ISBN" type="ISBN">
  <title format="text/plain">Chemicals for analytical laboratory use</title>
  <docidentifier type="ISBN">ISBN</docidentifier>
  <docidentifier type="metanorma">[1]</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>ISBN</name>
      <abbreviation>ISBN</abbreviation>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ISSN" type="ISSN">
  <title format="text/plain">Instruments for analytical laboratory use</title>
  <docidentifier type="ISSN">ISSN</docidentifier>
  <docidentifier type="metanorma">[2]</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>ISSN</name>
    </organization>
  </contributor>
</bibitem>
<note><name>NOTE i</name><p>This is an annotation of document ISSN.</p></note>
<note><name>NOTE i</name><p>This is another annotation of document ISSN.</p></note>
<bibitem id="ISO3696" type="standard">
  <title format="text/plain">Water for analytical laboratory use</title>
  <docidentifier type="ISO">ISO 3696</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ref10">
  <formattedref format="application/x-isodoc+xml"><smallcap>Standard No I.C.C 167</smallcap>. <em>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</em> (see <link target="http://www.icc.or.at"/>)</formattedref>
  <docidentifier type="metanorma">[10]</docidentifier>
</bibitem>
<bibitem id="ref11">
  <title>Internet Calendaring and Scheduling Core Object Specification (iCalendar)</title>
  <docidentifier type="IETF">RFC 10</docidentifier>
</bibitem>
<bibitem id="ref12">
  <formattedref format="application/x-isodoc+xml">CitationWorks. 2019. <em>How to cite a reference</em>.</formattedref>
  <docidentifier type="metanorma">[Citn]</docidentifier>
  <docidentifier type="IETF">RFC 20</docidentifier>
</bibitem>
</references>
</bibliography>
    </iso-standard>
    INPUT
    #{HTML_HDR}
    <br/>
             <div>
               <h1 class="ForewordTitle">Preface</h1>
               <p id="_f06fd0d1-a203-4f3d-a515-0bdba0f8d83f">
         </p>
             </div>
             <p class="zzSTDTitle1"/>
             <div><h1>1.&#160; Normative references</h1>
           <p>The following documents are referred to in the text in such a way that some or all of their content constitutes requirements of this document. For dated references, only the edition cited applies. For undated references, the latest edition of the referenced document (including any amendments) applies.</p>
       <p id="ISO712" class="NormRef">International Organization for Standardization: ISO 712, <i>Cereals and cereal products</i>. <span>International Organization for Standardization</span></p>
       <p id="ISO16634" class="NormRef">ISO: ISO 16634:-- (all parts), <i>Cereals, pulses, milled cereal products, oilseeds and animal feeding stuffs</i>. <span>International Organization for Standardization</span> (--).</p>
       <p id="ISO20483" class="NormRef">International Organization for Standardization: ISO 20483:2013-2014, <i>Cereals and pulses</i>. <span>International Organization for Standardization</span> (2013&#8211;2014).</p>
       <p id="ref1" class="NormRef"><span style="font-variant:small-caps;">Standard No I.C.C 167</span>. <i>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</i> (see <a href="http://www.icc.or.at">http://www.icc.or.at</a>)</p>
       <div class="Note"><p><span class="note_label">NOTE i</span>&#160; This is an annotation of ISO 20483:2013-2014</p></div>
           <p id="zip_ffs" class="NormRef">Title 5</p>


       </div>
             <br/>
             <div><h1 class="Section3">Bibliography</h1>

       <p id="ISBN" class="Biblio">[1]&#160; ISBN: ISBN ISBN, <i>Chemicals for analytical laboratory use</i>. <span>ISBN</span></p>
       <p id="ISSN" class="Biblio">[2]&#160; ISSN: ISSN ISSN, <i>Instruments for analytical laboratory use</i>. <span>ISSN</span></p>
       <div class="Note"><p><span class="note_label">NOTE i</span>&#160; This is an annotation of document ISSN.</p></div>
       <div class="Note"><p><span class="note_label">NOTE i</span>&#160; This is another annotation of document ISSN.</p></div>
       <p id="ISO3696" class="Biblio">[3]&#160; International Organization for Standardization: ISO 3696, <i>Water for analytical laboratory use</i>. <span>International Organization for Standardization</span></p>
       <p id="ref10" class="Biblio">[10]&#160; <span style="font-variant:small-caps;">Standard No I.C.C 167</span>. <i>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</i> (see <a href="http://www.icc.or.at">http://www.icc.or.at</a>)</p>
       <p id="ref11" class="Biblio">[5]&#160; IETF RFC 10, <i>Internet Calendaring and Scheduling Core Object Specification (iCalendar)</i>. </p>
       <p id="ref12" class="Biblio">[6]&#160; CitationWorks. 2019. <i>How to cite a reference</i>.</p>


       </div>
           </div>
         </body>
    OUTPUT
  end

end

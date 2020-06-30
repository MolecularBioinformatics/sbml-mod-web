<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.9.43+ (Development) (http://www.copasi.org) at 2013-05-27 13:05:56 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="9" versionDevel="43" copasiSourcesModified="1">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <b xmlns="http://www.w3.org/1999/xhtml">
mass action rate law for first order irreversible reactions
</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="Function for B_IL4I1_kcat_set_to_1" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*B_h2o_c*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_o2_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1729" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1730" name="B_h2o_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1731" name="B_o2_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1732" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1733" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1734" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1735" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1736" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="Function for B_TDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*scaling/(Ka*Kb+Ka*B_o2_c+Kb*B_trp_DASH_L_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1722" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1745" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1746" name="B_trp_DASH_L_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1747" name="Ka" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1748" name="Kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1749" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1750" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="Function for B_DDC_trypta" type="UserDefined" reversible="false">
      <Expression>
        DDC_B_E_T*kcat_B*scaling*B_trp_DASH_L_c*DDC_Km_5htrp/(DDC_Km_trp_DASH_L*DDC_Km_5htrp+DDC_Km_trp_DASH_L*B_5htrp_c+DDC_Km_5htrp*B_trp_DASH_L_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1758" name="B_5htrp_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1759" name="B_trp_DASH_L_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1760" name="DDC_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1761" name="DDC_Km_5htrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1762" name="DDC_Km_trp_DASH_L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1763" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1764" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="Function for B_KYNU_Lkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_B_E_T*kcat_A*scaling*B_Lkynr_c*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr/(KYNU_Km_Lkynr*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*B_Lkynr_c+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*B_hLkynr_c+KYNU_Km_Lkynr*KYNU_Km_hLkynr*B_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1774" name="B_Lfmkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1775" name="B_Lkynr_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1776" name="B_hLkynr_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1777" name="KYNU_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1778" name="KYNU_Km_Lfmkynr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1779" name="KYNU_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1780" name="KYNU_Km_hLkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1781" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1782" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="Function for B_TPH1" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*B_thbpt*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_o2_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1773" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1792" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1793" name="B_thbpt" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1794" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1795" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1796" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1797" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1798" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="Function for B_AADAT_Lkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat1*AADAT_kcat_Lkynr*scaling*B_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*B_hLkynr_c+AADAT_Km_hLkynr*B_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1726" name="AADAT_B_E_T_kat1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1807" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1808" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1809" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1810" name="B_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1811" name="B_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1812" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="Function for B_AFMID_lfmkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_B_E_T*kcat_A*scaling*B_Lfmkynr_c*AFMID_Km_5hoxnfky*AFMID_Km_nformanth/(AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*AFMID_Km_nformanth+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*B_Lfmkynr_c+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*B_5hoxnfkyn_c+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*B_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1822" name="AFMID_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1823" name="AFMID_Km_5hoxnfky" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1824" name="AFMID_Km_Lfmkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1825" name="AFMID_Km_nformanth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1826" name="B_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1827" name="B_Lfmkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1828" name="B_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1829" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1830" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="Function for B_KMO" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_Lkynr_c*B_o2_c*B_nadph_c*B_h_c*scaling/(Ka*Kb*Kc+B_Lkynr_c*Kb*Kc+B_o2_c*Ka*Kc+B_nadph_c*Ka*Kb+B_Lkynr_c*B_o2_c*Kc+B_o2_c*B_nadph_c*Ka+B_Lkynr_c*B_nadph_c*Kb+B_Lkynr_c*B_o2_c*B_nadph_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1841" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1842" name="B_Lkynr_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1843" name="B_h_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1844" name="B_nadph_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1845" name="B_o2_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1846" name="Ka" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1847" name="Kb" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1848" name="Kc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1849" name="kcat" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_1850" name="scaling" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="Function for B_INMT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_B_E_T*kcat_A*scaling*B_trypta_c*IMNT_Km_nmtrpta*IMNT_Km_srtn/(IMNT_Km_trypta*IMNT_Km_nmtrpta*IMNT_Km_srtn+IMNT_Km_nmtrpta*IMNT_Km_srtn*B_trypta_c+IMNT_Km_trypta*IMNT_Km_srtn*B_nmtrpta_c+IMNT_Km_trypta*IMNT_Km_nmtrpta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1721" name="B_nmtrpta_c" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1861" name="B_srtn_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1862" name="B_trypta_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1863" name="IMNT_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1864" name="IMNT_Km_nmtrpta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1865" name="IMNT_Km_srtn" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1866" name="IMNT_Km_trypta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1867" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1868" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_144" name="Function for B_HAAO" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_3hanthrn_c*B_o2_c*scaling/(Ka*Kb+Ka*B_o2_c+Kb*B_3hanthrn_c+B_3hanthrn_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1821" name="B_3hanthrn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1724" name="B_E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1878" name="B_o2_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1879" name="Ka" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1880" name="Kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1881" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1882" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_145" name="Function for B_KYNU_hLkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_B_E_T*kcat_A*scaling*B_hLkynr_c*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr/(KYNU_Km_hLkynr*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*B_hLkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*B_Lkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lkynr*B_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1892" name="B_Lfmkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1893" name="B_Lkynr_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1894" name="B_hLkynr_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1895" name="KYNU_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1896" name="KYNU_Km_Lfmkynr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1897" name="KYNU_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1898" name="KYNU_Km_hLkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1899" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1900" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_146" name="Function for B_DDC_5HT" type="UserDefined" reversible="false">
      <Expression>
        DDC_B_E_T*kcat_B*scaling*B_5htrp_c*DDC_Km_trp_DASH_L/(DDC_Km_5htrp*DDC_Km_trp_DASH_L+DDC_Km_5htrp*B_trp_DASH_L_c+DDC_Km_trp_DASH_L*B_5htrp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1890" name="B_5htrp_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1891" name="B_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1910" name="DDC_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1911" name="DDC_Km_5htrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1912" name="DDC_Km_trp_DASH_L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1913" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1914" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_147" name="Function for B_IDO_5HT" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_B_E_T*B_5htrp_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn*scaling/(IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_5htrp_c*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_trp_DASH_L_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_srtn+B_srtn_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L+B_5htrp_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_trp_DASH_L_c*B_o2_c*IDO_Km_5htrp*IDO_Km_srtn+B_srtn_c*B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1926" name="B_5htrp_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1927" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1928" name="B_srtn_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1929" name="B_trp_DASH_L_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1930" name="IDO_B_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1931" name="IDO_Km_5htrp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1932" name="IDO_Km_O2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1933" name="IDO_Km_srtn" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1934" name="IDO_Km_trp_DASH_L" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_1935" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_1936" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_148" name="Function for B_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_trna_trp_c*B_atp_c*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_trna_trp_c+B_trp_DASH_L_c*B_trna_trp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1925" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1723" name="B_atp_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1772" name="B_trna_trp_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1948" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1949" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1950" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1951" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1952" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_149" name="Function for B_AFMID_5HNFK" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_B_E_T*kcat_A*scaling*B_5hoxnfkyn_c*AFMID_Km_Lfmkynr*AFMID_Km_nformanth/(AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*AFMID_Km_nformanth+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*B_5hoxnfkyn_c+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*B_Lfmkynr_c+AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*B_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1962" name="AFMID_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1963" name="AFMID_Km_5hoxnfky" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1964" name="AFMID_Km_Lfmkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1965" name="AFMID_Km_nformanth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1966" name="B_5hoxnfkyn_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1967" name="B_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1968" name="B_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1969" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1970" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_150" name="Function for B_MAOA_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_B_E_T*kcat_B*scaling*B_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*B_srtn_c+MAO_Km_srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1980" name="B_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1981" name="B_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1982" name="MAOA_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1983" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1984" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1985" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1986" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_151" name="Function for B_Cinnavalinate formation" type="UserDefined" reversible="false">
      <Expression>
        k1*B_3hanthrn_c^e1*B_o2_c^e2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1725" name="B_3hanthrn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1922" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1994" name="e1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1995" name="e2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1996" name="k1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_152" name="Function for B_Tryptophan_Transport Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a5,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a5,Transporter_kcat_Trp,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,Lkynr_ex,Transporter_Km_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2006" name="B_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2007" name="B_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_2008" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_2009" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2010" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2011" name="Transporter_B_E_T_Slc7a5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2012" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2013" name="Transporter_Km_Trp_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2014" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_153" name="Function for B_IDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_B_E_T*B_trp_DASH_L_c*B_o2_c*IDO_Km_5htrp*IDO_Km_srtn*scaling/(IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+B_trp_DASH_L_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp*IDO_Km_srtn+B_5htrp_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_srtn+B_srtn_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp+B_trp_DASH_L_c*B_o2_c*IDO_Km_5htrp*IDO_Km_srtn+B_5htrp_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_srtn_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2026" name="B_5htrp_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2027" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2028" name="B_srtn_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2029" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2030" name="IDO_B_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2031" name="IDO_Km_5htrp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2032" name="IDO_Km_O2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2033" name="IDO_Km_srtn" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2034" name="IDO_Km_trp_DASH_L" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_2035" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_2036" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_154" name="Function for B_QPRT" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_quln_c*B_prpp_c*B_h_c*scaling/(Ka*Kb+Kb*B_quln_c+Ka*B_prpp_c+B_quln_c*B_prpp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2025" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1961" name="B_h_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2024" name="B_prpp_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2048" name="B_quln_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2049" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2050" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2051" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2052" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_155" name="Function for B_KYNU_Lfmkyn" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_B_E_T*kcat_A*scaling*B_Lfmkynr_c*KYNU_Km_Lkynr*KYNU_Km_hLkynr/(KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*KYNU_Km_hLkynr+KYNU_Km_Lkynr*KYNU_Km_hLkynr*B_Lfmkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_hLkynr*B_Lkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2062" name="B_Lfmkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2063" name="B_Lkynr_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2064" name="B_hLkynr_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2065" name="KYNU_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2066" name="KYNU_Km_Lfmkynr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2067" name="KYNU_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2068" name="KYNU_Km_hLkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2069" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2070" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_156" name="Function for B_AFMID_nform" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_B_E_T*kcat_A*scaling*B_nformanth_c*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky/(AFMID_Km_nformanth*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*B_nformanth_c+AFMID_Km_nformanth*AFMID_Km_5hoxnfky*B_Lfmkynr_c+AFMID_Km_nformanth*AFMID_Km_Lfmkynr*B_5hoxnfkyn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2080" name="AFMID_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2081" name="AFMID_Km_5hoxnfky" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2082" name="AFMID_Km_Lfmkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2083" name="AFMID_Km_nformanth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2084" name="B_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2085" name="B_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2086" name="B_nformanth_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2087" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2088" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_157" name="Function for B_NMNAT1" type="UserDefined" reversible="false">
      <Expression>
        B_E_T*kcat*B_nicrnt_c*B_h_c*B_atp_c*scaling/(Km+B_nicrnt_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1728" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2004" name="B_atp_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2098" name="B_h_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2099" name="B_nicrnt_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2100" name="Km" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2101" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2102" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_158" name="Function for B_ACMSD" type="UserDefined" reversible="false">
      <Expression>
        B_E_T*kcat*B_cmusa_c*scaling/(Km+B_cmusa_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1820" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2003" name="B_cmusa_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2110" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2111" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2112" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_159" name="Function for B_MAOA_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_B_E_T*kcat_B*scaling*B_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*B_trypta_c+MAO_Km_trypta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2120" name="B_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2121" name="B_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2122" name="MAOA_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2123" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2124" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2125" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2126" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_160" name="Function for B_AANAT_Srtn" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_B_E_T*kcat_B*scaling*B_srtn_c*AANAT_Km_trypta/(AANAT_Km_Srtn*AANAT_Km_trypta+AANAT_Km_Srtn*B_trypta_c+AANAT_Km_trypta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2134" name="AANAT_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2135" name="AANAT_Km_Srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2136" name="AANAT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2137" name="B_srtn_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2138" name="B_trypta_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2139" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2140" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_161" name="Function for B_AADAT_hLkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat1*AADAT_kcat_hLkynr*scaling*B_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*B_Lkynr_c+AADAT_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2148" name="AADAT_B_E_T_kat1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2149" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2150" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2151" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2152" name="B_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2153" name="B_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2154" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_162" name="Function for B_IDO_SRTN" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_B_E_T*B_srtn_c*B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*scaling/(IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_srtn_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_o2_c*IDO_Km_srtn*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_5htrp_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_trp_DASH_L+B_trp_DASH_L_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp+B_srtn_c*B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_5htrp_c*B_o2_c*IDO_Km_srtn*IDO_Km_trp_DASH_L+B_trp_DASH_L_c*B_o2_c*IDO_Km_srtn*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2166" name="B_5htrp_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2167" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2168" name="B_srtn_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2169" name="B_trp_DASH_L_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2170" name="IDO_B_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2171" name="IDO_Km_5htrp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2172" name="IDO_Km_O2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2173" name="IDO_Km_srtn" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2174" name="IDO_Km_trp_DASH_L" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_2175" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_2176" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_163" name="Function for B_INMT_methyltrypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_B_E_T*kcat_A*scaling*B_nmtrpta_c*IMNT_Km_srtn*IMNT_Km_trypta/(IMNT_Km_nmtrpta*IMNT_Km_srtn*IMNT_Km_trypta+IMNT_Km_srtn*IMNT_Km_trypta*B_nmtrpta_c+IMNT_Km_nmtrpta*IMNT_Km_trypta*B_srtn_c+IMNT_Km_nmtrpta*IMNT_Km_srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1840" name="B_nmtrpta_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2164" name="B_srtn_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2188" name="B_trypta_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2189" name="IMNT_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2190" name="IMNT_Km_nmtrpta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2191" name="IMNT_Km_srtn" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2192" name="IMNT_Km_trypta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2193" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2194" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_164" name="Function for B_INMT_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_B_E_T*kcat_A*scaling*B_srtn_c*IMNT_Km_nmtrpta*IMNT_Km_trypta/(IMNT_Km_srtn*IMNT_Km_nmtrpta*IMNT_Km_trypta+IMNT_Km_nmtrpta*IMNT_Km_trypta*B_srtn_c+IMNT_Km_srtn*IMNT_Km_trypta*B_nmtrpta_c+IMNT_Km_srtn*IMNT_Km_nmtrpta*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2204" name="B_nmtrpta_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2205" name="B_srtn_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2206" name="B_trypta_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2207" name="IMNT_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2208" name="IMNT_Km_nmtrpta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2209" name="IMNT_Km_srtn" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2210" name="IMNT_Km_trypta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2211" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2212" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_165" name="Function for B_AADAT_hLkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat2*AADAT_kcat_hLkynr*scaling*B_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*B_Lkynr_c+AADAT_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2163" name="AADAT_B_E_T_kat2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2165" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2222" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2223" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2224" name="B_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2225" name="B_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2226" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_166" name="Function for B_AADAT_hLkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat3*AADAT_kcat_hLkynr*scaling*B_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*B_Lkynr_c+AADAT_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2234" name="AADAT_B_E_T_kat3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2235" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2236" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2237" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2238" name="B_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2239" name="B_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2240" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_167" name="Function for B_AADAT_Lkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat2*AADAT_kcat_Lkynr*scaling*B_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*B_hLkynr_c+AADAT_Km_hLkynr*B_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2248" name="AADAT_B_E_T_kat2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2249" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2250" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2251" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2252" name="B_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2253" name="B_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2254" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_168" name="Function for B_AADAT_Lkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat3*AADAT_kcat_Lkynr*scaling*B_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*B_hLkynr_c+AADAT_Km_hLkynr*B_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2262" name="AADAT_B_E_T_kat3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2263" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2264" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2265" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2266" name="B_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2267" name="B_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2268" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_169" name="Function for B_MAOB_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_B_E_T*kcat_B*scaling*B_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*B_trypta_c+MAO_Km_trypta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2276" name="B_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2277" name="B_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2278" name="MAOB_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2279" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2280" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2281" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2282" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_170" name="Function for B_MAOB_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_B_E_T*kcat_B*scaling*B_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*B_srtn_c+MAO_Km_srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2290" name="B_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2291" name="B_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2292" name="MAOB_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2293" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2294" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2295" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2296" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_171" name="Function for B_AANAT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_B_E_T*kcat_B*scaling*B_trypta_c*AANAT_Km_Srtn/(AANAT_Km_trypta*AANAT_Km_Srtn+AANAT_Km_trypta*B_srtn_c+AANAT_Km_Srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2304" name="AANAT_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2305" name="AANAT_Km_Srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2306" name="AANAT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2307" name="B_srtn_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2308" name="B_trypta_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2309" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2310" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_172" name="Function for B_TPH2" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*B_thbpt*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_o2_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2319" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2320" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2321" name="B_thbpt" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2322" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2323" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2324" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2325" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2326" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_173" name="Function for B_Tryptophan_Transport Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a8,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a8,Transporter_kcat_Trp,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,Lkynr_ex,Transporter_Km_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2336" name="B_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2337" name="B_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_2338" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_2339" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2340" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2341" name="Transporter_B_E_T_Slc7a8" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2342" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2343" name="Transporter_Km_Trp_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2344" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_174" name="Function for B_Lkynr_Transporter_Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a5,Transporter_kcat_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,TRP_ex,Transporter_Km_Trp_Slc7a5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2354" name="B_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2355" name="B_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2356" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_2357" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2358" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2359" name="Transporter_B_E_T_Slc7a5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2360" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2361" name="Transporter_Km_Trp_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2362" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_175" name="Function for B_Lkynr_Transporter_Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a8,Transporter_kcat_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,TRP_ex,Transporter_Km_Trp_Slc7a8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2372" name="B_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2373" name="B_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2374" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_2375" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2376" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2377" name="Transporter_B_E_T_Slc7a8" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2378" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2379" name="Transporter_Km_Trp_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2380" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_176" name="Function for L_IL4I1_kcat_set_to_1" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*L_h2o_c*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_o2_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1923" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2390" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2391" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2392" name="L_h2o_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2393" name="L_o2_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2394" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2395" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2396" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_177" name="Function for L_TDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*scaling/(Ka*Kb+Ka*L_o2_c+Kb*L_trp_DASH_L_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2162" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2405" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2406" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2407" name="L_o2_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2408" name="L_trp_DASH_L_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2409" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2410" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_178" name="Function for L_DDC_trypta" type="UserDefined" reversible="false">
      <Expression>
        DDC_L_E_T*kcat_B*scaling*L_trp_DASH_L_c*DDC_Km_5htrp/(DDC_Km_trp_DASH_L*DDC_Km_5htrp+DDC_Km_trp_DASH_L*L_5htrp_c+DDC_Km_5htrp*L_trp_DASH_L_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2418" name="DDC_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2419" name="DDC_Km_trp_DASH_L" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2420" name="DDC_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2421" name="L_5htrp_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2422" name="L_trp_DASH_L_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2423" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2424" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_179" name="Function for L_KYNU_Lkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_L_E_T*kcat_A*scaling*L_Lkynr_c*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr/(KYNU_Km_Lkynr*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*L_Lkynr_c+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*L_hLkynr_c+KYNU_Km_Lkynr*KYNU_Km_hLkynr*L_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2434" name="KYNU_Km_Lfmkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2435" name="KYNU_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2436" name="KYNU_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2437" name="KYNU_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2438" name="L_Lfmkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2439" name="L_Lkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2440" name="L_hLkynr_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2441" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2442" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_180" name="Function for L_TPH1" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*L_thbpt*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_o2_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2318" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2452" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2453" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2454" name="L_o2_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2455" name="L_thbpt" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2456" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2457" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2458" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_181" name="Function for L_AADAT_Lkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat1*AADAT_kcat_Lkynr*scaling*L_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*L_hLkynr_c+AADAT_Km_hLkynr*L_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2119" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2467" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2468" name="AADAT_L_E_T_kat1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2469" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2470" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2471" name="L_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2472" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_182" name="Function for L_AFMID_lfmkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_L_E_T*kcat_A*scaling*L_Lfmkynr_c*AFMID_Km_5hoxnfky*AFMID_Km_nformanth/(AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*AFMID_Km_nformanth+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*L_Lfmkynr_c+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*L_5hoxnfkyn_c+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*L_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2482" name="AFMID_Km_5hoxnfky" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2483" name="AFMID_Km_Lfmkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2484" name="AFMID_Km_nformanth" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2485" name="AFMID_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2486" name="L_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2487" name="L_Lfmkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2488" name="L_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2489" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2490" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_183" name="Function for L_KMO" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_Lkynr_c*L_o2_c*L_nadph_c*L_h_c*scaling/(Ka*Kb*Kc+L_Lkynr_c*Kb*Kc+L_o2_c*Ka*Kc+L_nadph_c*Ka*Kb+L_Lkynr_c*L_o2_c*Kc+L_o2_c*L_nadph_c*Ka+L_Lkynr_c*L_nadph_c*Kb+L_Lkynr_c*L_o2_c*L_nadph_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2501" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2502" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2503" name="Kc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2504" name="L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2505" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2506" name="L_h_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2507" name="L_nadph_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2508" name="L_o2_c" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2509" name="kcat" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_2510" name="scaling" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_184" name="Function for L_INMT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_L_E_T*kcat_A*scaling*L_trypta_c*IMNT_Km_nmtrpta*IMNT_Km_srtn/(IMNT_Km_trypta*IMNT_Km_nmtrpta*IMNT_Km_srtn+IMNT_Km_nmtrpta*IMNT_Km_srtn*L_trypta_c+IMNT_Km_trypta*IMNT_Km_srtn*L_nmtrpta_c+IMNT_Km_trypta*IMNT_Km_nmtrpta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2061" name="IMNT_Km_nmtrpta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2521" name="IMNT_Km_srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2522" name="IMNT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2523" name="IMNT_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2524" name="L_nmtrpta_c" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2525" name="L_srtn_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2526" name="L_trypta_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2527" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2528" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_185" name="Function for L_HAAO" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_3hanthrn_c*L_o2_c*scaling/(Ka*Kb+Ka*L_o2_c+Kb*L_3hanthrn_c+L_3hanthrn_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2481" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2432" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2538" name="L_3hanthrn_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2539" name="L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2540" name="L_o2_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2541" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2542" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_186" name="Function for L_KYNU_hLkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_L_E_T*kcat_A*scaling*L_hLkynr_c*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr/(KYNU_Km_hLkynr*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*L_hLkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*L_Lkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lkynr*L_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2552" name="KYNU_Km_Lfmkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2553" name="KYNU_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2554" name="KYNU_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2555" name="KYNU_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2556" name="L_Lfmkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2557" name="L_Lkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2558" name="L_hLkynr_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2559" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2560" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_187" name="Function for L_DDC_5HT" type="UserDefined" reversible="false">
      <Expression>
        DDC_L_E_T*kcat_B*scaling*L_5htrp_c*DDC_Km_trp_DASH_L/(DDC_Km_5htrp*DDC_Km_trp_DASH_L+DDC_Km_5htrp*L_trp_DASH_L_c+DDC_Km_trp_DASH_L*L_5htrp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2480" name="DDC_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2118" name="DDC_Km_trp_DASH_L" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2570" name="DDC_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2571" name="L_5htrp_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2572" name="L_trp_DASH_L_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2573" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2574" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_188" name="Function for L_IDO_5HT" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_L_E_T*L_5htrp_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn*scaling/(IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_5htrp_c*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_trp_DASH_L_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_srtn+L_srtn_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L+L_5htrp_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_trp_DASH_L_c*L_o2_c*IDO_Km_5htrp*IDO_Km_srtn+L_srtn_c*L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2586" name="IDO_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2587" name="IDO_Km_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2588" name="IDO_Km_srtn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2589" name="IDO_Km_trp_DASH_L" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2590" name="IDO_L_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2591" name="L_5htrp_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2592" name="L_o2_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2593" name="L_srtn_c" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2594" name="L_trp_DASH_L_c" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2595" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_2596" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_189" name="Function for L_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_trna_trp_c*L_atp_c*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_trna_trp_c+L_trp_DASH_L_c*L_trna_trp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2551" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2583" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2582" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2608" name="L_atp_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2609" name="L_trna_trp_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2610" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2611" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2612" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_190" name="Function for L_AFMID_5HNFK" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_L_E_T*kcat_A*scaling*L_5hoxnfkyn_c*AFMID_Km_Lfmkynr*AFMID_Km_nformanth/(AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*AFMID_Km_nformanth+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*L_5hoxnfkyn_c+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*L_Lfmkynr_c+AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*L_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2622" name="AFMID_Km_5hoxnfky" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2623" name="AFMID_Km_Lfmkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2624" name="AFMID_Km_nformanth" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2625" name="AFMID_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2626" name="L_5hoxnfkyn_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2627" name="L_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2628" name="L_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2629" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2630" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_191" name="Function for L_MAOA_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_L_E_T*kcat_B*scaling*L_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*L_srtn_c+MAO_Km_srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2640" name="L_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2641" name="L_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2642" name="MAOA_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2643" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2644" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2645" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2646" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_192" name="Function for L_Cinnavalinate formation" type="UserDefined" reversible="false">
      <Expression>
        k1*L_3hanthrn_c^e1*L_o2_c^e2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2005" name="L_3hanthrn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2335" name="L_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2654" name="e1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2655" name="e2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2656" name="k1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_193" name="Function for L_Tryptophan_Transport Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a5,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a5,Transporter_kcat_Trp,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,Lkynr_ex,Transporter_Km_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2666" name="L_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2667" name="L_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_2668" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_2669" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2670" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2671" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2672" name="Transporter_Km_Trp_Slc7a5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2673" name="Transporter_L_E_T_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2674" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_194" name="Function for L_IDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_L_E_T*L_trp_DASH_L_c*L_o2_c*IDO_Km_5htrp*IDO_Km_srtn*scaling/(IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+L_trp_DASH_L_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp*IDO_Km_srtn+L_5htrp_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_srtn+L_srtn_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp+L_trp_DASH_L_c*L_o2_c*IDO_Km_5htrp*IDO_Km_srtn+L_5htrp_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_srtn_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2686" name="IDO_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2687" name="IDO_Km_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2688" name="IDO_Km_srtn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2689" name="IDO_Km_trp_DASH_L" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2690" name="IDO_L_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2691" name="L_5htrp_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2692" name="L_o2_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2693" name="L_srtn_c" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2694" name="L_trp_DASH_L_c" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2695" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_2696" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_195" name="Function for L_QPRT" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_quln_c*L_prpp_c*L_h_c*scaling/(Ka*Kb+Kb*L_quln_c+Ka*L_prpp_c+L_quln_c*L_prpp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2663" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2665" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2433" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2708" name="L_h_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2709" name="L_prpp_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2710" name="L_quln_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2711" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2712" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_196" name="Function for L_KYNU_Lfmkyn" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_L_E_T*kcat_A*scaling*L_Lfmkynr_c*KYNU_Km_Lkynr*KYNU_Km_hLkynr/(KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*KYNU_Km_hLkynr+KYNU_Km_Lkynr*KYNU_Km_hLkynr*L_Lfmkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_hLkynr*L_Lkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2722" name="KYNU_Km_Lfmkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2723" name="KYNU_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2724" name="KYNU_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2725" name="KYNU_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2726" name="L_Lfmkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2727" name="L_Lkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2728" name="L_hLkynr_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2729" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2730" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_197" name="Function for L_AFMID_nform" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_L_E_T*kcat_A*scaling*L_nformanth_c*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky/(AFMID_Km_nformanth*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*L_nformanth_c+AFMID_Km_nformanth*AFMID_Km_5hoxnfky*L_Lfmkynr_c+AFMID_Km_nformanth*AFMID_Km_Lfmkynr*L_5hoxnfkyn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2740" name="AFMID_Km_5hoxnfky" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2741" name="AFMID_Km_Lfmkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2742" name="AFMID_Km_nformanth" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2743" name="AFMID_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2744" name="L_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2745" name="L_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2746" name="L_nformanth_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2747" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2748" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_198" name="Function for L_NMNAT1" type="UserDefined" reversible="false">
      <Expression>
        L_E_T*kcat*L_nicrnt_c*L_h_c*L_atp_c*scaling/(Km+L_nicrnt_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2685" name="Km" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2684" name="L_E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2758" name="L_atp_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2759" name="L_h_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2760" name="L_nicrnt_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2761" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2762" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_199" name="Function for L_ACMSD" type="UserDefined" reversible="false">
      <Expression>
        L_E_T*kcat*L_cmusa_c*scaling/(Km+L_cmusa_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2721" name="Km" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2550" name="L_E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2770" name="L_cmusa_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2771" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2772" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_200" name="Function for L_MAOA_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_L_E_T*kcat_B*scaling*L_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*L_trypta_c+MAO_Km_trypta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2780" name="L_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2781" name="L_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2782" name="MAOA_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2783" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2784" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2785" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2786" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_201" name="Function for L_AANAT_Srtn" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_L_E_T*kcat_B*scaling*L_srtn_c*AANAT_Km_trypta/(AANAT_Km_Srtn*AANAT_Km_trypta+AANAT_Km_Srtn*L_trypta_c+AANAT_Km_trypta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2794" name="AANAT_Km_Srtn" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2795" name="AANAT_Km_trypta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2796" name="AANAT_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2797" name="L_srtn_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2798" name="L_trypta_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2799" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2800" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_202" name="Function for L_AADAT_hLkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat1*AADAT_kcat_hLkynr*scaling*L_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*L_Lkynr_c+AADAT_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2808" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2809" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2810" name="AADAT_L_E_T_kat1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2811" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2812" name="L_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2813" name="L_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2814" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_203" name="Function for L_IDO_SRTN" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_L_E_T*L_srtn_c*L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*scaling/(IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_srtn_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_o2_c*IDO_Km_srtn*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_5htrp_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_trp_DASH_L+L_trp_DASH_L_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp+L_srtn_c*L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_5htrp_c*L_o2_c*IDO_Km_srtn*IDO_Km_trp_DASH_L+L_trp_DASH_L_c*L_o2_c*IDO_Km_srtn*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2826" name="IDO_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2827" name="IDO_Km_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2828" name="IDO_Km_srtn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2829" name="IDO_Km_trp_DASH_L" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2830" name="IDO_L_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2831" name="L_5htrp_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2832" name="L_o2_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2833" name="L_srtn_c" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2834" name="L_trp_DASH_L_c" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2835" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_2836" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_204" name="Function for L_INMT_methyltrypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_L_E_T*kcat_A*scaling*L_nmtrpta_c*IMNT_Km_srtn*IMNT_Km_trypta/(IMNT_Km_nmtrpta*IMNT_Km_srtn*IMNT_Km_trypta+IMNT_Km_srtn*IMNT_Km_trypta*L_nmtrpta_c+IMNT_Km_nmtrpta*IMNT_Km_trypta*L_srtn_c+IMNT_Km_nmtrpta*IMNT_Km_srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2823" name="IMNT_Km_nmtrpta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2662" name="IMNT_Km_srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2848" name="IMNT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2849" name="IMNT_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2850" name="L_nmtrpta_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2851" name="L_srtn_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2852" name="L_trypta_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2853" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2854" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_205" name="Function for L_INMT_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_L_E_T*kcat_A*scaling*L_srtn_c*IMNT_Km_nmtrpta*IMNT_Km_trypta/(IMNT_Km_srtn*IMNT_Km_nmtrpta*IMNT_Km_trypta+IMNT_Km_nmtrpta*IMNT_Km_trypta*L_srtn_c+IMNT_Km_srtn*IMNT_Km_trypta*L_nmtrpta_c+IMNT_Km_srtn*IMNT_Km_nmtrpta*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2864" name="IMNT_Km_nmtrpta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2865" name="IMNT_Km_srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2866" name="IMNT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2867" name="IMNT_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2868" name="L_nmtrpta_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2869" name="L_srtn_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2870" name="L_trypta_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2871" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_2872" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_206" name="Function for L_AADAT_hLkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat2*AADAT_kcat_hLkynr*scaling*L_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*L_Lkynr_c+AADAT_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2824" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2779" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2882" name="AADAT_L_E_T_kat2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2883" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2884" name="L_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2885" name="L_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2886" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_207" name="Function for L_AADAT_hLkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat3*AADAT_kcat_hLkynr*scaling*L_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*L_Lkynr_c+AADAT_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2894" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2895" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2896" name="AADAT_L_E_T_kat3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2897" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2898" name="L_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2899" name="L_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2900" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_208" name="Function for L_AADAT_Lkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat2*AADAT_kcat_Lkynr*scaling*L_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*L_hLkynr_c+AADAT_Km_hLkynr*L_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2908" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2909" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2910" name="AADAT_L_E_T_kat2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2911" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2912" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2913" name="L_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2914" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_209" name="Function for L_AADAT_Lkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat3*AADAT_kcat_Lkynr*scaling*L_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*L_hLkynr_c+AADAT_Km_hLkynr*L_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2922" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2923" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2924" name="AADAT_L_E_T_kat3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2925" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2926" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2927" name="L_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2928" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_210" name="Function for L_MAOB_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_L_E_T*kcat_B*scaling*L_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*L_trypta_c+MAO_Km_trypta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2936" name="L_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2937" name="L_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2938" name="MAOB_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2939" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2940" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2941" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2942" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_211" name="Function for L_MAOB_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_L_E_T*kcat_B*scaling*L_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*L_srtn_c+MAO_Km_srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2950" name="L_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2951" name="L_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2952" name="MAOB_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2953" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2954" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2955" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2956" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_212" name="Function for L_AANAT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_L_E_T*kcat_B*scaling*L_trypta_c*AANAT_Km_Srtn/(AANAT_Km_trypta*AANAT_Km_Srtn+AANAT_Km_trypta*L_srtn_c+AANAT_Km_Srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2964" name="AANAT_Km_Srtn" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2965" name="AANAT_Km_trypta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2966" name="AANAT_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2967" name="L_srtn_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2968" name="L_trypta_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2969" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_2970" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_213" name="Function for L_TPH2" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*L_thbpt*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_o2_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2979" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_2980" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2981" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2982" name="L_o2_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2983" name="L_thbpt" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2984" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2985" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_2986" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_214" name="Function for L_Tryptophan_Transport Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a8,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a8,Transporter_kcat_Trp,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,Lkynr_ex,Transporter_Km_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2996" name="L_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_2997" name="L_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_2998" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_2999" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_3000" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3001" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_3002" name="Transporter_Km_Trp_Slc7a8" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_3003" name="Transporter_L_E_T_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_3004" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_215" name="Function for L_Lkynr_Transporter_Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a5,Transporter_kcat_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,TRP_ex,Transporter_Km_Trp_Slc7a5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3014" name="L_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3015" name="L_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_3016" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_3017" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_3018" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_3019" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_3020" name="Transporter_Km_Trp_Slc7a5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_3021" name="Transporter_L_E_T_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_3022" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_216" name="Function for L_Lkynr_Transporter_Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a8,Transporter_kcat_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,TRP_ex,Transporter_Km_Trp_Slc7a8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3032" name="L_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3033" name="L_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_3034" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_3035" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_3036" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_3037" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_3038" name="Transporter_Km_Trp_Slc7a8" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_3039" name="Transporter_L_E_T_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_3040" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="Enzyme competition for 2 reversible reactions" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#B_COPASI146">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:21:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (B_E_T*kcat_a*A/KmA-B_E_T*kcat_p*Pa/KmPa)/(1+A/KmA+B/KmB+Pa/KmPa+Pb/KmPB)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1639" name="B_E_T" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_1640" name="kcat_a" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_1641" name="A" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_1642" name="KmA" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_1643" name="kcat_p" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_1644" name="Pa" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_1645" name="KmPa" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_1646" name="B" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_1647" name="KmB" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_1648" name="Pb" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_1649" name="KmPB" order="10" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Tryptophan metabolism Turnover" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#B_COPASI1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:31:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-05-27T15:02:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml"/>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_3" name="Brain" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_4" name="Blood" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_5" name="Liver" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_110" name="B_3hanthrn_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="B_5hoxnfkyn_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_112" name="B_5htrp_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:31:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="B_5hxkyn_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T15:14:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_114" name="B_Lfmkynr_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:31:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="B_Lkynr_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:32:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_116" name="B_ahcys_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="B_akg_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_118" name="B_ala_DASH_L_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="B_amet_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_120" name="B_anth_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="B_cmusa_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_122" name="B_dhbpt_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_122">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:26:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="B_for_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_124" name="B_glu_DASH_L_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="B_hLkynr_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_126" name="B_id3acald_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_126">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="B_indpyr_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T11:23:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_128" name="B_nmtrpta_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_128">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="B_quln_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T08:39:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_130" name="B_srtn_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_130">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="B_thbpt" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_132" name="B_trna_trp_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_132">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="B_trp_DASH_L_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_133">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_134" name="B_trp_L_trna_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_134">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="B_trypta_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_135">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_136" name="B_amp_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_136">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="B_atp_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_137">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:38:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_138" name="B_co2_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_138">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="B_h2o2_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_139">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_140" name="B_h2o_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_140">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="B_h_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_141">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T14:37:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_142" name="B_nadp_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_142">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="B_nadph_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_143">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:33:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_144" name="B_nh4_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_144">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="B_o2_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_145">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:35:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_146" name="B_o2s_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_146">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="B_ppi_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_147">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_148" name="B_Cinnavalininate_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_148">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="B_kynate_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_149">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:28:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="B_nicrnt_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_151">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_152" name="B_prpp_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_152">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_153" name="B_nformanth_c" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_153">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_154" name="B_dnad_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_154">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:32:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="B_am6sa_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_155">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_156" name="B_5hoxindact_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_156">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_157" name="B_Nacsertn_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_157">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-09T15:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_158" name="B_accoa_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_158">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_159" name="B_coa_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_159">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T09:05:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_160" name="B_Xanthurenate" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_160">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_161" name="B_f5hoxkyn_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_161">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_162" name="B_nndmtrpta_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_162">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_163" name="B_nmsrtn_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_163">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:57:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_164" name="B_Nactrypta_c" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_164">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_150" name="TRP_ex" simulationType="fixed" compartment="Compartment_4">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_150">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T14:37:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_165" name="Lkynr_ex" simulationType="reactions" compartment="Compartment_4">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_165">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:45:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_166" name="L_3hanthrn_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_166">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_167" name="L_5hoxnfkyn_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_167">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_168" name="L_5htrp_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_168">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:31:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_169" name="L_5hxkyn_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_169">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T15:14:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_170" name="L_Lfmkynr_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_170">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:31:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_171" name="L_Lkynr_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_171">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:32:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_172" name="L_ahcys_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_172">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_173" name="L_akg_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_173">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_174" name="L_ala_DASH_L_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_174">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_175" name="L_amet_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_175">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_176" name="L_anth_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_176">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_177" name="L_cmusa_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_177">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_178" name="L_dhbpt_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_178">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:26:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_179" name="L_for_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_179">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_180" name="L_glu_DASH_L_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_180">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_181" name="L_hLkynr_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_181">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_182" name="L_id3acald_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_182">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_183" name="L_indpyr_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_183">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T11:23:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_184" name="L_nmtrpta_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_184">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_185" name="L_quln_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_185">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T08:39:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_186" name="L_srtn_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_186">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_187" name="L_thbpt" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_187">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_188" name="L_trna_trp_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_188">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_189" name="L_trp_DASH_L_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_189">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_190" name="L_trp_L_trna_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_190">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_191" name="L_trypta_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_191">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_192" name="L_amp_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_192">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_193" name="L_atp_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_193">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:38:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_194" name="L_co2_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_194">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_195" name="L_h2o2_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_195">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_196" name="L_h2o_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_196">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_197" name="L_h_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_197">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T14:37:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_198" name="L_nadp_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_198">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_199" name="L_nadph_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_199">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:33:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_200" name="L_nh4_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_200">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_201" name="L_o2_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_201">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:35:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_202" name="L_o2s_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_202">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_203" name="L_ppi_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_203">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_204" name="L_Cinnavalininate_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_204">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_205" name="L_kynate_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_205">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:28:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_206" name="L_nicrnt_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_206">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_207" name="L_prpp_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_207">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_208" name="L_nformanth_c" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_208">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_209" name="L_dnad_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_209">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:32:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_210" name="L_am6sa_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_210">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_211" name="L_5hoxindact_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_211">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_212" name="L_Nacsertn_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_212">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-09T15:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_213" name="L_accoa_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_213">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_214" name="L_coa_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_214">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T09:05:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_215" name="L_Xanthurenate" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_215">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_216" name="L_f5hoxkyn_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_216">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_217" name="L_nndmtrpta_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_217">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_218" name="L_nmsrtn_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_218">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:57:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_219" name="L_Nactrypta_c" simulationType="fixed" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_219">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_3" name="scaling" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:09:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="AADAT_B_E_T_kat1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="AADAT_B_E_T_kat2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="AADAT_B_E_T_kat3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="AADAT_Km_hLkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:09:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="AADAT_Km_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:08:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="AANAT_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:11:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="AANAT_Km_Srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:11:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="AANAT_Km_trypta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:07:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="AFMID_B_E_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="AFMID_Km_5hoxnfky" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:13:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="AFMID_Km_Lfmkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:07:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="AFMID_Km_nformanth" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:17:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="DDC_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="DDC_Km_5htrp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="DDC_Km_trp_DASH_L" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="IDO_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:09:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="IDO_Km_trp_DASH_L" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:06:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="IDO_Km_5htrp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:20:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="IDO_Km_srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:20:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="IMNT_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="IMNT_Km_srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:07:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="IMNT_Km_trypta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:21:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="IMNT_Km_nmtrpta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:22:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="KYNU_Km_hLkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Transporter_B_E_T_Slc7a8" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="KYNU_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="KYNU_Km_Lfmkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:55:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="KYNU_Km_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:55:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Transporter_Km_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:56:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Transporter_Km_Trp_Slc7a8" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Transporter_B_E_T_Slc7a5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Transporter_Km_Trp_Slc7a5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="MAOA_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:59:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="MAOB_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:59:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="MAO_Km_srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:00:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="MAO_Km_trypta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:00:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="IDO_Km_O2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:09:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="AADAT_kcat_hLkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:47:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="AADAT_kcat_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:48:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Transporter_kcat_Trp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T16:12:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="Transporter_kcat_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T16:13:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="AADAT_L_E_T_kat1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="AADAT_L_E_T_kat2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="AADAT_L_E_T_kat3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="AANAT_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:11:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="AFMID_L_E_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="DDC_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="IDO_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:09:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="IMNT_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="Transporter_L_E_T_Slc7a8" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="KYNU_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Transporter_L_E_T_Slc7a5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="MAOA_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:59:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="MAOB_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:59:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_84" name="B_IL4I1_kcat_set_to_1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15383589"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.2"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00677"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>have to searched for kcat rate and confirm Km

Km for O2 is taken from Neurospora crassa, PubMed:     4260304</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3187" name="kcat" value="1"/>
          <Constant key="Parameter_3188" name="B_E_T" value="2015.68"/>
          <Constant key="Parameter_3189" name="Ka" value="6.5"/>
          <Constant key="Parameter_3190" name="Kb" value="1.2"/>
          <Constant key="Parameter_3191" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_135">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1729">
              <SourceParameter reference="Parameter_3188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1730">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1731">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1732">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1733">
              <SourceParameter reference="Parameter_3189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1734">
              <SourceParameter reference="Parameter_3190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1735">
              <SourceParameter reference="Parameter_3187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1736">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="B_TDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.11"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km and kcat taken from 18370401 no other reference 

sensitivity analysis</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3192" name="B_E_T" value="3092.42"/>
          <Constant key="Parameter_3193" name="Ka" value="0.222"/>
          <Constant key="Parameter_3194" name="Kb" value="0.037"/>
          <Constant key="Parameter_3195" name="kcat" value="1.4"/>
          <Constant key="Parameter_3196" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_136">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1722">
              <SourceParameter reference="Parameter_3192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1745">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1746">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1747">
              <SourceParameter reference="Parameter_3193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1748">
              <SourceParameter reference="Parameter_3194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1749">
              <SourceParameter reference="Parameter_3195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1750">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="B_DDC_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4991409"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00685"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>km and kcat values taken from 4991409 (pig)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3197" name="kcat_B" value="0.38"/>
          <Constant key="Parameter_3198" name="DDC_B_E_T" value="1"/>
          <Constant key="Parameter_3199" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_3200" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3201" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_137">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1758">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1759">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1760">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1761">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1762">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1763">
              <SourceParameter reference="Parameter_3197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1764">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="B_KYNU_Lkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00987"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>PMID: 19143568 at 37°C

L-kynurinine Km 0.495mM kcat 0.23/s
3-OH-DL-Kynurinine Km 0.028mM  kcat 3.5/s

taking these values

Values are consitent with 17300176

Km 3-OH-kynurinine 0.003 to 0.049mM according to 17300176

values from 457635 at 25°C:

Km 0.77mM L-kynurenine
Km 0.013 3-OH-kynurinine

kcat: L-kyn:3-OH-3Fkyn 100:1038:5.6</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3202" name="kcat_A" value="0.23"/>
          <Constant key="Parameter_3203" name="KYNU_B_E_T" value="1"/>
          <Constant key="Parameter_3204" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3205" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3206" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3207" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_138">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1774">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1775">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1776">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1777">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1778">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1779">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1780">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1781">
              <SourceParameter reference="Parameter_3202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1782">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="B_TPH1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17539919"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15663479"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10587452"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.16.4"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01814"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km ranges from 0.0075 to 0.043 in human are usually in the range of 0.01 to 0.015mM for TPH1 and 0.04 to 0.07 for TPH2

Km and kcat for TPH1 taken from 15663479 (human protein expressed in E.coli) TPH2 Km in this reference 0.04mM kcat 0.2/s

they are comparable to values of human protein expresssed in COS7 cells (17539919) with 0.015 for TPH1 and 0.077 for TPH2

hat problems to cofirm values for rabbit

Km values for O2 is taken from human (PubMed:     19816759)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_112" stoichiometry="1"/>
          <Product metabolite="Metabolite_122" stoichiometry="1"/>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3208" name="kcat" value="0.57"/>
          <Constant key="Parameter_3209" name="B_E_T" value="336.486"/>
          <Constant key="Parameter_3212" name="Ka" value="0.0228"/>
          <Constant key="Parameter_3211" name="Kb" value="0.109"/>
          <Constant key="Parameter_3213" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_139">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1773">
              <SourceParameter reference="Parameter_3209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1792">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1793">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1794">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1795">
              <SourceParameter reference="Parameter_3212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1796">
              <SourceParameter reference="Parameter_3211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1797">
              <SourceParameter reference="Parameter_3208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1798">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="B_AADAT_Lkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.6.1.7"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01956"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM range 2-Oxoglutarate 0.62 - 1.2mM
KM range L-Kyn L-Kynurenine 4.7 (pH 7.4) - 27mM (pH 8)
kcat 7.67 (2-Oxoglut) 9.76 (L-Kyn) ph 7.5 37°C  PMID: 18620547
changed PMID from 15606768 to 18620547 because meassurment was done at 45°C



the follwoing findings may be used for inteerpretation of deseases:


(8637415:
vmax for 2-Oxoglutarat in human brain:

 frontal cortex 3.38 pmol/h/mg KAT1 and 1.14 KAT2
temporal cortex 4.34 KAT1 and 1.27 in KAT2

in down-syndrome patients:

frontal cortex 14.7% KAT1 and 90.6 %KAT2
temporal cortex 29.9% KAT1 and 86.3% KAT2


concentration of kynurenate:

0.208pmol/mg wet weight  frontal cortex
0.410pmol/mg wet weight temporal cortex

increase in down syndrome patients for kynurenate reason is unclear:

325% frontal cortex
151% temporal cortex)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3210" name="AADAT_B_E_T_kat1" value="1"/>
          <Constant key="Parameter_3214" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3215" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3216" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_3217" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_140">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1726">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1807">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1808">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1809">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1810">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1811">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1812">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="B_AFMID_lfmkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01959"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209258"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM for N-formyanthranilic acid from 0.21(4190298 )-0.57(PMID84781)

KM for N-formy-kynurenin from 0.05 (pmid4190298 ) 0.06 (PMID84781) to 0.18 (pmid4135014)

KM for 5H-kynurenin 0.4 (PMID: 4135014)

vmax rat brain 4.74 unit/mg for 5HFkyn and 4.66 for FKyn (pmid4135014) U=1nmol/min 

vmax rat liver 0.76 units/mg for formylanthranilic acid U=1mikromol/60min --&gt; 12.66nmol/min/mg PMID: 4190298 --&gt;
specific activity for purified enzyme 13.57/s for  formylanthranilic acid

relativ activity for formyl-kynurinine (100%) to formylanthranilic acid (13.5%)

specifc activity for N-formyl-kynurenin was calculated to be 0.477/s but purification was just 170fold (pmid4135014) compared to  1800fold in PMID: 4190298</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3218" name="kcat_A" value="100"/>
          <Constant key="Parameter_3219" name="AFMID_B_E_T" value="1"/>
          <Constant key="Parameter_3220" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_3221" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3222" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_3223" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_141">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1822">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1823">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1824">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1825">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1826">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1827">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1828">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1829">
              <SourceParameter reference="Parameter_3218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1830">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="B_KMO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10672018 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.13.9"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01960"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>kcat 2.2/s and  Km values from 10672018</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
          <Product metabolite="Metabolite_142" stoichiometry="1"/>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3224" name="B_E_T" value="623.787"/>
          <Constant key="Parameter_3225" name="Ka" value="0.1"/>
          <Constant key="Parameter_3226" name="Kb" value="0.071"/>
          <Constant key="Parameter_3227" name="Kc" value="0.153"/>
          <Constant key="Parameter_3228" name="kcat" value="2.2"/>
          <Constant key="Parameter_3229" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_142">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1841">
              <SourceParameter reference="Parameter_3224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1842">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1843">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1844">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1845">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1846">
              <SourceParameter reference="Parameter_3225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1847">
              <SourceParameter reference="Parameter_3226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1848">
              <SourceParameter reference="Parameter_3227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1849">
              <SourceParameter reference="Parameter_3228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1850">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="B_INMT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3949799"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9852119"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02174"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.1.1.49"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:441354"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for trytamine rat liver 5.1 and 5.7 pmol/min/mg and Km  betwenn 32.5 and 35.6mM (11322482) the Kms are quite high the units might be wrong

km for rabbit from 9852119 in mM:

Trypta 0.27
Methyl-Trypta 0.086
Serotonin 1.38 

activity Trypta:Methyl-Trypta_Serotonin 100:44:11

IC50 value for NN-dimethyl-tryptamin is 0.067mM



vmax rabbit liver 2.3 pmol/min/mg and kcat 0.4 to 0.45/s (3949799) Km 0.12 to 0.3mM

vmax for human lung 0.86nmol/h/mg for NMT and 0.71 for NMS (284808) Km for endogenous human lung (0.43mM for Trypta and 1.11 mM for Serotonin) and endogenous rabbit lung protein(0.34 for Trypta and 1mM for Serotonin) in this article are simmiliar in contrast to 10552930 where the Km for the recombinant expressed in Cos-1 cells is 10fold higher maybe there is something wrong with the recombinant enzyme however in 284808 are the maximal activities for NMT and NMS production similiar in contrast to  9852119 where there is a 10fold difference

take Km values from 9852119 (rabbit) as well as relative activities kcat taken from 3949799</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
          <Product metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3234" name="kcat_A" value="0.4"/>
          <Constant key="Parameter_3233" name="IMNT_B_E_T" value="1"/>
          <Constant key="Parameter_3232" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_3230" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_3231" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_3235" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_143">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1721">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1861">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1862">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1863">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1864">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1865">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1866">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1867">
              <SourceParameter reference="Parameter_3234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1868">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="B_HAAO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3112306 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:12672479"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.6"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02665"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:439367"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax rat liver 31.9 nmol/min/mg
vmax rat brain 0.0059 nmol/min/mg both pmid 3112306 
kcat for 235 fold purification calculated to be 4.8/s

km for rat 0.003 mM

km for bos taurus 0.016 to 0.021 mM and kcat 64  from 12672479 taken these values Ki values also from this reference

Ki for B_quln_c 2mM

KI for B_anth_c 4.9mM

removed inhibition because anth is set fixed and 0 and the Ki is outside the physiological concentration of quinolinic acid

sensitivity analysis?</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_110" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3236" name="B_E_T" value="1061.39"/>
          <Constant key="Parameter_3239" name="Ka" value="0.016"/>
          <Constant key="Parameter_3238" name="Kb" value="0.615"/>
          <Constant key="Parameter_3237" name="kcat" value="64"/>
          <Constant key="Parameter_3240" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_144">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1821">
              <SourceParameter reference="Metabolite_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1724">
              <SourceParameter reference="Parameter_3236"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1878">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1879">
              <SourceParameter reference="Parameter_3239"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1880">
              <SourceParameter reference="Parameter_3238"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1881">
              <SourceParameter reference="Parameter_3237"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1882">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="B_KYNU_hLkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02668"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>PMID: 19143568

L-kynurinine Km 0.495mM kcat 0.23/s
3-OH-DL-Kynurinine Km 0.028mM  kcat 3.5/s

taking these values

Values are consitent with 17300176

Km 3-OH-kynurinine 0.003 to 0.049mM according to 17300176

values from 457635:

Km 0.77mM L-kynurenine
Km 0.013 3-OH-kynurinine

kcat: L-kyn:3-OH-3Fkyn 100:1038:5.6</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_110" stoichiometry="1"/>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3241" name="kcat_A" value="3.5"/>
          <Constant key="Parameter_3242" name="KYNU_B_E_T" value="1"/>
          <Constant key="Parameter_3243" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3244" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3245" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3246" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_145">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1892">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1893">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1894">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1895">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1896">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1897">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1898">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1899">
              <SourceParameter reference="Parameter_3241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1900">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="B_DDC_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18547057"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02701"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>km for human 0.0054 (5309585) to 0.016(2117047) to 0.053mM (PMID: 20403077 (Control 0.047))

no reasonable kcat available for human value taken from sus scrofa between 0.011/s, 1.4/s ( 4991409)  and  2/s (18547057 and 11085948) km 0.038 (anaerobic)  and 0.049 to 0.155 mM (aerobic)  

vmax for human neuroblastoma cells 426 pmol/min/mg (20403077)

sensitivity analysis on both Km and kcat</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_130" stoichiometry="1"/>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3247" name="kcat_B" value="2"/>
          <Constant key="Parameter_3248" name="DDC_B_E_T" value="1"/>
          <Constant key="Parameter_3249" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_3250" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3251" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_146">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1890">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1891">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1910">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1911">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1912">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1913">
              <SourceParameter reference="Parameter_3247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1914">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="B_IDO_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_96">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02702"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:685239"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 0.042 from PMID: 19737010 
Km for tryptophan range from 0.006 mM to  0.21mM most values are in the range of 0.02mM

kcat rate between 1.4 to 3.5/s

vmax from rabbit small intestine 0.00561mikromol/min/mg (PMID 26687) kcat calculated from 500 fold enriched protein calculated to be 1.9/s at 37°C

kcat at 24°C and Km values from PMID 26687:

L-Tryptophan 1.65/s and 0.045mM
5-Hydroxy-L-Trytophan 0.043/s and 0.02mM
Tryptamine 0.0048/s 0.075mM
Serotonin 0.002/s and 0.1mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_112" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3252" name="kcat" value="0.043"/>
          <Constant key="Parameter_3253" name="IDO_B_E_T" value="1"/>
          <Constant key="Parameter_3254" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_3255" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_3256" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_3257" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3258" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_147">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1926">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1927">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1928">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1929">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1930">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1931">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1932">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1933">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1934">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1935">
              <SourceParameter reference="Parameter_3252"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1936">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="B_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_97">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11676605"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:6.1.1.2"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03664"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:653740"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for ATP 0.088mM

Km for Tryptophan between 0.0074 (11676605) and 0.0028(4358951)

kcat 1.1/s taken from 11676605 

kcat calculated from 4358951 is 2.4/s (human endogenous)

vmax for human placenta 1.4nmol/min/mg (4358951)

have to decide whether to set 1 or 2 substrates constant</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_136" stoichiometry="1"/>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3259" name="kcat" value="1.1"/>
          <Constant key="Parameter_3260" name="B_E_T" value="18644.7"/>
          <Constant key="Parameter_3261" name="Ka" value="0.0074"/>
          <Constant key="Parameter_3262" name="Kb" value="0.0011"/>
          <Constant key="Parameter_3263" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_148">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1925">
              <SourceParameter reference="Parameter_3260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1723">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1772">
              <SourceParameter reference="Metabolite_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1948">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1949">
              <SourceParameter reference="Parameter_3261"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1950">
              <SourceParameter reference="Parameter_3262"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1951">
              <SourceParameter reference="Parameter_3259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1952">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="B_AFMID_5HNFK" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_98">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4135014"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04911"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209255"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM for N-formylanthranilic acid from 0.21(4190298 )-0.57(PMID84781)

KM for N-formyl-kynurenin from 0.05 (pmid4190298 ) 0.06 (PMID84781) to 0.18 (pmid4135014)

KM for 5H-kynurenin 0.4 (PMID: 4135014)

vmax rat brain 4.74 unit/mg for 5HFkyn and 4.66 for FKyn (pmid4135014) U=1nmol/min --&gt; 4.74nmol/min/mg and 4.66nmol/min/mg

vmax rat liver 0.76 units/mg for formylanthranilic acid U=1mikromol/60min --&gt; 12.66nmol/min/mg PMID: 4190298 --&gt;

specific activity for purified enzyme 13.57/s for  formylanthranilic acid

relativ activity for formyl-kynurinine (100%) to formylanthranilic acid (13.5%)

specifc activity for N-formyl-kynurenin was calculated to be 0.477/s but purification was just 170fold (pmid4135014) compared to  1800fold in PMID: 4190298</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_114" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3264" name="kcat_A" value="100"/>
          <Constant key="Parameter_3265" name="AFMID_B_E_T" value="1"/>
          <Constant key="Parameter_3266" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_3267" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3268" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_3278" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_149">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1962">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1963">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1964">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1965">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1966">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1967">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1968">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1969">
              <SourceParameter reference="Parameter_3264"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1970">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="B_Quinolic Acid formation (spontaneous)" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15656614"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3172" name="k1" value="0.00025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_3172"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="B_MAOA_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_100">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11754741"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2021654"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02173"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>value for serotonin taken from 15848762 (human) compared to 

Km 0.44 and kcat 12.5/s for rat from 11754741 is consistent

values for tryptamine  taken from 11754741 (rat)

for 5-hydroxykynuramine taken values for kynuramine from 2021654

Km for oxygen 0.006mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3173" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_3174" name="MAOA_B_E_T" value="1"/>
          <Constant key="Parameter_3175" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_3176" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_3177" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_150">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1980">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1981">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1982">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1983">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1984">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1985">
              <SourceParameter reference="Parameter_3173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1986">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="B_Cinnavalinate formation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_101">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2949752"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17476692"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.11.1.6"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02670"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>k calculated from 17476692 enhanced by SOD and SOD+Catalase up to 10fold

sensitivity analysis?</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_110" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="4"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_148" stoichiometry="1"/>
          <Product metabolite="Metabolite_146" stoichiometry="2"/>
          <Product metabolite="Metabolite_139" stoichiometry="2"/>
          <Product metabolite="Metabolite_141" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3178" name="e1" value="2"/>
          <Constant key="Parameter_3179" name="e2" value="4"/>
          <Constant key="Parameter_3180" name="k1" value="5.6667e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_151">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1725">
              <SourceParameter reference="Metabolite_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1922">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1994">
              <SourceParameter reference="Parameter_3178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1995">
              <SourceParameter reference="Parameter_3179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1996">
              <SourceParameter reference="Parameter_3180"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="B_Tryptophan_Transport Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_102">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2872885"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT1_HUMAN"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT2_HUMAN"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax from Salter 1986 for rat liver  198nmol/h/mg  calculated kcat from this in comparison to HAAO

Km from uniprot for LAT1_HUMAN 0.019
Km from uniprot for LAT2_HUMAN 0.0573</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3181" name="Transporter_B_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_3279" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3280" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_2616" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_152">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2006">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2007">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2008">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2009">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2010">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2011">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2012">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2013">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2014">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="B_IDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_103">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 0.042 from PMID: 19737010 
Km for tryptophan range from 0.006 mM to  0.21mM most values are in the range of 0.02mM

Km for 5-hydroxytryptophan 0.007 according to 18370401

kcat rate between 1.4 to 3.5/s

vmax from rabbit small intestine 0.00561mikromol/min/mg (PMID 26687) kcat calculated from 500 fold enriched protein calculated to be 1.9/s at 37°C

kcat at 24°C and Km values from PMID 26687:

L-Tryptophan 1.65/s and 0.045mM
5-Hydroxy-L-Trytophan 0.043/s and 0.02mM
Tryptamine 0.0048/s 0.075mM
Serotonin 0.002/s and 0.1mM


 
19290871 Km values for IDO ferric form 0.222mM and for ferrous form which is physiologically more relevant 0.01mM

sensitivity analysis</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_112" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2615" name="kcat" value="1.65"/>
          <Constant key="Parameter_2614" name="IDO_B_E_T" value="1"/>
          <Constant key="Parameter_2613" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2612" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2611" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2610" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2609" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_153">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2026">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2027">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2028">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2029">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2030">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2031">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2032">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2033">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2034">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2035">
              <SourceParameter reference="Parameter_2615"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2036">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="B_QPRT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_104">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17868694"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03348"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.4.2.19"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:693620"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for human brain 0.04 pmol/h/mg for human liver 0.12 nmol/h/mg (3139649) Km in this reference 0.0025-0.0027 mM for quinolinate and 0.021-0.025mM for PRPP kcat caluclated for purified enzyme from this artcile is 0.038/s


kinetic parameters for human enzyme purified from E.coli (17868694)

Km 0.022mM for quinolinic acid and 0.023mM for PRPP kcat for QA was 0.255/s

Km is different by 10fold for the two references including this into sensitivity analysis

changed to two three substrate kinetic with s3 constant if we leave this we have to set PRPP conc. accordingly</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_152" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2608" name="kcat" value="0.255"/>
          <Constant key="Parameter_2607" name="B_E_T" value="9067.8"/>
          <Constant key="Parameter_2606" name="Ka" value="0.022"/>
          <Constant key="Parameter_2605" name="Kb" value="0.023"/>
          <Constant key="Parameter_2604" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_154">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2025">
              <SourceParameter reference="Parameter_2607"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1961">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2024">
              <SourceParameter reference="Metabolite_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2048">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2049">
              <SourceParameter reference="Parameter_2606"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2050">
              <SourceParameter reference="Parameter_2605"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2051">
              <SourceParameter reference="Parameter_2608"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2052">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="B_KYNU_Lfmkyn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_105">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:118164 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03936"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>PMID: 19143568

L-kynurinine Km 0.495mM kcat 0.23/s
3-OH-DL-Kynurinine Km 0.028mM  kcat 3.5/s

taking these values

Values are consitent with 17300176

Km 3-OH-kynurinine 0.003 to 0.049mM according to 17300176

values from 457635:

Km 0.77mM L-kynurenine
Km 0.013 3-OH-kynurinine

kcat: L-kyn:3-OH-3Fkyn 100:1038:5.6

kcat for 3-F-Kyn was set to low Km was taken from Pseudomonas Km for L-Kyn and 3-OH-Kyn are similiar to human</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2603" name="kcat_A" value="0.013"/>
          <Constant key="Parameter_2602" name="KYNU_B_E_T" value="1"/>
          <Constant key="Parameter_2601" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2600" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2599" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2598" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_155">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2062">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2063">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2064">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2065">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2066">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2067">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2068">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2069">
              <SourceParameter reference="Parameter_2603"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2070">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="B_AFMID_nform" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_106">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00988"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM for N-formylanthranilic acid from 0.211(4190298 )-0.57(PMID84781)

KM for N-formyl-kynurenin from 0.05 (pmid4190298 ) 0.06 (PMID84781) to 0.18 (pmid4135014)

KM for 5H-kynurenin 0.4 (PMID: 4135014)

vmax rat brain 4.74 unit/mg for 5HFkyn and 4.66 for FKyn (pmid4135014) U=1nmol/min 

vmax rat liver 0.76 units/mg for formylanthranilic acid U=1mikromol/60min --&gt; 12.66nmol/min/mg PMID: 4190298 --&gt;
specific activity for purified enzyme 13.57/s for  formylanthranilic acid

relativ activity for formyl-kynurinine (100%) to formylanthranilic acid (13.5%)

specifc activity for N-formyl-kynurenin was calculated to be 0.477/s but purification was just 170fold (pmid4135014) compared to  1800fold in PMID: 4190298</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_114" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2597" name="kcat_A" value="13.57"/>
          <Constant key="Parameter_2596" name="AFMID_B_E_T" value="1"/>
          <Constant key="Parameter_2595" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_2594" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2593" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_2592" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_156">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2080">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2081">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2082">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2083">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2084">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2085">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2086">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2087">
              <SourceParameter reference="Parameter_2597"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2088">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="B_NMNAT1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_107">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17402747"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.7.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03005"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km and kcat values taken from 17402747</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_154" stoichiometry="1"/>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2591" name="B_E_T" value="2883.7"/>
          <Constant key="Parameter_2590" name="kcat" value="42.9"/>
          <Constant key="Parameter_2589" name="Km" value="0.0677"/>
          <Constant key="Parameter_2588" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_157">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1728">
              <SourceParameter reference="Parameter_2591"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2004">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2098">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2099">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2100">
              <SourceParameter reference="Parameter_2589"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2101">
              <SourceParameter reference="Parameter_2590"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2102">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="B_ACMSD" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_108">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17288562"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.45"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04323"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:679800"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>kinetic values meassured at 25°C with recombinant enzyme
for verification of simulation results of downregulation of ACMSD one can use PMID: 15229365 
no tissue vmax available

expression ratio of 1300 : 30 : 1 in kidney, liver and
brain for ACMSD1 respectively (PMID: 17288562) messured using  real time PCR

Ki calculated from PMID: 17288562 

picolinic acid: 0.82 mM
kynurenic acid: 2.18 mM
quinolinic acid: 2mM
 They are quite high and most probably not of physiological relevance 
physiological concentration of quinolinic acid is in the nM range 

removed inhibition as kynurenic acid is constant and Ki for quinolic acid is quite high</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2587" name="B_E_T" value="516.982"/>
          <Constant key="Parameter_2586" name="kcat" value="1"/>
          <Constant key="Parameter_2585" name="Km" value="0.0065"/>
          <Constant key="Parameter_2584" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_158">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1820">
              <SourceParameter reference="Parameter_2587"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2003">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2110">
              <SourceParameter reference="Parameter_2585"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2111">
              <SourceParameter reference="Parameter_2586"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2112">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="B_MAOA_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_109">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15848762 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02908"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>value for serotonin taken from 15848762 (human) compared to 

Km 0.44 and kcat 12.5/s for rat from 11754741 is consistent

values for tryptamine taken from 11754741 (rat)

for 5-hydroxykynuramine taken values for kynuramine from 2021654 

Km for oxygen 0,006mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_156" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2583" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_2582" name="MAOA_B_E_T" value="1"/>
          <Constant key="Parameter_2581" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2580" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2579" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_159">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2120">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2121">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2122">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2123">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2124">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2125">
              <SourceParameter reference="Parameter_2583"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2126">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="B_AANAT_Srtn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_110">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18771288"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15477086"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02911"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.3.1.87"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>kcat serotonin 17.3 - 25.9 1/s (PMID: 18771288)
km serotonin 0.06 (PMID: 18771288) - 1.35 (PMID: 15477086)
km acetyl coA 0.53-0.55</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_158" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2578" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_2577" name="AANAT_B_E_T" value="1"/>
          <Constant key="Parameter_2576" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_2575" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_2574" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_160">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2134">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2135">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2136">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2137">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2138">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2139">
              <SourceParameter reference="Parameter_2578"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2140">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="B_AADAT_hLkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_111">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_160" stoichiometry="1"/>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2573" name="AADAT_B_E_T_kat1" value="1"/>
          <Constant key="Parameter_2572" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2571" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2570" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2569" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_161">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2148">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2149">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2150">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2151">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2152">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2153">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2154">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="B_IDO_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:34:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 0.042 from PMID: 19737010 
Km for tryptophan range from 0.006 mM to  0.21mM most values are in the range of 0.02mM

kcat rate between 1.4 to 3.5/s

vmax from rabbit small intestine 0.00561mikromol/min/mg (PMID 26687) kcat calculated from 500 fold enriched protein calculated to be 1.9/s at 37°C

kcat at 24°C and Km values from PMID 26687:

L-Tryptophan 1.65/s and 0.045mM
5-Hydroxy-L-Trytophan 0.043/s and 0.02mM
Tryptamine 0.0048/s 0.075mM
Serotonin 0.002/s and 0.1mM

Take these values as they are all from the same reference should do sensitivity analysis later on

PMID: 19290871 states Km for ferric IDO 0.2 and for ferrours which is physiologically more relevant 0.01mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_112" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2568" name="kcat" value="0.002"/>
          <Constant key="Parameter_2567" name="IDO_B_E_T" value="1"/>
          <Constant key="Parameter_2566" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2565" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2564" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2563" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2562" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_162">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2166">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2167">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2168">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2169">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2170">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2171">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2172">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2173">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2174">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2175">
              <SourceParameter reference="Parameter_2568"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2176">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="B_INMT_methyltrypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for trytamine rat liver 5.1 and 5.7 pmol/min/mg and Km  betwenn 32.5 and 35.6mM (11322482) the Kms are quite high the units might be wrong

km for rabbit from 9852119 in mM:

Trypta 0.27
Methyl-Trypta 0.086
Serotonin 1.38 

activity Trypta:Methyl-Trypta_Serotonin 100:44:11

IC50 value for NN-dimethyl-tryptamin is 0.067mM



vmax rabbit liver 2.3 pmol/min/mg and kcat 0.4 to 0.45/s (3949799) Km 0.12 to 0.3mM

vmax for human lung 0.86nmol/h/mg for NMT and 0.71 for NMS (284808) Km for endogenous human lung (0.43mM for Trypta and 1.11 mM for Serotonin) and endogenous rabbit lung protein(0.34 for Trypta and 1mM for Serotonin) in this article are simmiliar in contrast to 10552930 where the Km for the recombinant expressed in Cos-1 cells is 10fold higher maybe there is something wrong with the recombinant enzyme however in 284808 are the maximal activities for NMT and NMS production similiar in contrast to  9852119 where there is a 10fold difference

take Km values from 9852119 (rabbit) as well as relative activities kcat taken from 3949799</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
          <Product metabolite="Metabolite_162" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2561" name="kcat_A" value="0.176"/>
          <Constant key="Parameter_2560" name="IMNT_B_E_T" value="1"/>
          <Constant key="Parameter_2559" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2558" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2557" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2556" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_163">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1840">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2164">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2188">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2189">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2190">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2191">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2192">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2193">
              <SourceParameter reference="Parameter_2561"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2194">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="B_INMT_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:57:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for trytamine rat liver 5.1 and 5.7 pmol/min/mg and Km  betwenn 32.5 and 35.6mM (11322482) the Kms are quite high the units might be wrong

km for rabbit from 9852119 in mM:

Trypta 0.27
Methyl-Trypta 0.086
Serotonin 1.38 

activity Trypta:Methyl-Trypta_Serotonin 100:44:11

IC50 value for NN-dimethyl-tryptamin is 0.067mM

vmax rabbit liver 2.3 pmol/min/mg and kcat 0.4 to 0.45/s (3949799) Km 0.12 to 0.3mM

vmax for human lung 0.86nmol/h/mg for NMT and 0.71 for NMS (284808) Km for endogenous human lung (0.43mM for Trypta and 1.11 mM for Serotonin) and endogenous rabbit lung protein(0.34 for Trypta and 1mM for Serotonin) in this article are simmiliar in contrast to 10552930 where the Km for the recombinant expressed in Cos-1 cells is 10fold higher maybe there is something wrong with the recombinant enzyme however in 284808 are the maximal activities for NMT and NMS production similiar in contrast to  9852119 where there is a 10fold difference

take Km values from 9852119 (rabbit) as well as relative activities kcat taken from 3949799

for the investigation of psychiatric desaeses the Km and the kcat for serotonin should be varied in a sensitivity analysis</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
          <Product metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2555" name="kcat_A" value="0.044"/>
          <Constant key="Parameter_2554" name="IMNT_B_E_T" value="1"/>
          <Constant key="Parameter_2553" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2552" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2551" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2550" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_164">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2204">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2205">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2206">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2207">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2208">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2209">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2210">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2211">
              <SourceParameter reference="Parameter_2555"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2212">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="B_AADAT_hLkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T16:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_160" stoichiometry="1"/>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2549" name="AADAT_B_E_T_kat2" value="1"/>
          <Constant key="Parameter_2548" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2547" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2546" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2545" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_165">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2163">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2165">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2222">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2223">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2224">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2225">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2226">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="B_AADAT_hLkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:01:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_160" stoichiometry="1"/>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2544" name="AADAT_B_E_T_kat3" value="1"/>
          <Constant key="Parameter_2543" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2542" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2541" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2540" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_166">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2234">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2235">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2236">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2237">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2238">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2239">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2240">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="B_AADAT_Lkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2539" name="AADAT_B_E_T_kat2" value="1"/>
          <Constant key="Parameter_2538" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2537" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2536" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2535" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_167">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2248">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2249">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2250">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2251">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2252">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2253">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2254">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="B_AADAT_Lkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2534" name="AADAT_B_E_T_kat3" value="1"/>
          <Constant key="Parameter_2533" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2532" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2531" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2530" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_168">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2262">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2263">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2264">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2265">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2266">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2267">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2268">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="B_MAOB_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_156" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2529" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_2528" name="MAOB_B_E_T" value="1"/>
          <Constant key="Parameter_2527" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2526" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2525" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_169">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2276">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2277">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2278">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2279">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2280">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2281">
              <SourceParameter reference="Parameter_2529"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2282">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="B_MAOB_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2524" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_2523" name="MAOB_B_E_T" value="1"/>
          <Constant key="Parameter_2522" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2521" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2520" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_170">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2290">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2291">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2292">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2293">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2294">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2295">
              <SourceParameter reference="Parameter_2524"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2296">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="B_AANAT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:22:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_158" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_164" stoichiometry="1"/>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2519" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_2518" name="AANAT_B_E_T" value="1"/>
          <Constant key="Parameter_2517" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_2516" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_2515" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_171">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2304">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2305">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2306">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2307">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2308">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2309">
              <SourceParameter reference="Parameter_2519"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2310">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="B_TPH2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_122">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 is taken from human (PubMed:     19816759)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_112" stoichiometry="1"/>
          <Product metabolite="Metabolite_122" stoichiometry="1"/>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2514" name="kcat" value="0.18"/>
          <Constant key="Parameter_2513" name="B_E_T" value="313.232"/>
          <Constant key="Parameter_2512" name="Ka" value="0.0403"/>
          <Constant key="Parameter_2511" name="Kb" value="0.273"/>
          <Constant key="Parameter_2510" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_172">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2319">
              <SourceParameter reference="Parameter_2513"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2320">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2321">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2322">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2323">
              <SourceParameter reference="Parameter_2512"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2324">
              <SourceParameter reference="Parameter_2511"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2325">
              <SourceParameter reference="Parameter_2514"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2326">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="B_Tryptophan_Transport Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:36:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2509" name="Transporter_B_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2508" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2507" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2506" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_173">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2336">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2337">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2338">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2339">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2340">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2341">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2342">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2343">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2344">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="B_Lkynr_Transporter_Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2505" name="Transporter_B_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_2504" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2503" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_2502" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_174">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2354">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2355">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2356">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2357">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2358">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2359">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2360">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2361">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2362">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="B_Lkynr_Transporter_Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:40:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2501" name="Transporter_B_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2500" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2499" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2498" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_175">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2372">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2373">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2374">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2375">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2376">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2377">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2378">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2379">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2380">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="L_IL4I1_kcat_set_to_1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_126">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15383589"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.2"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00677"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>have to searched for kcat rate and confirm Km

Km for O2 is taken from Neurospora crassa, PubMed:     4260304</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_183" stoichiometry="1"/>
          <Product metabolite="Metabolite_200" stoichiometry="1"/>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2497" name="kcat" value="1"/>
          <Constant key="Parameter_2496" name="L_E_T" value="2046.74"/>
          <Constant key="Parameter_2495" name="Ka" value="6.5"/>
          <Constant key="Parameter_2494" name="Kb" value="1.2"/>
          <Constant key="Parameter_2493" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_176">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1923">
              <SourceParameter reference="Parameter_2495"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2390">
              <SourceParameter reference="Parameter_2494"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2391">
              <SourceParameter reference="Parameter_2496"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2392">
              <SourceParameter reference="Metabolite_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2393">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2394">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2395">
              <SourceParameter reference="Parameter_2497"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2396">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="L_TDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_127">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-05-27T15:03:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.11"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km and kcat taken from 18370401 no other reference 

sensitivity analysis</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2492" name="L_E_T" value="943912"/>
          <Constant key="Parameter_2491" name="Ka" value="0.222"/>
          <Constant key="Parameter_2490" name="Kb" value="0.037"/>
          <Constant key="Parameter_2489" name="kcat" value="1.4"/>
          <Constant key="Parameter_2488" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_177">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2162">
              <SourceParameter reference="Parameter_2491"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2405">
              <SourceParameter reference="Parameter_2490"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2406">
              <SourceParameter reference="Parameter_2492"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2407">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2408">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2409">
              <SourceParameter reference="Parameter_2489"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2410">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="L_DDC_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_128">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4991409"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00685"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>km and kcat values taken from 4991409 (pig)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_191" stoichiometry="1"/>
          <Product metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_168" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2487" name="kcat_B" value="0.38"/>
          <Constant key="Parameter_2486" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_2485" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2484" name="DDC_L_E_T" value="1"/>
          <Constant key="Parameter_2483" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_178">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2418">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2419">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2420">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2421">
              <SourceParameter reference="Metabolite_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2422">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2423">
              <SourceParameter reference="Parameter_2487"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2424">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="L_KYNU_Lkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_129">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00987"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>PMID: 19143568 at 37°C

L-kynurinine Km 0.495mM kcat 0.23/s
3-OH-DL-Kynurinine Km 0.028mM  kcat 3.5/s

taking these values

Values are consitent with 17300176

Km 3-OH-kynurinine 0.003 to 0.049mM according to 17300176

values from 457635 at 25°C:

Km 0.77mM L-kynurenine
Km 0.013 3-OH-kynurinine

kcat: L-kyn:3-OH-3Fkyn 100:1038:5.6</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_176" stoichiometry="1"/>
          <Product metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_181" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2482" name="kcat_A" value="0.23"/>
          <Constant key="Parameter_2481" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2480" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2479" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2478" name="KYNU_L_E_T" value="1"/>
          <Constant key="Parameter_2477" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_179">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2434">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2435">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2436">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2437">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2438">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2439">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2440">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2441">
              <SourceParameter reference="Parameter_2482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2442">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="L_TPH1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_130">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15663479"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17539919"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10587452"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.16.4"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01814"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km ranges from 0.0075 to 0.043 in human are usually in the range of 0.01 to 0.015mM for TPH1 and 0.04 to 0.07 for TPH2

Km and kcat for TPH1 taken from 15663479 (human protein expressed in E.coli) TPH2 Km in this reference 0.04mM kcat 0.2/s

they are comparable to values of human protein expresssed in COS7 cells (17539919) with 0.015 for TPH1 and 0.077 for TPH2

hat problems to cofirm values for rabbit

Km values for O2 is taken from human (PubMed:     19816759)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_187" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_168" stoichiometry="1"/>
          <Product metabolite="Metabolite_178" stoichiometry="1"/>
          <Product metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2476" name="kcat" value="0.57"/>
          <Constant key="Parameter_2475" name="L_E_T" value="503.141"/>
          <Constant key="Parameter_2474" name="Ka" value="0.0228"/>
          <Constant key="Parameter_2473" name="Kb" value="0.109"/>
          <Constant key="Parameter_2472" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_180">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2318">
              <SourceParameter reference="Parameter_2474"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2452">
              <SourceParameter reference="Parameter_2473"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2453">
              <SourceParameter reference="Parameter_2475"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2454">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2455">
              <SourceParameter reference="Metabolite_187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2456">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2457">
              <SourceParameter reference="Parameter_2476"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2458">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="L_AADAT_Lkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_131">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.6.1.7"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01956"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM range 2-Oxoglutarate 0.62 - 1.2mM
KM range L-Kyn L-Kynurenine 4.7 (pH 7.4) - 27mM (pH 8)
kcat 7.67 (2-Oxoglut) 9.76 (L-Kyn) ph 7.5 37°C  PMID: 18620547
changed PMID from 15606768 to 18620547 because meassurment was done at 45°C



the follwoing findings may be used for inteerpretation of deseases:


(8637415:
vmax for 2-Oxoglutarat in human brain:

 frontal cortex 3.38 pmol/h/mg KAT1 and 1.14 KAT2
temporal cortex 4.34 KAT1 and 1.27 in KAT2

in down-syndrome patients:

frontal cortex 14.7% KAT1 and 90.6 %KAT2
temporal cortex 29.9% KAT1 and 86.3% KAT2


concentration of kynurenate:

0.208pmol/mg wet weight  frontal cortex
0.410pmol/mg wet weight temporal cortex

increase in down syndrome patients for kynurenate reason is unclear:

325% frontal cortex
151% temporal cortex)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_205" stoichiometry="1"/>
          <Product metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2471" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2470" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2469" name="AADAT_L_E_T_kat1" value="1"/>
          <Constant key="Parameter_2468" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2467" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_181">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2119">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2467">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2468">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2469">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2470">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2471">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2472">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="L_AFMID_lfmkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_132">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01959"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209258"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM for N-formyanthranilic acid from 0.21(4190298 )-0.57(PMID84781)

KM for N-formy-kynurenin from 0.05 (pmid4190298 ) 0.06 (PMID84781) to 0.18 (pmid4135014)

KM for 5H-kynurenin 0.4 (PMID: 4135014)

vmax rat brain 4.74 unit/mg for 5HFkyn and 4.66 for FKyn (pmid4135014) U=1nmol/min 

vmax rat liver 0.76 units/mg for formylanthranilic acid U=1mikromol/60min --&gt; 12.66nmol/min/mg PMID: 4190298 --&gt;
specific activity for purified enzyme 13.57/s for  formylanthranilic acid

relativ activity for formyl-kynurinine (100%) to formylanthranilic acid (13.5%)

specifc activity for N-formyl-kynurenin was calculated to be 0.477/s but purification was just 170fold (pmid4135014) compared to  1800fold in PMID: 4190298</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_170" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_179" stoichiometry="1"/>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_167" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2466" name="kcat_A" value="100"/>
          <Constant key="Parameter_2465" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_2464" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2463" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_2462" name="AFMID_L_E_T" value="1"/>
          <Constant key="Parameter_2461" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_182">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2482">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2483">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2484">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2485">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2486">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2487">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2488">
              <SourceParameter reference="Metabolite_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2489">
              <SourceParameter reference="Parameter_2466"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2490">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="L_KMO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_133">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10672018 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.13.9"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01960"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>kcat 2.2/s and  Km values from 10672018</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_199" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_181" stoichiometry="1"/>
          <Product metabolite="Metabolite_198" stoichiometry="1"/>
          <Product metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2460" name="L_E_T" value="9766.18"/>
          <Constant key="Parameter_2459" name="Ka" value="0.1"/>
          <Constant key="Parameter_2458" name="Kb" value="0.071"/>
          <Constant key="Parameter_2457" name="Kc" value="0.153"/>
          <Constant key="Parameter_2456" name="kcat" value="2.2"/>
          <Constant key="Parameter_2455" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_183">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2501">
              <SourceParameter reference="Parameter_2459"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2502">
              <SourceParameter reference="Parameter_2458"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2503">
              <SourceParameter reference="Parameter_2457"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2504">
              <SourceParameter reference="Parameter_2460"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2505">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2506">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2507">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2508">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2509">
              <SourceParameter reference="Parameter_2456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2510">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="L_INMT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_134">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3949799"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9852119"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02174"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.1.1.49"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:441354"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for trytamine rat liver 5.1 and 5.7 pmol/min/mg and Km  betwenn 32.5 and 35.6mM (11322482) the Kms are quite high the units might be wrong

km for rabbit from 9852119 in mM:

Trypta 0.27
Methyl-Trypta 0.086
Serotonin 1.38 

activity Trypta:Methyl-Trypta_Serotonin 100:44:11

IC50 value for NN-dimethyl-tryptamin is 0.067mM



vmax rabbit liver 2.3 pmol/min/mg and kcat 0.4 to 0.45/s (3949799) Km 0.12 to 0.3mM

vmax for human lung 0.86nmol/h/mg for NMT and 0.71 for NMS (284808) Km for endogenous human lung (0.43mM for Trypta and 1.11 mM for Serotonin) and endogenous rabbit lung protein(0.34 for Trypta and 1mM for Serotonin) in this article are simmiliar in contrast to 10552930 where the Km for the recombinant expressed in Cos-1 cells is 10fold higher maybe there is something wrong with the recombinant enzyme however in 284808 are the maximal activities for NMT and NMS production similiar in contrast to  9852119 where there is a 10fold difference

take Km values from 9852119 (rabbit) as well as relative activities kcat taken from 3949799</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_172" stoichiometry="1"/>
          <Product metabolite="Metabolite_184" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_184" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2454" name="kcat_A" value="0.4"/>
          <Constant key="Parameter_2453" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2452" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2451" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2450" name="IMNT_L_E_T" value="1"/>
          <Constant key="Parameter_2449" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_184">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2061">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2521">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2522">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2523">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2524">
              <SourceParameter reference="Metabolite_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2525">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2526">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2527">
              <SourceParameter reference="Parameter_2454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2528">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="L_HAAO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_135">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3112306 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:12672479"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.6"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02665"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:439367"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax rat liver 31.9 nmol/min/mg
vmax rat brain 0.0059 nmol/min/mg both pmid 3112306 
kcat for 235 fold purification calculated to be 4.8/s

km for rat 0.003 mM

km for bos taurus 0.016 to 0.021 mM and kcat 64  from 12672479 taken these values Ki values also from this reference

Ki for L_quln_c 2mM

KI for L_anth_c 4.9mM

removed inhibition because anth is set fixed and 0 and the Ki is outside the physiological concentration of quinolinic acid

sensitivity analysis?</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_166" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_185" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2448" name="L_E_T" value="10308.4"/>
          <Constant key="Parameter_2447" name="Ka" value="0.016"/>
          <Constant key="Parameter_2446" name="Kb" value="0.615"/>
          <Constant key="Parameter_2445" name="kcat" value="64"/>
          <Constant key="Parameter_2444" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_185">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2481">
              <SourceParameter reference="Parameter_2447"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2432">
              <SourceParameter reference="Parameter_2446"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2538">
              <SourceParameter reference="Metabolite_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2539">
              <SourceParameter reference="Parameter_2448"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2540">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2541">
              <SourceParameter reference="Parameter_2445"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2542">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="L_KYNU_hLkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_136">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02668"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>PMID: 19143568

L-kynurinine Km 0.495mM kcat 0.23/s
3-OH-DL-Kynurinine Km 0.028mM  kcat 3.5/s

taking these values

Values are consitent with 17300176

Km 3-OH-kynurinine 0.003 to 0.049mM according to 17300176

values from 457635:

Km 0.77mM L-kynurenine
Km 0.013 3-OH-kynurinine

kcat: L-kyn:3-OH-3Fkyn 100:1038:5.6</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_166" stoichiometry="1"/>
          <Product metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2443" name="kcat_A" value="3.5"/>
          <Constant key="Parameter_2442" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2441" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2440" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2439" name="KYNU_L_E_T" value="1"/>
          <Constant key="Parameter_2438" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_186">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2552">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2553">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2554">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2555">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2556">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2557">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2558">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2559">
              <SourceParameter reference="Parameter_2443"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2560">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="L_DDC_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_137">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18547057"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02701"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>km for human 0.0054 (5309585) to 0.016(2117047) to 0.053mM (PMID: 20403077 (Control 0.047))

no reasonable kcat available for human value taken from sus scrofa between 0.011/s, 1.4/s ( 4991409)  and  2/s (18547057 and 11085948) km 0.038 (anaerobic)  and 0.049 to 0.155 mM (aerobic)  

vmax for human neuroblastoma cells 426 pmol/min/mg (20403077)

sensitivity analysis on both Km and kcat</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_168" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_186" stoichiometry="1"/>
          <Product metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2437" name="kcat_B" value="2"/>
          <Constant key="Parameter_2436" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_2435" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2434" name="DDC_L_E_T" value="1"/>
          <Constant key="Parameter_2433" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_187">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2480">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2118">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2570">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2571">
              <SourceParameter reference="Metabolite_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2572">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2573">
              <SourceParameter reference="Parameter_2437"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2574">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="L_IDO_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_138">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02702"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:685239"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 0.042 from PMID: 19737010 
Km for tryptophan range from 0.006 mM to  0.21mM most values are in the range of 0.02mM

kcat rate between 1.4 to 3.5/s

vmax from rabbit small intestine 0.00561mikromol/min/mg (PMID 26687) kcat calculated from 500 fold enriched protein calculated to be 1.9/s at 37°C

kcat at 24°C and Km values from PMID 26687:

L-Tryptophan 1.65/s and 0.045mM
5-Hydroxy-L-Trytophan 0.043/s and 0.02mM
Tryptamine 0.0048/s 0.075mM
Serotonin 0.002/s and 0.1mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_168" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_189" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2432" name="kcat" value="0.043"/>
          <Constant key="Parameter_2431" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2430" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2429" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2428" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2427" name="IDO_L_E_T" value="1"/>
          <Constant key="Parameter_2426" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_188">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2586">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2587">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2588">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2589">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2590">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2591">
              <SourceParameter reference="Metabolite_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2592">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2593">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2594">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2595">
              <SourceParameter reference="Parameter_2432"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2596">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="L_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_139">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11676605"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:6.1.1.2"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03664"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:653740"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for ATP 0.088mM

Km for Tryptophan between 0.0074 (11676605) and 0.0028(4358951)

kcat 1.1/s taken from 11676605 

kcat calculated from 4358951 is 2.4/s (human endogenous)

vmax for human placenta 1.4nmol/min/mg (4358951)

have to decide whether to set 1 or 2 substrates constant</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_193" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_188" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_192" stoichiometry="1"/>
          <Product metabolite="Metabolite_203" stoichiometry="1"/>
          <Product metabolite="Metabolite_190" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2425" name="kcat" value="1.1"/>
          <Constant key="Parameter_2424" name="L_E_T" value="15961.5"/>
          <Constant key="Parameter_2423" name="Ka" value="0.0074"/>
          <Constant key="Parameter_2422" name="Kb" value="0.0011"/>
          <Constant key="Parameter_2421" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_189">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2551">
              <SourceParameter reference="Parameter_2423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2583">
              <SourceParameter reference="Parameter_2422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2582">
              <SourceParameter reference="Parameter_2424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2608">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2609">
              <SourceParameter reference="Metabolite_188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2610">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2611">
              <SourceParameter reference="Parameter_2425"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2612">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="L_AFMID_5HNFK" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_140">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4135014"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04911"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209255"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM for N-formylanthranilic acid from 0.21(4190298 )-0.57(PMID84781)

KM for N-formyl-kynurenin from 0.05 (pmid4190298 ) 0.06 (PMID84781) to 0.18 (pmid4135014)

KM for 5H-kynurenin 0.4 (PMID: 4135014)

vmax rat brain 4.74 unit/mg for 5HFkyn and 4.66 for FKyn (pmid4135014) U=1nmol/min --&gt; 4.74nmol/min/mg and 4.66nmol/min/mg

vmax rat liver 0.76 units/mg for formylanthranilic acid U=1mikromol/60min --&gt; 12.66nmol/min/mg PMID: 4190298 --&gt;

specific activity for purified enzyme 13.57/s for  formylanthranilic acid

relativ activity for formyl-kynurinine (100%) to formylanthranilic acid (13.5%)

specifc activity for N-formyl-kynurenin was calculated to be 0.477/s but purification was just 170fold (pmid4135014) compared to  1800fold in PMID: 4190298</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_169" stoichiometry="1"/>
          <Product metabolite="Metabolite_179" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_170" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2420" name="kcat_A" value="100"/>
          <Constant key="Parameter_2419" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_2418" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2417" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_2416" name="AFMID_L_E_T" value="1"/>
          <Constant key="Parameter_2415" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_190">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2622">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2623">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2624">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2625">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2626">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2627">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2628">
              <SourceParameter reference="Metabolite_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2629">
              <SourceParameter reference="Parameter_2420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2630">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="L_Quinolic Acid formation (spontaneous)" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_141">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15656614"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2414" name="k1" value="0.00025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_2414"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="L_MAOA_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_142">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11754741"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2021654"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02173"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>value for serotonin taken from 15848762 (human) compared to 

Km 0.44 and kcat 12.5/s for rat from 11754741 is consistent

values for tryptamine  taken from 11754741 (rat)

for 5-hydroxykynuramine taken values for kynuramine from 2021654

Km for oxygen 0.006mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_182" stoichiometry="1"/>
          <Product metabolite="Metabolite_200" stoichiometry="1"/>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2413" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_2412" name="MAOA_L_E_T" value="1"/>
          <Constant key="Parameter_2411" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2410" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2409" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_191">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2640">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2641">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2642">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2643">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2644">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2645">
              <SourceParameter reference="Parameter_2413"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2646">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="L_Cinnavalinate formation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_143">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2949752"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17476692"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.11.1.6"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02670"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>k calculated from 17476692 enhanced by SOD and SOD+Catalase up to 10fold

sensitivity analysis?</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_166" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="4"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_204" stoichiometry="1"/>
          <Product metabolite="Metabolite_202" stoichiometry="2"/>
          <Product metabolite="Metabolite_195" stoichiometry="2"/>
          <Product metabolite="Metabolite_197" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2408" name="e1" value="2"/>
          <Constant key="Parameter_2407" name="e2" value="4"/>
          <Constant key="Parameter_2406" name="k1" value="5.6667e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_192">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2005">
              <SourceParameter reference="Metabolite_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2335">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2654">
              <SourceParameter reference="Parameter_2408"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2655">
              <SourceParameter reference="Parameter_2407"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2656">
              <SourceParameter reference="Parameter_2406"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="L_Tryptophan_Transport Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_144">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2872885"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT1_HUMAN"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT2_HUMAN"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax from Salter 1986 for rat liver  198nmol/h/mg  calculated kcat from this in comparison to HAAO

Km from uniprot for LAT1_HUMAN 0.019
Km from uniprot for LAT2_HUMAN 0.0573</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2405" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2404" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_2403" name="Transporter_L_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_2402" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_193">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2666">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2667">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2668">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2669">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2670">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2671">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2672">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2673">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2674">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="L_IDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_145">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 0.042 from PMID: 19737010 
Km for tryptophan range from 0.006 mM to  0.21mM most values are in the range of 0.02mM

Km for 5-hydroxytryptophan 0.007 according to 18370401

kcat rate between 1.4 to 3.5/s

vmax from rabbit small intestine 0.00561mikromol/min/mg (PMID 26687) kcat calculated from 500 fold enriched protein calculated to be 1.9/s at 37°C

kcat at 24°C and Km values from PMID 26687:

L-Tryptophan 1.65/s and 0.045mM
5-Hydroxy-L-Trytophan 0.043/s and 0.02mM
Tryptamine 0.0048/s 0.075mM
Serotonin 0.002/s and 0.1mM


 
19290871 Km values for IDO ferric form 0.222mM and for ferrous form which is physiologically more relevant 0.01mM

sensitivity analysis</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_168" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2401" name="kcat" value="1.65"/>
          <Constant key="Parameter_2400" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2399" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2398" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2397" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2396" name="IDO_L_E_T" value="1"/>
          <Constant key="Parameter_2395" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_194">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2686">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2687">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2688">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2689">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2690">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2691">
              <SourceParameter reference="Metabolite_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2692">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2693">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2694">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2695">
              <SourceParameter reference="Parameter_2401"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2696">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="L_QPRT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_146">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17868694"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03348"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.4.2.19"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:693620"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for human brain 0.04 pmol/h/mg for human liver 0.12 nmol/h/mg (3139649) Km in this reference 0.0025-0.0027 mM for quinolinate and 0.021-0.025mM for PRPP kcat caluclated for purified enzyme from this artcile is 0.038/s


kinetic parameters for human enzyme purified from E.coli (17868694)

Km 0.022mM for quinolinic acid and 0.023mM for PRPP kcat for QA was 0.255/s

Km is different by 10fold for the two references including this into sensitivity analysis

changed to two three substrate kinetic with s3 constant if we leave this we have to set PRPP conc. accordingly</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_207" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_194" stoichiometry="1"/>
          <Product metabolite="Metabolite_206" stoichiometry="1"/>
          <Product metabolite="Metabolite_203" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2394" name="kcat" value="0.255"/>
          <Constant key="Parameter_2393" name="L_E_T" value="138709"/>
          <Constant key="Parameter_2392" name="Ka" value="0.022"/>
          <Constant key="Parameter_2391" name="Kb" value="0.023"/>
          <Constant key="Parameter_2390" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_195">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2663">
              <SourceParameter reference="Parameter_2392"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2665">
              <SourceParameter reference="Parameter_2391"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2433">
              <SourceParameter reference="Parameter_2393"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2708">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2709">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2710">
              <SourceParameter reference="Metabolite_185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2711">
              <SourceParameter reference="Parameter_2394"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2712">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="L_KYNU_Lfmkyn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_147">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:118164 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03936"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>PMID: 19143568

L-kynurinine Km 0.495mM kcat 0.23/s
3-OH-DL-Kynurinine Km 0.028mM  kcat 3.5/s

taking these values

Values are consitent with 17300176

Km 3-OH-kynurinine 0.003 to 0.049mM according to 17300176

values from 457635:

Km 0.77mM L-kynurenine
Km 0.013 3-OH-kynurinine

kcat: L-kyn:3-OH-3Fkyn 100:1038:5.6

kcat for 3-F-Kyn was set to low Km was taken from Pseudomonas Km for L-Kyn and 3-OH-Kyn are similiar to human</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_170" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
          <Product metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2389" name="kcat_A" value="0.013"/>
          <Constant key="Parameter_2388" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2387" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2386" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2385" name="KYNU_L_E_T" value="1"/>
          <Constant key="Parameter_2384" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_196">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2722">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2723">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2724">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2725">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2726">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2727">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2728">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2729">
              <SourceParameter reference="Parameter_2389"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2730">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="L_AFMID_nform" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_148">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00988"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM for N-formylanthranilic acid from 0.211(4190298 )-0.57(PMID84781)

KM for N-formyl-kynurenin from 0.05 (pmid4190298 ) 0.06 (PMID84781) to 0.18 (pmid4135014)

KM for 5H-kynurenin 0.4 (PMID: 4135014)

vmax rat brain 4.74 unit/mg for 5HFkyn and 4.66 for FKyn (pmid4135014) U=1nmol/min 

vmax rat liver 0.76 units/mg for formylanthranilic acid U=1mikromol/60min --&gt; 12.66nmol/min/mg PMID: 4190298 --&gt;
specific activity for purified enzyme 13.57/s for  formylanthranilic acid

relativ activity for formyl-kynurinine (100%) to formylanthranilic acid (13.5%)

specifc activity for N-formyl-kynurenin was calculated to be 0.477/s but purification was just 170fold (pmid4135014) compared to  1800fold in PMID: 4190298</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_208" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_179" stoichiometry="1"/>
          <Product metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_170" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2383" name="kcat_A" value="13.57"/>
          <Constant key="Parameter_2382" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_2381" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2380" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_2379" name="AFMID_L_E_T" value="1"/>
          <Constant key="Parameter_2378" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_197">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2740">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2741">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2742">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2743">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2744">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2745">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2746">
              <SourceParameter reference="Metabolite_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2747">
              <SourceParameter reference="Parameter_2383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2748">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="L_NMNAT1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_149">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17402747"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.7.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03005"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km and kcat values taken from 17402747</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_193" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_206" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_209" stoichiometry="1"/>
          <Product metabolite="Metabolite_203" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2377" name="L_E_T" value="4658.65"/>
          <Constant key="Parameter_2376" name="kcat" value="42.9"/>
          <Constant key="Parameter_2375" name="Km" value="0.0677"/>
          <Constant key="Parameter_2374" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_198">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2685">
              <SourceParameter reference="Parameter_2375"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2684">
              <SourceParameter reference="Parameter_2377"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2758">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2759">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2760">
              <SourceParameter reference="Metabolite_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2761">
              <SourceParameter reference="Parameter_2376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2762">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="L_ACMSD" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_150">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17288562"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.45"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04323"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:679800"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>kinetic values meassured at 25°C with recombinant enzyme
for verification of simulation results of downregulation of ACMSD one can use PMID: 15229365 
no tissue vmax available

expression ratio of 1300 : 30 : 1 in kidney, liver and
brain for ACMSD1 respectively (PMID: 17288562) messured using  real time PCR

Ki calculated from PMID: 17288562 

picolinic acid: 0.82 mM
kynurenic acid: 2.18 mM
quinolinic acid: 2mM
 They are quite high and most probably not of physiological relevance 
physiological concentration of quinolinic acid is in the nM range 

removed inhibition as kynurenic acid is constant and Ki for quinolic acid is quite high</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_185" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2373" name="L_E_T" value="48858.2"/>
          <Constant key="Parameter_2372" name="kcat" value="1"/>
          <Constant key="Parameter_2371" name="Km" value="0.0065"/>
          <Constant key="Parameter_2370" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_199">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2721">
              <SourceParameter reference="Parameter_2371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2550">
              <SourceParameter reference="Parameter_2373"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2770">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2771">
              <SourceParameter reference="Parameter_2372"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2772">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_151" name="L_MAOA_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_151">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15848762 "/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02908"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>value for serotonin taken from 15848762 (human) compared to 

Km 0.44 and kcat 12.5/s for rat from 11754741 is consistent

values for tryptamine taken from 11754741 (rat)

for 5-hydroxykynuramine taken values for kynuramine from 2021654 

Km for oxygen 0,006mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_186" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_211" stoichiometry="1"/>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
          <Product metabolite="Metabolite_200" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2369" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_2368" name="MAOA_L_E_T" value="1"/>
          <Constant key="Parameter_2367" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2366" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2365" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_200">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2780">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2781">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2782">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2783">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2784">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2785">
              <SourceParameter reference="Parameter_2369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2786">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_152" name="L_AANAT_Srtn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_152">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15477086"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18771288"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02911"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.3.1.87"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>kcat serotonin 17.3 - 25.9 1/s (PMID: 18771288)
km serotonin 0.06 (PMID: 18771288) - 1.35 (PMID: 15477086)
km acetyl coA 0.53-0.55</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_213" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_212" stoichiometry="1"/>
          <Product metabolite="Metabolite_214" stoichiometry="1"/>
          <Product metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2364" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_2363" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_2362" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_2361" name="AANAT_L_E_T" value="1"/>
          <Constant key="Parameter_2360" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_201">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2794">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2795">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2796">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2797">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2798">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2799">
              <SourceParameter reference="Parameter_2364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2800">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_153" name="L_AADAT_hLkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_153">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_215" stoichiometry="1"/>
          <Product metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2359" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2358" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2357" name="AADAT_L_E_T_kat1" value="1"/>
          <Constant key="Parameter_2356" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2355" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_202">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2808">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2809">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2810">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2811">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2812">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2813">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2814">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_154" name="L_IDO_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_154">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:34:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 0.042 from PMID: 19737010 
Km for tryptophan range from 0.006 mM to  0.21mM most values are in the range of 0.02mM

kcat rate between 1.4 to 3.5/s

vmax from rabbit small intestine 0.00561mikromol/min/mg (PMID 26687) kcat calculated from 500 fold enriched protein calculated to be 1.9/s at 37°C

kcat at 24°C and Km values from PMID 26687:

L-Tryptophan 1.65/s and 0.045mM
5-Hydroxy-L-Trytophan 0.043/s and 0.02mM
Tryptamine 0.0048/s 0.075mM
Serotonin 0.002/s and 0.1mM

Take these values as they are all from the same reference should do sensitivity analysis later on

PMID: 19290871 states Km for ferric IDO 0.2 and for ferrours which is physiologically more relevant 0.01mM</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_186" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_216" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_168" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2354" name="kcat" value="0.002"/>
          <Constant key="Parameter_2353" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2352" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2351" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2350" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2349" name="IDO_L_E_T" value="1"/>
          <Constant key="Parameter_2348" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_203">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2826">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2827">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2828">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2829">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2830">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2831">
              <SourceParameter reference="Metabolite_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2832">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2833">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2834">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2835">
              <SourceParameter reference="Parameter_2354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2836">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_155" name="L_INMT_methyltrypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_155">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for trytamine rat liver 5.1 and 5.7 pmol/min/mg and Km  betwenn 32.5 and 35.6mM (11322482) the Kms are quite high the units might be wrong

km for rabbit from 9852119 in mM:

Trypta 0.27
Methyl-Trypta 0.086
Serotonin 1.38 

activity Trypta:Methyl-Trypta_Serotonin 100:44:11

IC50 value for NN-dimethyl-tryptamin is 0.067mM



vmax rabbit liver 2.3 pmol/min/mg and kcat 0.4 to 0.45/s (3949799) Km 0.12 to 0.3mM

vmax for human lung 0.86nmol/h/mg for NMT and 0.71 for NMS (284808) Km for endogenous human lung (0.43mM for Trypta and 1.11 mM for Serotonin) and endogenous rabbit lung protein(0.34 for Trypta and 1mM for Serotonin) in this article are simmiliar in contrast to 10552930 where the Km for the recombinant expressed in Cos-1 cells is 10fold higher maybe there is something wrong with the recombinant enzyme however in 284808 are the maximal activities for NMT and NMS production similiar in contrast to  9852119 where there is a 10fold difference

take Km values from 9852119 (rabbit) as well as relative activities kcat taken from 3949799</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_184" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_172" stoichiometry="1"/>
          <Product metabolite="Metabolite_217" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2347" name="kcat_A" value="0.176"/>
          <Constant key="Parameter_2346" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2345" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2344" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2343" name="IMNT_L_E_T" value="1"/>
          <Constant key="Parameter_2342" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_204">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2823">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2662">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2848">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2849">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2850">
              <SourceParameter reference="Metabolite_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2851">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2852">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2853">
              <SourceParameter reference="Parameter_2347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2854">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_156" name="L_INMT_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_156">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:57:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>vmax for trytamine rat liver 5.1 and 5.7 pmol/min/mg and Km  betwenn 32.5 and 35.6mM (11322482) the Kms are quite high the units might be wrong

km for rabbit from 9852119 in mM:

Trypta 0.27
Methyl-Trypta 0.086
Serotonin 1.38 

activity Trypta:Methyl-Trypta_Serotonin 100:44:11

IC50 value for NN-dimethyl-tryptamin is 0.067mM

vmax rabbit liver 2.3 pmol/min/mg and kcat 0.4 to 0.45/s (3949799) Km 0.12 to 0.3mM

vmax for human lung 0.86nmol/h/mg for NMT and 0.71 for NMS (284808) Km for endogenous human lung (0.43mM for Trypta and 1.11 mM for Serotonin) and endogenous rabbit lung protein(0.34 for Trypta and 1mM for Serotonin) in this article are simmiliar in contrast to 10552930 where the Km for the recombinant expressed in Cos-1 cells is 10fold higher maybe there is something wrong with the recombinant enzyme however in 284808 are the maximal activities for NMT and NMS production similiar in contrast to  9852119 where there is a 10fold difference

take Km values from 9852119 (rabbit) as well as relative activities kcat taken from 3949799

for the investigation of psychiatric desaeses the Km and the kcat for serotonin should be varied in a sensitivity analysis</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_172" stoichiometry="1"/>
          <Product metabolite="Metabolite_218" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_184" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2341" name="kcat_A" value="0.044"/>
          <Constant key="Parameter_2340" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2339" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2338" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2337" name="IMNT_L_E_T" value="1"/>
          <Constant key="Parameter_2336" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_205">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2864">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2865">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2866">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2867">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2868">
              <SourceParameter reference="Metabolite_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2869">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2870">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2871">
              <SourceParameter reference="Parameter_2341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2872">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_157" name="L_AADAT_hLkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_157">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T16:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_215" stoichiometry="1"/>
          <Product metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2335" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2334" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2333" name="AADAT_L_E_T_kat2" value="1"/>
          <Constant key="Parameter_2332" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2331" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_206">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2824">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2779">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2882">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2883">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2884">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2885">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2886">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_158" name="L_AADAT_hLkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_158">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:01:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_215" stoichiometry="1"/>
          <Product metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2330" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2329" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2328" name="AADAT_L_E_T_kat3" value="1"/>
          <Constant key="Parameter_2327" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2326" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_207">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2894">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2895">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2896">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2897">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2898">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2899">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2900">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_159" name="L_AADAT_Lkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_159">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_205" stoichiometry="1"/>
          <Product metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2325" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2324" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2323" name="AADAT_L_E_T_kat2" value="1"/>
          <Constant key="Parameter_2322" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2321" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_208">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2908">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2909">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2910">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2911">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2912">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2913">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2914">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_160" name="L_AADAT_Lkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_160">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_205" stoichiometry="1"/>
          <Product metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2320" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2319" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2318" name="AADAT_L_E_T_kat3" value="1"/>
          <Constant key="Parameter_2317" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2316" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_209">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2922">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2923">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2924">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2925">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2926">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2927">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2928">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_161" name="L_MAOB_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_161">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_186" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_211" stoichiometry="1"/>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
          <Product metabolite="Metabolite_200" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2315" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_2314" name="MAOB_L_E_T" value="1"/>
          <Constant key="Parameter_2313" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2312" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2311" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_210">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2936">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2937">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2938">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2939">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2940">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2941">
              <SourceParameter reference="Parameter_2315"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2942">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_162" name="L_MAOB_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_162">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_182" stoichiometry="1"/>
          <Product metabolite="Metabolite_200" stoichiometry="1"/>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2310" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_2309" name="MAOB_L_E_T" value="1"/>
          <Constant key="Parameter_2308" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2307" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2306" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_211">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2950">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2951">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2952">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2953">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2954">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2955">
              <SourceParameter reference="Parameter_2310"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2956">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_163" name="L_AANAT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_163">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:22:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_213" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_219" stoichiometry="1"/>
          <Product metabolite="Metabolite_214" stoichiometry="1"/>
          <Product metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2305" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_2304" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_2303" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_2302" name="AANAT_L_E_T" value="1"/>
          <Constant key="Parameter_2301" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_212">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2964">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2965">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2966">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2967">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2968">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2969">
              <SourceParameter reference="Parameter_2305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2970">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_164" name="L_TPH2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_164">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km for O2 is taken from human (PubMed:     19816759)</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_187" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_168" stoichiometry="1"/>
          <Product metabolite="Metabolite_178" stoichiometry="1"/>
          <Product metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2300" name="kcat" value="0.18"/>
          <Constant key="Parameter_2299" name="L_E_T" value="235.128"/>
          <Constant key="Parameter_2298" name="Ka" value="0.0403"/>
          <Constant key="Parameter_2297" name="Kb" value="0.273"/>
          <Constant key="Parameter_2296" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_213">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2979">
              <SourceParameter reference="Parameter_2298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2980">
              <SourceParameter reference="Parameter_2297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2981">
              <SourceParameter reference="Parameter_2299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2982">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2983">
              <SourceParameter reference="Metabolite_187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2984">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2985">
              <SourceParameter reference="Parameter_2300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2986">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_165" name="L_Tryptophan_Transport Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_165">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:36:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2295" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2294" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2293" name="Transporter_L_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2292" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_214">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2996">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2997">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2998">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2999">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3000">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3001">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3002">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3003">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3004">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_166" name="L_Lkynr_Transporter_Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_166">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_189" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2291" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2290" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_2289" name="Transporter_L_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_2288" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_215">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3014">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3015">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3016">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3017">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3018">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3019">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3020">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3021">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3022">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_167" name="L_Lkynr_Transporter_Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_167">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:40:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_189" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2287" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2286" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2285" name="Transporter_L_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2284" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_216">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3032">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3033">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3034">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3035">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3036">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3037">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3038">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3039">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3040">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_189"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_130"/>
      <StateTemplateVariable objectReference="Metabolite_110"/>
      <StateTemplateVariable objectReference="Metabolite_166"/>
      <StateTemplateVariable objectReference="Metabolite_186"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_191"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_181"/>
      <StateTemplateVariable objectReference="Metabolite_170"/>
      <StateTemplateVariable objectReference="Metabolite_114"/>
      <StateTemplateVariable objectReference="Metabolite_168"/>
      <StateTemplateVariable objectReference="Metabolite_112"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_206"/>
      <StateTemplateVariable objectReference="Metabolite_184"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_208"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_185"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_132"/>
      <StateTemplateVariable objectReference="Metabolite_134"/>
      <StateTemplateVariable objectReference="Metabolite_136"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_138"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_140"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_142"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_144"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_146"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_148"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_152"/>
      <StateTemplateVariable objectReference="Metabolite_154"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_156"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_158"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_160"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_162"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_164"/>
      <StateTemplateVariable objectReference="Metabolite_150"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_172"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_174"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_176"/>
      <StateTemplateVariable objectReference="Metabolite_178"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_180"/>
      <StateTemplateVariable objectReference="Metabolite_182"/>
      <StateTemplateVariable objectReference="Metabolite_183"/>
      <StateTemplateVariable objectReference="Metabolite_187"/>
      <StateTemplateVariable objectReference="Metabolite_188"/>
      <StateTemplateVariable objectReference="Metabolite_190"/>
      <StateTemplateVariable objectReference="Metabolite_192"/>
      <StateTemplateVariable objectReference="Metabolite_193"/>
      <StateTemplateVariable objectReference="Metabolite_194"/>
      <StateTemplateVariable objectReference="Metabolite_195"/>
      <StateTemplateVariable objectReference="Metabolite_196"/>
      <StateTemplateVariable objectReference="Metabolite_197"/>
      <StateTemplateVariable objectReference="Metabolite_198"/>
      <StateTemplateVariable objectReference="Metabolite_199"/>
      <StateTemplateVariable objectReference="Metabolite_200"/>
      <StateTemplateVariable objectReference="Metabolite_201"/>
      <StateTemplateVariable objectReference="Metabolite_202"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_204"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Metabolite_210"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_212"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_214"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="Metabolite_216"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_218"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9.033212685000001e+20 9.033212249599149e+20 9.033212685000001e+20 9.033212249599149e+20 0 9.033212685000001e+20 0 0 0 0 9.033212685000001e+20 9033212685000002 0 9.03321225e+20 9.03321225e+20 9.03321225e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 2.7099638055e+19 0 9.033212685000001e+20 0 0 9.033212685000001e+20 9.033212685000001e+20 9.033212685000001e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 9.03321225e+20 9.033212685000001e+20 0 0 0 0 0 1.80664244991983e+20 0 9.033212685000001e+20 9.033212249599149e+20 9.033212685000001e+20 9.033212249599149e+20 0 9.033212685000001e+20 0 0 0 0 9.033212685000001e+20 9033212685000002 0 9.03321225e+20 9.03321225e+20 9.03321225e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 2.7099638055e+19 0 9.033212685000001e+20 0 0 9.033212685000001e+20 9.033212685000001e+20 9.033212685000001e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 9.03321225e+20 9.033212685000001e+20 0 0 0 0 0 1.5 6 1.5 1 8443.5712890625 4604.3881835938 8482.44921875 3.8 4.7 7271.5747070313 1.35 0.88 5408.1069335938 0.4 0.05 0.211 435.4161987305 0.049 10 368.3154602051 0.045 0.02 0.1 1689.0286865234 1.38 0.27 0.08599999999999999 0.028 3813.2016601563 1338.39453125 2.2 0.495 0.032 0.0573 2708.4135742188 0.019 14212.716796875 226447.453125 0.43 0.033 0.042 1.7 9.76 1.3 1.3 9455.1357421875 7744.3154296875 15588.2099609375 2770.9680175781 15820.2158203125 36074.9140625 453.4833679199 4186.5874023438 2226.3728027344 56601.7578125 1961.5135498047 137204.8125 294114.875 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          &lt;CN=Root,Model=Tryptophan metabolism Turnover,Vector=Compartments[Blood],Vector=Metabolites[Lkynr_ex],Reference=Concentration&gt;
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AADAT_B_E_T_kat1],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="8443.57"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AADAT_B_E_T_kat2],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AADAT_B_E_T_kat3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AADAT_L_E_T_kat1],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AADAT_L_E_T_kat2],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AADAT_L_E_T_kat3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AANAT_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AANAT_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AFMID_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[AFMID_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[DDC_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[DDC_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[IDO_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[IDO_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[IMNT_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[KYNU_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[KYNU_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[MAOA_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[MAOA_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[MAOB_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[MAOB_L_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[Transporter_B_E_T_Slc7a5],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[Transporter_B_E_T_Slc7a8],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[Transporter_L_E_T_Slc7a5],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[Transporter_L_E_T_Slc7a8],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Compartments[Blood],Reference=InitialVolume"/>
            <Parameter name="StartValue" type="float" value="6"/>
            <Parameter name="UpperBound" type="cn" value="8"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Compartments[Brain],Reference=InitialVolume"/>
            <Parameter name="StartValue" type="float" value="1.5"/>
            <Parameter name="UpperBound" type="cn" value="3"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Compartments[Liver],Reference=InitialVolume"/>
            <Parameter name="StartValue" type="float" value="1.5"/>
            <Parameter name="UpperBound" type="cn" value="3"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="twoTissues.xml">
    <SBMLMap SBMLid="AADAT_B_E_T_kat1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="AADAT_B_E_T_kat2" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="AADAT_B_E_T_kat3" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="AADAT_Km_Lkynr" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="AADAT_Km_hLkynr" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="AADAT_L_E_T_kat1" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="AADAT_L_E_T_kat2" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="AADAT_L_E_T_kat3" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="AADAT_kcat_Lkynr" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="AADAT_kcat_hLkynr" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="AANAT_B_E_T" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="AANAT_Km_Srtn" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="AANAT_Km_trypta" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="AANAT_L_E_T" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="AFMID_B_E_T" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="AFMID_Km_5hoxnfky" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="AFMID_Km_Lfmkynr" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="AFMID_Km_nformanth" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="AFMID_L_E_T" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="B_3hanthrn_c" COPASIkey="Metabolite_110"/>
    <SBMLMap SBMLid="B_5hoxindact_c" COPASIkey="Metabolite_156"/>
    <SBMLMap SBMLid="B_5hoxnfkyn_c" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="B_5htrp_c" COPASIkey="Metabolite_112"/>
    <SBMLMap SBMLid="B_5hxkyn_c" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="B_AANAT_Trypta" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="B_Cinnavalininate_c" COPASIkey="Metabolite_148"/>
    <SBMLMap SBMLid="B_Lfmkynr_c" COPASIkey="Metabolite_114"/>
    <SBMLMap SBMLid="B_Lkynr_c" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="B_Lkynr_trans_Slc7a5" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="B_Lkynr_trans_Slc7a8" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="B_Nacsertn_c" COPASIkey="Metabolite_157"/>
    <SBMLMap SBMLid="B_Nactrypta_c" COPASIkey="Metabolite_164"/>
    <SBMLMap SBMLid="B_R00677" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="B_R00678_Indo" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="B_R00678_Tdo" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="B_R00685" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="B_R00987" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="B_R00988" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="B_R01814_Tph1" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="B_R01814_Tph2" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="B_R01956_Kat1" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="B_R01956_Kat2" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="B_R01956_Kat3" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="B_R01959" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="B_R01960" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="B_R02173_Maoa" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="B_R02173_Maob" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="B_R02174" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="B_R02174_metTrypta" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="B_R02665" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="B_R02668" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="B_R02670" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="B_R02701" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="B_R02702" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="B_R02908_Maoa" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="B_R02908_Maob" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="B_R02909" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="B_R02910" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="B_R02911" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="B_R03005" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="B_R03348" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="B_R03664" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="B_R03936" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="B_R04171_Kat1" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="B_R04171_Kat2" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="B_R04171_Kat3" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="B_R04323" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="B_R04911" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="B_TRPtrans_Slc7a5" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="B_TRPtrans_Slc7a8" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="B_Xanthurenate" COPASIkey="Metabolite_160"/>
    <SBMLMap SBMLid="B_accoa_c" COPASIkey="Metabolite_158"/>
    <SBMLMap SBMLid="B_ahcys_c" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="B_akg_c" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="B_ala_DASH_L_c" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="B_am6sa_c" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="B_amet_c" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="B_amp_c" COPASIkey="Metabolite_136"/>
    <SBMLMap SBMLid="B_anth_c" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="B_atp_c" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="B_cmusa_c" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="B_co2_c" COPASIkey="Metabolite_138"/>
    <SBMLMap SBMLid="B_coa_c" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="B_dhbpt_c" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="B_dnad_c" COPASIkey="Metabolite_154"/>
    <SBMLMap SBMLid="B_f5hoxkyn_c" COPASIkey="Metabolite_161"/>
    <SBMLMap SBMLid="B_for_c" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="B_glu_DASH_L_c" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="B_h2o2_c" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="B_h2o_c" COPASIkey="Metabolite_140"/>
    <SBMLMap SBMLid="B_hLkynr_c" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="B_h_c" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="B_id3acald_c" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="B_indpyr_c" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="B_kynate_c" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="B_nadp_c" COPASIkey="Metabolite_142"/>
    <SBMLMap SBMLid="B_nadph_c" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="B_nformanth_c" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="B_nh4_c" COPASIkey="Metabolite_144"/>
    <SBMLMap SBMLid="B_nicrnt_c" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="B_nmsrtn_c" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="B_nmtrpta_c" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="B_nndmtrpta_c" COPASIkey="Metabolite_162"/>
    <SBMLMap SBMLid="B_o2_c" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="B_o2s_c" COPASIkey="Metabolite_146"/>
    <SBMLMap SBMLid="B_ppi_c" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="B_prpp_c" COPASIkey="Metabolite_152"/>
    <SBMLMap SBMLid="B_quin_form" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="B_quln_c" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="B_srtn_c" COPASIkey="Metabolite_130"/>
    <SBMLMap SBMLid="B_thbpt" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="B_trna_trp_c" COPASIkey="Metabolite_132"/>
    <SBMLMap SBMLid="B_trp_DASH_L_c" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="B_trp_L_trna_c" COPASIkey="Metabolite_134"/>
    <SBMLMap SBMLid="B_trypta_c" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="Blood" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="Brain" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="DDC_B_E_T" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="DDC_Km_5htrp" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="DDC_Km_trp_DASH_L" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="DDC_L_E_T" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="IDO_B_E_T" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="IDO_Km_5htrp" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="IDO_Km_O2" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="IDO_Km_srtn" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="IDO_Km_trp_DASH_L" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="IDO_L_E_T" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="IMNT_B_E_T" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="IMNT_Km_nmtrpta" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="IMNT_Km_srtn" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="IMNT_Km_trypta" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="IMNT_L_E_T" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="KYNU_B_E_T" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="KYNU_Km_Lfmkynr" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="KYNU_Km_Lkynr" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="KYNU_Km_hLkynr" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="KYNU_L_E_T" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="L_3hanthrn_c" COPASIkey="Metabolite_166"/>
    <SBMLMap SBMLid="L_5hoxindact_c" COPASIkey="Metabolite_211"/>
    <SBMLMap SBMLid="L_5hoxnfkyn_c" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="L_5htrp_c" COPASIkey="Metabolite_168"/>
    <SBMLMap SBMLid="L_5hxkyn_c" COPASIkey="Metabolite_169"/>
    <SBMLMap SBMLid="L_AANAT_Trypta" COPASIkey="Reaction_163"/>
    <SBMLMap SBMLid="L_Cinnavalininate_c" COPASIkey="Metabolite_204"/>
    <SBMLMap SBMLid="L_Lfmkynr_c" COPASIkey="Metabolite_170"/>
    <SBMLMap SBMLid="L_Lkynr_c" COPASIkey="Metabolite_171"/>
    <SBMLMap SBMLid="L_Lkynr_trans_Slc7a5" COPASIkey="Reaction_166"/>
    <SBMLMap SBMLid="L_Lkynr_trans_Slc7a8" COPASIkey="Reaction_167"/>
    <SBMLMap SBMLid="L_Nacsertn_c" COPASIkey="Metabolite_212"/>
    <SBMLMap SBMLid="L_Nactrypta_c" COPASIkey="Metabolite_219"/>
    <SBMLMap SBMLid="L_R00677" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="L_R00678_Indo" COPASIkey="Reaction_145"/>
    <SBMLMap SBMLid="L_R00678_Tdo" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="L_R00685" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="L_R00987" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="L_R00988" COPASIkey="Reaction_148"/>
    <SBMLMap SBMLid="L_R01814_Tph1" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="L_R01814_Tph2" COPASIkey="Reaction_164"/>
    <SBMLMap SBMLid="L_R01956_Kat1" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="L_R01956_Kat2" COPASIkey="Reaction_157"/>
    <SBMLMap SBMLid="L_R01956_Kat3" COPASIkey="Reaction_158"/>
    <SBMLMap SBMLid="L_R01959" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="L_R01960" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="L_R02173_Maoa" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="L_R02173_Maob" COPASIkey="Reaction_162"/>
    <SBMLMap SBMLid="L_R02174" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="L_R02174_metTrypta" COPASIkey="Reaction_155"/>
    <SBMLMap SBMLid="L_R02665" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="L_R02668" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="L_R02670" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="L_R02701" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="L_R02702" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="L_R02908_Maoa" COPASIkey="Reaction_151"/>
    <SBMLMap SBMLid="L_R02908_Maob" COPASIkey="Reaction_161"/>
    <SBMLMap SBMLid="L_R02909" COPASIkey="Reaction_154"/>
    <SBMLMap SBMLid="L_R02910" COPASIkey="Reaction_156"/>
    <SBMLMap SBMLid="L_R02911" COPASIkey="Reaction_152"/>
    <SBMLMap SBMLid="L_R03005" COPASIkey="Reaction_149"/>
    <SBMLMap SBMLid="L_R03348" COPASIkey="Reaction_146"/>
    <SBMLMap SBMLid="L_R03664" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="L_R03936" COPASIkey="Reaction_147"/>
    <SBMLMap SBMLid="L_R04171_Kat1" COPASIkey="Reaction_153"/>
    <SBMLMap SBMLid="L_R04171_Kat2" COPASIkey="Reaction_159"/>
    <SBMLMap SBMLid="L_R04171_Kat3" COPASIkey="Reaction_160"/>
    <SBMLMap SBMLid="L_R04323" COPASIkey="Reaction_150"/>
    <SBMLMap SBMLid="L_R04911" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="L_TRPtrans_Slc7a5" COPASIkey="Reaction_144"/>
    <SBMLMap SBMLid="L_TRPtrans_Slc7a8" COPASIkey="Reaction_165"/>
    <SBMLMap SBMLid="L_Xanthurenate" COPASIkey="Metabolite_215"/>
    <SBMLMap SBMLid="L_accoa_c" COPASIkey="Metabolite_213"/>
    <SBMLMap SBMLid="L_ahcys_c" COPASIkey="Metabolite_172"/>
    <SBMLMap SBMLid="L_akg_c" COPASIkey="Metabolite_173"/>
    <SBMLMap SBMLid="L_ala_DASH_L_c" COPASIkey="Metabolite_174"/>
    <SBMLMap SBMLid="L_am6sa_c" COPASIkey="Metabolite_210"/>
    <SBMLMap SBMLid="L_amet_c" COPASIkey="Metabolite_175"/>
    <SBMLMap SBMLid="L_amp_c" COPASIkey="Metabolite_192"/>
    <SBMLMap SBMLid="L_anth_c" COPASIkey="Metabolite_176"/>
    <SBMLMap SBMLid="L_atp_c" COPASIkey="Metabolite_193"/>
    <SBMLMap SBMLid="L_cmusa_c" COPASIkey="Metabolite_177"/>
    <SBMLMap SBMLid="L_co2_c" COPASIkey="Metabolite_194"/>
    <SBMLMap SBMLid="L_coa_c" COPASIkey="Metabolite_214"/>
    <SBMLMap SBMLid="L_dhbpt_c" COPASIkey="Metabolite_178"/>
    <SBMLMap SBMLid="L_dnad_c" COPASIkey="Metabolite_209"/>
    <SBMLMap SBMLid="L_f5hoxkyn_c" COPASIkey="Metabolite_216"/>
    <SBMLMap SBMLid="L_for_c" COPASIkey="Metabolite_179"/>
    <SBMLMap SBMLid="L_glu_DASH_L_c" COPASIkey="Metabolite_180"/>
    <SBMLMap SBMLid="L_h2o2_c" COPASIkey="Metabolite_195"/>
    <SBMLMap SBMLid="L_h2o_c" COPASIkey="Metabolite_196"/>
    <SBMLMap SBMLid="L_hLkynr_c" COPASIkey="Metabolite_181"/>
    <SBMLMap SBMLid="L_h_c" COPASIkey="Metabolite_197"/>
    <SBMLMap SBMLid="L_id3acald_c" COPASIkey="Metabolite_182"/>
    <SBMLMap SBMLid="L_indpyr_c" COPASIkey="Metabolite_183"/>
    <SBMLMap SBMLid="L_kynate_c" COPASIkey="Metabolite_205"/>
    <SBMLMap SBMLid="L_nadp_c" COPASIkey="Metabolite_198"/>
    <SBMLMap SBMLid="L_nadph_c" COPASIkey="Metabolite_199"/>
    <SBMLMap SBMLid="L_nformanth_c" COPASIkey="Metabolite_208"/>
    <SBMLMap SBMLid="L_nh4_c" COPASIkey="Metabolite_200"/>
    <SBMLMap SBMLid="L_nicrnt_c" COPASIkey="Metabolite_206"/>
    <SBMLMap SBMLid="L_nmsrtn_c" COPASIkey="Metabolite_218"/>
    <SBMLMap SBMLid="L_nmtrpta_c" COPASIkey="Metabolite_184"/>
    <SBMLMap SBMLid="L_nndmtrpta_c" COPASIkey="Metabolite_217"/>
    <SBMLMap SBMLid="L_o2_c" COPASIkey="Metabolite_201"/>
    <SBMLMap SBMLid="L_o2s_c" COPASIkey="Metabolite_202"/>
    <SBMLMap SBMLid="L_ppi_c" COPASIkey="Metabolite_203"/>
    <SBMLMap SBMLid="L_prpp_c" COPASIkey="Metabolite_207"/>
    <SBMLMap SBMLid="L_quin_form" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="L_quln_c" COPASIkey="Metabolite_185"/>
    <SBMLMap SBMLid="L_srtn_c" COPASIkey="Metabolite_186"/>
    <SBMLMap SBMLid="L_thbpt" COPASIkey="Metabolite_187"/>
    <SBMLMap SBMLid="L_trna_trp_c" COPASIkey="Metabolite_188"/>
    <SBMLMap SBMLid="L_trp_DASH_L_c" COPASIkey="Metabolite_189"/>
    <SBMLMap SBMLid="L_trp_L_trna_c" COPASIkey="Metabolite_190"/>
    <SBMLMap SBMLid="L_trypta_c" COPASIkey="Metabolite_191"/>
    <SBMLMap SBMLid="Liver" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="Lkynr_ex" COPASIkey="Metabolite_165"/>
    <SBMLMap SBMLid="MAOA_B_E_T" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="MAOA_L_E_T" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="MAOB_B_E_T" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="MAOB_L_E_T" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="MAO_Km_srtn" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="MAO_Km_trypta" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="TRP_ex" COPASIkey="Metabolite_150"/>
    <SBMLMap SBMLid="Transporter_B_E_T_Slc7a5" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Transporter_B_E_T_Slc7a8" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Transporter_Km_Lkynr" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Transporter_Km_Trp_Slc7a5" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Transporter_Km_Trp_Slc7a8" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Transporter_L_E_T_Slc7a5" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="Transporter_L_E_T_Slc7a8" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="Transporter_kcat_Lkynr" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="Transporter_kcat_Trp" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="function_5" COPASIkey="Function_126"/>
    <SBMLMap SBMLid="scaling" COPASIkey="ModelValue_3"/>
  </SBMLReference>
</COPASI>

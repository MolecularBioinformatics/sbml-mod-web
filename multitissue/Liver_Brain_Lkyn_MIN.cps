<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.9.43+ (Development) (http://www.copasi.org) at 2013-05-27 13:20:41 UTC -->
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
    <Function key="Function_40" name="Function for B_IL4I1_kcat_set_to_1" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*B_h2o_c*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_o2_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_254" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="B_h2o_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="B_o2_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_258" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for B_TDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*scaling/(Ka*Kb+Ka*B_o2_c+Kb*B_trp_DASH_L_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="B_trp_DASH_L_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="Ka" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="Kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for B_DDC_trypta" type="UserDefined" reversible="false">
      <Expression>
        DDC_B_E_T*kcat_B*scaling*B_trp_DASH_L_c*DDC_Km_5htrp/(DDC_Km_trp_DASH_L*DDC_Km_5htrp+DDC_Km_trp_DASH_L*B_5htrp_c+DDC_Km_5htrp*B_trp_DASH_L_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="B_5htrp_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="B_trp_DASH_L_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="DDC_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="DDC_Km_5htrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="DDC_Km_trp_DASH_L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for B_KYNU_Lkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_B_E_T*kcat_A*scaling*B_Lkynr_c*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr/(KYNU_Km_Lkynr*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*B_Lkynr_c+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*B_hLkynr_c+KYNU_Km_Lkynr*KYNU_Km_hLkynr*B_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="B_Lfmkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="B_Lkynr_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="B_hLkynr_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="KYNU_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="KYNU_Km_Lfmkynr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="KYNU_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="KYNU_Km_hLkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for B_TPH1" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*B_thbpt*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_o2_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="B_thbpt" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_303" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for B_AADAT_Lkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat1*AADAT_kcat_Lkynr*scaling*B_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*B_hLkynr_c+AADAT_Km_hLkynr*B_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="AADAT_B_E_T_kat1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="B_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="B_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for B_AFMID_lfmkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_B_E_T*kcat_A*scaling*B_Lfmkynr_c*AFMID_Km_5hoxnfky*AFMID_Km_nformanth/(AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*AFMID_Km_nformanth+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*B_Lfmkynr_c+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*B_5hoxnfkyn_c+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*B_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="AFMID_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="AFMID_Km_5hoxnfky" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="AFMID_Km_Lfmkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="AFMID_Km_nformanth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="B_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="B_Lfmkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="B_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for B_KMO" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_Lkynr_c*B_o2_c*B_nadph_c*B_h_c*scaling/(Ka*Kb*Kc+B_Lkynr_c*Kb*Kc+B_o2_c*Ka*Kc+B_nadph_c*Ka*Kb+B_Lkynr_c*B_o2_c*Kc+B_o2_c*B_nadph_c*Ka+B_Lkynr_c*B_nadph_c*Kb+B_Lkynr_c*B_o2_c*B_nadph_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="B_Lkynr_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="B_h_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="B_nadph_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="B_o2_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="Ka" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="Kb" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="Kc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="kcat" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="scaling" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for B_INMT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_B_E_T*kcat_A*scaling*B_trypta_c*IMNT_Km_nmtrpta*IMNT_Km_srtn/(IMNT_Km_trypta*IMNT_Km_nmtrpta*IMNT_Km_srtn+IMNT_Km_nmtrpta*IMNT_Km_srtn*B_trypta_c+IMNT_Km_trypta*IMNT_Km_srtn*B_nmtrpta_c+IMNT_Km_trypta*IMNT_Km_nmtrpta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="B_nmtrpta_c" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_341" name="B_srtn_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="B_trypta_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="IMNT_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="IMNT_Km_nmtrpta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="IMNT_Km_srtn" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="IMNT_Km_trypta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for B_HAAO" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_3hanthrn_c*B_o2_c*scaling/(Ka*Kb+Ka*B_o2_c+Kb*B_3hanthrn_c+B_3hanthrn_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="B_3hanthrn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="B_E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="B_o2_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="Ka" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="Kb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for B_KYNU_hLkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_B_E_T*kcat_A*scaling*B_hLkynr_c*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr/(KYNU_Km_hLkynr*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*B_hLkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*B_Lkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lkynr*B_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="B_Lfmkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="B_Lkynr_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="B_hLkynr_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="KYNU_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="KYNU_Km_Lfmkynr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="KYNU_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="KYNU_Km_hLkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for B_DDC_5HT" type="UserDefined" reversible="false">
      <Expression>
        DDC_B_E_T*kcat_B*scaling*B_5htrp_c*DDC_Km_trp_DASH_L/(DDC_Km_5htrp*DDC_Km_trp_DASH_L+DDC_Km_5htrp*B_trp_DASH_L_c+DDC_Km_trp_DASH_L*B_5htrp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="B_5htrp_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_362" name="B_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_358" name="DDC_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="DDC_Km_5htrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="DDC_Km_trp_DASH_L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for B_IDO_5HT" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_B_E_T*B_5htrp_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn*scaling/(IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_5htrp_c*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_trp_DASH_L_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_srtn+B_srtn_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L+B_5htrp_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_trp_DASH_L_c*B_o2_c*IDO_Km_5htrp*IDO_Km_srtn+B_srtn_c*B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="B_5htrp_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_377" name="B_srtn_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_375" name="B_trp_DASH_L_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_359" name="IDO_B_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="IDO_Km_5htrp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="IDO_Km_O2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="IDO_Km_srtn" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="IDO_Km_trp_DASH_L" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for B_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_trna_trp_c*B_atp_c*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_trna_trp_c+B_trp_DASH_L_c*B_trna_trp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="B_atp_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="B_trna_trp_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_370" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_380" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for B_AFMID_5HNFK" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_B_E_T*kcat_A*scaling*B_5hoxnfkyn_c*AFMID_Km_Lfmkynr*AFMID_Km_nformanth/(AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*AFMID_Km_nformanth+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*B_5hoxnfkyn_c+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*B_Lfmkynr_c+AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*B_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="AFMID_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="AFMID_Km_5hoxnfky" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="AFMID_Km_Lfmkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="AFMID_Km_nformanth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="B_5hoxnfkyn_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="B_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_392" name="B_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for B_MAOA_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_B_E_T*kcat_B*scaling*B_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*B_srtn_c+MAO_Km_srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="B_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="B_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="MAOA_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for B_Cinnavalinate formation" type="UserDefined" reversible="false">
      <Expression>
        k1*B_3hanthrn_c^e1*B_o2_c^e2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="B_3hanthrn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_391" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="e1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="e2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="k1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for B_Tryptophan_Transport Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a5,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a5,Transporter_kcat_Trp,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,Lkynr_ex,Transporter_Km_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="B_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_407" name="B_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_401" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_409" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_403" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="Transporter_B_E_T_Slc7a5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="Transporter_Km_Trp_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for B_IDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_B_E_T*B_trp_DASH_L_c*B_o2_c*IDO_Km_5htrp*IDO_Km_srtn*scaling/(IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+B_trp_DASH_L_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp*IDO_Km_srtn+B_5htrp_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_srtn+B_srtn_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp+B_trp_DASH_L_c*B_o2_c*IDO_Km_5htrp*IDO_Km_srtn+B_5htrp_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+B_srtn_c*B_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="B_5htrp_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_402" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_426" name="B_srtn_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_406" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="IDO_B_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="IDO_Km_5htrp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="IDO_Km_O2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="IDO_Km_srtn" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="IDO_Km_trp_DASH_L" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for B_QPRT" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_quln_c*B_prpp_c*B_h_c*scaling/(Ka*Kb+Kb*B_quln_c+Ka*B_prpp_c+B_quln_c*B_prpp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_423" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="B_h_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="B_prpp_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_419" name="B_quln_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for B_KYNU_Lfmkyn" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_B_E_T*kcat_A*scaling*B_Lfmkynr_c*KYNU_Km_Lkynr*KYNU_Km_hLkynr/(KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*KYNU_Km_hLkynr+KYNU_Km_Lkynr*KYNU_Km_hLkynr*B_Lfmkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_hLkynr*B_Lkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_421" name="B_Lfmkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_439" name="B_Lkynr_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_441" name="B_hLkynr_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_432" name="KYNU_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="KYNU_Km_Lfmkynr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="KYNU_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="KYNU_Km_hLkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for B_AFMID_nform" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_B_E_T*kcat_A*scaling*B_nformanth_c*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky/(AFMID_Km_nformanth*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*B_nformanth_c+AFMID_Km_nformanth*AFMID_Km_5hoxnfky*B_Lfmkynr_c+AFMID_Km_nformanth*AFMID_Km_Lfmkynr*B_5hoxnfkyn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_442" name="AFMID_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="AFMID_Km_5hoxnfky" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="AFMID_Km_Lfmkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="AFMID_Km_nformanth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="B_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_448" name="B_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_417" name="B_nformanth_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_438" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for B_NMNAT1" type="UserDefined" reversible="false">
      <Expression>
        B_E_T*kcat*B_nicrnt_c*B_h_c*B_atp_c*scaling/(Km+B_nicrnt_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="B_atp_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_425" name="B_h_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_443" name="B_nicrnt_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_455" name="Km" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for B_ACMSD" type="UserDefined" reversible="false">
      <Expression>
        B_E_T*kcat*B_cmusa_c*scaling/(Km+B_cmusa_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="B_cmusa_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_458" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for B_MAOA_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_B_E_T*kcat_B*scaling*B_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*B_trypta_c+MAO_Km_trypta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_461" name="B_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_467" name="B_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_459" name="MAOA_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for B_AANAT_Srtn" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_B_E_T*kcat_B*scaling*B_srtn_c*AANAT_Km_trypta/(AANAT_Km_Srtn*AANAT_Km_trypta+AANAT_Km_Srtn*B_trypta_c+AANAT_Km_trypta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_468" name="AANAT_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="AANAT_Km_Srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_470" name="AANAT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="B_srtn_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_474" name="B_trypta_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_464" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for B_AADAT_hLkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat1*AADAT_kcat_hLkynr*scaling*B_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*B_Lkynr_c+AADAT_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_475" name="AADAT_B_E_T_kat1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_479" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_471" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="B_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_466" name="B_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_436" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for B_IDO_SRTN" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_B_E_T*B_srtn_c*B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*scaling/(IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_srtn_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_o2_c*IDO_Km_srtn*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_5htrp_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_trp_DASH_L+B_trp_DASH_L_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp+B_srtn_c*B_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L+B_5htrp_c*B_o2_c*IDO_Km_srtn*IDO_Km_trp_DASH_L+B_trp_DASH_L_c*B_o2_c*IDO_Km_srtn*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_494" name="B_5htrp_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_473" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_462" name="B_srtn_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_496" name="B_trp_DASH_L_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_478" name="IDO_B_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="IDO_Km_5htrp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_492" name="IDO_Km_O2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="IDO_Km_srtn" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_486" name="IDO_Km_trp_DASH_L" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_482" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for B_INMT_methyltrypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_B_E_T*kcat_A*scaling*B_nmtrpta_c*IMNT_Km_srtn*IMNT_Km_trypta/(IMNT_Km_nmtrpta*IMNT_Km_srtn*IMNT_Km_trypta+IMNT_Km_srtn*IMNT_Km_trypta*B_nmtrpta_c+IMNT_Km_nmtrpta*IMNT_Km_trypta*B_srtn_c+IMNT_Km_nmtrpta*IMNT_Km_srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_485" name="B_nmtrpta_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_501" name="B_srtn_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_503" name="B_trypta_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_497" name="IMNT_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="IMNT_Km_nmtrpta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="IMNT_Km_srtn" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="IMNT_Km_trypta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_493" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_489" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for B_INMT_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_B_E_T*kcat_A*scaling*B_srtn_c*IMNT_Km_nmtrpta*IMNT_Km_trypta/(IMNT_Km_srtn*IMNT_Km_nmtrpta*IMNT_Km_trypta+IMNT_Km_nmtrpta*IMNT_Km_trypta*B_srtn_c+IMNT_Km_srtn*IMNT_Km_trypta*B_nmtrpta_c+IMNT_Km_srtn*IMNT_Km_nmtrpta*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_510" name="B_nmtrpta_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_487" name="B_srtn_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_512" name="B_trypta_c" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_504" name="IMNT_B_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_495" name="IMNT_Km_nmtrpta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_508" name="IMNT_Km_srtn" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="IMNT_Km_trypta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for B_AADAT_hLkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat2*AADAT_kcat_hLkynr*scaling*B_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*B_Lkynr_c+AADAT_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_513" name="AADAT_B_E_T_kat2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_502" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_515" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="B_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_483" name="B_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_505" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for B_AADAT_hLkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat3*AADAT_kcat_hLkynr*scaling*B_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*B_Lkynr_c+AADAT_Km_Lkynr*B_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_518" name="AADAT_B_E_T_kat3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_522" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_514" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_524" name="B_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_511" name="B_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_491" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for B_AADAT_Lkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat2*AADAT_kcat_Lkynr*scaling*B_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*B_hLkynr_c+AADAT_Km_hLkynr*B_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_525" name="AADAT_B_E_T_kat2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_529" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_521" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="B_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_531" name="B_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_507" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for B_AADAT_Lkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_B_E_T_kat3*AADAT_kcat_Lkynr*scaling*B_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*B_hLkynr_c+AADAT_Km_hLkynr*B_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_532" name="AADAT_B_E_T_kat3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_536" name="AADAT_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_534" name="AADAT_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="B_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_538" name="B_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_498" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for B_MAOB_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_B_E_T*kcat_B*scaling*B_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*B_trypta_c+MAO_Km_trypta*B_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_530" name="B_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_545" name="B_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_539" name="MAOB_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_519" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for B_MAOB_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_B_E_T*kcat_B*scaling*B_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*B_srtn_c+MAO_Km_srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_552" name="B_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_537" name="B_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_546" name="MAOB_B_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_548" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for B_AANAT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_B_E_T*kcat_B*scaling*B_trypta_c*AANAT_Km_Srtn/(AANAT_Km_trypta*AANAT_Km_Srtn+AANAT_Km_trypta*B_srtn_c+AANAT_Km_Srtn*B_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_553" name="AANAT_B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="AANAT_Km_Srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="AANAT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="B_srtn_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_544" name="B_trypta_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_549" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_533" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for B_TPH2" type="UserDefined" reversible="false">
      <Expression>
        kcat*B_E_T*B_trp_DASH_L_c*B_o2_c*B_thbpt*scaling/(Ka*Kb+Kb*B_trp_DASH_L_c+Ka*B_o2_c+B_trp_DASH_L_c*B_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_556" name="B_E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="B_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_562" name="B_thbpt" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_540" name="B_trp_DASH_L_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_566" name="Ka" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="Kb" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for B_Tryptophan_Transport Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a8,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a8,Transporter_kcat_Trp,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,Lkynr_ex,Transporter_Km_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_578" name="B_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_572" name="B_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_569" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_574" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_554" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_565" name="Transporter_B_E_T_Slc7a8" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_570" name="Transporter_Km_Trp_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_561" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for B_Lkynr_Transporter_Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a5,Transporter_kcat_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,TRP_ex,Transporter_Km_Trp_Slc7a5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_547" name="B_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_583" name="B_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_579" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_581" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_587" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_575" name="Transporter_B_E_T_Slc7a5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_585" name="Transporter_Km_Trp_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_571" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for B_Lkynr_Transporter_Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Brain*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_B_E_T_Slc7a8,Transporter_kcat_Lkynr,B_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,B_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,TRP_ex,Transporter_Km_Trp_Slc7a8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_558" name="B_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_592" name="B_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_588" name="Brain" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_590" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_596" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_584" name="Transporter_B_E_T_Slc7a8" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="Transporter_Km_Lkynr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_594" name="Transporter_Km_Trp_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_580" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for L_IL4I1_kcat_set_to_1" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*L_h2o_c*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_o2_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_601" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_603" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_593" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_586" name="L_h2o_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_563" name="L_o2_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_589" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_597" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for L_TDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*scaling/(Ka*Kb+Ka*L_o2_c+Kb*L_trp_DASH_L_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_607" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_609" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_591" name="L_o2_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_582" name="L_trp_DASH_L_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_604" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for L_DDC_trypta" type="UserDefined" reversible="false">
      <Expression>
        DDC_L_E_T*kcat_B*scaling*L_trp_DASH_L_c*DDC_Km_5htrp/(DDC_Km_trp_DASH_L*DDC_Km_5htrp+DDC_Km_trp_DASH_L*L_5htrp_c+DDC_Km_5htrp*L_trp_DASH_L_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_612" name="DDC_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_614" name="DDC_Km_trp_DASH_L" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_610" name="DDC_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="L_5htrp_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_602" name="L_trp_DASH_L_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_606" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_573" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for L_KYNU_Lkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_L_E_T*kcat_A*scaling*L_Lkynr_c*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr/(KYNU_Km_Lkynr*KYNU_Km_hLkynr*KYNU_Km_Lfmkynr+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*L_Lkynr_c+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*L_hLkynr_c+KYNU_Km_Lkynr*KYNU_Km_hLkynr*L_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_621" name="KYNU_Km_Lfmkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_623" name="KYNU_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_619" name="KYNU_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_617" name="KYNU_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_627" name="L_Lfmkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_608" name="L_Lkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_625" name="L_hLkynr_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_613" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for L_TPH1" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*L_thbpt*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_o2_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_632" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_634" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_595" name="L_o2_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_615" name="L_thbpt" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_620" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_628" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_630" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for L_AADAT_Lkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat1*AADAT_kcat_Lkynr*scaling*L_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*L_hLkynr_c+AADAT_Km_hLkynr*L_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_638" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_636" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_635" name="AADAT_L_E_T_kat1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_631" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_622" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_640" name="L_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_611" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for L_AFMID_lfmkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_L_E_T*kcat_A*scaling*L_Lfmkynr_c*AFMID_Km_5hoxnfky*AFMID_Km_nformanth/(AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*AFMID_Km_nformanth+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*L_Lfmkynr_c+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*L_5hoxnfkyn_c+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*L_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_643" name="AFMID_Km_5hoxnfky" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_647" name="AFMID_Km_Lfmkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_645" name="AFMID_Km_nformanth" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_641" name="AFMID_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="L_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_633" name="L_Lfmkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_651" name="L_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_637" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_618" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for L_KMO" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_Lkynr_c*L_o2_c*L_nadph_c*L_h_c*scaling/(Ka*Kb*Kc+L_Lkynr_c*Kb*Kc+L_o2_c*Ka*Kc+L_nadph_c*Ka*Kb+L_Lkynr_c*L_o2_c*Kc+L_o2_c*L_nadph_c*Ka+L_Lkynr_c*L_nadph_c*Kb+L_Lkynr_c*L_o2_c*L_nadph_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_658" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_660" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="Kc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_648" name="L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_644" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_654" name="L_h_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_639" name="L_nadph_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_629" name="L_o2_c" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_652" name="kcat" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_656" name="scaling" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for L_INMT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_L_E_T*kcat_A*scaling*L_trypta_c*IMNT_Km_nmtrpta*IMNT_Km_srtn/(IMNT_Km_trypta*IMNT_Km_nmtrpta*IMNT_Km_srtn+IMNT_Km_nmtrpta*IMNT_Km_srtn*L_trypta_c+IMNT_Km_trypta*IMNT_Km_srtn*L_nmtrpta_c+IMNT_Km_trypta*IMNT_Km_nmtrpta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_646" name="IMNT_Km_nmtrpta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_664" name="IMNT_Km_srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_666" name="IMNT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_663" name="IMNT_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_668" name="L_nmtrpta_c" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_670" name="L_srtn_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_626" name="L_trypta_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_659" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_655" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for L_HAAO" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_3hanthrn_c*L_o2_c*scaling/(Ka*Kb+Ka*L_o2_c+Kb*L_3hanthrn_c+L_3hanthrn_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_673" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_675" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_650" name="L_3hanthrn_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_667" name="L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_653" name="L_o2_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_671" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_661" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for L_KYNU_hLkynr" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_L_E_T*kcat_A*scaling*L_hLkynr_c*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr/(KYNU_Km_hLkynr*KYNU_Km_Lkynr*KYNU_Km_Lfmkynr+KYNU_Km_Lkynr*KYNU_Km_Lfmkynr*L_hLkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lfmkynr*L_Lkynr_c+KYNU_Km_hLkynr*KYNU_Km_Lkynr*L_Lfmkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_680" name="KYNU_Km_Lfmkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_678" name="KYNU_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_682" name="KYNU_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="KYNU_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_686" name="L_Lfmkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_684" name="L_Lkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_669" name="L_hLkynr_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_672" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_642" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for L_DDC_5HT" type="UserDefined" reversible="false">
      <Expression>
        DDC_L_E_T*kcat_B*scaling*L_5htrp_c*DDC_Km_trp_DASH_L/(DDC_Km_5htrp*DDC_Km_trp_DASH_L+DDC_Km_5htrp*L_trp_DASH_L_c+DDC_Km_trp_DASH_L*L_5htrp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_689" name="DDC_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_674" name="DDC_Km_trp_DASH_L" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_687" name="DDC_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_665" name="L_5htrp_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_691" name="L_trp_DASH_L_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_683" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_679" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for L_IDO_5HT" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_L_E_T*L_5htrp_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn*scaling/(IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_5htrp_c*IDO_Km_O2*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_trp_DASH_L_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_srtn+L_srtn_c*IDO_Km_5htrp*IDO_Km_O2*IDO_Km_trp_DASH_L+L_5htrp_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_trp_DASH_L_c*L_o2_c*IDO_Km_5htrp*IDO_Km_srtn+L_srtn_c*L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_700" name="IDO_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_702" name="IDO_Km_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_696" name="IDO_Km_srtn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_694" name="IDO_Km_trp_DASH_L" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_688" name="IDO_L_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_677" name="L_5htrp_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_685" name="L_o2_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_706" name="L_srtn_c" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_704" name="L_trp_DASH_L_c" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_692" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_698" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for L_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_trna_trp_c*L_atp_c*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_trna_trp_c+L_trp_DASH_L_c*L_trna_trp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_709" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_711" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_703" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_681" name="L_atp_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_695" name="L_trna_trp_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_699" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_707" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_690" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for L_AFMID_5HNFK" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_L_E_T*kcat_A*scaling*L_5hoxnfkyn_c*AFMID_Km_Lfmkynr*AFMID_Km_nformanth/(AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*AFMID_Km_nformanth+AFMID_Km_Lfmkynr*AFMID_Km_nformanth*L_5hoxnfkyn_c+AFMID_Km_5hoxnfky*AFMID_Km_nformanth*L_Lfmkynr_c+AFMID_Km_5hoxnfky*AFMID_Km_Lfmkynr*L_nformanth_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_717" name="AFMID_Km_5hoxnfky" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_713" name="AFMID_Km_Lfmkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_715" name="AFMID_Km_nformanth" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_712" name="AFMID_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_701" name="L_5hoxnfkyn_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_719" name="L_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_721" name="L_nformanth_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_708" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_693" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Function for L_MAOA_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_L_E_T*kcat_B*scaling*L_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*L_srtn_c+MAO_Km_srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_726" name="L_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_697" name="L_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_722" name="MAOA_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_710" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_724" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_718" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_714" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Function for L_Cinnavalinate formation" type="UserDefined" reversible="false">
      <Expression>
        k1*L_3hanthrn_c^e1*L_o2_c^e2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_723" name="L_3hanthrn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_720" name="L_o2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_705" name="e1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_729" name="e2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_727" name="k1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for L_Tryptophan_Transport Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a5,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a5,Transporter_kcat_Trp,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,Lkynr_ex,Transporter_Km_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_742" name="L_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_736" name="L_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_730" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_738" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_732" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_740" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_734" name="Transporter_Km_Trp_Slc7a5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_716" name="Transporter_L_E_T_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_725" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for L_IDO" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_L_E_T*L_trp_DASH_L_c*L_o2_c*IDO_Km_5htrp*IDO_Km_srtn*scaling/(IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+L_trp_DASH_L_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_srtn+L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp*IDO_Km_srtn+L_5htrp_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_srtn+L_srtn_c*IDO_Km_trp_DASH_L*IDO_Km_O2*IDO_Km_5htrp+L_trp_DASH_L_c*L_o2_c*IDO_Km_5htrp*IDO_Km_srtn+L_5htrp_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_srtn+L_srtn_c*L_o2_c*IDO_Km_trp_DASH_L*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_728" name="IDO_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_751" name="IDO_Km_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_745" name="IDO_Km_srtn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_749" name="IDO_Km_trp_DASH_L" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_739" name="IDO_L_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_753" name="L_5htrp_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_731" name="L_o2_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_755" name="L_srtn_c" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_735" name="L_trp_DASH_L_c" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_743" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_747" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="Function for L_QPRT" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_quln_c*L_prpp_c*L_h_c*scaling/(Ka*Kb+Kb*L_quln_c+Ka*L_prpp_c+L_quln_c*L_prpp_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_758" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_760" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_752" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_733" name="L_h_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_744" name="L_prpp_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_748" name="L_quln_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_756" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_741" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="Function for L_KYNU_Lfmkyn" type="UserDefined" reversible="unspecified">
      <Expression>
        KYNU_L_E_T*kcat_A*scaling*L_Lfmkynr_c*KYNU_Km_Lkynr*KYNU_Km_hLkynr/(KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*KYNU_Km_hLkynr+KYNU_Km_Lkynr*KYNU_Km_hLkynr*L_Lfmkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_hLkynr*L_Lkynr_c+KYNU_Km_Lfmkynr*KYNU_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_766" name="KYNU_Km_Lfmkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_762" name="KYNU_Km_Lkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_764" name="KYNU_Km_hLkynr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_761" name="KYNU_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_750" name="L_Lfmkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_768" name="L_Lkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_770" name="L_hLkynr_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_757" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_657" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="Function for L_AFMID_nform" type="UserDefined" reversible="unspecified">
      <Expression>
        AFMID_L_E_T*kcat_A*scaling*L_nformanth_c*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky/(AFMID_Km_nformanth*AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky+AFMID_Km_Lfmkynr*AFMID_Km_5hoxnfky*L_nformanth_c+AFMID_Km_nformanth*AFMID_Km_5hoxnfky*L_Lfmkynr_c+AFMID_Km_nformanth*AFMID_Km_Lfmkynr*L_5hoxnfkyn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_773" name="AFMID_Km_5hoxnfky" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_759" name="AFMID_Km_Lfmkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_775" name="AFMID_Km_nformanth" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_771" name="AFMID_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_779" name="L_5hoxnfkyn_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_777" name="L_Lfmkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_746" name="L_nformanth_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_767" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_763" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Function for L_NMNAT1" type="UserDefined" reversible="false">
      <Expression>
        L_E_T*kcat*L_nicrnt_c*L_h_c*L_atp_c*scaling/(Km+L_nicrnt_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_784" name="Km" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_780" name="L_E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_769" name="L_atp_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_754" name="L_h_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_772" name="L_nicrnt_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_776" name="kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_782" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for L_ACMSD" type="UserDefined" reversible="false">
      <Expression>
        L_E_T*kcat*L_cmusa_c*scaling/(Km+L_cmusa_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_787" name="Km" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_785" name="L_E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_737" name="L_cmusa_c" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_781" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_778" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for L_MAOA_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOA_L_E_T*kcat_B*scaling*L_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*L_trypta_c+MAO_Km_trypta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_790" name="L_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_796" name="L_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_788" name="MAOA_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_794" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_792" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_774" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_783" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for L_AANAT_Srtn" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_L_E_T*kcat_B*scaling*L_srtn_c*AANAT_Km_trypta/(AANAT_Km_Srtn*AANAT_Km_trypta+AANAT_Km_Srtn*L_trypta_c+AANAT_Km_trypta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_801" name="AANAT_Km_Srtn" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_799" name="AANAT_Km_trypta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_797" name="AANAT_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_786" name="L_srtn_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_803" name="L_trypta_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_793" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_789" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Function for L_AADAT_hLkynr_kat1" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat1*AADAT_kcat_hLkynr*scaling*L_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*L_Lkynr_c+AADAT_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_806" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_808" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_804" name="AADAT_L_E_T_kat1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_800" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_810" name="L_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_795" name="L_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_765" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Function for L_IDO_SRTN" type="UserDefined" reversible="false">
      <Expression>
        kcat*IDO_L_E_T*L_srtn_c*L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L*scaling/(IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_srtn_c*IDO_Km_O2*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_o2_c*IDO_Km_srtn*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_5htrp_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_trp_DASH_L+L_trp_DASH_L_c*IDO_Km_srtn*IDO_Km_O2*IDO_Km_5htrp+L_srtn_c*L_o2_c*IDO_Km_5htrp*IDO_Km_trp_DASH_L+L_5htrp_c*L_o2_c*IDO_Km_srtn*IDO_Km_trp_DASH_L+L_trp_DASH_L_c*L_o2_c*IDO_Km_srtn*IDO_Km_5htrp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_813" name="IDO_Km_5htrp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_821" name="IDO_Km_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_819" name="IDO_Km_srtn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_815" name="IDO_Km_trp_DASH_L" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_807" name="IDO_L_E_T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_823" name="L_5htrp_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_802" name="L_o2_c" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_791" name="L_srtn_c" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_825" name="L_trp_DASH_L_c" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_811" name="kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_817" name="scaling" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Function for L_INMT_methyltrypta" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_L_E_T*kcat_A*scaling*L_nmtrpta_c*IMNT_Km_srtn*IMNT_Km_trypta/(IMNT_Km_nmtrpta*IMNT_Km_srtn*IMNT_Km_trypta+IMNT_Km_srtn*IMNT_Km_trypta*L_nmtrpta_c+IMNT_Km_nmtrpta*IMNT_Km_trypta*L_srtn_c+IMNT_Km_nmtrpta*IMNT_Km_srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_828" name="IMNT_Km_nmtrpta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_798" name="IMNT_Km_srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_809" name="IMNT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_826" name="IMNT_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_814" name="L_nmtrpta_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_830" name="L_srtn_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_832" name="L_trypta_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_822" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_818" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Function for L_INMT_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        IMNT_L_E_T*kcat_A*scaling*L_srtn_c*IMNT_Km_nmtrpta*IMNT_Km_trypta/(IMNT_Km_srtn*IMNT_Km_nmtrpta*IMNT_Km_trypta+IMNT_Km_nmtrpta*IMNT_Km_trypta*L_srtn_c+IMNT_Km_srtn*IMNT_Km_trypta*L_nmtrpta_c+IMNT_Km_srtn*IMNT_Km_nmtrpta*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_824" name="IMNT_Km_nmtrpta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_837" name="IMNT_Km_srtn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_835" name="IMNT_Km_trypta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_833" name="IMNT_L_E_T" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_839" name="L_nmtrpta_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_816" name="L_srtn_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_841" name="L_trypta_c" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_829" name="kcat_A" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_805" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Function for L_AADAT_hLkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat2*AADAT_kcat_hLkynr*scaling*L_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*L_Lkynr_c+AADAT_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_831" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_844" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_842" name="AADAT_L_E_T_kat2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_838" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_846" name="L_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_812" name="L_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_834" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Function for L_AADAT_hLkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat3*AADAT_kcat_hLkynr*scaling*L_hLkynr_c*AADAT_Km_Lkynr/(AADAT_Km_hLkynr*AADAT_Km_Lkynr+AADAT_Km_hLkynr*L_Lkynr_c+AADAT_Km_Lkynr*L_hLkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_849" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_851" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_847" name="AADAT_L_E_T_kat3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_843" name="AADAT_kcat_hLkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_853" name="L_Lkynr_c" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_840" name="L_hLkynr_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_820" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Function for L_AADAT_Lkynr_kat2" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat2*AADAT_kcat_Lkynr*scaling*L_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*L_hLkynr_c+AADAT_Km_hLkynr*L_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_858" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_856" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_854" name="AADAT_L_E_T_kat2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_850" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_845" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_860" name="L_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_836" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="Function for L_AADAT_Lkynr_kat3" type="UserDefined" reversible="unspecified">
      <Expression>
        AADAT_L_E_T_kat3*AADAT_kcat_Lkynr*scaling*L_Lkynr_c*AADAT_Km_hLkynr/(AADAT_Km_Lkynr*AADAT_Km_hLkynr+AADAT_Km_Lkynr*L_hLkynr_c+AADAT_Km_hLkynr*L_Lkynr_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_865" name="AADAT_Km_Lkynr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_863" name="AADAT_Km_hLkynr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_861" name="AADAT_L_E_T_kat3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_857" name="AADAT_kcat_Lkynr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_852" name="L_Lkynr_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_867" name="L_hLkynr_c" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_827" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Function for L_MAOB_SRTN" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_L_E_T*kcat_B*scaling*L_srtn_c*MAO_Km_trypta/(MAO_Km_srtn*MAO_Km_trypta+MAO_Km_srtn*L_trypta_c+MAO_Km_trypta*L_srtn_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_859" name="L_srtn_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_874" name="L_trypta_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_868" name="MAOB_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_872" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_870" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_864" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_848" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="Function for L_MAOB_Trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        MAOB_L_E_T*kcat_B*scaling*L_trypta_c*MAO_Km_srtn/(MAO_Km_trypta*MAO_Km_srtn+MAO_Km_trypta*L_srtn_c+MAO_Km_srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_881" name="L_srtn_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_866" name="L_trypta_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_875" name="MAOB_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_877" name="MAO_Km_srtn" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_879" name="MAO_Km_trypta" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_871" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_855" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="Function for L_AANAT_trypta" type="UserDefined" reversible="unspecified">
      <Expression>
        AANAT_L_E_T*kcat_B*scaling*L_trypta_c*AANAT_Km_Srtn/(AANAT_Km_trypta*AANAT_Km_Srtn+AANAT_Km_trypta*L_srtn_c+AANAT_Km_Srtn*L_trypta_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_884" name="AANAT_Km_Srtn" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_886" name="AANAT_Km_trypta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_882" name="AANAT_L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_888" name="L_srtn_c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_873" name="L_trypta_c" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_878" name="kcat_B" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_862" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="Function for L_TPH2" type="UserDefined" reversible="false">
      <Expression>
        kcat*L_E_T*L_trp_DASH_L_c*L_o2_c*L_thbpt*scaling/(Ka*Kb+Kb*L_trp_DASH_L_c+Ka*L_o2_c+L_trp_DASH_L_c*L_o2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_895" name="Ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_897" name="Kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_885" name="L_E_T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_880" name="L_o2_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_891" name="L_thbpt" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_869" name="L_trp_DASH_L_c" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_889" name="kcat" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_893" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="Function for L_Tryptophan_Transport Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a8,Transporter_kcat_Trp,TRP_ex,Transporter_Km_Trp_Slc7a8,Transporter_kcat_Trp,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,Lkynr_ex,Transporter_Km_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_907" name="L_Lkynr_c" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_901" name="L_trp_DASH_L_c" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_898" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_903" name="Lkynr_ex" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_883" name="TRP_ex" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_905" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_899" name="Transporter_Km_Trp_Slc7a8" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_894" name="Transporter_L_E_T_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_890" name="Transporter_kcat_Trp" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Function for L_Lkynr_Transporter_Slc7a5" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a5,Transporter_kcat_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a5,TRP_ex,Transporter_Km_Trp_Slc7a5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_876" name="L_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_912" name="L_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_908" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_910" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_916" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_896" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_914" name="Transporter_Km_Trp_Slc7a5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_904" name="Transporter_L_E_T_Slc7a5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_900" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Function for L_Lkynr_Transporter_Slc7a8" type="UserDefined" reversible="true">
      <Expression>
        Liver*&quot;Enzyme competition for 2 reversible reactions&quot;(Transporter_L_E_T_Slc7a8,Transporter_kcat_Lkynr,L_Lkynr_c,Transporter_Km_Lkynr,Transporter_kcat_Lkynr,Lkynr_ex,Transporter_Km_Lkynr,L_trp_DASH_L_c,Transporter_Km_Trp_Slc7a8,TRP_ex,Transporter_Km_Trp_Slc7a8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_887" name="L_Lkynr_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_921" name="L_trp_DASH_L_c" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_917" name="Liver" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_919" name="Lkynr_ex" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_925" name="TRP_ex" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_906" name="Transporter_Km_Lkynr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_923" name="Transporter_Km_Trp_Slc7a8" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_913" name="Transporter_L_E_T_Slc7a8" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_909" name="Transporter_kcat_Lkynr" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Enzyme competition for 2 reversible reactions" type="UserDefined" reversible="unspecified">
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
        <ParameterDescription key="FunctionParameter_926" name="B_E_T" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_922" name="kcat_a" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_918" name="A" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_892" name="KmA" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_915" name="kcat_p" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_928" name="Pa" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_930" name="KmPa" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_932" name="B" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_934" name="KmB" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_936" name="Pb" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_938" name="KmPB" order="10" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Tryptophan metabolism Turnover" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+23">
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
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-05-27T15:02:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml" />
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Brain" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_1" name="Blood" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_2" name="Liver" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="B_3hanthrn_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="B_5hoxnfkyn_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="B_5htrp_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:31:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="B_5hxkyn_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T15:14:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="B_Lfmkynr_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:31:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="B_Lkynr_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:32:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="B_ahcys_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="B_akg_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="B_ala_DASH_L_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="B_amet_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="B_anth_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="B_cmusa_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="B_dhbpt_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:26:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="B_for_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="B_glu_DASH_L_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="B_hLkynr_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="B_id3acald_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="B_indpyr_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T11:23:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="B_nmtrpta_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="B_quln_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T08:39:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="B_srtn_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="B_thbpt" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="B_trna_trp_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="B_trp_DASH_L_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="B_trp_L_trna_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="B_trypta_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="B_amp_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="B_atp_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:38:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="B_co2_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="B_h2o2_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="B_h2o_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="B_h_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T14:37:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="B_nadp_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="B_nadph_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:33:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="B_nh4_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="B_o2_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:35:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="B_o2s_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="B_ppi_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="B_Cinnavalininate_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="B_kynate_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:28:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="B_nicrnt_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="B_prpp_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="B_nformanth_c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="B_dnad_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:32:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="B_am6sa_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="B_5hoxindact_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="B_Nacsertn_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-09T15:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="B_accoa_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="B_coa_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T09:05:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="B_Xanthurenate" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="B_f5hoxkyn_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="B_nndmtrpta_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="B_nmsrtn_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:57:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="B_Nactrypta_c" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="TRP_ex" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T14:37:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Lkynr_ex" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:45:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="L_3hanthrn_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="L_5hoxnfkyn_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="L_5htrp_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:31:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="L_5hxkyn_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T15:14:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="L_Lfmkynr_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:31:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="L_Lkynr_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:32:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="L_ahcys_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="L_akg_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="L_ala_DASH_L_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="L_amet_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="L_anth_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="L_cmusa_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="L_dhbpt_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:26:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="L_for_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="L_glu_DASH_L_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="L_hLkynr_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="L_id3acald_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="L_indpyr_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T11:23:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="L_nmtrpta_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="L_quln_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T08:39:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="L_srtn_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="L_thbpt" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="L_trna_trp_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="L_trp_DASH_L_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="L_trp_L_trna_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:30:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="L_trypta_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="L_amp_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:19:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="L_atp_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:38:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="L_co2_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="L_h2o2_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="L_h2o_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:27:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="L_h_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-21T14:37:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="L_nadp_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-01T14:34:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="L_nadph_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:33:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="L_nh4_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="L_o2_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:35:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="L_o2s_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="L_ppi_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="L_Cinnavalininate_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:25:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="L_kynate_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:28:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_96" name="L_nicrnt_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="L_prpp_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:36:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_98" name="L_nformanth_c" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:34:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="L_dnad_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T11:32:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_100" name="L_am6sa_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:50:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="L_5hoxindact_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_102" name="L_Nacsertn_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-09T15:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="L_accoa_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-25T13:18:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_104" name="L_coa_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-11T09:05:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="L_Xanthurenate" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T10:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_106" name="L_f5hoxkyn_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-22T12:43:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="L_nndmtrpta_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T07:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_108" name="L_nmsrtn_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-24T13:57:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="L_Nactrypta_c" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_109">
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
      <ModelValue key="ModelValue_0" name="scaling" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:09:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="AADAT_B_E_T_kat1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="AADAT_B_E_T_kat2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="AADAT_B_E_T_kat3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="AADAT_Km_hLkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:09:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="AADAT_Km_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:08:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="AANAT_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:11:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="AANAT_Km_Srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:11:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="AANAT_Km_trypta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:07:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="AFMID_B_E_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="AFMID_Km_5hoxnfky" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:13:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="AFMID_Km_Lfmkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:07:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="AFMID_Km_nformanth" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:17:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="DDC_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="DDC_Km_5htrp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="DDC_Km_trp_DASH_L" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="IDO_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:09:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="IDO_Km_trp_DASH_L" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:06:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="IDO_Km_5htrp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:20:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="IDO_Km_srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:20:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="IMNT_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="IMNT_Km_srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:07:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="IMNT_Km_trypta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:21:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="IMNT_Km_nmtrpta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:22:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="KYNU_Km_hLkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Transporter_B_E_T_Slc7a8" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="KYNU_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="KYNU_Km_Lfmkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:55:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="KYNU_Km_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:55:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Transporter_Km_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:56:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Transporter_Km_Trp_Slc7a8" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Transporter_B_E_T_Slc7a5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Transporter_Km_Trp_Slc7a5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="MAOA_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:59:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="MAOB_B_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:59:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="MAO_Km_srtn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:00:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="MAO_Km_trypta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:00:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="IDO_Km_O2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:09:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="AADAT_kcat_hLkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:47:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="AADAT_kcat_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:48:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Transporter_kcat_Trp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T16:12:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Transporter_kcat_Lkynr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T16:13:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="AADAT_L_E_T_kat1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="AADAT_L_E_T_kat2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="AADAT_L_E_T_kat3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="AANAT_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:11:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="AFMID_L_E_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="DDC_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:18:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="IDO_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T11:09:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="IMNT_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T12:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Transporter_L_E_T_Slc7a8" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="KYNU_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:53:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="Transporter_L_E_T_Slc7a5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:58:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="MAOA_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-08-29T10:59:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="MAOB_L_E_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
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
      <Reaction key="Reaction_0" name="B_IL4I1_kcat_set_to_1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15383589" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.2" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00677" />
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
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3171" name="kcat" value="1"/>
          <Constant key="Parameter_3170" name="B_E_T" value="2015.68"/>
          <Constant key="Parameter_3169" name="Ka" value="6.5"/>
          <Constant key="Parameter_3168" name="Kb" value="1.2"/>
          <Constant key="Parameter_3167" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Parameter_3170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_3169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_3168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_3171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="B_TDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.11" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678" />
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
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3166" name="B_E_T" value="3092.42"/>
          <Constant key="Parameter_3165" name="Ka" value="0.222"/>
          <Constant key="Parameter_3164" name="Kb" value="0.037"/>
          <Constant key="Parameter_3163" name="kcat" value="1.4"/>
          <Constant key="Parameter_3162" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_3166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_3165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_3164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_3163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="B_DDC_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4991409" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00685" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28" />
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
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3161" name="kcat_B" value="0.38"/>
          <Constant key="Parameter_3160" name="DDC_B_E_T" value="1"/>
          <Constant key="Parameter_3159" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_3158" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3157" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_3161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="B_KYNU_Lkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00987" />
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
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3156" name="kcat_A" value="0.23"/>
          <Constant key="Parameter_3155" name="KYNU_B_E_T" value="1"/>
          <Constant key="Parameter_3154" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3153" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3152" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3151" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_3156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="B_TPH1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17539919" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15663479" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10587452" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.16.4" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01814" />
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
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3150" name="kcat" value="0.57"/>
          <Constant key="Parameter_3149" name="B_E_T" value="336.486"/>
          <Constant key="Parameter_3148" name="Ka" value="0.0228"/>
          <Constant key="Parameter_3147" name="Kb" value="0.109"/>
          <Constant key="Parameter_3146" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_3149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_3148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Parameter_3147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_3150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="B_AADAT_Lkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.6.1.7" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01956" />
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
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3145" name="AADAT_B_E_T_kat1" value="1"/>
          <Constant key="Parameter_3144" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3143" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3142" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_3141" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="B_AFMID_lfmkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01959" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209258" />
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
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3140" name="kcat_A" value="100"/>
          <Constant key="Parameter_3139" name="AFMID_B_E_T" value="1"/>
          <Constant key="Parameter_3138" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_3137" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3136" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_3135" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Parameter_3140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="B_KMO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10672018 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.13.9" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01960" />
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
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3134" name="B_E_T" value="623.787"/>
          <Constant key="Parameter_3133" name="Ka" value="0.1"/>
          <Constant key="Parameter_3132" name="Kb" value="0.071"/>
          <Constant key="Parameter_3131" name="Kc" value="0.153"/>
          <Constant key="Parameter_3130" name="kcat" value="2.2"/>
          <Constant key="Parameter_3129" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_3134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_3133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_3132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_3131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_3130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="B_INMT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3949799" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9852119" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02174" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.1.1.49" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:441354" />
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
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3128" name="kcat_A" value="0.4"/>
          <Constant key="Parameter_3127" name="IMNT_B_E_T" value="1"/>
          <Constant key="Parameter_3126" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_3125" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_3124" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_3123" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_3128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="B_HAAO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3112306 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:12672479" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.6" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02665" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:439367" />
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
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3122" name="B_E_T" value="1061.39"/>
          <Constant key="Parameter_3121" name="Ka" value="0.016"/>
          <Constant key="Parameter_3120" name="Kb" value="0.615"/>
          <Constant key="Parameter_3119" name="kcat" value="64"/>
          <Constant key="Parameter_3118" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_3122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_3121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_3120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Parameter_3119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="B_KYNU_hLkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02668" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3" />
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
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3117" name="kcat_A" value="3.5"/>
          <Constant key="Parameter_3116" name="KYNU_B_E_T" value="1"/>
          <Constant key="Parameter_3115" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3114" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3113" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3112" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_3117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="B_DDC_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18547057" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02701" />
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
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3111" name="kcat_B" value="2"/>
          <Constant key="Parameter_3110" name="DDC_B_E_T" value="1"/>
          <Constant key="Parameter_3109" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_3108" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3107" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_3111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="B_IDO_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02702" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:685239" />
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
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3106" name="kcat" value="0.043"/>
          <Constant key="Parameter_3105" name="IDO_B_E_T" value="1"/>
          <Constant key="Parameter_3104" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_3103" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_3102" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_3101" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3100" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Parameter_3106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="B_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11676605" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:6.1.1.2" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03664" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:653740" />
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
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3099" name="kcat" value="1.1"/>
          <Constant key="Parameter_3098" name="B_E_T" value="18644.7"/>
          <Constant key="Parameter_3097" name="Ka" value="0.0074"/>
          <Constant key="Parameter_3096" name="Kb" value="0.0011"/>
          <Constant key="Parameter_3095" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_3098"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_3097"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Parameter_3096"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_3099"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="B_AFMID_5HNFK" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4135014" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04911" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209255" />
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
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3094" name="kcat_A" value="100"/>
          <Constant key="Parameter_3093" name="AFMID_B_E_T" value="1"/>
          <Constant key="Parameter_3092" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_3091" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3090" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_3089" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_3094"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="B_Quinolic Acid formation (spontaneous)" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15656614" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3088" name="k1" value="0.00025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_3088"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="B_MAOA_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11754741" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2021654" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02173" />
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
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3087" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_3086" name="MAOA_B_E_T" value="1"/>
          <Constant key="Parameter_3085" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_3084" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_3083" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Parameter_3087"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="B_Cinnavalinate formation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2949752" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17476692" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.11.1.6" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02670" />
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
          <Substrate metabolite="Metabolite_0" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="4"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_36" stoichiometry="2"/>
          <Product metabolite="Metabolite_29" stoichiometry="2"/>
          <Product metabolite="Metabolite_31" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3082" name="e1" value="2"/>
          <Constant key="Parameter_3081" name="e2" value="4"/>
          <Constant key="Parameter_3080" name="k1" value="5.6667e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_3082"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Parameter_3081"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Parameter_3080"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="B_Tryptophan_Transport Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2872885" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT1_HUMAN" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT2_HUMAN" />
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
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3079" name="Transporter_B_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_3078" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3077" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_3076" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="B_IDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678" />
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
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3075" name="kcat" value="1.65"/>
          <Constant key="Parameter_3074" name="IDO_B_E_T" value="1"/>
          <Constant key="Parameter_3073" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_3072" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_3071" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_3070" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3069" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Parameter_3075"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="B_QPRT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17868694" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03348" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.4.2.19" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:693620" />
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
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3068" name="kcat" value="0.255"/>
          <Constant key="Parameter_3067" name="B_E_T" value="9067.8"/>
          <Constant key="Parameter_3066" name="Ka" value="0.022"/>
          <Constant key="Parameter_3065" name="Kb" value="0.023"/>
          <Constant key="Parameter_3064" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Parameter_3067"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Parameter_3066"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Parameter_3065"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Parameter_3068"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="B_KYNU_Lfmkyn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:118164 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03936" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3" />
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
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3063" name="kcat_A" value="0.013"/>
          <Constant key="Parameter_3062" name="KYNU_B_E_T" value="1"/>
          <Constant key="Parameter_3061" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3060" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3059" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3058" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Parameter_3063"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="B_AFMID_nform" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00988" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9" />
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
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3057" name="kcat_A" value="13.57"/>
          <Constant key="Parameter_3056" name="AFMID_B_E_T" value="1"/>
          <Constant key="Parameter_3055" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_3054" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_3053" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_3052" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_3057"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="B_NMNAT1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17402747" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.7.1" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03005" />
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
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3051" name="B_E_T" value="2883.7"/>
          <Constant key="Parameter_3050" name="kcat" value="42.9"/>
          <Constant key="Parameter_3049" name="Km" value="0.0677"/>
          <Constant key="Parameter_3048" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Parameter_3051"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Parameter_3049"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Parameter_3050"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="B_ACMSD" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17288562" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.45" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04323" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:679800" />
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
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3047" name="B_E_T" value="516.982"/>
          <Constant key="Parameter_3046" name="kcat" value="1"/>
          <Constant key="Parameter_3045" name="Km" value="0.0065"/>
          <Constant key="Parameter_3044" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Parameter_3047"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_3045"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Parameter_3046"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="B_MAOA_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15848762 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02908" />
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
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3043" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_3042" name="MAOA_B_E_T" value="1"/>
          <Constant key="Parameter_3041" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_3040" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_3039" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_3043"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="B_AANAT_Srtn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18771288" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15477086" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02911" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.3.1.87" />
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
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3038" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_3037" name="AANAT_B_E_T" value="1"/>
          <Constant key="Parameter_3036" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_3035" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_3034" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_3038"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="B_AADAT_hLkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3033" name="AADAT_B_E_T_kat1" value="1"/>
          <Constant key="Parameter_3032" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3031" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3030" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_3029" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="B_IDO_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
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
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3028" name="kcat" value="0.002"/>
          <Constant key="Parameter_3027" name="IDO_B_E_T" value="1"/>
          <Constant key="Parameter_3026" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_3025" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_3024" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_3023" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_3022" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Parameter_3028"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="B_INMT_methyltrypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
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
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3021" name="kcat_A" value="0.176"/>
          <Constant key="Parameter_3020" name="IMNT_B_E_T" value="1"/>
          <Constant key="Parameter_3019" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_3018" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_3017" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_3016" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Parameter_3021"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="B_INMT_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
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
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3015" name="kcat_A" value="0.044"/>
          <Constant key="Parameter_3014" name="IMNT_B_E_T" value="1"/>
          <Constant key="Parameter_3013" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_3012" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_3011" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_3010" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Parameter_3015"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="B_AADAT_hLkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T16:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3009" name="AADAT_B_E_T_kat2" value="1"/>
          <Constant key="Parameter_3008" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3007" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3006" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_3005" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="B_AADAT_hLkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:01:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3004" name="AADAT_B_E_T_kat3" value="1"/>
          <Constant key="Parameter_3003" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_3002" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_3001" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_3000" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="B_AADAT_Lkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2999" name="AADAT_B_E_T_kat2" value="1"/>
          <Constant key="Parameter_2998" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2997" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2996" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2995" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="B_AADAT_Lkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2994" name="AADAT_B_E_T_kat3" value="1"/>
          <Constant key="Parameter_2993" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2992" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2991" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2990" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="B_MAOB_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2989" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_2988" name="MAOB_B_E_T" value="1"/>
          <Constant key="Parameter_2987" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2986" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2985" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_2989"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="B_MAOB_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2984" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_2983" name="MAOB_B_E_T" value="1"/>
          <Constant key="Parameter_2982" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2981" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2980" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_2984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="B_AANAT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:22:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2979" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_2978" name="AANAT_B_E_T" value="1"/>
          <Constant key="Parameter_2977" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_2976" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_2975" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Parameter_2979"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="B_TPH2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759" />
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
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2974" name="kcat" value="0.18"/>
          <Constant key="Parameter_2973" name="B_E_T" value="313.232"/>
          <Constant key="Parameter_2972" name="Ka" value="0.0403"/>
          <Constant key="Parameter_2971" name="Kb" value="0.273"/>
          <Constant key="Parameter_2970" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_2973"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Parameter_2972"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Parameter_2971"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_2974"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="B_Tryptophan_Transport Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:36:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2969" name="Transporter_B_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2968" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2967" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2966" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="B_Lkynr_Transporter_Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2965" name="Transporter_B_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_2964" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2963" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_2962" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="B_Lkynr_Transporter_Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:40:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2961" name="Transporter_B_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2960" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2959" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2958" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="L_IL4I1_kcat_set_to_1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15383589" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.2" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00677" />
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
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2957" name="kcat" value="1"/>
          <Constant key="Parameter_2956" name="L_E_T" value="2046.74"/>
          <Constant key="Parameter_2955" name="Ka" value="6.5"/>
          <Constant key="Parameter_2954" name="Kb" value="1.2"/>
          <Constant key="Parameter_2953" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Parameter_2955"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Parameter_2954"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Parameter_2956"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Parameter_2957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="L_TDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401" />
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
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.11" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678" />
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
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2952" name="L_E_T" value="943912"/>
          <Constant key="Parameter_2951" name="Ka" value="0.222"/>
          <Constant key="Parameter_2950" name="Kb" value="0.037"/>
          <Constant key="Parameter_2949" name="kcat" value="1.4"/>
          <Constant key="Parameter_2948" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Parameter_2951"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Parameter_2950"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Parameter_2952"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Parameter_2949"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="L_DDC_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4991409" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00685" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28" />
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
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2947" name="kcat_B" value="0.38"/>
          <Constant key="Parameter_2946" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_2945" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2944" name="DDC_L_E_T" value="1"/>
          <Constant key="Parameter_2943" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Parameter_2947"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="L_KYNU_Lkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00987" />
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
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2942" name="kcat_A" value="0.23"/>
          <Constant key="Parameter_2941" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2940" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2939" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2938" name="KYNU_L_E_T" value="1"/>
          <Constant key="Parameter_2937" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Parameter_2942"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="L_TPH1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15663479" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17539919" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10587452" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.16.4" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01814" />
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
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2936" name="kcat" value="0.57"/>
          <Constant key="Parameter_2935" name="L_E_T" value="503.141"/>
          <Constant key="Parameter_2934" name="Ka" value="0.0228"/>
          <Constant key="Parameter_2933" name="Kb" value="0.109"/>
          <Constant key="Parameter_2932" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Parameter_2934"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Parameter_2933"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Parameter_2935"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Parameter_2936"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="L_AADAT_Lkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.6.1.7" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01956" />
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
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2931" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2930" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2929" name="AADAT_L_E_T_kat1" value="1"/>
          <Constant key="Parameter_2928" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2927" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="L_AFMID_lfmkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01959" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209258" />
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
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2926" name="kcat_A" value="100"/>
          <Constant key="Parameter_2925" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_2924" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2923" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_2922" name="AFMID_L_E_T" value="1"/>
          <Constant key="Parameter_2921" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="Parameter_2926"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="L_KMO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10672018 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.14.13.9" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R01960" />
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
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2920" name="L_E_T" value="9766.18"/>
          <Constant key="Parameter_2919" name="Ka" value="0.1"/>
          <Constant key="Parameter_2918" name="Kb" value="0.071"/>
          <Constant key="Parameter_2917" name="Kc" value="0.153"/>
          <Constant key="Parameter_2916" name="kcat" value="2.2"/>
          <Constant key="Parameter_2915" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="Parameter_2919"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Parameter_2918"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Parameter_2917"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Parameter_2920"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Parameter_2916"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="L_INMT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3949799" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9852119" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02174" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.1.1.49" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:441354" />
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
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_74" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2914" name="kcat_A" value="0.4"/>
          <Constant key="Parameter_2913" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2912" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2911" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2910" name="IMNT_L_E_T" value="1"/>
          <Constant key="Parameter_2909" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="Parameter_2914"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="L_HAAO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3112306 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:12672479" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.6" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02665" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:439367" />
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
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2908" name="L_E_T" value="10308.4"/>
          <Constant key="Parameter_2907" name="Ka" value="0.016"/>
          <Constant key="Parameter_2906" name="Kb" value="0.615"/>
          <Constant key="Parameter_2905" name="kcat" value="64"/>
          <Constant key="Parameter_2904" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Parameter_2907"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Parameter_2906"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="Parameter_2908"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Parameter_2905"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="L_KYNU_hLkynr" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17300176" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19143568" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02668" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3" />
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
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2903" name="kcat_A" value="3.5"/>
          <Constant key="Parameter_2902" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2901" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2900" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2899" name="KYNU_L_E_T" value="1"/>
          <Constant key="Parameter_2898" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_91">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Parameter_2903"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="L_DDC_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18547057" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.28" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02701" />
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
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2897" name="kcat_B" value="2"/>
          <Constant key="Parameter_2896" name="DDC_Km_5htrp" value="1"/>
          <Constant key="Parameter_2895" name="DDC_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2894" name="DDC_L_E_T" value="1"/>
          <Constant key="Parameter_2893" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Parameter_2897"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="L_IDO_5HT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02702" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:685239" />
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
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2892" name="kcat" value="0.043"/>
          <Constant key="Parameter_2891" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2890" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2889" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2888" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2887" name="IDO_L_E_T" value="1"/>
          <Constant key="Parameter_2886" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Parameter_2892"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="L_WARS2_tRNA_recombinant_assume_km_equal_Ka_or_Kb" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11676605" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:6.1.1.2" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03664" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:653740" />
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
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2885" name="kcat" value="1.1"/>
          <Constant key="Parameter_2884" name="L_E_T" value="15961.5"/>
          <Constant key="Parameter_2883" name="Ka" value="0.0074"/>
          <Constant key="Parameter_2882" name="Kb" value="0.0011"/>
          <Constant key="Parameter_2881" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="Parameter_2883"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Parameter_2882"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Parameter_2884"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="Parameter_2885"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="L_AFMID_5HNFK" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4135014" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04911" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:209255" />
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
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2880" name="kcat_A" value="100"/>
          <Constant key="Parameter_2879" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_2878" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2877" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_2876" name="AFMID_L_E_T" value="1"/>
          <Constant key="Parameter_2875" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Parameter_2880"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="L_Quinolic Acid formation (spontaneous)" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15656614" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2874" name="k1" value="0.00025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_2874"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="L_MAOA_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:11754741" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2021654" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02173" />
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
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2873" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_2872" name="MAOA_L_E_T" value="1"/>
          <Constant key="Parameter_2871" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2870" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2869" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Parameter_2873"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="L_Cinnavalinate formation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2949752" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17476692" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.11.1.6" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02670" />
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
          <Substrate metabolite="Metabolite_56" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="4"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
          <Product metabolite="Metabolite_92" stoichiometry="2"/>
          <Product metabolite="Metabolite_85" stoichiometry="2"/>
          <Product metabolite="Metabolite_87" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2868" name="e1" value="2"/>
          <Constant key="Parameter_2867" name="e2" value="4"/>
          <Constant key="Parameter_2866" name="k1" value="5.6667e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_97">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Parameter_2868"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Parameter_2867"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Parameter_2866"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="L_Tryptophan_Transport Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2872885" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT1_HUMAN" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:LAT2_HUMAN" />
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
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2865" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2864" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_2863" name="Transporter_L_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_2862" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_98">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="L_IDO" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18370401" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.13.11.52" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00678" />
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
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2861" name="kcat" value="1.65"/>
          <Constant key="Parameter_2860" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2859" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2858" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2857" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2856" name="IDO_L_E_T" value="1"/>
          <Constant key="Parameter_2855" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_99">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Parameter_2861"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="L_QPRT" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17868694" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03348" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.4.2.19" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:693620" />
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
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
          <Product metabolite="Metabolite_96" stoichiometry="1"/>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2854" name="kcat" value="0.255"/>
          <Constant key="Parameter_2853" name="L_E_T" value="138709"/>
          <Constant key="Parameter_2852" name="Ka" value="0.022"/>
          <Constant key="Parameter_2851" name="Kb" value="0.023"/>
          <Constant key="Parameter_2850" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_100">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="Parameter_2852"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="Parameter_2851"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="Parameter_2853"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="Parameter_2854"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="L_KYNU_Lfmkyn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:457635" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:118164 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03936" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.7.1.3" />
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
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_98" stoichiometry="1"/>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2849" name="kcat_A" value="0.013"/>
          <Constant key="Parameter_2848" name="KYNU_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2847" name="KYNU_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2846" name="KYNU_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2845" name="KYNU_L_E_T" value="1"/>
          <Constant key="Parameter_2844" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_101">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_766">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_762">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_764">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_770">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="Parameter_2849"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="L_AFMID_nform" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4190298" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00988" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:3.5.1.9" />
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
          <Substrate metabolite="Metabolite_98" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2843" name="kcat_A" value="13.57"/>
          <Constant key="Parameter_2842" name="AFMID_Km_5hoxnfky" value="1"/>
          <Constant key="Parameter_2841" name="AFMID_Km_Lfmkynr" value="1"/>
          <Constant key="Parameter_2840" name="AFMID_Km_nformanth" value="1"/>
          <Constant key="Parameter_2839" name="AFMID_L_E_T" value="1"/>
          <Constant key="Parameter_2838" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_102">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_773">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_759">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_775">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_771">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_779">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_777">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="Parameter_2843"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="L_NMNAT1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17402747" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.7.7.1" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R03005" />
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
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2837" name="L_E_T" value="4658.65"/>
          <Constant key="Parameter_2836" name="kcat" value="42.9"/>
          <Constant key="Parameter_2835" name="Km" value="0.0677"/>
          <Constant key="Parameter_2834" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_103">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="Parameter_2835"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="Parameter_2837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_772">
              <SourceParameter reference="Metabolite_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="Parameter_2836"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="L_ACMSD" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17288562" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:4.1.1.45" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R04323" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:brenda:679800" />
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
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_100" stoichiometry="1"/>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2833" name="L_E_T" value="48858.2"/>
          <Constant key="Parameter_2832" name="kcat" value="1"/>
          <Constant key="Parameter_2831" name="Km" value="0.0065"/>
          <Constant key="Parameter_2830" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_104">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_787">
              <SourceParameter reference="Parameter_2831"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_785">
              <SourceParameter reference="Parameter_2833"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_781">
              <SourceParameter reference="Parameter_2832"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="L_MAOA_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15848762 " />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:1.4.3.4" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02908" />
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
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2829" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_2828" name="MAOA_L_E_T" value="1"/>
          <Constant key="Parameter_2827" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2826" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2825" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_105">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_796">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_794">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_774">
              <SourceParameter reference="Parameter_2829"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_783">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="L_AANAT_Srtn" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15477086" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18771288" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R02911" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ec-code:2.3.1.87" />
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
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_102" stoichiometry="1"/>
          <Product metabolite="Metabolite_104" stoichiometry="1"/>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2824" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_2823" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_2822" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_2821" name="AANAT_L_E_T" value="1"/>
          <Constant key="Parameter_2820" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_106">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_801">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_799">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_797">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_803">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_793">
              <SourceParameter reference="Parameter_2824"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_789">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="L_AADAT_hLkynr_kat1" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18620547" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2819" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2818" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2817" name="AADAT_L_E_T_kat1" value="1"/>
          <Constant key="Parameter_2816" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2815" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_107">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_806">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_808">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_804">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_800">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_810">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_795">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_765">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="L_IDO_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
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
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_106" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2814" name="kcat" value="0.002"/>
          <Constant key="Parameter_2813" name="IDO_Km_5htrp" value="1"/>
          <Constant key="Parameter_2812" name="IDO_Km_O2" value="1"/>
          <Constant key="Parameter_2811" name="IDO_Km_srtn" value="1"/>
          <Constant key="Parameter_2810" name="IDO_Km_trp_DASH_L" value="1"/>
          <Constant key="Parameter_2809" name="IDO_L_E_T" value="1"/>
          <Constant key="Parameter_2808" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_108">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_813">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_821">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_819">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_815">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_807">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_823">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_802">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_791">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_825">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_811">
              <SourceParameter reference="Parameter_2814"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_817">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="L_INMT_methyltrypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
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
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2807" name="kcat_A" value="0.176"/>
          <Constant key="Parameter_2806" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2805" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2804" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2803" name="IMNT_L_E_T" value="1"/>
          <Constant key="Parameter_2802" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_109">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_828">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_798">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_809">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_826">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_814">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_830">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_832">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_822">
              <SourceParameter reference="Parameter_2807"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_818">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="L_INMT_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
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
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_108" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_74" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2801" name="kcat_A" value="0.044"/>
          <Constant key="Parameter_2800" name="IMNT_Km_nmtrpta" value="1"/>
          <Constant key="Parameter_2799" name="IMNT_Km_srtn" value="1"/>
          <Constant key="Parameter_2798" name="IMNT_Km_trypta" value="1"/>
          <Constant key="Parameter_2797" name="IMNT_L_E_T" value="1"/>
          <Constant key="Parameter_2796" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_110">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_824">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_837">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_835">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_833">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_839">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_816">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_841">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_829">
              <SourceParameter reference="Parameter_2801"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_805">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="L_AADAT_hLkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T16:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2795" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2794" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2793" name="AADAT_L_E_T_kat2" value="1"/>
          <Constant key="Parameter_2792" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2791" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_111">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_831">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_844">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_842">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_838">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_846">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_812">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_834">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="L_AADAT_hLkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:01:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2790" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2789" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2788" name="AADAT_L_E_T_kat3" value="1"/>
          <Constant key="Parameter_2787" name="AADAT_kcat_hLkynr" value="1"/>
          <Constant key="Parameter_2786" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_112">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_849">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_851">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_847">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_843">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_853">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_840">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_820">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="L_AADAT_Lkynr_kat2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2785" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2784" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2783" name="AADAT_L_E_T_kat2" value="1"/>
          <Constant key="Parameter_2782" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2781" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_113">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_858">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_856">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_854">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_850">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_845">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_860">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_836">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="L_AADAT_Lkynr_kat3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:04:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2780" name="AADAT_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2779" name="AADAT_Km_hLkynr" value="1"/>
          <Constant key="Parameter_2778" name="AADAT_L_E_T_kat3" value="1"/>
          <Constant key="Parameter_2777" name="AADAT_kcat_Lkynr" value="1"/>
          <Constant key="Parameter_2776" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_114">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_865">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_863">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_861">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_857">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_852">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_867">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_827">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="L_MAOB_SRTN" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2775" name="kcat_B" value="18.6"/>
          <Constant key="Parameter_2774" name="MAOB_L_E_T" value="1"/>
          <Constant key="Parameter_2773" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2772" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2771" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_115">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_859">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_874">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_868">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_872">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_870">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_864">
              <SourceParameter reference="Parameter_2775"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_848">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="L_MAOB_Trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:09:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2770" name="kcat_B" value="3.5"/>
          <Constant key="Parameter_2769" name="MAOB_L_E_T" value="1"/>
          <Constant key="Parameter_2768" name="MAO_Km_srtn" value="1"/>
          <Constant key="Parameter_2767" name="MAO_Km_trypta" value="1"/>
          <Constant key="Parameter_2766" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_116">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_881">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_866">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_875">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_877">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_879">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_871">
              <SourceParameter reference="Parameter_2770"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_855">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="L_AANAT_trypta" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:22:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
          <Product metabolite="Metabolite_104" stoichiometry="1"/>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2765" name="kcat_B" value="25.9"/>
          <Constant key="Parameter_2764" name="AANAT_Km_Srtn" value="1"/>
          <Constant key="Parameter_2763" name="AANAT_Km_trypta" value="1"/>
          <Constant key="Parameter_2762" name="AANAT_L_E_T" value="1"/>
          <Constant key="Parameter_2761" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_117">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_884">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_886">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_882">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_888">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_873">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_878">
              <SourceParameter reference="Parameter_2765"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_862">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="L_TPH2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19816759" />
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
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2760" name="kcat" value="0.18"/>
          <Constant key="Parameter_2759" name="L_E_T" value="235.128"/>
          <Constant key="Parameter_2758" name="Ka" value="0.0403"/>
          <Constant key="Parameter_2757" name="Kb" value="0.273"/>
          <Constant key="Parameter_2756" name="scaling" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_118">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_895">
              <SourceParameter reference="Parameter_2758"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_897">
              <SourceParameter reference="Parameter_2757"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_885">
              <SourceParameter reference="Parameter_2759"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_880">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_891">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_869">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_889">
              <SourceParameter reference="Parameter_2760"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_893">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="L_Tryptophan_Transport Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-12T17:36:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2755" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2754" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2753" name="Transporter_L_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2752" name="Transporter_kcat_Trp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_119">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_907">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_901">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_898">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_903">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_883">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_905">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_899">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_894">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_890">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="L_Lkynr_Transporter_Slc7a5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2751" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2750" name="Transporter_Km_Trp_Slc7a5" value="1"/>
          <Constant key="Parameter_2749" name="Transporter_L_E_T_Slc7a5" value="1"/>
          <Constant key="Parameter_2748" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_120">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_876">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_912">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_908">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_910">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_916">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_896">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_914">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_904">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_900">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="L_Lkynr_Transporter_Slc7a8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T15:40:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2747" name="Transporter_Km_Lkynr" value="1"/>
          <Constant key="Parameter_2746" name="Transporter_Km_Trp_Slc7a8" value="1"/>
          <Constant key="Parameter_2745" name="Transporter_L_E_T_Slc7a8" value="1"/>
          <Constant key="Parameter_2744" name="Transporter_kcat_Lkynr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_121">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_887">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_921">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_917">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_919">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_925">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_906">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_923">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_913">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_909">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_96"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_98"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_100"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_102"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_104"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_106"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_108"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9.033212685000001e+20 9.033212249599149e+20 9.033212685000001e+20 9.033212249599149e+20 0 9.033212685000001e+20 0 0 0 0 9.033212685000001e+20 9033212685000002 0 9.03321225e+20 9.03321225e+20 9.03321225e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 2.7099638055e+19 0 9.033212685000001e+20 0 0 9.033212685000001e+20 9.033212685000001e+20 9.033212685000001e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 9.03321225e+20 9.033212685000001e+20 0 0 0 0 0 1.80664244991983e+20 0 9.033212685000001e+20 9.033212249599149e+20 9.033212685000001e+20 9.033212249599149e+20 0 9.033212685000001e+20 0 0 0 0 9.033212685000001e+20 9033212685000002 0 9.03321225e+20 9.03321225e+20 9.03321225e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 2.7099638055e+19 0 9.033212685000001e+20 0 0 9.033212685000001e+20 9.033212685000001e+20 9.033212685000001e+20 0 9.033212685000001e+20 9.033212685000001e+20 0 9.03321225e+20 9.033212685000001e+20 0 0 0 0 0 1.5 6 1.5 1 8443.5712890625 4604.3881835938 8482.44921875 3.8 4.7 7271.5747070313 1.35 0.88 5408.1069335938 0.4 0.05 0.211 435.4161987305 0.049 10 368.3154602051 0.045 0.02 0.1 1689.0286865234 1.38 0.27 0.08599999999999999 0.028 3813.2016601563 1338.39453125 2.2 0.495 0.032 0.0573 2708.4135742188 0.019 14212.716796875 226447.453125 0.43 0.033 0.042 1.7 9.76 1.3 1.3 9455.1357421875 7744.3154296875 15588.2099609375 2770.9680175781 15820.2158203125 36074.9140625 453.4833679199 4186.5874023438 2226.3728027344 56601.7578125 1961.5135498047 137204.8125 294114.875 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
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
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="450000"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Reactions[L_TDO],ParameterGroup=Parameters,Parameter=L_E_T,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="943912"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Values[IDO_B_E_T],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="368.315"/>
            <Parameter name="UpperBound" type="cn" value="20000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="200"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Tryptophan metabolism Turnover,Vector=Reactions[B_TDO],ParameterGroup=Parameters,Parameter=B_E_T,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="3092.42"/>
            <Parameter name="UpperBound" type="cn" value="20000"/>
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
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <SBMLMap SBMLid="AADAT_B_E_T_kat1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="AADAT_B_E_T_kat2" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="AADAT_B_E_T_kat3" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="AADAT_Km_Lkynr" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="AADAT_Km_hLkynr" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="AADAT_L_E_T_kat1" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="AADAT_L_E_T_kat2" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="AADAT_L_E_T_kat3" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="AADAT_kcat_Lkynr" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="AADAT_kcat_hLkynr" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="AANAT_B_E_T" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="AANAT_Km_Srtn" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="AANAT_Km_trypta" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="AANAT_L_E_T" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="AFMID_B_E_T" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="AFMID_Km_5hoxnfky" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="AFMID_Km_Lfmkynr" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="AFMID_Km_nformanth" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="AFMID_L_E_T" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="B_3hanthrn_c" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="B_5hoxindact_c" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="B_5hoxnfkyn_c" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="B_5htrp_c" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="B_5hxkyn_c" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="B_AANAT_Trypta" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="B_Cinnavalininate_c" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="B_Lfmkynr_c" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="B_Lkynr_c" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="B_Lkynr_trans_Slc7a5" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="B_Lkynr_trans_Slc7a8" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="B_Nacsertn_c" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="B_Nactrypta_c" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="B_R00677" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="B_R00678_Indo" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="B_R00678_Tdo" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="B_R00685" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="B_R00987" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="B_R00988" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="B_R01814_Tph1" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="B_R01814_Tph2" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="B_R01956_Kat1" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="B_R01956_Kat2" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="B_R01956_Kat3" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="B_R01959" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="B_R01960" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="B_R02173_Maoa" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="B_R02173_Maob" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="B_R02174" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="B_R02174_metTrypta" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="B_R02665" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="B_R02668" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="B_R02670" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="B_R02701" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="B_R02702" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="B_R02908_Maoa" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="B_R02908_Maob" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="B_R02909" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="B_R02910" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="B_R02911" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="B_R03005" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="B_R03348" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="B_R03664" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="B_R03936" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="B_R04171_Kat1" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="B_R04171_Kat2" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="B_R04171_Kat3" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="B_R04323" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="B_R04911" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="B_TRPtrans_Slc7a5" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="B_TRPtrans_Slc7a8" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="B_Xanthurenate" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="B_accoa_c" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="B_ahcys_c" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="B_akg_c" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="B_ala_DASH_L_c" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="B_am6sa_c" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="B_amet_c" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="B_amp_c" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="B_anth_c" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="B_atp_c" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="B_cmusa_c" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="B_co2_c" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="B_coa_c" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="B_dhbpt_c" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="B_dnad_c" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="B_f5hoxkyn_c" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="B_for_c" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="B_glu_DASH_L_c" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="B_h2o2_c" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="B_h2o_c" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="B_hLkynr_c" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="B_h_c" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="B_id3acald_c" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="B_indpyr_c" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="B_kynate_c" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="B_nadp_c" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="B_nadph_c" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="B_nformanth_c" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="B_nh4_c" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="B_nicrnt_c" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="B_nmsrtn_c" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="B_nmtrpta_c" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="B_nndmtrpta_c" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="B_o2_c" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="B_o2s_c" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="B_ppi_c" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="B_prpp_c" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="B_quin_form" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="B_quln_c" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="B_srtn_c" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="B_thbpt" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="B_trna_trp_c" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="B_trp_DASH_L_c" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="B_trp_L_trna_c" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="B_trypta_c" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Blood" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Brain" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="DDC_B_E_T" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="DDC_Km_5htrp" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="DDC_Km_trp_DASH_L" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="DDC_L_E_T" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="IDO_B_E_T" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="IDO_Km_5htrp" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="IDO_Km_O2" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="IDO_Km_srtn" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="IDO_Km_trp_DASH_L" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="IDO_L_E_T" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="IMNT_B_E_T" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="IMNT_Km_nmtrpta" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="IMNT_Km_srtn" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="IMNT_Km_trypta" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="IMNT_L_E_T" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="KYNU_B_E_T" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="KYNU_Km_Lfmkynr" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="KYNU_Km_Lkynr" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="KYNU_Km_hLkynr" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="KYNU_L_E_T" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="L_3hanthrn_c" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="L_5hoxindact_c" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="L_5hoxnfkyn_c" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="L_5htrp_c" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="L_5hxkyn_c" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="L_AANAT_Trypta" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="L_Cinnavalininate_c" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="L_Lfmkynr_c" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="L_Lkynr_c" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="L_Lkynr_trans_Slc7a5" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="L_Lkynr_trans_Slc7a8" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="L_Nacsertn_c" COPASIkey="Metabolite_102"/>
    <SBMLMap SBMLid="L_Nactrypta_c" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="L_R00677" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="L_R00678_Indo" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="L_R00678_Tdo" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="L_R00685" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="L_R00987" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="L_R00988" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="L_R01814_Tph1" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="L_R01814_Tph2" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="L_R01956_Kat1" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="L_R01956_Kat2" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="L_R01956_Kat3" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="L_R01959" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="L_R01960" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="L_R02173_Maoa" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="L_R02173_Maob" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="L_R02174" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="L_R02174_metTrypta" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="L_R02665" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="L_R02668" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="L_R02670" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="L_R02701" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="L_R02702" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="L_R02908_Maoa" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="L_R02908_Maob" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="L_R02909" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="L_R02910" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="L_R02911" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="L_R03005" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="L_R03348" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="L_R03664" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="L_R03936" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="L_R04171_Kat1" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="L_R04171_Kat2" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="L_R04171_Kat3" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="L_R04323" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="L_R04911" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="L_TRPtrans_Slc7a5" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="L_TRPtrans_Slc7a8" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="L_Xanthurenate" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="L_accoa_c" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="L_ahcys_c" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="L_akg_c" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="L_ala_DASH_L_c" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="L_am6sa_c" COPASIkey="Metabolite_100"/>
    <SBMLMap SBMLid="L_amet_c" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="L_amp_c" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="L_anth_c" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="L_atp_c" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="L_cmusa_c" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="L_co2_c" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="L_coa_c" COPASIkey="Metabolite_104"/>
    <SBMLMap SBMLid="L_dhbpt_c" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="L_dnad_c" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="L_f5hoxkyn_c" COPASIkey="Metabolite_106"/>
    <SBMLMap SBMLid="L_for_c" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="L_glu_DASH_L_c" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="L_h2o2_c" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="L_h2o_c" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="L_hLkynr_c" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="L_h_c" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="L_id3acald_c" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="L_indpyr_c" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="L_kynate_c" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="L_nadp_c" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="L_nadph_c" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="L_nformanth_c" COPASIkey="Metabolite_98"/>
    <SBMLMap SBMLid="L_nh4_c" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="L_nicrnt_c" COPASIkey="Metabolite_96"/>
    <SBMLMap SBMLid="L_nmsrtn_c" COPASIkey="Metabolite_108"/>
    <SBMLMap SBMLid="L_nmtrpta_c" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="L_nndmtrpta_c" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="L_o2_c" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="L_o2s_c" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="L_ppi_c" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="L_prpp_c" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="L_quin_form" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="L_quln_c" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="L_srtn_c" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="L_thbpt" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="L_trna_trp_c" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="L_trp_DASH_L_c" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="L_trp_L_trna_c" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="L_trypta_c" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="Liver" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="Lkynr_ex" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="MAOA_B_E_T" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="MAOA_L_E_T" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="MAOB_B_E_T" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="MAOB_L_E_T" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="MAO_Km_srtn" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="MAO_Km_trypta" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="TRP_ex" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="Transporter_B_E_T_Slc7a5" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Transporter_B_E_T_Slc7a8" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Transporter_Km_Lkynr" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Transporter_Km_Trp_Slc7a5" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Transporter_Km_Trp_Slc7a8" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Transporter_L_E_T_Slc7a5" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="Transporter_L_E_T_Slc7a8" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Transporter_kcat_Lkynr" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Transporter_kcat_Trp" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="function_5" COPASIkey="Function_122"/>
    <SBMLMap SBMLid="scaling" COPASIkey="ModelValue_0"/>
  </SBMLReference>
</COPASI>

<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:13070af3-81df-4cc3-ad8a-1790d69e5b93(org.iets3.core.expr.process.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="yv47" ref="r:da65683e-ff6f-430d-ab68-32a77df72c93(org.iets3.core.expr.toplevel.structure)" implicit="true" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
    <import index="8lgj" ref="r:69a1255c-62e5-4b5d-ae54-d3a534a3ad07(org.iets3.core.expr.mutable.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7WFhXJlPaQB">
    <property role="EcuMT" value="9163496876326301095" />
    <property role="TrG5h" value="MultipartyBooleanDecision" />
    <property role="34LRSv" value="multi-party-boolean-decision" />
    <ref role="1TJDcQ" node="7WFhXJlPaQJ" resolve="MultipartyAbstractDecision" />
    <node concept="1TJgyi" id="Z4fkwzdXgm" role="1TKVEl">
      <property role="IQ2nx" value="1136100386042008598" />
      <property role="TrG5h" value="reject" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WFhXJlPaQG">
    <property role="EcuMT" value="9163496876326301100" />
    <property role="TrG5h" value="AbstractDecision" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="7WFhXJlQowD" resolve="Process" />
    <node concept="PrWs8" id="7WFhXJlPaQH" role="PzmwI">
      <ref role="PrY4T" to="yv47:2uR5X5ayM7T" resolve="IToplevelExprContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WFhXJlPaQJ">
    <property role="EcuMT" value="9163496876326301103" />
    <property role="TrG5h" value="MultipartyAbstractDecision" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="7WFhXJlPaQG" resolve="AbstractDecision" />
    <node concept="1TJgyj" id="Z4fkwzeLcO" role="1TKVEi">
      <property role="IQ2ns" value="1136100386042221364" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parties" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="33mFrumMoXi" role="1TKVEi">
      <property role="IQ2ns" value="3519191162857033554" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="procedure" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="33mFrumMoWZ" resolve="AbstractDecisionProcedure" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WFhXJlPaQK">
    <property role="EcuMT" value="9163496876326301104" />
    <property role="TrG5h" value="Party" />
    <property role="34LRSv" value="@" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7WFhXJlPaQN" role="1TKVEl">
      <property role="IQ2nx" value="9163496876326301107" />
      <property role="TrG5h" value="identifier" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WFhXJlQowC">
    <property role="EcuMT" value="9163496876326619176" />
    <property role="TrG5h" value="RunProcess" />
    <property role="34LRSv" value="run" />
    <property role="3GE5qa" value="process" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="PrWs8" id="Z4fkwzcyZm" role="PzmwI">
      <ref role="PrY4T" to="hm2y:6KxoTHgLv_I" resolve="IMayHaveEffect" />
    </node>
    <node concept="1TJgyj" id="1mDdTGkuFU" role="1TKVEi">
      <property role="IQ2ns" value="24388123204119290" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="process" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7WFhXJlQoxJ" resolve="ProcessType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WFhXJlQowD">
    <property role="EcuMT" value="9163496876326619177" />
    <property role="TrG5h" value="Process" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="process" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7WFhXJlQoxO" role="PzmwI">
      <ref role="PrY4T" to="8lgj:5y3VELft_XL" resolve="IInteractor" />
    </node>
    <node concept="PrWs8" id="7WFhXJlQs4v" role="PzmwI">
      <ref role="PrY4T" to="yv47:2uR5X5ayM7T" resolve="IToplevelExprContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WFhXJlQoxJ">
    <property role="EcuMT" value="9163496876326619247" />
    <property role="TrG5h" value="ProcessType" />
    <property role="3GE5qa" value="process" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSlaok" resolve="Type" />
    <node concept="1TJgyj" id="7WFhXJlQoxK" role="1TKVEi">
      <property role="IQ2ns" value="9163496876326619248" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="process" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7WFhXJlQowD" resolve="Process" />
    </node>
    <node concept="PrWs8" id="7WFhXJlQoxM" role="PzmwI">
      <ref role="PrY4T" to="8lgj:5y3VELfuT55" resolve="IInteractorType" />
    </node>
  </node>
  <node concept="1TIwiD" id="Z4fkwzeKWy">
    <property role="EcuMT" value="1136100386042220322" />
    <property role="TrG5h" value="PartyType" />
    <property role="34LRSv" value="party" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSlaok" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="Z4fkwzeKWz">
    <property role="EcuMT" value="1136100386042220323" />
    <property role="TrG5h" value="PartyLiteral" />
    <property role="34LRSv" value="@" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyi" id="Z4fkwzeNZ7" role="1TKVEl">
      <property role="IQ2nx" value="1136100386042232775" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="33mFrumMoWZ">
    <property role="EcuMT" value="3519191162857033535" />
    <property role="TrG5h" value="AbstractDecisionProcedure" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="procedure" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="33mFrumMqnB">
    <property role="EcuMT" value="3519191162857039335" />
    <property role="3GE5qa" value="procedure" />
    <property role="TrG5h" value="UnanimousDecProc" />
    <property role="34LRSv" value="unanimous" />
    <ref role="1TJDcQ" node="33mFrumMoWZ" resolve="AbstractDecisionProcedure" />
  </node>
  <node concept="1TIwiD" id="1mDdTFSdh$">
    <property role="EcuMT" value="24388123196707940" />
    <property role="3GE5qa" value="procedure" />
    <property role="TrG5h" value="MajorityDecProc" />
    <property role="34LRSv" value="majority" />
    <ref role="1TJDcQ" node="33mFrumMoWZ" resolve="AbstractDecisionProcedure" />
  </node>
</model>

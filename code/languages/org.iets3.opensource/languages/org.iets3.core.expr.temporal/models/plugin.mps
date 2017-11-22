<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e44c17a0-d569-437a-a7a1-7c26f734db5f(org.iets3.core.expr.temporal.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="2" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="oq0c" ref="r:6c6155f0-4bbe-4af5-8c26-244d570e21e4(org.iets3.core.expr.base.plugin)" />
    <import index="l462" ref="r:d6904536-4de8-40ba-b54e-09fcdfe1b62a(org.iets3.core.expr.temporal.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="j10v" ref="cfaa4966-b7d5-4b69-b66a-309a6e1a7290/java:org.pcollections(org.iets3.core.expr.base/)" />
    <import index="9mim" ref="r:5bf19129-2710-45a6-906e-9ee2d0977853(org.iets3.core.expr.simpleTypes.plugin)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="96le" ref="r:fd67d033-a0e1-461c-a0a1-5cb9e9987234(org.iets3.core.expr.temporal.editor)" />
    <import index="mi3w" ref="r:9ec53fca-e669-4a18-ba8b-6c9f4f1cb361(org.iets3.core.expr.datetime.structure)" />
    <import index="bcb8" ref="r:d9a305fe-e034-4899-a382-3c8588d5dff6(org.iets3.core.expr.datetime.plugin)" />
    <import index="sxpq" ref="r:51edfe99-0380-475c-a3e9-1d4425eac12f(org.iets3.core.expr.lambda.plugin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="28m1" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time(JDK/)" />
    <import index="dzyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time.temporal(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="6000180787831028519" name="com.mbeddr.mpsutil.interpreter.structure.TraceExpression" flags="ng" index="2dz_u5" />
      <concept id="7019451652830285943" name="com.mbeddr.mpsutil.interpreter.structure.ApplicableLanguage" flags="ng" index="d$4Dx">
        <child id="7019451652831666945" name="language" index="cpn$n" />
      </concept>
      <concept id="4807167597261199962" name="com.mbeddr.mpsutil.interpreter.structure.DelegateToNextInterpreterExpression" flags="ng" index="2gcYsJ" />
      <concept id="5293529713177831489" name="com.mbeddr.mpsutil.interpreter.structure.NodeExpression" flags="ng" index="oxGPV" />
      <concept id="5293529713177875074" name="com.mbeddr.mpsutil.interpreter.structure.ContextExpression" flags="ng" index="oxNuS" />
      <concept id="8615074351687435493" name="com.mbeddr.mpsutil.interpreter.structure.InterpretExpression" flags="ng" index="qpA2v" />
      <concept id="8615074351687425563" name="com.mbeddr.mpsutil.interpreter.structure.TypedChildConstraint" flags="ng" index="qpFDx">
        <reference id="8615074351687425566" name="child" index="qpFD$" />
        <child id="5293529713185083481" name="type" index="rajlz" />
      </concept>
      <concept id="8615074351687299818" name="com.mbeddr.mpsutil.interpreter.structure.Interpreter" flags="ng" index="qq9qg">
        <property id="8426159527444241399" name="category" index="UYu25" />
        <child id="7019451652830298090" name="applicableLanguages" index="d$6nW" />
        <child id="8615074351687302154" name="typeMappings" index="qq9xK" />
        <child id="8615074351687302157" name="evaluators" index="qq9xR" />
        <child id="6663324787725059267" name="relationships" index="1J4apk" />
      </concept>
      <concept id="8615074351687301435" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluator" flags="ng" index="qq9P1">
        <reference id="8615074351687302216" name="concept" index="qq9wM" />
      </concept>
      <concept id="5293529713180742448" name="com.mbeddr.mpsutil.interpreter.structure.InterpretConstraintExpression" flags="ng" index="rqRoa" />
      <concept id="5293529713179149388" name="com.mbeddr.mpsutil.interpreter.structure.AbstractTypeMapping" flags="ng" index="rsE5Q">
        <child id="5293529713185081187" name="fromType" index="rai9p" />
      </concept>
      <concept id="5293529713179568010" name="com.mbeddr.mpsutil.interpreter.structure.BaseLanguageTypeMapping" flags="ng" index="rvkaK">
        <child id="5293529713185156793" name="toType" index="r5wI3" />
      </concept>
      <concept id="5293529713194689095" name="com.mbeddr.mpsutil.interpreter.structure.ConceptTypeExpression" flags="ng" index="rxStX">
        <reference id="5293529713194689153" name="concept" index="rxSuV" />
      </concept>
      <concept id="3406009787378976616" name="com.mbeddr.mpsutil.interpreter.structure.EnvExpression" flags="ng" index="TvHiN" />
      <concept id="5712773029518214110" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluatorBody" flags="ng" index="3dA_Gj">
        <child id="5934114435582613364" name="body" index="3vcmbn" />
      </concept>
      <concept id="5285810042919695066" name="com.mbeddr.mpsutil.interpreter.structure.CoverageExpression" flags="ng" index="3fckFw" />
      <concept id="5934114435583058812" name="com.mbeddr.mpsutil.interpreter.structure.AbstractEvaluator" flags="ng" index="3va1rv">
        <property id="8845772667389641968" name="cacheValues" index="2TnfIJ" />
        <child id="5934114435583235459" name="constraints" index="3vbI0w" />
        <child id="5934114435584084790" name="evaluator" index="3vQZUl" />
      </concept>
      <concept id="5934114435582125873" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluatorInline" flags="ng" index="3vetai">
        <child id="5934114435582660673" name="expression" index="3vdyny" />
      </concept>
      <concept id="6663324787724559041" name="com.mbeddr.mpsutil.interpreter.structure.AbstractInterpreterRelationship" flags="ng" index="1J641m">
        <reference id="6663324787724987489" name="target" index="1J7WVQ" />
      </concept>
      <concept id="6663324787724987491" name="com.mbeddr.mpsutil.interpreter.structure.InterpretBeforeRelationship" flags="ng" index="1J7WVO" />
      <concept id="8511326569641889031" name="com.mbeddr.mpsutil.interpreter.structure.AbstractRecursionExpression" flags="ng" index="3SLKdG">
        <child id="8511326569641873009" name="node" index="3SLO0q" />
      </concept>
      <concept id="8511326569641917307" name="com.mbeddr.mpsutil.interpreter.structure.AbstractConstraintRecursionExpression" flags="ng" index="3SLZkg">
        <reference id="5293529713180742449" name="child" index="rqRob" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="5232196642625575054" name="jetbrains.mps.baseLanguage.collections.structure.TailListOperation" flags="nn" index="1eb2uI">
        <child id="5232196642625575056" name="fromIndex" index="1eb2uK" />
      </concept>
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="qq9qg" id="uGVYUiiVGW">
    <property role="TrG5h" value="ExprTemporalTypesInterpeter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="d$4Dx" id="50smQ1V9EXs" role="d$6nW">
      <node concept="BaHAS" id="50smQ1V9EXt" role="cpn$n">
        <property role="BaHAW" value="org.iets3.core.expr.temporal.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
    <node concept="d$4Dx" id="3nGzaxURv_n" role="d$6nW">
      <node concept="BaHAS" id="3nGzaxURv_o" role="cpn$n">
        <property role="BaHAW" value="org.iets3.core.expr.datetime.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
    <node concept="rvkaK" id="uGVYUiiVHl" role="qq9xK">
      <node concept="3uibUv" id="5BKAaizDXPX" role="r5wI3">
        <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
      </node>
      <node concept="rxStX" id="uGVYUiiVI2" role="rai9p">
        <ref role="rxSuV" to="5qo5:4rZeNQ6Oerp" resolve="IntegerType" />
      </node>
    </node>
    <node concept="rvkaK" id="uGVYUiiVQX" role="qq9xK">
      <node concept="3uibUv" id="5BKAaizDLJj" role="r5wI3">
        <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
      </node>
      <node concept="rxStX" id="uGVYUiiVQY" role="rai9p">
        <ref role="rxSuV" to="5qo5:4rZeNQ6Oetc" resolve="RealType" />
      </node>
    </node>
    <node concept="rvkaK" id="uGVYUij9aQ" role="qq9xK">
      <node concept="rxStX" id="uGVYUij9aR" role="rai9p">
        <ref role="rxSuV" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
      </node>
      <node concept="3uibUv" id="uGVYUij9gN" role="r5wI3">
        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
      </node>
    </node>
    <node concept="rvkaK" id="uGVYUij9id" role="qq9xK">
      <node concept="3uibUv" id="3kccIzGdnFM" role="r5wI3">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="rxStX" id="uGVYUij9ie" role="rai9p">
        <ref role="rxSuV" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
      </node>
    </node>
    <node concept="rvkaK" id="50smQ1VlnQV" role="qq9xK">
      <node concept="3uibUv" id="50smQ1Vlpfn" role="r5wI3">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="2ShNRf" id="50smQ1VlovG" role="rai9p">
        <node concept="3zrR0B" id="50smQ1VloYi" role="2ShVmc">
          <node concept="3Tqbb2" id="50smQ1VloYk" role="3zrR0E">
            <ref role="ehGHo" to="l462:50smQ1V8i89" resolve="TemporalType" />
          </node>
        </node>
      </node>
    </node>
    <node concept="rvkaK" id="6GCJsuCK4RH" role="qq9xK">
      <node concept="3uibUv" id="6GCJsuCK7xO" role="r5wI3">
        <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
      </node>
      <node concept="rxStX" id="6GCJsuCK7bC" role="rai9p">
        <ref role="rxSuV" to="mi3w:3nGzaxU$Pz8" resolve="DateType" />
      </node>
    </node>
    <node concept="qq9P1" id="1Mp62pP0QGV" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:1Mp62pP0G8O" resolve="ReduceOp" />
      <node concept="3dA_Gj" id="1Mp62pP0USt" role="3vQZUl">
        <node concept="9aQIb" id="1Mp62pP0USu" role="3vcmbn">
          <node concept="3clFbS" id="1Mp62pP0USv" role="9aQI4">
            <node concept="3cpWs8" id="1Mp62pP0USw" role="3cqZAp">
              <node concept="3cpWsn" id="1Mp62pP0USx" role="3cpWs9">
                <property role="TrG5h" value="tv" />
                <node concept="3uibUv" id="1Mp62pP0USy" role="1tU5fm">
                  <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                </node>
                <node concept="10QFUN" id="1Mp62pP0USz" role="33vP2m">
                  <node concept="3EllGN" id="1Mp62pP0US$" role="10QFUP">
                    <node concept="2OqwBi" id="1Mp62pP0US_" role="3ElVtu">
                      <node concept="oxGPV" id="1Mp62pP0USA" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1Mp62pP0USB" role="2OqNvi">
                        <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                      </node>
                    </node>
                    <node concept="TvHiN" id="1Mp62pP0USC" role="3ElQJh" />
                  </node>
                  <node concept="3uibUv" id="1Mp62pP0USD" role="10QFUM">
                    <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1Mp62pP0Y2P" role="3cqZAp">
              <node concept="3cpWsn" id="1Mp62pP0Y2Q" role="3cpWs9">
                <property role="TrG5h" value="rr" />
                <node concept="3uibUv" id="1Mp62pP0Y2R" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="rqRoa" id="1Mp62pP0Y2S" role="33vP2m">
                  <ref role="rqRob" to="l462:1Mp62pP0G9A" resolve="daterange" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1Mp62pP0Y2Z" role="3cqZAp">
              <node concept="3clFbS" id="1Mp62pP0Y30" role="3clFbx">
                <node concept="3cpWs8" id="1Mp62pP0Y31" role="3cqZAp">
                  <node concept="3cpWsn" id="1Mp62pP0Y32" role="3cpWs9">
                    <property role="TrG5h" value="range" />
                    <node concept="3uibUv" id="1Mp62pP0Y33" role="1tU5fm">
                      <ref role="3uigEE" to="bcb8:4voqclTstQm" resolve="DateRangeValue" />
                    </node>
                    <node concept="10QFUN" id="1Mp62pP0Y34" role="33vP2m">
                      <node concept="37vLTw" id="1Mp62pP0Y35" role="10QFUP">
                        <ref role="3cqZAo" node="1Mp62pP0Y2Q" resolve="rr" />
                      </node>
                      <node concept="3uibUv" id="1Mp62pP0Y36" role="10QFUM">
                        <ref role="3uigEE" to="bcb8:4voqclTstQm" resolve="DateRangeValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1Mp62pP1omZ" role="3cqZAp">
                  <node concept="3cpWsn" id="1Mp62pP1on0" role="3cpWs9">
                    <property role="TrG5h" value="between" />
                    <node concept="3uibUv" id="1Mp62pP1omR" role="1tU5fm">
                      <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                    </node>
                    <node concept="2OqwBi" id="1Mp62pP1on1" role="33vP2m">
                      <node concept="37vLTw" id="1Mp62pP1on2" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Mp62pP0USx" resolve="tv" />
                      </node>
                      <node concept="liA8E" id="1Mp62pP1on3" role="2OqNvi">
                        <ref role="37wK5l" node="3nGzaxUzOJM" resolve="between" />
                        <node concept="2OqwBi" id="1Mp62pP1on4" role="37wK5m">
                          <node concept="37vLTw" id="1Mp62pP1on5" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Mp62pP0Y32" resolve="range" />
                          </node>
                          <node concept="liA8E" id="1Mp62pP1on6" role="2OqNvi">
                            <ref role="37wK5l" to="bcb8:4voqclTswQa" resolve="begin" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1Mp62pP1on7" role="37wK5m">
                          <node concept="37vLTw" id="1Mp62pP1on8" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Mp62pP0Y32" resolve="range" />
                          </node>
                          <node concept="liA8E" id="1Mp62pP1on9" role="2OqNvi">
                            <ref role="37wK5l" to="bcb8:4voqclTsBpn" resolve="end" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1Mp62pP1oDD" role="3cqZAp">
                  <node concept="3clFbS" id="1Mp62pP1oDF" role="3clFbx">
                    <node concept="3cpWs8" id="1Mp62pP3yBw" role="3cqZAp">
                      <node concept="3cpWsn" id="1Mp62pP3yBx" role="3cpWs9">
                        <property role="TrG5h" value="vv" />
                        <node concept="3uibUv" id="1Mp62pP3yBb" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="2OqwBi" id="1Mp62pP3yBy" role="33vP2m">
                          <node concept="2OqwBi" id="1Mp62pP3yBz" role="2Oq$k0">
                            <node concept="37vLTw" id="1Mp62pP3yB$" role="2Oq$k0">
                              <ref role="3cqZAo" node="1Mp62pP1on0" resolve="between" />
                            </node>
                            <node concept="liA8E" id="1Mp62pP3yB_" role="2OqNvi">
                              <ref role="37wK5l" node="1Mp62pP171D" resolve="lastSlice" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1Mp62pP3yBA" role="2OqNvi">
                            <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1Mp62pP1mV2" role="3cqZAp">
                      <node concept="37vLTw" id="1Mp62pP3yBB" role="3cqZAk">
                        <ref role="3cqZAo" node="1Mp62pP3yBx" resolve="vv" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1Mp62pP1pvu" role="3clFbw">
                    <node concept="2OqwBi" id="1Mp62pP1oQm" role="2Oq$k0">
                      <node concept="oxGPV" id="1Mp62pP1oFt" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1Mp62pP1p6L" role="2OqNvi">
                        <ref role="3Tt5mk" to="l462:1Mp62pP0G9w" resolve="strategy" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="1Mp62pP1pIz" role="2OqNvi">
                      <node concept="chp4Y" id="1Mp62pP1pVZ" role="cj9EA">
                        <ref role="cht4Q" to="l462:1Mp62pP0G8W" resolve="ReduceStrategyLast" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="1Mp62pP1reQ" role="3eNLev">
                    <node concept="3clFbS" id="1Mp62pP1reS" role="3eOfB_">
                      <node concept="3cpWs6" id="1Mp62pP1r_Q" role="3cqZAp">
                        <node concept="2OqwBi" id="1Mp62pP1r_R" role="3cqZAk">
                          <node concept="2OqwBi" id="1Mp62pP1r_S" role="2Oq$k0">
                            <node concept="37vLTw" id="1Mp62pP1r_T" role="2Oq$k0">
                              <ref role="3cqZAo" node="1Mp62pP1on0" resolve="between" />
                            </node>
                            <node concept="liA8E" id="1Mp62pP1r_U" role="2OqNvi">
                              <ref role="37wK5l" node="1Mp62pP1sLf" resolve="firstSlice" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1Mp62pP1r_V" role="2OqNvi">
                            <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1Mp62pP1rmN" role="3eO9$A">
                      <node concept="2OqwBi" id="1Mp62pP1rmO" role="2Oq$k0">
                        <node concept="oxGPV" id="1Mp62pP1rmP" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1Mp62pP1rmQ" role="2OqNvi">
                          <ref role="3Tt5mk" to="l462:1Mp62pP0G9w" resolve="strategy" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="1Mp62pP1rmR" role="2OqNvi">
                        <node concept="chp4Y" id="1Mp62pP1rus" role="cj9EA">
                          <ref role="cht4Q" to="l462:1Mp62pP0G9y" resolve="ReduceStrategyFirst" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6nEpT4GTcOL" role="3eNLev">
                    <node concept="3clFbS" id="6nEpT4GTcOM" role="3eOfB_">
                      <node concept="3cpWs8" id="6nEpT4GVeJc" role="3cqZAp">
                        <node concept="3cpWsn" id="6nEpT4GVeJd" role="3cpWs9">
                          <property role="TrG5h" value="rangeDur" />
                          <node concept="3uibUv" id="6nEpT4GVeJ5" role="1tU5fm">
                            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                          <node concept="2OqwBi" id="6nEpT4GVeJe" role="33vP2m">
                            <node concept="37vLTw" id="6nEpT4GVeJf" role="2Oq$k0">
                              <ref role="3cqZAo" node="1Mp62pP0Y32" resolve="range" />
                            </node>
                            <node concept="liA8E" id="6nEpT4GVeJg" role="2OqNvi">
                              <ref role="37wK5l" to="bcb8:6nEpT4GVae9" resolve="durationInDays" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="6nEpT4GTe0s" role="3cqZAp">
                        <node concept="3cpWsn" id="6nEpT4GTe0t" role="3cpWs9">
                          <property role="TrG5h" value="res" />
                          <node concept="3uibUv" id="6nEpT4GTe0u" role="1tU5fm">
                            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                          <node concept="10M0yZ" id="6GCJsuCLfV7" role="33vP2m">
                            <ref role="3cqZAo" to="xlxw:~BigInteger.ZERO" resolve="ZERO" />
                            <ref role="1PxDUh" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="6nEpT4GTef3" role="3cqZAp">
                        <node concept="2GrKxI" id="6nEpT4GTef5" role="2Gsz3X">
                          <property role="TrG5h" value="s" />
                        </node>
                        <node concept="3clFbS" id="6nEpT4GTef9" role="2LFqv$">
                          <node concept="3cpWs8" id="6nEpT4GVgrc" role="3cqZAp">
                            <node concept="3cpWsn" id="6nEpT4GVgrd" role="3cpWs9">
                              <property role="TrG5h" value="thisDuration" />
                              <node concept="3uibUv" id="W7GwMM6eqx" role="1tU5fm">
                                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                              </node>
                              <node concept="2YIFZM" id="6GCJsuCLeLk" role="33vP2m">
                                <ref role="37wK5l" to="xlxw:~BigInteger.valueOf(long):java.math.BigInteger" resolve="valueOf" />
                                <ref role="1Pybhc" to="xlxw:~BigInteger" resolve="BigInteger" />
                                <node concept="2OqwBi" id="6nEpT4GVgre" role="37wK5m">
                                  <node concept="2GrUjf" id="6nEpT4GVgrf" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="6nEpT4GTef5" resolve="s" />
                                  </node>
                                  <node concept="liA8E" id="6nEpT4GVgrg" role="2OqNvi">
                                    <ref role="37wK5l" node="6nEpT4GTW9R" resolve="durationInDays" />
                                    <node concept="2OqwBi" id="6nEpT4GVgrh" role="37wK5m">
                                      <node concept="37vLTw" id="6nEpT4GVgri" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1Mp62pP0Y32" resolve="range" />
                                      </node>
                                      <node concept="liA8E" id="6nEpT4GVgrj" role="2OqNvi">
                                        <ref role="37wK5l" to="bcb8:4voqclTsBpn" resolve="end" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="W7GwMM6eDg" role="3cqZAp">
                            <node concept="3cpWsn" id="W7GwMM6eDh" role="3cpWs9">
                              <property role="TrG5h" value="percentage" />
                              <node concept="3uibUv" id="W7GwMM6eDi" role="1tU5fm">
                                <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
                              </node>
                              <node concept="2OqwBi" id="W7GwMM6f5x" role="33vP2m">
                                <node concept="2ShNRf" id="W7GwMM6eH7" role="2Oq$k0">
                                  <node concept="1pGfFk" id="W7GwMM6eH6" role="2ShVmc">
                                    <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(java.math.BigInteger)" resolve="BigDecimal" />
                                    <node concept="37vLTw" id="W7GwMM6eHq" role="37wK5m">
                                      <ref role="3cqZAo" node="6nEpT4GVgrd" resolve="thisDuration" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="W7GwMM6grH" role="2OqNvi">
                                  <ref role="37wK5l" to="xlxw:~BigDecimal.divide(java.math.BigDecimal,int,java.math.RoundingMode):java.math.BigDecimal" resolve="divide" />
                                  <node concept="2ShNRf" id="W7GwMM6gSr" role="37wK5m">
                                    <node concept="1pGfFk" id="W7GwMM6AmW" role="2ShVmc">
                                      <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(java.math.BigInteger)" resolve="BigDecimal" />
                                      <node concept="37vLTw" id="W7GwMM6AnG" role="37wK5m">
                                        <ref role="3cqZAo" node="6nEpT4GVeJd" resolve="rangeDur" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cmrfG" id="W7GwMM6AUT" role="37wK5m">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="Rm8GO" id="W7GwMM6Er5" role="37wK5m">
                                    <ref role="Rm8GQ" to="xlxw:~RoundingMode.HALF_UP" resolve="HALF_UP" />
                                    <ref role="1Px2BO" to="xlxw:~RoundingMode" resolve="RoundingMode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="6nEpT4GVvIz" role="3cqZAp">
                            <node concept="3cpWsn" id="6nEpT4GVvI$" role="3cpWs9">
                              <property role="TrG5h" value="val" />
                              <node concept="3uibUv" id="6nEpT4GVvI5" role="1tU5fm">
                                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                              </node>
                              <node concept="10QFUN" id="6nEpT4GVvI_" role="33vP2m">
                                <node concept="2OqwBi" id="6nEpT4GVvIA" role="10QFUP">
                                  <node concept="2GrUjf" id="6nEpT4GVvIB" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="6nEpT4GTef5" resolve="s" />
                                  </node>
                                  <node concept="liA8E" id="6nEpT4GVvIC" role="2OqNvi">
                                    <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="6nEpT4GVvID" role="10QFUM">
                                  <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6nEpT4GVeTq" role="3cqZAp">
                            <node concept="37vLTI" id="6nEpT4GVjWt" role="3clFbG">
                              <node concept="2OqwBi" id="6nEpT4GVkdB" role="37vLTx">
                                <node concept="37vLTw" id="6nEpT4GVjWM" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6nEpT4GTe0t" resolve="res" />
                                </node>
                                <node concept="liA8E" id="6nEpT4GVkEJ" role="2OqNvi">
                                  <ref role="37wK5l" to="xlxw:~BigInteger.add(java.math.BigInteger):java.math.BigInteger" resolve="add" />
                                  <node concept="2OqwBi" id="6nEpT4GVAB5" role="37wK5m">
                                    <node concept="2OqwBi" id="6nEpT4GVqPE" role="2Oq$k0">
                                      <node concept="37vLTw" id="6nEpT4GVqz9" role="2Oq$k0">
                                        <ref role="3cqZAo" node="W7GwMM6eDh" resolve="percentage" />
                                      </node>
                                      <node concept="liA8E" id="6nEpT4GVrlv" role="2OqNvi">
                                        <ref role="37wK5l" to="xlxw:~BigDecimal.multiply(java.math.BigDecimal):java.math.BigDecimal" resolve="multiply" />
                                        <node concept="2ShNRf" id="6nEpT4GVDpX" role="37wK5m">
                                          <node concept="1pGfFk" id="6nEpT4GVDpW" role="2ShVmc">
                                            <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(java.math.BigInteger)" resolve="BigDecimal" />
                                            <node concept="37vLTw" id="6nEpT4GVEh4" role="37wK5m">
                                              <ref role="3cqZAo" node="6nEpT4GVvI$" resolve="val" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="6nEpT4GVCQz" role="2OqNvi">
                                      <ref role="37wK5l" to="xlxw:~BigDecimal.toBigInteger():java.math.BigInteger" resolve="toBigInteger" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="6nEpT4GVjmf" role="37vLTJ">
                                <ref role="3cqZAo" node="6nEpT4GTe0t" resolve="res" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6nEpT4GTd_4" role="2GsD0m">
                          <node concept="37vLTw" id="6nEpT4GTcOQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Mp62pP1on0" resolve="between" />
                          </node>
                          <node concept="liA8E" id="6nEpT4GTdHe" role="2OqNvi">
                            <ref role="37wK5l" node="4voqclTDifZ" resolve="slices" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="6nEpT4GTcON" role="3cqZAp">
                        <node concept="37vLTw" id="6nEpT4GVElU" role="3cqZAk">
                          <ref role="3cqZAo" node="6nEpT4GTe0t" resolve="res" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6nEpT4GTcOT" role="3eO9$A">
                      <node concept="2OqwBi" id="6nEpT4GTcOU" role="2Oq$k0">
                        <node concept="oxGPV" id="6nEpT4GTcOV" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6nEpT4GTcOW" role="2OqNvi">
                          <ref role="3Tt5mk" to="l462:1Mp62pP0G9w" resolve="strategy" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="6nEpT4GTcOX" role="2OqNvi">
                        <node concept="chp4Y" id="6nEpT4GTdoi" role="cj9EA">
                          <ref role="cht4Q" to="l462:6nEpT4GTaVD" resolve="ReduceStrategyWeighted" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="W7GwMM7BK9" role="3eNLev">
                    <node concept="3clFbS" id="W7GwMM7BKa" role="3eOfB_">
                      <node concept="3cpWs8" id="W7GwMM7BKh" role="3cqZAp">
                        <node concept="3cpWsn" id="W7GwMM7BKi" role="3cpWs9">
                          <property role="TrG5h" value="res" />
                          <node concept="3uibUv" id="W7GwMM7BKj" role="1tU5fm">
                            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                          <node concept="10M0yZ" id="6GCJsuCLg1O" role="33vP2m">
                            <ref role="3cqZAo" to="xlxw:~BigInteger.ZERO" resolve="ZERO" />
                            <ref role="1PxDUh" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="W7GwMM7BKn" role="3cqZAp">
                        <node concept="2GrKxI" id="W7GwMM7BKo" role="2Gsz3X">
                          <property role="TrG5h" value="s" />
                        </node>
                        <node concept="3clFbS" id="W7GwMM7BKp" role="2LFqv$">
                          <node concept="3clFbF" id="W7GwMM7BKS" role="3cqZAp">
                            <node concept="37vLTI" id="W7GwMM7BKT" role="3clFbG">
                              <node concept="2OqwBi" id="W7GwMM7BKU" role="37vLTx">
                                <node concept="37vLTw" id="W7GwMM7BKV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="W7GwMM7BKi" resolve="res" />
                                </node>
                                <node concept="liA8E" id="W7GwMM7BKW" role="2OqNvi">
                                  <ref role="37wK5l" to="xlxw:~BigInteger.add(java.math.BigInteger):java.math.BigInteger" resolve="add" />
                                  <node concept="10QFUN" id="W7GwMM7BKN" role="37wK5m">
                                    <node concept="2OqwBi" id="W7GwMM7BKO" role="10QFUP">
                                      <node concept="2GrUjf" id="W7GwMM7BKP" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="W7GwMM7BKo" resolve="s" />
                                      </node>
                                      <node concept="liA8E" id="W7GwMM7BKQ" role="2OqNvi">
                                        <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="W7GwMM7BKR" role="10QFUM">
                                      <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="W7GwMM7BL5" role="37vLTJ">
                                <ref role="3cqZAo" node="W7GwMM7BKi" resolve="res" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="W7GwMM7BL6" role="2GsD0m">
                          <node concept="37vLTw" id="W7GwMM7BL7" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Mp62pP1on0" resolve="between" />
                          </node>
                          <node concept="liA8E" id="W7GwMM7BL8" role="2OqNvi">
                            <ref role="37wK5l" node="4voqclTDifZ" resolve="slices" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="W7GwMM7BL9" role="3cqZAp">
                        <node concept="37vLTw" id="W7GwMM7BLa" role="3cqZAk">
                          <ref role="3cqZAo" node="W7GwMM7BKi" resolve="res" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="W7GwMM7BLb" role="3eO9$A">
                      <node concept="2OqwBi" id="W7GwMM7BLc" role="2Oq$k0">
                        <node concept="oxGPV" id="W7GwMM7BLd" role="2Oq$k0" />
                        <node concept="3TrEf2" id="W7GwMM7BLe" role="2OqNvi">
                          <ref role="3Tt5mk" to="l462:1Mp62pP0G9w" resolve="strategy" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="W7GwMM7BLf" role="2OqNvi">
                        <node concept="chp4Y" id="W7GwMM7Fdl" role="cj9EA">
                          <ref role="cht4Q" to="l462:W7GwMM7AyP" resolve="ReduceStrategySum" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1Mp62pP0Y3j" role="3clFbw">
                <node concept="3uibUv" id="1Mp62pP0Y3k" role="2ZW6by">
                  <ref role="3uigEE" to="bcb8:4voqclTstQm" resolve="DateRangeValue" />
                </node>
                <node concept="37vLTw" id="1Mp62pP0Y3l" role="2ZW6bz">
                  <ref role="3cqZAo" node="1Mp62pP0Y2Q" resolve="rr" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1Mp62pP1nT5" role="3cqZAp">
              <node concept="10Nm6u" id="1Mp62pP1nUC" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="4voqclTzfR4" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:4voqclTxJTX" resolve="ForEachSliceOp" />
      <node concept="3dA_Gj" id="4voqclTzhI6" role="3vQZUl">
        <node concept="9aQIb" id="4voqclTzhI8" role="3vcmbn">
          <node concept="3clFbS" id="4voqclTzhIa" role="9aQI4">
            <node concept="3cpWs8" id="4voqclTzhIn" role="3cqZAp">
              <node concept="3cpWsn" id="4voqclTzhIo" role="3cpWs9">
                <property role="TrG5h" value="tv" />
                <node concept="3uibUv" id="4voqclTzhIp" role="1tU5fm">
                  <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                </node>
                <node concept="10QFUN" id="4voqclTzhIq" role="33vP2m">
                  <node concept="3EllGN" id="4voqclTzhIr" role="10QFUP">
                    <node concept="2OqwBi" id="4voqclTzhIs" role="3ElVtu">
                      <node concept="oxGPV" id="4voqclTzhIt" role="2Oq$k0" />
                      <node concept="2qgKlT" id="4voqclTzhIu" role="2OqNvi">
                        <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                      </node>
                    </node>
                    <node concept="TvHiN" id="4voqclTzhIv" role="3ElQJh" />
                  </node>
                  <node concept="3uibUv" id="4voqclTzhIw" role="10QFUM">
                    <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7kYh9WsShfn" role="3cqZAp">
              <node concept="3cpWsn" id="7kYh9WsShfo" role="3cpWs9">
                <property role="TrG5h" value="executableValue" />
                <node concept="3uibUv" id="7kYh9WsShfp" role="1tU5fm">
                  <ref role="3uigEE" to="sxpq:$yb$20kU6$" resolve="ExecutableValue" />
                </node>
                <node concept="1eOMI4" id="7kYh9WsShfq" role="33vP2m">
                  <node concept="10QFUN" id="7kYh9WsShfr" role="1eOMHV">
                    <node concept="rqRoa" id="7kYh9WsShfs" role="10QFUP">
                      <ref role="rqRob" to="l462:4voqclTxKDZ" resolve="mapping" />
                    </node>
                    <node concept="3uibUv" id="7kYh9WsShft" role="10QFUM">
                      <ref role="3uigEE" to="sxpq:$yb$20kU6$" resolve="ExecutableValue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4voqclTDEHN" role="3cqZAp">
              <node concept="3cpWsn" id="4voqclTDEHO" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="3uibUv" id="4voqclTDEHP" role="1tU5fm">
                  <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                </node>
                <node concept="2ShNRf" id="4voqclTDEVr" role="33vP2m">
                  <node concept="1pGfFk" id="4voqclTDEVq" role="2ShVmc">
                    <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="4voqclTDakh" role="3cqZAp">
              <node concept="2GrKxI" id="4voqclTDakj" role="2Gsz3X">
                <property role="TrG5h" value="s" />
              </node>
              <node concept="2OqwBi" id="4voqclTDa$l" role="2GsD0m">
                <node concept="37vLTw" id="4voqclTDasc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4voqclTzhIo" resolve="tv" />
                </node>
                <node concept="liA8E" id="4voqclTDBea" role="2OqNvi">
                  <ref role="37wK5l" node="4voqclTDifZ" resolve="slices" />
                </node>
              </node>
              <node concept="3clFbS" id="4voqclTDakn" role="2LFqv$">
                <node concept="3cpWs8" id="4voqclTDDM4" role="3cqZAp">
                  <node concept="3cpWsn" id="4voqclTDDM5" role="3cpWs9">
                    <property role="TrG5h" value="time" />
                    <node concept="3uibUv" id="6GCJsuCLg9q" role="1tU5fm">
                      <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                    </node>
                    <node concept="2OqwBi" id="4voqclTDDM6" role="33vP2m">
                      <node concept="2GrUjf" id="4voqclTDDM7" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4voqclTDakj" resolve="s" />
                      </node>
                      <node concept="liA8E" id="4voqclTDDM8" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4voqclTDCb_" role="3cqZAp">
                  <node concept="3cpWsn" id="4voqclTDCbA" role="3cpWs9">
                    <property role="TrG5h" value="val" />
                    <node concept="3uibUv" id="4voqclTDCb$" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="4voqclTDCbB" role="33vP2m">
                      <node concept="2GrUjf" id="4voqclTDCbC" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4voqclTDakj" resolve="s" />
                      </node>
                      <node concept="liA8E" id="4voqclTDCbD" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="v9lBEVhndT" role="3cqZAp">
                  <node concept="3cpWsn" id="v9lBEVhndU" role="3cpWs9">
                    <property role="TrG5h" value="newValue" />
                    <node concept="3uibUv" id="v9lBEVhndR" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="v9lBEVhndV" role="33vP2m">
                      <node concept="37vLTw" id="v9lBEVhndW" role="2Oq$k0">
                        <ref role="3cqZAo" node="7kYh9WsShfo" resolve="executableValue" />
                      </node>
                      <node concept="liA8E" id="v9lBEVhndX" role="2OqNvi">
                        <ref role="37wK5l" to="sxpq:v9lBEVh6mc" resolve="executeEvaluatedOneArg" />
                        <node concept="37vLTw" id="4voqclTDHUC" role="37wK5m">
                          <ref role="3cqZAo" node="4voqclTDCbA" resolve="val" />
                        </node>
                        <node concept="oxNuS" id="v9lBEVhndZ" role="37wK5m" />
                        <node concept="3fckFw" id="4_qY3E6K$2R" role="37wK5m" />
                        <node concept="2dz_u5" id="5d4VabuVckz" role="37wK5m" />
                        <node concept="3clFbT" id="5ya_dKpC1K1" role="37wK5m">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4voqclTDI3g" role="3cqZAp">
                  <node concept="37vLTI" id="4voqclTDIfs" role="3clFbG">
                    <node concept="2OqwBi" id="4voqclTDIlf" role="37vLTx">
                      <node concept="37vLTw" id="4voqclTDIfH" role="2Oq$k0">
                        <ref role="3cqZAo" node="4voqclTDEHO" resolve="res" />
                      </node>
                      <node concept="liA8E" id="4voqclTDIuF" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1V9Ut6" resolve="slice" />
                        <node concept="37vLTw" id="4voqclTDIvL" role="37wK5m">
                          <ref role="3cqZAo" node="4voqclTDDM5" resolve="time" />
                        </node>
                        <node concept="37vLTw" id="4voqclTDIxX" role="37wK5m">
                          <ref role="3cqZAo" node="v9lBEVhndU" resolve="newValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4voqclTDI3e" role="37vLTJ">
                      <ref role="3cqZAo" node="4voqclTDEHO" resolve="res" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4voqclT_b_Z" role="3cqZAp">
              <node concept="37vLTw" id="4voqclTDEVF" role="3cqZAk">
                <ref role="3cqZAo" node="4voqclTDEHO" resolve="res" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="4voqclTxhZJ" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:4voqclTxdd4" resolve="AlwaysExpression" />
      <node concept="3vetai" id="4voqclTxjQB" role="3vQZUl">
        <node concept="2ShNRf" id="4voqclTxjQP" role="3vdyny">
          <node concept="1pGfFk" id="4voqclTxk6H" role="2ShVmc">
            <ref role="37wK5l" node="50smQ1V9TVb" resolve="TemporalValue" />
            <node concept="10M0yZ" id="6GCJsuCLgeq" role="37wK5m">
              <ref role="3cqZAo" to="28m1:~LocalDate.MIN" resolve="MIN" />
              <ref role="1PxDUh" to="28m1:~LocalDate" resolve="LocalDate" />
            </node>
            <node concept="rqRoa" id="4voqclTxk_t" role="37wK5m">
              <ref role="rqRob" to="l462:4voqclTxdd8" resolve="value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="3nGzaxU_rPi" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:3nGzaxUtzZN" resolve="SpreadValuesOp" />
      <node concept="3dA_Gj" id="3nGzaxU_t07" role="3vQZUl">
        <node concept="9aQIb" id="3nGzaxU_t09" role="3vcmbn">
          <node concept="3clFbS" id="3nGzaxU_t0b" role="9aQI4">
            <node concept="3cpWs8" id="3nGzaxUC3h5" role="3cqZAp">
              <node concept="3cpWsn" id="3nGzaxUC3h6" role="3cpWs9">
                <property role="TrG5h" value="tv" />
                <node concept="3uibUv" id="3nGzaxUC3h3" role="1tU5fm">
                  <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                </node>
                <node concept="10QFUN" id="3nGzaxUC3h7" role="33vP2m">
                  <node concept="3EllGN" id="3nGzaxUC3h8" role="10QFUP">
                    <node concept="2OqwBi" id="3nGzaxUC3h9" role="3ElVtu">
                      <node concept="oxGPV" id="3nGzaxUC3ha" role="2Oq$k0" />
                      <node concept="2qgKlT" id="3nGzaxUC3hb" role="2OqNvi">
                        <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                      </node>
                    </node>
                    <node concept="TvHiN" id="3nGzaxUC3hc" role="3ElQJh" />
                  </node>
                  <node concept="3uibUv" id="3nGzaxUC3hd" role="10QFUM">
                    <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4voqclT_YDs" role="3cqZAp">
              <node concept="3cpWsn" id="4voqclT_YDt" role="3cpWs9">
                <property role="TrG5h" value="fromValue" />
                <node concept="3uibUv" id="4voqclT_ZP7" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="rqRoa" id="4voqclT_YDv" role="33vP2m">
                  <ref role="rqRob" to="l462:3nGzaxUBq4G" resolve="fromTime" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3nGzaxUBQdo" role="3cqZAp">
              <node concept="3cpWsn" id="3nGzaxUBQdp" role="3cpWs9">
                <property role="TrG5h" value="fromTime" />
                <node concept="3uibUv" id="6GCJsuCJrZt" role="1tU5fm">
                  <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3nGzaxUBQfy" role="3cqZAp">
              <node concept="3cpWsn" id="3nGzaxUBQfz" role="3cpWs9">
                <property role="TrG5h" value="toTime" />
                <node concept="3uibUv" id="6GCJsuCJsqD" role="1tU5fm">
                  <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4voqclTA15h" role="3cqZAp">
              <node concept="3clFbS" id="4voqclTA15j" role="3clFbx">
                <node concept="3cpWs8" id="4voqclTA4Ye" role="3cqZAp">
                  <node concept="3cpWsn" id="4voqclTA4Yf" role="3cpWs9">
                    <property role="TrG5h" value="range" />
                    <node concept="3uibUv" id="4voqclTA4Yb" role="1tU5fm">
                      <ref role="3uigEE" to="bcb8:4voqclTstQm" resolve="DateRangeValue" />
                    </node>
                    <node concept="10QFUN" id="4voqclTA4Yg" role="33vP2m">
                      <node concept="37vLTw" id="4voqclTA4Yh" role="10QFUP">
                        <ref role="3cqZAo" node="4voqclT_YDt" resolve="fromValue" />
                      </node>
                      <node concept="3uibUv" id="4voqclTA4Yi" role="10QFUM">
                        <ref role="3uigEE" to="bcb8:4voqclTstQm" resolve="DateRangeValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4voqclTA54Z" role="3cqZAp">
                  <node concept="37vLTI" id="4voqclTA5lN" role="3clFbG">
                    <node concept="2OqwBi" id="4voqclTA5rC" role="37vLTx">
                      <node concept="37vLTw" id="4voqclTA5m4" role="2Oq$k0">
                        <ref role="3cqZAo" node="4voqclTA4Yf" resolve="range" />
                      </node>
                      <node concept="liA8E" id="4voqclTA5BK" role="2OqNvi">
                        <ref role="37wK5l" to="bcb8:4voqclTswQa" resolve="begin" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4voqclTA54W" role="37vLTJ">
                      <ref role="3cqZAo" node="3nGzaxUBQdp" resolve="fromTime" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4voqclTA5P0" role="3cqZAp">
                  <node concept="37vLTI" id="4voqclTA66h" role="3clFbG">
                    <node concept="2OqwBi" id="4voqclTA6c6" role="37vLTx">
                      <node concept="37vLTw" id="4voqclTA66y" role="2Oq$k0">
                        <ref role="3cqZAo" node="4voqclTA4Yf" resolve="range" />
                      </node>
                      <node concept="liA8E" id="4voqclTA6oe" role="2OqNvi">
                        <ref role="37wK5l" to="bcb8:4voqclTsBpn" resolve="end" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4voqclTA5OY" role="37vLTJ">
                      <ref role="3cqZAo" node="3nGzaxUBQfz" resolve="toTime" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4voqclTA3cS" role="3clFbw">
                <node concept="3uibUv" id="4voqclTA3nd" role="2ZW6by">
                  <ref role="3uigEE" to="bcb8:4voqclTstQm" resolve="DateRangeValue" />
                </node>
                <node concept="37vLTw" id="4voqclTA1RL" role="2ZW6bz">
                  <ref role="3cqZAo" node="4voqclT_YDt" resolve="fromValue" />
                </node>
              </node>
              <node concept="9aQIb" id="4voqclTA6xX" role="9aQIa">
                <node concept="3clFbS" id="4voqclTA6xY" role="9aQI4">
                  <node concept="3clFbF" id="4voqclTA6yT" role="3cqZAp">
                    <node concept="37vLTI" id="4voqclTA6yU" role="3clFbG">
                      <node concept="1eOMI4" id="6GCJsuCJy25" role="37vLTx">
                        <node concept="10QFUN" id="6GCJsuCJy24" role="1eOMHV">
                          <node concept="37vLTw" id="6GCJsuCJy23" role="10QFUP">
                            <ref role="3cqZAo" node="4voqclT_YDt" resolve="fromValue" />
                          </node>
                          <node concept="3uibUv" id="6GCJsuCJy22" role="10QFUM">
                            <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4voqclTA6yY" role="37vLTJ">
                        <ref role="3cqZAo" node="3nGzaxUBQdp" resolve="fromTime" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4voqclTA6yZ" role="3cqZAp">
                    <node concept="37vLTI" id="4voqclTA6z0" role="3clFbG">
                      <node concept="1eOMI4" id="6GCJsuCJy3X" role="37vLTx">
                        <node concept="10QFUN" id="6GCJsuCJy3W" role="1eOMHV">
                          <node concept="rqRoa" id="6GCJsuCJy3V" role="10QFUP">
                            <ref role="rqRob" to="l462:3nGzaxUBq4I" resolve="toTime" />
                          </node>
                          <node concept="3uibUv" id="6GCJsuCJy3U" role="10QFUM">
                            <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4voqclTA6z4" role="37vLTJ">
                        <ref role="3cqZAo" node="3nGzaxUBQfz" resolve="toTime" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3nGzaxUBQlI" role="3cqZAp">
              <node concept="3clFbS" id="3nGzaxUBQlK" role="3clFbx">
                <node concept="3cpWs8" id="6GCJsuCJyu5" role="3cqZAp">
                  <node concept="3cpWsn" id="6GCJsuCJyu8" role="3cpWs9">
                    <property role="TrG5h" value="totalDays" />
                    <node concept="3cpWsb" id="6GCJsuCJBGG" role="1tU5fm" />
                    <node concept="2OqwBi" id="6GCJsuCJAuX" role="33vP2m">
                      <node concept="Rm8GO" id="6GCJsuCJ_z6" role="2Oq$k0">
                        <ref role="Rm8GQ" to="dzyv:~ChronoUnit.DAYS" resolve="DAYS" />
                        <ref role="1Px2BO" to="dzyv:~ChronoUnit" resolve="ChronoUnit" />
                      </node>
                      <node concept="liA8E" id="6GCJsuCJB4_" role="2OqNvi">
                        <ref role="37wK5l" to="dzyv:~ChronoUnit.between(java.time.temporal.Temporal,java.time.temporal.Temporal):long" resolve="between" />
                        <node concept="37vLTw" id="6GCJsuCJBcS" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUBQdp" resolve="fromTime" />
                        </node>
                        <node concept="37vLTw" id="6GCJsuCJBvR" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUBQfz" resolve="toTime" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3nGzaxUC0Ny" role="3cqZAp">
                  <node concept="3cpWsn" id="3nGzaxUC0N_" role="3cpWs9">
                    <property role="TrG5h" value="spreaded" />
                    <node concept="_YKpA" id="3nGzaxUC0Nu" role="1tU5fm">
                      <node concept="3uibUv" id="3nGzaxUC0YZ" role="_ZDj9">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3nGzaxUC0ZU" role="33vP2m">
                      <node concept="Tc6Ow" id="3nGzaxUC0ZQ" role="2ShVmc">
                        <node concept="3uibUv" id="3nGzaxUC0ZR" role="HW$YZ">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="10QFUN" id="6GCJsuCJK3g" role="3lWHg$">
                          <node concept="37vLTw" id="6GCJsuCJK3f" role="10QFUP">
                            <ref role="3cqZAo" node="6GCJsuCJyu8" resolve="totalDays" />
                          </node>
                          <node concept="10Oyi0" id="6GCJsuCJKrr" role="10QFUM" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="3nGzaxUBVC2" role="3cqZAp">
                  <node concept="3clFbS" id="3nGzaxUBVC4" role="2LFqv$">
                    <node concept="3clFbF" id="3nGzaxUC1kG" role="3cqZAp">
                      <node concept="2OqwBi" id="3nGzaxUC1VY" role="3clFbG">
                        <node concept="37vLTw" id="3nGzaxUC1kE" role="2Oq$k0">
                          <ref role="3cqZAo" node="3nGzaxUC0N_" resolve="spreaded" />
                        </node>
                        <node concept="TSZUe" id="3nGzaxUC2Pc" role="2OqNvi">
                          <node concept="2OqwBi" id="3nGzaxUC435" role="25WWJ7">
                            <node concept="37vLTw" id="3nGzaxUC3Wa" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUC3h6" resolve="tv" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUC4cW" role="2OqNvi">
                              <ref role="37wK5l" node="50smQ1VeRHr" resolve="valueAt" />
                              <node concept="2OqwBi" id="6GCJsuCJMdR" role="37wK5m">
                                <node concept="37vLTw" id="6GCJsuCJLNI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3nGzaxUBQdp" resolve="fromTime" />
                                </node>
                                <node concept="liA8E" id="6GCJsuCJMYc" role="2OqNvi">
                                  <ref role="37wK5l" to="28m1:~LocalDate.plus(long,java.time.temporal.TemporalUnit):java.time.LocalDate" resolve="plus" />
                                  <node concept="37vLTw" id="6GCJsuCJN0I" role="37wK5m">
                                    <ref role="3cqZAo" node="3nGzaxUBVC5" resolve="i" />
                                  </node>
                                  <node concept="Rm8GO" id="6GCJsuCJP8f" role="37wK5m">
                                    <ref role="Rm8GQ" to="dzyv:~ChronoUnit.DAYS" resolve="DAYS" />
                                    <ref role="1Px2BO" to="dzyv:~ChronoUnit" resolve="ChronoUnit" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="3nGzaxUBVC5" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="3cpWsb" id="4voqclTuMJP" role="1tU5fm" />
                    <node concept="3cmrfG" id="6GCJsuCJKRJ" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="2dkUwp" id="3nGzaxUBXcQ" role="1Dwp0S">
                    <node concept="37vLTw" id="3nGzaxUBWqf" role="3uHU7B">
                      <ref role="3cqZAo" node="3nGzaxUBVC5" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="6GCJsuCJLE6" role="3uHU7w">
                      <ref role="3cqZAo" node="6GCJsuCJyu8" resolve="totalDays" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="3nGzaxUC0s8" role="1Dwrff">
                    <node concept="37vLTw" id="3nGzaxUC0sa" role="2$L3a6">
                      <ref role="3cqZAo" node="3nGzaxUBVC5" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3nGzaxUC18Y" role="3cqZAp">
                  <node concept="2OqwBi" id="3nGzaxUC7sA" role="3cqZAk">
                    <node concept="2YIFZM" id="3nGzaxUC6CM" role="2Oq$k0">
                      <ref role="37wK5l" to="j10v:~Empty.vector():org.pcollections.PVector" resolve="vector" />
                      <ref role="1Pybhc" to="j10v:~Empty" resolve="Empty" />
                    </node>
                    <node concept="liA8E" id="3nGzaxUC8N5" role="2OqNvi">
                      <ref role="37wK5l" to="j10v:~PVector.plusAll(java.util.Collection):org.pcollections.PVector" resolve="plusAll" />
                      <node concept="37vLTw" id="3nGzaxUC8WK" role="37wK5m">
                        <ref role="3cqZAo" node="3nGzaxUC0N_" resolve="spreaded" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3nGzaxUBRra" role="3clFbw">
                <node concept="2OqwBi" id="3nGzaxUBQyg" role="2Oq$k0">
                  <node concept="oxGPV" id="3nGzaxUBQm_" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3nGzaxUBQOp" role="2OqNvi">
                    <ref role="3TsBF5" to="l462:3nGzaxUt$0j" resolve="unit" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3nGzaxUBRRZ" role="2OqNvi">
                  <node concept="uoxfO" id="3nGzaxUBRS1" role="3t7uKA">
                    <ref role="uo_Cq" to="l462:3nGzaxUtzZT" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3nGzaxUW0tD" role="3cqZAp">
              <node concept="3clFbS" id="3nGzaxUW0tE" role="3clFbx">
                <node concept="3cpWs8" id="6GCJsuCJQyF" role="3cqZAp">
                  <node concept="3cpWsn" id="6GCJsuCJQyI" role="3cpWs9">
                    <property role="TrG5h" value="totalMonths" />
                    <node concept="3cpWsb" id="6GCJsuCJQyD" role="1tU5fm" />
                    <node concept="2OqwBi" id="6GCJsuCJS0z" role="33vP2m">
                      <node concept="Rm8GO" id="6GCJsuCJRz5" role="2Oq$k0">
                        <ref role="Rm8GQ" to="dzyv:~ChronoUnit.MONTHS" resolve="MONTHS" />
                        <ref role="1Px2BO" to="dzyv:~ChronoUnit" resolve="ChronoUnit" />
                      </node>
                      <node concept="liA8E" id="6GCJsuCJTb9" role="2OqNvi">
                        <ref role="37wK5l" to="dzyv:~ChronoUnit.between(java.time.temporal.Temporal,java.time.temporal.Temporal):long" resolve="between" />
                        <node concept="37vLTw" id="6GCJsuCJTcz" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUBQdp" resolve="fromTime" />
                        </node>
                        <node concept="37vLTw" id="6GCJsuCJTIl" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUBQfz" resolve="toTime" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3nGzaxUW0tF" role="3cqZAp">
                  <node concept="3cpWsn" id="3nGzaxUW0tG" role="3cpWs9">
                    <property role="TrG5h" value="spreaded" />
                    <node concept="_YKpA" id="3nGzaxUW0tH" role="1tU5fm">
                      <node concept="3uibUv" id="3nGzaxUW0tI" role="_ZDj9">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3nGzaxUW0tJ" role="33vP2m">
                      <node concept="Tc6Ow" id="3nGzaxUW0tK" role="2ShVmc">
                        <node concept="3uibUv" id="3nGzaxUW0tL" role="HW$YZ">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="10QFUN" id="6GCJsuCJU_O" role="3lWHg$">
                          <node concept="37vLTw" id="6GCJsuCJU_N" role="10QFUP">
                            <ref role="3cqZAo" node="6GCJsuCJQyI" resolve="totalMonths" />
                          </node>
                          <node concept="10Oyi0" id="6GCJsuCJUY4" role="10QFUM" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="3nGzaxUW0tM" role="3cqZAp">
                  <node concept="3clFbS" id="3nGzaxUW0tN" role="2LFqv$">
                    <node concept="3clFbF" id="3nGzaxUW0tO" role="3cqZAp">
                      <node concept="2OqwBi" id="3nGzaxUW0tP" role="3clFbG">
                        <node concept="37vLTw" id="3nGzaxUW0tQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="3nGzaxUW0tG" resolve="spreaded" />
                        </node>
                        <node concept="TSZUe" id="3nGzaxUW0tR" role="2OqNvi">
                          <node concept="2OqwBi" id="3nGzaxUW0tS" role="25WWJ7">
                            <node concept="37vLTw" id="3nGzaxUW0tT" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUC3h6" resolve="tv" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUW0tU" role="2OqNvi">
                              <ref role="37wK5l" node="50smQ1VeRHr" resolve="valueAt" />
                              <node concept="2OqwBi" id="6GCJsuCJZfE" role="37wK5m">
                                <node concept="37vLTw" id="6GCJsuCJYKD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3nGzaxUBQdp" resolve="fromTime" />
                                </node>
                                <node concept="liA8E" id="6GCJsuCK004" role="2OqNvi">
                                  <ref role="37wK5l" to="28m1:~LocalDate.plus(long,java.time.temporal.TemporalUnit):java.time.LocalDate" resolve="plus" />
                                  <node concept="37vLTw" id="6GCJsuCK02R" role="37wK5m">
                                    <ref role="3cqZAo" node="3nGzaxUW0u0" resolve="i" />
                                  </node>
                                  <node concept="Rm8GO" id="6GCJsuCK1KV" role="37wK5m">
                                    <ref role="Rm8GQ" to="dzyv:~ChronoUnit.MONTHS" resolve="MONTHS" />
                                    <ref role="1Px2BO" to="dzyv:~ChronoUnit" resolve="ChronoUnit" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="3nGzaxUW0u0" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="3cpWsb" id="4voqclTuMnL" role="1tU5fm" />
                    <node concept="3cmrfG" id="6GCJsuCJWlr" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="2dkUwp" id="3nGzaxUW0u5" role="1Dwp0S">
                    <node concept="37vLTw" id="6GCJsuCJWDI" role="3uHU7w">
                      <ref role="3cqZAo" node="6GCJsuCJQyI" resolve="totalMonths" />
                    </node>
                    <node concept="37vLTw" id="3nGzaxUW0u9" role="3uHU7B">
                      <ref role="3cqZAo" node="3nGzaxUW0u0" resolve="i" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="6GCJsuCJYq$" role="1Dwrff">
                    <node concept="37vLTw" id="6GCJsuCJYqA" role="2$L3a6">
                      <ref role="3cqZAo" node="3nGzaxUW0u0" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3nGzaxUW0uc" role="3cqZAp">
                  <node concept="2OqwBi" id="3nGzaxUW0ud" role="3cqZAk">
                    <node concept="2YIFZM" id="3nGzaxUW0ue" role="2Oq$k0">
                      <ref role="37wK5l" to="j10v:~Empty.vector():org.pcollections.PVector" resolve="vector" />
                      <ref role="1Pybhc" to="j10v:~Empty" resolve="Empty" />
                    </node>
                    <node concept="liA8E" id="3nGzaxUW0uf" role="2OqNvi">
                      <ref role="37wK5l" to="j10v:~PVector.plusAll(java.util.Collection):org.pcollections.PVector" resolve="plusAll" />
                      <node concept="37vLTw" id="3nGzaxUW0ug" role="37wK5m">
                        <ref role="3cqZAo" node="3nGzaxUW0tG" resolve="spreaded" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3nGzaxUW0uh" role="3clFbw">
                <node concept="2OqwBi" id="3nGzaxUW0ui" role="2Oq$k0">
                  <node concept="oxGPV" id="3nGzaxUW0uj" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3nGzaxUW0uk" role="2OqNvi">
                    <ref role="3TsBF5" to="l462:3nGzaxUt$0j" resolve="unit" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3nGzaxUW0ul" role="2OqNvi">
                  <node concept="uoxfO" id="3nGzaxUW0um" role="3t7uKA">
                    <ref role="uo_Cq" to="l462:3nGzaxUtzZX" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3nGzaxUBS6t" role="3cqZAp">
              <node concept="10Nm6u" id="3nGzaxUBS6R" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="3nGzaxU$osm" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:3nGzaxUzMDV" resolve="BetweenOp" />
      <node concept="3vetai" id="3nGzaxU$pwz" role="3vQZUl">
        <node concept="2OqwBi" id="3nGzaxU$pw$" role="3vdyny">
          <node concept="1eOMI4" id="3nGzaxU$pw_" role="2Oq$k0">
            <node concept="10QFUN" id="3nGzaxU$pwA" role="1eOMHV">
              <node concept="3EllGN" id="3nGzaxU$pwB" role="10QFUP">
                <node concept="2OqwBi" id="3nGzaxU$pwC" role="3ElVtu">
                  <node concept="oxGPV" id="3nGzaxU$pwD" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3nGzaxU$pwE" role="2OqNvi">
                    <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                  </node>
                </node>
                <node concept="TvHiN" id="3nGzaxU$pwF" role="3ElQJh" />
              </node>
              <node concept="3uibUv" id="3nGzaxU$pwG" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="3nGzaxU$pwH" role="2OqNvi">
            <ref role="37wK5l" node="3nGzaxUzOJM" resolve="between" />
            <node concept="rqRoa" id="3nGzaxU$pwJ" role="37wK5m">
              <ref role="rqRob" to="l462:3nGzaxUzMDW" resolve="from" />
            </node>
            <node concept="rqRoa" id="3nGzaxU$pQD" role="37wK5m">
              <ref role="rqRob" to="l462:3nGzaxUzMDX" resolve="to" />
            </node>
          </node>
        </node>
      </node>
      <node concept="qpFDx" id="6GCJsuCK7EE" role="3vbI0w">
        <ref role="qpFD$" to="l462:3nGzaxUzMDW" resolve="from" />
        <node concept="rxStX" id="6GCJsuCK7M_" role="rajlz">
          <ref role="rxSuV" to="mi3w:3nGzaxU$Pz8" resolve="DateType" />
        </node>
      </node>
      <node concept="qpFDx" id="6GCJsuCK8tf" role="3vbI0w">
        <ref role="qpFD$" to="l462:3nGzaxUzMDX" resolve="to" />
        <node concept="rxStX" id="6GCJsuCK8Iu" role="rajlz">
          <ref role="rxSuV" to="mi3w:3nGzaxU$Pz8" resolve="DateType" />
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="3nGzaxUzAyx" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:3nGzaxUyXFe" resolve="BeforeOp" />
      <node concept="3vetai" id="3nGzaxUzBJw" role="3vQZUl">
        <node concept="2OqwBi" id="3nGzaxUzBJx" role="3vdyny">
          <node concept="1eOMI4" id="3nGzaxUzBJy" role="2Oq$k0">
            <node concept="10QFUN" id="3nGzaxUzBJz" role="1eOMHV">
              <node concept="3EllGN" id="3nGzaxUzBJ$" role="10QFUP">
                <node concept="2OqwBi" id="3nGzaxUzBJ_" role="3ElVtu">
                  <node concept="oxGPV" id="3nGzaxUzBJA" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3nGzaxUzBJB" role="2OqNvi">
                    <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                  </node>
                </node>
                <node concept="TvHiN" id="3nGzaxUzBJC" role="3ElQJh" />
              </node>
              <node concept="3uibUv" id="3nGzaxUzBJD" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="3nGzaxUzBJE" role="2OqNvi">
            <ref role="37wK5l" node="3nGzaxUyZEs" resolve="before" />
            <node concept="rqRoa" id="3nGzaxUzBJG" role="37wK5m">
              <ref role="rqRob" to="l462:3nGzaxUyXFf" resolve="time" />
            </node>
          </node>
        </node>
      </node>
      <node concept="qpFDx" id="6GCJsuCKa6G" role="3vbI0w">
        <ref role="qpFD$" to="l462:3nGzaxUyXFf" resolve="time" />
        <node concept="rxStX" id="6GCJsuCKaes" role="rajlz">
          <ref role="rxSuV" to="mi3w:3nGzaxU$Pz8" resolve="DateType" />
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="3nGzaxUzzyh" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:3nGzaxUt$2z" resolve="AfterOp" />
      <node concept="3vetai" id="3nGzaxUzzyi" role="3vQZUl">
        <node concept="2OqwBi" id="3nGzaxUzzyj" role="3vdyny">
          <node concept="1eOMI4" id="3nGzaxUzzyk" role="2Oq$k0">
            <node concept="10QFUN" id="3nGzaxUzzyl" role="1eOMHV">
              <node concept="3EllGN" id="3nGzaxUzzym" role="10QFUP">
                <node concept="2OqwBi" id="3nGzaxUzzyn" role="3ElVtu">
                  <node concept="oxGPV" id="3nGzaxUzzyo" role="2Oq$k0" />
                  <node concept="2qgKlT" id="3nGzaxUzzyp" role="2OqNvi">
                    <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                  </node>
                </node>
                <node concept="TvHiN" id="3nGzaxUzzyq" role="3ElQJh" />
              </node>
              <node concept="3uibUv" id="3nGzaxUzzyr" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="3nGzaxUzzys" role="2OqNvi">
            <ref role="37wK5l" node="3nGzaxUtK2s" resolve="after" />
            <node concept="rqRoa" id="3nGzaxUzzyu" role="37wK5m">
              <ref role="rqRob" to="l462:3nGzaxUt$2$" resolve="time" />
            </node>
          </node>
        </node>
      </node>
      <node concept="qpFDx" id="6GCJsuCKbf2" role="3vbI0w">
        <ref role="qpFD$" to="l462:3nGzaxUt$2$" resolve="time" />
        <node concept="rxStX" id="6GCJsuCKbmM" role="rajlz">
          <ref role="rxSuV" to="mi3w:3nGzaxU$Pz8" resolve="DateType" />
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="50smQ1VeQBj" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:50smQ1VexVM" resolve="ValueAtOp" />
      <node concept="3vetai" id="50smQ1VeR9f" role="3vQZUl">
        <node concept="2OqwBi" id="50smQ1VeR9t" role="3vdyny">
          <node concept="1eOMI4" id="50smQ1VeR9u" role="2Oq$k0">
            <node concept="10QFUN" id="50smQ1VeR9v" role="1eOMHV">
              <node concept="3EllGN" id="50smQ1VeR9w" role="10QFUP">
                <node concept="2OqwBi" id="50smQ1VeR9x" role="3ElVtu">
                  <node concept="oxGPV" id="50smQ1VeR9y" role="2Oq$k0" />
                  <node concept="2qgKlT" id="50smQ1VeR9z" role="2OqNvi">
                    <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                  </node>
                </node>
                <node concept="TvHiN" id="50smQ1VeR9$" role="3ElQJh" />
              </node>
              <node concept="3uibUv" id="50smQ1VeR9_" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="50smQ1VeR9A" role="2OqNvi">
            <ref role="37wK5l" node="50smQ1VeRHr" resolve="valueAt" />
            <node concept="rqRoa" id="50smQ1Vf7UP" role="37wK5m">
              <ref role="rqRob" to="l462:50smQ1VexVQ" resolve="time" />
            </node>
          </node>
        </node>
      </node>
      <node concept="qpFDx" id="6GCJsuCKczV" role="3vbI0w">
        <ref role="qpFD$" to="l462:50smQ1VexVQ" resolve="time" />
        <node concept="rxStX" id="6GCJsuCKcF4" role="rajlz">
          <ref role="rxSuV" to="mi3w:3nGzaxU$Pz8" resolve="DateType" />
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="50smQ1VdF$s" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:50smQ1VdEyv" resolve="IntervalsOp" />
      <node concept="3dA_Gj" id="50smQ1VdUxR" role="3vQZUl">
        <node concept="9aQIb" id="50smQ1VdUxX" role="3vcmbn">
          <node concept="3clFbS" id="50smQ1VdUy3" role="9aQI4">
            <node concept="3cpWs8" id="50smQ1VdUKD" role="3cqZAp">
              <node concept="3cpWsn" id="50smQ1VdUKE" role="3cpWs9">
                <property role="TrG5h" value="intervals" />
                <node concept="_YKpA" id="50smQ1VdUKr" role="1tU5fm">
                  <node concept="3uibUv" id="6GCJsuCLhe_" role="_ZDj9">
                    <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                  </node>
                </node>
                <node concept="2OqwBi" id="50smQ1VdUKF" role="33vP2m">
                  <node concept="1eOMI4" id="50smQ1VdUKG" role="2Oq$k0">
                    <node concept="10QFUN" id="50smQ1VdUKH" role="1eOMHV">
                      <node concept="3EllGN" id="50smQ1VdUKI" role="10QFUP">
                        <node concept="2OqwBi" id="50smQ1VdUKJ" role="3ElVtu">
                          <node concept="oxGPV" id="50smQ1VdUKK" role="2Oq$k0" />
                          <node concept="2qgKlT" id="50smQ1VdUKL" role="2OqNvi">
                            <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                          </node>
                        </node>
                        <node concept="TvHiN" id="50smQ1VdUKM" role="3ElQJh" />
                      </node>
                      <node concept="3uibUv" id="50smQ1VdUKN" role="10QFUM">
                        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="50smQ1VdUKO" role="2OqNvi">
                    <ref role="37wK5l" node="50smQ1VdGyd" resolve="intervals" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="50smQ1VdXYl" role="3cqZAp">
              <node concept="2OqwBi" id="50smQ1VdXYn" role="3cqZAk">
                <node concept="2YIFZM" id="50smQ1VdXYo" role="2Oq$k0">
                  <ref role="37wK5l" to="j10v:~Empty.vector():org.pcollections.PVector" resolve="vector" />
                  <ref role="1Pybhc" to="j10v:~Empty" resolve="Empty" />
                </node>
                <node concept="liA8E" id="50smQ1VdXYp" role="2OqNvi">
                  <ref role="37wK5l" to="j10v:~PVector.plusAll(java.util.Collection):org.pcollections.PVector" resolve="plusAll" />
                  <node concept="37vLTw" id="50smQ1VdXYq" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1VdUKE" resolve="intervals" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="50smQ1Vcz1m" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:50smQ1VcyB_" resolve="NumerOfSlices" />
      <node concept="3vetai" id="50smQ1Vcz7r" role="3vQZUl">
        <node concept="2ShNRf" id="50smQ1Vd_ij" role="3vdyny">
          <node concept="1pGfFk" id="50smQ1Vd_ur" role="2ShVmc">
            <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
            <node concept="3cpWs3" id="50smQ1VdAag" role="37wK5m">
              <node concept="Xl_RD" id="50smQ1VdAaj" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="50smQ1VcIxo" role="3uHU7w">
                <node concept="1eOMI4" id="50smQ1VcI3K" role="2Oq$k0">
                  <node concept="10QFUN" id="50smQ1VcHHg" role="1eOMHV">
                    <node concept="3EllGN" id="50smQ1VcHHb" role="10QFUP">
                      <node concept="2OqwBi" id="50smQ1VcHHc" role="3ElVtu">
                        <node concept="oxGPV" id="50smQ1VcHHd" role="2Oq$k0" />
                        <node concept="2qgKlT" id="50smQ1VcHHe" role="2OqNvi">
                          <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
                        </node>
                      </node>
                      <node concept="TvHiN" id="50smQ1VcHHf" role="3ElQJh" />
                    </node>
                    <node concept="3uibUv" id="50smQ1VcHTP" role="10QFUM">
                      <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="50smQ1VcQWV" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VcK3N" resolve="numberOfSlices" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="50smQ1V9O9D" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="l462:50smQ1V8QEe" resolve="TemporalLiteral" />
      <node concept="3dA_Gj" id="50smQ1V9Ofh" role="3vQZUl">
        <node concept="9aQIb" id="50smQ1V9Ofj" role="3vcmbn">
          <node concept="3clFbS" id="50smQ1V9Ofl" role="9aQI4">
            <node concept="3cpWs8" id="50smQ1V9ZTT" role="3cqZAp">
              <node concept="3cpWsn" id="50smQ1V9ZTU" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="3uibUv" id="50smQ1V9ZTS" role="1tU5fm">
                  <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                </node>
                <node concept="2ShNRf" id="50smQ1V9ZTV" role="33vP2m">
                  <node concept="1pGfFk" id="50smQ1V9ZTW" role="2ShVmc">
                    <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="50smQ1Va03H" role="3cqZAp">
              <node concept="2GrKxI" id="50smQ1Va03J" role="2Gsz3X">
                <property role="TrG5h" value="s" />
              </node>
              <node concept="2OqwBi" id="50smQ1Va0gU" role="2GsD0m">
                <node concept="oxGPV" id="50smQ1Va04h" role="2Oq$k0" />
                <node concept="3Tsc0h" id="50smQ1Va0$L" role="2OqNvi">
                  <ref role="3TtcxE" to="l462:50smQ1V8QF$" resolve="slices" />
                </node>
              </node>
              <node concept="3clFbS" id="50smQ1Va03N" role="2LFqv$">
                <node concept="3clFbF" id="50smQ1Va5eU" role="3cqZAp">
                  <node concept="37vLTI" id="50smQ1Va5kn" role="3clFbG">
                    <node concept="2OqwBi" id="50smQ1Va5qa" role="37vLTx">
                      <node concept="37vLTw" id="50smQ1Va5kC" role="2Oq$k0">
                        <ref role="3cqZAo" node="50smQ1V9ZTU" resolve="value" />
                      </node>
                      <node concept="liA8E" id="50smQ1Va5yk" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1V9Ut6" resolve="slice" />
                        <node concept="10QFUN" id="50smQ1Va7yS" role="37wK5m">
                          <node concept="qpA2v" id="50smQ1Va7yO" role="10QFUP">
                            <node concept="2OqwBi" id="50smQ1Va7yP" role="3SLO0q">
                              <node concept="2GrUjf" id="50smQ1Va7yQ" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="50smQ1Va03J" resolve="s" />
                              </node>
                              <node concept="3TrEf2" id="50smQ1Va7yR" role="2OqNvi">
                                <ref role="3Tt5mk" to="l462:50smQ1V8QEi" resolve="pointInTime" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="6GCJsuCLh5X" role="10QFUM">
                            <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                          </node>
                        </node>
                        <node concept="qpA2v" id="50smQ1Va6ki" role="37wK5m">
                          <node concept="2OqwBi" id="50smQ1Va6tu" role="3SLO0q">
                            <node concept="2GrUjf" id="50smQ1Va6lW" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="50smQ1Va03J" resolve="s" />
                            </node>
                            <node concept="3TrEf2" id="50smQ1Va6YV" role="2OqNvi">
                              <ref role="3Tt5mk" to="l462:50smQ1V8QEk" resolve="value" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="50smQ1Va5eT" role="37vLTJ">
                      <ref role="3cqZAo" node="50smQ1V9ZTU" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="50smQ1V9ZXo" role="3cqZAp">
              <node concept="37vLTw" id="50smQ1V9ZXq" role="3cqZAk">
                <ref role="3cqZAo" node="50smQ1V9ZTU" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="4voqclTCl$P" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="hm2y:4rZeNQ6MGoV" resolve="DivExpression" />
      <node concept="3dA_Gj" id="4voqclTCnE9" role="3vQZUl">
        <node concept="9aQIb" id="4voqclTCnEa" role="3vcmbn">
          <node concept="3clFbS" id="4voqclTCnEb" role="9aQI4">
            <node concept="SfApY" id="4voqclTCnEc" role="3cqZAp">
              <node concept="3clFbS" id="4voqclTCnEd" role="SfCbr">
                <node concept="3cpWs6" id="4voqclTCnEe" role="3cqZAp">
                  <node concept="2YIFZM" id="4voqclTCnEf" role="3cqZAk">
                    <ref role="1Pybhc" node="3nGzaxUs53y" resolve="TemporalArithmeticsHelper" />
                    <ref role="37wK5l" node="3nGzaxUtfR9" resolve="doWithTwoTemporalIntegers" />
                    <node concept="2OqwBi" id="4voqclTCnEg" role="37wK5m">
                      <node concept="oxGPV" id="4voqclTCnEh" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4voqclTCnEi" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4voqclTCnEj" role="37wK5m">
                      <node concept="oxGPV" id="4voqclTCnEk" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4voqclTCnEl" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="4voqclTCnEm" role="37wK5m">
                      <node concept="37vLTG" id="4voqclTCnEn" role="1bW2Oz">
                        <property role="TrG5h" value="l" />
                        <node concept="3uibUv" id="4voqclTCnEo" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4voqclTCnEp" role="1bW2Oz">
                        <property role="TrG5h" value="r" />
                        <node concept="3uibUv" id="4voqclTCnEq" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4voqclTCnEr" role="1bW5cS">
                        <node concept="3clFbF" id="4voqclTCnEs" role="3cqZAp">
                          <node concept="2OqwBi" id="4voqclTCnEt" role="3clFbG">
                            <node concept="37vLTw" id="4voqclTCnEu" role="2Oq$k0">
                              <ref role="3cqZAo" node="4voqclTCnEn" resolve="l" />
                            </node>
                            <node concept="liA8E" id="4voqclTCnEv" role="2OqNvi">
                              <ref role="37wK5l" to="xlxw:~BigInteger.divide(java.math.BigInteger):java.math.BigInteger" resolve="divide" />
                              <node concept="37vLTw" id="4voqclTCnEw" role="37wK5m">
                                <ref role="3cqZAo" node="4voqclTCnEp" resolve="r" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="oxNuS" id="4voqclTCnEx" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="4voqclTCnEy" role="TEbGg">
                <node concept="3cpWsn" id="4voqclTCnEz" role="TDEfY">
                  <property role="TrG5h" value="ex1" />
                  <node concept="3uibUv" id="4voqclTCnE$" role="1tU5fm">
                    <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                  </node>
                </node>
                <node concept="3clFbS" id="4voqclTCnE_" role="TDEfX">
                  <node concept="SfApY" id="4eVSC65wZ25" role="3cqZAp">
                    <node concept="3clFbS" id="4eVSC65wZ26" role="SfCbr">
                      <node concept="3cpWs6" id="4eVSC65wZ27" role="3cqZAp">
                        <node concept="2YIFZM" id="4eVSC65wZ28" role="3cqZAk">
                          <ref role="37wK5l" node="4eVSC65wKHU" resolve="doWithOneTemporalIntegers" />
                          <ref role="1Pybhc" node="3nGzaxUs53y" resolve="TemporalArithmeticsHelper" />
                          <node concept="2OqwBi" id="4eVSC65wZ29" role="37wK5m">
                            <node concept="oxGPV" id="4eVSC65wZ2a" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4eVSC65wZ2b" role="2OqNvi">
                              <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4eVSC65wZ2c" role="37wK5m">
                            <node concept="oxGPV" id="4eVSC65wZ2d" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4eVSC65wZ2e" role="2OqNvi">
                              <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                            </node>
                          </node>
                          <node concept="1bVj0M" id="4eVSC65wZ2f" role="37wK5m">
                            <node concept="37vLTG" id="4eVSC65wZ2g" role="1bW2Oz">
                              <property role="TrG5h" value="l" />
                              <node concept="3uibUv" id="4eVSC65wZ2h" role="1tU5fm">
                                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="4eVSC65wZ2i" role="1bW2Oz">
                              <property role="TrG5h" value="r" />
                              <node concept="3uibUv" id="4eVSC65wZ2j" role="1tU5fm">
                                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="4eVSC65wZ2k" role="1bW5cS">
                              <node concept="3clFbF" id="4eVSC65wZ2l" role="3cqZAp">
                                <node concept="2OqwBi" id="4eVSC65wZ2m" role="3clFbG">
                                  <node concept="37vLTw" id="4eVSC65wZ2n" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4eVSC65wZ2g" resolve="l" />
                                  </node>
                                  <node concept="liA8E" id="4eVSC65wZ2o" role="2OqNvi">
                                    <ref role="37wK5l" to="xlxw:~BigInteger.divide(java.math.BigInteger):java.math.BigInteger" resolve="divide" />
                                    <node concept="37vLTw" id="4eVSC65wZ2p" role="37wK5m">
                                      <ref role="3cqZAo" node="4eVSC65wZ2i" resolve="r" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="oxNuS" id="4eVSC65wZ2q" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="TDmWw" id="4eVSC65wZ2r" role="TEbGg">
                      <node concept="3cpWsn" id="4eVSC65wZ2s" role="TDEfY">
                        <property role="TrG5h" value="ex2" />
                        <node concept="3uibUv" id="4eVSC65wZ2t" role="1tU5fm">
                          <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4eVSC65wZ2u" role="TDEfX">
                        <node concept="3cpWs6" id="4eVSC65wZ2v" role="3cqZAp">
                          <node concept="2gcYsJ" id="4eVSC65wZ2w" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="4voqclTCdw4" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="hm2y:4rZeNQ6MqlJ" resolve="MulExpression" />
      <node concept="3dA_Gj" id="4voqclTCftT" role="3vQZUl">
        <node concept="9aQIb" id="4voqclTCftU" role="3vcmbn">
          <node concept="3clFbS" id="4voqclTCftV" role="9aQI4">
            <node concept="SfApY" id="4voqclTCftW" role="3cqZAp">
              <node concept="3clFbS" id="4voqclTCftX" role="SfCbr">
                <node concept="3cpWs6" id="4voqclTCftY" role="3cqZAp">
                  <node concept="2YIFZM" id="4voqclTCftZ" role="3cqZAk">
                    <ref role="1Pybhc" node="3nGzaxUs53y" resolve="TemporalArithmeticsHelper" />
                    <ref role="37wK5l" node="3nGzaxUtfR9" resolve="doWithTwoTemporalIntegers" />
                    <node concept="2OqwBi" id="4voqclTCfu0" role="37wK5m">
                      <node concept="oxGPV" id="4voqclTCfu1" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4voqclTCfu2" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4voqclTCfu3" role="37wK5m">
                      <node concept="oxGPV" id="4voqclTCfu4" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4voqclTCfu5" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="4voqclTCfu6" role="37wK5m">
                      <node concept="37vLTG" id="4voqclTCfu7" role="1bW2Oz">
                        <property role="TrG5h" value="l" />
                        <node concept="3uibUv" id="4voqclTCfu8" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4voqclTCfu9" role="1bW2Oz">
                        <property role="TrG5h" value="r" />
                        <node concept="3uibUv" id="4voqclTCfua" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4voqclTCfub" role="1bW5cS">
                        <node concept="3clFbF" id="4voqclTCfuc" role="3cqZAp">
                          <node concept="2OqwBi" id="4voqclTCfud" role="3clFbG">
                            <node concept="37vLTw" id="4voqclTCfue" role="2Oq$k0">
                              <ref role="3cqZAo" node="4voqclTCfu7" resolve="l" />
                            </node>
                            <node concept="liA8E" id="4voqclTCfuf" role="2OqNvi">
                              <ref role="37wK5l" to="xlxw:~BigInteger.multiply(java.math.BigInteger):java.math.BigInteger" resolve="multiply" />
                              <node concept="37vLTw" id="4voqclTCfug" role="37wK5m">
                                <ref role="3cqZAo" node="4voqclTCfu9" resolve="r" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="oxNuS" id="4voqclTCfuh" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="4voqclTCfui" role="TEbGg">
                <node concept="3cpWsn" id="4voqclTCfuj" role="TDEfY">
                  <property role="TrG5h" value="ex1" />
                  <node concept="3uibUv" id="4voqclTCfuk" role="1tU5fm">
                    <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                  </node>
                </node>
                <node concept="3clFbS" id="4voqclTCful" role="TDEfX">
                  <node concept="SfApY" id="4eVSC65wYlc" role="3cqZAp">
                    <node concept="3clFbS" id="4eVSC65wYld" role="SfCbr">
                      <node concept="3cpWs6" id="4eVSC65wYle" role="3cqZAp">
                        <node concept="2YIFZM" id="4eVSC65wYxC" role="3cqZAk">
                          <ref role="37wK5l" node="4eVSC65wKHU" resolve="doWithOneTemporalIntegers" />
                          <ref role="1Pybhc" node="3nGzaxUs53y" resolve="TemporalArithmeticsHelper" />
                          <node concept="2OqwBi" id="4eVSC65wYxD" role="37wK5m">
                            <node concept="oxGPV" id="4eVSC65wYxE" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4eVSC65wYxF" role="2OqNvi">
                              <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4eVSC65wYxG" role="37wK5m">
                            <node concept="oxGPV" id="4eVSC65wYxH" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4eVSC65wYxI" role="2OqNvi">
                              <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                            </node>
                          </node>
                          <node concept="1bVj0M" id="4eVSC65wYxJ" role="37wK5m">
                            <node concept="37vLTG" id="4eVSC65wYxK" role="1bW2Oz">
                              <property role="TrG5h" value="l" />
                              <node concept="3uibUv" id="4eVSC65wYxL" role="1tU5fm">
                                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="4eVSC65wYxM" role="1bW2Oz">
                              <property role="TrG5h" value="r" />
                              <node concept="3uibUv" id="4eVSC65wYxN" role="1tU5fm">
                                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="4eVSC65wYxO" role="1bW5cS">
                              <node concept="3clFbF" id="4eVSC65wYxP" role="3cqZAp">
                                <node concept="2OqwBi" id="4eVSC65wYxQ" role="3clFbG">
                                  <node concept="37vLTw" id="4eVSC65wYxR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4eVSC65wYxK" resolve="l" />
                                  </node>
                                  <node concept="liA8E" id="4eVSC65wYxS" role="2OqNvi">
                                    <ref role="37wK5l" to="xlxw:~BigInteger.multiply(java.math.BigInteger):java.math.BigInteger" resolve="multiply" />
                                    <node concept="37vLTw" id="4eVSC65wYxT" role="37wK5m">
                                      <ref role="3cqZAo" node="4eVSC65wYxM" resolve="r" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="oxNuS" id="4eVSC65wYxU" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="TDmWw" id="4eVSC65wYly" role="TEbGg">
                      <node concept="3cpWsn" id="4eVSC65wYlz" role="TDEfY">
                        <property role="TrG5h" value="ex2" />
                        <node concept="3uibUv" id="4eVSC65wYl$" role="1tU5fm">
                          <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4eVSC65wYl_" role="TDEfX">
                        <node concept="3cpWs6" id="4eVSC65wYlB" role="3cqZAp">
                          <node concept="2gcYsJ" id="4eVSC65wYlC" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="3nGzaxUs30Q" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="hm2y:4rZeNQ6MGm_" resolve="MinusExpression" />
      <node concept="3dA_Gj" id="3nGzaxUtlZS" role="3vQZUl">
        <node concept="9aQIb" id="3nGzaxUtlZT" role="3vcmbn">
          <node concept="3clFbS" id="3nGzaxUtlZU" role="9aQI4">
            <node concept="SfApY" id="3nGzaxUtlZV" role="3cqZAp">
              <node concept="3clFbS" id="3nGzaxUtlZW" role="SfCbr">
                <node concept="3cpWs6" id="3nGzaxUtlZX" role="3cqZAp">
                  <node concept="2YIFZM" id="3nGzaxUtlZY" role="3cqZAk">
                    <ref role="37wK5l" node="3nGzaxUtfR9" resolve="doWithTwoTemporalIntegers" />
                    <ref role="1Pybhc" node="3nGzaxUs53y" resolve="TemporalArithmeticsHelper" />
                    <node concept="2OqwBi" id="3nGzaxUtlZZ" role="37wK5m">
                      <node concept="oxGPV" id="3nGzaxUtm00" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3nGzaxUtm01" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3nGzaxUtm02" role="37wK5m">
                      <node concept="oxGPV" id="3nGzaxUtm03" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3nGzaxUtm04" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="3nGzaxUtm05" role="37wK5m">
                      <node concept="37vLTG" id="3nGzaxUtm06" role="1bW2Oz">
                        <property role="TrG5h" value="l" />
                        <node concept="3uibUv" id="3nGzaxUtm07" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3nGzaxUtm08" role="1bW2Oz">
                        <property role="TrG5h" value="r" />
                        <node concept="3uibUv" id="3nGzaxUtm09" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3nGzaxUtm0a" role="1bW5cS">
                        <node concept="3clFbF" id="3nGzaxUtm0b" role="3cqZAp">
                          <node concept="2OqwBi" id="3nGzaxUtm0c" role="3clFbG">
                            <node concept="37vLTw" id="3nGzaxUtm0d" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUtm06" resolve="l" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUtm0e" role="2OqNvi">
                              <ref role="37wK5l" to="xlxw:~BigInteger.subtract(java.math.BigInteger):java.math.BigInteger" resolve="subtract" />
                              <node concept="37vLTw" id="3nGzaxUtm0f" role="37wK5m">
                                <ref role="3cqZAo" node="3nGzaxUtm08" resolve="r" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="oxNuS" id="3nGzaxUtm0g" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="3nGzaxUtm0h" role="TEbGg">
                <node concept="3cpWsn" id="3nGzaxUtm0i" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="3nGzaxUtm0j" role="1tU5fm">
                    <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                  </node>
                </node>
                <node concept="3clFbS" id="3nGzaxUtm0k" role="TDEfX">
                  <node concept="3cpWs6" id="3nGzaxUtm0l" role="3cqZAp">
                    <node concept="2gcYsJ" id="3nGzaxUtm0m" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="qq9P1" id="uGVYUik083" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="hm2y:4rZeNQ6MqjM" resolve="PlusExpression" />
      <node concept="3dA_Gj" id="50smQ1VlnFB" role="3vQZUl">
        <node concept="9aQIb" id="50smQ1VlnFE" role="3vcmbn">
          <node concept="3clFbS" id="50smQ1VlnFH" role="9aQI4">
            <node concept="SfApY" id="3nGzaxUtcdL" role="3cqZAp">
              <node concept="3clFbS" id="3nGzaxUtcdN" role="SfCbr">
                <node concept="3cpWs6" id="3nGzaxUtfLC" role="3cqZAp">
                  <node concept="2YIFZM" id="3nGzaxUthJP" role="3cqZAk">
                    <ref role="37wK5l" node="3nGzaxUtfR9" resolve="doWithTwoTemporalIntegers" />
                    <ref role="1Pybhc" node="3nGzaxUs53y" resolve="TemporalArithmeticsHelper" />
                    <node concept="2OqwBi" id="3nGzaxUthXr" role="37wK5m">
                      <node concept="oxGPV" id="3nGzaxUthK8" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3nGzaxUtiJk" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3nGzaxUtj2u" role="37wK5m">
                      <node concept="oxGPV" id="3nGzaxUtiNV" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3nGzaxUtjvR" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="3nGzaxUtjDe" role="37wK5m">
                      <node concept="37vLTG" id="3nGzaxUtjL_" role="1bW2Oz">
                        <property role="TrG5h" value="l" />
                        <node concept="3uibUv" id="3nGzaxUtk8a" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3nGzaxUtkkg" role="1bW2Oz">
                        <property role="TrG5h" value="r" />
                        <node concept="3uibUv" id="3nGzaxUtkkh" role="1tU5fm">
                          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3nGzaxUtjDg" role="1bW5cS">
                        <node concept="3clFbF" id="3nGzaxUtkAT" role="3cqZAp">
                          <node concept="2OqwBi" id="3nGzaxUtkUj" role="3clFbG">
                            <node concept="37vLTw" id="3nGzaxUtkAS" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUtjL_" resolve="l" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUtlob" role="2OqNvi">
                              <ref role="37wK5l" to="xlxw:~BigInteger.add(java.math.BigInteger):java.math.BigInteger" resolve="add" />
                              <node concept="37vLTw" id="3nGzaxUtlu_" role="37wK5m">
                                <ref role="3cqZAo" node="3nGzaxUtkkg" resolve="r" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="oxNuS" id="3nGzaxUtlFC" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="3nGzaxUtcdO" role="TEbGg">
                <node concept="3cpWsn" id="3nGzaxUtcdQ" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="3nGzaxUtdlA" role="1tU5fm">
                    <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                  </node>
                </node>
                <node concept="3clFbS" id="3nGzaxUtcdU" role="TDEfX">
                  <node concept="3cpWs6" id="3nGzaxUr_$W" role="3cqZAp">
                    <node concept="2gcYsJ" id="3nGzaxUrAw4" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1J7WVO" id="3nGzaxUqYQi" role="1J4apk">
      <ref role="1J7WVQ" to="oq0c:uGVYUiiVGW" resolve="ExprBaseInterpeter" />
    </node>
    <node concept="1J7WVO" id="3nGzaxUr3fU" role="1J4apk">
      <ref role="1J7WVQ" to="9mim:uGVYUiiVGW" resolve="ExprSimpleTypesInterpeter" />
    </node>
  </node>
  <node concept="312cEu" id="50smQ1V9Ofy">
    <property role="TrG5h" value="TemporalValue" />
    <node concept="2tJIrI" id="50smQ1V9OfN" role="jymVt" />
    <node concept="312cEg" id="50smQ1V9OxE" role="jymVt">
      <property role="TrG5h" value="slices" />
      <node concept="3Tm6S6" id="50smQ1V9OxF" role="1B3o_S" />
      <node concept="_YKpA" id="50smQ1VbbyW" role="1tU5fm">
        <node concept="3uibUv" id="50smQ1VbewX" role="_ZDj9">
          <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
        </node>
      </node>
      <node concept="2ShNRf" id="50smQ1V9OT5" role="33vP2m">
        <node concept="Tc6Ow" id="50smQ1VbjK$" role="2ShVmc">
          <node concept="3uibUv" id="50smQ1Vbm$1" role="HW$YZ">
            <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1V9OtX" role="jymVt" />
    <node concept="3clFbW" id="50smQ1V9OlU" role="jymVt">
      <node concept="3cqZAl" id="50smQ1V9OlW" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1V9OlX" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1V9OlY" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3nGzaxUw1ok" role="jymVt" />
    <node concept="3clFbW" id="50smQ1V9Zxf" role="jymVt">
      <node concept="3cqZAl" id="50smQ1V9Zxg" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1V9Zxh" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1V9Zxi" role="3clF47">
        <node concept="3clFbF" id="50smQ1Vbo30" role="3cqZAp">
          <node concept="2OqwBi" id="50smQ1VboSM" role="3clFbG">
            <node concept="37vLTw" id="50smQ1Vbo2Y" role="2Oq$k0">
              <ref role="3cqZAo" node="50smQ1V9OxE" resolve="slices" />
            </node>
            <node concept="TSZUe" id="50smQ1VbpUL" role="2OqNvi">
              <node concept="2ShNRf" id="50smQ1Vbq26" role="25WWJ7">
                <node concept="1pGfFk" id="50smQ1Vbqnm" role="2ShVmc">
                  <ref role="37wK5l" node="50smQ1VbaTB" resolve="SliceValue" />
                  <node concept="Xjq3P" id="6nEpT4GTMK9" role="37wK5m" />
                  <node concept="10M0yZ" id="6GCJsuCKikR" role="37wK5m">
                    <ref role="3cqZAo" to="28m1:~LocalDate.MIN" resolve="MIN" />
                    <ref role="1PxDUh" to="28m1:~LocalDate" resolve="LocalDate" />
                  </node>
                  <node concept="37vLTw" id="50smQ1VbwS0" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1V9Zxr" resolve="constantValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1V9Zxr" role="3clF46">
        <property role="TrG5h" value="constantValue" />
        <node concept="3uibUv" id="50smQ1V9Zxs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1V9U0q" role="jymVt" />
    <node concept="3clFbW" id="50smQ1V9TVb" role="jymVt">
      <node concept="3cqZAl" id="50smQ1V9TVc" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1V9TVd" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1V9TVe" role="3clF47">
        <node concept="3clFbF" id="50smQ1Vbxfi" role="3cqZAp">
          <node concept="2OqwBi" id="50smQ1Vbxfj" role="3clFbG">
            <node concept="37vLTw" id="50smQ1Vbxfk" role="2Oq$k0">
              <ref role="3cqZAo" node="50smQ1V9OxE" resolve="slices" />
            </node>
            <node concept="TSZUe" id="50smQ1Vbxfl" role="2OqNvi">
              <node concept="2ShNRf" id="50smQ1Vbxfm" role="25WWJ7">
                <node concept="1pGfFk" id="50smQ1Vbxfn" role="2ShVmc">
                  <ref role="37wK5l" node="50smQ1VbaTB" resolve="SliceValue" />
                  <node concept="Xjq3P" id="6nEpT4GTMYT" role="37wK5m" />
                  <node concept="37vLTw" id="50smQ1Vby0$" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1V9U5a" resolve="time" />
                  </node>
                  <node concept="37vLTw" id="50smQ1Vbxfp" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1V9TVn" resolve="constantValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1V9U5a" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKgJs" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1V9TVn" role="3clF46">
        <property role="TrG5h" value="constantValue" />
        <node concept="3uibUv" id="50smQ1V9TVo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1V9Vue" role="jymVt" />
    <node concept="2tJIrI" id="3nGzaxUwn2C" role="jymVt" />
    <node concept="3clFb_" id="3nGzaxUwq$o" role="jymVt">
      <property role="TrG5h" value="copy" />
      <node concept="3uibUv" id="3nGzaxUwtTr" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3Tm1VV" id="3nGzaxUwq$r" role="1B3o_S" />
      <node concept="3clFbS" id="3nGzaxUwq$s" role="3clF47">
        <node concept="3cpWs8" id="3nGzaxUwvPG" role="3cqZAp">
          <node concept="3cpWsn" id="3nGzaxUwvPH" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="3nGzaxUwvPE" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="2ShNRf" id="3nGzaxUwvPI" role="33vP2m">
              <node concept="1pGfFk" id="3nGzaxUwvPJ" role="2ShVmc">
                <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nGzaxUyFoS" role="3cqZAp">
          <node concept="2OqwBi" id="3nGzaxUyGPA" role="3clFbG">
            <node concept="2OqwBi" id="3nGzaxUyFBs" role="2Oq$k0">
              <node concept="37vLTw" id="3nGzaxUyFoQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3nGzaxUwvPH" resolve="res" />
              </node>
              <node concept="2OwXpG" id="3nGzaxUyG0A" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
              </node>
            </node>
            <node concept="X8dFx" id="3nGzaxUyHVF" role="2OqNvi">
              <node concept="2OqwBi" id="3nGzaxUyJYk" role="25WWJ7">
                <node concept="2OqwBi" id="3nGzaxUyIuF" role="2Oq$k0">
                  <node concept="Xjq3P" id="3nGzaxUyHYN" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3nGzaxUyIUr" role="2OqNvi">
                    <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                  </node>
                </node>
                <node concept="3$u5V9" id="3nGzaxUyLZK" role="2OqNvi">
                  <node concept="1bVj0M" id="3nGzaxUyLZM" role="23t8la">
                    <node concept="3clFbS" id="3nGzaxUyLZN" role="1bW5cS">
                      <node concept="3clFbF" id="3nGzaxUyMq2" role="3cqZAp">
                        <node concept="2OqwBi" id="3nGzaxUyMF4" role="3clFbG">
                          <node concept="37vLTw" id="3nGzaxUyMq1" role="2Oq$k0">
                            <ref role="3cqZAo" node="3nGzaxUyLZO" resolve="it" />
                          </node>
                          <node concept="liA8E" id="3nGzaxUyNgv" role="2OqNvi">
                            <ref role="37wK5l" node="3nGzaxUy$Sl" resolve="copy" />
                            <node concept="37vLTw" id="6nEpT4GTPm0" role="37wK5m">
                              <ref role="3cqZAo" node="3nGzaxUwvPH" resolve="res" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3nGzaxUyLZO" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3nGzaxUyLZP" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nGzaxUwvyS" role="3cqZAp">
          <node concept="37vLTw" id="3nGzaxUwvPK" role="3clFbG">
            <ref role="3cqZAo" node="3nGzaxUwvPH" resolve="res" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3nGzaxUwElT" role="jymVt" />
    <node concept="2tJIrI" id="50smQ1V9OfS" role="jymVt" />
    <node concept="3clFb_" id="50smQ1V9Ut6" role="jymVt">
      <property role="TrG5h" value="slice" />
      <node concept="3uibUv" id="50smQ1V9V6d" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3Tm1VV" id="50smQ1V9Ut9" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1V9Uta" role="3clF47">
        <node concept="3cpWs8" id="50smQ1V9XOU" role="3cqZAp">
          <node concept="3cpWsn" id="50smQ1V9XOV" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="50smQ1V9XOL" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="2OqwBi" id="3nGzaxUy5sU" role="33vP2m">
              <node concept="Xjq3P" id="3nGzaxUy58X" role="2Oq$k0" />
              <node concept="liA8E" id="3nGzaxUy5Nl" role="2OqNvi">
                <ref role="37wK5l" node="3nGzaxUwq$o" resolve="copy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50smQ1VbAvf" role="3cqZAp">
          <node concept="2OqwBi" id="50smQ1VbBLy" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1VbANR" role="2Oq$k0">
              <node concept="37vLTw" id="50smQ1VbAvd" role="2Oq$k0">
                <ref role="3cqZAo" node="50smQ1V9XOV" resolve="res" />
              </node>
              <node concept="2OwXpG" id="50smQ1VbAWy" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
              </node>
            </node>
            <node concept="TSZUe" id="50smQ1VbCOr" role="2OqNvi">
              <node concept="2ShNRf" id="50smQ1VbCRH" role="25WWJ7">
                <node concept="1pGfFk" id="50smQ1VbDd6" role="2ShVmc">
                  <ref role="37wK5l" node="50smQ1VbaTB" resolve="SliceValue" />
                  <node concept="37vLTw" id="6nEpT4GTNeS" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1V9XOV" resolve="res" />
                  </node>
                  <node concept="37vLTw" id="50smQ1VbDkY" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1V9UO2" resolve="time" />
                  </node>
                  <node concept="37vLTw" id="50smQ1VbEFl" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1V9USj" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50smQ1VfjCa" role="3cqZAp">
          <node concept="37vLTI" id="50smQ1VflKd" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1Vfpb6" role="37vLTJ">
              <node concept="37vLTw" id="50smQ1VflKS" role="2Oq$k0">
                <ref role="3cqZAo" node="50smQ1V9XOV" resolve="res" />
              </node>
              <node concept="2OwXpG" id="50smQ1VfpvE" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
              </node>
            </node>
            <node concept="2OqwBi" id="50smQ1VfnpE" role="37vLTx">
              <node concept="2OqwBi" id="50smQ1Vfa8d" role="2Oq$k0">
                <node concept="2OqwBi" id="50smQ1Vf97l" role="2Oq$k0">
                  <node concept="37vLTw" id="50smQ1Vf8Mc" role="2Oq$k0">
                    <ref role="3cqZAo" node="50smQ1V9XOV" resolve="res" />
                  </node>
                  <node concept="2OwXpG" id="50smQ1Vf9fH" role="2OqNvi">
                    <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                  </node>
                </node>
                <node concept="2S7cBI" id="50smQ1Vfbbd" role="2OqNvi">
                  <node concept="1bVj0M" id="50smQ1Vfbbf" role="23t8la">
                    <node concept="3clFbS" id="50smQ1Vfbbg" role="1bW5cS">
                      <node concept="3clFbF" id="50smQ1Vfbjz" role="3cqZAp">
                        <node concept="2OqwBi" id="50smQ1Vfb$M" role="3clFbG">
                          <node concept="37vLTw" id="50smQ1Vfbjy" role="2Oq$k0">
                            <ref role="3cqZAo" node="50smQ1Vfbbh" resolve="it" />
                          </node>
                          <node concept="liA8E" id="50smQ1VfbSt" role="2OqNvi">
                            <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="50smQ1Vfbbh" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="50smQ1Vfbbi" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1nlBCl" id="50smQ1Vfbbj" role="2S7zOq">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="50smQ1VfoK3" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50smQ1V9Vdu" role="3cqZAp">
          <node concept="37vLTw" id="50smQ1V9XP1" role="3clFbG">
            <ref role="3cqZAo" node="50smQ1V9XOV" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1V9UO2" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKgtI" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1V9USj" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="50smQ1V9V2p" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3nGzaxUxLz7" role="jymVt" />
    <node concept="3clFb_" id="3nGzaxUxJqb" role="jymVt">
      <property role="TrG5h" value="slice" />
      <node concept="3uibUv" id="3nGzaxUxJqc" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3Tm1VV" id="3nGzaxUxJqd" role="1B3o_S" />
      <node concept="3clFbS" id="3nGzaxUxJqe" role="3clF47">
        <node concept="3clFbF" id="3nGzaxUyvmN" role="3cqZAp">
          <node concept="2OqwBi" id="3nGzaxUyvHN" role="3clFbG">
            <node concept="Xjq3P" id="3nGzaxUyvmK" role="2Oq$k0" />
            <node concept="liA8E" id="3nGzaxUyw1K" role="2OqNvi">
              <ref role="37wK5l" node="50smQ1V9Ut6" resolve="slice" />
              <node concept="2OqwBi" id="3nGzaxUywdx" role="37wK5m">
                <node concept="37vLTw" id="3nGzaxUyw52" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nGzaxUxOQg" resolve="slice" />
                </node>
                <node concept="liA8E" id="3nGzaxUywvC" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                </node>
              </node>
              <node concept="2OqwBi" id="3nGzaxUywN8" role="37wK5m">
                <node concept="37vLTw" id="3nGzaxUywAl" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nGzaxUxOQg" resolve="slice" />
                </node>
                <node concept="liA8E" id="3nGzaxUyx4j" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3nGzaxUxOQg" role="3clF46">
        <property role="TrG5h" value="slice" />
        <node concept="3uibUv" id="3nGzaxUxOQf" role="1tU5fm">
          <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1Va7IK" role="jymVt" />
    <node concept="3clFb_" id="50smQ1Vatfj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="50smQ1Vatfk" role="1B3o_S" />
      <node concept="10P_77" id="50smQ1Vatfm" role="3clF45" />
      <node concept="37vLTG" id="50smQ1Vatfn" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="50smQ1Vatfo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="50smQ1Vatfp" role="3clF47">
        <node concept="3clFbJ" id="50smQ1VatNS" role="3cqZAp">
          <node concept="3clFbS" id="50smQ1VatNU" role="3clFbx">
            <node concept="3cpWs6" id="50smQ1Vaupi" role="3cqZAp">
              <node concept="3clFbT" id="50smQ1Vavsr" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="50smQ1VaxF_" role="3clFbw">
            <node concept="10Nm6u" id="50smQ1Vay8g" role="3uHU7w" />
            <node concept="37vLTw" id="50smQ1VaxbZ" role="3uHU7B">
              <ref role="3cqZAo" node="50smQ1Vatfn" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="50smQ1VavRV" role="3cqZAp">
          <node concept="3clFbS" id="50smQ1VavRW" role="3clFbx">
            <node concept="3cpWs6" id="50smQ1VavRX" role="3cqZAp">
              <node concept="3clFbT" id="50smQ1VavRY" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="50smQ1VavRZ" role="3clFbw">
            <node concept="2ZW3vV" id="50smQ1VavS0" role="3fr31v">
              <node concept="3uibUv" id="50smQ1VavS1" role="2ZW6by">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
              <node concept="37vLTw" id="50smQ1VavS2" role="2ZW6bz">
                <ref role="3cqZAo" node="50smQ1Vatfn" resolve="object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="50smQ1Va$Hq" role="3cqZAp">
          <node concept="3cpWsn" id="50smQ1Va$Hr" role="3cpWs9">
            <property role="TrG5h" value="tv" />
            <node concept="3uibUv" id="50smQ1Va$Ho" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="10QFUN" id="50smQ1Va$Hs" role="33vP2m">
              <node concept="37vLTw" id="50smQ1Va$Ht" role="10QFUP">
                <ref role="3cqZAo" node="50smQ1Vatfn" resolve="object" />
              </node>
              <node concept="3uibUv" id="50smQ1Va$Hu" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="50smQ1Va_IM" role="3cqZAp">
          <node concept="3clFbS" id="50smQ1Va_IO" role="3clFbx">
            <node concept="3cpWs6" id="50smQ1VaJM2" role="3cqZAp">
              <node concept="3clFbT" id="50smQ1VaJMi" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="50smQ1VaFA8" role="3clFbw">
            <node concept="2OqwBi" id="50smQ1VaH$1" role="3uHU7w">
              <node concept="2OqwBi" id="50smQ1VaG1h" role="2Oq$k0">
                <node concept="Xjq3P" id="50smQ1VaFHV" role="2Oq$k0" />
                <node concept="2OwXpG" id="50smQ1VaGP4" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="50smQ1VaJDr" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="50smQ1VaAZP" role="3uHU7B">
              <node concept="2OqwBi" id="50smQ1VaAjF" role="2Oq$k0">
                <node concept="37vLTw" id="50smQ1VaAcI" role="2Oq$k0">
                  <ref role="3cqZAo" node="50smQ1Va$Hr" resolve="tv" />
                </node>
                <node concept="2OwXpG" id="50smQ1VaAto" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="50smQ1VaD5K" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="50smQ1VaV6O" role="3cqZAp">
          <node concept="2GrKxI" id="50smQ1VaV6R" role="2Gsz3X">
            <property role="TrG5h" value="s" />
          </node>
          <node concept="2OqwBi" id="50smQ1VaVH$" role="2GsD0m">
            <node concept="Xjq3P" id="50smQ1VaVAg" role="2Oq$k0" />
            <node concept="2OwXpG" id="50smQ1VaVQ0" role="2OqNvi">
              <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
            </node>
          </node>
          <node concept="3clFbS" id="50smQ1VaV6X" role="2LFqv$">
            <node concept="3cpWs8" id="50smQ1VaYez" role="3cqZAp">
              <node concept="3cpWsn" id="50smQ1VaYe$" role="3cpWs9">
                <property role="TrG5h" value="otherSlice" />
                <node concept="3uibUv" id="50smQ1Vcszp" role="1tU5fm">
                  <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
                </node>
                <node concept="2OqwBi" id="50smQ1VbJc6" role="33vP2m">
                  <node concept="2OqwBi" id="50smQ1VbI37" role="2Oq$k0">
                    <node concept="37vLTw" id="50smQ1VbHjK" role="2Oq$k0">
                      <ref role="3cqZAo" node="50smQ1Va$Hr" resolve="tv" />
                    </node>
                    <node concept="2OwXpG" id="50smQ1VbIm$" role="2OqNvi">
                      <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="50smQ1VbL57" role="2OqNvi">
                    <node concept="1bVj0M" id="50smQ1VbL59" role="23t8la">
                      <node concept="3clFbS" id="50smQ1VbL5a" role="1bW5cS">
                        <node concept="3cpWs8" id="4eVSC65roUu" role="3cqZAp">
                          <node concept="3cpWsn" id="4eVSC65roUv" role="3cpWs9">
                            <property role="TrG5h" value="t1" />
                            <node concept="3uibUv" id="6GCJsuCL6JR" role="1tU5fm">
                              <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                            </node>
                            <node concept="2OqwBi" id="4eVSC65roUw" role="33vP2m">
                              <node concept="37vLTw" id="4eVSC65roUx" role="2Oq$k0">
                                <ref role="3cqZAo" node="50smQ1VbL5b" resolve="it" />
                              </node>
                              <node concept="liA8E" id="4eVSC65roUy" role="2OqNvi">
                                <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4eVSC65rpQJ" role="3cqZAp">
                          <node concept="3cpWsn" id="4eVSC65rpQK" role="3cpWs9">
                            <property role="TrG5h" value="t2" />
                            <node concept="3uibUv" id="6GCJsuCL6ya" role="1tU5fm">
                              <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                            </node>
                            <node concept="2OqwBi" id="4eVSC65rpQL" role="33vP2m">
                              <node concept="2GrUjf" id="4eVSC65rpQM" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="50smQ1VaV6R" resolve="s" />
                              </node>
                              <node concept="liA8E" id="4eVSC65rpQN" role="2OqNvi">
                                <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6GCJsuCL78e" role="3cqZAp">
                          <node concept="2OqwBi" id="6GCJsuCL7Ff" role="3clFbG">
                            <node concept="37vLTw" id="6GCJsuCL78c" role="2Oq$k0">
                              <ref role="3cqZAo" node="4eVSC65roUv" resolve="t1" />
                            </node>
                            <node concept="liA8E" id="6GCJsuCL900" role="2OqNvi">
                              <ref role="37wK5l" to="28m1:~LocalDate.isEqual(java.time.chrono.ChronoLocalDate):boolean" resolve="isEqual" />
                              <node concept="37vLTw" id="6GCJsuCL9n7" role="37wK5m">
                                <ref role="3cqZAo" node="4eVSC65rpQK" resolve="t2" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="50smQ1VbL5b" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="50smQ1VbL5c" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="50smQ1VaYsW" role="3cqZAp">
              <node concept="3clFbS" id="50smQ1VaYsY" role="3clFbx">
                <node concept="3cpWs6" id="50smQ1VaYAs" role="3cqZAp">
                  <node concept="3clFbT" id="50smQ1VaZ7P" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="50smQ1VaYyt" role="3clFbw">
                <node concept="10Nm6u" id="50smQ1VaYyI" role="3uHU7w" />
                <node concept="37vLTw" id="50smQ1VaYtT" role="3uHU7B">
                  <ref role="3cqZAo" node="50smQ1VaYe$" resolve="otherSlice" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="50smQ1Vb0dh" role="3cqZAp">
              <node concept="3clFbS" id="50smQ1Vb0dj" role="3clFbx">
                <node concept="3cpWs6" id="50smQ1Vb5Jh" role="3cqZAp">
                  <node concept="3clFbT" id="50smQ1Vb5JR" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="50smQ1Vb4RK" role="3clFbw">
                <node concept="2OqwBi" id="50smQ1Vb4RM" role="3fr31v">
                  <node concept="2OqwBi" id="50smQ1VbN8r" role="2Oq$k0">
                    <node concept="2GrUjf" id="50smQ1VbN2q" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="50smQ1VaV6R" resolve="s" />
                    </node>
                    <node concept="liA8E" id="50smQ1Vc07i" role="2OqNvi">
                      <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                    </node>
                  </node>
                  <node concept="liA8E" id="50smQ1Vb4RQ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="50smQ1VcqYd" role="37wK5m">
                      <node concept="37vLTw" id="50smQ1Vb4RR" role="2Oq$k0">
                        <ref role="3cqZAo" node="50smQ1VaYe$" resolve="otherSlice" />
                      </node>
                      <node concept="liA8E" id="50smQ1VcsWo" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="50smQ1Vb6Qh" role="3cqZAp">
          <node concept="3clFbT" id="50smQ1Vb7nN" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="50smQ1Vatfq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1Va7S6" role="jymVt" />
    <node concept="3clFb_" id="50smQ1Va81$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="50smQ1Va81_" role="1B3o_S" />
      <node concept="3uibUv" id="50smQ1Va81B" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="50smQ1Va81C" role="3clF47">
        <node concept="3clFbF" id="50smQ1Va8vJ" role="3cqZAp">
          <node concept="3cpWs3" id="50smQ1Vai5z" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1Va8Zm" role="3uHU7w">
              <node concept="Xjq3P" id="50smQ1Va8P$" role="2Oq$k0" />
              <node concept="2OwXpG" id="50smQ1Va9fy" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
              </node>
            </node>
            <node concept="2YIFZM" id="3nGzaxUAVmB" role="3uHU7B">
              <ref role="37wK5l" to="96le:3nGzaxUAUqd" resolve="makeT" />
              <ref role="1Pybhc" to="96le:3nGzaxUAUp$" resolve="Symbols" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="50smQ1Va81D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VcJdl" role="jymVt" />
    <node concept="3clFb_" id="50smQ1VcK3N" role="jymVt">
      <property role="TrG5h" value="numberOfSlices" />
      <node concept="10Oyi0" id="50smQ1VdwQn" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1VcK3Q" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VcK3R" role="3clF47">
        <node concept="3clFbF" id="50smQ1VcNa4" role="3cqZAp">
          <node concept="2OqwBi" id="50smQ1VcOvj" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1VcNfE" role="2Oq$k0">
              <node concept="Xjq3P" id="50smQ1VcNa3" role="2Oq$k0" />
              <node concept="2OwXpG" id="50smQ1VcNAL" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
              </node>
            </node>
            <node concept="34oBXx" id="50smQ1VcQri" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VdHjM" role="jymVt" />
    <node concept="3clFb_" id="50smQ1VdGyd" role="jymVt">
      <property role="TrG5h" value="intervals" />
      <node concept="_YKpA" id="50smQ1VdNq4" role="3clF45">
        <node concept="3uibUv" id="6GCJsuCLa2I" role="_ZDj9">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="50smQ1VdGyf" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VdGyg" role="3clF47">
        <node concept="3clFbF" id="50smQ1VdOhQ" role="3cqZAp">
          <node concept="2OqwBi" id="50smQ1VdS0B" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1VdPxr" role="2Oq$k0">
              <node concept="2OqwBi" id="50smQ1VdOoL" role="2Oq$k0">
                <node concept="Xjq3P" id="50smQ1VdOhP" role="2Oq$k0" />
                <node concept="2OwXpG" id="50smQ1VdOx3" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="3$u5V9" id="50smQ1VdQ$d" role="2OqNvi">
                <node concept="1bVj0M" id="50smQ1VdQ$f" role="23t8la">
                  <node concept="3clFbS" id="50smQ1VdQ$g" role="1bW5cS">
                    <node concept="3clFbF" id="50smQ1VdQNo" role="3cqZAp">
                      <node concept="2OqwBi" id="50smQ1VdR4n" role="3clFbG">
                        <node concept="37vLTw" id="50smQ1VdQNn" role="2Oq$k0">
                          <ref role="3cqZAo" node="50smQ1VdQ$h" resolve="it" />
                        </node>
                        <node concept="liA8E" id="50smQ1VdRou" role="2OqNvi">
                          <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="50smQ1VdQ$h" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="50smQ1VdQ$i" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="50smQ1VdToA" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VeTaD" role="jymVt" />
    <node concept="3clFb_" id="50smQ1VeRHr" role="jymVt">
      <property role="TrG5h" value="valueAt" />
      <node concept="3uibUv" id="50smQ1VeUUQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="50smQ1VeRHu" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VeRHv" role="3clF47">
        <node concept="3clFbJ" id="50smQ1VgA2Z" role="3cqZAp">
          <node concept="3clFbS" id="50smQ1VgA31" role="3clFbx">
            <node concept="3cpWs6" id="50smQ1VgH41" role="3cqZAp">
              <node concept="10Nm6u" id="50smQ1VgH5c" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="50smQ1VgGb8" role="3clFbw">
            <node concept="3cmrfG" id="50smQ1VgGC2" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="50smQ1VgCqY" role="3uHU7B">
              <node concept="2OqwBi" id="50smQ1VgB8M" role="2Oq$k0">
                <node concept="Xjq3P" id="50smQ1VgB0J" role="2Oq$k0" />
                <node concept="2OwXpG" id="50smQ1VgBpY" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="50smQ1VgEnZ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="50smQ1VgIhZ" role="3cqZAp">
          <node concept="3clFbS" id="50smQ1VgIi0" role="3clFbx">
            <node concept="3clFbJ" id="50smQ1VgLt3" role="3cqZAp">
              <node concept="3clFbS" id="50smQ1VgLt5" role="3clFbx">
                <node concept="3cpWs6" id="50smQ1Vh0l_" role="3cqZAp">
                  <node concept="2OqwBi" id="50smQ1Vhvv6" role="3cqZAk">
                    <node concept="2OqwBi" id="50smQ1Vh6us" role="2Oq$k0">
                      <node concept="2OqwBi" id="50smQ1Vh2$q" role="2Oq$k0">
                        <node concept="Xjq3P" id="50smQ1Vh1oA" role="2Oq$k0" />
                        <node concept="2OwXpG" id="50smQ1Vh4mc" role="2OqNvi">
                          <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                        </node>
                      </node>
                      <node concept="1uHKPH" id="50smQ1Vh9Kk" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="50smQ1VhwXF" role="2OqNvi">
                      <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="50smQ1VgR8m" role="3clFbw">
                <node concept="2OqwBi" id="50smQ1VgO3Q" role="2Oq$k0">
                  <node concept="2OqwBi" id="50smQ1VgMTI" role="2Oq$k0">
                    <node concept="Xjq3P" id="50smQ1VgMM6" role="2Oq$k0" />
                    <node concept="2OwXpG" id="50smQ1VgN2M" role="2OqNvi">
                      <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="50smQ1VgQ0_" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="50smQ1VgRCE" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VgSG1" resolve="beginsAtOrBeforeThan" />
                  <node concept="37vLTw" id="50smQ1VgZUz" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1Vf34x" resolve="time" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="50smQ1VgIi3" role="3clFbw">
            <node concept="3cmrfG" id="50smQ1VgIi4" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="50smQ1VgIi5" role="3uHU7B">
              <node concept="2OqwBi" id="50smQ1VgIi6" role="2Oq$k0">
                <node concept="Xjq3P" id="50smQ1VgIi7" role="2Oq$k0" />
                <node concept="2OwXpG" id="50smQ1VgIi8" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="50smQ1VgIi9" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="50smQ1VhczQ" role="9aQIa">
            <node concept="3clFbS" id="50smQ1VhczR" role="9aQI4">
              <node concept="3clFbJ" id="50smQ1Vkt5F" role="3cqZAp">
                <node concept="3clFbS" id="50smQ1Vkt5H" role="3clFbx">
                  <node concept="3cpWs6" id="50smQ1VkzOs" role="3cqZAp">
                    <node concept="2OqwBi" id="50smQ1VkHrl" role="3cqZAk">
                      <node concept="2OqwBi" id="50smQ1VkD7L" role="2Oq$k0">
                        <node concept="2OqwBi" id="50smQ1Vk_hV" role="2Oq$k0">
                          <node concept="Xjq3P" id="50smQ1VkzP5" role="2Oq$k0" />
                          <node concept="2OwXpG" id="50smQ1VkBkN" role="2OqNvi">
                            <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                          </node>
                        </node>
                        <node concept="1yVyf7" id="50smQ1VkFos" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="50smQ1VkJb$" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="50smQ1VkyyR" role="3clFbw">
                  <node concept="2OqwBi" id="50smQ1Vkwo_" role="2Oq$k0">
                    <node concept="2OqwBi" id="50smQ1VkuVQ" role="2Oq$k0">
                      <node concept="Xjq3P" id="50smQ1VkuOO" role="2Oq$k0" />
                      <node concept="2OwXpG" id="50smQ1VkvrA" role="2OqNvi">
                        <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                      </node>
                    </node>
                    <node concept="1yVyf7" id="50smQ1VkxrG" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="50smQ1Vkz2A" role="2OqNvi">
                    <ref role="37wK5l" node="50smQ1VgSG1" resolve="beginsAtOrBeforeThan" />
                    <node concept="37vLTw" id="50smQ1Vkzq0" role="37wK5m">
                      <ref role="3cqZAo" node="50smQ1Vf34x" resolve="time" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="50smQ1Vg6mi" role="3cqZAp">
                <node concept="3cpWsn" id="50smQ1Vg6mj" role="3cpWs9">
                  <property role="TrG5h" value="lastFoundSlice" />
                  <node concept="3uibUv" id="50smQ1Vg6mk" role="1tU5fm">
                    <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
                  </node>
                  <node concept="2OqwBi" id="50smQ1Vg7zn" role="33vP2m">
                    <node concept="37vLTw" id="50smQ1Vg6Ih" role="2Oq$k0">
                      <ref role="3cqZAo" node="50smQ1V9OxE" resolve="slices" />
                    </node>
                    <node concept="34jXtK" id="50smQ1Vg8A4" role="2OqNvi">
                      <node concept="3cmrfG" id="50smQ1Vg8Hg" role="25WWJ7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="50smQ1Vg2y9" role="3cqZAp">
                <node concept="2GrKxI" id="50smQ1Vg2yb" role="2Gsz3X">
                  <property role="TrG5h" value="s" />
                </node>
                <node concept="2OqwBi" id="50smQ1VijY2" role="2GsD0m">
                  <node concept="2OqwBi" id="50smQ1Vg3pC" role="2Oq$k0">
                    <node concept="Xjq3P" id="50smQ1Vg330" role="2Oq$k0" />
                    <node concept="2OwXpG" id="50smQ1Vg3LM" role="2OqNvi">
                      <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                    </node>
                  </node>
                  <node concept="1eb2uI" id="50smQ1VimfY" role="2OqNvi">
                    <node concept="3cmrfG" id="50smQ1VinTp" role="1eb2uK">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="50smQ1Vg2yf" role="2LFqv$">
                  <node concept="3clFbJ" id="50smQ1Vg99Y" role="3cqZAp">
                    <node concept="3clFbS" id="50smQ1Vg9a0" role="3clFbx">
                      <node concept="3cpWs6" id="50smQ1VgmiB" role="3cqZAp">
                        <node concept="2OqwBi" id="50smQ1VhyOV" role="3cqZAk">
                          <node concept="37vLTw" id="50smQ1Vgmjk" role="2Oq$k0">
                            <ref role="3cqZAo" node="50smQ1Vg6mj" resolve="lastFoundSlice" />
                          </node>
                          <node concept="liA8E" id="50smQ1Vh$yo" role="2OqNvi">
                            <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="50smQ1Vg9iv" role="3clFbw">
                      <node concept="2GrUjf" id="50smQ1Vg9ax" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="50smQ1Vg2yb" resolve="s" />
                      </node>
                      <node concept="liA8E" id="50smQ1VglFr" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1VgclR" resolve="beginsLaterThan" />
                        <node concept="37vLTw" id="50smQ1VglY3" role="37wK5m">
                          <ref role="3cqZAo" node="50smQ1Vf34x" resolve="time" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="50smQ1VgoHO" role="3cqZAp">
                    <node concept="37vLTI" id="50smQ1VgpOE" role="3clFbG">
                      <node concept="2GrUjf" id="50smQ1VgpPH" role="37vLTx">
                        <ref role="2Gs0qQ" node="50smQ1Vg2yb" resolve="s" />
                      </node>
                      <node concept="37vLTw" id="50smQ1VgoHM" role="37vLTJ">
                        <ref role="3cqZAo" node="50smQ1Vg6mj" resolve="lastFoundSlice" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="50smQ1Vgscl" role="3cqZAp">
          <node concept="10Nm6u" id="50smQ1Vgtm6" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1Vf34x" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKgf6" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3nGzaxUtN$B" role="jymVt" />
    <node concept="3clFb_" id="3nGzaxUtK2s" role="jymVt">
      <property role="TrG5h" value="after" />
      <node concept="3uibUv" id="3nGzaxUu0dr" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3Tm1VV" id="3nGzaxUtK2u" role="1B3o_S" />
      <node concept="3clFbS" id="3nGzaxUtK2v" role="3clF47">
        <node concept="3clFbJ" id="3nGzaxUtK2w" role="3cqZAp">
          <node concept="3clFbS" id="3nGzaxUtK2x" role="3clFbx">
            <node concept="3cpWs6" id="3nGzaxUtK2y" role="3cqZAp">
              <node concept="2ShNRf" id="3nGzaxUtYcT" role="3cqZAk">
                <node concept="1pGfFk" id="3nGzaxUu2oQ" role="2ShVmc">
                  <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3nGzaxUtK2$" role="3clFbw">
            <node concept="3cmrfG" id="3nGzaxUtK2_" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3nGzaxUtK2A" role="3uHU7B">
              <node concept="2OqwBi" id="3nGzaxUtK2B" role="2Oq$k0">
                <node concept="Xjq3P" id="3nGzaxUtK2C" role="2Oq$k0" />
                <node concept="2OwXpG" id="3nGzaxUtK2D" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="3nGzaxUtK2E" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3nGzaxUtK2F" role="3cqZAp">
          <node concept="3clFbS" id="3nGzaxUtK2G" role="3clFbx">
            <node concept="3clFbJ" id="3nGzaxUtK2H" role="3cqZAp">
              <node concept="3clFbS" id="3nGzaxUtK2I" role="3clFbx">
                <node concept="3cpWs6" id="3nGzaxUu6hU" role="3cqZAp">
                  <node concept="2ShNRf" id="3nGzaxUu81k" role="3cqZAk">
                    <node concept="1pGfFk" id="3nGzaxUu819" role="2ShVmc">
                      <ref role="37wK5l" node="50smQ1V9Zxf" resolve="TemporalValue" />
                      <node concept="2OqwBi" id="1Mp62pP3UiY" role="37wK5m">
                        <node concept="2OqwBi" id="3nGzaxUuf$2" role="2Oq$k0">
                          <node concept="2OqwBi" id="3nGzaxUuaUB" role="2Oq$k0">
                            <node concept="Xjq3P" id="3nGzaxUu9BH" role="2Oq$k0" />
                            <node concept="2OwXpG" id="3nGzaxUucPb" role="2OqNvi">
                              <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="3nGzaxUuj3C" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="1Mp62pP3VHG" role="2OqNvi">
                          <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3nGzaxUtK2R" role="3clFbw">
                <node concept="2OqwBi" id="3nGzaxUtK2S" role="2Oq$k0">
                  <node concept="2OqwBi" id="3nGzaxUtK2T" role="2Oq$k0">
                    <node concept="Xjq3P" id="3nGzaxUtK2U" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3nGzaxUtK2V" role="2OqNvi">
                      <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="3nGzaxUtK2W" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="3nGzaxUtK2X" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1Vj83h" resolve="beginsAtOrLaterThan" />
                  <node concept="37vLTw" id="3nGzaxUtK2Y" role="37wK5m">
                    <ref role="3cqZAo" node="3nGzaxUtK3U" resolve="time" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3nGzaxUus4O" role="9aQIa">
                <node concept="3clFbS" id="3nGzaxUus4P" role="9aQI4">
                  <node concept="3cpWs6" id="3nGzaxUuu5Y" role="3cqZAp">
                    <node concept="2ShNRf" id="3nGzaxUuu6M" role="3cqZAk">
                      <node concept="1pGfFk" id="3nGzaxUuu6B" role="2ShVmc">
                        <ref role="37wK5l" node="50smQ1V9TVb" resolve="TemporalValue" />
                        <node concept="37vLTw" id="3nGzaxUuw4F" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUtK3U" resolve="time" />
                        </node>
                        <node concept="2OqwBi" id="3nGzaxUuHeW" role="37wK5m">
                          <node concept="2OqwBi" id="3nGzaxUuByN" role="2Oq$k0">
                            <node concept="2OqwBi" id="3nGzaxUuzdJ" role="2Oq$k0">
                              <node concept="Xjq3P" id="3nGzaxUuxRF" role="2Oq$k0" />
                              <node concept="2OwXpG" id="3nGzaxUu_lS" role="2OqNvi">
                                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                              </node>
                            </node>
                            <node concept="1uHKPH" id="3nGzaxUuETj" role="2OqNvi" />
                          </node>
                          <node concept="liA8E" id="3nGzaxUuJ8L" role="2OqNvi">
                            <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3nGzaxUtK2Z" role="3clFbw">
            <node concept="3cmrfG" id="3nGzaxUtK30" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="3nGzaxUtK31" role="3uHU7B">
              <node concept="2OqwBi" id="3nGzaxUtK32" role="2Oq$k0">
                <node concept="Xjq3P" id="3nGzaxUtK33" role="2Oq$k0" />
                <node concept="2OwXpG" id="3nGzaxUtK34" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="3nGzaxUtK35" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="3nGzaxUtK36" role="9aQIa">
            <node concept="3clFbS" id="3nGzaxUtK37" role="9aQI4">
              <node concept="3cpWs8" id="3nGzaxUxxjB" role="3cqZAp">
                <node concept="3cpWsn" id="3nGzaxUxxjC" role="3cpWs9">
                  <property role="TrG5h" value="tv" />
                  <node concept="3uibUv" id="3nGzaxUxxjD" role="1tU5fm">
                    <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                  </node>
                  <node concept="2ShNRf" id="3nGzaxUxz1m" role="33vP2m">
                    <node concept="1pGfFk" id="3nGzaxUxz0Z" role="2ShVmc">
                      <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="3nGzaxUxDXz" role="3cqZAp">
                <node concept="2GrKxI" id="3nGzaxUxDX_" role="2Gsz3X">
                  <property role="TrG5h" value="s" />
                </node>
                <node concept="2OqwBi" id="3nGzaxUxGEH" role="2GsD0m">
                  <node concept="2OqwBi" id="3nGzaxUxFCI" role="2Oq$k0">
                    <node concept="Xjq3P" id="3nGzaxUxFxm" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3nGzaxUxFLs" role="2OqNvi">
                      <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                    </node>
                  </node>
                  <node concept="35Qw8J" id="3nGzaxUxHHK" role="2OqNvi" />
                </node>
                <node concept="3clFbS" id="3nGzaxUxDXD" role="2LFqv$">
                  <node concept="3clFbJ" id="3nGzaxUxHTB" role="3cqZAp">
                    <node concept="2OqwBi" id="3nGzaxUxI0R" role="3clFbw">
                      <node concept="2GrUjf" id="3nGzaxUxHU3" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3nGzaxUxDX_" resolve="s" />
                      </node>
                      <node concept="liA8E" id="3nGzaxUxIk$" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1VgclR" resolve="beginsLaterThan" />
                        <node concept="37vLTw" id="3nGzaxUxIDi" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUtK3U" resolve="time" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3nGzaxUxHTD" role="3clFbx">
                      <node concept="3clFbF" id="3nGzaxUxIZ_" role="3cqZAp">
                        <node concept="37vLTI" id="3nGzaxUxJ5B" role="3clFbG">
                          <node concept="2OqwBi" id="3nGzaxUxJc_" role="37vLTx">
                            <node concept="37vLTw" id="3nGzaxUxJ6m" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUxxjC" resolve="tv" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUxJmD" role="2OqNvi">
                              <ref role="37wK5l" node="3nGzaxUxJqb" resolve="slice" />
                              <node concept="2GrUjf" id="3nGzaxUxSb8" role="37wK5m">
                                <ref role="2Gs0qQ" node="3nGzaxUxDX_" resolve="s" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3nGzaxUxIZ$" role="37vLTJ">
                            <ref role="3cqZAo" node="3nGzaxUxxjC" resolve="tv" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="3nGzaxUxSfI" role="9aQIa">
                      <node concept="3clFbS" id="3nGzaxUxSfJ" role="9aQI4">
                        <node concept="3clFbF" id="3nGzaxUxSsp" role="3cqZAp">
                          <node concept="37vLTI" id="3nGzaxUxSL6" role="3clFbG">
                            <node concept="2OqwBi" id="3nGzaxUxSSs" role="37vLTx">
                              <node concept="37vLTw" id="3nGzaxUxSMs" role="2Oq$k0">
                                <ref role="3cqZAo" node="3nGzaxUxxjC" resolve="tv" />
                              </node>
                              <node concept="liA8E" id="3nGzaxUxT1e" role="2OqNvi">
                                <ref role="37wK5l" node="50smQ1V9Ut6" resolve="slice" />
                                <node concept="37vLTw" id="3nGzaxUxT5c" role="37wK5m">
                                  <ref role="3cqZAo" node="3nGzaxUtK3U" resolve="time" />
                                </node>
                                <node concept="2OqwBi" id="3nGzaxUxTk4" role="37wK5m">
                                  <node concept="2GrUjf" id="3nGzaxUxTds" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="3nGzaxUxDX_" resolve="s" />
                                  </node>
                                  <node concept="liA8E" id="3nGzaxUxTE8" role="2OqNvi">
                                    <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="3nGzaxUxSso" role="37vLTJ">
                              <ref role="3cqZAo" node="3nGzaxUxxjC" resolve="tv" />
                            </node>
                          </node>
                        </node>
                        <node concept="3zACq4" id="3nGzaxUxUnh" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3nGzaxUveZ8" role="3cqZAp">
                <node concept="37vLTw" id="3nGzaxUveZL" role="3cqZAk">
                  <ref role="3cqZAo" node="3nGzaxUxxjC" resolve="tv" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3nGzaxUtK3U" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKiIT" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3nGzaxUz3g$" role="jymVt" />
    <node concept="3clFb_" id="3nGzaxUyZEs" role="jymVt">
      <property role="TrG5h" value="before" />
      <node concept="3uibUv" id="3nGzaxUyZEt" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3Tm1VV" id="3nGzaxUyZEu" role="1B3o_S" />
      <node concept="3clFbS" id="3nGzaxUyZEv" role="3clF47">
        <node concept="3clFbJ" id="3nGzaxUyZEw" role="3cqZAp">
          <node concept="3clFbS" id="3nGzaxUyZEx" role="3clFbx">
            <node concept="3cpWs6" id="3nGzaxUyZEy" role="3cqZAp">
              <node concept="2ShNRf" id="3nGzaxUyZEz" role="3cqZAk">
                <node concept="1pGfFk" id="3nGzaxUyZE$" role="2ShVmc">
                  <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3nGzaxUyZE_" role="3clFbw">
            <node concept="3cmrfG" id="3nGzaxUyZEA" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3nGzaxUyZEB" role="3uHU7B">
              <node concept="2OqwBi" id="3nGzaxUyZEC" role="2Oq$k0">
                <node concept="Xjq3P" id="3nGzaxUyZED" role="2Oq$k0" />
                <node concept="2OwXpG" id="3nGzaxUyZEE" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="3nGzaxUyZEF" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3nGzaxUyZEG" role="3cqZAp">
          <node concept="3clFbS" id="3nGzaxUyZEH" role="3clFbx">
            <node concept="3clFbJ" id="3nGzaxUyZEI" role="3cqZAp">
              <node concept="3clFbS" id="3nGzaxUyZEJ" role="3clFbx">
                <node concept="3cpWs6" id="3nGzaxUyZEK" role="3cqZAp">
                  <node concept="2ShNRf" id="3nGzaxUyZEL" role="3cqZAk">
                    <node concept="1pGfFk" id="3nGzaxUyZEM" role="2ShVmc">
                      <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3nGzaxUyZES" role="3clFbw">
                <node concept="2OqwBi" id="3nGzaxUyZET" role="2Oq$k0">
                  <node concept="2OqwBi" id="3nGzaxUyZEU" role="2Oq$k0">
                    <node concept="Xjq3P" id="3nGzaxUyZEV" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3nGzaxUyZEW" role="2OqNvi">
                      <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="3nGzaxUyZEX" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="3nGzaxUyZEY" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1Vj83h" resolve="beginsAtOrLaterThan" />
                  <node concept="37vLTw" id="3nGzaxUyZEZ" role="37wK5m">
                    <ref role="3cqZAo" node="3nGzaxUyZFZ" resolve="time" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3nGzaxUyZF0" role="9aQIa">
                <node concept="3clFbS" id="3nGzaxUyZF1" role="9aQI4">
                  <node concept="3cpWs6" id="3nGzaxUyZF2" role="3cqZAp">
                    <node concept="2ShNRf" id="3nGzaxUyZF3" role="3cqZAk">
                      <node concept="1pGfFk" id="3nGzaxUyZF4" role="2ShVmc">
                        <ref role="37wK5l" node="50smQ1V9TVb" resolve="TemporalValue" />
                        <node concept="37vLTw" id="3nGzaxUyZF5" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUyZFZ" resolve="time" />
                        </node>
                        <node concept="2OqwBi" id="3nGzaxUyZF6" role="37wK5m">
                          <node concept="2OqwBi" id="3nGzaxUyZF7" role="2Oq$k0">
                            <node concept="2OqwBi" id="3nGzaxUyZF8" role="2Oq$k0">
                              <node concept="Xjq3P" id="3nGzaxUyZF9" role="2Oq$k0" />
                              <node concept="2OwXpG" id="3nGzaxUyZFa" role="2OqNvi">
                                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                              </node>
                            </node>
                            <node concept="1uHKPH" id="3nGzaxUyZFb" role="2OqNvi" />
                          </node>
                          <node concept="liA8E" id="3nGzaxUyZFc" role="2OqNvi">
                            <ref role="37wK5l" node="50smQ1VbR0B" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3nGzaxUyZFd" role="3clFbw">
            <node concept="3cmrfG" id="3nGzaxUyZFe" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="3nGzaxUyZFf" role="3uHU7B">
              <node concept="2OqwBi" id="3nGzaxUyZFg" role="2Oq$k0">
                <node concept="Xjq3P" id="3nGzaxUyZFh" role="2Oq$k0" />
                <node concept="2OwXpG" id="3nGzaxUyZFi" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                </node>
              </node>
              <node concept="34oBXx" id="3nGzaxUyZFj" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="3nGzaxUyZFk" role="9aQIa">
            <node concept="3clFbS" id="3nGzaxUyZFl" role="9aQI4">
              <node concept="3cpWs8" id="3nGzaxUyZFm" role="3cqZAp">
                <node concept="3cpWsn" id="3nGzaxUyZFn" role="3cpWs9">
                  <property role="TrG5h" value="tv" />
                  <node concept="3uibUv" id="3nGzaxUyZFo" role="1tU5fm">
                    <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
                  </node>
                  <node concept="2ShNRf" id="3nGzaxUyZFp" role="33vP2m">
                    <node concept="1pGfFk" id="3nGzaxUyZFq" role="2ShVmc">
                      <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="3nGzaxUyZFr" role="3cqZAp">
                <node concept="2GrKxI" id="3nGzaxUyZFs" role="2Gsz3X">
                  <property role="TrG5h" value="s" />
                </node>
                <node concept="2OqwBi" id="3nGzaxUyZFu" role="2GsD0m">
                  <node concept="Xjq3P" id="3nGzaxUyZFv" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3nGzaxUyZFw" role="2OqNvi">
                    <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
                  </node>
                </node>
                <node concept="3clFbS" id="3nGzaxUyZFy" role="2LFqv$">
                  <node concept="3clFbJ" id="3nGzaxUyZFz" role="3cqZAp">
                    <node concept="2OqwBi" id="3nGzaxUyZF$" role="3clFbw">
                      <node concept="2GrUjf" id="3nGzaxUyZF_" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3nGzaxUyZFs" resolve="s" />
                      </node>
                      <node concept="liA8E" id="3nGzaxUyZFA" role="2OqNvi">
                        <ref role="37wK5l" node="50smQ1VgSG1" resolve="beginsAtOrBeforeThan" />
                        <node concept="37vLTw" id="3nGzaxUyZFB" role="37wK5m">
                          <ref role="3cqZAo" node="3nGzaxUyZFZ" resolve="time" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3nGzaxUyZFC" role="3clFbx">
                      <node concept="3clFbF" id="3nGzaxUyZFD" role="3cqZAp">
                        <node concept="37vLTI" id="3nGzaxUyZFE" role="3clFbG">
                          <node concept="2OqwBi" id="3nGzaxUyZFF" role="37vLTx">
                            <node concept="37vLTw" id="3nGzaxUyZFG" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUyZFn" resolve="tv" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUyZFH" role="2OqNvi">
                              <ref role="37wK5l" node="3nGzaxUxJqb" resolve="slice" />
                              <node concept="2GrUjf" id="3nGzaxUyZFI" role="37wK5m">
                                <ref role="2Gs0qQ" node="3nGzaxUyZFs" resolve="s" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3nGzaxUyZFJ" role="37vLTJ">
                            <ref role="3cqZAo" node="3nGzaxUyZFn" resolve="tv" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3nGzaxUyZFX" role="3cqZAp">
                <node concept="37vLTw" id="3nGzaxUyZFY" role="3cqZAk">
                  <ref role="3cqZAo" node="3nGzaxUyZFn" resolve="tv" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3nGzaxUyZFZ" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKkHo" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3nGzaxUzRL7" role="jymVt" />
    <node concept="3clFb_" id="3nGzaxUzOJM" role="jymVt">
      <property role="TrG5h" value="between" />
      <node concept="3uibUv" id="3nGzaxUzOJN" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3Tm1VV" id="3nGzaxUzOJO" role="1B3o_S" />
      <node concept="3clFbS" id="3nGzaxUzOJP" role="3clF47">
        <node concept="3cpWs6" id="3nGzaxU$3VG" role="3cqZAp">
          <node concept="2OqwBi" id="3nGzaxU$fF0" role="3cqZAk">
            <node concept="2OqwBi" id="3nGzaxU$9iO" role="2Oq$k0">
              <node concept="Xjq3P" id="3nGzaxU$7qh" role="2Oq$k0" />
              <node concept="liA8E" id="3nGzaxU$bnD" role="2OqNvi">
                <ref role="37wK5l" node="3nGzaxUyZEs" resolve="before" />
                <node concept="37vLTw" id="3nGzaxU$dEs" role="37wK5m">
                  <ref role="3cqZAo" node="3nGzaxUzZD3" resolve="to" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3nGzaxU$i7b" role="2OqNvi">
              <ref role="37wK5l" node="3nGzaxUtK2s" resolve="after" />
              <node concept="37vLTw" id="3nGzaxU$kdt" role="37wK5m">
                <ref role="3cqZAo" node="3nGzaxUzOL1" resolve="from" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3nGzaxUzOL1" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3uibUv" id="6GCJsuCKmml" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
      <node concept="37vLTG" id="3nGzaxUzZD3" role="3clF46">
        <property role="TrG5h" value="to" />
        <node concept="3uibUv" id="6GCJsuCKmrr" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4voqclTDdYa" role="jymVt" />
    <node concept="3clFb_" id="4voqclTDifZ" role="jymVt">
      <property role="TrG5h" value="slices" />
      <node concept="_YKpA" id="6nEpT4GUhNJ" role="3clF45">
        <node concept="3uibUv" id="6nEpT4GUjVN" role="_ZDj9">
          <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4voqclTDig2" role="1B3o_S" />
      <node concept="3clFbS" id="4voqclTDig3" role="3clF47">
        <node concept="3clFbF" id="4voqclTDwaS" role="3cqZAp">
          <node concept="2OqwBi" id="4voqclTDwgz" role="3clFbG">
            <node concept="Xjq3P" id="4voqclTDwaR" role="2Oq$k0" />
            <node concept="2OwXpG" id="4voqclTDwoP" role="2OqNvi">
              <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Mp62pP18TS" role="jymVt" />
    <node concept="3clFb_" id="1Mp62pP171D" role="jymVt">
      <property role="TrG5h" value="lastSlice" />
      <node concept="3Tm1VV" id="1Mp62pP171G" role="1B3o_S" />
      <node concept="3clFbS" id="1Mp62pP171H" role="3clF47">
        <node concept="3clFbF" id="1Mp62pP171I" role="3cqZAp">
          <node concept="2OqwBi" id="1Mp62pP1fSG" role="3clFbG">
            <node concept="2OqwBi" id="1Mp62pP171J" role="2Oq$k0">
              <node concept="Xjq3P" id="1Mp62pP171K" role="2Oq$k0" />
              <node concept="2OwXpG" id="1Mp62pP171L" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
              </node>
            </node>
            <node concept="1yVyf7" id="1Mp62pP1hgB" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1Mp62pP171F" role="3clF45">
        <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Mp62pP1uB$" role="jymVt" />
    <node concept="3clFb_" id="1Mp62pP1sLf" role="jymVt">
      <property role="TrG5h" value="firstSlice" />
      <node concept="3Tm1VV" id="1Mp62pP1sLg" role="1B3o_S" />
      <node concept="3clFbS" id="1Mp62pP1sLh" role="3clF47">
        <node concept="3clFbF" id="1Mp62pP1sLi" role="3cqZAp">
          <node concept="2OqwBi" id="1Mp62pP1sLj" role="3clFbG">
            <node concept="2OqwBi" id="1Mp62pP1sLk" role="2Oq$k0">
              <node concept="Xjq3P" id="1Mp62pP1sLl" role="2Oq$k0" />
              <node concept="2OwXpG" id="1Mp62pP1sLm" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1V9OxE" resolve="slices" />
              </node>
            </node>
            <node concept="1uHKPH" id="1Mp62pP1E0R" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1Mp62pP1sLo" role="3clF45">
        <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1V9UiA" role="jymVt" />
    <node concept="3Tm1VV" id="50smQ1V9Ofz" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="50smQ1VbaN9">
    <property role="TrG5h" value="SliceValue" />
    <node concept="2tJIrI" id="50smQ1VbaNw" role="jymVt" />
    <node concept="312cEg" id="50smQ1Vbb7Q" role="jymVt">
      <property role="TrG5h" value="myValue" />
      <node concept="3Tm6S6" id="50smQ1Vbb7R" role="1B3o_S" />
      <node concept="3uibUv" id="50smQ1Vbb7T" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="312cEg" id="50smQ1Vbb8P" role="jymVt">
      <property role="TrG5h" value="myTime" />
      <node concept="3Tm6S6" id="50smQ1Vbb8Q" role="1B3o_S" />
      <node concept="3uibUv" id="6GCJsuCKqrP" role="1tU5fm">
        <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
      </node>
    </node>
    <node concept="312cEg" id="6nEpT4GTFaZ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="owner" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6nEpT4GTEha" role="1B3o_S" />
      <node concept="3uibUv" id="6nEpT4GTF6Z" role="1tU5fm">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1Vbbln" role="jymVt" />
    <node concept="3clFbW" id="50smQ1VbaTB" role="jymVt">
      <node concept="3cqZAl" id="50smQ1VbaTD" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1VbaTE" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VbaTF" role="3clF47">
        <node concept="3clFbF" id="50smQ1Vbb7U" role="3cqZAp">
          <node concept="37vLTI" id="50smQ1Vbb7W" role="3clFbG">
            <node concept="37vLTw" id="50smQ1Vbb7Z" role="37vLTJ">
              <ref role="3cqZAo" node="50smQ1Vbb7Q" resolve="myValue" />
            </node>
            <node concept="37vLTw" id="50smQ1Vbb80" role="37vLTx">
              <ref role="3cqZAo" node="50smQ1Vbb0k" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50smQ1Vbb8T" role="3cqZAp">
          <node concept="37vLTI" id="50smQ1Vbb8V" role="3clFbG">
            <node concept="37vLTw" id="50smQ1Vbb8Y" role="37vLTJ">
              <ref role="3cqZAo" node="50smQ1Vbb8P" resolve="myTime" />
            </node>
            <node concept="37vLTw" id="50smQ1Vbb8Z" role="37vLTx">
              <ref role="3cqZAo" node="50smQ1VbaZS" resolve="time" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nEpT4GTGeo" role="3cqZAp">
          <node concept="37vLTI" id="6nEpT4GTH0L" role="3clFbG">
            <node concept="37vLTw" id="6nEpT4GTH3x" role="37vLTx">
              <ref role="3cqZAo" node="6nEpT4GTFV5" resolve="owner" />
            </node>
            <node concept="2OqwBi" id="6nEpT4GTGmW" role="37vLTJ">
              <node concept="Xjq3P" id="6nEpT4GTGem" role="2Oq$k0" />
              <node concept="2OwXpG" id="6nEpT4GTGvD" role="2OqNvi">
                <ref role="2Oxat5" node="6nEpT4GTFaZ" resolve="owner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6nEpT4GTFV5" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="6nEpT4GTGai" role="1tU5fm">
          <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1VbaZS" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKAAl" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1Vbb0k" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="50smQ1Vbb6v" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VbqzS" role="jymVt" />
    <node concept="2tJIrI" id="6GCJsuCKADE" role="jymVt" />
    <node concept="2tJIrI" id="3nGzaxUy$bQ" role="jymVt" />
    <node concept="3clFb_" id="3nGzaxUy$Sl" role="jymVt">
      <property role="TrG5h" value="copy" />
      <node concept="3uibUv" id="3nGzaxUyA2k" role="3clF45">
        <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
      </node>
      <node concept="3Tm1VV" id="3nGzaxUy$So" role="1B3o_S" />
      <node concept="3clFbS" id="3nGzaxUy$Sp" role="3clF47">
        <node concept="3clFbF" id="3nGzaxUyABN" role="3cqZAp">
          <node concept="2ShNRf" id="3nGzaxUyABL" role="3clFbG">
            <node concept="1pGfFk" id="3nGzaxUyARI" role="2ShVmc">
              <ref role="37wK5l" node="50smQ1VbaTB" resolve="SliceValue" />
              <node concept="37vLTw" id="6nEpT4GTOxJ" role="37wK5m">
                <ref role="3cqZAo" node="6nEpT4GTNQ4" resolve="newOwner" />
              </node>
              <node concept="2OqwBi" id="3nGzaxUyAZ3" role="37wK5m">
                <node concept="Xjq3P" id="3nGzaxUyATg" role="2Oq$k0" />
                <node concept="2OwXpG" id="3nGzaxUyB8N" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1Vbb8P" resolve="myTime" />
                </node>
              </node>
              <node concept="2OqwBi" id="3nGzaxUyBnr" role="37wK5m">
                <node concept="Xjq3P" id="3nGzaxUyBe1" role="2Oq$k0" />
                <node concept="2OwXpG" id="3nGzaxUyB_e" role="2OqNvi">
                  <ref role="2Oxat5" node="50smQ1Vbb7Q" resolve="myValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6nEpT4GTNQ4" role="3clF46">
        <property role="TrG5h" value="newOwner" />
        <node concept="3uibUv" id="6nEpT4GTNQ3" role="1tU5fm">
          <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VbOol" role="jymVt" />
    <node concept="3clFb_" id="6nEpT4GTiG4" role="jymVt">
      <property role="TrG5h" value="isLast" />
      <node concept="10P_77" id="6nEpT4GTlPa" role="3clF45" />
      <node concept="3Tm1VV" id="6nEpT4GTiG8" role="1B3o_S" />
      <node concept="3clFbS" id="6nEpT4GTiG9" role="3clF47">
        <node concept="3clFbF" id="6nEpT4GTlnH" role="3cqZAp">
          <node concept="3clFbC" id="6nEpT4GTlH6" role="3clFbG">
            <node concept="Xjq3P" id="6nEpT4GTlKs" role="3uHU7w" />
            <node concept="2OqwBi" id="6nEpT4GTlu$" role="3uHU7B">
              <node concept="2OqwBi" id="6nEpT4GTSmy" role="2Oq$k0">
                <node concept="Xjq3P" id="6nEpT4GTSgx" role="2Oq$k0" />
                <node concept="2OwXpG" id="6nEpT4GTSv8" role="2OqNvi">
                  <ref role="2Oxat5" node="6nEpT4GTFaZ" resolve="owner" />
                </node>
              </node>
              <node concept="liA8E" id="6nEpT4GTlAV" role="2OqNvi">
                <ref role="37wK5l" node="1Mp62pP171D" resolve="lastSlice" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nEpT4GTneq" role="jymVt" />
    <node concept="3clFb_" id="6nEpT4GTmtO" role="jymVt">
      <property role="TrG5h" value="isFirst" />
      <node concept="10P_77" id="6nEpT4GTmtP" role="3clF45" />
      <node concept="3Tm1VV" id="6nEpT4GTmtQ" role="1B3o_S" />
      <node concept="3clFbS" id="6nEpT4GTmtR" role="3clF47">
        <node concept="3clFbF" id="6nEpT4GTmtS" role="3cqZAp">
          <node concept="3clFbC" id="6nEpT4GTmtT" role="3clFbG">
            <node concept="Xjq3P" id="6nEpT4GTmtU" role="3uHU7w" />
            <node concept="2OqwBi" id="6nEpT4GTmtV" role="3uHU7B">
              <node concept="2OqwBi" id="6nEpT4GTUcZ" role="2Oq$k0">
                <node concept="Xjq3P" id="6nEpT4GTU6Y" role="2Oq$k0" />
                <node concept="2OwXpG" id="6nEpT4GTUl$" role="2OqNvi">
                  <ref role="2Oxat5" node="6nEpT4GTFaZ" resolve="owner" />
                </node>
              </node>
              <node concept="liA8E" id="6nEpT4GTmtX" role="2OqNvi">
                <ref role="37wK5l" node="1Mp62pP1sLf" resolve="firstSlice" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nEpT4GU9j$" role="jymVt" />
    <node concept="3clFb_" id="6nEpT4GUbUo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="next" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6nEpT4GUbUr" role="3clF47">
        <node concept="3clFbJ" id="6nEpT4GUlSv" role="3cqZAp">
          <node concept="3clFbS" id="6nEpT4GUlSx" role="3clFbx">
            <node concept="3cpWs6" id="6nEpT4GUmiz" role="3cqZAp">
              <node concept="10Nm6u" id="6nEpT4GUmrr" role="3cqZAk" />
            </node>
          </node>
          <node concept="1rXfSq" id="6nEpT4GUm3F" role="3clFbw">
            <ref role="37wK5l" node="6nEpT4GTiG4" resolve="isLast" />
          </node>
        </node>
        <node concept="3cpWs8" id="6nEpT4GUniv" role="3cqZAp">
          <node concept="3cpWsn" id="6nEpT4GUniw" role="3cpWs9">
            <property role="TrG5h" value="idx" />
            <node concept="10Oyi0" id="6nEpT4GUniq" role="1tU5fm" />
            <node concept="2OqwBi" id="6nEpT4GUnix" role="33vP2m">
              <node concept="2OqwBi" id="6nEpT4GUniy" role="2Oq$k0">
                <node concept="2OqwBi" id="6nEpT4GUniz" role="2Oq$k0">
                  <node concept="Xjq3P" id="6nEpT4GUni$" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6nEpT4GUni_" role="2OqNvi">
                    <ref role="2Oxat5" node="6nEpT4GTFaZ" resolve="owner" />
                  </node>
                </node>
                <node concept="liA8E" id="6nEpT4GUniA" role="2OqNvi">
                  <ref role="37wK5l" node="4voqclTDifZ" resolve="slices" />
                </node>
              </node>
              <node concept="2WmjW8" id="6nEpT4GUniB" role="2OqNvi">
                <node concept="Xjq3P" id="6nEpT4GUniC" role="25WWJ7" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6nEpT4GUp7o" role="3cqZAp">
          <node concept="2OqwBi" id="6nEpT4GU$Q1" role="3cqZAk">
            <node concept="2OqwBi" id="6nEpT4GUyBP" role="2Oq$k0">
              <node concept="2OqwBi" id="6nEpT4GUwTb" role="2Oq$k0">
                <node concept="Xjq3P" id="6nEpT4GUwaP" role="2Oq$k0" />
                <node concept="2OwXpG" id="6nEpT4GUxLJ" role="2OqNvi">
                  <ref role="2Oxat5" node="6nEpT4GTFaZ" resolve="owner" />
                </node>
              </node>
              <node concept="liA8E" id="6nEpT4GUztD" role="2OqNvi">
                <ref role="37wK5l" node="4voqclTDifZ" resolve="slices" />
              </node>
            </node>
            <node concept="34jXtK" id="6nEpT4GUAp$" role="2OqNvi">
              <node concept="3cpWs3" id="6nEpT4GUGmT" role="25WWJ7">
                <node concept="3cmrfG" id="6nEpT4GUGn6" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="6nEpT4GUBrM" role="3uHU7B">
                  <ref role="3cqZAo" node="6nEpT4GUniw" resolve="idx" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6nEpT4GUaZQ" role="1B3o_S" />
      <node concept="3uibUv" id="6nEpT4GUbT0" role="3clF45">
        <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nEpT4GUDdD" role="jymVt" />
    <node concept="3clFb_" id="6nEpT4GUCau" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="previous" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6nEpT4GUCav" role="3clF47">
        <node concept="3clFbJ" id="6nEpT4GUCaw" role="3cqZAp">
          <node concept="3clFbS" id="6nEpT4GUCax" role="3clFbx">
            <node concept="3cpWs6" id="6nEpT4GUCay" role="3cqZAp">
              <node concept="10Nm6u" id="6nEpT4GUCaz" role="3cqZAk" />
            </node>
          </node>
          <node concept="1rXfSq" id="6nEpT4GUCa$" role="3clFbw">
            <ref role="37wK5l" node="6nEpT4GTmtO" resolve="isFirst" />
          </node>
        </node>
        <node concept="3cpWs8" id="6nEpT4GUCa_" role="3cqZAp">
          <node concept="3cpWsn" id="6nEpT4GUCaA" role="3cpWs9">
            <property role="TrG5h" value="idx" />
            <node concept="10Oyi0" id="6nEpT4GUCaB" role="1tU5fm" />
            <node concept="2OqwBi" id="6nEpT4GUCaC" role="33vP2m">
              <node concept="2OqwBi" id="6nEpT4GUCaD" role="2Oq$k0">
                <node concept="2OqwBi" id="6nEpT4GUCaE" role="2Oq$k0">
                  <node concept="Xjq3P" id="6nEpT4GUCaF" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6nEpT4GUCaG" role="2OqNvi">
                    <ref role="2Oxat5" node="6nEpT4GTFaZ" resolve="owner" />
                  </node>
                </node>
                <node concept="liA8E" id="6nEpT4GUCaH" role="2OqNvi">
                  <ref role="37wK5l" node="4voqclTDifZ" resolve="slices" />
                </node>
              </node>
              <node concept="2WmjW8" id="6nEpT4GUCaI" role="2OqNvi">
                <node concept="Xjq3P" id="6nEpT4GUCaJ" role="25WWJ7" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6nEpT4GUCaK" role="3cqZAp">
          <node concept="2OqwBi" id="6nEpT4GUCaL" role="3cqZAk">
            <node concept="2OqwBi" id="6nEpT4GUCaM" role="2Oq$k0">
              <node concept="2OqwBi" id="6nEpT4GUCaN" role="2Oq$k0">
                <node concept="Xjq3P" id="6nEpT4GUCaO" role="2Oq$k0" />
                <node concept="2OwXpG" id="6nEpT4GUCaP" role="2OqNvi">
                  <ref role="2Oxat5" node="6nEpT4GTFaZ" resolve="owner" />
                </node>
              </node>
              <node concept="liA8E" id="6nEpT4GUCaQ" role="2OqNvi">
                <ref role="37wK5l" node="4voqclTDifZ" resolve="slices" />
              </node>
            </node>
            <node concept="34jXtK" id="6nEpT4GUCaR" role="2OqNvi">
              <node concept="3cpWsd" id="6nEpT4GUHNc" role="25WWJ7">
                <node concept="3cmrfG" id="6nEpT4GUHNp" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="6nEpT4GUCaS" role="3uHU7B">
                  <ref role="3cqZAo" node="6nEpT4GUCaA" resolve="idx" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6nEpT4GUCaT" role="1B3o_S" />
      <node concept="3uibUv" id="6nEpT4GUCaU" role="3clF45">
        <ref role="3uigEE" node="50smQ1VbaN9" resolve="SliceValue" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nEpT4GTUwr" role="jymVt" />
    <node concept="3clFb_" id="6nEpT4GTW9R" role="jymVt">
      <property role="TrG5h" value="durationInDays" />
      <node concept="3cpWsb" id="6GCJsuCK$W9" role="3clF45" />
      <node concept="3Tm1VV" id="6nEpT4GTW9U" role="1B3o_S" />
      <node concept="3clFbS" id="6nEpT4GTW9V" role="3clF47">
        <node concept="3clFbJ" id="6nEpT4GU1f1" role="3cqZAp">
          <node concept="3clFbS" id="6nEpT4GU1f3" role="3clFbx">
            <node concept="3cpWs6" id="6GCJsuCKP9q" role="3cqZAp">
              <node concept="2OqwBi" id="6GCJsuCKRNQ" role="3cqZAk">
                <node concept="Rm8GO" id="6GCJsuCKQDc" role="2Oq$k0">
                  <ref role="Rm8GQ" to="dzyv:~ChronoUnit.DAYS" resolve="DAYS" />
                  <ref role="1Px2BO" to="dzyv:~ChronoUnit" resolve="ChronoUnit" />
                </node>
                <node concept="liA8E" id="6GCJsuCKT8_" role="2OqNvi">
                  <ref role="37wK5l" to="dzyv:~ChronoUnit.between(java.time.temporal.Temporal,java.time.temporal.Temporal):long" resolve="between" />
                  <node concept="37vLTw" id="6GCJsuCKTT7" role="37wK5m">
                    <ref role="3cqZAo" node="50smQ1Vbb8P" resolve="myTime" />
                  </node>
                  <node concept="37vLTw" id="6GCJsuCKVsE" role="37wK5m">
                    <ref role="3cqZAo" node="6nEpT4GU0tc" resolve="defaultEnd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="6nEpT4GU1fK" role="3clFbw">
            <ref role="37wK5l" node="6nEpT4GTiG4" resolve="isLast" />
          </node>
          <node concept="9aQIb" id="6nEpT4GU8Cb" role="9aQIa">
            <node concept="3clFbS" id="6nEpT4GU8Cc" role="9aQI4">
              <node concept="3cpWs8" id="6GCJsuCKMF5" role="3cqZAp">
                <node concept="3cpWsn" id="6GCJsuCKMF6" role="3cpWs9">
                  <property role="TrG5h" value="next" />
                  <node concept="3uibUv" id="6GCJsuCKMF2" role="1tU5fm">
                    <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                  </node>
                  <node concept="2OqwBi" id="6GCJsuCKMF7" role="33vP2m">
                    <node concept="2OqwBi" id="6GCJsuCKMF8" role="2Oq$k0">
                      <node concept="Xjq3P" id="6GCJsuCKMF9" role="2Oq$k0" />
                      <node concept="liA8E" id="6GCJsuCKMFa" role="2OqNvi">
                        <ref role="37wK5l" node="6nEpT4GUbUo" resolve="next" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6GCJsuCKMFb" role="2OqNvi">
                      <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6nEpT4GUICE" role="3cqZAp">
                <node concept="2OqwBi" id="6GCJsuCL1Pt" role="3cqZAk">
                  <node concept="Rm8GO" id="6GCJsuCL0Lv" role="2Oq$k0">
                    <ref role="Rm8GQ" to="dzyv:~ChronoUnit.DAYS" resolve="DAYS" />
                    <ref role="1Px2BO" to="dzyv:~ChronoUnit" resolve="ChronoUnit" />
                  </node>
                  <node concept="liA8E" id="6GCJsuCL36f" role="2OqNvi">
                    <ref role="37wK5l" to="dzyv:~ChronoUnit.between(java.time.temporal.Temporal,java.time.temporal.Temporal):long" resolve="between" />
                    <node concept="37vLTw" id="6GCJsuCL3MO" role="37wK5m">
                      <ref role="3cqZAo" node="50smQ1Vbb8P" resolve="myTime" />
                    </node>
                    <node concept="37vLTw" id="6GCJsuCL5bP" role="37wK5m">
                      <ref role="3cqZAo" node="6GCJsuCKMF6" resolve="next" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6nEpT4GU0tc" role="3clF46">
        <property role="TrG5h" value="defaultEnd" />
        <node concept="3uibUv" id="6GCJsuCK_MA" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nEpT4GTgbV" role="jymVt" />
    <node concept="3clFb_" id="50smQ1VbOQ_" role="jymVt">
      <property role="TrG5h" value="time" />
      <node concept="3uibUv" id="6GCJsuCK$cu" role="3clF45">
        <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
      </node>
      <node concept="3Tm1VV" id="50smQ1VbOQC" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VbOQD" role="3clF47">
        <node concept="3clFbF" id="50smQ1VbQJc" role="3cqZAp">
          <node concept="2OqwBi" id="50smQ1VbQOO" role="3clFbG">
            <node concept="Xjq3P" id="50smQ1VbQJb" role="2Oq$k0" />
            <node concept="2OwXpG" id="50smQ1VbQX6" role="2OqNvi">
              <ref role="2Oxat5" node="50smQ1Vbb8P" resolve="myTime" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VbRoG" role="jymVt" />
    <node concept="3clFb_" id="50smQ1VbR0B" role="jymVt">
      <property role="TrG5h" value="value" />
      <node concept="3uibUv" id="50smQ1VbSac" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="50smQ1VbR0D" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VbR0E" role="3clF47">
        <node concept="3clFbF" id="50smQ1VbR0F" role="3cqZAp">
          <node concept="2OqwBi" id="50smQ1VbR0G" role="3clFbG">
            <node concept="Xjq3P" id="50smQ1VbR0H" role="2Oq$k0" />
            <node concept="2OwXpG" id="50smQ1VbSGV" role="2OqNvi">
              <ref role="2Oxat5" node="50smQ1Vbb7Q" resolve="myValue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1Vc4DL" role="jymVt" />
    <node concept="3clFb_" id="50smQ1Vc4ga" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="50smQ1Vc4gb" role="1B3o_S" />
      <node concept="3uibUv" id="50smQ1Vc4gd" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="50smQ1Vc4ge" role="3clF47">
        <node concept="3clFbF" id="50smQ1Vc4gh" role="3cqZAp">
          <node concept="3cpWs3" id="50smQ1Vc6v1" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1Vc6O7" role="3uHU7w">
              <node concept="Xjq3P" id="50smQ1Vc6vr" role="2Oq$k0" />
              <node concept="2OwXpG" id="50smQ1Vc78V" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1Vbb7Q" resolve="myValue" />
              </node>
            </node>
            <node concept="3cpWs3" id="50smQ1Vc61d" role="3uHU7B">
              <node concept="Xl_RD" id="50smQ1Vc61q" role="3uHU7w">
                <property role="Xl_RC" value=":" />
              </node>
              <node concept="2OqwBi" id="6GCJsuCKy_2" role="3uHU7B">
                <node concept="37vLTw" id="6GCJsuCKxSO" role="2Oq$k0">
                  <ref role="3cqZAo" node="50smQ1Vbb8P" resolve="myTime" />
                </node>
                <node concept="liA8E" id="6GCJsuCKzMA" role="2OqNvi">
                  <ref role="37wK5l" to="28m1:~LocalDate.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="50smQ1Vc4gf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VgbGU" role="jymVt" />
    <node concept="3clFb_" id="50smQ1VgclR" role="jymVt">
      <property role="TrG5h" value="beginsLaterThan" />
      <node concept="10P_77" id="50smQ1VgcUT" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1VgclU" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VgclV" role="3clF47">
        <node concept="3clFbF" id="50smQ1VgfBE" role="3cqZAp">
          <node concept="3eOSWO" id="50smQ1Vj9cO" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1Vgh8P" role="3uHU7B">
              <node concept="2OqwBi" id="50smQ1VggzP" role="2Oq$k0">
                <node concept="Xjq3P" id="50smQ1VggsM" role="2Oq$k0" />
                <node concept="liA8E" id="50smQ1VggNW" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                </node>
              </node>
              <node concept="liA8E" id="50smQ1VghVj" role="2OqNvi">
                <ref role="37wK5l" to="28m1:~LocalDate.compareTo(java.time.chrono.ChronoLocalDate):int" resolve="compareTo" />
                <node concept="37vLTw" id="50smQ1Vgi7H" role="37wK5m">
                  <ref role="3cqZAo" node="50smQ1Vgf3p" resolve="time" />
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="50smQ1Vgk2O" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1Vgf3p" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKscF" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1Vj9lJ" role="jymVt" />
    <node concept="3clFb_" id="50smQ1Vj83h" role="jymVt">
      <property role="TrG5h" value="beginsAtOrLaterThan" />
      <node concept="10P_77" id="50smQ1Vj83i" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1Vj83j" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1Vj83k" role="3clF47">
        <node concept="3clFbF" id="50smQ1Vj83l" role="3cqZAp">
          <node concept="2d3UOw" id="50smQ1Vj83m" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1Vj83n" role="3uHU7B">
              <node concept="2OqwBi" id="50smQ1Vj83o" role="2Oq$k0">
                <node concept="Xjq3P" id="50smQ1Vj83p" role="2Oq$k0" />
                <node concept="liA8E" id="50smQ1Vj83q" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                </node>
              </node>
              <node concept="liA8E" id="50smQ1Vj83r" role="2OqNvi">
                <ref role="37wK5l" to="28m1:~LocalDate.compareTo(java.time.chrono.ChronoLocalDate):int" resolve="compareTo" />
                <node concept="37vLTw" id="50smQ1Vj83s" role="37wK5m">
                  <ref role="3cqZAo" node="50smQ1Vj83u" resolve="time" />
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="50smQ1Vj83t" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1Vj83u" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKs8L" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VgXoF" role="jymVt" />
    <node concept="3clFb_" id="50smQ1VgSG1" role="jymVt">
      <property role="TrG5h" value="beginsAtOrBeforeThan" />
      <node concept="10P_77" id="50smQ1VgSG2" role="3clF45" />
      <node concept="3Tm1VV" id="50smQ1VgSG3" role="1B3o_S" />
      <node concept="3clFbS" id="50smQ1VgSG4" role="3clF47">
        <node concept="3clFbF" id="50smQ1VgSG5" role="3cqZAp">
          <node concept="2d3UOw" id="50smQ1VhYfu" role="3clFbG">
            <node concept="2OqwBi" id="50smQ1VgVXv" role="3uHU7B">
              <node concept="37vLTw" id="50smQ1VgVrX" role="2Oq$k0">
                <ref role="3cqZAo" node="50smQ1VgSGe" resolve="time" />
              </node>
              <node concept="liA8E" id="50smQ1VgWJx" role="2OqNvi">
                <ref role="37wK5l" to="28m1:~LocalDate.compareTo(java.time.chrono.ChronoLocalDate):int" resolve="compareTo" />
                <node concept="2OqwBi" id="50smQ1VgX23" role="37wK5m">
                  <node concept="Xjq3P" id="50smQ1VgWQq" role="2Oq$k0" />
                  <node concept="liA8E" id="50smQ1VgXgG" role="2OqNvi">
                    <ref role="37wK5l" node="50smQ1VbOQ_" resolve="time" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="50smQ1VgSG7" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="50smQ1VgSGe" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKs0R" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50smQ1VbOpQ" role="jymVt" />
    <node concept="3clFb_" id="3nGzaxUvrpI" role="jymVt">
      <property role="TrG5h" value="setTime" />
      <node concept="3cqZAl" id="3nGzaxUvrpM" role="3clF45" />
      <node concept="3clFbS" id="3nGzaxUvrpO" role="3clF47">
        <node concept="3clFbF" id="3nGzaxUvuRo" role="3cqZAp">
          <node concept="37vLTI" id="3nGzaxUvvyu" role="3clFbG">
            <node concept="37vLTw" id="3nGzaxUvvBF" role="37vLTx">
              <ref role="3cqZAo" node="3nGzaxUvtDy" resolve="time" />
            </node>
            <node concept="2OqwBi" id="3nGzaxUvuWY" role="37vLTJ">
              <node concept="Xjq3P" id="3nGzaxUvuRl" role="2Oq$k0" />
              <node concept="2OwXpG" id="3nGzaxUvv5g" role="2OqNvi">
                <ref role="2Oxat5" node="50smQ1Vbb8P" resolve="myTime" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3nGzaxUvtDy" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3uibUv" id="6GCJsuCKrTj" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3nGzaxUvpy_" role="jymVt" />
    <node concept="3Tm1VV" id="50smQ1VbaNa" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3nGzaxUs53y">
    <property role="TrG5h" value="TemporalArithmeticsHelper" />
    <node concept="2tJIrI" id="3nGzaxUs53N" role="jymVt" />
    <node concept="2YIFZL" id="3nGzaxUtfR9" role="jymVt">
      <property role="TrG5h" value="doWithTwoTemporalIntegers" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3nGzaxUtfRd" role="3clF47">
        <node concept="3clFbJ" id="3nGzaxUtfRe" role="3cqZAp">
          <node concept="3clFbS" id="3nGzaxUtfRf" role="3clFbx">
            <node concept="YS8fn" id="3nGzaxUtfRg" role="3cqZAp">
              <node concept="2ShNRf" id="3nGzaxUtfRh" role="YScLw">
                <node concept="HV5vD" id="3nGzaxUtfRi" role="2ShVmc">
                  <ref role="HV5vE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3nGzaxUtfRj" role="3clFbw">
            <node concept="2OqwBi" id="3nGzaxUtfRk" role="3fr31v">
              <node concept="2OqwBi" id="3nGzaxUtfRl" role="2Oq$k0">
                <node concept="37vLTw" id="3nGzaxUtfRm" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nGzaxUtfSZ" resolve="left" />
                </node>
                <node concept="3JvlWi" id="3nGzaxUtfRn" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="3nGzaxUtfRo" role="2OqNvi">
                <node concept="chp4Y" id="3nGzaxUtfRp" role="cj9EA">
                  <ref role="cht4Q" to="l462:50smQ1V8i89" resolve="TemporalType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3nGzaxUtfRq" role="3cqZAp">
          <node concept="3clFbS" id="3nGzaxUtfRr" role="3clFbx">
            <node concept="YS8fn" id="3nGzaxUtfRs" role="3cqZAp">
              <node concept="2ShNRf" id="3nGzaxUtfRt" role="YScLw">
                <node concept="HV5vD" id="3nGzaxUtfRu" role="2ShVmc">
                  <ref role="HV5vE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3nGzaxUtfRv" role="3clFbw">
            <node concept="2OqwBi" id="3nGzaxUtfRw" role="3fr31v">
              <node concept="2OqwBi" id="3nGzaxUtfRx" role="2Oq$k0">
                <node concept="3JvlWi" id="3nGzaxUtfRy" role="2OqNvi" />
                <node concept="37vLTw" id="3nGzaxUtfRz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nGzaxUtfT1" resolve="right" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3nGzaxUtfR$" role="2OqNvi">
                <node concept="chp4Y" id="3nGzaxUtfR_" role="cj9EA">
                  <ref role="cht4Q" to="l462:50smQ1V8i89" resolve="TemporalType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3nGzaxUtfRA" role="3cqZAp">
          <node concept="3cpWsn" id="3nGzaxUtfRB" role="3cpWs9">
            <property role="TrG5h" value="leftValue" />
            <node concept="3uibUv" id="3nGzaxUtfRC" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="10QFUN" id="3nGzaxUtfRD" role="33vP2m">
              <node concept="2OqwBi" id="3nGzaxUtfRE" role="10QFUP">
                <node concept="2OqwBi" id="3nGzaxUtfRF" role="2Oq$k0">
                  <node concept="37vLTw" id="3nGzaxUtfRG" role="2Oq$k0">
                    <ref role="3cqZAo" node="3nGzaxUtfT8" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="3nGzaxUtfRH" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2ALJBcrni7v" resolve="getRootInterpreter" />
                  </node>
                </node>
                <node concept="liA8E" id="3nGzaxUtfRI" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:41ZT0VcTXY$" resolve="evaluate" />
                  <node concept="37vLTw" id="3nGzaxUtfRJ" role="37wK5m">
                    <ref role="3cqZAo" node="3nGzaxUtfSZ" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="3nGzaxUtfRK" role="37wK5m">
                    <ref role="3cqZAo" node="3nGzaxUtfT8" resolve="ctx" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="3nGzaxUtfRL" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3nGzaxUtfRM" role="3cqZAp">
          <node concept="3cpWsn" id="3nGzaxUtfRN" role="3cpWs9">
            <property role="TrG5h" value="rightValue" />
            <node concept="3uibUv" id="3nGzaxUtfRO" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="10QFUN" id="3nGzaxUtfRP" role="33vP2m">
              <node concept="3uibUv" id="3nGzaxUtfRQ" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
              <node concept="2OqwBi" id="3nGzaxUtfRR" role="10QFUP">
                <node concept="2OqwBi" id="3nGzaxUtfRS" role="2Oq$k0">
                  <node concept="37vLTw" id="3nGzaxUtfRT" role="2Oq$k0">
                    <ref role="3cqZAo" node="3nGzaxUtfT8" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="3nGzaxUtfRU" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2ALJBcrni7v" resolve="getRootInterpreter" />
                  </node>
                </node>
                <node concept="liA8E" id="3nGzaxUtfRV" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:41ZT0VcTXY$" resolve="evaluate" />
                  <node concept="37vLTw" id="3nGzaxUtfRW" role="37wK5m">
                    <ref role="3cqZAo" node="3nGzaxUtfT1" resolve="right" />
                  </node>
                  <node concept="37vLTw" id="3nGzaxUtfRX" role="37wK5m">
                    <ref role="3cqZAo" node="3nGzaxUtfT8" resolve="ctx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3nGzaxUtfRY" role="3cqZAp">
          <node concept="3cpWsn" id="3nGzaxUtfRZ" role="3cpWs9">
            <property role="TrG5h" value="allIntervals" />
            <node concept="2hMVRd" id="3nGzaxUtfS0" role="1tU5fm">
              <node concept="3uibUv" id="6GCJsuCLrpB" role="2hN53Y">
                <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
              </node>
            </node>
            <node concept="2ShNRf" id="3nGzaxUtfS2" role="33vP2m">
              <node concept="2i4dXS" id="3nGzaxUtfS3" role="2ShVmc">
                <node concept="3uibUv" id="6GCJsuCLtlx" role="HW$YZ">
                  <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nGzaxUtfS5" role="3cqZAp">
          <node concept="2OqwBi" id="3nGzaxUtfS6" role="3clFbG">
            <node concept="37vLTw" id="3nGzaxUtfS7" role="2Oq$k0">
              <ref role="3cqZAo" node="3nGzaxUtfRZ" resolve="allIntervals" />
            </node>
            <node concept="X8dFx" id="3nGzaxUtfS8" role="2OqNvi">
              <node concept="2OqwBi" id="3nGzaxUtfS9" role="25WWJ7">
                <node concept="37vLTw" id="3nGzaxUtfSa" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nGzaxUtfRB" resolve="leftValue" />
                </node>
                <node concept="liA8E" id="3nGzaxUtfSb" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VdGyd" resolve="intervals" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nGzaxUtfSc" role="3cqZAp">
          <node concept="2OqwBi" id="3nGzaxUtfSd" role="3clFbG">
            <node concept="37vLTw" id="3nGzaxUtfSe" role="2Oq$k0">
              <ref role="3cqZAo" node="3nGzaxUtfRZ" resolve="allIntervals" />
            </node>
            <node concept="X8dFx" id="3nGzaxUtfSf" role="2OqNvi">
              <node concept="2OqwBi" id="3nGzaxUtfSg" role="25WWJ7">
                <node concept="37vLTw" id="3nGzaxUtfSh" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nGzaxUtfRN" resolve="rightValue" />
                </node>
                <node concept="liA8E" id="3nGzaxUtfSi" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VdGyd" resolve="intervals" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3nGzaxUtfSj" role="3cqZAp">
          <node concept="3cpWsn" id="3nGzaxUtfSk" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="3nGzaxUtfSl" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="2ShNRf" id="3nGzaxUtfSm" role="33vP2m">
              <node concept="1pGfFk" id="3nGzaxUtfSn" role="2ShVmc">
                <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3nGzaxUtfSo" role="3cqZAp">
          <node concept="2GrKxI" id="3nGzaxUtfSp" role="2Gsz3X">
            <property role="TrG5h" value="i" />
          </node>
          <node concept="2OqwBi" id="3nGzaxUtfSq" role="2GsD0m">
            <node concept="2OqwBi" id="3nGzaxUtfSr" role="2Oq$k0">
              <node concept="37vLTw" id="3nGzaxUtfSs" role="2Oq$k0">
                <ref role="3cqZAo" node="3nGzaxUtfRZ" resolve="allIntervals" />
              </node>
              <node concept="ANE8D" id="3nGzaxUtfSt" role="2OqNvi" />
            </node>
            <node concept="2S7cBI" id="3nGzaxUtfSu" role="2OqNvi">
              <node concept="1bVj0M" id="3nGzaxUtfSv" role="23t8la">
                <node concept="3clFbS" id="3nGzaxUtfSw" role="1bW5cS">
                  <node concept="3clFbF" id="3nGzaxUtfSx" role="3cqZAp">
                    <node concept="37vLTw" id="3nGzaxUtfSy" role="3clFbG">
                      <ref role="3cqZAo" node="3nGzaxUtfSz" resolve="it" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3nGzaxUtfSz" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3nGzaxUtfS$" role="1tU5fm" />
                </node>
              </node>
              <node concept="1nlBCl" id="3nGzaxUtfS_" role="2S7zOq">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3nGzaxUtfSA" role="2LFqv$">
            <node concept="3clFbF" id="3nGzaxUtfSB" role="3cqZAp">
              <node concept="37vLTI" id="3nGzaxUtfSC" role="3clFbG">
                <node concept="2OqwBi" id="3nGzaxUtfSD" role="37vLTx">
                  <node concept="37vLTw" id="3nGzaxUtfSE" role="2Oq$k0">
                    <ref role="3cqZAo" node="3nGzaxUtfSk" resolve="res" />
                  </node>
                  <node concept="liA8E" id="3nGzaxUtfSF" role="2OqNvi">
                    <ref role="37wK5l" node="50smQ1V9Ut6" resolve="slice" />
                    <node concept="2GrUjf" id="3nGzaxUtfSG" role="37wK5m">
                      <ref role="2Gs0qQ" node="3nGzaxUtfSp" resolve="i" />
                    </node>
                    <node concept="2OqwBi" id="3nGzaxUtfSH" role="37wK5m">
                      <node concept="37vLTw" id="3nGzaxUtfSI" role="2Oq$k0">
                        <ref role="3cqZAo" node="3nGzaxUtfT3" resolve="binop" />
                      </node>
                      <node concept="1Bd96e" id="3nGzaxUtfSJ" role="2OqNvi">
                        <node concept="10QFUN" id="3nGzaxUtfSK" role="1BdPVh">
                          <node concept="2OqwBi" id="3nGzaxUtfSL" role="10QFUP">
                            <node concept="37vLTw" id="3nGzaxUtfSM" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUtfRB" resolve="leftValue" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUtfSN" role="2OqNvi">
                              <ref role="37wK5l" node="50smQ1VeRHr" resolve="valueAt" />
                              <node concept="2GrUjf" id="3nGzaxUtfSO" role="37wK5m">
                                <ref role="2Gs0qQ" node="3nGzaxUtfSp" resolve="i" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="3nGzaxUtfSP" role="10QFUM">
                            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                        </node>
                        <node concept="10QFUN" id="3nGzaxUtfSQ" role="1BdPVh">
                          <node concept="2OqwBi" id="3nGzaxUtfSR" role="10QFUP">
                            <node concept="37vLTw" id="3nGzaxUtfSS" role="2Oq$k0">
                              <ref role="3cqZAo" node="3nGzaxUtfRN" resolve="rightValue" />
                            </node>
                            <node concept="liA8E" id="3nGzaxUtfST" role="2OqNvi">
                              <ref role="37wK5l" node="50smQ1VeRHr" resolve="valueAt" />
                              <node concept="2GrUjf" id="3nGzaxUtfSU" role="37wK5m">
                                <ref role="2Gs0qQ" node="3nGzaxUtfSp" resolve="i" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="3nGzaxUtfSV" role="10QFUM">
                            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3nGzaxUtfSW" role="37vLTJ">
                  <ref role="3cqZAo" node="3nGzaxUtfSk" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3nGzaxUtfSX" role="3cqZAp">
          <node concept="37vLTw" id="3nGzaxUtfSY" role="3cqZAk">
            <ref role="3cqZAo" node="3nGzaxUtfSk" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3nGzaxUtfRb" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3uibUv" id="3nGzaxUtfTa" role="Sfmx6">
        <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
      </node>
      <node concept="37vLTG" id="3nGzaxUtfSZ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3Tqbb2" id="3nGzaxUtfT0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3nGzaxUtfT1" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3Tqbb2" id="3nGzaxUtfT2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3nGzaxUtfT3" role="3clF46">
        <property role="TrG5h" value="binop" />
        <node concept="1ajhzC" id="3nGzaxUtfT4" role="1tU5fm">
          <node concept="3uibUv" id="3nGzaxUtfT5" role="1ajl9A">
            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
          </node>
          <node concept="3uibUv" id="3nGzaxUtfT6" role="1ajw0F">
            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
          </node>
          <node concept="3uibUv" id="3nGzaxUtfT7" role="1ajw0F">
            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3nGzaxUtfT8" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="3nGzaxUtfT9" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3nGzaxUtfRc" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4eVSC65wM71" role="jymVt" />
    <node concept="2YIFZL" id="4eVSC65wKHU" role="jymVt">
      <property role="TrG5h" value="doWithOneTemporalIntegers" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4eVSC65wKHV" role="3clF47">
        <node concept="3clFbJ" id="4eVSC65wKHW" role="3cqZAp">
          <node concept="3clFbS" id="4eVSC65wKHX" role="3clFbx">
            <node concept="YS8fn" id="4eVSC65wKHY" role="3cqZAp">
              <node concept="2ShNRf" id="4eVSC65wKHZ" role="YScLw">
                <node concept="HV5vD" id="4eVSC65wKI0" role="2ShVmc">
                  <ref role="HV5vE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4eVSC65wKI1" role="3clFbw">
            <node concept="2OqwBi" id="4eVSC65wKI2" role="3fr31v">
              <node concept="2OqwBi" id="4eVSC65wKI3" role="2Oq$k0">
                <node concept="37vLTw" id="4eVSC65wKI4" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eVSC65wKJJ" resolve="left" />
                </node>
                <node concept="3JvlWi" id="4eVSC65wKI5" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="4eVSC65wKI6" role="2OqNvi">
                <node concept="chp4Y" id="4eVSC65wKI7" role="cj9EA">
                  <ref role="cht4Q" to="l462:50smQ1V8i89" resolve="TemporalType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4eVSC65wKI8" role="3cqZAp">
          <node concept="3clFbS" id="4eVSC65wKI9" role="3clFbx">
            <node concept="YS8fn" id="4eVSC65wKIa" role="3cqZAp">
              <node concept="2ShNRf" id="4eVSC65wKIb" role="YScLw">
                <node concept="HV5vD" id="4eVSC65wKIc" role="2ShVmc">
                  <ref role="HV5vE" node="3nGzaxUsxoG" resolve="ArithExcption" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4eVSC65wKId" role="3clFbw">
            <node concept="2OqwBi" id="4eVSC65wKIe" role="3fr31v">
              <node concept="2OqwBi" id="4eVSC65wKIf" role="2Oq$k0">
                <node concept="3JvlWi" id="4eVSC65wKIg" role="2OqNvi" />
                <node concept="37vLTw" id="4eVSC65wKIh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eVSC65wKJL" resolve="right" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4eVSC65wKIi" role="2OqNvi">
                <node concept="chp4Y" id="4eVSC65wODY" role="cj9EA">
                  <ref role="cht4Q" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eVSC65wKIk" role="3cqZAp">
          <node concept="3cpWsn" id="4eVSC65wKIl" role="3cpWs9">
            <property role="TrG5h" value="leftValue" />
            <node concept="3uibUv" id="4eVSC65wKIm" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="10QFUN" id="4eVSC65wKIn" role="33vP2m">
              <node concept="2OqwBi" id="4eVSC65wKIo" role="10QFUP">
                <node concept="2OqwBi" id="4eVSC65wKIp" role="2Oq$k0">
                  <node concept="37vLTw" id="4eVSC65wKIq" role="2Oq$k0">
                    <ref role="3cqZAo" node="4eVSC65wKJS" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="4eVSC65wKIr" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2ALJBcrni7v" resolve="getRootInterpreter" />
                  </node>
                </node>
                <node concept="liA8E" id="4eVSC65wKIs" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:41ZT0VcTXY$" resolve="evaluate" />
                  <node concept="37vLTw" id="4eVSC65wKIt" role="37wK5m">
                    <ref role="3cqZAo" node="4eVSC65wKJJ" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="4eVSC65wKIu" role="37wK5m">
                    <ref role="3cqZAo" node="4eVSC65wKJS" resolve="ctx" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="4eVSC65wKIv" role="10QFUM">
                <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eVSC65wKIw" role="3cqZAp">
          <node concept="3cpWsn" id="4eVSC65wKIx" role="3cpWs9">
            <property role="TrG5h" value="rightValue" />
            <node concept="3uibUv" id="4eVSC65wOMK" role="1tU5fm">
              <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
            </node>
            <node concept="10QFUN" id="4eVSC65wKIz" role="33vP2m">
              <node concept="3uibUv" id="4eVSC65wPqZ" role="10QFUM">
                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
              </node>
              <node concept="2OqwBi" id="4eVSC65wKI_" role="10QFUP">
                <node concept="2OqwBi" id="4eVSC65wKIA" role="2Oq$k0">
                  <node concept="37vLTw" id="4eVSC65wKIB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4eVSC65wKJS" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="4eVSC65wKIC" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2ALJBcrni7v" resolve="getRootInterpreter" />
                  </node>
                </node>
                <node concept="liA8E" id="4eVSC65wKID" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:41ZT0VcTXY$" resolve="evaluate" />
                  <node concept="37vLTw" id="4eVSC65wKIE" role="37wK5m">
                    <ref role="3cqZAo" node="4eVSC65wKJL" resolve="right" />
                  </node>
                  <node concept="37vLTw" id="4eVSC65wKIF" role="37wK5m">
                    <ref role="3cqZAo" node="4eVSC65wKJS" resolve="ctx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eVSC65wKIG" role="3cqZAp">
          <node concept="3cpWsn" id="4eVSC65wKIH" role="3cpWs9">
            <property role="TrG5h" value="allIntervals" />
            <node concept="2hMVRd" id="4eVSC65wKII" role="1tU5fm">
              <node concept="3uibUv" id="6GCJsuCLvk9" role="2hN53Y">
                <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
              </node>
            </node>
            <node concept="2ShNRf" id="4eVSC65wKIK" role="33vP2m">
              <node concept="2i4dXS" id="4eVSC65wKIL" role="2ShVmc">
                <node concept="3uibUv" id="6GCJsuCLwly" role="HW$YZ">
                  <ref role="3uigEE" to="28m1:~LocalDate" resolve="LocalDate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4eVSC65wKIN" role="3cqZAp">
          <node concept="2OqwBi" id="4eVSC65wKIO" role="3clFbG">
            <node concept="37vLTw" id="4eVSC65wKIP" role="2Oq$k0">
              <ref role="3cqZAo" node="4eVSC65wKIH" resolve="allIntervals" />
            </node>
            <node concept="X8dFx" id="4eVSC65wKIQ" role="2OqNvi">
              <node concept="2OqwBi" id="4eVSC65wKIR" role="25WWJ7">
                <node concept="37vLTw" id="4eVSC65wKIS" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eVSC65wKIl" resolve="leftValue" />
                </node>
                <node concept="liA8E" id="4eVSC65wKIT" role="2OqNvi">
                  <ref role="37wK5l" node="50smQ1VdGyd" resolve="intervals" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eVSC65wKJ1" role="3cqZAp">
          <node concept="3cpWsn" id="4eVSC65wKJ2" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="4eVSC65wKJ3" role="1tU5fm">
              <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
            </node>
            <node concept="2ShNRf" id="4eVSC65wKJ4" role="33vP2m">
              <node concept="1pGfFk" id="4eVSC65wKJ5" role="2ShVmc">
                <ref role="37wK5l" node="50smQ1V9OlU" resolve="TemporalValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4eVSC65wKJ6" role="3cqZAp">
          <node concept="2GrKxI" id="4eVSC65wKJ7" role="2Gsz3X">
            <property role="TrG5h" value="i" />
          </node>
          <node concept="2OqwBi" id="4eVSC65wKJ8" role="2GsD0m">
            <node concept="2OqwBi" id="4eVSC65wKJ9" role="2Oq$k0">
              <node concept="37vLTw" id="4eVSC65wKJa" role="2Oq$k0">
                <ref role="3cqZAo" node="4eVSC65wKIH" resolve="allIntervals" />
              </node>
              <node concept="ANE8D" id="4eVSC65wKJb" role="2OqNvi" />
            </node>
            <node concept="2S7cBI" id="4eVSC65wKJc" role="2OqNvi">
              <node concept="1bVj0M" id="4eVSC65wKJd" role="23t8la">
                <node concept="3clFbS" id="4eVSC65wKJe" role="1bW5cS">
                  <node concept="3clFbF" id="4eVSC65wKJf" role="3cqZAp">
                    <node concept="37vLTw" id="4eVSC65wKJg" role="3clFbG">
                      <ref role="3cqZAo" node="4eVSC65wKJh" resolve="it" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4eVSC65wKJh" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4eVSC65wKJi" role="1tU5fm" />
                </node>
              </node>
              <node concept="1nlBCl" id="4eVSC65wKJj" role="2S7zOq">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4eVSC65wKJk" role="2LFqv$">
            <node concept="3clFbF" id="4eVSC65wKJl" role="3cqZAp">
              <node concept="37vLTI" id="4eVSC65wKJm" role="3clFbG">
                <node concept="2OqwBi" id="4eVSC65wKJn" role="37vLTx">
                  <node concept="37vLTw" id="4eVSC65wKJo" role="2Oq$k0">
                    <ref role="3cqZAo" node="4eVSC65wKJ2" resolve="res" />
                  </node>
                  <node concept="liA8E" id="4eVSC65wKJp" role="2OqNvi">
                    <ref role="37wK5l" node="50smQ1V9Ut6" resolve="slice" />
                    <node concept="2GrUjf" id="4eVSC65wKJq" role="37wK5m">
                      <ref role="2Gs0qQ" node="4eVSC65wKJ7" resolve="i" />
                    </node>
                    <node concept="2OqwBi" id="4eVSC65wKJr" role="37wK5m">
                      <node concept="37vLTw" id="4eVSC65wKJs" role="2Oq$k0">
                        <ref role="3cqZAo" node="4eVSC65wKJN" resolve="binop" />
                      </node>
                      <node concept="1Bd96e" id="4eVSC65wKJt" role="2OqNvi">
                        <node concept="10QFUN" id="4eVSC65wKJu" role="1BdPVh">
                          <node concept="2OqwBi" id="4eVSC65wKJv" role="10QFUP">
                            <node concept="37vLTw" id="4eVSC65wKJw" role="2Oq$k0">
                              <ref role="3cqZAo" node="4eVSC65wKIl" resolve="leftValue" />
                            </node>
                            <node concept="liA8E" id="4eVSC65wKJx" role="2OqNvi">
                              <ref role="37wK5l" node="50smQ1VeRHr" resolve="valueAt" />
                              <node concept="2GrUjf" id="4eVSC65wKJy" role="37wK5m">
                                <ref role="2Gs0qQ" node="4eVSC65wKJ7" resolve="i" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="4eVSC65wKJz" role="10QFUM">
                            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4eVSC65wSc2" role="1BdPVh">
                          <ref role="3cqZAo" node="4eVSC65wKIx" resolve="rightValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4eVSC65wKJE" role="37vLTJ">
                  <ref role="3cqZAo" node="4eVSC65wKJ2" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4eVSC65wKJF" role="3cqZAp">
          <node concept="37vLTw" id="4eVSC65wKJG" role="3cqZAk">
            <ref role="3cqZAo" node="4eVSC65wKJ2" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4eVSC65wKJH" role="3clF45">
        <ref role="3uigEE" node="50smQ1V9Ofy" resolve="TemporalValue" />
      </node>
      <node concept="3uibUv" id="4eVSC65wKJI" role="Sfmx6">
        <ref role="3uigEE" node="3nGzaxUsxoG" resolve="ArithExcption" />
      </node>
      <node concept="37vLTG" id="4eVSC65wKJJ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3Tqbb2" id="4eVSC65wKJK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4eVSC65wKJL" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3Tqbb2" id="4eVSC65wKJM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4eVSC65wKJN" role="3clF46">
        <property role="TrG5h" value="binop" />
        <node concept="1ajhzC" id="4eVSC65wKJO" role="1tU5fm">
          <node concept="3uibUv" id="4eVSC65wKJP" role="1ajl9A">
            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
          </node>
          <node concept="3uibUv" id="4eVSC65wKJQ" role="1ajw0F">
            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
          </node>
          <node concept="3uibUv" id="4eVSC65wKJR" role="1ajw0F">
            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4eVSC65wKJS" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="4eVSC65wKJT" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4eVSC65wKJU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3nGzaxUs53S" role="jymVt" />
    <node concept="2tJIrI" id="3nGzaxUs53W" role="jymVt" />
    <node concept="3Tm1VV" id="3nGzaxUs53z" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3nGzaxUsxoG">
    <property role="TrG5h" value="ArithExcption" />
    <node concept="3Tm1VV" id="3nGzaxUsxoH" role="1B3o_S" />
    <node concept="3uibUv" id="3nGzaxUsxpE" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
    </node>
  </node>
</model>

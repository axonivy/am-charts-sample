[Ivy]
16ED54ABE20D0F8A 7.5.0 #module
>Proto >Proto Collection #zClass
Ad0 AMChartDashboard Big #zClass
Ad0 B #cInfo
Ad0 #process
Ad0 @TextInP .type .type #zField
Ad0 @TextInP .processKind .processKind #zField
Ad0 @TextInP .xml .xml #zField
Ad0 @TextInP .responsibility .responsibility #zField
Ad0 @StartRequest f0 '' #zField
Ad0 @EndTask f1 '' #zField
Ad0 @UserDialog f3 '' #zField
Ad0 @PushWFArc f4 '' #zField
Ad0 @PushWFArc f2 '' #zField
Ad0 @EndTask f5 '' #zField
Ad0 @StartRequest f6 '' #zField
Ad0 @UserDialog f7 '' #zField
Ad0 @PushWFArc f8 '' #zField
Ad0 @PushWFArc f9 '' #zField
Ad0 @UserDialog f10 '' #zField
Ad0 @EndTask f11 '' #zField
Ad0 @StartRequest f12 '' #zField
Ad0 @PushWFArc f13 '' #zField
Ad0 @PushWFArc f14 '' #zField
Ad0 @InfoButton f15 '' #zField
Ad0 @StartRequest f16 '' #zField
Ad0 @EndTask f17 '' #zField
Ad0 @UserDialog f18 '' #zField
Ad0 @PushWFArc f19 '' #zField
Ad0 @PushWFArc f20 '' #zField
Ad0 @StartRequest f21 '' #zField
Ad0 @EndTask f22 '' #zField
Ad0 @UserDialog f23 '' #zField
Ad0 @PushWFArc f24 '' #zField
Ad0 @PushWFArc f25 '' #zField
>Proto Ad0 Ad0 AMChartDashboard #zField
Ad0 f0 outLink start.ivp #txt
Ad0 f0 inParamDecl '<> param;' #txt
Ad0 f0 requestEnabled true #txt
Ad0 f0 triggerEnabled false #txt
Ad0 f0 callSignature start() #txt
Ad0 f0 startName '1. PieChart ' #txt
Ad0 f0 caseData businessCase.attach=true #txt
Ad0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ad0 f0 @C|.responsibility Everybody #txt
Ad0 f0 81 129 30 30 -21 17 #rect
Ad0 f0 @|StartRequestIcon #fIcon
Ad0 f1 337 129 30 30 0 15 #rect
Ad0 f1 @|EndIcon #fIcon
Ad0 f3 dialogId amch.DialogPieChart #txt
Ad0 f3 startMethod start() #txt
Ad0 f3 requestActionDecl '<> param;' #txt
Ad0 f3 responseMappingAction 'out=in;
' #txt
Ad0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DialogPieChart</name>
    </language>
</elementInfo>
' #txt
Ad0 f3 168 122 112 44 -42 -8 #rect
Ad0 f3 @|UserDialogIcon #fIcon
Ad0 f4 111 144 168 144 #arcP
Ad0 f2 280 144 337 144 #arcP
Ad0 f5 337 273 30 30 0 15 #rect
Ad0 f5 @|EndIcon #fIcon
Ad0 f6 outLink start2.ivp #txt
Ad0 f6 inParamDecl '<> param;' #txt
Ad0 f6 requestEnabled true #txt
Ad0 f6 triggerEnabled false #txt
Ad0 f6 callSignature start2() #txt
Ad0 f6 startName '2. Combined XYChart ' #txt
Ad0 f6 caseData businessCase.attach=true #txt
Ad0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
    </language>
</elementInfo>
' #txt
Ad0 f6 @C|.responsibility Everybody #txt
Ad0 f6 81 273 30 30 -24 17 #rect
Ad0 f6 @|StartRequestIcon #fIcon
Ad0 f7 dialogId amch.DialogXYChart #txt
Ad0 f7 startMethod start() #txt
Ad0 f7 requestActionDecl '<> param;' #txt
Ad0 f7 responseMappingAction 'out=in;
' #txt
Ad0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DialogXYChart</name>
    </language>
</elementInfo>
' #txt
Ad0 f7 168 266 112 44 -40 -8 #rect
Ad0 f7 @|UserDialogIcon #fIcon
Ad0 f8 280 288 337 288 #arcP
Ad0 f9 111 288 168 288 #arcP
Ad0 f10 dialogId amch.DialogAnimatedChart #txt
Ad0 f10 startMethod start() #txt
Ad0 f10 requestActionDecl '<> param;' #txt
Ad0 f10 responseMappingAction 'out=in;
' #txt
Ad0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DialogAnimatedChart</name>
    </language>
</elementInfo>
' #txt
Ad0 f10 160 410 128 44 -59 -8 #rect
Ad0 f10 @|UserDialogIcon #fIcon
Ad0 f11 337 417 30 30 0 15 #rect
Ad0 f11 @|EndIcon #fIcon
Ad0 f12 outLink start3.ivp #txt
Ad0 f12 inParamDecl '<> param;' #txt
Ad0 f12 requestEnabled true #txt
Ad0 f12 triggerEnabled false #txt
Ad0 f12 callSignature start3() #txt
Ad0 f12 startName '3. Animated XYChart' #txt
Ad0 f12 caseData businessCase.attach=true #txt
Ad0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start3.ivp</name>
    </language>
</elementInfo>
' #txt
Ad0 f12 @C|.responsibility Everybody #txt
Ad0 f12 81 417 30 30 -24 17 #rect
Ad0 f12 @|StartRequestIcon #fIcon
Ad0 f13 288 432 337 432 #arcP
Ad0 f14 111 432 160 432 #arcP
Ad0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demo with amCharts4 Javascript library integrated in JSF Dialogs&#13;
The data is provided by a REST Service in json and loaded from a json file</name>
    </language>
</elementInfo>
' #txt
Ad0 f15 32 26 416 44 -201 -16 #rect
Ad0 f15 @|IBIcon #fIcon
Ad0 f16 outLink start4.ivp #txt
Ad0 f16 inParamDecl '<> param;' #txt
Ad0 f16 requestEnabled true #txt
Ad0 f16 triggerEnabled false #txt
Ad0 f16 callSignature start4() #txt
Ad0 f16 startName '4. GeoMapChart' #txt
Ad0 f16 caseData businessCase.attach=true #txt
Ad0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start4.ivp</name>
    </language>
</elementInfo>
' #txt
Ad0 f16 @C|.responsibility Everybody #txt
Ad0 f16 81 553 30 30 -24 17 #rect
Ad0 f16 @|StartRequestIcon #fIcon
Ad0 f17 337 553 30 30 0 15 #rect
Ad0 f17 @|EndIcon #fIcon
Ad0 f18 dialogId amch.MapChart #txt
Ad0 f18 startMethod start() #txt
Ad0 f18 requestActionDecl '<> param;' #txt
Ad0 f18 responseMappingAction 'out=in;
' #txt
Ad0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DialogGeoMapChart</name>
    </language>
</elementInfo>
' #txt
Ad0 f18 160 546 128 44 -56 -8 #rect
Ad0 f18 @|UserDialogIcon #fIcon
Ad0 f19 111 568 160 568 #arcP
Ad0 f20 288 568 337 568 #arcP
Ad0 f21 outLink start5.ivp #txt
Ad0 f21 inParamDecl '<> param;' #txt
Ad0 f21 requestEnabled true #txt
Ad0 f21 triggerEnabled false #txt
Ad0 f21 callSignature start5() #txt
Ad0 f21 startName '5. HeatMapChart' #txt
Ad0 f21 caseData businessCase.attach=true #txt
Ad0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start5.ivp</name>
    </language>
</elementInfo>
' #txt
Ad0 f21 @C|.responsibility Everybody #txt
Ad0 f21 81 665 30 30 -24 17 #rect
Ad0 f21 @|StartRequestIcon #fIcon
Ad0 f22 337 665 30 30 0 15 #rect
Ad0 f22 @|EndIcon #fIcon
Ad0 f23 dialogId amch.HeatMapChart #txt
Ad0 f23 startMethod start() #txt
Ad0 f23 requestActionDecl '<> param;' #txt
Ad0 f23 responseMappingAction 'out=in;
' #txt
Ad0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DialogHeatMapChart</name>
    </language>
</elementInfo>
' #txt
Ad0 f23 160 658 128 44 -57 -8 #rect
Ad0 f23 @|UserDialogIcon #fIcon
Ad0 f24 111 680 160 680 #arcP
Ad0 f25 288 680 337 680 #arcP
>Proto Ad0 .type amch.Data #txt
>Proto Ad0 .processKind NORMAL #txt
>Proto Ad0 0 0 32 24 18 0 #rect
>Proto Ad0 @|BIcon #fIcon
Ad0 f0 mainOut f4 tail #connect
Ad0 f4 head f3 mainIn #connect
Ad0 f3 mainOut f2 tail #connect
Ad0 f2 head f1 mainIn #connect
Ad0 f6 mainOut f9 tail #connect
Ad0 f9 head f7 mainIn #connect
Ad0 f7 mainOut f8 tail #connect
Ad0 f8 head f5 mainIn #connect
Ad0 f12 mainOut f14 tail #connect
Ad0 f14 head f10 mainIn #connect
Ad0 f10 mainOut f13 tail #connect
Ad0 f13 head f11 mainIn #connect
Ad0 f16 mainOut f19 tail #connect
Ad0 f19 head f18 mainIn #connect
Ad0 f18 mainOut f20 tail #connect
Ad0 f20 head f17 mainIn #connect
Ad0 f21 mainOut f24 tail #connect
Ad0 f24 head f23 mainIn #connect
Ad0 f23 mainOut f25 tail #connect
Ad0 f25 head f22 mainIn #connect

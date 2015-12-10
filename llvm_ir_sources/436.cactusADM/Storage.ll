; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"Wrong value for dir\00", align 1
@_cctk_one = external global i32
@.str3 = private unnamed_addr constant [45 x i8] c"PUGH_ArrayGroupSize: Invalid group name '%s'\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"PUGH_ArrayGroupSize: Invalid group ID %d\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"Unknown group type in PUGH_QueryGroupStorage\00", align 1
@.str6 = private unnamed_addr constant [40 x i8] c"Inconsistency in PUGH_QueryGroupStorage\00", align 1
@pughpriv_ = external global %struct.anon.0
@.str7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@totalnumberGF = internal unnamed_addr global i32 0, align 4
@totalnumberGA = internal unnamed_addr global i32 0, align 4
@totalstorage = internal unnamed_addr global float 0.000000e+00, align 4
@maxstorage = internal unnamed_addr global float 0.000000e+00, align 4
@numberGF = internal unnamed_addr global i32 0, align 4
@numberGA = internal unnamed_addr global i32 0, align 4
@.str8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str9 = private unnamed_addr constant [73 x i8] c"Switched memory on for group '%s'  [GFs: %d GAs: %d Total Size: %6.2fMB]\00", align 1
@.str10 = private unnamed_addr constant [44 x i8] c"PUGH_EnableGroupStorage: Unknown group type\00", align 1
@.str11 = private unnamed_addr constant [64 x i8] c"PUGH_EnableGroupStorage: Error with cctkGH pointer for group %s\00", align 1
@.str12 = private unnamed_addr constant [42 x i8] c"PUGH_EnableGroupStorage: Invalid group %s\00", align 1
@.str13 = private unnamed_addr constant [47 x i8] c"Unknown group type in PUGH_DisableGroupStorage\00", align 1
@.str14 = private unnamed_addr constant [74 x i8] c"Switched memory off for group '%s'  [GFs: %d GAs: %d Total Size: %6.2fMB]\00", align 1
@.str15 = private unnamed_addr constant [34 x i8] c"Memory already off for group '%s'\00", align 1
@.str16 = private unnamed_addr constant [67 x i8] c"PUGH_DisableGroupStorage: Inconsistency in group memory assignment\00", align 1
@.str17 = private unnamed_addr constant [85 x i8] c"PUGH_EnableGArrayDataStorage: Tried to allocate storage for zero-sized variable '%s'\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str19 = private unnamed_addr constant [65 x i8] c"PUGH_EnableGArrayDataStorage: Cannot allocate data for '%s' [%d]\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"Storage statistics\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"  Maximum storage: %6.2fMB\00", align 1
@.str22 = private unnamed_addr constant [38 x i8] c"  [%d Grid Functions, %d Grid Arrays]\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str25 = private unnamed_addr constant [19 x i8] c"CCTK_VARIABLE_REAL\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"CCTK_VARIABLE_COMPLEX\00", align 1
@.str27 = private unnamed_addr constant [73 x i8] c"InitializeMemory: Unknown keyword '%s' for parameter 'initialize_memory'\00", align 1
@.str28 = private unnamed_addr constant [57 x i8] c"Group storage violation in PUGH_EnableGArrayGroupStorage\00", align 1
@.str29 = private unnamed_addr constant [87 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Storage.c,v 1.23 2001/11/06 11:19:35 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Storage_c() #0 {
entry:
  ret i8* getelementptr inbounds ([87 x i8]* @.str29, i64 0, i64 0), !dbg !534
}

; Function Attrs: nounwind optsize uwtable
define i32* @PUGH_ArrayGroupSize(%struct.cGH* %GH, i32 %dir, i32 %group, i8* %groupname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !56), !dbg !535
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !57), !dbg !536
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !58), !dbg !537
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !59), !dbg !538
  %tobool = icmp ne i8* %groupname, null, !dbg !539
  br i1 %tobool, label %if.then, label %if.end, !dbg !539

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !540
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !58), !dbg !540
  br label %if.end, !dbg !542

if.end:                                           ; preds = %if.then, %entry
  %group.addr.0 = phi i32 [ %call, %if.then ], [ %group, %entry ]
  %call2 = tail call i32 @CCTK_FirstVarIndexI(i32 %group.addr.0) #7, !dbg !543
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !60), !dbg !543
  %cmp = icmp sgt i32 %call2, -1, !dbg !544
  br i1 %cmp, label %if.then3, label %if.else18, !dbg !544

if.then3:                                         ; preds = %if.end
  %idxprom = sext i32 %call2 to i64, !dbg !545
  %call4 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !545
  %variables = getelementptr inbounds %struct.PGH* %call4, i64 0, i32 7, !dbg !545
  %0 = load i8**** %variables, align 8, !dbg !545, !tbaa !547
  %arrayidx = getelementptr inbounds i8*** %0, i64 %idxprom, !dbg !545
  %1 = load i8*** %arrayidx, align 8, !dbg !545, !tbaa !547
  %2 = load i8** %1, align 8, !dbg !545, !tbaa !547
  %storage = getelementptr inbounds i8* %2, i64 32, !dbg !550
  %3 = bitcast i8* %storage to i32*, !dbg !550
  %4 = load i32* %3, align 4, !dbg !550, !tbaa !551
  %cmp6 = icmp eq i32 %4, 1, !dbg !550
  br i1 %cmp6, label %if.then7, label %if.end25, !dbg !550

if.then7:                                         ; preds = %if.then3
  %cmp8 = icmp sgt i32 %dir, -1, !dbg !552
  br i1 %cmp8, label %land.lhs.true, label %if.else, !dbg !552

land.lhs.true:                                    ; preds = %if.then7
  %extras = getelementptr inbounds i8* %2, i64 56, !dbg !552
  %5 = bitcast i8* %extras to %struct.PGExtras**, !dbg !552
  %6 = load %struct.PGExtras** %5, align 8, !dbg !552, !tbaa !547
  %dim = getelementptr inbounds %struct.PGExtras* %6, i64 0, i32 0, !dbg !552
  %7 = load i32* %dim, align 4, !dbg !552, !tbaa !551
  %cmp9 = icmp sgt i32 %7, %dir, !dbg !552
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !552

if.then10:                                        ; preds = %land.lhs.true
  %idxprom11 = sext i32 %dir to i64, !dbg !554
  %lnsize = getelementptr inbounds %struct.PGExtras* %6, i64 0, i32 6, !dbg !554
  %8 = load i32** %lnsize, align 8, !dbg !554, !tbaa !547
  %arrayidx13 = getelementptr inbounds i32* %8, i64 %idxprom11, !dbg !554
  tail call void @llvm.dbg.value(metadata !{i32* %arrayidx13}, i64 0, metadata !132), !dbg !554
  br label %if.end25, !dbg !556

if.else:                                          ; preds = %land.lhs.true, %if.then7
  %call14 = tail call i32 @CCTK_Warn(i32 1, i32 131, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !557
  tail call void @llvm.dbg.value(metadata !559, i64 0, metadata !132), !dbg !560
  br label %if.end25

if.else18:                                        ; preds = %if.end
  br i1 %tobool, label %if.then20, label %if.else22, !dbg !561

if.then20:                                        ; preds = %if.else18
  %call21 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 144, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #7, !dbg !563
  br label %if.end25, !dbg !565

if.else22:                                        ; preds = %if.else18
  %call23 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), i32 %group.addr.0) #7, !dbg !566
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.else22, %if.then3, %if.else, %if.then10
  %retval1.0 = phi i32* [ %arrayidx13, %if.then10 ], [ null, %if.else ], [ @_cctk_one, %if.then3 ], [ null, %if.else22 ], [ null, %if.then20 ]
  ret i32* %retval1.0, !dbg !568
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #3

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_QueryGroupStorage(%struct.cGH* %GH, i32 %group, i8* %groupname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !137), !dbg !569
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !138), !dbg !569
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !139), !dbg !569
  tail call void @llvm.dbg.value(metadata !570, i64 0, metadata !144), !dbg !571
  %tobool = icmp ne i8* %groupname, null, !dbg !572
  br i1 %tobool, label %if.then, label %if.end, !dbg !572

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !573
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !138), !dbg !573
  br label %if.end, !dbg !575

if.end:                                           ; preds = %if.then, %entry
  %group.addr.0 = phi i32 [ %call, %if.then ], [ %group, %entry ]
  %call2 = tail call i32 @CCTK_FirstVarIndexI(i32 %group.addr.0) #7, !dbg !576
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !140), !dbg !576
  %cmp = icmp sgt i32 %call2, -1, !dbg !577
  br i1 %cmp, label %if.then3, label %if.else38, !dbg !577

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !578
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %call4}, i64 0, metadata !145), !dbg !578
  %call5 = tail call i32 @CCTK_GroupTypeI(i32 %group.addr.0) #7, !dbg !580
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !142), !dbg !580
  %cmp6 = icmp eq i32 %call5, 1, !dbg !581
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !581

if.then7:                                         ; preds = %if.then3
  %call8 = tail call i32 @CCTK_VarTypeI(i32 %call2) #7, !dbg !582
  %call9 = tail call i32 @CCTK_VarTypeSize(i32 %call8) #7, !dbg !582
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !143), !dbg !582
  %idxprom = sext i32 %call9 to i64, !dbg !584
  %idxprom10 = sext i32 %call2 to i64, !dbg !584
  %variables = getelementptr inbounds %struct.PGH* %call4, i64 0, i32 7, !dbg !584
  %0 = load i8**** %variables, align 8, !dbg !584, !tbaa !547
  %arrayidx = getelementptr inbounds i8*** %0, i64 %idxprom10, !dbg !584
  %1 = load i8*** %arrayidx, align 8, !dbg !584, !tbaa !547
  %2 = load i8** %1, align 8, !dbg !584, !tbaa !547
  %arrayidx12 = getelementptr inbounds i8* %2, i64 %idxprom, !dbg !584
  %3 = load i8* %arrayidx12, align 1, !dbg !584, !tbaa !548
  %conv = sext i8 %3 to i32, !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !141), !dbg !584
  br label %if.end26, !dbg !585

if.else:                                          ; preds = %if.then3
  %4 = and i32 %call5, -2, !dbg !586
  %5 = icmp eq i32 %4, 2, !dbg !586
  br i1 %5, label %if.then17, label %if.end26.thread, !dbg !586

if.then17:                                        ; preds = %if.else
  %idxprom18 = sext i32 %call2 to i64, !dbg !587
  %variables19 = getelementptr inbounds %struct.PGH* %call4, i64 0, i32 7, !dbg !587
  %6 = load i8**** %variables19, align 8, !dbg !587, !tbaa !547
  %arrayidx20 = getelementptr inbounds i8*** %6, i64 %idxprom18, !dbg !587
  %7 = load i8*** %arrayidx20, align 8, !dbg !587, !tbaa !547
  %8 = load i8** %7, align 8, !dbg !587, !tbaa !547
  %storage22 = getelementptr inbounds i8* %8, i64 32, !dbg !587
  %9 = bitcast i8* %storage22 to i32*, !dbg !587
  %10 = load i32* %9, align 4, !dbg !587, !tbaa !551
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !141), !dbg !587
  br label %if.end26, !dbg !589

if.end26.thread:                                  ; preds = %if.else
  tail call void @llvm.dbg.value(metadata !570, i64 0, metadata !141), !dbg !590
  %call24 = tail call i32 @CCTK_Warn(i32 1, i32 233, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !592
  br label %if.else34, !dbg !593

if.end26:                                         ; preds = %if.then17, %if.then7
  %storage.0 = phi i32 [ %conv, %if.then7 ], [ %10, %if.then17 ]
  switch i32 %storage.0, label %if.else34 [
    i32 1, label %if.end45
    i32 0, label %if.then33
  ], !dbg !593

if.then33:                                        ; preds = %if.end26
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !144), !dbg !594
  br label %if.end45, !dbg !596

if.else34:                                        ; preds = %if.end26.thread, %if.end26
  %call35 = tail call i32 @CCTK_Warn(i32 1, i32 246, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !597
  br label %if.end45

if.else38:                                        ; preds = %if.end
  br i1 %tobool, label %if.then40, label %if.else42, !dbg !599

if.then40:                                        ; preds = %if.else38
  %call41 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 253, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #7, !dbg !601
  br label %if.end45, !dbg !603

if.else42:                                        ; preds = %if.else38
  %call43 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 259, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), i32 %group.addr.0) #7, !dbg !604
  br label %if.end45

if.end45:                                         ; preds = %if.end26, %if.then40, %if.else42, %if.else34, %if.then33
  %retval1.0 = phi i32 [ 0, %if.then33 ], [ -1, %if.else34 ], [ -1, %if.then40 ], [ -1, %if.else42 ], [ 1, %if.end26 ]
  ret i32 %retval1.0, !dbg !606
}

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_EnableGroupStorage(%struct.cGH* %GH, i8* %groupname) #1 {
entry:
  %pgroup = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !182), !dbg !607
  call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !183), !dbg !607
  %0 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !dbg !608, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !206), !dbg !608
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %pgroup}, metadata !251), !dbg !609
  %call = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !610
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call}, i64 0, metadata !266), !dbg !610
  %call2 = call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !611
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !249), !dbg !611
  %tobool = icmp ne %struct.PGH* %call, null, !dbg !612
  %cmp = icmp sgt i32 %call2, -1, !dbg !612
  %or.cond = and i1 %tobool, %cmp, !dbg !612
  br i1 %or.cond, label %if.then, label %if.else53, !dbg !612

if.then:                                          ; preds = %entry
  %call3 = call i32 @CCTK_FirstVarIndexI(i32 %call2) #7, !dbg !613
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !250), !dbg !613
  %call4 = call i32 @CCTK_GroupData(i32 %call2, %struct.cGroup* %pgroup) #7, !dbg !615
  %grouptype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !616
  %1 = load i32* %grouptype, align 4, !dbg !616, !tbaa !551
  switch i32 %1, label %if.else49 [
    i32 1, label %if.then6
    i32 2, label %if.then12
    i32 3, label %if.then12
  ], !dbg !616

if.then6:                                         ; preds = %if.then
  %numvars = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !617
  %2 = load i32* %numvars, align 4, !dbg !617, !tbaa !551
  %numtimelevels = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !617
  %3 = load i32* %numtimelevels, align 4, !dbg !617, !tbaa !551
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call}, i64 0, metadata !619) #5, !dbg !620
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !621) #5, !dbg !622
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !623) #5, !dbg !624
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !625) #5, !dbg !626
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 1), align 8, !dbg !627, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !628) #5, !dbg !627
  %call.i = call i32 @CCTK_VarTypeI(i32 %call3) #7, !dbg !629
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !630) #5, !dbg !629
  %call2.i = call i32 @CCTK_VarTypeSize(i32 %call.i) #7, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !632) #5, !dbg !631
  %idxprom.i = sext i32 %call3 to i64, !dbg !633
  %variables.i = getelementptr inbounds %struct.PGH* %call, i64 0, i32 7, !dbg !633
  %5 = load i8**** %variables.i, align 8, !dbg !633, !tbaa !547
  %arrayidx.i = getelementptr inbounds i8*** %5, i64 %idxprom.i, !dbg !633
  %6 = load i8*** %arrayidx.i, align 8, !dbg !633, !tbaa !547
  %7 = load i8** %6, align 8, !dbg !633, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %7}, i64 0, metadata !634) #5, !dbg !633
  %idxprom4.i = sext i32 %call2.i to i64, !dbg !635
  %arrayidx5.i = getelementptr inbounds i8* %7, i64 %idxprom4.i, !dbg !635
  %8 = load i8* %arrayidx5.i, align 1, !dbg !635, !tbaa !548
  %cmp.i = icmp eq i8 %8, 1, !dbg !635
  %conv6.i = zext i1 %cmp.i to i32, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %conv6.i}, i64 0, metadata !636) #5, !dbg !635
  %cmp.not.i = xor i1 %cmp.i, true, !dbg !637
  %cmp743.i = icmp sgt i32 %2, 0, !dbg !638
  %or.cond.i = and i1 %cmp743.i, %cmp.not.i, !dbg !637
  br i1 %or.cond.i, label %for.cond9.preheader.lr.ph.i, label %if.end60, !dbg !637

for.cond9.preheader.lr.ph.i:                      ; preds = %if.then6
  %cmp1041.i = icmp sgt i32 %3, 0, !dbg !641
  br label %for.cond9.preheader.i, !dbg !638

for.cond9.preheader.i:                            ; preds = %for.inc23.i, %for.cond9.preheader.lr.ph.i
  %indvars.iv45.i = phi i64 [ 0, %for.cond9.preheader.lr.ph.i ], [ %indvars.iv.next46.i, %for.inc23.i ]
  br i1 %cmp1041.i, label %for.body12.lr.ph.i, label %for.inc23.i, !dbg !641

for.body12.lr.ph.i:                               ; preds = %for.cond9.preheader.i
  %9 = add nsw i64 %indvars.iv45.i, %idxprom.i, !dbg !644
  br label %for.body12.i, !dbg !641

for.body12.i:                                     ; preds = %for.inc.i, %for.body12.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %10 = load i8**** %variables.i, align 8, !dbg !644, !tbaa !547
  %arrayidx16.i = getelementptr inbounds i8*** %10, i64 %9, !dbg !644
  %11 = load i8*** %arrayidx16.i, align 8, !dbg !644, !tbaa !547
  %arrayidx17.i = getelementptr inbounds i8** %11, i64 %indvars.iv.i, !dbg !644
  %12 = load i8** %arrayidx17.i, align 8, !dbg !644, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !634) #5, !dbg !644
  %arrayidx19.i = getelementptr inbounds i8* %12, i64 %idxprom4.i, !dbg !646
  store i8 1, i8* %arrayidx19.i, align 1, !dbg !646, !tbaa !548
  %call20.i = call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !647
  %tobool21.i = icmp eq i32 %call20.i, 0, !dbg !647
  br i1 %tobool21.i, label %if.then22.i, label %for.inc.i, !dbg !647

if.then22.i:                                      ; preds = %for.body12.i
  call fastcc void @PUGH_InitializeMemory(i8* %4, i32 %call.i, i32 %call2.i, i8* %12) #7, !dbg !648
  br label %for.inc.i, !dbg !650

for.inc.i:                                        ; preds = %if.then22.i, %for.body12.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !641
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !641
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !641
  br i1 %exitcond, label %for.inc23.i, label %for.body12.i, !dbg !641

for.inc23.i:                                      ; preds = %for.inc.i, %for.cond9.preheader.i
  %indvars.iv.next46.i = add i64 %indvars.iv45.i, 1, !dbg !638
  %lftr.wideiv86 = trunc i64 %indvars.iv.next46.i to i32, !dbg !638
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %2, !dbg !638
  br i1 %exitcond87, label %if.end60, label %for.cond9.preheader.i, !dbg !638

if.then12:                                        ; preds = %if.then, %if.then
  %numvars13 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !651
  %13 = load i32* %numvars13, align 4, !dbg !651, !tbaa !551
  %numtimelevels14 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !651
  %14 = load i32* %numtimelevels14, align 4, !dbg !651, !tbaa !551
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call}, i64 0, metadata !653) #5, !dbg !654
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !655) #5, !dbg !656
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !657) #5, !dbg !658
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !659) #5, !dbg !660
  %15 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 1), align 8, !dbg !661, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %15}, i64 0, metadata !662) #5, !dbg !661
  %16 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 32), align 4, !dbg !661, !tbaa !551
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !663) #5, !dbg !661
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !664) #5, !dbg !665
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !666) #5, !dbg !665
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !667) #5, !dbg !668
  %add.i = add nsw i32 %13, %call3, !dbg !668
  %cmp53.i = icmp sgt i32 %13, 0, !dbg !668
  br i1 %cmp53.i, label %for.cond2.preheader.lr.ph.i, label %if.else28.i, !dbg !668

for.cond2.preheader.lr.ph.i:                      ; preds = %if.then12
  %cmp348.i = icmp sgt i32 %14, 0, !dbg !670
  %variables.i75 = getelementptr inbounds %struct.PGH* %call, i64 0, i32 7, !dbg !673
  %callerid.i = getelementptr inbounds %struct.PGH* %call, i64 0, i32 0, !dbg !675
  %17 = sext i32 %call3 to i64
  br label %for.cond2.preheader.i, !dbg !668

for.cond2.preheader.i:                            ; preds = %for.inc21.i, %for.cond2.preheader.lr.ph.i
  %indvars.iv59.i = phi i64 [ %17, %for.cond2.preheader.lr.ph.i ], [ %indvars.iv.next60.i, %for.inc21.i ]
  %nstorage.056.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %nstorage.1.lcssa.i, %for.inc21.i ]
  %nnostorage.054.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %nnostorage.1.lcssa.i, %for.inc21.i ]
  br i1 %cmp348.i, label %for.body4.i, label %for.inc21.i, !dbg !670

for.body4.i:                                      ; preds = %for.cond2.preheader.i, %for.inc.i83
  %indvars.iv.i76 = phi i64 [ %indvars.iv.next.i80, %for.inc.i83 ], [ 0, %for.cond2.preheader.i ]
  %nstorage.150.i = phi i32 [ %nstorage.2.i, %for.inc.i83 ], [ %nstorage.056.i, %for.cond2.preheader.i ]
  %nnostorage.149.i = phi i32 [ %nnostorage.2.i, %for.inc.i83 ], [ %nnostorage.054.i, %for.cond2.preheader.i ]
  %18 = load i8**** %variables.i75, align 8, !dbg !673, !tbaa !547
  %arrayidx.i77 = getelementptr inbounds i8*** %18, i64 %indvars.iv59.i, !dbg !673
  %19 = load i8*** %arrayidx.i77, align 8, !dbg !673, !tbaa !547
  %arrayidx6.i = getelementptr inbounds i8** %19, i64 %indvars.iv.i76, !dbg !673
  %20 = load i8** %arrayidx6.i, align 8, !dbg !673, !tbaa !547
  %storage.i = getelementptr inbounds i8* %20, i64 32, !dbg !677
  %21 = bitcast i8* %storage.i to i32*, !dbg !677
  %22 = load i32* %21, align 4, !dbg !677, !tbaa !551
  %tobool.i = icmp eq i32 %22, 0, !dbg !677
  br i1 %tobool.i, label %if.then.i, label %if.else.i, !dbg !677

if.then.i:                                        ; preds = %for.body4.i
  %23 = bitcast i8* %20 to %struct.PGA*, !dbg !673
  %call.i78 = call i32 @PUGH_EnableGArrayDataStorage(%struct.PGA* %23, i32 undef, i8* %15, i32 %16, i32 undef, i32 undef, i32 undef) #7, !dbg !678
  %data.i = getelementptr inbounds i8* %20, i64 24, !dbg !675
  %24 = bitcast i8* %data.i to i8**, !dbg !675
  %25 = load i8** %24, align 8, !dbg !675, !tbaa !547
  %26 = load i8** %callerid.i, align 8, !dbg !675, !tbaa !547
  %data9.i = getelementptr inbounds i8* %26, i64 128, !dbg !675
  %27 = bitcast i8* %data9.i to i8****, !dbg !675
  %28 = load i8**** %27, align 8, !dbg !675, !tbaa !547
  %arrayidx10.i = getelementptr inbounds i8*** %28, i64 %indvars.iv59.i, !dbg !675
  %29 = load i8*** %arrayidx10.i, align 8, !dbg !675, !tbaa !547
  %arrayidx11.i = getelementptr inbounds i8** %29, i64 %indvars.iv.i76, !dbg !675
  store i8* %25, i8** %arrayidx11.i, align 8, !dbg !675, !tbaa !547
  %inc.i = add nsw i32 %nnostorage.149.i, 1, !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !664) #5, !dbg !679
  br label %for.inc.i83, !dbg !680

if.else.i:                                        ; preds = %for.body4.i
  %data12.i = getelementptr inbounds i8* %20, i64 24, !dbg !681
  %30 = bitcast i8* %data12.i to i8**, !dbg !681
  %31 = load i8** %30, align 8, !dbg !681, !tbaa !547
  %32 = load i8** %callerid.i, align 8, !dbg !681, !tbaa !547
  %data16.i = getelementptr inbounds i8* %32, i64 128, !dbg !681
  %33 = bitcast i8* %data16.i to i8****, !dbg !681
  %34 = load i8**** %33, align 8, !dbg !681, !tbaa !547
  %arrayidx17.i79 = getelementptr inbounds i8*** %34, i64 %indvars.iv59.i, !dbg !681
  %35 = load i8*** %arrayidx17.i79, align 8, !dbg !681, !tbaa !547
  %arrayidx18.i = getelementptr inbounds i8** %35, i64 %indvars.iv.i76, !dbg !681
  store i8* %31, i8** %arrayidx18.i, align 8, !dbg !681, !tbaa !547
  %inc19.i = add nsw i32 %nstorage.150.i, 1, !dbg !683
  call void @llvm.dbg.value(metadata !{i32 %inc19.i}, i64 0, metadata !666) #5, !dbg !683
  br label %for.inc.i83

for.inc.i83:                                      ; preds = %if.else.i, %if.then.i
  %nnostorage.2.i = phi i32 [ %nnostorage.149.i, %if.else.i ], [ %inc.i, %if.then.i ]
  %nstorage.2.i = phi i32 [ %inc19.i, %if.else.i ], [ %nstorage.150.i, %if.then.i ]
  %indvars.iv.next.i80 = add i64 %indvars.iv.i76, 1, !dbg !670
  %lftr.wideiv88 = trunc i64 %indvars.iv.next.i80 to i32, !dbg !670
  %exitcond89 = icmp eq i32 %lftr.wideiv88, %14, !dbg !670
  br i1 %exitcond89, label %for.inc21.i, label %for.body4.i, !dbg !670

for.inc21.i:                                      ; preds = %for.inc.i83, %for.cond2.preheader.i
  %nstorage.1.lcssa.i = phi i32 [ %nstorage.056.i, %for.cond2.preheader.i ], [ %nstorage.2.i, %for.inc.i83 ]
  %nnostorage.1.lcssa.i = phi i32 [ %nnostorage.054.i, %for.cond2.preheader.i ], [ %nnostorage.2.i, %for.inc.i83 ]
  %indvars.iv.next60.i = add i64 %indvars.iv59.i, 1, !dbg !668
  %36 = trunc i64 %indvars.iv.next60.i to i32, !dbg !668
  %cmp.i84 = icmp slt i32 %36, %add.i, !dbg !668
  br i1 %cmp.i84, label %for.cond2.preheader.i, label %for.end23.i, !dbg !668

for.end23.i:                                      ; preds = %for.inc21.i
  %cmp24.i = icmp sgt i32 %nstorage.1.lcssa.i, 0, !dbg !684
  %cmp25.i = icmp sgt i32 %nnostorage.1.lcssa.i, 0, !dbg !684
  %or.cond.i85 = and i1 %cmp24.i, %cmp25.i, !dbg !684
  br i1 %or.cond.i85, label %if.then26.i, label %if.else28.i, !dbg !684

if.then26.i:                                      ; preds = %for.end23.i
  %call27.i = call i32 @CCTK_Warn(i32 0, i32 713, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !685
  call void @llvm.dbg.value(metadata !570, i64 0, metadata !687) #5, !dbg !688
  br label %PUGH_EnableGArrayGroupStorage.exit, !dbg !689

if.else28.i:                                      ; preds = %for.end23.i, %if.then12
  %cmp2464.i = phi i1 [ %cmp24.i, %for.end23.i ], [ false, %if.then12 ]
  %cond.i = zext i1 %cmp2464.i to i32, !dbg !690
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !687) #5, !dbg !690
  br label %PUGH_EnableGArrayGroupStorage.exit

PUGH_EnableGArrayGroupStorage.exit:               ; preds = %if.then26.i, %if.else28.i
  %retval1.0.i = phi i32 [ -1, %if.then26.i ], [ %cond.i, %if.else28.i ]
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !693) #5, !dbg !694
  call void @llvm.dbg.value(metadata !{i32 %retval1.0.i}, i64 0, metadata !264), !dbg !651
  %call16 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !695
  %37 = or i32 %call16, %retval1.0.i, !dbg !695
  %38 = icmp eq i32 %37, 0, !dbg !695
  br i1 %38, label %if.then20, label %if.end60, !dbg !695

if.then20:                                        ; preds = %PUGH_EnableGArrayGroupStorage.exit
  %idxprom = sext i32 %call3 to i64, !dbg !696
  %variables = getelementptr inbounds %struct.PGH* %call, i64 0, i32 7, !dbg !696
  %39 = load i8**** %variables, align 8, !dbg !696, !tbaa !547
  %arrayidx = getelementptr inbounds i8*** %39, i64 %idxprom, !dbg !696
  %40 = load i8*** %arrayidx, align 8, !dbg !696, !tbaa !547
  %41 = load i8** %40, align 8, !dbg !696, !tbaa !547
  %42 = load i32* %grouptype, align 4, !dbg !698, !tbaa !551
  %cmp23 = icmp eq i32 %42, 2, !dbg !698
  %43 = load i32* %numvars13, align 4, !dbg !699, !tbaa !551
  %44 = load i32* %numtimelevels14, align 4, !dbg !699, !tbaa !551
  %mul = mul nsw i32 %44, %43, !dbg !699
  br i1 %cmp23, label %if.then24, label %if.else27, !dbg !698

if.then24:                                        ; preds = %if.then20
  %45 = load i32* @totalnumberGF, align 4, !dbg !699, !tbaa !551
  %add = add nsw i32 %45, %mul, !dbg !699
  store i32 %add, i32* @totalnumberGF, align 4, !dbg !699, !tbaa !551
  br label %if.end, !dbg !701

if.else27:                                        ; preds = %if.then20
  %46 = load i32* @totalnumberGA, align 4, !dbg !702, !tbaa !551
  %add31 = add nsw i32 %46, %mul, !dbg !702
  store i32 %add31, i32* @totalnumberGA, align 4, !dbg !702, !tbaa !551
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then24
  %extras = getelementptr inbounds i8* %41, i64 56, !dbg !704
  %47 = bitcast i8* %extras to %struct.PGExtras**, !dbg !704
  %48 = load %struct.PGExtras** %47, align 8, !dbg !704, !tbaa !547
  %npoints = getelementptr inbounds %struct.PGExtras* %48, i64 0, i32 7, !dbg !704
  %49 = load i32* %npoints, align 4, !dbg !704, !tbaa !551
  %varsize = getelementptr inbounds i8* %41, i64 48, !dbg !704
  %50 = bitcast i8* %varsize to i32*, !dbg !704
  %51 = load i32* %50, align 4, !dbg !704, !tbaa !551
  %mul32 = mul nsw i32 %51, %49, !dbg !704
  %mul34 = mul nsw i32 %mul32, %44, !dbg !704
  %mul36 = mul nsw i32 %mul34, %43, !dbg !704
  %conv = sitofp i32 %mul36 to float, !dbg !704
  %div = fmul float %conv, 0x3EB0000000000000, !dbg !704
  %52 = load float* @totalstorage, align 4, !dbg !704, !tbaa !705
  %add37 = fadd float %52, %div, !dbg !704
  store float %add37, float* @totalstorage, align 4, !dbg !704, !tbaa !705
  %53 = load float* @maxstorage, align 4, !dbg !706, !tbaa !705
  %cmp38 = fcmp ogt float %add37, %53, !dbg !706
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !706

if.then40:                                        ; preds = %if.end
  %54 = load i32* @totalnumberGF, align 4, !dbg !707, !tbaa !551
  store i32 %54, i32* @numberGF, align 4, !dbg !707, !tbaa !551
  %55 = load i32* @totalnumberGA, align 4, !dbg !709, !tbaa !551
  store i32 %55, i32* @numberGA, align 4, !dbg !709, !tbaa !551
  store float %add37, float* @maxstorage, align 4, !dbg !710, !tbaa !705
  br label %if.end41, !dbg !711

if.end41:                                         ; preds = %if.then40, %if.end
  %call42 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !712
  %tobool43 = icmp eq i32 %call42, 0, !dbg !712
  br i1 %tobool43, label %if.end60, label %if.then44, !dbg !712

if.then44:                                        ; preds = %if.end41
  %56 = load i32* @totalnumberGF, align 4, !dbg !713, !tbaa !551
  %57 = load i32* @totalnumberGA, align 4, !dbg !713, !tbaa !551
  %58 = load float* @totalstorage, align 4, !dbg !713, !tbaa !705
  %conv45 = fpext float %58 to double, !dbg !713
  %call46 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str9, i64 0, i64 0), i8* %groupname, i32 %56, i32 %57, double %conv45) #7, !dbg !713
  br label %if.end60, !dbg !715

if.else49:                                        ; preds = %if.then
  %call50 = call i32 @CCTK_Warn(i32 1, i32 377, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !716
  call void @llvm.dbg.value(metadata !570, i64 0, metadata !264), !dbg !718
  br label %if.end60

if.else53:                                        ; preds = %entry
  br i1 %tobool, label %if.else57, label %if.then55, !dbg !719

if.then55:                                        ; preds = %if.else53
  %call56 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 386, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str11, i64 0, i64 0), i8* %groupname) #7, !dbg !721
  call void @llvm.dbg.value(metadata !723, i64 0, metadata !264), !dbg !724
  br label %if.end60, !dbg !725

if.else57:                                        ; preds = %if.else53
  %call58 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 393, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str12, i64 0, i64 0), i8* %groupname) #7, !dbg !726
  call void @llvm.dbg.value(metadata !728, i64 0, metadata !264), !dbg !729
  br label %if.end60

if.end60:                                         ; preds = %for.inc23.i, %if.then6, %if.end41, %PUGH_EnableGArrayGroupStorage.exit, %if.then55, %if.else57, %if.then44, %if.else49
  %retval1.0 = phi i32 [ %retval1.0.i, %PUGH_EnableGArrayGroupStorage.exit ], [ %retval1.0.i, %if.then44 ], [ %retval1.0.i, %if.end41 ], [ -1, %if.else49 ], [ -3, %if.else57 ], [ -2, %if.then55 ], [ %conv6.i, %if.then6 ], [ %conv6.i, %for.inc23.i ]
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !246), !dbg !730
  ret i32 %retval1.0, !dbg !730
}

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_DisableGroupStorage(%struct.cGH* %GH, i8* %groupname) #1 {
entry:
  %pgroup = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !269), !dbg !731
  call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !270), !dbg !731
  %0 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !dbg !732, !tbaa !547
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !293), !dbg !732
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %pgroup}, metadata !334), !dbg !733
  %call = call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !734
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !333), !dbg !734
  %call2 = call i32 @CCTK_GroupData(i32 %call, %struct.cGroup* %pgroup) #7, !dbg !735
  %call3 = call i32 @CCTK_FirstVarIndexI(i32 %call) #7, !dbg !736
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !340), !dbg !736
  %call4 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !737
  %variables5 = getelementptr inbounds %struct.PGH* %call4, i64 0, i32 7, !dbg !737
  %1 = load i8**** %variables5, align 8, !dbg !737, !tbaa !547
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !343), !dbg !738
  call void @llvm.dbg.value(metadata !739, i64 0, metadata !336), !dbg !740
  %grouptype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !741
  %2 = load i32* %grouptype, align 4, !dbg !741, !tbaa !551
  switch i32 %2, label %if.else51 [
    i32 2, label %for.cond.preheader
    i32 3, label %for.cond.preheader
    i32 1, label %if.then21
  ], !dbg !741

for.cond.preheader:                               ; preds = %entry, %entry
  %numvars = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !742
  %3 = load i32* %numvars, align 4, !dbg !742, !tbaa !551
  %cmp8152 = icmp sgt i32 %3, 0, !dbg !742
  br i1 %cmp8152, label %for.cond9.preheader.lr.ph, label %if.end54, !dbg !742

for.cond9.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %numtimelevels = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !745
  %4 = sext i32 %call3 to i64
  %.pre174 = load i32* %numtimelevels, align 4, !dbg !745, !tbaa !551
  br label %for.cond9.preheader, !dbg !742

for.cond9.preheader:                              ; preds = %for.cond9.preheader.lr.ph, %for.inc16
  %5 = phi i32 [ %3, %for.cond9.preheader.lr.ph ], [ %10, %for.inc16 ]
  %6 = phi i32 [ %.pre174, %for.cond9.preheader.lr.ph ], [ %11, %for.inc16 ], !dbg !745
  %indvars.iv166 = phi i64 [ %4, %for.cond9.preheader.lr.ph ], [ %indvars.iv.next167, %for.inc16 ]
  %unchanged.0154 = phi i32 [ 0, %for.cond9.preheader.lr.ph ], [ %unchanged.1.lcssa, %for.inc16 ]
  %cmp10148 = icmp sgt i32 %6, 0, !dbg !745
  br i1 %cmp10148, label %for.body11.lr.ph, label %for.inc16, !dbg !745

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %arrayidx144 = getelementptr inbounds i8*** %1, i64 %indvars.iv166, !dbg !748
  br label %for.body11, !dbg !745

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %indvars.iv = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next, %for.body11 ]
  %unchanged.1150 = phi i32 [ %unchanged.0154, %for.body11.lr.ph ], [ %add15, %for.body11 ]
  %arrayidx145 = load i8*** %arrayidx144, align 8, !dbg !748
  %arrayidx13146 = getelementptr inbounds i8** %arrayidx145, i64 %indvars.iv, !dbg !748
  %arrayidx13147 = load i8** %arrayidx13146, align 8, !dbg !748
  %7 = bitcast i8* %arrayidx13147 to %struct.PGA*, !dbg !748
  %call14 = call i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* %7) #8, !dbg !748
  %add15 = add nsw i32 %call14, %unchanged.1150, !dbg !748
  call void @llvm.dbg.value(metadata !{i32 %add15}, i64 0, metadata !343), !dbg !748
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !745
  %8 = load i32* %numtimelevels, align 4, !dbg !745, !tbaa !551
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !745
  %cmp10 = icmp slt i32 %9, %8, !dbg !745
  br i1 %cmp10, label %for.body11, label %for.cond9.for.inc16_crit_edge, !dbg !745

for.cond9.for.inc16_crit_edge:                    ; preds = %for.body11
  %.pre175 = load i32* %numvars, align 4, !dbg !742, !tbaa !551
  br label %for.inc16, !dbg !745

for.inc16:                                        ; preds = %for.cond9.for.inc16_crit_edge, %for.cond9.preheader
  %10 = phi i32 [ %.pre175, %for.cond9.for.inc16_crit_edge ], [ %5, %for.cond9.preheader ], !dbg !742
  %11 = phi i32 [ %8, %for.cond9.for.inc16_crit_edge ], [ %6, %for.cond9.preheader ]
  %unchanged.1.lcssa = phi i32 [ %add15, %for.cond9.for.inc16_crit_edge ], [ %unchanged.0154, %for.cond9.preheader ]
  %indvars.iv.next167 = add i64 %indvars.iv166, 1, !dbg !742
  %add = add nsw i32 %10, %call3, !dbg !742
  %12 = trunc i64 %indvars.iv.next167 to i32, !dbg !742
  %cmp8 = icmp slt i32 %12, %add, !dbg !742
  br i1 %cmp8, label %for.cond9.preheader, label %if.end54, !dbg !742

if.then21:                                        ; preds = %entry
  %vartype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 1, !dbg !750
  %13 = load i32* %vartype, align 4, !dbg !750, !tbaa !551
  %call22 = call i32 @CCTK_VarTypeSize(i32 %13) #7, !dbg !750
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !335), !dbg !750
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !341), !dbg !752
  %numvars24 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !752
  %14 = load i32* %numvars24, align 4, !dbg !752, !tbaa !551
  %cmp26162 = icmp sgt i32 %14, 0, !dbg !752
  br i1 %cmp26162, label %for.cond28.preheader.lr.ph, label %if.end54, !dbg !752

for.cond28.preheader.lr.ph:                       ; preds = %if.then21
  %numtimelevels29 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !754
  %idxprom36 = sext i32 %call22 to i64, !dbg !757
  %15 = sext i32 %call3 to i64
  %.pre = load i32* %numtimelevels29, align 4, !dbg !754, !tbaa !551
  br label %for.cond28.preheader, !dbg !752

for.cond28.preheader:                             ; preds = %for.cond28.preheader.lr.ph, %for.inc48
  %16 = phi i32 [ %14, %for.cond28.preheader.lr.ph ], [ %22, %for.inc48 ]
  %17 = phi i32 [ %.pre, %for.cond28.preheader.lr.ph ], [ %23, %for.inc48 ], !dbg !754
  %indvars.iv170 = phi i64 [ %15, %for.cond28.preheader.lr.ph ], [ %indvars.iv.next171, %for.inc48 ]
  %unchanged.2164 = phi i32 [ 0, %for.cond28.preheader.lr.ph ], [ %unchanged.3.lcssa, %for.inc48 ]
  %cmp30156 = icmp sgt i32 %17, 0, !dbg !754
  br i1 %cmp30156, label %for.body31.lr.ph, label %for.inc48, !dbg !754

for.body31.lr.ph:                                 ; preds = %for.cond28.preheader
  %arrayidx34140 = getelementptr inbounds i8*** %1, i64 %indvars.iv170, !dbg !759
  br label %for.body31, !dbg !754

for.body31:                                       ; preds = %for.inc45, %for.body31.lr.ph
  %18 = phi i32 [ %17, %for.body31.lr.ph ], [ %20, %for.inc45 ]
  %indvars.iv168 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next169, %for.inc45 ]
  %unchanged.3158 = phi i32 [ %unchanged.2164, %for.body31.lr.ph ], [ %unchanged.4, %for.inc45 ]
  %arrayidx34141 = load i8*** %arrayidx34140, align 8, !dbg !759
  %arrayidx35142 = getelementptr inbounds i8** %arrayidx34141, i64 %indvars.iv168, !dbg !759
  %arrayidx35143 = load i8** %arrayidx35142, align 8, !dbg !759
  call void @llvm.dbg.value(metadata !{i8* %arrayidx35143}, i64 0, metadata !344), !dbg !759
  %arrayidx37 = getelementptr inbounds i8* %arrayidx35143, i64 %idxprom36, !dbg !757
  %19 = load i8* %arrayidx37, align 1, !dbg !757, !tbaa !548
  %cmp38 = icmp eq i8 %19, 1, !dbg !757
  br i1 %cmp38, label %if.then40, label %if.else43, !dbg !757

if.then40:                                        ; preds = %for.body31
  store i8 0, i8* %arrayidx37, align 1, !dbg !760, !tbaa !548
  %.pre173 = load i32* %numtimelevels29, align 4, !dbg !754, !tbaa !551
  br label %for.inc45, !dbg !762

if.else43:                                        ; preds = %for.body31
  %inc44 = add nsw i32 %unchanged.3158, 1, !dbg !763
  call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !343), !dbg !763
  br label %for.inc45

for.inc45:                                        ; preds = %if.then40, %if.else43
  %20 = phi i32 [ %.pre173, %if.then40 ], [ %18, %if.else43 ], !dbg !754
  %unchanged.4 = phi i32 [ %unchanged.3158, %if.then40 ], [ %inc44, %if.else43 ]
  %indvars.iv.next169 = add i64 %indvars.iv168, 1, !dbg !754
  %21 = trunc i64 %indvars.iv.next169 to i32, !dbg !754
  %cmp30 = icmp slt i32 %21, %20, !dbg !754
  br i1 %cmp30, label %for.body31, label %for.cond28.for.inc48_crit_edge, !dbg !754

for.cond28.for.inc48_crit_edge:                   ; preds = %for.inc45
  %.pre172 = load i32* %numvars24, align 4, !dbg !752, !tbaa !551
  br label %for.inc48, !dbg !754

for.inc48:                                        ; preds = %for.cond28.for.inc48_crit_edge, %for.cond28.preheader
  %22 = phi i32 [ %.pre172, %for.cond28.for.inc48_crit_edge ], [ %16, %for.cond28.preheader ], !dbg !752
  %23 = phi i32 [ %20, %for.cond28.for.inc48_crit_edge ], [ %17, %for.cond28.preheader ]
  %unchanged.3.lcssa = phi i32 [ %unchanged.4, %for.cond28.for.inc48_crit_edge ], [ %unchanged.2164, %for.cond28.preheader ]
  %indvars.iv.next171 = add i64 %indvars.iv170, 1, !dbg !752
  %add25 = add nsw i32 %22, %call3, !dbg !752
  %24 = trunc i64 %indvars.iv.next171 to i32, !dbg !752
  %cmp26 = icmp slt i32 %24, %add25, !dbg !752
  br i1 %cmp26, label %for.cond28.preheader, label %if.end54, !dbg !752

if.else51:                                        ; preds = %entry
  %call52 = call i32 @CCTK_Warn(i32 1, i32 493, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !765
  call void @llvm.dbg.value(metadata !570, i64 0, metadata !336), !dbg !767
  br label %if.end54

if.end54:                                         ; preds = %if.then21, %for.inc48, %for.cond.preheader, %for.inc16, %if.else51
  %unchanged.5 = phi i32 [ 0, %if.else51 ], [ 0, %for.cond.preheader ], [ %unchanged.1.lcssa, %for.inc16 ], [ 0, %if.then21 ], [ %unchanged.3.lcssa, %for.inc48 ]
  %retval1.0 = phi i32 [ -1, %if.else51 ], [ 1, %for.cond.preheader ], [ 1, %for.inc16 ], [ 1, %if.then21 ], [ 1, %for.inc48 ]
  %call55 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !768
  %tobool = icmp eq i32 %call55, 0, !dbg !768
  %cmp56 = icmp sgt i32 %retval1.0, -1, !dbg !768
  %or.cond = and i1 %tobool, %cmp56, !dbg !768
  br i1 %or.cond, label %if.then58, label %if.end108, !dbg !768

if.then58:                                        ; preds = %if.end54
  %cmp59 = icmp eq i32 %unchanged.5, 0, !dbg !769
  br i1 %cmp59, label %if.then61, label %if.else94, !dbg !769

if.then61:                                        ; preds = %if.then58
  %25 = load i32* %grouptype, align 4, !dbg !771, !tbaa !551
  switch i32 %25, label %if.then61.if.end75_crit_edge [
    i32 2, label %if.then65
    i32 3, label %if.then71
  ], !dbg !771

if.then61.if.end75_crit_edge:                     ; preds = %if.then61
  %numvars84.phi.trans.insert = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %.pre176 = load i32* %numvars84.phi.trans.insert, align 4, !dbg !773, !tbaa !551
  br label %if.end75, !dbg !771

if.then65:                                        ; preds = %if.then61
  %numvars66 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !774
  %26 = load i32* %numvars66, align 4, !dbg !774, !tbaa !551
  %27 = load i32* @totalnumberGF, align 4, !dbg !774, !tbaa !551
  %sub = sub nsw i32 %27, %26, !dbg !774
  store i32 %sub, i32* @totalnumberGF, align 4, !dbg !774, !tbaa !551
  br label %if.end75, !dbg !776

if.then71:                                        ; preds = %if.then61
  %numvars72 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !777
  %28 = load i32* %numvars72, align 4, !dbg !777, !tbaa !551
  %29 = load i32* @totalnumberGA, align 4, !dbg !777, !tbaa !551
  %sub73 = sub nsw i32 %29, %28, !dbg !777
  store i32 %sub73, i32* @totalnumberGA, align 4, !dbg !777, !tbaa !551
  br label %if.end75, !dbg !779

if.end75:                                         ; preds = %if.then61.if.end75_crit_edge, %if.then71, %if.then65
  %30 = phi i32 [ %.pre176, %if.then61.if.end75_crit_edge ], [ %28, %if.then71 ], [ %26, %if.then65 ]
  %idxprom76 = sext i32 %call3 to i64, !dbg !773
  %arrayidx77138 = getelementptr inbounds i8*** %1, i64 %idxprom76, !dbg !773
  %arrayidx77139 = load i8*** %arrayidx77138, align 8, !dbg !773
  %31 = load i8** %arrayidx77139, align 8, !dbg !773
  %extras = getelementptr inbounds i8* %31, i64 56, !dbg !773
  %32 = bitcast i8* %extras to %struct.PGExtras**, !dbg !773
  %33 = load %struct.PGExtras** %32, align 8, !dbg !773, !tbaa !547
  %npoints = getelementptr inbounds %struct.PGExtras* %33, i64 0, i32 7, !dbg !773
  %34 = load i32* %npoints, align 4, !dbg !773, !tbaa !551
  %varsize = getelementptr inbounds i8* %31, i64 48, !dbg !773
  %35 = bitcast i8* %varsize to i32*, !dbg !773
  %36 = load i32* %35, align 4, !dbg !773, !tbaa !551
  %mul = mul nsw i32 %36, %34, !dbg !773
  %numtimelevels82 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !773
  %37 = load i32* %numtimelevels82, align 4, !dbg !773, !tbaa !551
  %mul83 = mul nsw i32 %mul, %37, !dbg !773
  %mul85 = mul nsw i32 %mul83, %30, !dbg !773
  %conv86 = sitofp i32 %mul85 to float, !dbg !773
  %div = fmul float %conv86, 0x3EB0000000000000, !dbg !773
  %38 = load float* @totalstorage, align 4, !dbg !773, !tbaa !705
  %sub87 = fsub float %38, %div, !dbg !773
  store float %sub87, float* @totalstorage, align 4, !dbg !773, !tbaa !705
  %call88 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !780
  %tobool89 = icmp eq i32 %call88, 0, !dbg !780
  br i1 %tobool89, label %if.end108, label %if.then90, !dbg !780

if.then90:                                        ; preds = %if.end75
  %39 = load i32* @totalnumberGF, align 4, !dbg !781, !tbaa !551
  %40 = load i32* @totalnumberGA, align 4, !dbg !781, !tbaa !551
  %41 = load float* @totalstorage, align 4, !dbg !781, !tbaa !705
  %conv91 = fpext float %41 to double, !dbg !781
  %call92 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8]* @.str14, i64 0, i64 0), i8* %groupname, i32 %39, i32 %40, double %conv91) #7, !dbg !781
  br label %if.end108, !dbg !783

if.else94:                                        ; preds = %if.then58
  %numvars95 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !784
  %42 = load i32* %numvars95, align 4, !dbg !784, !tbaa !551
  %cmp96 = icmp eq i32 %unchanged.5, %42, !dbg !784
  br i1 %cmp96, label %if.then98, label %if.else104, !dbg !784

if.then98:                                        ; preds = %if.else94
  %call99 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !785
  %tobool100 = icmp eq i32 %call99, 0, !dbg !785
  br i1 %tobool100, label %if.end108, label %if.then101, !dbg !785

if.then101:                                       ; preds = %if.then98
  %call102 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str15, i64 0, i64 0), i8* %groupname) #7, !dbg !787
  br label %if.end108, !dbg !789

if.else104:                                       ; preds = %if.else94
  %call105 = call i32 @CCTK_Warn(i32 1, i32 533, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !790
  br label %if.end108

if.end108:                                        ; preds = %if.end75, %if.then98, %if.end54, %if.then90, %if.then101, %if.else104
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !332), !dbg !792
  ret i32 %retval1.0, !dbg !792
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* nocapture %GA) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGA* %GA}, i64 0, metadata !361), !dbg !793
  %storage = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 5, !dbg !794
  %0 = load i32* %storage, align 4, !dbg !794, !tbaa !551
  %cmp = icmp ne i32 %0, 1, !dbg !794
  %conv = zext i1 %cmp to i32, !dbg !794
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !362), !dbg !794
  %cmp3 = icmp eq i32 %0, 1, !dbg !795
  br i1 %cmp3, label %if.then, label %if.end19, !dbg !795

if.then:                                          ; preds = %entry
  %vector_size = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 14, !dbg !796
  %1 = load i32* %vector_size, align 4, !dbg !796, !tbaa !551
  %cmp5 = icmp sgt i32 %1, 1, !dbg !796
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !796

land.lhs.true:                                    ; preds = %if.then
  %vector_entry = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 15, !dbg !796
  %2 = load i32* %vector_entry, align 4, !dbg !796, !tbaa !551
  %cmp7 = icmp sgt i32 %2, 0, !dbg !796
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !796

if.then9:                                         ; preds = %land.lhs.true
  %padddata = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !798
  %3 = load i8** %padddata, align 8, !dbg !798, !tbaa !547
  %data = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !798
  store i8* %3, i8** %data, align 8, !dbg !798, !tbaa !547
  br label %if.end17, !dbg !800

if.else:                                          ; preds = %land.lhs.true, %if.then
  %padddata10 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !801
  %4 = load i8** %padddata10, align 8, !dbg !801, !tbaa !547
  %tobool = icmp eq i8* %4, null, !dbg !801
  br i1 %tobool, label %if.end, label %if.then11, !dbg !801

if.then11:                                        ; preds = %if.else
  tail call void @free(i8* %4) #7, !dbg !803
  br label %if.end, !dbg !805

if.end:                                           ; preds = %if.else, %if.then11
  %varsize = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8, !dbg !806
  %5 = load i32* %varsize, align 4, !dbg !806, !tbaa !551
  %conv13 = sext i32 %5 to i64, !dbg !806
  %call = tail call noalias i8* @calloc(i64 1, i64 %conv13) #7, !dbg !806
  store i8* %call, i8** %padddata10, align 8, !dbg !806, !tbaa !547
  %data16 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !807
  store i8* %call, i8** %data16, align 8, !dbg !807, !tbaa !547
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  store i32 0, i32* %storage, align 4, !dbg !808, !tbaa !551
  br label %if.end19, !dbg !809

if.end19:                                         ; preds = %if.end17, %entry
  ret i32 %conv, !dbg !810
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_EnableGArrayDataStorage(%struct.PGA* %GA, i32 %this_proc, i8* %initialize_memory, i32 %padding_active, i32 %padding_cacheline_bits, i32 %padding_size, i32 %padding_address_spacing) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGA* %GA}, i64 0, metadata !349), !dbg !811
  tail call void @llvm.dbg.value(metadata !{i32 %this_proc}, i64 0, metadata !350), !dbg !812
  tail call void @llvm.dbg.value(metadata !{i8* %initialize_memory}, i64 0, metadata !351), !dbg !813
  tail call void @llvm.dbg.value(metadata !{i32 %padding_active}, i64 0, metadata !352), !dbg !814
  tail call void @llvm.dbg.value(metadata !{i32 %padding_cacheline_bits}, i64 0, metadata !353), !dbg !815
  tail call void @llvm.dbg.value(metadata !{i32 %padding_size}, i64 0, metadata !354), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32 %padding_address_spacing}, i64 0, metadata !355), !dbg !817
  tail call void @llvm.dbg.value(metadata !{i32 %this_proc}, i64 0, metadata !350), !dbg !818
  tail call void @llvm.dbg.value(metadata !{i32 %padding_active}, i64 0, metadata !352), !dbg !819
  tail call void @llvm.dbg.value(metadata !{i32 %padding_cacheline_bits}, i64 0, metadata !353), !dbg !820
  tail call void @llvm.dbg.value(metadata !{i32 %padding_size}, i64 0, metadata !354), !dbg !821
  tail call void @llvm.dbg.value(metadata !{i32 %padding_address_spacing}, i64 0, metadata !355), !dbg !822
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !356), !dbg !823
  %storage = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 5, !dbg !824
  %0 = load i32* %storage, align 4, !dbg !824, !tbaa !551
  %cmp = icmp eq i32 %0, 0, !dbg !824
  br i1 %cmp, label %if.then, label %if.end70, !dbg !824

if.then:                                          ; preds = %entry
  %vector_size = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 14, !dbg !825
  %1 = load i32* %vector_size, align 4, !dbg !825, !tbaa !551
  %cmp2 = icmp sgt i32 %1, 1, !dbg !825
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !825

land.lhs.true:                                    ; preds = %if.then
  %vector_entry = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 15, !dbg !825
  %2 = load i32* %vector_entry, align 4, !dbg !825, !tbaa !551
  %cmp3 = icmp sgt i32 %2, 0, !dbg !825
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !825

if.then4:                                         ; preds = %land.lhs.true
  %vector_base = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 16, !dbg !827
  %3 = load %struct.PGA** %vector_base, align 8, !dbg !827, !tbaa !547
  %data = getelementptr inbounds %struct.PGA* %3, i64 0, i32 4, !dbg !827
  %4 = load i8** %data, align 8, !dbg !827, !tbaa !547
  %extras = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 10, !dbg !827
  %5 = load %struct.PGExtras** %extras, align 8, !dbg !827, !tbaa !547
  %npoints = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 7, !dbg !827
  %6 = load i32* %npoints, align 4, !dbg !827, !tbaa !551
  %varsize = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8, !dbg !827
  %7 = load i32* %varsize, align 4, !dbg !827, !tbaa !551
  %mul = mul i32 %6, %2, !dbg !827
  %mul6 = mul i32 %mul, %7, !dbg !827
  %idx.ext = sext i32 %mul6 to i64, !dbg !827
  %add.ptr = getelementptr inbounds i8* %4, i64 %idx.ext, !dbg !827
  %data7 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !827
  store i8* %add.ptr, i8** %data7, align 8, !dbg !827, !tbaa !547
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !356), !dbg !829
  br label %if.end55, !dbg !830

if.else:                                          ; preds = %land.lhs.true, %if.then
  %padddata = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !831
  %8 = load i8** %padddata, align 8, !dbg !831, !tbaa !547
  %tobool = icmp eq i8* %8, null, !dbg !831
  br i1 %tobool, label %if.end, label %if.then8, !dbg !831

if.then8:                                         ; preds = %if.else
  tail call void @free(i8* %8) #7, !dbg !833
  store i8* null, i8** %padddata, align 8, !dbg !835, !tbaa !547
  br label %if.end, !dbg !836

if.end:                                           ; preds = %if.else, %if.then8
  %extras11 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 10, !dbg !837
  %9 = load %struct.PGExtras** %extras11, align 8, !dbg !837, !tbaa !547
  %npoints12 = getelementptr inbounds %struct.PGExtras* %9, i64 0, i32 7, !dbg !837
  %10 = load i32* %npoints12, align 4, !dbg !837, !tbaa !551
  %varsize13 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8, !dbg !837
  %11 = load i32* %varsize13, align 4, !dbg !837, !tbaa !551
  %mul14 = mul nsw i32 %11, %10, !dbg !837
  %cmp15 = icmp slt i32 %mul14, 1, !dbg !837
  br i1 %cmp15, label %if.end42.thread, label %if.else19, !dbg !837

if.end42.thread:                                  ; preds = %if.end
  %name = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 0, !dbg !838
  %12 = load i8** %name, align 8, !dbg !838, !tbaa !547
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 809, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str17, i64 0, i64 0), i8* %12) #7, !dbg !838
  %13 = bitcast i8** %padddata to i8*, !dbg !840
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 8, i1 false), !dbg !841
  br label %if.end55, !dbg !842

if.else19:                                        ; preds = %if.end
  %tobool20 = icmp eq i32 %padding_active, 0, !dbg !843
  br i1 %tobool20, label %if.then21, label %if.else30, !dbg !843

if.then21:                                        ; preds = %if.else19
  %conv = sext i32 %mul14 to i64, !dbg !844
  %call26 = tail call noalias i8* @malloc(i64 %conv) #7, !dbg !844
  %data27 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !844
  store i8* %call26, i8** %data27, align 8, !dbg !844, !tbaa !547
  store i8* %call26, i8** %padddata, align 8, !dbg !846, !tbaa !547
  br label %if.end42, !dbg !847

if.else30:                                        ; preds = %if.else19
  %arrayid = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 2, !dbg !848
  %14 = load i32* %arrayid, align 4, !dbg !848, !tbaa !551
  %15 = load i32* %vector_size, align 4, !dbg !848, !tbaa !551
  %mul36 = mul nsw i32 %15, %mul14, !dbg !848
  %conv37 = sext i32 %mul36 to i64, !dbg !848
  %call39 = tail call i8* @Util_CacheMalloc(i32 %14, i64 %conv37, i8** %padddata) #7, !dbg !848
  %data40 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !848
  store i8* %call39, i8** %data40, align 8, !dbg !848, !tbaa !547
  br label %if.end42

if.end42:                                         ; preds = %if.then21, %if.else30
  %16 = phi i8* [ %call26, %if.then21 ], [ %call39, %if.else30 ]
  %data43 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !842
  %tobool44 = icmp eq i8* %16, null, !dbg !842
  br i1 %tobool44, label %if.end55, label %land.lhs.true45, !dbg !842

land.lhs.true45:                                  ; preds = %if.end42
  %call46 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !842
  %tobool47 = icmp eq i32 %call46, 0, !dbg !842
  br i1 %tobool47, label %if.then48, label %if.end55, !dbg !842

if.then48:                                        ; preds = %land.lhs.true45
  %vtype = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 9, !dbg !850
  %17 = load i32* %vtype, align 4, !dbg !850, !tbaa !551
  %18 = load %struct.PGExtras** %extras11, align 8, !dbg !850, !tbaa !547
  %npoints50 = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 7, !dbg !850
  %19 = load i32* %npoints50, align 4, !dbg !850, !tbaa !551
  %20 = load i32* %varsize13, align 4, !dbg !850, !tbaa !551
  %mul52 = mul nsw i32 %20, %19, !dbg !850
  %21 = load i8** %data43, align 8, !dbg !850, !tbaa !547
  tail call fastcc void @PUGH_InitializeMemory(i8* %initialize_memory, i32 %17, i32 %mul52, i8* %21) #8, !dbg !850
  br label %if.end55, !dbg !852

if.end55:                                         ; preds = %land.lhs.true45, %if.end42, %if.end42.thread, %if.then48, %if.then4
  %extras56 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 10, !dbg !853
  %22 = load %struct.PGExtras** %extras56, align 8, !dbg !853, !tbaa !547
  %npoints57 = getelementptr inbounds %struct.PGExtras* %22, i64 0, i32 7, !dbg !853
  %23 = load i32* %npoints57, align 4, !dbg !853, !tbaa !551
  %varsize58 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8, !dbg !853
  %24 = load i32* %varsize58, align 4, !dbg !853, !tbaa !551
  %mul59 = mul nsw i32 %24, %23, !dbg !853
  %cmp60 = icmp sgt i32 %mul59, 0, !dbg !853
  br i1 %cmp60, label %land.lhs.true62, label %if.end70, !dbg !853

land.lhs.true62:                                  ; preds = %if.end55
  %padddata63 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !853
  %25 = load i8** %padddata63, align 8, !dbg !853, !tbaa !547
  %cmp64 = icmp eq i8* %25, null, !dbg !853
  br i1 %cmp64, label %if.then66, label %if.end70, !dbg !853

if.then66:                                        ; preds = %land.lhs.true62
  %name67 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 0, !dbg !854
  %26 = load i8** %name67, align 8, !dbg !854, !tbaa !547
  %id = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 1, !dbg !854
  %27 = load i32* %id, align 4, !dbg !854, !tbaa !551
  %call68 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 838, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str19, i64 0, i64 0), i8* %26, i32 %27) #7, !dbg !854
  tail call void @llvm.dbg.value(metadata !570, i64 0, metadata !356), !dbg !856
  br label %if.end70, !dbg !857

if.end70:                                         ; preds = %if.end55, %land.lhs.true62, %if.then66, %entry
  %retval1.1 = phi i32 [ -1, %if.then66 ], [ 0, %land.lhs.true62 ], [ 0, %if.end55 ], [ 0, %entry ]
  store i32 1, i32* %storage, align 4, !dbg !858, !tbaa !551
  ret i32 %retval1.1, !dbg !859
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare i8* @Util_CacheMalloc(i32, i64, i8**) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @PUGH_InitializeMemory(i8* %initialize_memory, i32 %vtype, i32 %bytes, i8* nocapture %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %initialize_memory}, i64 0, metadata !370), !dbg !860
  tail call void @llvm.dbg.value(metadata !{i32 %vtype}, i64 0, metadata !371), !dbg !861
  tail call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !372), !dbg !862
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !373), !dbg !863
  %call = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !864
  %tobool = icmp eq i32 %call, 0, !dbg !864
  br i1 %tobool, label %if.else, label %if.then, !dbg !864

if.then:                                          ; preds = %entry
  %conv = sext i32 %bytes to i64, !dbg !865
  tail call void @llvm.memset.p0i8.i64(i8* %data, i8 0, i64 %conv, i32 1, i1 false), !dbg !865
  br label %if.end19, !dbg !867

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0)) #7, !dbg !868
  %tobool2 = icmp eq i32 %call1, 0, !dbg !868
  br i1 %tobool2, label %if.else12, label %if.then3, !dbg !868

if.then3:                                         ; preds = %if.else
  %call4 = tail call i8* @CCTK_VarTypeName(i32 %vtype) #7, !dbg !869
  tail call void @llvm.dbg.value(metadata !{i8* %call4}, i64 0, metadata !374), !dbg !869
  %call5 = tail call i32 @strncmp(i8* %call4, i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i64 18) #9, !dbg !871
  %cmp = icmp eq i32 %call5, 0, !dbg !871
  br i1 %cmp, label %if.then10, label %lor.lhs.false, !dbg !871

lor.lhs.false:                                    ; preds = %if.then3
  %call7 = tail call i32 @strncmp(i8* %call4, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i64 22) #9, !dbg !872
  %cmp8 = icmp eq i32 %call7, 0, !dbg !872
  br i1 %cmp8, label %if.then10, label %if.end19, !dbg !872

if.then10:                                        ; preds = %lor.lhs.false, %if.then3
  %conv11 = sext i32 %bytes to i64, !dbg !873
  tail call void @llvm.memset.p0i8.i64(i8* %data, i8 -1, i64 %conv11, i32 1, i1 false), !dbg !873
  br label %if.end19, !dbg !875

if.else12:                                        ; preds = %if.else
  %call13 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !876
  %tobool14 = icmp eq i32 %call13, 0, !dbg !876
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !876

if.then15:                                        ; preds = %if.else12
  %call16 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 964, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str27, i64 0, i64 0), i8* %initialize_memory) #7, !dbg !877
  br label %if.end19, !dbg !879

if.end19:                                         ; preds = %if.else12, %if.then10, %lor.lhs.false, %if.then15, %if.then
  ret void, !dbg !880
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: nounwind optsize uwtable
define void @PUGHi_PrintStorageReport() #1 {
entry:
  %call = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !881
  %0 = load float* @maxstorage, align 4, !dbg !882, !tbaa !705
  %conv = fpext float %0 to double, !dbg !882
  %call1 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), double %conv) #7, !dbg !882
  %1 = load i32* @numberGF, align 4, !dbg !883, !tbaa !551
  %2 = load i32* @numberGA, align 4, !dbg !883, !tbaa !551
  %call2 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str22, i64 0, i64 0), i32 %1, i32 %2) #7, !dbg !883
  ret void, !dbg !884
}

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: optsize
declare i8* @CCTK_VarTypeName(i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !525, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !133, metadata !177, metadata !267, metadata !345, metadata !357, metadata !363, metadata !366, metadata !375, metadata !451}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGH_Storage_c", metadata !"CCTKi_version_CactusPUGH_PUGH_Storage_c", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_Storage_c, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_CactusPUGH_PUGH_Storage_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ArrayGroupSize", metadata !"PUGH_ArrayGroupSize", metadata !"", i32 102, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct.cGH*, i32, i32, i8*)* @PUGH_ArrayGroupSize, null, null, metadata !55, i32 106} ; [ DW_TAG_subprogram ] [line 102] [def] [scope 106] [PUGH_ArrayGroupSize]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !17, metadata !16, metadata !16, metadata !8}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!19 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!21 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !47, metadata !48}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!30 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!31 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!32 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!33 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!34 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!35 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!37 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!38 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!39 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!40 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!41 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !26} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!42 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!43 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !45} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!48 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !49} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!50 = metadata !{i32 786454, metadata !21, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!51 = metadata !{i32 786451, metadata !21, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!52 = metadata !{metadata !53, metadata !54}
!53 = metadata !{i32 786445, metadata !21, metadata !51, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!54 = metadata !{i32 786445, metadata !21, metadata !51, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !132}
!56 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777318, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 102]
!57 = metadata !{i32 786689, metadata !11, metadata !"dir", metadata !5, i32 33554535, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 103]
!58 = metadata !{i32 786689, metadata !11, metadata !"group", metadata !5, i32 50331752, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 104]
!59 = metadata !{i32 786689, metadata !11, metadata !"groupname", metadata !5, i32 67108969, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 105]
!60 = metadata !{i32 786688, metadata !11, metadata !"first_var", metadata !5, i32 107, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_var] [line 107]
!61 = metadata !{i32 786688, metadata !11, metadata !"GA", metadata !5, i32 108, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 108]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!63 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!64 = metadata !{i32 786451, metadata !65, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!65 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!66 = metadata !{metadata !67, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !105, metadata !114, metadata !127, metadata !128, metadata !129, metadata !130}
!67 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!69 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!70 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!71 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!72 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!73 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!74 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !16} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!75 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!76 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!77 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !16} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!78 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !79} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!80 = metadata !{i32 786454, metadata !65, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!81 = metadata !{i32 786451, metadata !65, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !82, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !102, metadata !104}
!83 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!84 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!85 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!86 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!88 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!89 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!90 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!91 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!92 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!93 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !87} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!94 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !26} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!95 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !26} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!96 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!97 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !98} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !26, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!99 = metadata !{metadata !100, metadata !101}
!100 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!101 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!102 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !103} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!103 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !87, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!104 = metadata !{i32 786445, metadata !65, metadata !81, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !103} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!105 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !106} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!107 = metadata !{i32 786454, metadata !65, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!108 = metadata !{i32 786451, metadata !65, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !109, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113}
!110 = metadata !{i32 786445, metadata !65, metadata !108, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!111 = metadata !{i32 786445, metadata !65, metadata !108, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!112 = metadata !{i32 786445, metadata !65, metadata !108, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!113 = metadata !{i32 786445, metadata !65, metadata !108, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!114 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !115} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!116 = metadata !{i32 786454, metadata !65, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!117 = metadata !{i32 786451, metadata !65, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !118, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!119 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!120 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!121 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!122 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!123 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!124 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!125 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !16} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!126 = metadata !{i32 786445, metadata !65, metadata !117, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!127 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !115} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!128 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!129 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !16} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!130 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !131} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!132 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 109]
!133 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_QueryGroupStorage", metadata !"PUGH_QueryGroupStorage", metadata !"", i32 198, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i8*)* @PUGH_QueryGroupStorage, null, null, metadata !136, i32 199} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 199] [PUGH_QueryGroupStorage]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !16, metadata !17, metadata !16, metadata !8}
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145}
!137 = metadata !{i32 786689, metadata !133, metadata !"GH", metadata !5, i32 16777414, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 198]
!138 = metadata !{i32 786689, metadata !133, metadata !"group", metadata !5, i32 33554630, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 198]
!139 = metadata !{i32 786689, metadata !133, metadata !"groupname", metadata !5, i32 50331846, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 198]
!140 = metadata !{i32 786688, metadata !133, metadata !"first_var", metadata !5, i32 200, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_var] [line 200]
!141 = metadata !{i32 786688, metadata !133, metadata !"storage", metadata !5, i32 201, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage] [line 201]
!142 = metadata !{i32 786688, metadata !133, metadata !"grouptype", metadata !5, i32 202, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grouptype] [line 202]
!143 = metadata !{i32 786688, metadata !133, metadata !"vtypesize", metadata !5, i32 203, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtypesize] [line 203]
!144 = metadata !{i32 786688, metadata !133, metadata !"retval", metadata !5, i32 204, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 204]
!145 = metadata !{i32 786688, metadata !133, metadata !"pughGH", metadata !5, i32 205, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 205]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!147 = metadata !{i32 786454, metadata !148, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!148 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!149 = metadata !{i32 786451, metadata !148, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !150, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !174, metadata !176}
!151 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!152 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!153 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!154 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!155 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !16} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!156 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!157 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !16} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!158 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!159 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!160 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!161 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!162 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !16} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!163 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!164 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!165 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!166 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !34} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!167 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !16} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!168 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !16} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!169 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !16} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!170 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !16} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!171 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !16} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!172 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !173} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!174 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !175} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!176 = metadata !{i32 786445, metadata !148, metadata !149, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !68} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!177 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableGroupStorage", metadata !"PUGH_EnableGroupStorage", metadata !"", i32 304, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @PUGH_EnableGroupStorage, null, null, metadata !181, i32 305} ; [ DW_TAG_subprogram ] [line 304] [def] [scope 305] [PUGH_EnableGroupStorage]
!178 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{metadata !16, metadata !180, metadata !8}
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !243, metadata !244, metadata !245, metadata !246, metadata !249, metadata !250, metadata !251, metadata !264, metadata !265, metadata !266}
!182 = metadata !{i32 786689, metadata !177, metadata !"GH", metadata !5, i32 16777520, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 304]
!183 = metadata !{i32 786689, metadata !177, metadata !"groupname", metadata !5, i32 33554736, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 304]
!184 = metadata !{i32 786688, metadata !177, metadata !"ghost_size", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 306]
!185 = metadata !{i32 786688, metadata !177, metadata !"ghost_size_x", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 306]
!186 = metadata !{i32 786688, metadata !177, metadata !"ghost_size_y", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 306]
!187 = metadata !{i32 786688, metadata !177, metadata !"ghost_size_z", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 306]
!188 = metadata !{i32 786688, metadata !177, metadata !"global_nsize", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 306]
!189 = metadata !{i32 786688, metadata !177, metadata !"global_nx", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 306]
!190 = metadata !{i32 786688, metadata !177, metadata !"global_ny", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 306]
!191 = metadata !{i32 786688, metadata !177, metadata !"global_nz", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 306]
!192 = metadata !{i32 786688, metadata !177, metadata !"periodic", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 306]
!193 = metadata !{i32 786688, metadata !177, metadata !"periodic_x", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 306]
!194 = metadata !{i32 786688, metadata !177, metadata !"periodic_y", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 306]
!195 = metadata !{i32 786688, metadata !177, metadata !"periodic_z", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 306]
!196 = metadata !{i32 786688, metadata !177, metadata !"info", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 306]
!197 = metadata !{i32 786688, metadata !177, metadata !"initialize_memory", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 306]
!198 = metadata !{i32 786688, metadata !177, metadata !"partition", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 306]
!199 = metadata !{i32 786688, metadata !177, metadata !"partition_1d_x", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 306]
!200 = metadata !{i32 786688, metadata !177, metadata !"partition_2d_x", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 306]
!201 = metadata !{i32 786688, metadata !177, metadata !"partition_2d_y", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 306]
!202 = metadata !{i32 786688, metadata !177, metadata !"partition_3d_x", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 306]
!203 = metadata !{i32 786688, metadata !177, metadata !"partition_3d_y", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 306]
!204 = metadata !{i32 786688, metadata !177, metadata !"partition_3d_z", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 306]
!205 = metadata !{i32 786688, metadata !177, metadata !"processor_topology", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 306]
!206 = metadata !{i32 786688, metadata !177, metadata !"storage_verbose", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 306]
!207 = metadata !{i32 786688, metadata !177, metadata !"cacheline_mult", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 306]
!208 = metadata !{i32 786688, metadata !177, metadata !"enable_all_storage", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 306]
!209 = metadata !{i32 786688, metadata !177, metadata !"local_nsize", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 306]
!210 = metadata !{i32 786688, metadata !177, metadata !"local_nx", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 306]
!211 = metadata !{i32 786688, metadata !177, metadata !"local_ny", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 306]
!212 = metadata !{i32 786688, metadata !177, metadata !"local_nz", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 306]
!213 = metadata !{i32 786688, metadata !177, metadata !"overloadabort", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 306]
!214 = metadata !{i32 786688, metadata !177, metadata !"overloadarraygroupsizeb", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 306]
!215 = metadata !{i32 786688, metadata !177, metadata !"overloadbarrier", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 306]
!216 = metadata !{i32 786688, metadata !177, metadata !"overloaddisablegroupcomm", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 306]
!217 = metadata !{i32 786688, metadata !177, metadata !"overloaddisablegroupstorage", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 306]
!218 = metadata !{i32 786688, metadata !177, metadata !"overloadenablegroupcomm", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 306]
!219 = metadata !{i32 786688, metadata !177, metadata !"overloadenablegroupstorage", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 306]
!220 = metadata !{i32 786688, metadata !177, metadata !"overloadevolve", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 306]
!221 = metadata !{i32 786688, metadata !177, metadata !"overloadexit", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 306]
!222 = metadata !{i32 786688, metadata !177, metadata !"overloadgroupdynamicdata", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 306]
!223 = metadata !{i32 786688, metadata !177, metadata !"overloadmyproc", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 306]
!224 = metadata !{i32 786688, metadata !177, metadata !"overloadnprocs", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 306]
!225 = metadata !{i32 786688, metadata !177, metadata !"overloadparallelinit", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 306]
!226 = metadata !{i32 786688, metadata !177, metadata !"overloadquerygroupstorageb", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 306]
!227 = metadata !{i32 786688, metadata !177, metadata !"overloadsyncgroup", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 306]
!228 = metadata !{i32 786688, metadata !177, metadata !"padding_active", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 306]
!229 = metadata !{i32 786688, metadata !177, metadata !"padding_address_spacing", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 306]
!230 = metadata !{i32 786688, metadata !177, metadata !"padding_cacheline_bits", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 306]
!231 = metadata !{i32 786688, metadata !177, metadata !"padding_size", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 306]
!232 = metadata !{i32 786688, metadata !177, metadata !"processor_topology_1d_x", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 306]
!233 = metadata !{i32 786688, metadata !177, metadata !"processor_topology_2d_x", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 306]
!234 = metadata !{i32 786688, metadata !177, metadata !"processor_topology_2d_y", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 306]
!235 = metadata !{i32 786688, metadata !177, metadata !"processor_topology_3d_x", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 306]
!236 = metadata !{i32 786688, metadata !177, metadata !"processor_topology_3d_y", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 306]
!237 = metadata !{i32 786688, metadata !177, metadata !"processor_topology_3d_z", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 306]
!238 = metadata !{i32 786688, metadata !177, metadata !"storage_report_every", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 306]
!239 = metadata !{i32 786688, metadata !177, metadata !"timer_output", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 306]
!240 = metadata !{i32 786688, metadata !177, metadata !"terminate", metadata !5, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 306]
!241 = metadata !{i32 786688, metadata !177, metadata !"cctk_initial_time", metadata !5, i32 306, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 306]
!242 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!243 = metadata !{i32 786688, metadata !177, metadata !"cctk_final_time", metadata !5, i32 306, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 306]
!244 = metadata !{i32 786688, metadata !177, metadata !"cctk_itlast", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 306]
!245 = metadata !{i32 786688, metadata !177, metadata !"terminate_next", metadata !5, i32 306, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 306]
!246 = metadata !{i32 786688, metadata !177, metadata !"cctk_pdummy_pointer", metadata !5, i32 306, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 306]
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!248 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!249 = metadata !{i32 786688, metadata !177, metadata !"group", metadata !5, i32 307, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 307]
!250 = metadata !{i32 786688, metadata !177, metadata !"first_var", metadata !5, i32 308, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_var] [line 308]
!251 = metadata !{i32 786688, metadata !177, metadata !"pgroup", metadata !5, i32 309, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pgroup] [line 309]
!252 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!253 = metadata !{i32 786451, metadata !254, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !255, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!254 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263}
!256 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!257 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!258 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!259 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!260 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!261 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !16} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!262 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!263 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !16} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!264 = metadata !{i32 786688, metadata !177, metadata !"retval", metadata !5, i32 310, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 310]
!265 = metadata !{i32 786688, metadata !177, metadata !"GA", metadata !5, i32 311, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 311]
!266 = metadata !{i32 786688, metadata !177, metadata !"pughGH", metadata !5, i32 312, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 312]
!267 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DisableGroupStorage", metadata !"PUGH_DisableGroupStorage", metadata !"", i32 433, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @PUGH_DisableGroupStorage, null, null, metadata !268, i32 434} ; [ DW_TAG_subprogram ] [line 433] [def] [scope 434] [PUGH_DisableGroupStorage]
!268 = metadata !{metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344}
!269 = metadata !{i32 786689, metadata !267, metadata !"GH", metadata !5, i32 16777649, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 433]
!270 = metadata !{i32 786689, metadata !267, metadata !"groupname", metadata !5, i32 33554865, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 433]
!271 = metadata !{i32 786688, metadata !267, metadata !"ghost_size", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 435]
!272 = metadata !{i32 786688, metadata !267, metadata !"ghost_size_x", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 435]
!273 = metadata !{i32 786688, metadata !267, metadata !"ghost_size_y", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 435]
!274 = metadata !{i32 786688, metadata !267, metadata !"ghost_size_z", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 435]
!275 = metadata !{i32 786688, metadata !267, metadata !"global_nsize", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 435]
!276 = metadata !{i32 786688, metadata !267, metadata !"global_nx", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 435]
!277 = metadata !{i32 786688, metadata !267, metadata !"global_ny", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 435]
!278 = metadata !{i32 786688, metadata !267, metadata !"global_nz", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 435]
!279 = metadata !{i32 786688, metadata !267, metadata !"periodic", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 435]
!280 = metadata !{i32 786688, metadata !267, metadata !"periodic_x", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 435]
!281 = metadata !{i32 786688, metadata !267, metadata !"periodic_y", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 435]
!282 = metadata !{i32 786688, metadata !267, metadata !"periodic_z", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 435]
!283 = metadata !{i32 786688, metadata !267, metadata !"info", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 435]
!284 = metadata !{i32 786688, metadata !267, metadata !"initialize_memory", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 435]
!285 = metadata !{i32 786688, metadata !267, metadata !"partition", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 435]
!286 = metadata !{i32 786688, metadata !267, metadata !"partition_1d_x", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 435]
!287 = metadata !{i32 786688, metadata !267, metadata !"partition_2d_x", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 435]
!288 = metadata !{i32 786688, metadata !267, metadata !"partition_2d_y", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 435]
!289 = metadata !{i32 786688, metadata !267, metadata !"partition_3d_x", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 435]
!290 = metadata !{i32 786688, metadata !267, metadata !"partition_3d_y", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 435]
!291 = metadata !{i32 786688, metadata !267, metadata !"partition_3d_z", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 435]
!292 = metadata !{i32 786688, metadata !267, metadata !"processor_topology", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 435]
!293 = metadata !{i32 786688, metadata !267, metadata !"storage_verbose", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 435]
!294 = metadata !{i32 786688, metadata !267, metadata !"cacheline_mult", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 435]
!295 = metadata !{i32 786688, metadata !267, metadata !"enable_all_storage", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 435]
!296 = metadata !{i32 786688, metadata !267, metadata !"local_nsize", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 435]
!297 = metadata !{i32 786688, metadata !267, metadata !"local_nx", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 435]
!298 = metadata !{i32 786688, metadata !267, metadata !"local_ny", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 435]
!299 = metadata !{i32 786688, metadata !267, metadata !"local_nz", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 435]
!300 = metadata !{i32 786688, metadata !267, metadata !"overloadabort", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 435]
!301 = metadata !{i32 786688, metadata !267, metadata !"overloadarraygroupsizeb", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 435]
!302 = metadata !{i32 786688, metadata !267, metadata !"overloadbarrier", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 435]
!303 = metadata !{i32 786688, metadata !267, metadata !"overloaddisablegroupcomm", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 435]
!304 = metadata !{i32 786688, metadata !267, metadata !"overloaddisablegroupstorage", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 435]
!305 = metadata !{i32 786688, metadata !267, metadata !"overloadenablegroupcomm", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 435]
!306 = metadata !{i32 786688, metadata !267, metadata !"overloadenablegroupstorage", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 435]
!307 = metadata !{i32 786688, metadata !267, metadata !"overloadevolve", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 435]
!308 = metadata !{i32 786688, metadata !267, metadata !"overloadexit", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 435]
!309 = metadata !{i32 786688, metadata !267, metadata !"overloadgroupdynamicdata", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 435]
!310 = metadata !{i32 786688, metadata !267, metadata !"overloadmyproc", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 435]
!311 = metadata !{i32 786688, metadata !267, metadata !"overloadnprocs", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 435]
!312 = metadata !{i32 786688, metadata !267, metadata !"overloadparallelinit", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 435]
!313 = metadata !{i32 786688, metadata !267, metadata !"overloadquerygroupstorageb", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 435]
!314 = metadata !{i32 786688, metadata !267, metadata !"overloadsyncgroup", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 435]
!315 = metadata !{i32 786688, metadata !267, metadata !"padding_active", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 435]
!316 = metadata !{i32 786688, metadata !267, metadata !"padding_address_spacing", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 435]
!317 = metadata !{i32 786688, metadata !267, metadata !"padding_cacheline_bits", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 435]
!318 = metadata !{i32 786688, metadata !267, metadata !"padding_size", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 435]
!319 = metadata !{i32 786688, metadata !267, metadata !"processor_topology_1d_x", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 435]
!320 = metadata !{i32 786688, metadata !267, metadata !"processor_topology_2d_x", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 435]
!321 = metadata !{i32 786688, metadata !267, metadata !"processor_topology_2d_y", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 435]
!322 = metadata !{i32 786688, metadata !267, metadata !"processor_topology_3d_x", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 435]
!323 = metadata !{i32 786688, metadata !267, metadata !"processor_topology_3d_y", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 435]
!324 = metadata !{i32 786688, metadata !267, metadata !"processor_topology_3d_z", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 435]
!325 = metadata !{i32 786688, metadata !267, metadata !"storage_report_every", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 435]
!326 = metadata !{i32 786688, metadata !267, metadata !"timer_output", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 435]
!327 = metadata !{i32 786688, metadata !267, metadata !"terminate", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 435]
!328 = metadata !{i32 786688, metadata !267, metadata !"cctk_initial_time", metadata !5, i32 435, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 435]
!329 = metadata !{i32 786688, metadata !267, metadata !"cctk_final_time", metadata !5, i32 435, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 435]
!330 = metadata !{i32 786688, metadata !267, metadata !"cctk_itlast", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 435]
!331 = metadata !{i32 786688, metadata !267, metadata !"terminate_next", metadata !5, i32 435, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 435]
!332 = metadata !{i32 786688, metadata !267, metadata !"cctk_pdummy_pointer", metadata !5, i32 435, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 435]
!333 = metadata !{i32 786688, metadata !267, metadata !"group", metadata !5, i32 436, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 436]
!334 = metadata !{i32 786688, metadata !267, metadata !"pgroup", metadata !5, i32 437, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pgroup] [line 437]
!335 = metadata !{i32 786688, metadata !267, metadata !"vtypesize", metadata !5, i32 438, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtypesize] [line 438]
!336 = metadata !{i32 786688, metadata !267, metadata !"retval", metadata !5, i32 438, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 438]
!337 = metadata !{i32 786688, metadata !267, metadata !"variables", metadata !5, i32 439, metadata !338, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variables] [line 439]
!338 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !339} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!339 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!340 = metadata !{i32 786688, metadata !267, metadata !"first_var", metadata !5, i32 440, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_var] [line 440]
!341 = metadata !{i32 786688, metadata !267, metadata !"var", metadata !5, i32 440, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 440]
!342 = metadata !{i32 786688, metadata !267, metadata !"level", metadata !5, i32 440, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 440]
!343 = metadata !{i32 786688, metadata !267, metadata !"unchanged", metadata !5, i32 441, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unchanged] [line 441]
!344 = metadata !{i32 786688, metadata !267, metadata !"temp", metadata !5, i32 442, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 442]
!345 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableGArrayDataStorage", metadata !"PUGH_EnableGArrayDataStorage", metadata !"", i32 764, metadata !346, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PGA*, i32, i8*, i32, i32, i32, i32)* @PUGH_EnableGArrayDataStorage, null, null, metadata !348, i32 771} ; [ DW_TAG_subprogram ] [line 764] [def] [scope 771] [PUGH_EnableGArrayDataStorage]
!346 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = metadata !{metadata !16, metadata !62, metadata !16, metadata !8, metadata !16, metadata !16, metadata !16, metadata !16}
!348 = metadata !{metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356}
!349 = metadata !{i32 786689, metadata !345, metadata !"GA", metadata !5, i32 16777980, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 764]
!350 = metadata !{i32 786689, metadata !345, metadata !"this_proc", metadata !5, i32 33555197, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_proc] [line 765]
!351 = metadata !{i32 786689, metadata !345, metadata !"initialize_memory", metadata !5, i32 50332414, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [initialize_memory] [line 766]
!352 = metadata !{i32 786689, metadata !345, metadata !"padding_active", metadata !5, i32 67109631, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padding_active] [line 767]
!353 = metadata !{i32 786689, metadata !345, metadata !"padding_cacheline_bits", metadata !5, i32 83886848, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padding_cacheline_bits] [line 768]
!354 = metadata !{i32 786689, metadata !345, metadata !"padding_size", metadata !5, i32 100664065, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padding_size] [line 769]
!355 = metadata !{i32 786689, metadata !345, metadata !"padding_address_spacing", metadata !5, i32 117441282, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padding_address_spacing] [line 770]
!356 = metadata !{i32 786688, metadata !345, metadata !"retval", metadata !5, i32 772, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 772]
!357 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DisableGArrayDataStorage", metadata !"PUGH_DisableGArrayDataStorage", metadata !"", i32 873, metadata !358, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PGA*)* @PUGH_DisableGArrayDataStorage, null, null, metadata !360, i32 874} ; [ DW_TAG_subprogram ] [line 873] [def] [scope 874] [PUGH_DisableGArrayDataStorage]
!358 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!359 = metadata !{metadata !16, metadata !62}
!360 = metadata !{metadata !361, metadata !362}
!361 = metadata !{i32 786689, metadata !357, metadata !"GA", metadata !5, i32 16778089, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 873]
!362 = metadata !{i32 786688, metadata !357, metadata !"retval", metadata !5, i32 875, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 875]
!363 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGHi_PrintStorageReport", metadata !"PUGHi_PrintStorageReport", metadata !"", i32 980, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @PUGHi_PrintStorageReport, null, null, metadata !2, i32 981} ; [ DW_TAG_subprogram ] [line 980] [def] [scope 981] [PUGHi_PrintStorageReport]
!364 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{null}
!366 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_InitializeMemory", metadata !"PUGH_InitializeMemory", metadata !"", i32 939, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i8*)* @PUGH_InitializeMemory, null, null, metadata !369, i32 943} ; [ DW_TAG_subprogram ] [line 939] [local] [def] [scope 943] [PUGH_InitializeMemory]
!367 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!368 = metadata !{null, metadata !8, metadata !16, metadata !16, metadata !46}
!369 = metadata !{metadata !370, metadata !371, metadata !372, metadata !373, metadata !374}
!370 = metadata !{i32 786689, metadata !366, metadata !"initialize_memory", metadata !5, i32 16778155, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [initialize_memory] [line 939]
!371 = metadata !{i32 786689, metadata !366, metadata !"vtype", metadata !5, i32 33555372, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 940]
!372 = metadata !{i32 786689, metadata !366, metadata !"bytes", metadata !5, i32 50332589, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bytes] [line 941]
!373 = metadata !{i32 786689, metadata !366, metadata !"data", metadata !5, i32 67109806, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 942]
!374 = metadata !{i32 786688, metadata !366, metadata !"vtypename", metadata !5, i32 944, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtypename] [line 944]
!375 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableGArrayGroupStorage", metadata !"PUGH_EnableGArrayGroupStorage", metadata !"", i32 662, metadata !376, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !378, i32 666} ; [ DW_TAG_subprogram ] [line 662] [local] [def] [scope 666] [PUGH_EnableGArrayGroupStorage]
!376 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!377 = metadata !{metadata !16, metadata !146, metadata !16, metadata !16, metadata !16}
!378 = metadata !{metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450}
!379 = metadata !{i32 786689, metadata !375, metadata !"pughGH", metadata !5, i32 16777878, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 662]
!380 = metadata !{i32 786689, metadata !375, metadata !"first_var", metadata !5, i32 33555095, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var] [line 663]
!381 = metadata !{i32 786689, metadata !375, metadata !"n_variables", metadata !5, i32 50332312, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_variables] [line 664]
!382 = metadata !{i32 786689, metadata !375, metadata !"n_timelevels", metadata !5, i32 67109529, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 665]
!383 = metadata !{i32 786688, metadata !375, metadata !"ghost_size", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 667]
!384 = metadata !{i32 786688, metadata !375, metadata !"ghost_size_x", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 667]
!385 = metadata !{i32 786688, metadata !375, metadata !"ghost_size_y", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 667]
!386 = metadata !{i32 786688, metadata !375, metadata !"ghost_size_z", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 667]
!387 = metadata !{i32 786688, metadata !375, metadata !"global_nsize", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 667]
!388 = metadata !{i32 786688, metadata !375, metadata !"global_nx", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 667]
!389 = metadata !{i32 786688, metadata !375, metadata !"global_ny", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 667]
!390 = metadata !{i32 786688, metadata !375, metadata !"global_nz", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 667]
!391 = metadata !{i32 786688, metadata !375, metadata !"periodic", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 667]
!392 = metadata !{i32 786688, metadata !375, metadata !"periodic_x", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 667]
!393 = metadata !{i32 786688, metadata !375, metadata !"periodic_y", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 667]
!394 = metadata !{i32 786688, metadata !375, metadata !"periodic_z", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 667]
!395 = metadata !{i32 786688, metadata !375, metadata !"info", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 667]
!396 = metadata !{i32 786688, metadata !375, metadata !"initialize_memory", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 667]
!397 = metadata !{i32 786688, metadata !375, metadata !"partition", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 667]
!398 = metadata !{i32 786688, metadata !375, metadata !"partition_1d_x", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 667]
!399 = metadata !{i32 786688, metadata !375, metadata !"partition_2d_x", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 667]
!400 = metadata !{i32 786688, metadata !375, metadata !"partition_2d_y", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 667]
!401 = metadata !{i32 786688, metadata !375, metadata !"partition_3d_x", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 667]
!402 = metadata !{i32 786688, metadata !375, metadata !"partition_3d_y", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 667]
!403 = metadata !{i32 786688, metadata !375, metadata !"partition_3d_z", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 667]
!404 = metadata !{i32 786688, metadata !375, metadata !"processor_topology", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 667]
!405 = metadata !{i32 786688, metadata !375, metadata !"storage_verbose", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 667]
!406 = metadata !{i32 786688, metadata !375, metadata !"cacheline_mult", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 667]
!407 = metadata !{i32 786688, metadata !375, metadata !"enable_all_storage", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 667]
!408 = metadata !{i32 786688, metadata !375, metadata !"local_nsize", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 667]
!409 = metadata !{i32 786688, metadata !375, metadata !"local_nx", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 667]
!410 = metadata !{i32 786688, metadata !375, metadata !"local_ny", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 667]
!411 = metadata !{i32 786688, metadata !375, metadata !"local_nz", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 667]
!412 = metadata !{i32 786688, metadata !375, metadata !"overloadabort", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 667]
!413 = metadata !{i32 786688, metadata !375, metadata !"overloadarraygroupsizeb", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 667]
!414 = metadata !{i32 786688, metadata !375, metadata !"overloadbarrier", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 667]
!415 = metadata !{i32 786688, metadata !375, metadata !"overloaddisablegroupcomm", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 667]
!416 = metadata !{i32 786688, metadata !375, metadata !"overloaddisablegroupstorage", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 667]
!417 = metadata !{i32 786688, metadata !375, metadata !"overloadenablegroupcomm", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 667]
!418 = metadata !{i32 786688, metadata !375, metadata !"overloadenablegroupstorage", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 667]
!419 = metadata !{i32 786688, metadata !375, metadata !"overloadevolve", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 667]
!420 = metadata !{i32 786688, metadata !375, metadata !"overloadexit", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 667]
!421 = metadata !{i32 786688, metadata !375, metadata !"overloadgroupdynamicdata", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 667]
!422 = metadata !{i32 786688, metadata !375, metadata !"overloadmyproc", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 667]
!423 = metadata !{i32 786688, metadata !375, metadata !"overloadnprocs", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 667]
!424 = metadata !{i32 786688, metadata !375, metadata !"overloadparallelinit", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 667]
!425 = metadata !{i32 786688, metadata !375, metadata !"overloadquerygroupstorageb", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 667]
!426 = metadata !{i32 786688, metadata !375, metadata !"overloadsyncgroup", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 667]
!427 = metadata !{i32 786688, metadata !375, metadata !"padding_active", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 667]
!428 = metadata !{i32 786688, metadata !375, metadata !"padding_address_spacing", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 667]
!429 = metadata !{i32 786688, metadata !375, metadata !"padding_cacheline_bits", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 667]
!430 = metadata !{i32 786688, metadata !375, metadata !"padding_size", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 667]
!431 = metadata !{i32 786688, metadata !375, metadata !"processor_topology_1d_x", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 667]
!432 = metadata !{i32 786688, metadata !375, metadata !"processor_topology_2d_x", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 667]
!433 = metadata !{i32 786688, metadata !375, metadata !"processor_topology_2d_y", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 667]
!434 = metadata !{i32 786688, metadata !375, metadata !"processor_topology_3d_x", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 667]
!435 = metadata !{i32 786688, metadata !375, metadata !"processor_topology_3d_y", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 667]
!436 = metadata !{i32 786688, metadata !375, metadata !"processor_topology_3d_z", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 667]
!437 = metadata !{i32 786688, metadata !375, metadata !"storage_report_every", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 667]
!438 = metadata !{i32 786688, metadata !375, metadata !"timer_output", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 667]
!439 = metadata !{i32 786688, metadata !375, metadata !"terminate", metadata !5, i32 667, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 667]
!440 = metadata !{i32 786688, metadata !375, metadata !"cctk_initial_time", metadata !5, i32 667, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 667]
!441 = metadata !{i32 786688, metadata !375, metadata !"cctk_final_time", metadata !5, i32 667, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 667]
!442 = metadata !{i32 786688, metadata !375, metadata !"cctk_itlast", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 667]
!443 = metadata !{i32 786688, metadata !375, metadata !"terminate_next", metadata !5, i32 667, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 667]
!444 = metadata !{i32 786688, metadata !375, metadata !"cctk_pdummy_pointer", metadata !5, i32 667, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 667]
!445 = metadata !{i32 786688, metadata !375, metadata !"nstorage", metadata !5, i32 668, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstorage] [line 668]
!446 = metadata !{i32 786688, metadata !375, metadata !"nnostorage", metadata !5, i32 669, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnostorage] [line 669]
!447 = metadata !{i32 786688, metadata !375, metadata !"retval", metadata !5, i32 670, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 670]
!448 = metadata !{i32 786688, metadata !375, metadata !"var", metadata !5, i32 671, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 671]
!449 = metadata !{i32 786688, metadata !375, metadata !"GA", metadata !5, i32 672, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 672]
!450 = metadata !{i32 786688, metadata !375, metadata !"level", metadata !5, i32 673, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 673]
!451 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableScalarGroupStorage", metadata !"PUGH_EnableScalarGroupStorage", metadata !"", i32 585, metadata !376, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !452, i32 589} ; [ DW_TAG_subprogram ] [line 585] [local] [def] [scope 589] [PUGH_EnableScalarGroupStorage]
!452 = metadata !{metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524}
!453 = metadata !{i32 786689, metadata !451, metadata !"pughGH", metadata !5, i32 16777801, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 585]
!454 = metadata !{i32 786689, metadata !451, metadata !"first_var", metadata !5, i32 33555018, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var] [line 586]
!455 = metadata !{i32 786689, metadata !451, metadata !"n_variables", metadata !5, i32 50332235, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_variables] [line 587]
!456 = metadata !{i32 786689, metadata !451, metadata !"n_timelevels", metadata !5, i32 67109452, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 588]
!457 = metadata !{i32 786688, metadata !451, metadata !"ghost_size", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 590]
!458 = metadata !{i32 786688, metadata !451, metadata !"ghost_size_x", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 590]
!459 = metadata !{i32 786688, metadata !451, metadata !"ghost_size_y", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 590]
!460 = metadata !{i32 786688, metadata !451, metadata !"ghost_size_z", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 590]
!461 = metadata !{i32 786688, metadata !451, metadata !"global_nsize", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 590]
!462 = metadata !{i32 786688, metadata !451, metadata !"global_nx", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 590]
!463 = metadata !{i32 786688, metadata !451, metadata !"global_ny", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 590]
!464 = metadata !{i32 786688, metadata !451, metadata !"global_nz", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 590]
!465 = metadata !{i32 786688, metadata !451, metadata !"periodic", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 590]
!466 = metadata !{i32 786688, metadata !451, metadata !"periodic_x", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 590]
!467 = metadata !{i32 786688, metadata !451, metadata !"periodic_y", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 590]
!468 = metadata !{i32 786688, metadata !451, metadata !"periodic_z", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 590]
!469 = metadata !{i32 786688, metadata !451, metadata !"info", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 590]
!470 = metadata !{i32 786688, metadata !451, metadata !"initialize_memory", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 590]
!471 = metadata !{i32 786688, metadata !451, metadata !"partition", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 590]
!472 = metadata !{i32 786688, metadata !451, metadata !"partition_1d_x", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 590]
!473 = metadata !{i32 786688, metadata !451, metadata !"partition_2d_x", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 590]
!474 = metadata !{i32 786688, metadata !451, metadata !"partition_2d_y", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 590]
!475 = metadata !{i32 786688, metadata !451, metadata !"partition_3d_x", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 590]
!476 = metadata !{i32 786688, metadata !451, metadata !"partition_3d_y", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 590]
!477 = metadata !{i32 786688, metadata !451, metadata !"partition_3d_z", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 590]
!478 = metadata !{i32 786688, metadata !451, metadata !"processor_topology", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 590]
!479 = metadata !{i32 786688, metadata !451, metadata !"storage_verbose", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 590]
!480 = metadata !{i32 786688, metadata !451, metadata !"cacheline_mult", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 590]
!481 = metadata !{i32 786688, metadata !451, metadata !"enable_all_storage", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 590]
!482 = metadata !{i32 786688, metadata !451, metadata !"local_nsize", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 590]
!483 = metadata !{i32 786688, metadata !451, metadata !"local_nx", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 590]
!484 = metadata !{i32 786688, metadata !451, metadata !"local_ny", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 590]
!485 = metadata !{i32 786688, metadata !451, metadata !"local_nz", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 590]
!486 = metadata !{i32 786688, metadata !451, metadata !"overloadabort", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 590]
!487 = metadata !{i32 786688, metadata !451, metadata !"overloadarraygroupsizeb", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 590]
!488 = metadata !{i32 786688, metadata !451, metadata !"overloadbarrier", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 590]
!489 = metadata !{i32 786688, metadata !451, metadata !"overloaddisablegroupcomm", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 590]
!490 = metadata !{i32 786688, metadata !451, metadata !"overloaddisablegroupstorage", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 590]
!491 = metadata !{i32 786688, metadata !451, metadata !"overloadenablegroupcomm", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 590]
!492 = metadata !{i32 786688, metadata !451, metadata !"overloadenablegroupstorage", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 590]
!493 = metadata !{i32 786688, metadata !451, metadata !"overloadevolve", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 590]
!494 = metadata !{i32 786688, metadata !451, metadata !"overloadexit", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 590]
!495 = metadata !{i32 786688, metadata !451, metadata !"overloadgroupdynamicdata", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 590]
!496 = metadata !{i32 786688, metadata !451, metadata !"overloadmyproc", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 590]
!497 = metadata !{i32 786688, metadata !451, metadata !"overloadnprocs", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 590]
!498 = metadata !{i32 786688, metadata !451, metadata !"overloadparallelinit", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 590]
!499 = metadata !{i32 786688, metadata !451, metadata !"overloadquerygroupstorageb", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 590]
!500 = metadata !{i32 786688, metadata !451, metadata !"overloadsyncgroup", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 590]
!501 = metadata !{i32 786688, metadata !451, metadata !"padding_active", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 590]
!502 = metadata !{i32 786688, metadata !451, metadata !"padding_address_spacing", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 590]
!503 = metadata !{i32 786688, metadata !451, metadata !"padding_cacheline_bits", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 590]
!504 = metadata !{i32 786688, metadata !451, metadata !"padding_size", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 590]
!505 = metadata !{i32 786688, metadata !451, metadata !"processor_topology_1d_x", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 590]
!506 = metadata !{i32 786688, metadata !451, metadata !"processor_topology_2d_x", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 590]
!507 = metadata !{i32 786688, metadata !451, metadata !"processor_topology_2d_y", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 590]
!508 = metadata !{i32 786688, metadata !451, metadata !"processor_topology_3d_x", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 590]
!509 = metadata !{i32 786688, metadata !451, metadata !"processor_topology_3d_y", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 590]
!510 = metadata !{i32 786688, metadata !451, metadata !"processor_topology_3d_z", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 590]
!511 = metadata !{i32 786688, metadata !451, metadata !"storage_report_every", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 590]
!512 = metadata !{i32 786688, metadata !451, metadata !"timer_output", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 590]
!513 = metadata !{i32 786688, metadata !451, metadata !"terminate", metadata !5, i32 590, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 590]
!514 = metadata !{i32 786688, metadata !451, metadata !"cctk_initial_time", metadata !5, i32 590, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 590]
!515 = metadata !{i32 786688, metadata !451, metadata !"cctk_final_time", metadata !5, i32 590, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 590]
!516 = metadata !{i32 786688, metadata !451, metadata !"cctk_itlast", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 590]
!517 = metadata !{i32 786688, metadata !451, metadata !"terminate_next", metadata !5, i32 590, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 590]
!518 = metadata !{i32 786688, metadata !451, metadata !"cctk_pdummy_pointer", metadata !5, i32 590, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 590]
!519 = metadata !{i32 786688, metadata !451, metadata !"vtype", metadata !5, i32 591, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtype] [line 591]
!520 = metadata !{i32 786688, metadata !451, metadata !"vtypesize", metadata !5, i32 591, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtypesize] [line 591]
!521 = metadata !{i32 786688, metadata !451, metadata !"variable", metadata !5, i32 591, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 591]
!522 = metadata !{i32 786688, metadata !451, metadata !"level", metadata !5, i32 591, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 591]
!523 = metadata !{i32 786688, metadata !451, metadata !"retval", metadata !5, i32 591, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 591]
!524 = metadata !{i32 786688, metadata !451, metadata !"temp", metadata !5, i32 592, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 592]
!525 = metadata !{metadata !526, metadata !527, metadata !528, metadata !530, metadata !531, metadata !532, metadata !533}
!526 = metadata !{i32 786484, i32 0, null, metadata !"numberGA", metadata !"numberGA", metadata !"", metadata !5, i32 37, metadata !16, i32 1, i32 1, i32* @numberGA, null} ; [ DW_TAG_variable ] [numberGA] [line 37] [local] [def]
!527 = metadata !{i32 786484, i32 0, null, metadata !"numberGF", metadata !"numberGF", metadata !"", metadata !5, i32 38, metadata !16, i32 1, i32 1, i32* @numberGF, null} ; [ DW_TAG_variable ] [numberGF] [line 38] [local] [def]
!528 = metadata !{i32 786484, i32 0, null, metadata !"maxstorage", metadata !"maxstorage", metadata !"", metadata !5, i32 34, metadata !529, i32 1, i32 1, float* @maxstorage, null} ; [ DW_TAG_variable ] [maxstorage] [line 34] [local] [def]
!529 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!530 = metadata !{i32 786484, i32 0, null, metadata !"totalstorage", metadata !"totalstorage", metadata !"", metadata !5, i32 33, metadata !529, i32 1, i32 1, float* @totalstorage, null} ; [ DW_TAG_variable ] [totalstorage] [line 33] [local] [def]
!531 = metadata !{i32 786484, i32 0, null, metadata !"totalnumberGA", metadata !"totalnumberGA", metadata !"", metadata !5, i32 35, metadata !16, i32 1, i32 1, i32* @totalnumberGA, null} ; [ DW_TAG_variable ] [totalnumberGA] [line 35] [local] [def]
!532 = metadata !{i32 786484, i32 0, null, metadata !"totalnumberGF", metadata !"totalnumberGF", metadata !"", metadata !5, i32 36, metadata !16, i32 1, i32 1, i32* @totalnumberGF, null} ; [ DW_TAG_variable ] [totalnumberGF] [line 36] [local] [def]
!533 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 24, metadata !8, i32 1, i32 1, null, null}
!534 = metadata !{i32 25, i32 0, metadata !4, null}
!535 = metadata !{i32 102, i32 0, metadata !11, null}
!536 = metadata !{i32 103, i32 0, metadata !11, null}
!537 = metadata !{i32 104, i32 0, metadata !11, null}
!538 = metadata !{i32 105, i32 0, metadata !11, null}
!539 = metadata !{i32 112, i32 0, metadata !11, null}
!540 = metadata !{i32 114, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !11, i32 113, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!542 = metadata !{i32 115, i32 0, metadata !541, null}
!543 = metadata !{i32 117, i32 0, metadata !11, null}
!544 = metadata !{i32 118, i32 0, metadata !11, null}
!545 = metadata !{i32 121, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !11, i32 119, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!547 = metadata !{metadata !"any pointer", metadata !548}
!548 = metadata !{metadata !"omnipotent char", metadata !549}
!549 = metadata !{metadata !"Simple C/C++ TBAA"}
!550 = metadata !{i32 123, i32 0, metadata !546, null}
!551 = metadata !{metadata !"int", metadata !548}
!552 = metadata !{i32 125, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !546, i32 124, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!554 = metadata !{i32 127, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !553, i32 126, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!556 = metadata !{i32 128, i32 0, metadata !555, null}
!557 = metadata !{i32 131, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !553, i32 130, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!559 = metadata !{i32* null}
!560 = metadata !{i32 132, i32 0, metadata !558, null}
!561 = metadata !{i32 142, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !11, i32 141, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!563 = metadata !{i32 144, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !562, i32 143, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!565 = metadata !{i32 147, i32 0, metadata !564, null}
!566 = metadata !{i32 150, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !562, i32 149, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!568 = metadata !{i32 158, i32 0, metadata !11, null}
!569 = metadata !{i32 198, i32 0, metadata !133, null}
!570 = metadata !{i32 -1}
!571 = metadata !{i32 208, i32 0, metadata !133, null}
!572 = metadata !{i32 210, i32 0, metadata !133, null}
!573 = metadata !{i32 212, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !133, i32 211, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!575 = metadata !{i32 213, i32 0, metadata !574, null}
!576 = metadata !{i32 216, i32 0, metadata !133, null}
!577 = metadata !{i32 217, i32 0, metadata !133, null}
!578 = metadata !{i32 219, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !133, i32 218, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!580 = metadata !{i32 220, i32 0, metadata !579, null}
!581 = metadata !{i32 221, i32 0, metadata !579, null}
!582 = metadata !{i32 223, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !579, i32 222, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!584 = metadata !{i32 224, i32 0, metadata !583, null}
!585 = metadata !{i32 225, i32 0, metadata !583, null}
!586 = metadata !{i32 226, i32 0, metadata !579, null}
!587 = metadata !{i32 228, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !579, i32 227, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!589 = metadata !{i32 229, i32 0, metadata !588, null}
!590 = metadata !{i32 232, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !579, i32 231, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!592 = metadata !{i32 233, i32 0, metadata !591, null}
!593 = metadata !{i32 236, i32 0, metadata !579, null}
!594 = metadata !{i32 242, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !579, i32 241, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!596 = metadata !{i32 243, i32 0, metadata !595, null}
!597 = metadata !{i32 246, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !1, metadata !579, i32 245, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!599 = metadata !{i32 251, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !133, i32 250, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!601 = metadata !{i32 253, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !600, i32 252, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!603 = metadata !{i32 256, i32 0, metadata !602, null}
!604 = metadata !{i32 259, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !600, i32 258, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!606 = metadata !{i32 265, i32 0, metadata !133, null}
!607 = metadata !{i32 304, i32 0, metadata !177, null}
!608 = metadata !{i32 306, i32 0, metadata !177, null}
!609 = metadata !{i32 309, i32 0, metadata !177, null}
!610 = metadata !{i32 320, i32 0, metadata !177, null}
!611 = metadata !{i32 321, i32 0, metadata !177, null}
!612 = metadata !{i32 323, i32 0, metadata !177, null}
!613 = metadata !{i32 325, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !177, i32 324, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!615 = metadata !{i32 328, i32 0, metadata !614, null}
!616 = metadata !{i32 330, i32 0, metadata !614, null}
!617 = metadata !{i32 332, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !614, i32 331, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!619 = metadata !{i32 786689, metadata !451, metadata !"pughGH", metadata !5, i32 16777801, metadata !146, i32 0, metadata !617} ; [ DW_TAG_arg_variable ] [pughGH] [line 585]
!620 = metadata !{i32 585, i32 0, metadata !451, metadata !617}
!621 = metadata !{i32 786689, metadata !451, metadata !"first_var", metadata !5, i32 33555018, metadata !16, i32 0, metadata !617} ; [ DW_TAG_arg_variable ] [first_var] [line 586]
!622 = metadata !{i32 586, i32 0, metadata !451, metadata !617}
!623 = metadata !{i32 786689, metadata !451, metadata !"n_variables", metadata !5, i32 50332235, metadata !16, i32 0, metadata !617} ; [ DW_TAG_arg_variable ] [n_variables] [line 587]
!624 = metadata !{i32 587, i32 0, metadata !451, metadata !617}
!625 = metadata !{i32 786689, metadata !451, metadata !"n_timelevels", metadata !5, i32 67109452, metadata !16, i32 0, metadata !617} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 588]
!626 = metadata !{i32 588, i32 0, metadata !451, metadata !617}
!627 = metadata !{i32 590, i32 0, metadata !451, metadata !617}
!628 = metadata !{i32 786688, metadata !451, metadata !"initialize_memory", metadata !5, i32 590, metadata !8, i32 0, metadata !617} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 590]
!629 = metadata !{i32 595, i32 0, metadata !451, metadata !617}
!630 = metadata !{i32 786688, metadata !451, metadata !"vtype", metadata !5, i32 591, metadata !16, i32 0, metadata !617} ; [ DW_TAG_auto_variable ] [vtype] [line 591]
!631 = metadata !{i32 596, i32 0, metadata !451, metadata !617}
!632 = metadata !{i32 786688, metadata !451, metadata !"vtypesize", metadata !5, i32 591, metadata !16, i32 0, metadata !617} ; [ DW_TAG_auto_variable ] [vtypesize] [line 591]
!633 = metadata !{i32 597, i32 0, metadata !451, metadata !617}
!634 = metadata !{i32 786688, metadata !451, metadata !"temp", metadata !5, i32 592, metadata !46, i32 0, metadata !617} ; [ DW_TAG_auto_variable ] [temp] [line 592]
!635 = metadata !{i32 598, i32 0, metadata !451, metadata !617}
!636 = metadata !{i32 786688, metadata !451, metadata !"retval", metadata !5, i32 591, metadata !16, i32 0, metadata !617} ; [ DW_TAG_auto_variable ] [retval] [line 591]
!637 = metadata !{i32 601, i32 0, metadata !451, metadata !617}
!638 = metadata !{i32 603, i32 0, metadata !639, metadata !617}
!639 = metadata !{i32 786443, metadata !1, metadata !640, i32 603, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!640 = metadata !{i32 786443, metadata !1, metadata !451, i32 602, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!641 = metadata !{i32 605, i32 0, metadata !642, metadata !617}
!642 = metadata !{i32 786443, metadata !1, metadata !643, i32 605, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!643 = metadata !{i32 786443, metadata !1, metadata !639, i32 604, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!644 = metadata !{i32 607, i32 0, metadata !645, metadata !617}
!645 = metadata !{i32 786443, metadata !1, metadata !642, i32 606, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!646 = metadata !{i32 610, i32 0, metadata !645, metadata !617}
!647 = metadata !{i32 613, i32 0, metadata !645, metadata !617}
!648 = metadata !{i32 615, i32 0, metadata !649, metadata !617}
!649 = metadata !{i32 786443, metadata !1, metadata !645, i32 614, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!650 = metadata !{i32 616, i32 0, metadata !649, metadata !617}
!651 = metadata !{i32 339, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !1, metadata !614, i32 338, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!653 = metadata !{i32 786689, metadata !375, metadata !"pughGH", metadata !5, i32 16777878, metadata !146, i32 0, metadata !651} ; [ DW_TAG_arg_variable ] [pughGH] [line 662]
!654 = metadata !{i32 662, i32 0, metadata !375, metadata !651}
!655 = metadata !{i32 786689, metadata !375, metadata !"first_var", metadata !5, i32 33555095, metadata !16, i32 0, metadata !651} ; [ DW_TAG_arg_variable ] [first_var] [line 663]
!656 = metadata !{i32 663, i32 0, metadata !375, metadata !651}
!657 = metadata !{i32 786689, metadata !375, metadata !"n_variables", metadata !5, i32 50332312, metadata !16, i32 0, metadata !651} ; [ DW_TAG_arg_variable ] [n_variables] [line 664]
!658 = metadata !{i32 664, i32 0, metadata !375, metadata !651}
!659 = metadata !{i32 786689, metadata !375, metadata !"n_timelevels", metadata !5, i32 67109529, metadata !16, i32 0, metadata !651} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 665]
!660 = metadata !{i32 665, i32 0, metadata !375, metadata !651}
!661 = metadata !{i32 667, i32 0, metadata !375, metadata !651}
!662 = metadata !{i32 786688, metadata !375, metadata !"initialize_memory", metadata !5, i32 667, metadata !8, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 667]
!663 = metadata !{i32 786688, metadata !375, metadata !"padding_active", metadata !5, i32 667, metadata !15, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [padding_active] [line 667]
!664 = metadata !{i32 786688, metadata !375, metadata !"nnostorage", metadata !5, i32 669, metadata !16, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [nnostorage] [line 669]
!665 = metadata !{i32 676, i32 0, metadata !375, metadata !651}
!666 = metadata !{i32 786688, metadata !375, metadata !"nstorage", metadata !5, i32 668, metadata !16, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [nstorage] [line 668]
!667 = metadata !{i32 786688, metadata !375, metadata !"var", metadata !5, i32 671, metadata !16, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [var] [line 671]
!668 = metadata !{i32 678, i32 0, metadata !669, metadata !651}
!669 = metadata !{i32 786443, metadata !1, metadata !375, i32 678, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!670 = metadata !{i32 680, i32 0, metadata !671, metadata !651}
!671 = metadata !{i32 786443, metadata !1, metadata !672, i32 680, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!672 = metadata !{i32 786443, metadata !1, metadata !669, i32 679, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!673 = metadata !{i32 682, i32 0, metadata !674, metadata !651}
!674 = metadata !{i32 786443, metadata !1, metadata !671, i32 681, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!675 = metadata !{i32 699, i32 0, metadata !676, metadata !651}
!676 = metadata !{i32 786443, metadata !1, metadata !674, i32 685, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!677 = metadata !{i32 684, i32 0, metadata !674, metadata !651}
!678 = metadata !{i32 691, i32 0, metadata !676, metadata !651}
!679 = metadata !{i32 701, i32 0, metadata !676, metadata !651}
!680 = metadata !{i32 702, i32 0, metadata !676, metadata !651}
!681 = metadata !{i32 705, i32 0, metadata !682, metadata !651}
!682 = metadata !{i32 786443, metadata !1, metadata !674, i32 704, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!683 = metadata !{i32 706, i32 0, metadata !682, metadata !651}
!684 = metadata !{i32 711, i32 0, metadata !375, metadata !651}
!685 = metadata !{i32 713, i32 0, metadata !686, metadata !651}
!686 = metadata !{i32 786443, metadata !1, metadata !375, i32 712, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!687 = metadata !{i32 786688, metadata !375, metadata !"retval", metadata !5, i32 670, metadata !16, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [retval] [line 670]
!688 = metadata !{i32 714, i32 0, metadata !686, metadata !651}
!689 = metadata !{i32 715, i32 0, metadata !686, metadata !651}
!690 = metadata !{i32 718, i32 0, metadata !691, metadata !651}
!691 = metadata !{i32 786443, metadata !1, metadata !375, i32 717, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!692 = metadata !{i8* undef}
!693 = metadata !{i32 786688, metadata !375, metadata !"cctk_pdummy_pointer", metadata !5, i32 667, metadata !247, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 667]
!694 = metadata !{i32 721, i32 0, metadata !375, metadata !651}
!695 = metadata !{i32 343, i32 0, metadata !652, null}
!696 = metadata !{i32 346, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !652, i32 344, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!698 = metadata !{i32 347, i32 0, metadata !697, null}
!699 = metadata !{i32 349, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !697, i32 348, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!701 = metadata !{i32 350, i32 0, metadata !700, null}
!702 = metadata !{i32 353, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !697, i32 352, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!704 = metadata !{i32 355, i32 0, metadata !697, null}
!705 = metadata !{metadata !"float", metadata !548}
!706 = metadata !{i32 358, i32 0, metadata !697, null}
!707 = metadata !{i32 360, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !697, i32 359, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!709 = metadata !{i32 361, i32 0, metadata !708, null}
!710 = metadata !{i32 362, i32 0, metadata !708, null}
!711 = metadata !{i32 363, i32 0, metadata !708, null}
!712 = metadata !{i32 366, i32 0, metadata !697, null}
!713 = metadata !{i32 368, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !697, i32 367, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!715 = metadata !{i32 371, i32 0, metadata !714, null}
!716 = metadata !{i32 377, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !614, i32 376, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!718 = metadata !{i32 378, i32 0, metadata !717, null}
!719 = metadata !{i32 384, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !177, i32 383, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!721 = metadata !{i32 386, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !720, i32 385, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!723 = metadata !{i32 -2}
!724 = metadata !{i32 389, i32 0, metadata !722, null}
!725 = metadata !{i32 390, i32 0, metadata !722, null}
!726 = metadata !{i32 393, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !720, i32 392, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!728 = metadata !{i32 -3}
!729 = metadata !{i32 395, i32 0, metadata !727, null}
!730 = metadata !{i32 399, i32 0, metadata !177, null}
!731 = metadata !{i32 433, i32 0, metadata !267, null}
!732 = metadata !{i32 435, i32 0, metadata !267, null}
!733 = metadata !{i32 437, i32 0, metadata !267, null}
!734 = metadata !{i32 450, i32 0, metadata !267, null}
!735 = metadata !{i32 451, i32 0, metadata !267, null}
!736 = metadata !{i32 454, i32 0, metadata !267, null}
!737 = metadata !{i32 456, i32 0, metadata !267, null}
!738 = metadata !{i32 459, i32 0, metadata !267, null}
!739 = metadata !{i32 1}
!740 = metadata !{i32 461, i32 0, metadata !267, null}
!741 = metadata !{i32 462, i32 0, metadata !267, null}
!742 = metadata !{i32 464, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 464, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!744 = metadata !{i32 786443, metadata !1, metadata !267, i32 463, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!745 = metadata !{i32 466, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !747, i32 466, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!747 = metadata !{i32 786443, metadata !1, metadata !743, i32 465, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!748 = metadata !{i32 468, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !746, i32 467, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!750 = metadata !{i32 474, i32 0, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !267, i32 473, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!752 = metadata !{i32 475, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !751, i32 475, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!754 = metadata !{i32 477, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !756, i32 477, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!756 = metadata !{i32 786443, metadata !1, metadata !753, i32 476, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!757 = metadata !{i32 480, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !755, i32 478, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!759 = metadata !{i32 479, i32 0, metadata !758, null}
!760 = metadata !{i32 482, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !758, i32 481, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!762 = metadata !{i32 483, i32 0, metadata !761, null}
!763 = metadata !{i32 486, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !758, i32 485, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!765 = metadata !{i32 493, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !267, i32 492, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!767 = metadata !{i32 494, i32 0, metadata !766, null}
!768 = metadata !{i32 498, i32 0, metadata !267, null}
!769 = metadata !{i32 500, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !267, i32 499, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!771 = metadata !{i32 504, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !770, i32 501, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!773 = metadata !{i32 512, i32 0, metadata !772, null}
!774 = metadata !{i32 506, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !772, i32 505, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!776 = metadata !{i32 507, i32 0, metadata !775, null}
!777 = metadata !{i32 510, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !772, i32 509, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!779 = metadata !{i32 511, i32 0, metadata !778, null}
!780 = metadata !{i32 516, i32 0, metadata !772, null}
!781 = metadata !{i32 518, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !772, i32 517, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!783 = metadata !{i32 521, i32 0, metadata !782, null}
!784 = metadata !{i32 523, i32 0, metadata !770, null}
!785 = metadata !{i32 526, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !770, i32 524, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!787 = metadata !{i32 528, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !786, i32 527, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!789 = metadata !{i32 529, i32 0, metadata !788, null}
!790 = metadata !{i32 533, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !770, i32 532, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!792 = metadata !{i32 537, i32 0, metadata !267, null}
!793 = metadata !{i32 873, i32 0, metadata !357, null}
!794 = metadata !{i32 877, i32 0, metadata !357, null}
!795 = metadata !{i32 879, i32 0, metadata !357, null}
!796 = metadata !{i32 888, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !357, i32 880, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!798 = metadata !{i32 890, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !797, i32 889, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!800 = metadata !{i32 891, i32 0, metadata !799, null}
!801 = metadata !{i32 894, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !797, i32 893, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!803 = metadata !{i32 896, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !802, i32 895, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!805 = metadata !{i32 897, i32 0, metadata !804, null}
!806 = metadata !{i32 898, i32 0, metadata !802, null}
!807 = metadata !{i32 899, i32 0, metadata !802, null}
!808 = metadata !{i32 902, i32 0, metadata !797, null}
!809 = metadata !{i32 903, i32 0, metadata !797, null}
!810 = metadata !{i32 905, i32 0, metadata !357, null}
!811 = metadata !{i32 764, i32 0, metadata !345, null}
!812 = metadata !{i32 765, i32 0, metadata !345, null}
!813 = metadata !{i32 766, i32 0, metadata !345, null}
!814 = metadata !{i32 767, i32 0, metadata !345, null}
!815 = metadata !{i32 768, i32 0, metadata !345, null}
!816 = metadata !{i32 769, i32 0, metadata !345, null}
!817 = metadata !{i32 770, i32 0, metadata !345, null}
!818 = metadata !{i32 776, i32 0, metadata !345, null}
!819 = metadata !{i32 777, i32 0, metadata !345, null}
!820 = metadata !{i32 778, i32 0, metadata !345, null}
!821 = metadata !{i32 779, i32 0, metadata !345, null}
!822 = metadata !{i32 780, i32 0, metadata !345, null}
!823 = metadata !{i32 782, i32 0, metadata !345, null}
!824 = metadata !{i32 783, i32 0, metadata !345, null}
!825 = metadata !{i32 792, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !1, metadata !345, i32 784, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!827 = metadata !{i32 794, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !826, i32 793, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!829 = metadata !{i32 795, i32 0, metadata !828, null}
!830 = metadata !{i32 796, i32 0, metadata !828, null}
!831 = metadata !{i32 801, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !826, i32 798, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!833 = metadata !{i32 803, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !832, i32 802, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!835 = metadata !{i32 804, i32 0, metadata !834, null}
!836 = metadata !{i32 805, i32 0, metadata !834, null}
!837 = metadata !{i32 807, i32 0, metadata !832, null}
!838 = metadata !{i32 809, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !832, i32 808, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!840 = metadata !{i32 813, i32 0, metadata !839, null}
!841 = metadata !{i32 812, i32 0, metadata !839, null}
!842 = metadata !{i32 829, i32 0, metadata !832, null}
!843 = metadata !{i32 814, i32 0, metadata !832, null}
!844 = metadata !{i32 817, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !832, i32 815, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!846 = metadata !{i32 818, i32 0, metadata !845, null}
!847 = metadata !{i32 819, i32 0, metadata !845, null}
!848 = metadata !{i32 823, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !832, i32 821, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!850 = metadata !{i32 831, i32 0, metadata !851, null}
!851 = metadata !{i32 786443, metadata !1, metadata !832, i32 830, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!852 = metadata !{i32 833, i32 0, metadata !851, null}
!853 = metadata !{i32 836, i32 0, metadata !826, null}
!854 = metadata !{i32 838, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !826, i32 837, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!856 = metadata !{i32 841, i32 0, metadata !855, null}
!857 = metadata !{i32 842, i32 0, metadata !855, null}
!858 = metadata !{i32 845, i32 0, metadata !345, null}
!859 = metadata !{i32 847, i32 0, metadata !345, null}
!860 = metadata !{i32 939, i32 0, metadata !366, null}
!861 = metadata !{i32 940, i32 0, metadata !366, null}
!862 = metadata !{i32 941, i32 0, metadata !366, null}
!863 = metadata !{i32 942, i32 0, metadata !366, null}
!864 = metadata !{i32 948, i32 0, metadata !366, null}
!865 = metadata !{i32 950, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !366, i32 949, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!867 = metadata !{i32 951, i32 0, metadata !866, null}
!868 = metadata !{i32 953, i32 0, metadata !366, null}
!869 = metadata !{i32 955, i32 0, metadata !870, null}
!870 = metadata !{i32 786443, metadata !1, metadata !366, i32 954, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!871 = metadata !{i32 956, i32 0, metadata !870, null}
!872 = metadata !{i32 957, i32 0, metadata !870, null}
!873 = metadata !{i32 959, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !870, i32 958, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!875 = metadata !{i32 960, i32 0, metadata !874, null}
!876 = metadata !{i32 962, i32 0, metadata !366, null}
!877 = metadata !{i32 964, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !366, i32 963, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c]
!879 = metadata !{i32 967, i32 0, metadata !878, null}
!880 = metadata !{i32 968, i32 0, metadata !366, null}
!881 = metadata !{i32 982, i32 0, metadata !363, null}
!882 = metadata !{i32 983, i32 0, metadata !363, null}
!883 = metadata !{i32 984, i32 0, metadata !363, null}
!884 = metadata !{i32 985, i32 0, metadata !363, null}

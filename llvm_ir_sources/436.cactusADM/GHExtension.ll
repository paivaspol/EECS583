; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.cTimerData = type { i32, %struct.cTimerVal* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }

@driverrest_ = external global %struct.anon
@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [66 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"Failed to allocate memory for a pGH\00", align 1
@CCTK_EnableGroupStorage = external global i32 (%struct.cGH*, i8*)*
@.str3 = private unnamed_addr constant [14 x i8] c"CCTK_SHUTDOWN\00", align 1
@PUGHCallFunc = internal unnamed_addr global i32 (i8*, %struct.cFunctionData*, i8*)* null, align 8
@.str4 = private unnamed_addr constant [37 x i8] c"Elapsed time spent in communication:\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"  %s: %d %s\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"  %s: %.3f %s\00", align 1
@.str7 = private unnamed_addr constant [33 x i8] c"Unknown data type for timer info\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"Couldn't create timer info structure ! No timing output available.\00", align 1
@.str9 = private unnamed_addr constant [41 x i8] c"PUGH_InitGHVariables: Unknown group type\00", align 1
@.str10 = private unnamed_addr constant [91 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/GHExtension.c,v 1.59 2001/11/05 15:01:46 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_pugh_GHExtension_c() #0 {
entry:
  ret i8* getelementptr inbounds ([91 x i8]* @.str10, i64 0, i64 0), !dbg !594
}

; Function Attrs: nounwind optsize uwtable
define i8* @PUGH_SetupGH(%struct.tFleshConfig* nocapture %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
entry:
  %pgroup = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !83), !dbg !595
  call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !84), !dbg !596
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !85), !dbg !597
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %pgroup}, metadata !156), !dbg !598
  call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !83), !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !84), !dbg !600
  %call = call i32 @CCTK_MaxDim() #7, !dbg !601
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !88), !dbg !601
  %mul = mul nsw i32 %call, 5, !dbg !602
  %conv = sext i32 %mul to i64, !dbg !602
  %mul1 = shl nsw i64 %conv, 2, !dbg !602
  %call2 = call noalias i8* @malloc(i64 %mul1) #7, !dbg !602
  %0 = bitcast i8* %call2 to i32*, !dbg !602
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !170), !dbg !602
  %idx.ext = sext i32 %call to i64, !dbg !603
  %add.ptr = getelementptr inbounds i32* %0, i64 %idx.ext, !dbg !603
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !171), !dbg !603
  %mul4 = shl nsw i32 %call, 1, !dbg !604
  %idx.ext5 = sext i32 %mul4 to i64, !dbg !604
  %add.ptr6 = getelementptr inbounds i32* %0, i64 %idx.ext5, !dbg !604
  call void @llvm.dbg.value(metadata !{i32* %add.ptr6}, i64 0, metadata !172), !dbg !604
  call void @PUGH_GFSize(i32 %call, i32* %0) #8, !dbg !605
  call void @PUGH_GFGhostsize(i32 %call, i32* %add.ptr) #8, !dbg !606
  call void @PUGH_GFPeriodic(i32 %call, i32* %add.ptr6) #8, !dbg !607
  %1 = bitcast %struct.cGH* %GH to i8*, !dbg !608
  %call7 = call i32 @CCTK_StaggerVars() #7, !dbg !609
  %tobool = icmp ne i32 %call7, 0, !dbg !609
  %cond = zext i1 %tobool to i32, !dbg !609
  %call8 = call %struct.PGH* @PUGH_SetupPGH(i8* %1, i32 %call, i32* %0, i32* %add.ptr, i32 %cond, i32* %add.ptr6) #7, !dbg !609
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call8}, i64 0, metadata !89), !dbg !609
  %tobool9 = icmp eq %struct.PGH* %call8, null, !dbg !610
  br i1 %tobool9, label %if.then, label %if.end, !dbg !610

if.then:                                          ; preds = %entry
  %call10 = call i32 @CCTK_Warn(i32 0, i32 108, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !611
  br label %if.end, !dbg !613

if.end:                                           ; preds = %entry, %if.then
  %call11 = call noalias i8* @calloc(i64 1, i64 1) #7, !dbg !614
  %identity_string = getelementptr inbounds %struct.PGH* %call8, i64 0, i32 23, !dbg !614
  store i8* %call11, i8** %identity_string, align 8, !dbg !614, !tbaa !615
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !87), !dbg !618
  %call12114 = call i32 @CCTK_NumGroups() #7, !dbg !618
  %cmp115 = icmp sgt i32 %call12114, 0, !dbg !618
  br i1 %cmp115, label %for.body.lr.ph, label %for.end69, !dbg !618

for.body.lr.ph:                                   ; preds = %if.end
  %mul15 = mul nsw i32 %call, 3, !dbg !620
  %idx.ext16 = sext i32 %mul15 to i64, !dbg !620
  %add.ptr17 = getelementptr inbounds i32* %0, i64 %idx.ext16, !dbg !620
  %mul18 = shl nsw i32 %call, 2, !dbg !622
  %idx.ext19 = sext i32 %mul18 to i64, !dbg !622
  %add.ptr20 = getelementptr inbounds i32* %0, i64 %idx.ext19, !dbg !622
  %grouptype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !623
  %2 = bitcast i32* %add.ptr20 to i8*, !dbg !624
  %dim58 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 4, !dbg !624
  %vartype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 1, !dbg !626
  %numvars = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !626
  %stagtype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 3, !dbg !626
  %numtimelevels = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !626
  %vectorgroup = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 7, !dbg !626
  %disttype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 2, !dbg !627
  br label %for.body, !dbg !618

for.body:                                         ; preds = %for.body.lr.ph, %if.end63
  %group.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc68, %if.end63 ]
  %call14 = call i32 @CCTK_GroupData(i32 %group.0116, %struct.cGroup* %pgroup) #7, !dbg !631
  call void @llvm.dbg.value(metadata !{i32* %add.ptr17}, i64 0, metadata !174), !dbg !620
  call void @llvm.dbg.value(metadata !{i32* %add.ptr20}, i64 0, metadata !173), !dbg !622
  %call21 = call i32** @CCTK_GroupSizesI(i32 %group.0116) #7, !dbg !632
  call void @llvm.dbg.value(metadata !{i32** %call21}, i64 0, metadata !169), !dbg !632
  %tobool22 = icmp eq i32** %call21, null, !dbg !633
  br i1 %tobool22, label %if.end38, label %for.cond24.preheader, !dbg !633

for.cond24.preheader:                             ; preds = %for.body
  %3 = load i32* %dim58, align 4, !dbg !634, !tbaa !635
  %cmp25110 = icmp sgt i32 %3, 0, !dbg !634
  br i1 %cmp25110, label %for.body27.lr.ph, label %if.end38, !dbg !634

for.body27.lr.ph:                                 ; preds = %for.cond24.preheader
  %.pre119 = load i32* %disttype, align 4, !dbg !627, !tbaa !635
  br label %for.body27, !dbg !634

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next, %for.body27 ]
  %arrayidx = getelementptr inbounds i32** %call21, i64 %indvars.iv, !dbg !636
  %4 = load i32** %arrayidx, align 8, !dbg !636, !tbaa !615
  %5 = load i32* %4, align 4, !dbg !636, !tbaa !635
  %add.ptr17.sum = add i64 %indvars.iv, %idx.ext16, !dbg !636
  %arrayidx29 = getelementptr inbounds i32* %0, i64 %add.ptr17.sum, !dbg !636
  %cmp30 = icmp eq i32 %.pre119, 1, !dbg !627
  %sub = sub nsw i32 0, %5, !dbg !637
  %sub. = select i1 %cmp30, i32 %sub, i32 %5, !dbg !627
  store i32 %sub., i32* %arrayidx29, align 4, !dbg !636, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !634
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !634
  %cmp25 = icmp slt i32 %6, %3, !dbg !634
  br i1 %cmp25, label %for.body27, label %if.end38, !dbg !634

if.end38:                                         ; preds = %for.cond24.preheader, %for.body27, %for.body
  %groupsize.0 = phi i32* [ null, %for.body ], [ %add.ptr17, %for.body27 ], [ %add.ptr17, %for.cond24.preheader ]
  %call39 = call i32** @CCTK_GroupGhostsizesI(i32 %group.0116) #7, !dbg !639
  call void @llvm.dbg.value(metadata !{i32** %call39}, i64 0, metadata !169), !dbg !639
  %tobool40 = icmp eq i32** %call39, null, !dbg !640
  br i1 %tobool40, label %if.else54, label %for.cond42.preheader, !dbg !640

for.cond42.preheader:                             ; preds = %if.end38
  %7 = load i32* %dim58, align 4, !dbg !641, !tbaa !635
  %cmp44112 = icmp sgt i32 %7, 0, !dbg !641
  br i1 %cmp44112, label %for.body46, label %if.end63.loopexit, !dbg !641

for.body46:                                       ; preds = %for.cond42.preheader, %for.body46
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.body46 ], [ 0, %for.cond42.preheader ]
  %arrayidx48 = getelementptr inbounds i32** %call39, i64 %indvars.iv117, !dbg !644
  %8 = load i32** %arrayidx48, align 8, !dbg !644, !tbaa !615
  %9 = load i32* %8, align 4, !dbg !644, !tbaa !635
  %add.ptr20.sum = add i64 %indvars.iv117, %idx.ext19, !dbg !644
  %arrayidx50 = getelementptr inbounds i32* %0, i64 %add.ptr20.sum, !dbg !644
  store i32 %9, i32* %arrayidx50, align 4, !dbg !644, !tbaa !635
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !641
  %10 = trunc i64 %indvars.iv.next118 to i32, !dbg !641
  %cmp44 = icmp slt i32 %10, %7, !dbg !641
  br i1 %cmp44, label %for.body46, label %if.end63.loopexit, !dbg !641

if.else54:                                        ; preds = %if.end38
  %11 = load i32* %grouptype, align 4, !dbg !623, !tbaa !635
  %cmp55 = icmp eq i32 %11, 3, !dbg !623
  %12 = load i32* %dim58, align 4, !dbg !624, !tbaa !635
  br i1 %cmp55, label %if.then57, label %if.end63, !dbg !623

if.then57:                                        ; preds = %if.else54
  %conv59 = sext i32 %12 to i64, !dbg !624
  %mul60 = shl nsw i64 %conv59, 2, !dbg !624
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul60, i32 4, i1 false), !dbg !624
  br label %if.end63, !dbg !646

if.end63.loopexit:                                ; preds = %for.body46, %for.cond42.preheader
  %.pre = load i32* %grouptype, align 4, !dbg !626, !tbaa !635
  br label %if.end63

if.end63:                                         ; preds = %if.else54, %if.end63.loopexit, %if.then57
  %13 = phi i32 [ %12, %if.then57 ], [ %7, %if.end63.loopexit ], [ %12, %if.else54 ]
  %14 = phi i32 [ 3, %if.then57 ], [ %.pre, %if.end63.loopexit ], [ %11, %if.else54 ]
  %groupghostsize.0 = phi i32* [ %add.ptr20, %if.then57 ], [ %add.ptr20, %if.end63.loopexit ], [ null, %if.else54 ]
  %15 = load i32* %vartype, align 4, !dbg !626, !tbaa !635
  %16 = load i32* %numvars, align 4, !dbg !626, !tbaa !635
  %17 = load i32* %stagtype, align 4, !dbg !626, !tbaa !635
  %18 = load i32* %numtimelevels, align 4, !dbg !626, !tbaa !635
  %19 = load i32* %vectorgroup, align 4, !dbg !626, !tbaa !635
  %call66 = call i32 @PUGH_SetupGroup(%struct.PGH* %call8, i32* %groupsize.0, i32* %groupghostsize.0, i32 %14, i32 %15, i32 %13, i32 %16, i32 %17, i32 %18, i32 %19) #7, !dbg !626
  %inc68 = add nsw i32 %group.0116, 1, !dbg !618
  call void @llvm.dbg.value(metadata !{i32 %inc68}, i64 0, metadata !87), !dbg !618
  %call12 = call i32 @CCTK_NumGroups() #7, !dbg !618
  %cmp = icmp slt i32 %inc68, %call12, !dbg !618
  br i1 %cmp, label %for.body, label %for.end69, !dbg !618

for.end69:                                        ; preds = %if.end63, %if.end
  call void @free(i8* %call2) #7, !dbg !647
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !238), !dbg !649
  %20 = bitcast %struct.PGH* %call8 to i8*, !dbg !649
  ret i8* %20, !dbg !649
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_MaxDim() #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize uwtable
define void @PUGH_GFSize(i32 %dim, i32* nocapture %nsize) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !348), !dbg !650
  tail call void @llvm.dbg.value(metadata !{i32* %nsize}, i64 0, metadata !349), !dbg !650
  %0 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 4), align 4, !dbg !651, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !356), !dbg !651
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 5), align 4, !dbg !651, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !357), !dbg !651
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 6), align 4, !dbg !651, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !358), !dbg !651
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 7), align 4, !dbg !651, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !359), !dbg !651
  %4 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 13) to i64*), align 8, !dbg !651
  %5 = trunc i64 %4 to i32, !dbg !651
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !377), !dbg !651
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !378), !dbg !651
  %8 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 15) to i64*), align 8, !dbg !651
  %9 = trunc i64 %8 to i32, !dbg !651
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !379), !dbg !651
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !380), !dbg !651
  %cmp = icmp sgt i32 %0, 0, !dbg !652
  %cmp1 = icmp sgt i32 %5, 0, !dbg !652
  %or.cond = or i1 %cmp, %cmp1, !dbg !652
  br i1 %or.cond, label %if.then, label %if.else, !dbg !652

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 0, %5, !dbg !653
  %cond = select i1 %cmp, i32 %0, i32 %sub, !dbg !653
  %cmp339 = icmp sgt i32 %dim, 0, !dbg !655
  br i1 %cmp339, label %for.body, label %if.end, !dbg !655

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %nsize, i64 %indvars.iv, !dbg !657
  store i32 %cond, i32* %arrayidx, align 4, !dbg !657, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !655
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !655
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !655
  br i1 %exitcond, label %if.end, label %for.body, !dbg !655

if.else:                                          ; preds = %entry
  switch i32 %dim, label %if.end [
    i32 3, label %sw.bb
    i32 2, label %sw.bb11
    i32 1, label %sw.bb19
  ], !dbg !659

sw.bb:                                            ; preds = %if.else
  %cmp4 = icmp sgt i32 %11, 0, !dbg !661
  %sub6 = sub nsw i32 0, %11, !dbg !661
  %cond9 = select i1 %cmp4, i32 %sub6, i32 %3, !dbg !661
  %arrayidx10 = getelementptr inbounds i32* %nsize, i64 2, !dbg !661
  store i32 %cond9, i32* %arrayidx10, align 4, !dbg !661, !tbaa !635
  br label %sw.bb11, !dbg !661

sw.bb11:                                          ; preds = %if.else, %sw.bb
  %cmp12 = icmp sgt i32 %9, 0, !dbg !663
  %sub14 = sub nsw i32 0, %9, !dbg !663
  %cond17 = select i1 %cmp12, i32 %sub14, i32 %2, !dbg !663
  %arrayidx18 = getelementptr inbounds i32* %nsize, i64 1, !dbg !663
  store i32 %cond17, i32* %arrayidx18, align 4, !dbg !663, !tbaa !635
  br label %sw.bb19, !dbg !663

sw.bb19:                                          ; preds = %if.else, %sw.bb11
  %cmp20 = icmp sgt i32 %7, 0, !dbg !664
  %sub22 = sub nsw i32 0, %7, !dbg !664
  %cond25 = select i1 %cmp20, i32 %sub22, i32 %1, !dbg !664
  store i32 %cond25, i32* %nsize, align 4, !dbg !664, !tbaa !635
  br label %if.end, !dbg !665

if.end:                                           ; preds = %if.then, %for.body, %if.else, %sw.bb19
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !413), !dbg !666
  ret void, !dbg !666
}

; Function Attrs: nounwind optsize uwtable
define void @PUGH_GFGhostsize(i32 %dim, i32* nocapture %ghostsize) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !416), !dbg !667
  tail call void @llvm.dbg.value(metadata !{i32* %ghostsize}, i64 0, metadata !417), !dbg !667
  %0 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 0), align 4, !dbg !668, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !419), !dbg !668
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 1), align 4, !dbg !668, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !420), !dbg !668
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 2), align 4, !dbg !668, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !421), !dbg !668
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 3), align 4, !dbg !668, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !422), !dbg !668
  %cmp = icmp sgt i32 %0, -1, !dbg !669
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !669

for.cond.preheader:                               ; preds = %entry
  %cmp116 = icmp sgt i32 %dim, 0, !dbg !670
  br i1 %cmp116, label %for.body, label %if.end, !dbg !670

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %ghostsize, i64 %indvars.iv, !dbg !673
  store i32 %0, i32* %arrayidx, align 4, !dbg !673, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !670
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !670
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !670
  br i1 %exitcond, label %if.end, label %for.body, !dbg !670

if.else:                                          ; preds = %entry
  %4 = bitcast i32* %ghostsize to i8*, !dbg !675
  %conv = sext i32 %dim to i64, !dbg !675
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %conv, i32 4, i1 false), !dbg !675
  switch i32 %dim, label %if.end [
    i32 3, label %sw.bb
    i32 2, label %sw.bb3
    i32 1, label %sw.bb5
  ], !dbg !677

sw.bb:                                            ; preds = %if.else
  %arrayidx2 = getelementptr inbounds i32* %ghostsize, i64 2, !dbg !678
  store i32 %3, i32* %arrayidx2, align 4, !dbg !678, !tbaa !635
  br label %sw.bb3, !dbg !678

sw.bb3:                                           ; preds = %if.else, %sw.bb
  %arrayidx4 = getelementptr inbounds i32* %ghostsize, i64 1, !dbg !680
  store i32 %2, i32* %arrayidx4, align 4, !dbg !680, !tbaa !635
  br label %sw.bb5, !dbg !680

sw.bb5:                                           ; preds = %if.else, %sw.bb3
  store i32 %1, i32* %ghostsize, align 4, !dbg !681, !tbaa !635
  br label %if.end, !dbg !682

if.end:                                           ; preds = %for.cond.preheader, %for.body, %if.else, %sw.bb5
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !480), !dbg !683
  ret void, !dbg !683
}

; Function Attrs: nounwind optsize uwtable
define void @PUGH_GFPeriodic(i32 %dim, i32* nocapture %perme) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !483), !dbg !684
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !484), !dbg !684
  %0 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 8), align 4, !dbg !685, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !493), !dbg !685
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 9), align 4, !dbg !685, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !494), !dbg !685
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 10), align 4, !dbg !685, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !495), !dbg !685
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 11), align 4, !dbg !685, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !496), !dbg !685
  %tobool = icmp eq i32 %0, 0, !dbg !686
  br i1 %tobool, label %if.else, label %if.then, !dbg !686

if.then:                                          ; preds = %entry
  switch i32 %dim, label %if.end [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb3
  ], !dbg !687

sw.bb:                                            ; preds = %if.then
  %arrayidx = getelementptr inbounds i32* %perme, i64 2, !dbg !689
  store i32 %3, i32* %arrayidx, align 4, !dbg !689, !tbaa !635
  br label %sw.bb1, !dbg !689

sw.bb1:                                           ; preds = %if.then, %sw.bb
  %arrayidx2 = getelementptr inbounds i32* %perme, i64 1, !dbg !691
  store i32 %2, i32* %arrayidx2, align 4, !dbg !691, !tbaa !635
  br label %sw.bb3, !dbg !691

sw.bb3:                                           ; preds = %if.then, %sw.bb1
  store i32 %1, i32* %perme, align 4, !dbg !692, !tbaa !635
  br label %if.end, !dbg !693

if.else:                                          ; preds = %entry
  %4 = bitcast i32* %perme to i8*, !dbg !694
  %conv = sext i32 %dim to i64, !dbg !694
  %mul = shl nsw i64 %conv, 2, !dbg !694
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul, i32 4, i1 false), !dbg !694
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3, %if.else
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !546), !dbg !696
  ret void, !dbg !696
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_SetupPGH(i8*, i32, i32*, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerVars() #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32** @CCTK_GroupSizesI(i32) #3

; Function Attrs: optsize
declare i32** @CCTK_GroupGhostsizesI(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @PUGH_SetupGroup(%struct.PGH*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_InitGH(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !245), !dbg !697
  %0 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 12), align 4, !dbg !698, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !271), !dbg !698
  tail call fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #8, !dbg !699
  %tobool = icmp eq i32 %0, 0, !dbg !700
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !700

for.cond.preheader:                               ; preds = %entry
  %call6 = tail call i32 @CCTK_NumGroups() #7, !dbg !701
  %cmp7 = icmp sgt i32 %call6, 0, !dbg !701
  br i1 %cmp7, label %for.body, label %if.end, !dbg !701

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %1 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !dbg !704, !tbaa !615
  %call1 = tail call i8* @CCTK_GroupName(i32 %i.08) #7, !dbg !704
  %call2 = tail call i32 %1(%struct.cGH* %GH, i8* %call1) #7, !dbg !704
  %inc = add nsw i32 %i.08, 1, !dbg !701
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !246), !dbg !701
  %call = tail call i32 @CCTK_NumGroups() #7, !dbg !701
  %cmp = icmp slt i32 %inc, %call, !dbg !701
  br i1 %cmp, label %for.body, label %if.end, !dbg !701

if.end:                                           ; preds = %for.cond.preheader, %for.body, %entry
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  tail call void @llvm.dbg.value(metadata !648, i64 0, metadata !308), !dbg !706
  ret i32 0, !dbg !706
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !586), !dbg !707
  %call = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !708
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %call}, i64 0, metadata !589), !dbg !708
  %cctk_dim = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !709
  %0 = load i32* %cctk_dim, align 4, !dbg !709, !tbaa !635
  %cmp = icmp sgt i32 %0, 0, !dbg !709
  br i1 %cmp, label %for.body.lr.ph, label %if.end, !dbg !709

if.end:                                           ; preds = %entry
  %cctk_convlevel = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !710
  store i32 0, i32* %cctk_convlevel, align 4, !dbg !710, !tbaa !635
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !587), !dbg !711
  br label %for.end72

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %0, -1, !dbg !713
  %idxprom = sext i32 %sub to i64, !dbg !713
  %GFExtras2 = getelementptr inbounds %struct.PGH* %call, i64 0, i32 21, !dbg !713
  %1 = load %struct.PGExtras*** %GFExtras2, align 8, !dbg !713, !tbaa !615
  %arrayidx = getelementptr inbounds %struct.PGExtras** %1, i64 %idxprom, !dbg !713
  %2 = load %struct.PGExtras** %arrayidx, align 8, !dbg !713, !tbaa !615
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %2}, i64 0, metadata !590), !dbg !713
  %cctk_convlevel127 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !710
  store i32 0, i32* %cctk_convlevel127, align 4, !dbg !710, !tbaa !635
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !587), !dbg !711
  %cctk_levfac = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !715
  %3 = load i32** %cctk_levfac, align 8, !dbg !715, !tbaa !615
  %nghostzones = getelementptr inbounds %struct.PGExtras* %2, i64 0, i32 12, !dbg !717
  %4 = load i32** %nghostzones, align 8, !dbg !717, !tbaa !615
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !717
  %5 = load i32** %cctk_nghostzones, align 8, !dbg !717, !tbaa !615
  %lnsize = getelementptr inbounds %struct.PGExtras* %2, i64 0, i32 6, !dbg !718
  %6 = load i32** %lnsize, align 8, !dbg !718, !tbaa !615
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !718
  %7 = load i32** %cctk_lsh, align 8, !dbg !718, !tbaa !615
  %nsize = getelementptr inbounds %struct.PGExtras* %2, i64 0, i32 1, !dbg !719
  %8 = load i32** %nsize, align 8, !dbg !719, !tbaa !615
  %cctk_gsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !719
  %9 = load i32** %cctk_gsh, align 8, !dbg !719, !tbaa !615
  %bbox = getelementptr inbounds %struct.PGExtras* %2, i64 0, i32 5, !dbg !720
  %10 = load i32** %bbox, align 8, !dbg !720, !tbaa !615
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !720
  %11 = load i32** %cctk_bbox, align 8, !dbg !720, !tbaa !615
  %myproc = getelementptr inbounds %struct.PGH* %call, i64 0, i32 3, !dbg !721
  %lb = getelementptr inbounds %struct.PGExtras* %2, i64 0, i32 3, !dbg !721
  %12 = load i32*** %lb, align 8, !dbg !721, !tbaa !615
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !721
  %13 = load i32** %cctk_lbnd, align 8, !dbg !721, !tbaa !615
  %ub = getelementptr inbounds %struct.PGExtras* %2, i64 0, i32 4, !dbg !722
  %14 = load i32*** %ub, align 8, !dbg !722, !tbaa !615
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !722
  %15 = load i32** %cctk_ubnd, align 8, !dbg !722, !tbaa !615
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !723
  %16 = load i32** %cctk_lssh, align 8, !dbg !723, !tbaa !615
  br label %for.body, !dbg !711

for.body:                                         ; preds = %for.body.lr.ph, %for.inc70
  %indvars.iv125 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next126, %for.inc70 ]
  %arrayidx6 = getelementptr inbounds i32* %3, i64 %indvars.iv125, !dbg !715
  store i32 1, i32* %arrayidx6, align 4, !dbg !715, !tbaa !635
  %arrayidx8 = getelementptr inbounds i32* %4, i64 %indvars.iv125, !dbg !717
  %17 = load i32* %arrayidx8, align 4, !dbg !717, !tbaa !635
  %arrayidx10 = getelementptr inbounds i32* %5, i64 %indvars.iv125, !dbg !717
  store i32 %17, i32* %arrayidx10, align 4, !dbg !717, !tbaa !635
  %arrayidx12 = getelementptr inbounds i32* %6, i64 %indvars.iv125, !dbg !718
  %18 = load i32* %arrayidx12, align 4, !dbg !718, !tbaa !635
  %arrayidx14 = getelementptr inbounds i32* %7, i64 %indvars.iv125, !dbg !718
  store i32 %18, i32* %arrayidx14, align 4, !dbg !718, !tbaa !635
  %arrayidx16 = getelementptr inbounds i32* %8, i64 %indvars.iv125, !dbg !719
  %19 = load i32* %arrayidx16, align 4, !dbg !719, !tbaa !635
  %arrayidx18 = getelementptr inbounds i32* %9, i64 %indvars.iv125, !dbg !719
  store i32 %19, i32* %arrayidx18, align 4, !dbg !719, !tbaa !635
  %20 = trunc i64 %indvars.iv125 to i32, !dbg !720
  %mul = shl nsw i32 %20, 1, !dbg !720
  %idxprom19 = sext i32 %mul to i64, !dbg !720
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %idxprom19, !dbg !720
  %21 = load i32* %arrayidx20, align 4, !dbg !720, !tbaa !635
  %arrayidx23 = getelementptr inbounds i32* %11, i64 %idxprom19, !dbg !720
  store i32 %21, i32* %arrayidx23, align 4, !dbg !720, !tbaa !635
  %add120 = or i32 %mul, 1, !dbg !726
  %idxprom25 = sext i32 %add120 to i64, !dbg !726
  %arrayidx27 = getelementptr inbounds i32* %10, i64 %idxprom25, !dbg !726
  %22 = load i32* %arrayidx27, align 4, !dbg !726, !tbaa !635
  %arrayidx32 = getelementptr inbounds i32* %11, i64 %idxprom25, !dbg !726
  store i32 %22, i32* %arrayidx32, align 4, !dbg !726, !tbaa !635
  %23 = load i32* %myproc, align 4, !dbg !721, !tbaa !635
  %idxprom34 = sext i32 %23 to i64, !dbg !721
  %arrayidx35 = getelementptr inbounds i32** %12, i64 %idxprom34, !dbg !721
  %24 = load i32** %arrayidx35, align 8, !dbg !721, !tbaa !615
  %arrayidx36 = getelementptr inbounds i32* %24, i64 %indvars.iv125, !dbg !721
  %25 = load i32* %arrayidx36, align 4, !dbg !721, !tbaa !635
  %arrayidx38 = getelementptr inbounds i32* %13, i64 %indvars.iv125, !dbg !721
  store i32 %25, i32* %arrayidx38, align 4, !dbg !721, !tbaa !635
  %26 = load i32* %myproc, align 4, !dbg !722, !tbaa !635
  %idxprom41 = sext i32 %26 to i64, !dbg !722
  %arrayidx42 = getelementptr inbounds i32** %14, i64 %idxprom41, !dbg !722
  %27 = load i32** %arrayidx42, align 8, !dbg !722, !tbaa !615
  %arrayidx43 = getelementptr inbounds i32* %27, i64 %indvars.iv125, !dbg !722
  %28 = load i32* %arrayidx43, align 4, !dbg !722, !tbaa !635
  %arrayidx45 = getelementptr inbounds i32* %15, i64 %indvars.iv125, !dbg !722
  store i32 %28, i32* %arrayidx45, align 4, !dbg !722, !tbaa !635
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !588), !dbg !727
  %sext = mul i64 %indvars.iv125, 12884901888, !dbg !727
  %29 = ashr exact i64 %sext, 32, !dbg !727
  br label %for.body48, !dbg !727

for.body48:                                       ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %30 = load i32* %arrayidx14, align 4, !dbg !723, !tbaa !635
  %31 = add nsw i64 %indvars.iv, %29, !dbg !723
  %arrayidx55 = getelementptr inbounds i32* %16, i64 %31, !dbg !723
  store i32 %30, i32* %arrayidx55, align 4, !dbg !723, !tbaa !635
  %32 = load i32* %arrayidx32, align 4, !dbg !728, !tbaa !635
  %cmp61 = icmp eq i32 %32, 1, !dbg !728
  %33 = trunc i64 %indvars.iv to i32, !dbg !728
  %cmp62 = icmp sgt i32 %33, 0, !dbg !728
  %or.cond = and i1 %cmp61, %cmp62, !dbg !728
  br i1 %or.cond, label %if.then63, label %for.inc, !dbg !728

if.then63:                                        ; preds = %for.body48
  %dec = add nsw i32 %30, -1, !dbg !729
  store i32 %dec, i32* %arrayidx55, align 4, !dbg !729, !tbaa !635
  br label %for.inc, !dbg !731

for.inc:                                          ; preds = %for.body48, %if.then63
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !727
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !727
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !727
  br i1 %exitcond, label %for.inc70, label %for.body48, !dbg !727

for.inc70:                                        ; preds = %for.inc
  %indvars.iv.next126 = add i64 %indvars.iv125, 1, !dbg !711
  %34 = load i32* %cctk_dim, align 4, !dbg !711, !tbaa !635
  %35 = trunc i64 %indvars.iv.next126 to i32, !dbg !711
  %cmp4 = icmp slt i32 %35, %34, !dbg !711
  br i1 %cmp4, label %for.body, label %for.end72, !dbg !711

for.end72:                                        ; preds = %for.inc70, %if.end
  ret void, !dbg !732
}

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_ScheduleTraverseGH(%struct.cGH* %GH, i8* %where) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !313), !dbg !733
  tail call void @llvm.dbg.value(metadata !{i8* %where}, i64 0, metadata !314), !dbg !734
  %call = tail call i32 @strcmp(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i8* %where) #9, !dbg !735
  %tobool = icmp eq i32 %call, 0, !dbg !735
  br i1 %tobool, label %if.end, label %if.then, !dbg !735

if.then:                                          ; preds = %entry
  tail call fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #8, !dbg !736
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !738) #5, !dbg !740
  %call.i = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !741
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %call.i}, i64 0, metadata !742) #5, !dbg !741
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !743) #5, !dbg !744
  %nvariables.i = getelementptr inbounds %struct.PGH* %call.i, i64 0, i32 5, !dbg !744
  %0 = load i32* %nvariables.i, align 4, !dbg !744, !tbaa !635
  %cmp47.i = icmp sgt i32 %0, 0, !dbg !744
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %if.end, !dbg !744

for.body.lr.ph.i:                                 ; preds = %if.then
  %variables.i = getelementptr inbounds %struct.PGH* %call.i, i64 0, i32 7, !dbg !746
  %data.i = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !746
  br label %for.body.i, !dbg !744

for.body.i:                                       ; preds = %for.inc25.i, %for.body.lr.ph.i
  %indvars.iv49.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next50.i, %for.inc25.i ]
  %1 = trunc i64 %indvars.iv49.i to i32, !dbg !751
  %call1.i = tail call i32 @CCTK_GroupTypeFromVarI(i32 %1) #7, !dbg !751
  tail call void @llvm.dbg.value(metadata !{i32 %call1.i}, i64 0, metadata !752) #5, !dbg !751
  %call2.i = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %1) #7, !dbg !753
  tail call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !754) #5, !dbg !753
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !755) #5, !dbg !756
  %cmp444.i = icmp sgt i32 %call2.i, 0, !dbg !756
  br i1 %cmp444.i, label %for.body5.i, label %for.inc25.i, !dbg !756

for.body5.i:                                      ; preds = %for.body.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.body.i ]
  switch i32 %call1.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb12.i
  ], !dbg !757

sw.bb.i:                                          ; preds = %for.body5.i
  %2 = load i8**** %variables.i, align 8, !dbg !746, !tbaa !615
  %arrayidx.i = getelementptr inbounds i8*** %2, i64 %indvars.iv49.i, !dbg !746
  %3 = load i8*** %arrayidx.i, align 8, !dbg !746, !tbaa !615
  %arrayidx7.i = getelementptr inbounds i8** %3, i64 %indvars.iv.i, !dbg !746
  %4 = load i8** %arrayidx7.i, align 8, !dbg !746, !tbaa !615
  %5 = load i8**** %data.i, align 8, !dbg !746, !tbaa !615
  %arrayidx10.i = getelementptr inbounds i8*** %5, i64 %indvars.iv49.i, !dbg !746
  %6 = load i8*** %arrayidx10.i, align 8, !dbg !746, !tbaa !615
  %arrayidx11.i = getelementptr inbounds i8** %6, i64 %indvars.iv.i, !dbg !746
  store i8* %4, i8** %arrayidx11.i, align 8, !dbg !746, !tbaa !615
  br label %for.inc.i, !dbg !758

sw.bb12.i:                                        ; preds = %for.body5.i, %for.body5.i
  %7 = load i8**** %variables.i, align 8, !dbg !759, !tbaa !615
  %arrayidx16.i = getelementptr inbounds i8*** %7, i64 %indvars.iv49.i, !dbg !759
  %8 = load i8*** %arrayidx16.i, align 8, !dbg !759, !tbaa !615
  %arrayidx17.i = getelementptr inbounds i8** %8, i64 %indvars.iv.i, !dbg !759
  %9 = load i8** %arrayidx17.i, align 8, !dbg !759, !tbaa !615
  %data18.i = getelementptr inbounds i8* %9, i64 24, !dbg !759
  %10 = bitcast i8* %data18.i to i8**, !dbg !759
  %11 = load i8** %10, align 8, !dbg !759, !tbaa !615
  %12 = load i8**** %data.i, align 8, !dbg !759, !tbaa !615
  %arrayidx22.i = getelementptr inbounds i8*** %12, i64 %indvars.iv49.i, !dbg !759
  %13 = load i8*** %arrayidx22.i, align 8, !dbg !759, !tbaa !615
  %arrayidx23.i = getelementptr inbounds i8** %13, i64 %indvars.iv.i, !dbg !759
  store i8* %11, i8** %arrayidx23.i, align 8, !dbg !759, !tbaa !615
  br label %for.inc.i, !dbg !760

sw.default.i:                                     ; preds = %for.body5.i
  %call24.i = tail call i32 @CCTK_Warn(i32 1, i32 266, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !761
  br label %for.inc.i, !dbg !762

for.inc.i:                                        ; preds = %sw.default.i, %sw.bb12.i, %sw.bb.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !756
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !756
  %exitcond = icmp eq i32 %lftr.wideiv, %call2.i, !dbg !756
  br i1 %exitcond, label %for.inc25.i, label %for.body5.i, !dbg !756

for.inc25.i:                                      ; preds = %for.inc.i, %for.body.i
  %indvars.iv.next50.i = add i64 %indvars.iv49.i, 1, !dbg !744
  %14 = load i32* %nvariables.i, align 4, !dbg !744, !tbaa !635
  %15 = trunc i64 %indvars.iv.next50.i to i32, !dbg !744
  %cmp.i = icmp slt i32 %15, %14, !dbg !744
  br i1 %cmp.i, label %for.body.i, label %if.end, !dbg !744

if.end:                                           ; preds = %for.inc25.i, %if.then, %entry
  %16 = bitcast %struct.cGH* %GH to i8*, !dbg !763
  %17 = load i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc, align 8, !dbg !763, !tbaa !615
  %call2 = tail call i32 @CCTK_ScheduleTraverse(i8* %where, i8* %16, i32 (i8*, %struct.cFunctionData*, i8*)* %17) #7, !dbg !763
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !315), !dbg !763
  ret i32 %call2, !dbg !764
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @CCTK_ScheduleTraverse(i8*, i8*, i32 (i8*, %struct.cFunctionData*, i8*)*) #3

; Function Attrs: nounwind optsize uwtable
define void @PUGH_RegisterCallFunc(i32 (i8*, %struct.cFunctionData*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (i8*, %struct.cFunctionData*, i8*)* %func}, i64 0, metadata !343), !dbg !765
  store i32 (i8*, %struct.cFunctionData*, i8*)* %func, i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc, align 8, !dbg !766, !tbaa !615
  ret void, !dbg !767
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_PrintTimingInfo(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !549), !dbg !768
  %call = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !769
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %call}, i64 0, metadata !573), !dbg !769
  %comm_time = getelementptr inbounds %struct.PGH* %call, i64 0, i32 20, !dbg !770
  %0 = load i32* %comm_time, align 4, !dbg !770, !tbaa !635
  %cmp = icmp slt i32 %0, 0, !dbg !770
  br i1 %cmp, label %return, label %if.end, !dbg !770

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #7, !dbg !771
  tail call void @llvm.dbg.value(metadata !{%struct.cTimerData* %call1}, i64 0, metadata !551), !dbg !771
  %tobool = icmp eq %struct.cTimerData* %call1, null, !dbg !772
  br i1 %tobool, label %if.else, label %if.then2, !dbg !772

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !773
  %1 = load i32* %comm_time, align 4, !dbg !775, !tbaa !635
  %call5 = tail call i32 @CCTK_TimerI(i32 %1, %struct.cTimerData* %call1) #7, !dbg !775
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !550), !dbg !776
  %n_vals = getelementptr inbounds %struct.cTimerData* %call1, i64 0, i32 0, !dbg !776
  %2 = load i32* %n_vals, align 4, !dbg !776, !tbaa !635
  %cmp675 = icmp sgt i32 %2, 0, !dbg !776
  br i1 %cmp675, label %for.body.lr.ph, label %for.end, !dbg !776

for.body.lr.ph:                                   ; preds = %if.then2
  %vals = getelementptr inbounds %struct.cTimerData* %call1, i64 0, i32 1, !dbg !778
  br label %for.body, !dbg !776

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %3 = load %struct.cTimerVal** %vals, align 8, !dbg !778, !tbaa !615
  %type = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 0, !dbg !778
  %4 = load i32* %type, align 4, !dbg !778, !tbaa !616
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb32
  ], !dbg !778

sw.bb:                                            ; preds = %for.body
  %heading = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 1, !dbg !780
  %5 = load i8** %heading, align 8, !dbg !780, !tbaa !615
  %val = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 3, !dbg !780
  %i13 = bitcast %union.anon* %val to i32*, !dbg !780
  %6 = load i32* %i13, align 4, !dbg !780, !tbaa !635
  %units = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 2, !dbg !780
  %7 = load i8** %units, align 8, !dbg !780, !tbaa !615
  %call17 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* %5, i32 %6, i8* %7) #7, !dbg !780
  br label %for.inc, !dbg !782

sw.bb18:                                          ; preds = %for.body
  %heading22 = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 1, !dbg !783
  %8 = load i8** %heading22, align 8, !dbg !783, !tbaa !615
  %l = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 3, i32 0, !dbg !783
  %9 = load i64* %l, align 8, !dbg !783, !tbaa !784
  %conv = trunc i64 %9 to i32, !dbg !783
  %units30 = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 2, !dbg !783
  %10 = load i8** %units30, align 8, !dbg !783, !tbaa !615
  %call31 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* %8, i32 %conv, i8* %10) #7, !dbg !783
  br label %for.inc, !dbg !785

sw.bb32:                                          ; preds = %for.body
  %heading36 = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 1, !dbg !786
  %11 = load i8** %heading36, align 8, !dbg !786, !tbaa !615
  %val40 = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 3, !dbg !786
  %d = bitcast %union.anon* %val40 to double*, !dbg !786
  %12 = load double* %d, align 8, !dbg !786, !tbaa !787
  %units44 = getelementptr inbounds %struct.cTimerVal* %3, i64 %indvars.iv, i32 2, !dbg !786
  %13 = load i8** %units44, align 8, !dbg !786, !tbaa !615
  %call45 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* %11, double %12, i8* %13) #7, !dbg !786
  br label %for.inc, !dbg !788

sw.default:                                       ; preds = %for.body
  %call46 = tail call i32 @CCTK_Warn(i32 1, i32 561, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !789
  br label %for.inc, !dbg !790

for.inc:                                          ; preds = %sw.bb, %sw.bb18, %sw.bb32, %sw.default
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !776
  %14 = load i32* %n_vals, align 4, !dbg !776, !tbaa !635
  %15 = trunc i64 %indvars.iv.next to i32, !dbg !776
  %cmp6 = icmp slt i32 %15, %14, !dbg !776
  br i1 %cmp6, label %for.body, label %for.end, !dbg !776

for.end:                                          ; preds = %for.inc, %if.then2
  %call47 = tail call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %call1) #7, !dbg !791
  br label %return, !dbg !792

if.else:                                          ; preds = %if.end
  %call48 = tail call i32 @CCTK_Warn(i32 1, i32 571, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !793
  br label %return

return:                                           ; preds = %for.end, %if.else, %entry
  ret i32 0, !dbg !795
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: optsize
declare %struct.cTimerData* @CCTK_TimerCreateData() #3

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_TimerI(i32, %struct.cTimerData*) #3

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_TimerDestroyData(%struct.cTimerData*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !21, metadata !22, metadata !591, metadata !21, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9, metadata !14}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Schedule.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"LangNone", i64 0} ; [ DW_TAG_enumerator ] [LangNone :: 0]
!7 = metadata !{i32 786472, metadata !"LangC", i64 1} ; [ DW_TAG_enumerator ] [LangC :: 1]
!8 = metadata !{i32 786472, metadata !"LangFortran", i64 2} ; [ DW_TAG_enumerator ] [LangFortran :: 2]
!9 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 16, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 16, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !11, metadata !12, metadata !13}
!11 = metadata !{i32 786472, metadata !"FunctionNoArgs", i64 0} ; [ DW_TAG_enumerator ] [FunctionNoArgs :: 0]
!12 = metadata !{i32 786472, metadata !"FunctionOneArg", i64 1} ; [ DW_TAG_enumerator ] [FunctionOneArg :: 1]
!13 = metadata !{i32 786472, metadata !"FunctionStandard", i64 2} ; [ DW_TAG_enumerator ] [FunctionStandard :: 2]
!14 = metadata !{i32 786436, metadata !15, null, metadata !"", i32 16, i64 32, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 16, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Timers.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20}
!17 = metadata !{i32 786472, metadata !"val_none", i64 0} ; [ DW_TAG_enumerator ] [val_none :: 0]
!18 = metadata !{i32 786472, metadata !"val_int", i64 1} ; [ DW_TAG_enumerator ] [val_int :: 1]
!19 = metadata !{i32 786472, metadata !"val_long", i64 2} ; [ DW_TAG_enumerator ] [val_long :: 2]
!20 = metadata !{i32 786472, metadata !"val_double", i64 3} ; [ DW_TAG_enumerator ] [val_double :: 3]
!21 = metadata !{i32 0}
!22 = metadata !{metadata !23, metadata !30, metadata !241, metadata !309, metadata !316, metadata !344, metadata !414, metadata !481, metadata !547, metadata !574, metadata !584}
!23 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"CCTKi_version_CactusPUGH_pugh_GHExtension_c", metadata !"CCTKi_version_CactusPUGH_pugh_GHExtension_c", metadata !"", i32 29, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_pugh_GHExtension_c, null, null, metadata !21, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [CCTKi_version_CactusPUGH_pugh_GHExtension_c]
!24 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_SetupGH", metadata !"PUGH_SetupGH", metadata !"", i32 76, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* @PUGH_SetupGH, null, null, metadata !82, i32 79} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 79] [PUGH_SetupGH]
!31 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{metadata !33, metadata !34, metadata !49, metadata !43}
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!35 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!36 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!37 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!38 = metadata !{metadata !39, metadata !41, metadata !80}
!39 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!41 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!44 = metadata !{i32 786454, metadata !37, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!45 = metadata !{i32 786451, metadata !46, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!46 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!47 = metadata !{metadata !48, metadata !50, metadata !51, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !61, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !72, metadata !73}
!48 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!49 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!50 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!51 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!53 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!54 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!55 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!56 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!57 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!58 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!59 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !60} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!60 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!61 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !62} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!63 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !62} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!64 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!65 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!66 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !49} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!67 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !52} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!68 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !60} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!69 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !70} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !71} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!73 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !74} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!75 = metadata !{i32 786454, metadata !46, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!76 = metadata !{i32 786451, metadata !46, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !77, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!77 = metadata !{metadata !78, metadata !79}
!78 = metadata !{i32 786445, metadata !46, metadata !76, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!79 = metadata !{i32 786445, metadata !46, metadata !76, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !29} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!80 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !81} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!81 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !156, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !235, metadata !236, metadata !237, metadata !238}
!83 = metadata !{i32 786689, metadata !30, metadata !"config", metadata !24, i32 16777292, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 76]
!84 = metadata !{i32 786689, metadata !30, metadata !"convergence_level", metadata !24, i32 33554509, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [convergence_level] [line 77]
!85 = metadata !{i32 786689, metadata !30, metadata !"GH", metadata !24, i32 50331726, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 78]
!86 = metadata !{i32 786688, metadata !30, metadata !"i", metadata !24, i32 80, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 80]
!87 = metadata !{i32 786688, metadata !30, metadata !"group", metadata !24, i32 80, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 80]
!88 = metadata !{i32 786688, metadata !30, metadata !"maxdim", metadata !24, i32 80, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxdim] [line 80]
!89 = metadata !{i32 786688, metadata !30, metadata !"newGH", metadata !24, i32 81, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newGH] [line 81]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!91 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!92 = metadata !{i32 786451, metadata !93, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!93 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !145, metadata !155}
!95 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!96 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!97 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!98 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!99 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !49} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!100 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !49} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!101 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !49} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!102 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !70} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!103 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !49} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!104 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !52} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!105 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !49} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!106 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !49} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!107 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !60} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!108 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !60} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!109 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !60} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!110 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !60} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!111 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !49} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!112 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !49} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!113 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !49} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!114 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !49} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!115 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !49} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!116 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !117} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!119 = metadata !{i32 786454, metadata !93, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!120 = metadata !{i32 786451, metadata !121, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !122, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!121 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !142, metadata !144}
!123 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!124 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!125 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!126 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !127} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!128 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !127} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!129 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !52} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!130 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !52} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!131 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !49} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!132 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !52} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!133 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !127} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!134 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !52} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!135 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !52} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!136 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !52} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!137 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !138} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!138 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !52, metadata !139, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!139 = metadata !{metadata !140, metadata !141}
!140 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!141 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!142 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !143} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!143 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !127, metadata !139, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!144 = metadata !{i32 786445, metadata !121, metadata !120, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !143} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!145 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !146} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!148 = metadata !{i32 786454, metadata !93, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!149 = metadata !{i32 786451, metadata !121, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !150, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154}
!151 = metadata !{i32 786445, metadata !121, metadata !149, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!152 = metadata !{i32 786445, metadata !121, metadata !149, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!153 = metadata !{i32 786445, metadata !121, metadata !149, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !127} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!154 = metadata !{i32 786445, metadata !121, metadata !149, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !52} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!155 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !40} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!156 = metadata !{i32 786688, metadata !30, metadata !"pgroup", metadata !24, i32 82, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pgroup] [line 82]
!157 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!158 = metadata !{i32 786451, metadata !159, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !160, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!159 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!161 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!162 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!163 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!164 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!165 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!166 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !49} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!167 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !49} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!168 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !49} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!169 = metadata !{i32 786688, metadata !30, metadata !"size", metadata !24, i32 83, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 83]
!170 = metadata !{i32 786688, metadata !30, metadata !"nsize", metadata !24, i32 84, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsize] [line 84]
!171 = metadata !{i32 786688, metadata !30, metadata !"ghostsize", metadata !24, i32 84, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghostsize] [line 84]
!172 = metadata !{i32 786688, metadata !30, metadata !"perme", metadata !24, i32 84, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [perme] [line 84]
!173 = metadata !{i32 786688, metadata !30, metadata !"groupghostsize", metadata !24, i32 84, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupghostsize] [line 84]
!174 = metadata !{i32 786688, metadata !30, metadata !"groupsize", metadata !24, i32 84, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupsize] [line 84]
!175 = metadata !{i32 786688, metadata !30, metadata !"ghost_size", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 85]
!176 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!177 = metadata !{i32 786688, metadata !30, metadata !"ghost_size_x", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 85]
!178 = metadata !{i32 786688, metadata !30, metadata !"ghost_size_y", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 85]
!179 = metadata !{i32 786688, metadata !30, metadata !"ghost_size_z", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 85]
!180 = metadata !{i32 786688, metadata !30, metadata !"global_nsize", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 85]
!181 = metadata !{i32 786688, metadata !30, metadata !"global_nx", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 85]
!182 = metadata !{i32 786688, metadata !30, metadata !"global_ny", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 85]
!183 = metadata !{i32 786688, metadata !30, metadata !"global_nz", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 85]
!184 = metadata !{i32 786688, metadata !30, metadata !"periodic", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 85]
!185 = metadata !{i32 786688, metadata !30, metadata !"periodic_x", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 85]
!186 = metadata !{i32 786688, metadata !30, metadata !"periodic_y", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 85]
!187 = metadata !{i32 786688, metadata !30, metadata !"periodic_z", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 85]
!188 = metadata !{i32 786688, metadata !30, metadata !"info", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 85]
!189 = metadata !{i32 786688, metadata !30, metadata !"initialize_memory", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 85]
!190 = metadata !{i32 786688, metadata !30, metadata !"partition", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 85]
!191 = metadata !{i32 786688, metadata !30, metadata !"partition_1d_x", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 85]
!192 = metadata !{i32 786688, metadata !30, metadata !"partition_2d_x", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 85]
!193 = metadata !{i32 786688, metadata !30, metadata !"partition_2d_y", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 85]
!194 = metadata !{i32 786688, metadata !30, metadata !"partition_3d_x", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 85]
!195 = metadata !{i32 786688, metadata !30, metadata !"partition_3d_y", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 85]
!196 = metadata !{i32 786688, metadata !30, metadata !"partition_3d_z", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 85]
!197 = metadata !{i32 786688, metadata !30, metadata !"processor_topology", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 85]
!198 = metadata !{i32 786688, metadata !30, metadata !"storage_verbose", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 85]
!199 = metadata !{i32 786688, metadata !30, metadata !"cacheline_mult", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 85]
!200 = metadata !{i32 786688, metadata !30, metadata !"enable_all_storage", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 85]
!201 = metadata !{i32 786688, metadata !30, metadata !"local_nsize", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 85]
!202 = metadata !{i32 786688, metadata !30, metadata !"local_nx", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 85]
!203 = metadata !{i32 786688, metadata !30, metadata !"local_ny", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 85]
!204 = metadata !{i32 786688, metadata !30, metadata !"local_nz", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 85]
!205 = metadata !{i32 786688, metadata !30, metadata !"overloadabort", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 85]
!206 = metadata !{i32 786688, metadata !30, metadata !"overloadarraygroupsizeb", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 85]
!207 = metadata !{i32 786688, metadata !30, metadata !"overloadbarrier", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 85]
!208 = metadata !{i32 786688, metadata !30, metadata !"overloaddisablegroupcomm", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 85]
!209 = metadata !{i32 786688, metadata !30, metadata !"overloaddisablegroupstorage", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 85]
!210 = metadata !{i32 786688, metadata !30, metadata !"overloadenablegroupcomm", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 85]
!211 = metadata !{i32 786688, metadata !30, metadata !"overloadenablegroupstorage", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 85]
!212 = metadata !{i32 786688, metadata !30, metadata !"overloadevolve", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 85]
!213 = metadata !{i32 786688, metadata !30, metadata !"overloadexit", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 85]
!214 = metadata !{i32 786688, metadata !30, metadata !"overloadgroupdynamicdata", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 85]
!215 = metadata !{i32 786688, metadata !30, metadata !"overloadmyproc", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 85]
!216 = metadata !{i32 786688, metadata !30, metadata !"overloadnprocs", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 85]
!217 = metadata !{i32 786688, metadata !30, metadata !"overloadparallelinit", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 85]
!218 = metadata !{i32 786688, metadata !30, metadata !"overloadquerygroupstorageb", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 85]
!219 = metadata !{i32 786688, metadata !30, metadata !"overloadsyncgroup", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 85]
!220 = metadata !{i32 786688, metadata !30, metadata !"padding_active", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 85]
!221 = metadata !{i32 786688, metadata !30, metadata !"padding_address_spacing", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 85]
!222 = metadata !{i32 786688, metadata !30, metadata !"padding_cacheline_bits", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 85]
!223 = metadata !{i32 786688, metadata !30, metadata !"padding_size", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 85]
!224 = metadata !{i32 786688, metadata !30, metadata !"processor_topology_1d_x", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 85]
!225 = metadata !{i32 786688, metadata !30, metadata !"processor_topology_2d_x", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 85]
!226 = metadata !{i32 786688, metadata !30, metadata !"processor_topology_2d_y", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 85]
!227 = metadata !{i32 786688, metadata !30, metadata !"processor_topology_3d_x", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 85]
!228 = metadata !{i32 786688, metadata !30, metadata !"processor_topology_3d_y", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 85]
!229 = metadata !{i32 786688, metadata !30, metadata !"processor_topology_3d_z", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 85]
!230 = metadata !{i32 786688, metadata !30, metadata !"storage_report_every", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 85]
!231 = metadata !{i32 786688, metadata !30, metadata !"timer_output", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 85]
!232 = metadata !{i32 786688, metadata !30, metadata !"terminate", metadata !24, i32 85, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 85]
!233 = metadata !{i32 786688, metadata !30, metadata !"cctk_initial_time", metadata !24, i32 85, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 85]
!234 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!235 = metadata !{i32 786688, metadata !30, metadata !"cctk_final_time", metadata !24, i32 85, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 85]
!236 = metadata !{i32 786688, metadata !30, metadata !"cctk_itlast", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 85]
!237 = metadata !{i32 786688, metadata !30, metadata !"terminate_next", metadata !24, i32 85, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 85]
!238 = metadata !{i32 786688, metadata !30, metadata !"cctk_pdummy_pointer", metadata !24, i32 85, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 85]
!239 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!240 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!241 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_InitGH", metadata !"PUGH_InitGH", metadata !"", i32 294, metadata !242, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @PUGH_InitGH, null, null, metadata !244, i32 295} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 295] [PUGH_InitGH]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !49, metadata !43}
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308}
!245 = metadata !{i32 786689, metadata !241, metadata !"GH", metadata !24, i32 16777510, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 294]
!246 = metadata !{i32 786688, metadata !241, metadata !"i", metadata !24, i32 296, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 296]
!247 = metadata !{i32 786688, metadata !241, metadata !"ghost_size", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 297]
!248 = metadata !{i32 786688, metadata !241, metadata !"ghost_size_x", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 297]
!249 = metadata !{i32 786688, metadata !241, metadata !"ghost_size_y", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 297]
!250 = metadata !{i32 786688, metadata !241, metadata !"ghost_size_z", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 297]
!251 = metadata !{i32 786688, metadata !241, metadata !"global_nsize", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 297]
!252 = metadata !{i32 786688, metadata !241, metadata !"global_nx", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 297]
!253 = metadata !{i32 786688, metadata !241, metadata !"global_ny", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 297]
!254 = metadata !{i32 786688, metadata !241, metadata !"global_nz", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 297]
!255 = metadata !{i32 786688, metadata !241, metadata !"periodic", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 297]
!256 = metadata !{i32 786688, metadata !241, metadata !"periodic_x", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 297]
!257 = metadata !{i32 786688, metadata !241, metadata !"periodic_y", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 297]
!258 = metadata !{i32 786688, metadata !241, metadata !"periodic_z", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 297]
!259 = metadata !{i32 786688, metadata !241, metadata !"info", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 297]
!260 = metadata !{i32 786688, metadata !241, metadata !"initialize_memory", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 297]
!261 = metadata !{i32 786688, metadata !241, metadata !"partition", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 297]
!262 = metadata !{i32 786688, metadata !241, metadata !"partition_1d_x", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 297]
!263 = metadata !{i32 786688, metadata !241, metadata !"partition_2d_x", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 297]
!264 = metadata !{i32 786688, metadata !241, metadata !"partition_2d_y", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 297]
!265 = metadata !{i32 786688, metadata !241, metadata !"partition_3d_x", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 297]
!266 = metadata !{i32 786688, metadata !241, metadata !"partition_3d_y", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 297]
!267 = metadata !{i32 786688, metadata !241, metadata !"partition_3d_z", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 297]
!268 = metadata !{i32 786688, metadata !241, metadata !"processor_topology", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 297]
!269 = metadata !{i32 786688, metadata !241, metadata !"storage_verbose", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 297]
!270 = metadata !{i32 786688, metadata !241, metadata !"cacheline_mult", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 297]
!271 = metadata !{i32 786688, metadata !241, metadata !"enable_all_storage", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 297]
!272 = metadata !{i32 786688, metadata !241, metadata !"local_nsize", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 297]
!273 = metadata !{i32 786688, metadata !241, metadata !"local_nx", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 297]
!274 = metadata !{i32 786688, metadata !241, metadata !"local_ny", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 297]
!275 = metadata !{i32 786688, metadata !241, metadata !"local_nz", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 297]
!276 = metadata !{i32 786688, metadata !241, metadata !"overloadabort", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 297]
!277 = metadata !{i32 786688, metadata !241, metadata !"overloadarraygroupsizeb", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 297]
!278 = metadata !{i32 786688, metadata !241, metadata !"overloadbarrier", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 297]
!279 = metadata !{i32 786688, metadata !241, metadata !"overloaddisablegroupcomm", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 297]
!280 = metadata !{i32 786688, metadata !241, metadata !"overloaddisablegroupstorage", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 297]
!281 = metadata !{i32 786688, metadata !241, metadata !"overloadenablegroupcomm", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 297]
!282 = metadata !{i32 786688, metadata !241, metadata !"overloadenablegroupstorage", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 297]
!283 = metadata !{i32 786688, metadata !241, metadata !"overloadevolve", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 297]
!284 = metadata !{i32 786688, metadata !241, metadata !"overloadexit", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 297]
!285 = metadata !{i32 786688, metadata !241, metadata !"overloadgroupdynamicdata", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 297]
!286 = metadata !{i32 786688, metadata !241, metadata !"overloadmyproc", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 297]
!287 = metadata !{i32 786688, metadata !241, metadata !"overloadnprocs", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 297]
!288 = metadata !{i32 786688, metadata !241, metadata !"overloadparallelinit", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 297]
!289 = metadata !{i32 786688, metadata !241, metadata !"overloadquerygroupstorageb", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 297]
!290 = metadata !{i32 786688, metadata !241, metadata !"overloadsyncgroup", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 297]
!291 = metadata !{i32 786688, metadata !241, metadata !"padding_active", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 297]
!292 = metadata !{i32 786688, metadata !241, metadata !"padding_address_spacing", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 297]
!293 = metadata !{i32 786688, metadata !241, metadata !"padding_cacheline_bits", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 297]
!294 = metadata !{i32 786688, metadata !241, metadata !"padding_size", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 297]
!295 = metadata !{i32 786688, metadata !241, metadata !"processor_topology_1d_x", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 297]
!296 = metadata !{i32 786688, metadata !241, metadata !"processor_topology_2d_x", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 297]
!297 = metadata !{i32 786688, metadata !241, metadata !"processor_topology_2d_y", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 297]
!298 = metadata !{i32 786688, metadata !241, metadata !"processor_topology_3d_x", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 297]
!299 = metadata !{i32 786688, metadata !241, metadata !"processor_topology_3d_y", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 297]
!300 = metadata !{i32 786688, metadata !241, metadata !"processor_topology_3d_z", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 297]
!301 = metadata !{i32 786688, metadata !241, metadata !"storage_report_every", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 297]
!302 = metadata !{i32 786688, metadata !241, metadata !"timer_output", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 297]
!303 = metadata !{i32 786688, metadata !241, metadata !"terminate", metadata !24, i32 297, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 297]
!304 = metadata !{i32 786688, metadata !241, metadata !"cctk_initial_time", metadata !24, i32 297, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 297]
!305 = metadata !{i32 786688, metadata !241, metadata !"cctk_final_time", metadata !24, i32 297, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 297]
!306 = metadata !{i32 786688, metadata !241, metadata !"cctk_itlast", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 297]
!307 = metadata !{i32 786688, metadata !241, metadata !"terminate_next", metadata !24, i32 297, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 297]
!308 = metadata !{i32 786688, metadata !241, metadata !"cctk_pdummy_pointer", metadata !24, i32 297, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 297]
!309 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_ScheduleTraverseGH", metadata !"PUGH_ScheduleTraverseGH", metadata !"", i32 349, metadata !310, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @PUGH_ScheduleTraverseGH, null, null, metadata !312, i32 351} ; [ DW_TAG_subprogram ] [line 349] [def] [scope 351] [PUGH_ScheduleTraverseGH]
!310 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!311 = metadata !{metadata !49, metadata !43, metadata !27}
!312 = metadata !{metadata !313, metadata !314, metadata !315}
!313 = metadata !{i32 786689, metadata !309, metadata !"GH", metadata !24, i32 16777565, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 349]
!314 = metadata !{i32 786689, metadata !309, metadata !"where", metadata !24, i32 33554782, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [where] [line 350]
!315 = metadata !{i32 786688, metadata !309, metadata !"retval", metadata !24, i32 352, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 352]
!316 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_RegisterCallFunc", metadata !"PUGH_RegisterCallFunc", metadata !"", i32 366, metadata !317, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32 (i8*, %struct.cFunctionData*, i8*)*)* @PUGH_RegisterCallFunc, null, null, metadata !342, i32 369} ; [ DW_TAG_subprogram ] [line 366] [def] [scope 369] [PUGH_RegisterCallFunc]
!317 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!318 = metadata !{null, metadata !319}
!319 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !320} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!320 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!321 = metadata !{metadata !49, metadata !33, metadata !322, metadata !33}
!322 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !323} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cFunctionData]
!323 = metadata !{i32 786454, metadata !1, null, metadata !"cFunctionData", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !324} ; [ DW_TAG_typedef ] [cFunctionData] [line 43, size 0, align 0, offset 0] [from ]
!324 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 18, i64 576, i64 64, i32 0, i32 0, null, metadata !325, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 576, align 64, offset 0] [from ]
!325 = metadata !{metadata !326, metadata !328, metadata !332, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341}
!326 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"language", i32 20, i64 32, i64 32, i64 0, i32 0, metadata !327} ; [ DW_TAG_member ] [language] [line 20, size 32, align 32, offset 0] [from cLanguage]
!327 = metadata !{i32 786454, metadata !4, null, metadata !"cLanguage", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [cLanguage] [line 14, size 0, align 0, offset 0] [from ]
!328 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"FortranCaller", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !329} ; [ DW_TAG_member ] [FortranCaller] [line 22, size 64, align 64, offset 64] [from ]
!329 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!330 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !331, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!331 = metadata !{metadata !49, metadata !43, metadata !33}
!332 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"type", i32 24, i64 32, i64 32, i64 128, i32 0, metadata !333} ; [ DW_TAG_member ] [type] [line 24, size 32, align 32, offset 128] [from cFunctionType]
!333 = metadata !{i32 786454, metadata !4, null, metadata !"cFunctionType", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [cFunctionType] [line 16, size 0, align 0, offset 0] [from ]
!334 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"n_SyncGroups", i32 26, i64 32, i64 32, i64 160, i32 0, metadata !49} ; [ DW_TAG_member ] [n_SyncGroups] [line 26, size 32, align 32, offset 160] [from int]
!335 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"SyncGroups", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !52} ; [ DW_TAG_member ] [SyncGroups] [line 28, size 64, align 64, offset 192] [from ]
!336 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"global", i32 32, i64 32, i64 32, i64 256, i32 0, metadata !49} ; [ DW_TAG_member ] [global] [line 32, size 32, align 32, offset 256] [from int]
!337 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"n_TriggerGroups", i32 37, i64 32, i64 32, i64 288, i32 0, metadata !49} ; [ DW_TAG_member ] [n_TriggerGroups] [line 37, size 32, align 32, offset 288] [from int]
!338 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"TriggerGroups", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !52} ; [ DW_TAG_member ] [TriggerGroups] [line 38, size 64, align 64, offset 320] [from ]
!339 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"where", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !40} ; [ DW_TAG_member ] [where] [line 39, size 64, align 64, offset 384] [from ]
!340 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"routine", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !40} ; [ DW_TAG_member ] [routine] [line 40, size 64, align 64, offset 448] [from ]
!341 = metadata !{i32 786445, metadata !4, metadata !324, metadata !"thorn", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [thorn] [line 41, size 64, align 64, offset 512] [from ]
!342 = metadata !{metadata !343}
!343 = metadata !{i32 786689, metadata !316, metadata !"func", metadata !24, i32 16777582, metadata !319, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 366]
!344 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_GFSize", metadata !"PUGH_GFSize", metadata !"", i32 393, metadata !345, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*)* @PUGH_GFSize, null, null, metadata !347, i32 394} ; [ DW_TAG_subprogram ] [line 393] [def] [scope 394] [PUGH_GFSize]
!345 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!346 = metadata !{null, metadata !49, metadata !52}
!347 = metadata !{metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413}
!348 = metadata !{i32 786689, metadata !344, metadata !"dim", metadata !24, i32 16777609, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 393]
!349 = metadata !{i32 786689, metadata !344, metadata !"nsize", metadata !24, i32 33554825, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsize] [line 393]
!350 = metadata !{i32 786688, metadata !344, metadata !"dir", metadata !24, i32 395, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 395]
!351 = metadata !{i32 786688, metadata !344, metadata !"size", metadata !24, i32 395, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 395]
!352 = metadata !{i32 786688, metadata !344, metadata !"ghost_size", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 396]
!353 = metadata !{i32 786688, metadata !344, metadata !"ghost_size_x", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 396]
!354 = metadata !{i32 786688, metadata !344, metadata !"ghost_size_y", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 396]
!355 = metadata !{i32 786688, metadata !344, metadata !"ghost_size_z", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 396]
!356 = metadata !{i32 786688, metadata !344, metadata !"global_nsize", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 396]
!357 = metadata !{i32 786688, metadata !344, metadata !"global_nx", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 396]
!358 = metadata !{i32 786688, metadata !344, metadata !"global_ny", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 396]
!359 = metadata !{i32 786688, metadata !344, metadata !"global_nz", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 396]
!360 = metadata !{i32 786688, metadata !344, metadata !"periodic", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 396]
!361 = metadata !{i32 786688, metadata !344, metadata !"periodic_x", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 396]
!362 = metadata !{i32 786688, metadata !344, metadata !"periodic_y", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 396]
!363 = metadata !{i32 786688, metadata !344, metadata !"periodic_z", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 396]
!364 = metadata !{i32 786688, metadata !344, metadata !"info", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 396]
!365 = metadata !{i32 786688, metadata !344, metadata !"initialize_memory", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 396]
!366 = metadata !{i32 786688, metadata !344, metadata !"partition", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 396]
!367 = metadata !{i32 786688, metadata !344, metadata !"partition_1d_x", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 396]
!368 = metadata !{i32 786688, metadata !344, metadata !"partition_2d_x", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 396]
!369 = metadata !{i32 786688, metadata !344, metadata !"partition_2d_y", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 396]
!370 = metadata !{i32 786688, metadata !344, metadata !"partition_3d_x", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 396]
!371 = metadata !{i32 786688, metadata !344, metadata !"partition_3d_y", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 396]
!372 = metadata !{i32 786688, metadata !344, metadata !"partition_3d_z", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 396]
!373 = metadata !{i32 786688, metadata !344, metadata !"processor_topology", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 396]
!374 = metadata !{i32 786688, metadata !344, metadata !"storage_verbose", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 396]
!375 = metadata !{i32 786688, metadata !344, metadata !"cacheline_mult", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 396]
!376 = metadata !{i32 786688, metadata !344, metadata !"enable_all_storage", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 396]
!377 = metadata !{i32 786688, metadata !344, metadata !"local_nsize", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 396]
!378 = metadata !{i32 786688, metadata !344, metadata !"local_nx", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 396]
!379 = metadata !{i32 786688, metadata !344, metadata !"local_ny", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 396]
!380 = metadata !{i32 786688, metadata !344, metadata !"local_nz", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 396]
!381 = metadata !{i32 786688, metadata !344, metadata !"overloadabort", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 396]
!382 = metadata !{i32 786688, metadata !344, metadata !"overloadarraygroupsizeb", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 396]
!383 = metadata !{i32 786688, metadata !344, metadata !"overloadbarrier", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 396]
!384 = metadata !{i32 786688, metadata !344, metadata !"overloaddisablegroupcomm", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 396]
!385 = metadata !{i32 786688, metadata !344, metadata !"overloaddisablegroupstorage", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 396]
!386 = metadata !{i32 786688, metadata !344, metadata !"overloadenablegroupcomm", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 396]
!387 = metadata !{i32 786688, metadata !344, metadata !"overloadenablegroupstorage", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 396]
!388 = metadata !{i32 786688, metadata !344, metadata !"overloadevolve", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 396]
!389 = metadata !{i32 786688, metadata !344, metadata !"overloadexit", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 396]
!390 = metadata !{i32 786688, metadata !344, metadata !"overloadgroupdynamicdata", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 396]
!391 = metadata !{i32 786688, metadata !344, metadata !"overloadmyproc", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 396]
!392 = metadata !{i32 786688, metadata !344, metadata !"overloadnprocs", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 396]
!393 = metadata !{i32 786688, metadata !344, metadata !"overloadparallelinit", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 396]
!394 = metadata !{i32 786688, metadata !344, metadata !"overloadquerygroupstorageb", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 396]
!395 = metadata !{i32 786688, metadata !344, metadata !"overloadsyncgroup", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 396]
!396 = metadata !{i32 786688, metadata !344, metadata !"padding_active", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 396]
!397 = metadata !{i32 786688, metadata !344, metadata !"padding_address_spacing", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 396]
!398 = metadata !{i32 786688, metadata !344, metadata !"padding_cacheline_bits", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 396]
!399 = metadata !{i32 786688, metadata !344, metadata !"padding_size", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 396]
!400 = metadata !{i32 786688, metadata !344, metadata !"processor_topology_1d_x", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 396]
!401 = metadata !{i32 786688, metadata !344, metadata !"processor_topology_2d_x", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 396]
!402 = metadata !{i32 786688, metadata !344, metadata !"processor_topology_2d_y", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 396]
!403 = metadata !{i32 786688, metadata !344, metadata !"processor_topology_3d_x", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 396]
!404 = metadata !{i32 786688, metadata !344, metadata !"processor_topology_3d_y", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 396]
!405 = metadata !{i32 786688, metadata !344, metadata !"processor_topology_3d_z", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 396]
!406 = metadata !{i32 786688, metadata !344, metadata !"storage_report_every", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 396]
!407 = metadata !{i32 786688, metadata !344, metadata !"timer_output", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 396]
!408 = metadata !{i32 786688, metadata !344, metadata !"terminate", metadata !24, i32 396, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 396]
!409 = metadata !{i32 786688, metadata !344, metadata !"cctk_initial_time", metadata !24, i32 396, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 396]
!410 = metadata !{i32 786688, metadata !344, metadata !"cctk_final_time", metadata !24, i32 396, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 396]
!411 = metadata !{i32 786688, metadata !344, metadata !"cctk_itlast", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 396]
!412 = metadata !{i32 786688, metadata !344, metadata !"terminate_next", metadata !24, i32 396, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 396]
!413 = metadata !{i32 786688, metadata !344, metadata !"cctk_pdummy_pointer", metadata !24, i32 396, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 396]
!414 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_GFGhostsize", metadata !"PUGH_GFGhostsize", metadata !"", i32 439, metadata !345, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*)* @PUGH_GFGhostsize, null, null, metadata !415, i32 440} ; [ DW_TAG_subprogram ] [line 439] [def] [scope 440] [PUGH_GFGhostsize]
!415 = metadata !{metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480}
!416 = metadata !{i32 786689, metadata !414, metadata !"dim", metadata !24, i32 16777655, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 439]
!417 = metadata !{i32 786689, metadata !414, metadata !"ghostsize", metadata !24, i32 33554871, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghostsize] [line 439]
!418 = metadata !{i32 786688, metadata !414, metadata !"dir", metadata !24, i32 441, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 441]
!419 = metadata !{i32 786688, metadata !414, metadata !"ghost_size", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 442]
!420 = metadata !{i32 786688, metadata !414, metadata !"ghost_size_x", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 442]
!421 = metadata !{i32 786688, metadata !414, metadata !"ghost_size_y", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 442]
!422 = metadata !{i32 786688, metadata !414, metadata !"ghost_size_z", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 442]
!423 = metadata !{i32 786688, metadata !414, metadata !"global_nsize", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 442]
!424 = metadata !{i32 786688, metadata !414, metadata !"global_nx", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 442]
!425 = metadata !{i32 786688, metadata !414, metadata !"global_ny", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 442]
!426 = metadata !{i32 786688, metadata !414, metadata !"global_nz", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 442]
!427 = metadata !{i32 786688, metadata !414, metadata !"periodic", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 442]
!428 = metadata !{i32 786688, metadata !414, metadata !"periodic_x", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 442]
!429 = metadata !{i32 786688, metadata !414, metadata !"periodic_y", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 442]
!430 = metadata !{i32 786688, metadata !414, metadata !"periodic_z", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 442]
!431 = metadata !{i32 786688, metadata !414, metadata !"info", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 442]
!432 = metadata !{i32 786688, metadata !414, metadata !"initialize_memory", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 442]
!433 = metadata !{i32 786688, metadata !414, metadata !"partition", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 442]
!434 = metadata !{i32 786688, metadata !414, metadata !"partition_1d_x", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 442]
!435 = metadata !{i32 786688, metadata !414, metadata !"partition_2d_x", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 442]
!436 = metadata !{i32 786688, metadata !414, metadata !"partition_2d_y", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 442]
!437 = metadata !{i32 786688, metadata !414, metadata !"partition_3d_x", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 442]
!438 = metadata !{i32 786688, metadata !414, metadata !"partition_3d_y", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 442]
!439 = metadata !{i32 786688, metadata !414, metadata !"partition_3d_z", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 442]
!440 = metadata !{i32 786688, metadata !414, metadata !"processor_topology", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 442]
!441 = metadata !{i32 786688, metadata !414, metadata !"storage_verbose", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 442]
!442 = metadata !{i32 786688, metadata !414, metadata !"cacheline_mult", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 442]
!443 = metadata !{i32 786688, metadata !414, metadata !"enable_all_storage", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 442]
!444 = metadata !{i32 786688, metadata !414, metadata !"local_nsize", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 442]
!445 = metadata !{i32 786688, metadata !414, metadata !"local_nx", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 442]
!446 = metadata !{i32 786688, metadata !414, metadata !"local_ny", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 442]
!447 = metadata !{i32 786688, metadata !414, metadata !"local_nz", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 442]
!448 = metadata !{i32 786688, metadata !414, metadata !"overloadabort", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 442]
!449 = metadata !{i32 786688, metadata !414, metadata !"overloadarraygroupsizeb", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 442]
!450 = metadata !{i32 786688, metadata !414, metadata !"overloadbarrier", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 442]
!451 = metadata !{i32 786688, metadata !414, metadata !"overloaddisablegroupcomm", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 442]
!452 = metadata !{i32 786688, metadata !414, metadata !"overloaddisablegroupstorage", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 442]
!453 = metadata !{i32 786688, metadata !414, metadata !"overloadenablegroupcomm", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 442]
!454 = metadata !{i32 786688, metadata !414, metadata !"overloadenablegroupstorage", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 442]
!455 = metadata !{i32 786688, metadata !414, metadata !"overloadevolve", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 442]
!456 = metadata !{i32 786688, metadata !414, metadata !"overloadexit", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 442]
!457 = metadata !{i32 786688, metadata !414, metadata !"overloadgroupdynamicdata", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 442]
!458 = metadata !{i32 786688, metadata !414, metadata !"overloadmyproc", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 442]
!459 = metadata !{i32 786688, metadata !414, metadata !"overloadnprocs", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 442]
!460 = metadata !{i32 786688, metadata !414, metadata !"overloadparallelinit", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 442]
!461 = metadata !{i32 786688, metadata !414, metadata !"overloadquerygroupstorageb", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 442]
!462 = metadata !{i32 786688, metadata !414, metadata !"overloadsyncgroup", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 442]
!463 = metadata !{i32 786688, metadata !414, metadata !"padding_active", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 442]
!464 = metadata !{i32 786688, metadata !414, metadata !"padding_address_spacing", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 442]
!465 = metadata !{i32 786688, metadata !414, metadata !"padding_cacheline_bits", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 442]
!466 = metadata !{i32 786688, metadata !414, metadata !"padding_size", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 442]
!467 = metadata !{i32 786688, metadata !414, metadata !"processor_topology_1d_x", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 442]
!468 = metadata !{i32 786688, metadata !414, metadata !"processor_topology_2d_x", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 442]
!469 = metadata !{i32 786688, metadata !414, metadata !"processor_topology_2d_y", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 442]
!470 = metadata !{i32 786688, metadata !414, metadata !"processor_topology_3d_x", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 442]
!471 = metadata !{i32 786688, metadata !414, metadata !"processor_topology_3d_y", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 442]
!472 = metadata !{i32 786688, metadata !414, metadata !"processor_topology_3d_z", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 442]
!473 = metadata !{i32 786688, metadata !414, metadata !"storage_report_every", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 442]
!474 = metadata !{i32 786688, metadata !414, metadata !"timer_output", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 442]
!475 = metadata !{i32 786688, metadata !414, metadata !"terminate", metadata !24, i32 442, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 442]
!476 = metadata !{i32 786688, metadata !414, metadata !"cctk_initial_time", metadata !24, i32 442, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 442]
!477 = metadata !{i32 786688, metadata !414, metadata !"cctk_final_time", metadata !24, i32 442, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 442]
!478 = metadata !{i32 786688, metadata !414, metadata !"cctk_itlast", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 442]
!479 = metadata !{i32 786688, metadata !414, metadata !"terminate_next", metadata !24, i32 442, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 442]
!480 = metadata !{i32 786688, metadata !414, metadata !"cctk_pdummy_pointer", metadata !24, i32 442, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 442]
!481 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_GFPeriodic", metadata !"PUGH_GFPeriodic", metadata !"", i32 485, metadata !345, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*)* @PUGH_GFPeriodic, null, null, metadata !482, i32 486} ; [ DW_TAG_subprogram ] [line 485] [def] [scope 486] [PUGH_GFPeriodic]
!482 = metadata !{metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546}
!483 = metadata !{i32 786689, metadata !481, metadata !"dim", metadata !24, i32 16777701, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 485]
!484 = metadata !{i32 786689, metadata !481, metadata !"perme", metadata !24, i32 33554917, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 485]
!485 = metadata !{i32 786688, metadata !481, metadata !"ghost_size", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 487]
!486 = metadata !{i32 786688, metadata !481, metadata !"ghost_size_x", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 487]
!487 = metadata !{i32 786688, metadata !481, metadata !"ghost_size_y", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 487]
!488 = metadata !{i32 786688, metadata !481, metadata !"ghost_size_z", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 487]
!489 = metadata !{i32 786688, metadata !481, metadata !"global_nsize", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 487]
!490 = metadata !{i32 786688, metadata !481, metadata !"global_nx", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 487]
!491 = metadata !{i32 786688, metadata !481, metadata !"global_ny", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 487]
!492 = metadata !{i32 786688, metadata !481, metadata !"global_nz", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 487]
!493 = metadata !{i32 786688, metadata !481, metadata !"periodic", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 487]
!494 = metadata !{i32 786688, metadata !481, metadata !"periodic_x", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 487]
!495 = metadata !{i32 786688, metadata !481, metadata !"periodic_y", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 487]
!496 = metadata !{i32 786688, metadata !481, metadata !"periodic_z", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 487]
!497 = metadata !{i32 786688, metadata !481, metadata !"info", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 487]
!498 = metadata !{i32 786688, metadata !481, metadata !"initialize_memory", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 487]
!499 = metadata !{i32 786688, metadata !481, metadata !"partition", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 487]
!500 = metadata !{i32 786688, metadata !481, metadata !"partition_1d_x", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 487]
!501 = metadata !{i32 786688, metadata !481, metadata !"partition_2d_x", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 487]
!502 = metadata !{i32 786688, metadata !481, metadata !"partition_2d_y", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 487]
!503 = metadata !{i32 786688, metadata !481, metadata !"partition_3d_x", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 487]
!504 = metadata !{i32 786688, metadata !481, metadata !"partition_3d_y", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 487]
!505 = metadata !{i32 786688, metadata !481, metadata !"partition_3d_z", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 487]
!506 = metadata !{i32 786688, metadata !481, metadata !"processor_topology", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 487]
!507 = metadata !{i32 786688, metadata !481, metadata !"storage_verbose", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 487]
!508 = metadata !{i32 786688, metadata !481, metadata !"cacheline_mult", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 487]
!509 = metadata !{i32 786688, metadata !481, metadata !"enable_all_storage", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 487]
!510 = metadata !{i32 786688, metadata !481, metadata !"local_nsize", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 487]
!511 = metadata !{i32 786688, metadata !481, metadata !"local_nx", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 487]
!512 = metadata !{i32 786688, metadata !481, metadata !"local_ny", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 487]
!513 = metadata !{i32 786688, metadata !481, metadata !"local_nz", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 487]
!514 = metadata !{i32 786688, metadata !481, metadata !"overloadabort", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 487]
!515 = metadata !{i32 786688, metadata !481, metadata !"overloadarraygroupsizeb", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 487]
!516 = metadata !{i32 786688, metadata !481, metadata !"overloadbarrier", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 487]
!517 = metadata !{i32 786688, metadata !481, metadata !"overloaddisablegroupcomm", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 487]
!518 = metadata !{i32 786688, metadata !481, metadata !"overloaddisablegroupstorage", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 487]
!519 = metadata !{i32 786688, metadata !481, metadata !"overloadenablegroupcomm", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 487]
!520 = metadata !{i32 786688, metadata !481, metadata !"overloadenablegroupstorage", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 487]
!521 = metadata !{i32 786688, metadata !481, metadata !"overloadevolve", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 487]
!522 = metadata !{i32 786688, metadata !481, metadata !"overloadexit", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 487]
!523 = metadata !{i32 786688, metadata !481, metadata !"overloadgroupdynamicdata", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 487]
!524 = metadata !{i32 786688, metadata !481, metadata !"overloadmyproc", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 487]
!525 = metadata !{i32 786688, metadata !481, metadata !"overloadnprocs", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 487]
!526 = metadata !{i32 786688, metadata !481, metadata !"overloadparallelinit", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 487]
!527 = metadata !{i32 786688, metadata !481, metadata !"overloadquerygroupstorageb", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 487]
!528 = metadata !{i32 786688, metadata !481, metadata !"overloadsyncgroup", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 487]
!529 = metadata !{i32 786688, metadata !481, metadata !"padding_active", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 487]
!530 = metadata !{i32 786688, metadata !481, metadata !"padding_address_spacing", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 487]
!531 = metadata !{i32 786688, metadata !481, metadata !"padding_cacheline_bits", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 487]
!532 = metadata !{i32 786688, metadata !481, metadata !"padding_size", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 487]
!533 = metadata !{i32 786688, metadata !481, metadata !"processor_topology_1d_x", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 487]
!534 = metadata !{i32 786688, metadata !481, metadata !"processor_topology_2d_x", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 487]
!535 = metadata !{i32 786688, metadata !481, metadata !"processor_topology_2d_y", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 487]
!536 = metadata !{i32 786688, metadata !481, metadata !"processor_topology_3d_x", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 487]
!537 = metadata !{i32 786688, metadata !481, metadata !"processor_topology_3d_y", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 487]
!538 = metadata !{i32 786688, metadata !481, metadata !"processor_topology_3d_z", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 487]
!539 = metadata !{i32 786688, metadata !481, metadata !"storage_report_every", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 487]
!540 = metadata !{i32 786688, metadata !481, metadata !"timer_output", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 487]
!541 = metadata !{i32 786688, metadata !481, metadata !"terminate", metadata !24, i32 487, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 487]
!542 = metadata !{i32 786688, metadata !481, metadata !"cctk_initial_time", metadata !24, i32 487, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 487]
!543 = metadata !{i32 786688, metadata !481, metadata !"cctk_final_time", metadata !24, i32 487, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 487]
!544 = metadata !{i32 786688, metadata !481, metadata !"cctk_itlast", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 487]
!545 = metadata !{i32 786688, metadata !481, metadata !"terminate_next", metadata !24, i32 487, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 487]
!546 = metadata !{i32 786688, metadata !481, metadata !"cctk_pdummy_pointer", metadata !24, i32 487, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 487]
!547 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_PrintTimingInfo", metadata !"PUGH_PrintTimingInfo", metadata !"", i32 524, metadata !242, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @PUGH_PrintTimingInfo, null, null, metadata !548, i32 525} ; [ DW_TAG_subprogram ] [line 524] [def] [scope 525] [PUGH_PrintTimingInfo]
!548 = metadata !{metadata !549, metadata !550, metadata !551, metadata !573}
!549 = metadata !{i32 786689, metadata !547, metadata !"GH", metadata !24, i32 16777740, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 524]
!550 = metadata !{i32 786688, metadata !547, metadata !"i", metadata !24, i32 526, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 526]
!551 = metadata !{i32 786688, metadata !547, metadata !"info", metadata !24, i32 527, metadata !552, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 527]
!552 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !553} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cTimerData]
!553 = metadata !{i32 786454, metadata !1, null, metadata !"cTimerData", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !554} ; [ DW_TAG_typedef ] [cTimerData] [line 35, size 0, align 0, offset 0] [from ]
!554 = metadata !{i32 786451, metadata !15, null, metadata !"", i32 31, i64 128, i64 64, i32 0, i32 0, null, metadata !555, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 31, size 128, align 64, offset 0] [from ]
!555 = metadata !{metadata !556, metadata !557}
!556 = metadata !{i32 786445, metadata !15, metadata !554, metadata !"n_vals", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [n_vals] [line 33, size 32, align 32, offset 0] [from int]
!557 = metadata !{i32 786445, metadata !15, metadata !554, metadata !"vals", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !558} ; [ DW_TAG_member ] [vals] [line 34, size 64, align 64, offset 64] [from ]
!558 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !559} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cTimerVal]
!559 = metadata !{i32 786454, metadata !15, null, metadata !"cTimerVal", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !560} ; [ DW_TAG_typedef ] [cTimerVal] [line 29, size 0, align 0, offset 0] [from ]
!560 = metadata !{i32 786451, metadata !15, null, metadata !"", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !561, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 256, align 64, offset 0] [from ]
!561 = metadata !{metadata !562, metadata !564, metadata !565, metadata !566}
!562 = metadata !{i32 786445, metadata !15, metadata !560, metadata !"type", i32 20, i64 32, i64 32, i64 0, i32 0, metadata !563} ; [ DW_TAG_member ] [type] [line 20, size 32, align 32, offset 0] [from cTimerValType]
!563 = metadata !{i32 786454, metadata !15, null, metadata !"cTimerValType", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [cTimerValType] [line 16, size 0, align 0, offset 0] [from ]
!564 = metadata !{i32 786445, metadata !15, metadata !560, metadata !"heading", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [heading] [line 21, size 64, align 64, offset 64] [from ]
!565 = metadata !{i32 786445, metadata !15, metadata !560, metadata !"units", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [units] [line 22, size 64, align 64, offset 128] [from ]
!566 = metadata !{i32 786445, metadata !15, metadata !560, metadata !"val", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !567} ; [ DW_TAG_member ] [val] [line 28, size 64, align 64, offset 192] [from ]
!567 = metadata !{i32 786455, metadata !15, metadata !560, metadata !"", i32 23, i64 64, i64 64, i64 0, i32 0, null, metadata !568, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 23, size 64, align 64, offset 0] [from ]
!568 = metadata !{metadata !569, metadata !570, metadata !572}
!569 = metadata !{i32 786445, metadata !15, metadata !567, metadata !"i", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [i] [line 25, size 32, align 32, offset 0] [from int]
!570 = metadata !{i32 786445, metadata !15, metadata !567, metadata !"l", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !571} ; [ DW_TAG_member ] [l] [line 26, size 64, align 64, offset 0] [from long int]
!571 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!572 = metadata !{i32 786445, metadata !15, metadata !567, metadata !"d", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [d] [line 27, size 64, align 64, offset 0] [from double]
!573 = metadata !{i32 786688, metadata !547, metadata !"pughGH", metadata !24, i32 528, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 528]
!574 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_InitGHVariables", metadata !"PUGH_InitGHVariables", metadata !"", i32 241, metadata !575, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !577, i32 242} ; [ DW_TAG_subprogram ] [line 241] [local] [def] [scope 242] [PUGH_InitGHVariables]
!575 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!576 = metadata !{null, metadata !43}
!577 = metadata !{metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583}
!578 = metadata !{i32 786689, metadata !574, metadata !"GH", metadata !24, i32 16777457, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 241]
!579 = metadata !{i32 786688, metadata !574, metadata !"var", metadata !24, i32 243, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 243]
!580 = metadata !{i32 786688, metadata !574, metadata !"gtype", metadata !24, i32 243, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gtype] [line 243]
!581 = metadata !{i32 786688, metadata !574, metadata !"level", metadata !24, i32 243, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 243]
!582 = metadata !{i32 786688, metadata !574, metadata !"ntimelevels", metadata !24, i32 243, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntimelevels] [line 243]
!583 = metadata !{i32 786688, metadata !574, metadata !"mypGH", metadata !24, i32 244, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mypGH] [line 244]
!584 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"PUGH_InitGHBasics", metadata !"PUGH_InitGHBasics", metadata !"", i32 183, metadata !575, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @PUGH_InitGHBasics, null, null, metadata !585, i32 184} ; [ DW_TAG_subprogram ] [line 183] [local] [def] [scope 184] [PUGH_InitGHBasics]
!585 = metadata !{metadata !586, metadata !587, metadata !588, metadata !589, metadata !590}
!586 = metadata !{i32 786689, metadata !584, metadata !"GH", metadata !24, i32 16777399, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 183]
!587 = metadata !{i32 786688, metadata !584, metadata !"dim", metadata !24, i32 185, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 185]
!588 = metadata !{i32 786688, metadata !584, metadata !"stagger", metadata !24, i32 185, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagger] [line 185]
!589 = metadata !{i32 786688, metadata !584, metadata !"mypGH", metadata !24, i32 186, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mypGH] [line 186]
!590 = metadata !{i32 786688, metadata !584, metadata !"GFExtras", metadata !24, i32 187, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GFExtras] [line 187]
!591 = metadata !{metadata !592, metadata !593}
!592 = metadata !{i32 786484, i32 0, null, metadata !"PUGHCallFunc", metadata !"PUGHCallFunc", metadata !"", metadata !24, i32 38, metadata !319, i32 1, i32 1, i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc, null} ; [ DW_TAG_variable ] [PUGHCallFunc] [line 38] [local] [def]
!593 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !24, i32 27, metadata !27, i32 1, i32 1, null, null}
!594 = metadata !{i32 29, i32 0, metadata !23, null}
!595 = metadata !{i32 76, i32 0, metadata !30, null}
!596 = metadata !{i32 77, i32 0, metadata !30, null}
!597 = metadata !{i32 78, i32 0, metadata !30, null}
!598 = metadata !{i32 82, i32 0, metadata !30, null}
!599 = metadata !{i32 89, i32 0, metadata !30, null}
!600 = metadata !{i32 90, i32 0, metadata !30, null}
!601 = metadata !{i32 93, i32 0, metadata !30, null}
!602 = metadata !{i32 95, i32 0, metadata !30, null}
!603 = metadata !{i32 96, i32 0, metadata !30, null}
!604 = metadata !{i32 97, i32 0, metadata !30, null}
!605 = metadata !{i32 99, i32 0, metadata !30, null}
!606 = metadata !{i32 100, i32 0, metadata !30, null}
!607 = metadata !{i32 101, i32 0, metadata !30, null}
!608 = metadata !{i32 103, i32 0, metadata !30, null}
!609 = metadata !{i32 104, i32 0, metadata !30, null}
!610 = metadata !{i32 106, i32 0, metadata !30, null}
!611 = metadata !{i32 108, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !30, i32 107, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!613 = metadata !{i32 109, i32 0, metadata !612, null}
!614 = metadata !{i32 112, i32 0, metadata !30, null}
!615 = metadata !{metadata !"any pointer", metadata !616}
!616 = metadata !{metadata !"omnipotent char", metadata !617}
!617 = metadata !{metadata !"Simple C/C++ TBAA"}
!618 = metadata !{i32 115, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !30, i32 115, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!620 = metadata !{i32 118, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !619, i32 116, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!622 = metadata !{i32 119, i32 0, metadata !621, null}
!623 = metadata !{i32 149, i32 0, metadata !621, null}
!624 = metadata !{i32 151, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !621, i32 150, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!626 = metadata !{i32 158, i32 0, metadata !621, null}
!627 = metadata !{i32 129, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !629, i32 126, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!629 = metadata !{i32 786443, metadata !1, metadata !630, i32 125, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!630 = metadata !{i32 786443, metadata !1, metadata !621, i32 124, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!631 = metadata !{i32 117, i32 0, metadata !621, null}
!632 = metadata !{i32 122, i32 0, metadata !621, null}
!633 = metadata !{i32 123, i32 0, metadata !621, null}
!634 = metadata !{i32 125, i32 0, metadata !629, null}
!635 = metadata !{metadata !"int", metadata !616}
!636 = metadata !{i32 127, i32 0, metadata !628, null}
!637 = metadata !{i32 131, i32 0, metadata !638, null}
!638 = metadata !{i32 786443, metadata !1, metadata !628, i32 130, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!639 = metadata !{i32 141, i32 0, metadata !621, null}
!640 = metadata !{i32 142, i32 0, metadata !621, null}
!641 = metadata !{i32 144, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !643, i32 144, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!643 = metadata !{i32 786443, metadata !1, metadata !621, i32 143, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!644 = metadata !{i32 146, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !642, i32 145, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!646 = metadata !{i32 152, i32 0, metadata !625, null}
!647 = metadata !{i32 164, i32 0, metadata !30, null}
!648 = metadata !{i8* undef}
!649 = metadata !{i32 166, i32 0, metadata !30, null}
!650 = metadata !{i32 393, i32 0, metadata !344, null}
!651 = metadata !{i32 396, i32 0, metadata !344, null}
!652 = metadata !{i32 399, i32 0, metadata !344, null}
!653 = metadata !{i32 401, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !344, i32 400, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!655 = metadata !{i32 402, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !654, i32 402, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!657 = metadata !{i32 404, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !656, i32 403, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!659 = metadata !{i32 409, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !344, i32 408, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!661 = metadata !{i32 411, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !660, i32 410, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!663 = metadata !{i32 412, i32 0, metadata !662, null}
!664 = metadata !{i32 413, i32 0, metadata !662, null}
!665 = metadata !{i32 414, i32 0, metadata !662, null}
!666 = metadata !{i32 416, i32 0, metadata !344, null}
!667 = metadata !{i32 439, i32 0, metadata !414, null}
!668 = metadata !{i32 442, i32 0, metadata !414, null}
!669 = metadata !{i32 445, i32 0, metadata !414, null}
!670 = metadata !{i32 447, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !672, i32 447, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!672 = metadata !{i32 786443, metadata !1, metadata !414, i32 446, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!673 = metadata !{i32 449, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !671, i32 448, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!675 = metadata !{i32 454, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !414, i32 453, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!677 = metadata !{i32 455, i32 0, metadata !676, null}
!678 = metadata !{i32 457, i32 0, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !676, i32 456, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!680 = metadata !{i32 458, i32 0, metadata !679, null}
!681 = metadata !{i32 459, i32 0, metadata !679, null}
!682 = metadata !{i32 460, i32 0, metadata !679, null}
!683 = metadata !{i32 462, i32 0, metadata !414, null}
!684 = metadata !{i32 485, i32 0, metadata !481, null}
!685 = metadata !{i32 487, i32 0, metadata !481, null}
!686 = metadata !{i32 490, i32 0, metadata !481, null}
!687 = metadata !{i32 492, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !481, i32 491, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!689 = metadata !{i32 494, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !688, i32 493, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!691 = metadata !{i32 495, i32 0, metadata !690, null}
!692 = metadata !{i32 496, i32 0, metadata !690, null}
!693 = metadata !{i32 497, i32 0, metadata !690, null}
!694 = metadata !{i32 501, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !481, i32 500, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!696 = metadata !{i32 503, i32 0, metadata !481, null}
!697 = metadata !{i32 294, i32 0, metadata !241, null}
!698 = metadata !{i32 297, i32 0, metadata !241, null}
!699 = metadata !{i32 300, i32 0, metadata !241, null}
!700 = metadata !{i32 303, i32 0, metadata !241, null}
!701 = metadata !{i32 305, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !703, i32 305, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!703 = metadata !{i32 786443, metadata !1, metadata !241, i32 304, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!704 = metadata !{i32 307, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !702, i32 306, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!706 = metadata !{i32 311, i32 0, metadata !241, null}
!707 = metadata !{i32 183, i32 0, metadata !584, null}
!708 = metadata !{i32 190, i32 0, metadata !584, null}
!709 = metadata !{i32 192, i32 0, metadata !584, null}
!710 = metadata !{i32 201, i32 0, metadata !584, null}
!711 = metadata !{i32 203, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !584, i32 203, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!713 = metadata !{i32 194, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !584, i32 193, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!715 = metadata !{i32 205, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !712, i32 204, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!717 = metadata !{i32 206, i32 0, metadata !716, null}
!718 = metadata !{i32 207, i32 0, metadata !716, null}
!719 = metadata !{i32 208, i32 0, metadata !716, null}
!720 = metadata !{i32 209, i32 0, metadata !716, null}
!721 = metadata !{i32 211, i32 0, metadata !716, null}
!722 = metadata !{i32 212, i32 0, metadata !716, null}
!723 = metadata !{i32 216, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !725, i32 215, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!725 = metadata !{i32 786443, metadata !1, metadata !716, i32 214, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!726 = metadata !{i32 210, i32 0, metadata !716, null}
!727 = metadata !{i32 214, i32 0, metadata !725, null}
!728 = metadata !{i32 217, i32 0, metadata !724, null}
!729 = metadata !{i32 219, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !724, i32 218, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!731 = metadata !{i32 220, i32 0, metadata !730, null}
!732 = metadata !{i32 223, i32 0, metadata !584, null}
!733 = metadata !{i32 349, i32 0, metadata !309, null}
!734 = metadata !{i32 350, i32 0, metadata !309, null}
!735 = metadata !{i32 355, i32 0, metadata !309, null}
!736 = metadata !{i32 357, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !309, i32 356, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!738 = metadata !{i32 786689, metadata !574, metadata !"GH", metadata !24, i32 16777457, metadata !43, i32 0, metadata !739} ; [ DW_TAG_arg_variable ] [GH] [line 241]
!739 = metadata !{i32 358, i32 0, metadata !737, null}
!740 = metadata !{i32 241, i32 0, metadata !574, metadata !739}
!741 = metadata !{i32 247, i32 0, metadata !574, metadata !739}
!742 = metadata !{i32 786688, metadata !574, metadata !"mypGH", metadata !24, i32 244, metadata !90, i32 0, metadata !739} ; [ DW_TAG_auto_variable ] [mypGH] [line 244]
!743 = metadata !{i32 786688, metadata !574, metadata !"var", metadata !24, i32 243, metadata !49, i32 0, metadata !739} ; [ DW_TAG_auto_variable ] [var] [line 243]
!744 = metadata !{i32 249, i32 0, metadata !745, metadata !739}
!745 = metadata !{i32 786443, metadata !1, metadata !574, i32 249, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!746 = metadata !{i32 259, i32 0, metadata !747, metadata !739}
!747 = metadata !{i32 786443, metadata !1, metadata !748, i32 257, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!748 = metadata !{i32 786443, metadata !1, metadata !749, i32 255, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!749 = metadata !{i32 786443, metadata !1, metadata !750, i32 254, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!750 = metadata !{i32 786443, metadata !1, metadata !745, i32 250, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!751 = metadata !{i32 251, i32 0, metadata !750, metadata !739}
!752 = metadata !{i32 786688, metadata !574, metadata !"gtype", metadata !24, i32 243, metadata !49, i32 0, metadata !739} ; [ DW_TAG_auto_variable ] [gtype] [line 243]
!753 = metadata !{i32 252, i32 0, metadata !750, metadata !739}
!754 = metadata !{i32 786688, metadata !574, metadata !"ntimelevels", metadata !24, i32 243, metadata !49, i32 0, metadata !739} ; [ DW_TAG_auto_variable ] [ntimelevels] [line 243]
!755 = metadata !{i32 786688, metadata !574, metadata !"level", metadata !24, i32 243, metadata !49, i32 0, metadata !739} ; [ DW_TAG_auto_variable ] [level] [line 243]
!756 = metadata !{i32 254, i32 0, metadata !749, metadata !739}
!757 = metadata !{i32 256, i32 0, metadata !748, metadata !739}
!758 = metadata !{i32 260, i32 0, metadata !747, metadata !739}
!759 = metadata !{i32 263, i32 0, metadata !747, metadata !739}
!760 = metadata !{i32 264, i32 0, metadata !747, metadata !739}
!761 = metadata !{i32 266, i32 0, metadata !747, metadata !739}
!762 = metadata !{i32 267, i32 0, metadata !747, metadata !739}
!763 = metadata !{i32 361, i32 0, metadata !309, null}
!764 = metadata !{i32 363, i32 0, metadata !309, null}
!765 = metadata !{i32 366, i32 0, metadata !316, null}
!766 = metadata !{i32 370, i32 0, metadata !316, null}
!767 = metadata !{i32 371, i32 0, metadata !316, null}
!768 = metadata !{i32 524, i32 0, metadata !547, null}
!769 = metadata !{i32 528, i32 0, metadata !547, null}
!770 = metadata !{i32 531, i32 0, metadata !547, null}
!771 = metadata !{i32 536, i32 0, metadata !547, null}
!772 = metadata !{i32 537, i32 0, metadata !547, null}
!773 = metadata !{i32 539, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !547, i32 538, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!775 = metadata !{i32 540, i32 0, metadata !774, null}
!776 = metadata !{i32 541, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !774, i32 541, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!778 = metadata !{i32 543, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !777, i32 542, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!780 = metadata !{i32 546, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !779, i32 544, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!782 = metadata !{i32 548, i32 0, metadata !781, null}
!783 = metadata !{i32 551, i32 0, metadata !781, null}
!784 = metadata !{metadata !"long", metadata !616}
!785 = metadata !{i32 553, i32 0, metadata !781, null}
!786 = metadata !{i32 556, i32 0, metadata !781, null}
!787 = metadata !{metadata !"double", metadata !616}
!788 = metadata !{i32 558, i32 0, metadata !781, null}
!789 = metadata !{i32 561, i32 0, metadata !781, null}
!790 = metadata !{i32 562, i32 0, metadata !781, null}
!791 = metadata !{i32 566, i32 0, metadata !774, null}
!792 = metadata !{i32 567, i32 0, metadata !774, null}
!793 = metadata !{i32 570, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !547, i32 569, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c]
!795 = metadata !{i32 574, i32 0, metadata !547, null}

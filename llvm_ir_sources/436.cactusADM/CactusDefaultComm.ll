; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@cctki_paramchecking = external global i32
@cctki_paramcheck_nprocs = external global i32
@.str = private unnamed_addr constant [93 x i8] c"$Header: /cactus/Cactus/src/comm/CactusDefaultComm.c,v 1.48 2001/10/31 11:45:31 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_comm_CactusDefaultComm_c() #0 {
entry:
  ret i8* getelementptr inbounds ([93 x i8]* @.str, i64 0, i64 0), !dbg !99
}

; Function Attrs: nounwind optsize uwtable
define %struct.cGH* @CactusDefaultSetupGH(%struct.tFleshConfig* %config, i32 %convergence_level) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !64), !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !65), !dbg !100
  %cmp = icmp sgt i32 %convergence_level, 0, !dbg !101
  br i1 %cmp, label %return, label %if.end, !dbg !101

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !102, i64 0, metadata !69), !dbg !103
  %call = tail call noalias i8* @malloc(i64 152) #8, !dbg !104
  %0 = bitcast i8* %call to %struct.cGH*, !dbg !104
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %0}, i64 0, metadata !66), !dbg !104
  %tobool = icmp eq i8* %call, null, !dbg !105
  br i1 %tobool, label %return, label %if.then1, !dbg !105

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @CCTK_MaxDim() #8, !dbg !106
  %cctk_dim3 = bitcast i8* %call to i32*, !dbg !106
  store i32 %call2, i32* %cctk_dim3, align 4, !dbg !106, !tbaa !108
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !71), !dbg !111
  %cmp6 = icmp eq i32 %call2, 0, !dbg !112
  %. = select i1 %cmp6, i32 1, i32 %call2, !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !71), !dbg !112
  %cctk_iteration = getelementptr inbounds i8* %call, i64 4, !dbg !113
  %1 = bitcast i8* %cctk_iteration to i32*, !dbg !113
  store i32 0, i32* %1, align 4, !dbg !113, !tbaa !108
  %conv = sext i32 %. to i64, !dbg !114
  %mul = shl nsw i64 %conv, 2, !dbg !114
  %call9 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !114
  %2 = bitcast i8* %call9 to i32*, !dbg !114
  %cctk_gsh = getelementptr inbounds i8* %call, i64 8, !dbg !114
  %3 = bitcast i8* %cctk_gsh to i32**, !dbg !114
  store i32* %2, i32** %3, align 8, !dbg !114, !tbaa !115
  %call12 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !116
  %4 = bitcast i8* %call12 to i32*, !dbg !116
  %cctk_lsh = getelementptr inbounds i8* %call, i64 16, !dbg !116
  %5 = bitcast i8* %cctk_lsh to i32**, !dbg !116
  store i32* %4, i32** %5, align 8, !dbg !116, !tbaa !115
  %call15 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !117
  %6 = bitcast i8* %call15 to i32*, !dbg !117
  %cctk_lbnd = getelementptr inbounds i8* %call, i64 24, !dbg !117
  %7 = bitcast i8* %cctk_lbnd to i32**, !dbg !117
  store i32* %6, i32** %7, align 8, !dbg !117, !tbaa !115
  %call18 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !118
  %8 = bitcast i8* %call18 to i32*, !dbg !118
  %cctk_ubnd = getelementptr inbounds i8* %call, i64 32, !dbg !118
  %9 = bitcast i8* %cctk_ubnd to i32**, !dbg !118
  store i32* %8, i32** %9, align 8, !dbg !118, !tbaa !115
  %mul19 = mul nsw i32 %., 3, !dbg !119
  %conv20 = sext i32 %mul19 to i64, !dbg !119
  %mul21 = shl nsw i64 %conv20, 2, !dbg !119
  %call22 = tail call noalias i8* @malloc(i64 %mul21) #8, !dbg !119
  %10 = bitcast i8* %call22 to i32*, !dbg !119
  %cctk_lssh = getelementptr inbounds i8* %call, i64 40, !dbg !119
  %11 = bitcast i8* %cctk_lssh to i32**, !dbg !119
  store i32* %10, i32** %11, align 8, !dbg !119, !tbaa !115
  %call25 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !120
  %12 = bitcast i8* %call25 to i32*, !dbg !120
  %cctk_to = getelementptr inbounds i8* %call, i64 48, !dbg !120
  %13 = bitcast i8* %cctk_to to i32**, !dbg !120
  store i32* %12, i32** %13, align 8, !dbg !120, !tbaa !115
  %call28 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !121
  %14 = bitcast i8* %call28 to i32*, !dbg !121
  %cctk_from = getelementptr inbounds i8* %call, i64 56, !dbg !121
  %15 = bitcast i8* %cctk_from to i32**, !dbg !121
  store i32* %14, i32** %15, align 8, !dbg !121, !tbaa !115
  %mul29 = shl nsw i32 %., 1, !dbg !122
  %conv30 = sext i32 %mul29 to i64, !dbg !122
  %mul31 = shl nsw i64 %conv30, 2, !dbg !122
  %call32 = tail call noalias i8* @malloc(i64 %mul31) #8, !dbg !122
  %16 = bitcast i8* %call32 to i32*, !dbg !122
  %cctk_bbox = getelementptr inbounds i8* %call, i64 88, !dbg !122
  %17 = bitcast i8* %cctk_bbox to i32**, !dbg !122
  store i32* %16, i32** %17, align 8, !dbg !122, !tbaa !115
  %call36 = tail call noalias i8* @malloc(i64 %mul31) #8, !dbg !123
  %18 = bitcast i8* %call36 to i32*, !dbg !123
  %cctk_nghostzones = getelementptr inbounds i8* %call, i64 112, !dbg !123
  %19 = bitcast i8* %cctk_nghostzones to i32**, !dbg !123
  store i32* %18, i32** %19, align 8, !dbg !123, !tbaa !115
  %call39 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !124
  %20 = bitcast i8* %call39 to i32*, !dbg !124
  %cctk_levfac = getelementptr inbounds i8* %call, i64 96, !dbg !124
  %21 = bitcast i8* %cctk_levfac to i32**, !dbg !124
  store i32* %20, i32** %21, align 8, !dbg !124, !tbaa !115
  %mul41 = shl nsw i64 %conv, 3, !dbg !125
  %call42 = tail call noalias i8* @malloc(i64 %mul41) #8, !dbg !125
  %22 = bitcast i8* %call42 to double*, !dbg !125
  %cctk_delta_space = getelementptr inbounds i8* %call, i64 72, !dbg !125
  %23 = bitcast i8* %cctk_delta_space to double**, !dbg !125
  store double* %22, double** %23, align 8, !dbg !125, !tbaa !115
  %call45 = tail call noalias i8* @malloc(i64 %mul41) #8, !dbg !126
  %24 = bitcast i8* %call45 to double*, !dbg !126
  %cctk_origin_space = getelementptr inbounds i8* %call, i64 80, !dbg !126
  %25 = bitcast i8* %cctk_origin_space to double**, !dbg !126
  store double* %24, double** %25, align 8, !dbg !126, !tbaa !115
  %cctk_delta_time = getelementptr inbounds i8* %call, i64 64, !dbg !127
  %26 = bitcast i8* %cctk_delta_time to double*, !dbg !127
  store double 1.000000e+00, double* %26, align 8, !dbg !127, !tbaa !128
  %cctk_convlevel = getelementptr inbounds i8* %call, i64 104, !dbg !129
  %27 = bitcast i8* %cctk_convlevel to i32*, !dbg !129
  store i32 0, i32* %27, align 4, !dbg !129, !tbaa !108
  %call46 = tail call i32 @CCTK_NumVars() #8, !dbg !130
  tail call void @llvm.dbg.value(metadata !{i32 %call46}, i64 0, metadata !68), !dbg !130
  %tobool47 = icmp ne i32 %call46, 0, !dbg !131
  %28 = sext i32 %call46 to i64, !dbg !131
  %.op = shl nsw i64 %28, 3, !dbg !131
  %mul49 = select i1 %tobool47, i64 %.op, i64 8, !dbg !131
  %call50 = tail call noalias i8* @malloc(i64 %mul49) #8, !dbg !131
  %29 = bitcast i8* %call50 to i8***, !dbg !131
  %data = getelementptr inbounds i8* %call, i64 128, !dbg !131
  %30 = bitcast i8* %data to i8****, !dbg !131
  store i8*** %29, i8**** %30, align 8, !dbg !131, !tbaa !115
  %tobool52 = icmp eq i8* %call50, null, !dbg !132
  br i1 %tobool52, label %land.lhs.true, label %for.cond.preheader, !dbg !132

for.cond.preheader:                               ; preds = %if.then1
  %cmp54189 = icmp sgt i32 %call46, 0, !dbg !133
  br i1 %cmp54189, label %for.body, label %land.lhs.true, !dbg !133

for.cond:                                         ; preds = %for.body
  %31 = trunc i64 %indvars.iv.next to i32, !dbg !133
  %cmp54 = icmp slt i32 %31, %call46, !dbg !133
  br i1 %cmp54, label %for.body, label %land.lhs.true, !dbg !133

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %variable.0190 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %32 = trunc i64 %indvars.iv to i32, !dbg !136
  %call56 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %32) #8, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !70), !dbg !136
  %conv57 = sext i32 %call56 to i64, !dbg !138
  %call58 = tail call noalias i8* @calloc(i64 %conv57, i64 8) #8, !dbg !138
  %33 = bitcast i8* %call58 to i8**, !dbg !138
  %34 = load i8**** %30, align 8, !dbg !138, !tbaa !115
  %arrayidx = getelementptr inbounds i8*** %34, i64 %indvars.iv, !dbg !138
  store i8** %33, i8*** %arrayidx, align 8, !dbg !138, !tbaa !115
  %35 = load i8**** %30, align 8, !dbg !139, !tbaa !115
  %arrayidx62 = getelementptr inbounds i8*** %35, i64 %indvars.iv, !dbg !139
  %36 = load i8*** %arrayidx62, align 8, !dbg !139, !tbaa !115
  %cmp63 = icmp eq i8** %36, null, !dbg !139
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !133
  %inc = add nsw i32 %variable.0190, 1, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !69), !dbg !133
  br i1 %cmp63, label %land.lhs.true, label %for.cond, !dbg !139

land.lhs.true:                                    ; preds = %if.then1, %for.cond, %for.body, %for.cond.preheader
  %variable.1 = phi i32 [ -1, %if.then1 ], [ 0, %for.cond.preheader ], [ %variable.0190, %for.body ], [ %inc, %for.cond ]
  %extensions = getelementptr inbounds i8* %call, i64 136, !dbg !140
  %37 = bitcast i8* %extensions to i8***, !dbg !140
  store i8** null, i8*** %37, align 8, !dbg !140, !tbaa !115
  %call68 = tail call i32 @CCTK_NumGroups() #8, !dbg !141
  tail call void @llvm.dbg.value(metadata !{i32 %call68}, i64 0, metadata !67), !dbg !141
  %tobool69 = icmp ne i32 %call68, 0, !dbg !142
  %38 = sext i32 %call68 to i64, !dbg !142
  %.op188 = shl nsw i64 %38, 1, !dbg !142
  %mul75 = select i1 %tobool69, i64 %.op188, i64 2, !dbg !142
  %call76 = tail call noalias i8* @malloc(i64 %mul75) #8, !dbg !142
  %39 = bitcast i8* %call76 to %struct.cGHGroupData*, !dbg !142
  %GroupData = getelementptr inbounds i8* %call, i64 144, !dbg !142
  %40 = bitcast i8* %GroupData to %struct.cGHGroupData**, !dbg !142
  store %struct.cGHGroupData* %39, %struct.cGHGroupData** %40, align 8, !dbg !142, !tbaa !115
  %41 = load i32** %3, align 8, !dbg !143, !tbaa !115
  %tobool80 = icmp eq i32* %41, null, !dbg !143
  br i1 %tobool80, label %return, label %land.lhs.true81, !dbg !143

land.lhs.true81:                                  ; preds = %land.lhs.true
  %42 = load i32** %5, align 8, !dbg !143, !tbaa !115
  %tobool83 = icmp eq i32* %42, null, !dbg !143
  br i1 %tobool83, label %return, label %land.lhs.true84, !dbg !143

land.lhs.true84:                                  ; preds = %land.lhs.true81
  %43 = load i32** %7, align 8, !dbg !143, !tbaa !115
  %tobool86 = icmp eq i32* %43, null, !dbg !143
  br i1 %tobool86, label %return, label %land.lhs.true87, !dbg !143

land.lhs.true87:                                  ; preds = %land.lhs.true84
  %44 = load i32** %9, align 8, !dbg !143, !tbaa !115
  %tobool89 = icmp eq i32* %44, null, !dbg !143
  br i1 %tobool89, label %return, label %land.lhs.true90, !dbg !143

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %45 = load i32** %11, align 8, !dbg !143, !tbaa !115
  %tobool92 = icmp eq i32* %45, null, !dbg !143
  br i1 %tobool92, label %return, label %land.lhs.true93, !dbg !143

land.lhs.true93:                                  ; preds = %land.lhs.true90
  %46 = load i32** %15, align 8, !dbg !143, !tbaa !115
  %tobool95 = icmp eq i32* %46, null, !dbg !143
  br i1 %tobool95, label %return, label %land.lhs.true96, !dbg !143

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %47 = load i32** %13, align 8, !dbg !143, !tbaa !115
  %tobool98 = icmp eq i32* %47, null, !dbg !143
  br i1 %tobool98, label %return, label %land.lhs.true99, !dbg !143

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %48 = load i32** %17, align 8, !dbg !143, !tbaa !115
  %tobool101 = icmp eq i32* %48, null, !dbg !143
  br i1 %tobool101, label %return, label %land.lhs.true102, !dbg !143

land.lhs.true102:                                 ; preds = %land.lhs.true99
  %49 = load i32** %19, align 8, !dbg !143, !tbaa !115
  %tobool104 = icmp eq i32* %49, null, !dbg !143
  br i1 %tobool104, label %return, label %land.lhs.true105, !dbg !143

land.lhs.true105:                                 ; preds = %land.lhs.true102
  %50 = load i32** %21, align 8, !dbg !143, !tbaa !115
  %tobool107 = icmp eq i32* %50, null, !dbg !143
  br i1 %tobool107, label %return, label %land.lhs.true108, !dbg !143

land.lhs.true108:                                 ; preds = %land.lhs.true105
  %51 = load double** %23, align 8, !dbg !143, !tbaa !115
  %tobool110 = icmp eq double* %51, null, !dbg !143
  br i1 %tobool110, label %return, label %land.lhs.true111, !dbg !143

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %52 = load double** %25, align 8, !dbg !143, !tbaa !115
  %tobool113 = icmp eq double* %52, null, !dbg !143
  br i1 %tobool113, label %return, label %land.lhs.true114, !dbg !143

land.lhs.true114:                                 ; preds = %land.lhs.true111
  %53 = load i8**** %30, align 8, !dbg !143, !tbaa !115
  %notlhs = icmp eq i8*** %53, null, !dbg !143
  %notrhs = icmp ne i32 %variable.1, %call46, !dbg !143
  %or.cond.not = or i1 %notrhs, %notlhs, !dbg !143
  %tobool122 = icmp eq i8* %call76, null, !dbg !143
  %or.cond193 = or i1 %or.cond.not, %tobool122, !dbg !143
  br i1 %or.cond193, label %return, label %if.then123, !dbg !143

if.then123:                                       ; preds = %land.lhs.true114
  %call124 = tail call i32 @CCTKi_SetupGHExtensions(%struct.tFleshConfig* %config, i32 %convergence_level, %struct.cGH* %0) #8, !dbg !144
  br label %return, !dbg !146

return:                                           ; preds = %land.lhs.true114, %if.end, %if.then123, %land.lhs.true111, %land.lhs.true108, %land.lhs.true105, %land.lhs.true102, %land.lhs.true99, %land.lhs.true96, %land.lhs.true93, %land.lhs.true90, %land.lhs.true87, %land.lhs.true84, %land.lhs.true81, %land.lhs.true, %entry
  %retval.0 = phi %struct.cGH* [ null, %entry ], [ %0, %if.then123 ], [ null, %land.lhs.true114 ], [ null, %land.lhs.true111 ], [ null, %land.lhs.true108 ], [ null, %land.lhs.true105 ], [ null, %land.lhs.true102 ], [ null, %land.lhs.true99 ], [ null, %land.lhs.true96 ], [ null, %land.lhs.true93 ], [ null, %land.lhs.true90 ], [ null, %land.lhs.true87 ], [ null, %land.lhs.true84 ], [ null, %land.lhs.true81 ], [ null, %land.lhs.true ], [ null, %if.end ]
  ret %struct.cGH* %retval.0, !dbg !147
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @CCTK_MaxDim() #3

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: optsize
declare i32 @CCTKi_SetupGHExtensions(%struct.tFleshConfig*, i32, %struct.cGH*) #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CactusDefaultMyProc(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !78), !dbg !148
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !78), !dbg !149
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !79), !dbg !150
  ret i32 0, !dbg !151
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CactusDefaultnProcs(%struct.cGH* nocapture %GH) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !82), !dbg !152
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !82), !dbg !153
  %0 = load i32* @cctki_paramchecking, align 4, !dbg !154, !tbaa !108
  %tobool = icmp eq i32 %0, 0, !dbg !154
  %1 = load i32* @cctki_paramcheck_nprocs, align 4, !dbg !155, !tbaa !108
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !83), !dbg !155
  %nprocs.0 = select i1 %tobool, i32 1, i32 %1, !dbg !154
  ret i32 %nprocs.0, !dbg !157
}

; Function Attrs: noreturn nounwind optsize uwtable
define i32 @CactusDefaultExit(%struct.cGH* nocapture %GH, i32 %retval1) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !88), !dbg !158
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !89), !dbg !158
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !88), !dbg !159
  tail call void @exit(i32 %retval1) #9, !dbg !160
  unreachable, !dbg !160
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: noreturn nounwind optsize uwtable
define i32 @CactusDefaultAbort(%struct.cGH* nocapture %GH, i32 %retval1) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !92), !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !93), !dbg !161
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !92), !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !93), !dbg !163
  tail call void @exit(i32 0) #9, !dbg !164
  unreachable, !dbg !164
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CactusDefaultBarrier(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !96), !dbg !165
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !96), !dbg !166
  ret i32 0, !dbg !167
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #7

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !97, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !72, metadata !80, metadata !84, metadata !90, metadata !94}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_comm_CactusDefaultComm_c", metadata !"CCTKi_version_comm_CactusDefaultComm_c", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_comm_CactusDefaultComm_c, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 32] [def] [CCTKi_version_comm_CactusDefaultComm_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultSetupGH", metadata !"CactusDefaultSetupGH", metadata !"", i32 110, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.cGH* (%struct.tFleshConfig*, i32)* @CactusDefaultSetupGH, null, null, metadata !63, i32 111} ; [ DW_TAG_subprogram ] [line 110] [def] [scope 111] [CactusDefaultSetupGH]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !52, metadata !20}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !17, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!53 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!54 = metadata !{i32 786451, metadata !55, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !56, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!55 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!56 = metadata !{metadata !57, metadata !59, metadata !61}
!57 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!59 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!62 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!64 = metadata !{i32 786689, metadata !11, metadata !"config", metadata !5, i32 16777326, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 110]
!65 = metadata !{i32 786689, metadata !11, metadata !"convergence_level", metadata !5, i32 33554542, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [convergence_level] [line 110]
!66 = metadata !{i32 786688, metadata !11, metadata !"thisGH", metadata !5, i32 112, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thisGH] [line 112]
!67 = metadata !{i32 786688, metadata !11, metadata !"n_groups", metadata !5, i32 113, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_groups] [line 113]
!68 = metadata !{i32 786688, metadata !11, metadata !"n_variables", metadata !5, i32 114, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_variables] [line 114]
!69 = metadata !{i32 786688, metadata !11, metadata !"variable", metadata !5, i32 115, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 115]
!70 = metadata !{i32 786688, metadata !11, metadata !"ntimelevels", metadata !5, i32 116, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntimelevels] [line 116]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 117, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 117]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultMyProc", metadata !"CactusDefaultMyProc", metadata !"", i32 243, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CactusDefaultMyProc, null, null, metadata !77, i32 244} ; [ DW_TAG_subprogram ] [line 243] [def] [scope 244] [CactusDefaultMyProc]
!73 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !20, metadata !75}
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!76 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!77 = metadata !{metadata !78, metadata !79}
!78 = metadata !{i32 786689, metadata !72, metadata !"GH", metadata !5, i32 16777459, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 243]
!79 = metadata !{i32 786688, metadata !72, metadata !"myproc", metadata !5, i32 245, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 245]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultnProcs", metadata !"CactusDefaultnProcs", metadata !"", i32 284, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CactusDefaultnProcs, null, null, metadata !81, i32 285} ; [ DW_TAG_subprogram ] [line 284] [def] [scope 285] [CactusDefaultnProcs]
!81 = metadata !{metadata !82, metadata !83}
!82 = metadata !{i32 786689, metadata !80, metadata !"GH", metadata !5, i32 16777500, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 284]
!83 = metadata !{i32 786688, metadata !80, metadata !"nprocs", metadata !5, i32 286, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nprocs] [line 286]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultExit", metadata !"CactusDefaultExit", metadata !"", i32 338, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CactusDefaultExit, null, null, metadata !87, i32 339} ; [ DW_TAG_subprogram ] [line 338] [def] [scope 339] [CactusDefaultExit]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !20, metadata !14, metadata !20}
!87 = metadata !{metadata !88, metadata !89}
!88 = metadata !{i32 786689, metadata !84, metadata !"GH", metadata !5, i32 16777554, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 338]
!89 = metadata !{i32 786689, metadata !84, metadata !"retval", metadata !5, i32 33554770, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 338]
!90 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultAbort", metadata !"CactusDefaultAbort", metadata !"", i32 381, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CactusDefaultAbort, null, null, metadata !91, i32 382} ; [ DW_TAG_subprogram ] [line 381] [def] [scope 382] [CactusDefaultAbort]
!91 = metadata !{metadata !92, metadata !93}
!92 = metadata !{i32 786689, metadata !90, metadata !"GH", metadata !5, i32 16777597, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 381]
!93 = metadata !{i32 786689, metadata !90, metadata !"retval", metadata !5, i32 33554813, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 381]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultBarrier", metadata !"CactusDefaultBarrier", metadata !"", i32 424, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CactusDefaultBarrier, null, null, metadata !95, i32 425} ; [ DW_TAG_subprogram ] [line 424] [def] [scope 425] [CactusDefaultBarrier]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786689, metadata !94, metadata !"GH", metadata !5, i32 16777640, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 424]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 30, metadata !8, i32 1, i32 1, null, null}
!99 = metadata !{i32 32, i32 0, metadata !4, null}
!100 = metadata !{i32 110, i32 0, metadata !11, null}
!101 = metadata !{i32 121, i32 0, metadata !11, null}
!102 = metadata !{i32 -1}
!103 = metadata !{i32 130, i32 0, metadata !11, null}
!104 = metadata !{i32 133, i32 0, metadata !11, null}
!105 = metadata !{i32 135, i32 0, metadata !11, null}
!106 = metadata !{i32 137, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !11, i32 136, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c]
!108 = metadata !{metadata !"int", metadata !109}
!109 = metadata !{metadata !"omnipotent char", metadata !110}
!110 = metadata !{metadata !"Simple C/C++ TBAA"}
!111 = metadata !{i32 140, i32 0, metadata !107, null}
!112 = metadata !{i32 141, i32 0, metadata !107, null}
!113 = metadata !{i32 142, i32 0, metadata !107, null}
!114 = metadata !{i32 143, i32 0, metadata !107, null}
!115 = metadata !{metadata !"any pointer", metadata !109}
!116 = metadata !{i32 144, i32 0, metadata !107, null}
!117 = metadata !{i32 145, i32 0, metadata !107, null}
!118 = metadata !{i32 146, i32 0, metadata !107, null}
!119 = metadata !{i32 148, i32 0, metadata !107, null}
!120 = metadata !{i32 149, i32 0, metadata !107, null}
!121 = metadata !{i32 150, i32 0, metadata !107, null}
!122 = metadata !{i32 151, i32 0, metadata !107, null}
!123 = metadata !{i32 152, i32 0, metadata !107, null}
!124 = metadata !{i32 153, i32 0, metadata !107, null}
!125 = metadata !{i32 154, i32 0, metadata !107, null}
!126 = metadata !{i32 156, i32 0, metadata !107, null}
!127 = metadata !{i32 158, i32 0, metadata !107, null}
!128 = metadata !{metadata !"double", metadata !109}
!129 = metadata !{i32 159, i32 0, metadata !107, null}
!130 = metadata !{i32 161, i32 0, metadata !107, null}
!131 = metadata !{i32 166, i32 0, metadata !107, null}
!132 = metadata !{i32 168, i32 0, metadata !107, null}
!133 = metadata !{i32 170, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !135, i32 170, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c]
!135 = metadata !{i32 786443, metadata !1, metadata !107, i32 169, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c]
!136 = metadata !{i32 172, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !134, i32 171, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c]
!138 = metadata !{i32 174, i32 0, metadata !137, null}
!139 = metadata !{i32 175, i32 0, metadata !137, null}
!140 = metadata !{i32 182, i32 0, metadata !107, null}
!141 = metadata !{i32 187, i32 0, metadata !107, null}
!142 = metadata !{i32 188, i32 0, metadata !107, null}
!143 = metadata !{i32 192, i32 0, metadata !11, null}
!144 = metadata !{i32 210, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !11, i32 208, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c]
!146 = metadata !{i32 211, i32 0, metadata !145, null}
!147 = metadata !{i32 219, i32 0, metadata !11, null}
!148 = metadata !{i32 243, i32 0, metadata !72, null}
!149 = metadata !{i32 249, i32 0, metadata !72, null}
!150 = metadata !{i32 251, i32 0, metadata !72, null}
!151 = metadata !{i32 259, i32 0, metadata !72, null}
!152 = metadata !{i32 284, i32 0, metadata !80, null}
!153 = metadata !{i32 290, i32 0, metadata !80, null}
!154 = metadata !{i32 292, i32 0, metadata !80, null}
!155 = metadata !{i32 294, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !80, i32 293, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c]
!157 = metadata !{i32 307, i32 0, metadata !80, null}
!158 = metadata !{i32 338, i32 0, metadata !84, null}
!159 = metadata !{i32 341, i32 0, metadata !84, null}
!160 = metadata !{i32 349, i32 0, metadata !84, null}
!161 = metadata !{i32 381, i32 0, metadata !90, null}
!162 = metadata !{i32 384, i32 0, metadata !90, null}
!163 = metadata !{i32 398, i32 0, metadata !90, null}
!164 = metadata !{i32 400, i32 0, metadata !90, null}
!165 = metadata !{i32 424, i32 0, metadata !94, null}
!166 = metadata !{i32 427, i32 0, metadata !94, null}
!167 = metadata !{i32 429, i32 0, metadata !94, null}

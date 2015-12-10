; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOBASIC_GH = type { i32, i32, i8, i8*, i8*, i32*, i32*, %struct.IOBASIC_REDUCTIONLIST*, %struct.PNamedData* }
%struct.IOBASIC_REDUCTIONLIST = type { i32, %struct.IOBASIC_REDUCTION* }
%struct.IOBASIC_REDUCTION = type { i32, i8*, i8, double, %struct.IOBASIC_REDUCTION* }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c\00", align 1
@.str2 = private unnamed_addr constant [89 x i8] c"Already done IOBasic scalar output for '%s' in current iteration (probably via triggers)\00", align 1
@CheckSteerableParameters.outScalar_vars_lastset = internal unnamed_addr global i32 -1, align 4
@iobasicpriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str3 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str5 = private unnamed_addr constant [35 x i8] c"Scalar: Output every %d iterations\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"outScalar_vars\00", align 1
@.str7 = private unnamed_addr constant [32 x i8] c"Scalar: Output requested for %s\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str9 = private unnamed_addr constant [46 x i8] c"Optional string '%s' in variable name ignored\00", align 1
@.str10 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/OutputScalar.c,v 1.7 2002/01/18 16:06:47 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_OutputScalar_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str10, i64 0, i64 0), !dbg !168
}

; Function Attrs: nounwind optsize uwtable
define i32 @IOBasic_ScalarOutputGH(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !54), !dbg !169
  %call = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !170
  %0 = bitcast i8* %call to %struct.IOBASIC_GH*, !dbg !170
  tail call void @llvm.dbg.value(metadata !{%struct.IOBASIC_GH* %0}, i64 0, metadata !59), !dbg !170
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %0) #7, !dbg !171
  %outScalar_every = bitcast i8* %call to i32*, !dbg !172
  %1 = load i32* %outScalar_every, align 4, !dbg !172, !tbaa !173
  %cmp = icmp slt i32 %1, 1, !dbg !172
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !172

for.cond.preheader:                               ; preds = %entry
  %call230 = tail call i32 @CCTK_NumVars() #6, !dbg !176
  %cmp331 = icmp sgt i32 %call230, 0, !dbg !176
  br i1 %cmp331, label %for.body.lr.ph, label %return, !dbg !176

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !178
  %outScalar_last = getelementptr inbounds i8* %call, i64 40, !dbg !178
  %2 = bitcast i8* %outScalar_last to i32**, !dbg !178
  br label %for.body, !dbg !176

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %retval1.033 = phi i32 [ 0, %for.body.lr.ph ], [ %retval1.1, %for.inc ]
  %3 = trunc i64 %indvars.iv to i32, !dbg !181
  %call4 = tail call i32 @IOBasic_TimeForScalarOutput(%struct.cGH* %GH, i32 %3) #7, !dbg !181
  %tobool = icmp eq i32 %call4, 0, !dbg !181
  br i1 %tobool, label %for.inc, label %if.end6, !dbg !181

if.end6:                                          ; preds = %for.body
  %call7 = tail call i8* @CCTK_VarName(i32 %3) #6, !dbg !182
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !58), !dbg !182
  %call8 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %3) #6, !dbg !183
  %cmp9 = icmp eq i32 %call8, 1, !dbg !183
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !183

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %3, i8* %call7) #6, !dbg !184
  tail call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !55), !dbg !184
  br label %if.end13, !dbg !186

if.else:                                          ; preds = %if.end6
  %call12 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %3, i8* %call7) #6, !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !55), !dbg !187
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %i.0 = phi i32 [ %call11, %if.then10 ], [ %call12, %if.else ]
  %cmp14 = icmp eq i32 %i.0, 0, !dbg !189
  br i1 %cmp14, label %if.then15, label %for.inc, !dbg !189

if.then15:                                        ; preds = %if.end13
  %4 = load i32* %cctk_iteration, align 4, !dbg !178, !tbaa !173
  %5 = load i32** %2, align 8, !dbg !178, !tbaa !190
  %arrayidx = getelementptr inbounds i32* %5, i64 %indvars.iv, !dbg !178
  store i32 %4, i32* %arrayidx, align 4, !dbg !178, !tbaa !173
  %inc = add nsw i32 %retval1.033, 1, !dbg !191
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !57), !dbg !191
  br label %for.inc, !dbg !192

for.inc:                                          ; preds = %for.body, %if.end13, %if.then15
  %retval1.1 = phi i32 [ %inc, %if.then15 ], [ %retval1.033, %if.end13 ], [ %retval1.033, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !176
  %call2 = tail call i32 @CCTK_NumVars() #6, !dbg !176
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !176
  %cmp3 = icmp slt i32 %6, %call2, !dbg !176
  br i1 %cmp3, label %for.body, label %return, !dbg !176

return:                                           ; preds = %for.cond.preheader, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ %retval1.1, %for.inc ]
  ret i32 %retval.0, !dbg !193
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* nocapture %myGH) #1 {
entry:
  %msg = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct.IOBASIC_GH* %myGH}, i64 0, metadata !131), !dbg !194
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !137), !dbg !195
  %0 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 4), align 8, !dbg !196, !tbaa !190
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !143), !dbg !196
  %1 = load i32* getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 8), align 4, !dbg !196, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !148), !dbg !196
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !dbg !196, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !150), !dbg !196
  %3 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !dbg !196, !tbaa !190
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !151), !dbg !196
  %outScalar_every1 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 0, !dbg !197
  %4 = load i32* %outScalar_every1, align 4, !dbg !197, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !134), !dbg !197
  %cmp = icmp sgt i32 %2, 0, !dbg !198
  %cond = select i1 %cmp, i32 %2, i32 -1, !dbg !198
  %cmp3 = icmp sgt i32 %1, 0, !dbg !199
  %.cond = select i1 %cmp3, i32 %1, i32 %cond, !dbg !199
  store i32 %.cond, i32* %outScalar_every1, align 4, !dbg !198, !tbaa !173
  %cmp6 = icmp eq i32 %.cond, %4, !dbg !200
  br i1 %cmp6, label %if.end14, label %if.then7, !dbg !200

if.then7:                                         ; preds = %entry
  %call = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !201
  %tobool = icmp eq i32 %call, 0, !dbg !201
  br i1 %tobool, label %lor.lhs.false, label %if.then10, !dbg !201

lor.lhs.false:                                    ; preds = %if.then7
  %call8 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !203
  %tobool9 = icmp eq i32 %call8, 0, !dbg !203
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !203

if.then10:                                        ; preds = %lor.lhs.false, %if.then7
  %5 = load i32* %outScalar_every1, align 4, !dbg !204, !tbaa !173
  %call12 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str5, i64 0, i64 0), i32 %5) #6, !dbg !204
  br label %if.end14, !dbg !206

if.end14:                                         ; preds = %lor.lhs.false, %entry, %if.then10
  %call15 = call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !207
  call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !135), !dbg !207
  %6 = load i32* @CheckSteerableParameters.outScalar_vars_lastset, align 4, !dbg !208, !tbaa !173
  %cmp16 = icmp eq i32 %call15, %6, !dbg !208
  br i1 %cmp16, label %if.end46, label %if.then17, !dbg !208

if.then17:                                        ; preds = %if.end14
  %call18 = call i32 @CCTK_NumVars() #6, !dbg !209
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !133), !dbg !209
  %do_outScalar = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 3, !dbg !211
  %7 = load i8** %do_outScalar, align 8, !dbg !211, !tbaa !190
  %conv = sext i32 %call18 to i64, !dbg !211
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %conv, i32 1, i1 false), !dbg !211
  %8 = load i8** %do_outScalar, align 8, !dbg !212, !tbaa !190
  %call20 = call i32 @CCTK_TraverseString(i8* %0, void (i32, i8*, i8*)* @SetOutputFlag, i8* %8, i32 3) #6, !dbg !212
  %9 = load i32* %outScalar_every1, align 4, !dbg !213, !tbaa !173
  %tobool22 = icmp eq i32 %9, 0, !dbg !213
  br i1 %tobool22, label %if.end45, label %land.lhs.true, !dbg !213

land.lhs.true:                                    ; preds = %if.then17
  %call23 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !214
  %tobool24 = icmp eq i32 %call23, 0, !dbg !214
  br i1 %tobool24, label %lor.lhs.false25, label %if.then28, !dbg !214

lor.lhs.false25:                                  ; preds = %land.lhs.true
  %call26 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !215
  %tobool27 = icmp eq i32 %call26, 0, !dbg !215
  br i1 %tobool27, label %if.end45, label %if.then28, !dbg !215

if.then28:                                        ; preds = %lor.lhs.false25, %land.lhs.true
  call void @llvm.dbg.value(metadata !216, i64 0, metadata !137), !dbg !217
  store i8* null, i8** %msg, align 8, !dbg !217, !tbaa !190
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !132), !dbg !219
  %cmp2968 = icmp sgt i32 %call18, 0, !dbg !219
  br i1 %cmp2968, label %for.body, label %if.end45, !dbg !219

for.body:                                         ; preds = %for.inc, %if.then28
  %indvars.iv = phi i64 [ 0, %if.then28 ], [ %indvars.iv.next, %for.inc ]
  %10 = load i8** %do_outScalar, align 8, !dbg !221, !tbaa !190
  %arrayidx = getelementptr inbounds i8* %10, i64 %indvars.iv, !dbg !221
  %11 = load i8* %arrayidx, align 1, !dbg !221, !tbaa !174
  %tobool32 = icmp eq i8 %11, 0, !dbg !221
  br i1 %tobool32, label %for.inc, label %if.then33, !dbg !221

if.then33:                                        ; preds = %for.body
  %12 = trunc i64 %indvars.iv to i32, !dbg !223
  %call34 = call i8* @CCTK_FullName(i32 %12) #6, !dbg !223
  call void @llvm.dbg.value(metadata !{i8* %call34}, i64 0, metadata !136), !dbg !223
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !137), !dbg !225
  %13 = load i8** %msg, align 8, !dbg !225, !tbaa !190
  %tobool35 = icmp eq i8* %13, null, !dbg !225
  br i1 %tobool35, label %if.then36, label %if.else, !dbg !225

if.then36:                                        ; preds = %if.then33
  %call37 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([32 x i8]* @.str7, i64 0, i64 0), i8* %call34) #6, !dbg !226
  br label %if.end39, !dbg !228

if.else:                                          ; preds = %if.then33
  call void @llvm.dbg.value(metadata !{i8* %13}, i64 0, metadata !138), !dbg !229
  %call38 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i8* %13, i8* %call34) #6, !dbg !231
  call void @free(i8* %13) #6, !dbg !232
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  call void @free(i8* %call34) #6, !dbg !233
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %for.body, %if.end39
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !219
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !219
  %exitcond = icmp eq i32 %lftr.wideiv, %call18, !dbg !219
  br i1 %exitcond, label %for.end, label %for.body, !dbg !219

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !137), !dbg !235
  %.pre = load i8** %msg, align 8, !dbg !235, !tbaa !190
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !137), !dbg !235
  %tobool41 = icmp eq i8* %.pre, null, !dbg !235
  br i1 %tobool41, label %if.end45, label %if.then42, !dbg !235

if.then42:                                        ; preds = %for.end
  %call43 = call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %.pre) #6, !dbg !236
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !137), !dbg !238
  %14 = load i8** %msg, align 8, !dbg !238, !tbaa !190
  call void @free(i8* %14) #6, !dbg !238
  br label %if.end45, !dbg !239

if.end45:                                         ; preds = %if.then28, %for.end, %lor.lhs.false25, %if.then17, %if.then42
  store i32 %call15, i32* @CheckSteerableParameters.outScalar_vars_lastset, align 4, !dbg !240, !tbaa !173
  br label %if.end46, !dbg !241

if.end46:                                         ; preds = %if.end14, %if.end45
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  call void @llvm.dbg.value(metadata !242, i64 0, metadata !154), !dbg !243
  ret void, !dbg !243
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: nounwind optsize uwtable
define i32 @IOBasic_TimeForScalarOutput(%struct.cGH* %GH, i32 %vindex) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !115), !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !116), !dbg !244
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !117), !dbg !245
  %call = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !246
  %0 = bitcast i8* %call to %struct.IOBASIC_GH*, !dbg !246
  tail call void @llvm.dbg.value(metadata !{%struct.IOBASIC_GH* %0}, i64 0, metadata !118), !dbg !246
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %0) #7, !dbg !247
  %outScalar_every = bitcast i8* %call to i32*, !dbg !248
  %1 = load i32* %outScalar_every, align 4, !dbg !248, !tbaa !173
  %cmp = icmp slt i32 %1, 1, !dbg !248
  br i1 %cmp, label %return, label %if.end, !dbg !248

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %vindex to i64, !dbg !249
  %do_outScalar = getelementptr inbounds i8* %call, i64 16, !dbg !249
  %2 = bitcast i8* %do_outScalar to i8**, !dbg !249
  %3 = load i8** %2, align 8, !dbg !249, !tbaa !190
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom, !dbg !249
  %4 = load i8* %arrayidx, align 1, !dbg !249, !tbaa !174
  %tobool = icmp eq i8 %4, 0, !dbg !249
  br i1 %tobool, label %return, label %land.lhs.true, !dbg !249

land.lhs.true:                                    ; preds = %if.end
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !249
  %5 = load i32* %cctk_iteration, align 4, !dbg !249, !tbaa !173
  %rem = srem i32 %5, %1, !dbg !249
  %cmp2 = icmp eq i32 %rem, 0, !dbg !249
  br i1 %cmp2, label %if.then4, label %return, !dbg !249

if.then4:                                         ; preds = %land.lhs.true
  %outScalar_last = getelementptr inbounds i8* %call, i64 40, !dbg !250
  %6 = bitcast i8* %outScalar_last to i32**, !dbg !250
  %7 = load i32** %6, align 8, !dbg !250, !tbaa !190
  %arrayidx6 = getelementptr inbounds i32* %7, i64 %idxprom, !dbg !250
  %8 = load i32* %arrayidx6, align 4, !dbg !250, !tbaa !173
  %cmp8 = icmp eq i32 %8, %5, !dbg !250
  br i1 %cmp8, label %if.then10, label %return, !dbg !250

if.then10:                                        ; preds = %if.then4
  %call11 = tail call i8* @CCTK_FullName(i32 %vindex) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !119), !dbg !252
  %call12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 231, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([89 x i8]* @.str2, i64 0, i64 0), i8* %call11) #6, !dbg !254
  tail call void @free(i8* %call11) #6, !dbg !255
  br label %return, !dbg !256

return:                                           ; preds = %land.lhs.true, %if.then10, %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then10 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 1, %if.then4 ]
  ret i32 %retval.0, !dbg !257
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #3

; Function Attrs: optsize
declare i32 @IOBasic_WriteScalarGS(%struct.cGH*, i32, i8*) #3

; Function Attrs: optsize
declare i32 @IOBasic_WriteScalarGA(%struct.cGH*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IOBasic_ScalarOutputVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !106), !dbg !258
  tail call void @llvm.dbg.value(metadata !{i8* %fullname}, i64 0, metadata !107), !dbg !258
  tail call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !108), !dbg !258
  %call = tail call i32 @CCTK_VarIndex(i8* %fullname) #6, !dbg !259
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !109), !dbg !259
  %call2 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %call) #6, !dbg !260
  %cmp = icmp eq i32 %call2, 1, !dbg !260
  br i1 %cmp, label %if.then, label %if.else, !dbg !260

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %call, i8* %alias) #6, !dbg !261
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !110), !dbg !261
  br label %if.end, !dbg !263

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %call, i8* %alias) #6, !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !110), !dbg !264
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.else ]
  ret i32 %retval1.0, !dbg !266
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @IOBasic_TriggerScalarOutput(%struct.cGH* %GH, i32 %vindex) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !122), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !123), !dbg !267
  %call = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !268
  %call2 = tail call i8* @CCTK_VarName(i32 %vindex) #6, !dbg !269
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !125), !dbg !269
  %call3 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #6, !dbg !270
  %cmp = icmp eq i32 %call3, 1, !dbg !270
  br i1 %cmp, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %vindex, i8* %call2) #6, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !124), !dbg !271
  br label %if.end, !dbg !273

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %vindex, i8* %call2) #6, !dbg !274
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !124), !dbg !274
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call4, %if.then ], [ %call5, %if.else ]
  %cmp6 = icmp eq i32 %retval1.0, 0, !dbg !276
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !276

if.then7:                                         ; preds = %if.end
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !277
  %0 = load i32* %cctk_iteration, align 4, !dbg !277, !tbaa !173
  %idxprom = sext i32 %vindex to i64, !dbg !277
  %outScalar_last = getelementptr inbounds i8* %call, i64 40, !dbg !277
  %1 = bitcast i8* %outScalar_last to i32**, !dbg !277
  %2 = load i32** %1, align 8, !dbg !277, !tbaa !190
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !277
  store i32 %0, i32* %arrayidx, align 4, !dbg !277, !tbaa !173
  br label %if.end8, !dbg !279

if.end8:                                          ; preds = %if.then7, %if.end
  ret i32 %retval1.0, !dbg !280
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterQueryTimesSet(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @CCTK_TraverseString(i8*, void (i32, i8*, i8*)*, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal void @SetOutputFlag(i32 %vindex, i8* %optstring, i8* nocapture %arg) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !161), !dbg !281
  tail call void @llvm.dbg.value(metadata !{i8* %optstring}, i64 0, metadata !162), !dbg !281
  tail call void @llvm.dbg.value(metadata !{i8* %arg}, i64 0, metadata !163), !dbg !281
  tail call void @llvm.dbg.value(metadata !{i8* %arg}, i64 0, metadata !164), !dbg !282
  %idxprom = sext i32 %vindex to i64, !dbg !283
  %arrayidx = getelementptr inbounds i8* %arg, i64 %idxprom, !dbg !283
  store i8 1, i8* %arrayidx, align 1, !dbg !283, !tbaa !174
  %tobool = icmp eq i8* %optstring, null, !dbg !284
  br i1 %tobool, label %if.end, label %if.then, !dbg !284

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 396, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), i8* %optstring) #6, !dbg !285
  br label %if.end, !dbg !287

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !288
}

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !165, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !102, metadata !111, metadata !120, metadata !127, metadata !157}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_IOBasic_OutputScalar_c", metadata !"CCTKi_version_CactusBase_IOBasic_OutputScalar_c", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_IOBasic_OutputScalar_c, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [CCTKi_version_CactusBase_IOBasic_OutputScalar_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOBasic_ScalarOutputGH", metadata !"IOBasic_ScalarOutputGH", metadata !"", i32 59, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @IOBasic_ScalarOutputGH, null, null, metadata !53, i32 60} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 60] [IOBasic_ScalarOutputGH]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !19, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!54 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777275, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 59]
!55 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 61]
!56 = metadata !{i32 786688, metadata !11, metadata !"vindex", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 61]
!57 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 61]
!58 = metadata !{i32 786688, metadata !11, metadata !"name", metadata !5, i32 62, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 62]
!59 = metadata !{i32 786688, metadata !11, metadata !"myGH", metadata !5, i32 63, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 63]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasicGH]
!61 = metadata !{i32 786454, metadata !1, null, metadata !"iobasicGH", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [iobasicGH] [line 52, size 0, align 0, offset 0] [from IOBASIC_GH]
!62 = metadata !{i32 786451, metadata !63, null, metadata !"IOBASIC_GH", i32 29, i64 512, i64 64, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_GH] [line 29, size 512, align 64, offset 0] [from ]
!63 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/iobasicGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !70, metadata !71, metadata !72, metadata !73, metadata !91}
!65 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outScalar_every", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [outScalar_every] [line 32, size 32, align 32, offset 0] [from int]
!66 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outInfo_every", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [outInfo_every] [line 33, size 32, align 32, offset 32] [from int]
!67 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"info_reductions_changed", i32 34, i64 8, i64 8, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [info_reductions_changed] [line 34, size 8, align 8, offset 64] [from char]
!68 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"do_outScalar", i32 37, i64 64, i64 64, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [do_outScalar] [line 37, size 64, align 64, offset 128] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!70 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outdirScalar", i32 40, i64 64, i64 64, i64 192, i32 0, metadata !69} ; [ DW_TAG_member ] [outdirScalar] [line 40, size 64, align 64, offset 192] [from ]
!71 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outInfo_last", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [outInfo_last] [line 43, size 64, align 64, offset 256] [from ]
!72 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outScalar_last", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [outScalar_last] [line 44, size 64, align 64, offset 320] [from ]
!73 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"info_reductions", i32 47, i64 64, i64 64, i64 384, i32 0, metadata !74} ; [ DW_TAG_member ] [info_reductions] [line 47, size 64, align 64, offset 384] [from ]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasic_reductionlist_t]
!75 = metadata !{i32 786454, metadata !63, null, metadata !"iobasic_reductionlist_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [iobasic_reductionlist_t] [line 27, size 0, align 0, offset 0] [from IOBASIC_REDUCTIONLIST]
!76 = metadata !{i32 786451, metadata !63, null, metadata !"IOBASIC_REDUCTIONLIST", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !77, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_REDUCTIONLIST] [line 23, size 128, align 64, offset 0] [from ]
!77 = metadata !{metadata !78, metadata !80}
!78 = metadata !{i32 786445, metadata !63, metadata !76, metadata !"num_reductions", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [num_reductions] [line 25, size 32, align 32, offset 0] [from unsigned int]
!79 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!80 = metadata !{i32 786445, metadata !63, metadata !76, metadata !"reductions", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [reductions] [line 26, size 64, align 64, offset 64] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasic_reduction_t]
!82 = metadata !{i32 786454, metadata !63, null, metadata !"iobasic_reduction_t", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [iobasic_reduction_t] [line 21, size 0, align 0, offset 0] [from IOBASIC_REDUCTION]
!83 = metadata !{i32 786451, metadata !63, null, metadata !"IOBASIC_REDUCTION", i32 14, i64 320, i64 64, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_REDUCTION] [line 14, size 320, align 64, offset 0] [from ]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89}
!85 = metadata !{i32 786445, metadata !63, metadata !83, metadata !"handle", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [handle] [line 16, size 32, align 32, offset 0] [from int]
!86 = metadata !{i32 786445, metadata !63, metadata !83, metadata !"name", i32 17, i64 64, i64 64, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [name] [line 17, size 64, align 64, offset 64] [from ]
!87 = metadata !{i32 786445, metadata !63, metadata !83, metadata !"is_valid", i32 18, i64 8, i64 8, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [is_valid] [line 18, size 8, align 8, offset 128] [from char]
!88 = metadata !{i32 786445, metadata !63, metadata !83, metadata !"value", i32 19, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [value] [line 19, size 64, align 64, offset 192] [from double]
!89 = metadata !{i32 786445, metadata !63, metadata !83, metadata !"next", i32 20, i64 64, i64 64, i64 256, i32 0, metadata !90} ; [ DW_TAG_member ] [next] [line 20, size 64, align 64, offset 256] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IOBASIC_REDUCTION]
!91 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"filenameListScalar", i32 50, i64 64, i64 64, i64 448, i32 0, metadata !92} ; [ DW_TAG_member ] [filenameListScalar] [line 50, size 64, align 64, offset 448] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pNamedData]
!93 = metadata !{i32 786454, metadata !63, null, metadata !"pNamedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [pNamedData] [line 26, size 0, align 0, offset 0] [from PNamedData]
!94 = metadata !{i32 786451, metadata !95, null, metadata !"PNamedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !96, i32 0, null, null} ; [ DW_TAG_structure_type ] [PNamedData] [line 18, size 256, align 64, offset 0] [from ]
!95 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/StoreNamedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!96 = metadata !{metadata !97, metadata !99, metadata !100, metadata !101}
!97 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PNamedData]
!99 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !98} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!100 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"name", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [name] [line 23, size 64, align 64, offset 128] [from ]
!101 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!102 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOBasic_ScalarOutputVarAs", metadata !"IOBasic_ScalarOutputVarAs", metadata !"", i32 150, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, i8*)* @IOBasic_ScalarOutputVarAs, null, null, metadata !105, i32 151} ; [ DW_TAG_subprogram ] [line 150] [def] [scope 151] [IOBasic_ScalarOutputVarAs]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{metadata !14, metadata !15, metadata !8, metadata !8}
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !110}
!106 = metadata !{i32 786689, metadata !102, metadata !"GH", metadata !5, i32 16777366, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 150]
!107 = metadata !{i32 786689, metadata !102, metadata !"fullname", metadata !5, i32 33554582, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fullname] [line 150]
!108 = metadata !{i32 786689, metadata !102, metadata !"alias", metadata !5, i32 50331798, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 150]
!109 = metadata !{i32 786688, metadata !102, metadata !"vindex", metadata !5, i32 152, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 152]
!110 = metadata !{i32 786688, metadata !102, metadata !"retval", metadata !5, i32 152, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 152]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOBasic_TimeForScalarOutput", metadata !"IOBasic_TimeForScalarOutput", metadata !"", i32 202, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @IOBasic_TimeForScalarOutput, null, null, metadata !114, i32 203} ; [ DW_TAG_subprogram ] [line 202] [def] [scope 203] [IOBasic_TimeForScalarOutput]
!112 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{metadata !14, metadata !15, metadata !14}
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118, metadata !119}
!115 = metadata !{i32 786689, metadata !111, metadata !"GH", metadata !5, i32 16777418, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 202]
!116 = metadata !{i32 786689, metadata !111, metadata !"vindex", metadata !5, i32 33554634, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 202]
!117 = metadata !{i32 786688, metadata !111, metadata !"return_type", metadata !5, i32 204, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_type] [line 204]
!118 = metadata !{i32 786688, metadata !111, metadata !"myGH", metadata !5, i32 205, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 205]
!119 = metadata !{i32 786688, metadata !111, metadata !"fullname", metadata !5, i32 206, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 206]
!120 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOBasic_TriggerScalarOutput", metadata !"IOBasic_TriggerScalarOutput", metadata !"", i32 272, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @IOBasic_TriggerScalarOutput, null, null, metadata !121, i32 273} ; [ DW_TAG_subprogram ] [line 272] [def] [scope 273] [IOBasic_TriggerScalarOutput]
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!122 = metadata !{i32 786689, metadata !120, metadata !"GH", metadata !5, i32 16777488, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 272]
!123 = metadata !{i32 786689, metadata !120, metadata !"vindex", metadata !5, i32 33554704, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 272]
!124 = metadata !{i32 786688, metadata !120, metadata !"retval", metadata !5, i32 274, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 274]
!125 = metadata !{i32 786688, metadata !120, metadata !"name", metadata !5, i32 275, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 275]
!126 = metadata !{i32 786688, metadata !120, metadata !"myGH", metadata !5, i32 276, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 276]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CheckSteerableParameters", metadata !"CheckSteerableParameters", metadata !"", i32 312, metadata !128, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.IOBASIC_GH*)* @CheckSteerableParameters, null, null, metadata !130, i32 313} ; [ DW_TAG_subprogram ] [line 312] [local] [def] [scope 313] [CheckSteerableParameters]
!128 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{null, metadata !60}
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154}
!131 = metadata !{i32 786689, metadata !127, metadata !"myGH", metadata !5, i32 16777528, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myGH] [line 312]
!132 = metadata !{i32 786688, metadata !127, metadata !"i", metadata !5, i32 314, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 314]
!133 = metadata !{i32 786688, metadata !127, metadata !"num_vars", metadata !5, i32 314, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_vars] [line 314]
!134 = metadata !{i32 786688, metadata !127, metadata !"out_old", metadata !5, i32 314, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_old] [line 314]
!135 = metadata !{i32 786688, metadata !127, metadata !"times_set", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [times_set] [line 315]
!136 = metadata !{i32 786688, metadata !127, metadata !"fullname", metadata !5, i32 316, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 316]
!137 = metadata !{i32 786688, metadata !127, metadata !"msg", metadata !5, i32 316, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 316]
!138 = metadata !{i32 786688, metadata !127, metadata !"oldmsg", metadata !5, i32 316, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldmsg] [line 316]
!139 = metadata !{i32 786688, metadata !127, metadata !"outInfo_reductions", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_reductions] [line 318]
!140 = metadata !{i32 786688, metadata !127, metadata !"outInfo_vars", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_vars] [line 318]
!141 = metadata !{i32 786688, metadata !127, metadata !"outScalar_reductions", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_reductions] [line 318]
!142 = metadata !{i32 786688, metadata !127, metadata !"outScalar_style", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_style] [line 318]
!143 = metadata !{i32 786688, metadata !127, metadata !"outScalar_vars", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_vars] [line 318]
!144 = metadata !{i32 786688, metadata !127, metadata !"out_format", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 318]
!145 = metadata !{i32 786688, metadata !127, metadata !"outdirScalar", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdirScalar] [line 318]
!146 = metadata !{i32 786688, metadata !127, metadata !"outInfo_every", metadata !5, i32 318, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_every] [line 318]
!147 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!148 = metadata !{i32 786688, metadata !127, metadata !"outScalar_every", metadata !5, i32 318, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_every] [line 318]
!149 = metadata !{i32 786688, metadata !127, metadata !"outdir", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 318]
!150 = metadata !{i32 786688, metadata !127, metadata !"out_every", metadata !5, i32 318, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 318]
!151 = metadata !{i32 786688, metadata !127, metadata !"newverbose", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 318]
!152 = metadata !{i32 786688, metadata !127, metadata !"new_filename_scheme", metadata !5, i32 318, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 318]
!153 = metadata !{i32 786688, metadata !127, metadata !"out_fileinfo", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 318]
!154 = metadata !{i32 786688, metadata !127, metadata !"cctk_pdummy_pointer", metadata !5, i32 318, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 318]
!155 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!156 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SetOutputFlag", metadata !"SetOutputFlag", metadata !"", i32 387, metadata !158, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, i8*)* @SetOutputFlag, null, null, metadata !160, i32 388} ; [ DW_TAG_subprogram ] [line 387] [local] [def] [scope 388] [SetOutputFlag]
!158 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{null, metadata !14, metadata !8, metadata !44}
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164}
!161 = metadata !{i32 786689, metadata !157, metadata !"vindex", metadata !5, i32 16777603, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 387]
!162 = metadata !{i32 786689, metadata !157, metadata !"optstring", metadata !5, i32 33554819, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [optstring] [line 387]
!163 = metadata !{i32 786689, metadata !157, metadata !"arg", metadata !5, i32 50332035, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 387]
!164 = metadata !{i32 786688, metadata !157, metadata !"flags", metadata !5, i32 389, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 389]
!165 = metadata !{metadata !166, metadata !167}
!166 = metadata !{i32 786484, i32 0, metadata !127, metadata !"outScalar_vars_lastset", metadata !"outScalar_vars_lastset", metadata !"", metadata !5, i32 317, metadata !14, i32 1, i32 1, i32* @CheckSteerableParameters.outScalar_vars_lastset, null} ; [ DW_TAG_variable ] [outScalar_vars_lastset] [line 317] [local] [def]
!167 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 24, metadata !8, i32 1, i32 1, null, null}
!168 = metadata !{i32 26, i32 0, metadata !4, null}
!169 = metadata !{i32 59, i32 0, metadata !11, null}
!170 = metadata !{i32 67, i32 0, metadata !11, null}
!171 = metadata !{i32 69, i32 0, metadata !11, null}
!172 = metadata !{i32 72, i32 0, metadata !11, null}
!173 = metadata !{metadata !"int", metadata !174}
!174 = metadata !{metadata !"omnipotent char", metadata !175}
!175 = metadata !{metadata !"Simple C/C++ TBAA"}
!176 = metadata !{i32 78, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !11, i32 78, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!178 = metadata !{i32 108, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !180, i32 106, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!180 = metadata !{i32 786443, metadata !1, metadata !177, i32 79, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!181 = metadata !{i32 81, i32 0, metadata !180, null}
!182 = metadata !{i32 87, i32 0, metadata !180, null}
!183 = metadata !{i32 97, i32 0, metadata !180, null}
!184 = metadata !{i32 99, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !180, i32 98, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!186 = metadata !{i32 100, i32 0, metadata !185, null}
!187 = metadata !{i32 103, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !180, i32 102, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!189 = metadata !{i32 105, i32 0, metadata !180, null}
!190 = metadata !{metadata !"any pointer", metadata !174}
!191 = metadata !{i32 109, i32 0, metadata !179, null}
!192 = metadata !{i32 110, i32 0, metadata !179, null}
!193 = metadata !{i32 114, i32 0, metadata !11, null}
!194 = metadata !{i32 312, i32 0, metadata !127, null}
!195 = metadata !{i32 316, i32 0, metadata !127, null}
!196 = metadata !{i32 318, i32 0, metadata !127, null}
!197 = metadata !{i32 322, i32 0, metadata !127, null}
!198 = metadata !{i32 323, i32 0, metadata !127, null}
!199 = metadata !{i32 324, i32 0, metadata !127, null}
!200 = metadata !{i32 329, i32 0, metadata !127, null}
!201 = metadata !{i32 331, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !127, i32 330, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!203 = metadata !{i32 332, i32 0, metadata !202, null}
!204 = metadata !{i32 334, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !202, i32 333, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!206 = metadata !{i32 336, i32 0, metadata !205, null}
!207 = metadata !{i32 340, i32 0, metadata !127, null}
!208 = metadata !{i32 341, i32 0, metadata !127, null}
!209 = metadata !{i32 343, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !127, i32 342, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!211 = metadata !{i32 344, i32 0, metadata !210, null}
!212 = metadata !{i32 345, i32 0, metadata !210, null}
!213 = metadata !{i32 348, i32 0, metadata !210, null}
!214 = metadata !{i32 349, i32 0, metadata !210, null}
!215 = metadata !{i32 350, i32 0, metadata !210, null}
!216 = metadata !{i8* null}
!217 = metadata !{i32 352, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !210, i32 351, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!219 = metadata !{i32 353, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !218, i32 353, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!221 = metadata !{i32 355, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !220, i32 354, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!223 = metadata !{i32 357, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !222, i32 356, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!225 = metadata !{i32 358, i32 0, metadata !224, null}
!226 = metadata !{i32 360, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !224, i32 359, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!228 = metadata !{i32 361, i32 0, metadata !227, null}
!229 = metadata !{i32 364, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !224, i32 363, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!231 = metadata !{i32 365, i32 0, metadata !230, null}
!232 = metadata !{i32 366, i32 0, metadata !230, null}
!233 = metadata !{i32 368, i32 0, metadata !224, null}
!234 = metadata !{i32 369, i32 0, metadata !224, null}
!235 = metadata !{i32 371, i32 0, metadata !218, null}
!236 = metadata !{i32 373, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !218, i32 372, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!238 = metadata !{i32 374, i32 0, metadata !237, null}
!239 = metadata !{i32 375, i32 0, metadata !237, null}
!240 = metadata !{i32 379, i32 0, metadata !210, null}
!241 = metadata !{i32 380, i32 0, metadata !210, null}
!242 = metadata !{i8* undef}
!243 = metadata !{i32 382, i32 0, metadata !127, null}
!244 = metadata !{i32 202, i32 0, metadata !111, null}
!245 = metadata !{i32 210, i32 0, metadata !111, null}
!246 = metadata !{i32 213, i32 0, metadata !111, null}
!247 = metadata !{i32 215, i32 0, metadata !111, null}
!248 = metadata !{i32 218, i32 0, metadata !111, null}
!249 = metadata !{i32 224, i32 0, metadata !111, null}
!250 = metadata !{i32 228, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !111, i32 226, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!252 = metadata !{i32 230, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !251, i32 229, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!254 = metadata !{i32 231, i32 0, metadata !253, null}
!255 = metadata !{i32 234, i32 0, metadata !253, null}
!256 = metadata !{i32 235, i32 0, metadata !253, null}
!257 = metadata !{i32 243, i32 0, metadata !111, null}
!258 = metadata !{i32 150, i32 0, metadata !102, null}
!259 = metadata !{i32 155, i32 0, metadata !102, null}
!260 = metadata !{i32 164, i32 0, metadata !102, null}
!261 = metadata !{i32 166, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !102, i32 165, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!263 = metadata !{i32 167, i32 0, metadata !262, null}
!264 = metadata !{i32 170, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !102, i32 169, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!266 = metadata !{i32 173, i32 0, metadata !102, null}
!267 = metadata !{i32 272, i32 0, metadata !120, null}
!268 = metadata !{i32 280, i32 0, metadata !120, null}
!269 = metadata !{i32 282, i32 0, metadata !120, null}
!270 = metadata !{i32 291, i32 0, metadata !120, null}
!271 = metadata !{i32 293, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !120, i32 292, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!273 = metadata !{i32 294, i32 0, metadata !272, null}
!274 = metadata !{i32 297, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !120, i32 296, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!276 = metadata !{i32 300, i32 0, metadata !120, null}
!277 = metadata !{i32 303, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !120, i32 301, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!279 = metadata !{i32 304, i32 0, metadata !278, null}
!280 = metadata !{i32 306, i32 0, metadata !120, null}
!281 = metadata !{i32 387, i32 0, metadata !157, null}
!282 = metadata !{i32 389, i32 0, metadata !157, null}
!283 = metadata !{i32 392, i32 0, metadata !157, null}
!284 = metadata !{i32 394, i32 0, metadata !157, null}
!285 = metadata !{i32 396, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !157, i32 395, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c]
!287 = metadata !{i32 398, i32 0, metadata !286, null}
!288 = metadata !{i32 399, i32 0, metadata !157, null}

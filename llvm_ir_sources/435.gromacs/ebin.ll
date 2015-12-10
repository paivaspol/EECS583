; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ebin.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }

@.str = private unnamed_addr constant [3 x i8] c"eb\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ebin.c\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"eb->e\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"eb->enm\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"%s-%d: Energies out of range: index=%d nener=%d maxener=%d\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"Invalid index in pr_ebin: %d\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@.str8 = private unnamed_addr constant [33 x i8] c"Invalid print mode %d in pr_ebin\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"   %12.5e\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !81, metadata !175), !dbg !176
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !82, metadata !175), !dbg !177
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !178
  %2 = load i32* %1, align 4, !dbg !180, !tbaa !181
  %3 = add nsw i32 %2, -1, !dbg !180
  store i32 %3, i32* %1, align 4, !dbg !180, !tbaa !181
  %4 = icmp sgt i32 %2, 0, !dbg !190
  br i1 %4, label %._crit_edge, label %5, !dbg !191

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !192
  br label %10, !dbg !191

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !193
  %7 = load i32* %6, align 4, !dbg !193, !tbaa !194
  %8 = icmp sle i32 %2, %7, !dbg !195
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !196
  %or.cond = or i1 %9, %8, !dbg !197
  br i1 %or.cond, label %15, label %10, !dbg !197

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !192
  %11 = trunc i32 %_c to i8, !dbg !198
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !199
  %13 = load i8** %12, align 8, !dbg !200, !tbaa !201
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !200
  store i8* %14, i8** %12, align 8, !dbg !200, !tbaa !201
  store i8 %11, i8* %13, align 1, !dbg !202, !tbaa !203
  br label %17, !dbg !204

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !205
  br label %17, !dbg !206

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !207
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !88, metadata !175), !dbg !208
  %1 = icmp sgt i32 %__signo, 32, !dbg !209
  br i1 %1, label %5, label %2, !dbg !210

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !211
  %4 = shl i32 1, %3, !dbg !212
  br label %5, !dbg !210

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !210
  ret i32 %6, !dbg !213
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_ebin* @mk_ebin() #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 63, i32 1, i32 24) #8, !dbg !214
  %2 = bitcast i8* %1 to %struct.t_ebin*, !dbg !214
  tail call void @llvm.dbg.value(metadata %struct.t_ebin* %2, i64 0, metadata !113, metadata !175), !dbg !215
  ret %struct.t_ebin* %2, !dbg !216
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_ebin_space(%struct.t_ebin* nocapture %eb, i32 %nener, i8** nocapture readonly %enm) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_ebin* %eb, i64 0, metadata !118, metadata !175), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %nener, i64 0, metadata !119, metadata !175), !dbg !218
  tail call void @llvm.dbg.value(metadata i8** %enm, i64 0, metadata !120, metadata !175), !dbg !219
  %1 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0, !dbg !220
  %2 = load i32* %1, align 4, !dbg !220, !tbaa !221
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !121, metadata !175), !dbg !223
  %3 = add nsw i32 %2, %nener, !dbg !224
  store i32 %3, i32* %1, align 4, !dbg !224, !tbaa !221
  %4 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2, !dbg !225
  %5 = bitcast %struct.t_energy** %4 to i8**, !dbg !225
  %6 = load i8** %5, align 8, !dbg !225, !tbaa !226
  %7 = shl i32 %3, 5, !dbg !225
  %8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 75, i8* %6, i32 %7) #8, !dbg !225
  store i8* %8, i8** %5, align 8, !dbg !225, !tbaa !226
  %9 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1, !dbg !227
  %10 = bitcast i8*** %9 to i8**, !dbg !227
  %11 = load i8** %10, align 8, !dbg !227, !tbaa !228
  %12 = load i32* %1, align 4, !dbg !227, !tbaa !221
  %13 = shl i32 %12, 3, !dbg !227
  %14 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 76, i8* %11, i32 %13) #8, !dbg !227
  store i8* %14, i8** %10, align 8, !dbg !227, !tbaa !228
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !122, metadata !175), !dbg !229
  %15 = load i32* %1, align 4, !dbg !230, !tbaa !221
  %16 = icmp slt i32 %2, %15, !dbg !233
  br i1 %16, label %.lr.ph, label %._crit_edge, !dbg !234

.lr.ph:                                           ; preds = %0
  %17 = sext i32 %2 to i64
  br label %18, !dbg !234

; <label>:18                                      ; preds = %.lr.ph, %18
  %indvars.iv = phi i64 [ %17, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %19 = load %struct.t_energy** %4, align 8, !dbg !235, !tbaa !226
  %20 = getelementptr inbounds %struct.t_energy* %19, i64 %indvars.iv, i32 0, !dbg !237
  store float 0.000000e+00, float* %20, align 4, !dbg !238, !tbaa !239
  %21 = getelementptr inbounds %struct.t_energy* %19, i64 %indvars.iv, i32 1, !dbg !243
  %22 = sub nsw i64 %indvars.iv, %17, !dbg !244
  %23 = getelementptr inbounds i8** %enm, i64 %22, !dbg !245
  %24 = bitcast double* %21 to i8*, !dbg !245
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 20, i32 8, i1 false), !dbg !246
  %25 = load i8** %23, align 8, !dbg !245, !tbaa !247
  %26 = tail call i8* @strdup(i8* %25) #8, !dbg !248
  %27 = load i8*** %9, align 8, !dbg !249, !tbaa !228
  %28 = getelementptr inbounds i8** %27, i64 %indvars.iv, !dbg !250
  store i8* %26, i8** %28, align 8, !dbg !251, !tbaa !247
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !234
  %29 = load i32* %1, align 4, !dbg !230, !tbaa !221
  %30 = sext i32 %29 to i64, !dbg !233
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !233
  br i1 %31, label %18, label %._crit_edge, !dbg !234

._crit_edge:                                      ; preds = %18, %0
  ret i32 %2, !dbg !252
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @add_ebin(%struct.t_ebin* nocapture readonly %eb, i32 %index, i32 %nener, float* nocapture readonly %ener, i32 %step) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_ebin* %eb, i64 0, metadata !128, metadata !175), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %index, i64 0, metadata !129, metadata !175), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %nener, i64 0, metadata !130, metadata !175), !dbg !255
  tail call void @llvm.dbg.value(metadata float* %ener, i64 0, metadata !131, metadata !175), !dbg !256
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !132, metadata !175), !dbg !257
  %1 = add nsw i32 %nener, %index, !dbg !258
  %2 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0, !dbg !260
  %3 = load i32* %2, align 4, !dbg !260, !tbaa !221
  %4 = icmp sgt i32 %1, %3, !dbg !261
  %5 = icmp slt i32 %index, 0, !dbg !262
  %or.cond = or i1 %5, %4, !dbg !263
  br i1 %or.cond, label %6, label %7, !dbg !263

; <label>:6                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 95, i32 %index, i32 %nener, i32 %3) #8, !dbg !264
  br label %7, !dbg !264

; <label>:7                                       ; preds = %0, %6
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !134, metadata !175), !dbg !265
  %8 = icmp sgt i32 %step, 0, !dbg !266
  br i1 %8, label %9, label %14, !dbg !268

; <label>:9                                       ; preds = %7
  %10 = sitofp i32 %step to double, !dbg !269
  %11 = fdiv double 1.000000e+00, %10, !dbg !270
  %12 = fadd double %10, 1.000000e+00, !dbg !271
  %13 = fdiv double %11, %12, !dbg !272
  tail call void @llvm.dbg.value(metadata double %13, i64 0, metadata !138, metadata !175), !dbg !273
  br label %14, !dbg !274

; <label>:14                                      ; preds = %7, %9
  %invmm.0 = phi double [ %13, %9 ], [ 0.000000e+00, %7 ]
  %15 = sext i32 %index to i64, !dbg !275
  %16 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2, !dbg !276
  %17 = load %struct.t_energy** %16, align 8, !dbg !276, !tbaa !226
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !175), !dbg !277
  %18 = icmp sgt i32 %nener, 0, !dbg !278
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !281

.lr.ph:                                           ; preds = %14
  %19 = sitofp i32 %step to double, !dbg !282
  %20 = add i32 %nener, -1, !dbg !281
  br label %21, !dbg !281

; <label>:21                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %22 = getelementptr inbounds float* %ener, i64 %indvars.iv, !dbg !284
  %23 = load float* %22, align 4, !dbg !284, !tbaa !285
  %24 = fpext float %23 to double, !dbg !284
  tail call void @llvm.dbg.value(metadata double %24, i64 0, metadata !135, metadata !175), !dbg !286
  %.sum = add nsw i64 %indvars.iv, %15, !dbg !287
  %25 = getelementptr inbounds %struct.t_energy* %17, i64 %.sum, i32 0, !dbg !288
  store float %23, float* %25, align 4, !dbg !289, !tbaa !239
  %26 = fmul double %19, %24, !dbg !290
  %27 = getelementptr inbounds %struct.t_energy* %17, i64 %.sum, i32 1, !dbg !291
  %28 = bitcast double* %27 to <2 x double>*, !dbg !292
  %29 = load <2 x double>* %28, align 8, !dbg !292, !tbaa !293
  %30 = extractelement <2 x double> %29, i32 1, !dbg !294
  %31 = fsub double %30, %26, !dbg !294
  %32 = fptrunc double %31 to float, !dbg !295
  tail call void @llvm.dbg.value(metadata float %32, i64 0, metadata !161, metadata !175), !dbg !296
  %33 = fmul float %32, %32, !dbg !298
  %34 = fpext float %33 to double, !dbg !299
  %35 = fmul double %invmm.0, %34, !dbg !300
  %36 = insertelement <2 x double> undef, double %35, i32 0, !dbg !292
  %37 = insertelement <2 x double> %36, double %24, i32 1, !dbg !292
  %38 = fadd <2 x double> %37, %29, !dbg !292
  %39 = bitcast double* %27 to <2 x double>*, !dbg !292
  store <2 x double> %38, <2 x double>* %39, align 8, !dbg !292, !tbaa !293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !281
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !281
  %exitcond = icmp eq i32 %lftr.wideiv, %20, !dbg !281
  br i1 %exitcond, label %._crit_edge, label %21, !dbg !281

._crit_edge:                                      ; preds = %21, %14
  ret void, !dbg !301
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_ebin(%struct.__sFILE* nocapture %fp, %struct.t_ebin* nocapture readonly %eb, i32 %index, i32 %nener, i32 %nperline, i32 %prmode, i32 %tsteps, i32 %bPrHead) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !144, metadata !175), !dbg !302
  tail call void @llvm.dbg.value(metadata %struct.t_ebin* %eb, i64 0, metadata !145, metadata !175), !dbg !303
  tail call void @llvm.dbg.value(metadata i32 %index, i64 0, metadata !146, metadata !175), !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %nener, i64 0, metadata !147, metadata !175), !dbg !305
  tail call void @llvm.dbg.value(metadata i32 %nperline, i64 0, metadata !148, metadata !175), !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %prmode, i64 0, metadata !149, metadata !175), !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %tsteps, i64 0, metadata !150, metadata !175), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %bPrHead, i64 0, metadata !151, metadata !175), !dbg !309
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !155, metadata !175), !dbg !310
  %1 = icmp slt i32 %index, 0, !dbg !311
  br i1 %1, label %2, label %3, !dbg !313

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %index) #8, !dbg !314
  br label %3, !dbg !314

; <label>:3                                       ; preds = %2, %0
  %4 = icmp eq i32 %nener, -1, !dbg !315
  br i1 %4, label %5, label %8, !dbg !317

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0, !dbg !318
  %7 = load i32* %6, align 4, !dbg !318, !tbaa !221
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !147, metadata !175), !dbg !305
  br label %10, !dbg !319

; <label>:8                                       ; preds = %3
  %9 = add nsw i32 %nener, %index, !dbg !320
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !147, metadata !175), !dbg !305
  br label %10

; <label>:10                                      ; preds = %8, %5
  %.0 = phi i32 [ %7, %5 ], [ %9, %8 ]
  tail call void @llvm.dbg.value(metadata i32 %index, i64 0, metadata !152, metadata !175), !dbg !321
  %11 = icmp sgt i32 %.0, %index, !dbg !322
  br i1 %11, label %.lr.ph17, label %._crit_edge18, !dbg !325

.lr.ph17:                                         ; preds = %10
  %12 = icmp eq i32 %bPrHead, 0, !dbg !326
  %13 = icmp sgt i32 %nperline, 0, !dbg !329
  %14 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2, !dbg !332
  %15 = sitofp i32 %tsteps to double, !dbg !335
  %16 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1, !dbg !338
  %17 = sub i32 0, %nperline, !dbg !325
  %18 = sext i32 %.0 to i64
  %19 = add i32 %nperline, -1, !dbg !325
  %20 = zext i32 %19 to i64
  %21 = xor i64 %20, -1, !dbg !325
  br label %22, !dbg !325

; <label>:22                                      ; preds = %.lr.ph17, %.critedge
  %ee.015 = phi float [ 0.000000e+00, %.lr.ph17 ], [ %ee.1.lcssa, %.critedge ]
  %i.014 = phi i32 [ %index, %.lr.ph17 ], [ %i.3.lcssa, %.critedge ]
  br i1 %12, label %.preheader, label %.preheader4, !dbg !342

.preheader4:                                      ; preds = %22
  %23 = icmp slt i32 %i.014, %.0, !dbg !343
  %.5 = and i1 %23, %13, !dbg !344
  br i1 %.5, label %.lr.ph, label %._crit_edge, !dbg !345

.lr.ph:                                           ; preds = %.preheader4
  %24 = sext i32 %i.014 to i64
  %25 = sub i32 %i.014, %.0, !dbg !345
  %26 = icmp ult i32 %25, %17
  %umax = select i1 %26, i32 %17, i32 %25
  %27 = xor i32 %umax, -1, !dbg !345
  br label %28, !dbg !345

; <label>:28                                      ; preds = %28, %.lr.ph
  %indvars.iv = phi i64 [ %24, %.lr.ph ], [ %indvars.iv.next, %28 ]
  %j.07 = phi i32 [ 0, %.lr.ph ], [ %33, %28 ]
  %29 = load i8*** %16, align 8, !dbg !338, !tbaa !228
  %30 = getelementptr inbounds i8** %29, i64 %indvars.iv, !dbg !346
  %31 = load i8** %30, align 8, !dbg !346, !tbaa !247
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %31) #8, !dbg !347
  %33 = add nuw nsw i32 %j.07, 1, !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !153, metadata !175), !dbg !349
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !345
  %exitcond = icmp eq i32 %j.07, %27, !dbg !345
  br i1 %exitcond, label %._crit_edge, label %28, !dbg !345

._crit_edge:                                      ; preds = %28, %.preheader4
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %i.3.lcssa, i64 0, metadata !152, metadata !175), !dbg !321
  br label %.preheader, !dbg !351

.preheader:                                       ; preds = %22, %._crit_edge
  %34 = icmp slt i32 %i.014, %.0, !dbg !352
  %or.cond8 = and i1 %34, %13, !dbg !353
  br i1 %or.cond8, label %.lr.ph12, label %.critedge, !dbg !353

.lr.ph12:                                         ; preds = %.preheader
  %35 = sext i32 %i.014 to i64
  %36 = sub nsw i64 %35, %18, !dbg !353
  %37 = icmp ugt i64 %36, %21
  %umax21 = select i1 %37, i64 %36, i64 %21
  %38 = sub i32 %i.014, %.0, !dbg !353
  %39 = icmp ult i32 %38, %17
  %umax22 = select i1 %39, i32 %17, i32 %38
  %40 = xor i32 %umax22, -1, !dbg !353
  br label %41, !dbg !353

; <label>:41                                      ; preds = %70, %.lr.ph12
  %indvars.iv19 = phi i64 [ %35, %.lr.ph12 ], [ %indvars.iv.next20, %70 ]
  %ee.111 = phi float [ %ee.015, %.lr.ph12 ], [ %ee.2, %70 ]
  %j.110 = phi i32 [ 0, %.lr.ph12 ], [ %73, %70 ]
  switch i32 %prmode, label %69 [
    i32 0, label %42
    i32 2, label %46
    i32 1, label %63
  ], !dbg !354

; <label>:42                                      ; preds = %41
  %43 = load %struct.t_energy** %14, align 8, !dbg !332, !tbaa !226
  %44 = getelementptr inbounds %struct.t_energy* %43, i64 %indvars.iv19, i32 0, !dbg !355
  %45 = load float* %44, align 4, !dbg !355, !tbaa !239
  tail call void @llvm.dbg.value(metadata float %45, i64 0, metadata !155, metadata !175), !dbg !310
  br label %70, !dbg !356

; <label>:46                                      ; preds = %41
  %47 = load %struct.t_energy** %14, align 8, !dbg !357, !tbaa !226
  tail call void @llvm.dbg.value(metadata i32 %tsteps, i64 0, metadata !167, metadata !175) #7, !dbg !358
  %48 = getelementptr inbounds %struct.t_energy* %47, i64 %indvars.iv19, i32 2, !dbg !359
  %49 = load double* %48, align 8, !dbg !359, !tbaa !360
  %50 = fdiv double %49, %15, !dbg !361
  tail call void @llvm.dbg.value(metadata double %50, i64 0, metadata !168, metadata !175) #7, !dbg !362
  %51 = getelementptr inbounds %struct.t_energy* %47, i64 %indvars.iv19, i32 1, !dbg !363
  %52 = load double* %51, align 8, !dbg !363, !tbaa !364
  %53 = fdiv double %52, %15, !dbg !365
  %54 = tail call double @sqrt(double %53) #9, !dbg !366
  tail call void @llvm.dbg.value(metadata double %54, i64 0, metadata !169, metadata !175) #7, !dbg !367
  %55 = tail call double @fabs(double %50) #9, !dbg !368
  %56 = fcmp ogt double %55, 1.200000e-38, !dbg !370
  br i1 %56, label %57, label %rms_ener.exit, !dbg !371

; <label>:57                                      ; preds = %46
  %58 = fdiv double %54, %50, !dbg !372
  %59 = tail call double @fabs(double %58) #9, !dbg !374
  %60 = fcmp olt double %59, 1.000000e-06, !dbg !375
  br i1 %60, label %61, label %rms_ener.exit, !dbg !376

; <label>:61                                      ; preds = %57
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !169, metadata !175) #7, !dbg !367
  br label %rms_ener.exit, !dbg !377

rms_ener.exit:                                    ; preds = %46, %57, %61
  %rms.0.i = phi double [ 0.000000e+00, %61 ], [ %54, %57 ], [ %54, %46 ], !dbg !378
  %62 = fptrunc double %rms.0.i to float, !dbg !379
  tail call void @llvm.dbg.value(metadata float %62, i64 0, metadata !155, metadata !175), !dbg !310
  br label %70, !dbg !380

; <label>:63                                      ; preds = %41
  %64 = load %struct.t_energy** %14, align 8, !dbg !381, !tbaa !226
  %65 = getelementptr inbounds %struct.t_energy* %64, i64 %indvars.iv19, i32 2, !dbg !383
  %66 = load double* %65, align 8, !dbg !383, !tbaa !360
  %67 = fdiv double %66, %15, !dbg !384
  %68 = fptrunc double %67 to float, !dbg !385
  tail call void @llvm.dbg.value(metadata float %68, i64 0, metadata !155, metadata !175), !dbg !310
  br label %70, !dbg !386

; <label>:69                                      ; preds = %41
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str8, i64 0, i64 0), i32 %prmode) #8, !dbg !387
  br label %70

; <label>:70                                      ; preds = %rms_ener.exit, %69, %63, %42
  %ee.2 = phi float [ %45, %42 ], [ %62, %rms_ener.exit ], [ %68, %63 ], [ %ee.111, %69 ]
  %71 = fpext float %ee.2 to double, !dbg !388
  %72 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), double %71) #8, !dbg !389
  %73 = add nuw nsw i32 %j.110, 1, !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !153, metadata !175), !dbg !349
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1, !dbg !353
  %exitcond23 = icmp eq i32 %j.110, %40, !dbg !353
  br i1 %exitcond23, label %..critedge_crit_edge, label %41, !dbg !353

..critedge_crit_edge:                             ; preds = %70
  %74 = sub nsw i64 %35, %umax21, !dbg !353
  %75 = trunc i64 %74 to i32, !dbg !353
  br label %.critedge, !dbg !353

.critedge:                                        ; preds = %..critedge_crit_edge, %.preheader
  %ee.1.lcssa = phi float [ %ee.2, %..critedge_crit_edge ], [ %ee.015, %.preheader ]
  %i.3.lcssa = phi i32 [ %75, %..critedge_crit_edge ], [ %i.014, %.preheader ]
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !391
  %76 = icmp slt i32 %i.3.lcssa, %.0, !dbg !322
  br i1 %76, label %22, label %._crit_edge18, !dbg !325

._crit_edge18:                                    ; preds = %.critedge, %10
  ret void, !dbg !392
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!171, !172, !173}
!llvm.ident = !{!174}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !13, globals: !170, imports: !170)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ebin.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 50, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ebin.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "eprNORMAL", value: 0)
!7 = !DIEnumerator(name: "eprAVER", value: 1)
!8 = !DIEnumerator(name: "eprRMS", value: 2)
!9 = !DIEnumerator(name: "eprNR", value: 3)
!10 = !{!11, !12}
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !{!14, !83, !89, !114, !123, !140, !156, !162}
!14 = !DISubprogram(name: "__sputc", scope: !15, file: !15, line: 348, type: !16, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !80)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !19}
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !15, line: 153, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 122, size: 1216, align: 64, elements: !22)
!22 = !{!23, !26, !27, !28, !30, !31, !36, !37, !39, !43, !48, !58, !64, !65, !68, !69, !73, !77, !78, !79}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !21, file: !15, line: 123, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !21, file: !15, line: 124, baseType: !18, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !21, file: !15, line: 125, baseType: !18, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !15, line: 126, baseType: !29, size: 16, align: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !21, file: !15, line: 127, baseType: !29, size: 16, align: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !21, file: !15, line: 128, baseType: !32, size: 128, align: 64, offset: 192)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !15, line: 88, size: 128, align: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !15, line: 89, baseType: !24, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !15, line: 90, baseType: !18, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !21, file: !15, line: 129, baseType: !18, size: 32, align: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !21, file: !15, line: 132, baseType: !38, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !21, file: !15, line: 133, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!18, !38}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !21, file: !15, line: 134, baseType: !44, size: 64, align: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!18, !38, !47, !18}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !21, file: !15, line: 135, baseType: !49, size: 64, align: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !38, !52, !18}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !15, line: 77, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !54, line: 71, baseType: !55)
!54 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!57 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !21, file: !15, line: 136, baseType: !59, size: 64, align: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!18, !38, !62, !18}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !21, file: !15, line: 139, baseType: !32, size: 128, align: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !21, file: !15, line: 140, baseType: !66, size: 64, align: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !15, line: 94, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !21, file: !15, line: 141, baseType: !18, size: 32, align: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !21, file: !15, line: 144, baseType: !70, size: 24, align: 8, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !21, file: !15, line: 145, baseType: !74, size: 8, align: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !21, file: !15, line: 148, baseType: !32, size: 128, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !21, file: !15, line: 151, baseType: !18, size: 32, align: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !15, line: 152, baseType: !52, size: 64, align: 64, offset: 1152)
!80 = !{!81, !82}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !14, file: !15, line: 348, type: !18)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !14, file: !15, line: 348, type: !19)
!83 = !DISubprogram(name: "__sigbits", scope: !84, file: !84, line: 114, type: !85, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !87)
!84 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!85 = !DISubroutineType(types: !86)
!86 = !{!18, !18}
!87 = !{!88}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !83, file: !84, line: 114, type: !18)
!89 = !DISubprogram(name: "mk_ebin", scope: !1, file: !1, line: 59, type: !90, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_ebin* ()* @mk_ebin, variables: !112)
!90 = !DISubroutineType(types: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ebin", file: !4, line: 48, baseType: !94)
!94 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 44, size: 192, align: 64, elements: !95)
!95 = !{!96, !97, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nener", scope: !94, file: !4, line: 45, baseType: !18, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "enm", scope: !94, file: !4, line: 46, baseType: !98, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !94, file: !4, line: 47, baseType: !100, size: 64, align: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_energy", file: !102, line: 41, baseType: !103)
!102 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/energy.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!103 = !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 36, size: 256, align: 64, elements: !104)
!104 = !{!105, !109, !110, !111}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !103, file: !102, line: 37, baseType: !106, size: 32, align: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !107, line: 87, baseType: !108)
!107 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!108 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "eav", scope: !103, file: !102, line: 38, baseType: !12, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "esum", scope: !103, file: !102, line: 39, baseType: !12, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "e2sum", scope: !103, file: !102, line: 40, baseType: !106, size: 32, align: 32, offset: 192)
!112 = !{!113}
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eb", scope: !89, file: !1, line: 61, type: !92)
!114 = !DISubprogram(name: "get_ebin_space", scope: !1, file: !1, line: 68, type: !115, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.t_ebin*, i32, i8**)* @get_ebin_space, variables: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!18, !92, !18, !98}
!117 = !{!118, !119, !120, !121, !122}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eb", arg: 1, scope: !114, file: !1, line: 68, type: !92)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nener", arg: 2, scope: !114, file: !1, line: 68, type: !18)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enm", arg: 3, scope: !114, file: !1, line: 68, type: !98)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !114, file: !1, line: 70, type: !18)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !114, file: !1, line: 71, type: !18)
!123 = !DISubprogram(name: "add_ebin", scope: !1, file: !1, line: 87, type: !124, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_ebin*, i32, i32, float*, i32)* @add_ebin, variables: !127)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !92, !18, !18, !126, !18}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eb", arg: 1, scope: !123, file: !1, line: 87, type: !92)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !123, file: !1, line: 87, type: !18)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nener", arg: 3, scope: !123, file: !1, line: 87, type: !18)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ener", arg: 4, scope: !123, file: !1, line: 87, type: !126)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 5, scope: !123, file: !1, line: 87, type: !18)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !123, file: !1, line: 89, type: !18)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !123, file: !1, line: 89, type: !18)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !123, file: !1, line: 90, type: !12)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !123, file: !1, line: 90, type: !12)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sigma", scope: !123, file: !1, line: 90, type: !12)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "invmm", scope: !123, file: !1, line: 90, type: !12)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eg", scope: !123, file: !1, line: 91, type: !100)
!140 = !DISubprogram(name: "pr_ebin", scope: !1, file: !1, line: 116, type: !141, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_ebin*, i32, i32, i32, i32, i32, i32)* @pr_ebin, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !19, !92, !18, !18, !18, !18, !18, !18}
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !140, file: !1, line: 116, type: !19)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eb", arg: 2, scope: !140, file: !1, line: 116, type: !92)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !140, file: !1, line: 116, type: !18)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nener", arg: 4, scope: !140, file: !1, line: 116, type: !18)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nperline", arg: 5, scope: !140, file: !1, line: 116, type: !18)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prmode", arg: 6, scope: !140, file: !1, line: 117, type: !18)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tsteps", arg: 7, scope: !140, file: !1, line: 117, type: !18)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bPrHead", arg: 8, scope: !140, file: !1, line: 117, type: !18)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !140, file: !1, line: 119, type: !18)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !140, file: !1, line: 119, type: !18)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i0", scope: !140, file: !1, line: 119, type: !18)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ee", scope: !140, file: !1, line: 120, type: !106)
!156 = !DISubprogram(name: "sqr", scope: !157, file: !157, line: 197, type: !158, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !160)
!157 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!158 = !DISubroutineType(types: !159)
!159 = !{!106, !106}
!160 = !{!161}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !156, file: !157, line: 197, type: !106)
!162 = !DISubprogram(name: "rms_ener", scope: !1, file: !1, line: 45, type: !163, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, variables: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!106, !100, !18}
!165 = !{!166, !167, !168, !169}
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "e", arg: 1, scope: !162, file: !1, line: 45, type: !100)
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsteps", arg: 2, scope: !162, file: !1, line: 45, type: !18)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eav", scope: !162, file: !1, line: 47, type: !12)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rms", scope: !162, file: !1, line: 47, type: !12)
!170 = !{}
!171 = !{i32 2, !"Dwarf Version", i32 2}
!172 = !{i32 2, !"Debug Info Version", i32 700000003}
!173 = !{i32 1, !"PIC Level", i32 2}
!174 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!175 = !DIExpression()
!176 = !DILocation(line: 348, column: 40, scope: !14)
!177 = !DILocation(line: 348, column: 50, scope: !14)
!178 = !DILocation(line: 349, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !14, file: !15, line: 349, column: 6)
!180 = !DILocation(line: 349, column: 6, scope: !179)
!181 = !{!182, !186, i64 12}
!182 = !{!"__sFILE", !183, i64 0, !186, i64 8, !186, i64 12, !187, i64 16, !187, i64 18, !188, i64 24, !186, i64 40, !183, i64 48, !183, i64 56, !183, i64 64, !183, i64 72, !183, i64 80, !188, i64 88, !183, i64 104, !186, i64 112, !184, i64 116, !184, i64 119, !188, i64 120, !186, i64 136, !189, i64 144}
!183 = !{!"any pointer", !184, i64 0}
!184 = !{!"omnipotent char", !185, i64 0}
!185 = !{!"Simple C/C++ TBAA"}
!186 = !{!"int", !184, i64 0}
!187 = !{!"short", !184, i64 0}
!188 = !{!"__sbuf", !183, i64 0, !186, i64 8}
!189 = !{!"long long", !184, i64 0}
!190 = !DILocation(line: 349, column: 15, scope: !179)
!191 = !DILocation(line: 349, column: 20, scope: !179)
!192 = !DILocation(line: 350, column: 10, scope: !179)
!193 = !DILocation(line: 349, column: 38, scope: !179)
!194 = !{!182, !186, i64 40}
!195 = !DILocation(line: 349, column: 31, scope: !179)
!196 = !DILocation(line: 349, column: 59, scope: !179)
!197 = !DILocation(line: 349, column: 47, scope: !179)
!198 = !DILocation(line: 350, column: 23, scope: !179)
!199 = !DILocation(line: 350, column: 16, scope: !179)
!200 = !DILocation(line: 350, column: 18, scope: !179)
!201 = !{!182, !183, i64 0}
!202 = !DILocation(line: 350, column: 21, scope: !179)
!203 = !{!184, !184, i64 0}
!204 = !DILocation(line: 350, column: 3, scope: !179)
!205 = !DILocation(line: 352, column: 11, scope: !179)
!206 = !DILocation(line: 352, column: 3, scope: !179)
!207 = !DILocation(line: 353, column: 1, scope: !14)
!208 = !DILocation(line: 114, column: 15, scope: !83)
!209 = !DILocation(line: 116, column: 20, scope: !83)
!210 = !DILocation(line: 116, column: 12, scope: !83)
!211 = !DILocation(line: 116, column: 57, scope: !83)
!212 = !DILocation(line: 116, column: 45, scope: !83)
!213 = !DILocation(line: 116, column: 5, scope: !83)
!214 = !DILocation(line: 63, column: 3, scope: !89)
!215 = !DILocation(line: 61, column: 11, scope: !89)
!216 = !DILocation(line: 65, column: 3, scope: !89)
!217 = !DILocation(line: 68, column: 28, scope: !114)
!218 = !DILocation(line: 68, column: 35, scope: !114)
!219 = !DILocation(line: 68, column: 47, scope: !114)
!220 = !DILocation(line: 73, column: 13, scope: !114)
!221 = !{!222, !186, i64 0}
!222 = !{!"", !186, i64 0, !183, i64 8, !183, i64 16}
!223 = !DILocation(line: 70, column: 7, scope: !114)
!224 = !DILocation(line: 74, column: 12, scope: !114)
!225 = !DILocation(line: 75, column: 3, scope: !114)
!226 = !{!222, !183, i64 16}
!227 = !DILocation(line: 76, column: 3, scope: !114)
!228 = !{!222, !183, i64 8}
!229 = !DILocation(line: 71, column: 7, scope: !114)
!230 = !DILocation(line: 77, column: 23, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 77, column: 3)
!232 = distinct !DILexicalBlock(scope: !114, file: !1, line: 77, column: 3)
!233 = !DILocation(line: 77, column: 18, scope: !231)
!234 = !DILocation(line: 77, column: 3, scope: !232)
!235 = !DILocation(line: 78, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !1, line: 77, column: 36)
!237 = !DILocation(line: 78, column: 14, scope: !236)
!238 = !DILocation(line: 78, column: 15, scope: !236)
!239 = !{!240, !241, i64 0}
!240 = !{!"", !241, i64 0, !242, i64 8, !242, i64 16, !241, i64 24}
!241 = !{!"float", !184, i64 0}
!242 = !{!"double", !184, i64 0}
!243 = !DILocation(line: 79, column: 14, scope: !236)
!244 = !DILocation(line: 82, column: 28, scope: !236)
!245 = !DILocation(line: 82, column: 23, scope: !236)
!246 = !DILocation(line: 79, column: 17, scope: !236)
!247 = !{!183, !183, i64 0}
!248 = !DILocation(line: 82, column: 16, scope: !236)
!249 = !DILocation(line: 82, column: 9, scope: !236)
!250 = !DILocation(line: 82, column: 5, scope: !236)
!251 = !DILocation(line: 82, column: 15, scope: !236)
!252 = !DILocation(line: 84, column: 3, scope: !114)
!253 = !DILocation(line: 87, column: 23, scope: !123)
!254 = !DILocation(line: 87, column: 30, scope: !123)
!255 = !DILocation(line: 87, column: 40, scope: !123)
!256 = !DILocation(line: 87, column: 51, scope: !123)
!257 = !DILocation(line: 87, column: 62, scope: !123)
!258 = !DILocation(line: 93, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !123, file: !1, line: 93, column: 7)
!260 = !DILocation(line: 93, column: 26, scope: !259)
!261 = !DILocation(line: 93, column: 20, scope: !259)
!262 = !DILocation(line: 93, column: 43, scope: !259)
!263 = !DILocation(line: 93, column: 33, scope: !259)
!264 = !DILocation(line: 94, column: 5, scope: !259)
!265 = !DILocation(line: 89, column: 14, scope: !123)
!266 = !DILocation(line: 98, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !123, file: !1, line: 98, column: 7)
!268 = !DILocation(line: 98, column: 7, scope: !123)
!269 = !DILocation(line: 99, column: 18, scope: !267)
!270 = !DILocation(line: 99, column: 17, scope: !267)
!271 = !DILocation(line: 99, column: 39, scope: !267)
!272 = !DILocation(line: 99, column: 28, scope: !267)
!273 = !DILocation(line: 90, column: 24, scope: !123)
!274 = !DILocation(line: 99, column: 5, scope: !267)
!275 = !DILocation(line: 103, column: 8, scope: !123)
!276 = !DILocation(line: 103, column: 12, scope: !123)
!277 = !DILocation(line: 89, column: 12, scope: !123)
!278 = !DILocation(line: 105, column: 14, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 105, column: 3)
!280 = distinct !DILexicalBlock(scope: !123, file: !1, line: 105, column: 3)
!281 = !DILocation(line: 105, column: 3, scope: !280)
!282 = !DILocation(line: 111, column: 36, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !1, line: 105, column: 28)
!284 = !DILocation(line: 107, column: 14, scope: !283)
!285 = !{!241, !241, i64 0}
!286 = !DILocation(line: 90, column: 12, scope: !123)
!287 = !DILocation(line: 110, column: 5, scope: !283)
!288 = !DILocation(line: 110, column: 11, scope: !283)
!289 = !DILocation(line: 110, column: 16, scope: !283)
!290 = !DILocation(line: 111, column: 37, scope: !283)
!291 = !DILocation(line: 111, column: 11, scope: !283)
!292 = !DILocation(line: 111, column: 16, scope: !283)
!293 = !{!242, !242, i64 0}
!294 = !DILocation(line: 111, column: 34, scope: !283)
!295 = !DILocation(line: 111, column: 23, scope: !283)
!296 = !DILocation(line: 197, column: 29, scope: !156, inlinedAt: !297)
!297 = distinct !DILocation(line: 111, column: 19, scope: !283)
!298 = !DILocation(line: 199, column: 12, scope: !156, inlinedAt: !297)
!299 = !DILocation(line: 111, column: 19, scope: !283)
!300 = !DILocation(line: 111, column: 40, scope: !283)
!301 = !DILocation(line: 114, column: 1, scope: !123)
!302 = !DILocation(line: 116, column: 20, scope: !140)
!303 = !DILocation(line: 116, column: 31, scope: !140)
!304 = !DILocation(line: 116, column: 38, scope: !140)
!305 = !DILocation(line: 116, column: 48, scope: !140)
!306 = !DILocation(line: 116, column: 58, scope: !140)
!307 = !DILocation(line: 117, column: 11, scope: !140)
!308 = !DILocation(line: 117, column: 22, scope: !140)
!309 = !DILocation(line: 117, column: 34, scope: !140)
!310 = !DILocation(line: 120, column: 8, scope: !140)
!311 = !DILocation(line: 122, column: 13, scope: !312)
!312 = distinct !DILexicalBlock(scope: !140, file: !1, line: 122, column: 7)
!313 = !DILocation(line: 122, column: 7, scope: !140)
!314 = !DILocation(line: 123, column: 5, scope: !312)
!315 = !DILocation(line: 124, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !140, file: !1, line: 124, column: 7)
!317 = !DILocation(line: 124, column: 7, scope: !140)
!318 = !DILocation(line: 125, column: 15, scope: !316)
!319 = !DILocation(line: 125, column: 5, scope: !316)
!320 = !DILocation(line: 127, column: 16, scope: !316)
!321 = !DILocation(line: 119, column: 8, scope: !140)
!322 = !DILocation(line: 128, column: 18, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 128, column: 3)
!324 = distinct !DILexicalBlock(scope: !140, file: !1, line: 128, column: 3)
!325 = !DILocation(line: 128, column: 3, scope: !324)
!326 = !DILocation(line: 129, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 129, column: 9)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 128, column: 29)
!329 = !DILocation(line: 136, column: 16, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 136, column: 5)
!331 = distinct !DILexicalBlock(scope: !328, file: !1, line: 136, column: 5)
!332 = !DILocation(line: 138, column: 9, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 137, column: 11)
!334 = distinct !DILexicalBlock(scope: !330, file: !1, line: 136, column: 50)
!335 = !DILocation(line: 49, column: 15, scope: !162, inlinedAt: !336)
!336 = distinct !DILocation(line: 140, column: 5, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !1, line: 139, column: 16)
!338 = !DILocation(line: 132, column: 24, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 131, column: 7)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 131, column: 7)
!341 = distinct !DILexicalBlock(scope: !327, file: !1, line: 129, column: 18)
!342 = !DILocation(line: 129, column: 9, scope: !328)
!343 = !DILocation(line: 131, column: 34, scope: !339)
!344 = !DILocation(line: 131, column: 29, scope: !339)
!345 = !DILocation(line: 131, column: 7, scope: !340)
!346 = !DILocation(line: 132, column: 20, scope: !339)
!347 = !DILocation(line: 132, column: 2, scope: !339)
!348 = !DILocation(line: 131, column: 44, scope: !339)
!349 = !DILocation(line: 119, column: 10, scope: !140)
!350 = !DILocation(line: 133, column: 7, scope: !341)
!351 = !DILocation(line: 135, column: 5, scope: !341)
!352 = !DILocation(line: 136, column: 32, scope: !330)
!353 = !DILocation(line: 136, column: 27, scope: !330)
!354 = !DILocation(line: 137, column: 11, scope: !334)
!355 = !DILocation(line: 138, column: 14, scope: !333)
!356 = !DILocation(line: 138, column: 2, scope: !333)
!357 = !DILocation(line: 140, column: 20, scope: !337)
!358 = !DILocation(line: 45, column: 38, scope: !162, inlinedAt: !336)
!359 = !DILocation(line: 49, column: 10, scope: !162, inlinedAt: !336)
!360 = !{!240, !242, i64 16}
!361 = !DILocation(line: 49, column: 14, scope: !162, inlinedAt: !336)
!362 = !DILocation(line: 47, column: 10, scope: !162, inlinedAt: !336)
!363 = !DILocation(line: 50, column: 15, scope: !162, inlinedAt: !336)
!364 = !{!240, !242, i64 8}
!365 = !DILocation(line: 50, column: 18, scope: !162, inlinedAt: !336)
!366 = !DILocation(line: 50, column: 7, scope: !162, inlinedAt: !336)
!367 = !DILocation(line: 47, column: 14, scope: !162, inlinedAt: !336)
!368 = !DILocation(line: 52, column: 8, scope: !369, inlinedAt: !336)
!369 = distinct !DILexicalBlock(scope: !162, file: !1, line: 52, column: 8)
!370 = !DILocation(line: 52, column: 18, scope: !369, inlinedAt: !336)
!371 = !DILocation(line: 52, column: 8, scope: !162, inlinedAt: !336)
!372 = !DILocation(line: 53, column: 17, scope: !373, inlinedAt: !336)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 53, column: 9)
!374 = !DILocation(line: 53, column: 9, scope: !373, inlinedAt: !336)
!375 = !DILocation(line: 53, column: 23, scope: !373, inlinedAt: !336)
!376 = !DILocation(line: 53, column: 9, scope: !369, inlinedAt: !336)
!377 = !DILocation(line: 54, column: 7, scope: !373, inlinedAt: !336)
!378 = !DILocation(line: 140, column: 5, scope: !337)
!379 = !DILocation(line: 56, column: 10, scope: !162, inlinedAt: !336)
!380 = !DILocation(line: 140, column: 2, scope: !337)
!381 = !DILocation(line: 142, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !337, file: !1, line: 141, column: 16)
!383 = !DILocation(line: 142, column: 14, scope: !382)
!384 = !DILocation(line: 142, column: 18, scope: !382)
!385 = !DILocation(line: 142, column: 5, scope: !382)
!386 = !DILocation(line: 142, column: 2, scope: !382)
!387 = !DILocation(line: 144, column: 2, scope: !382)
!388 = !DILocation(line: 146, column: 30, scope: !334)
!389 = !DILocation(line: 146, column: 7, scope: !334)
!390 = !DILocation(line: 136, column: 42, scope: !330)
!391 = !DILocation(line: 148, column: 5, scope: !328)
!392 = !DILocation(line: 150, column: 1, scope: !140)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_shiftBase(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_push(%p,%f)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_min(%p), size = %d, vec = %p\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_max(%p), size = %d, vec = %p\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_sum(%p), size = %d, vec = %p\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DV_sortUp(%p), size = %d, vec = %p\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"\0A fatal error in DV_sortDown(%p), size = %d, vec = %p\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_ramp(%p,%f,%f), size = %d, vec = %p\00", align 1
@.str8 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_shuffle(%p,%d), size = %d, vec = %p\00", align 1
@.str9 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_sizeOf(%p)\0A bad input \0A\00", align 1
@.str10 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_first(%p)\0A bad input\00", align 1
@.str11 = private unnamed_addr constant [43 x i8] c"\0A fatal error in DV_next(%p,%p)\0A bad input\00", align 1
@.str12 = private unnamed_addr constant [64 x i8] c"\0A fatal error in DV_next(%p,%p)\0A offset = %d, must be in [0,%d)\00", align 1
@.str13 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_fill(%p,%f)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_zero(%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_copy(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_shiftBase(%struct._DV* %dv, i32 %offset) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !22, metadata !102), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %offset, i64 0, metadata !23, metadata !102), !dbg !104
  %1 = icmp eq %struct._DV* %dv, null, !dbg !105
  br i1 %1, label %2, label %5, !dbg !107

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !108, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._DV* null, i32 %offset) #5, !dbg !114
  tail call void @exit(i32 -1) #6, !dbg !115
  unreachable, !dbg !115

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !116
  %7 = load double** %6, align 8, !dbg !117, !tbaa !118
  %8 = sext i32 %offset to i64, !dbg !117
  %9 = getelementptr inbounds double* %7, i64 %8, !dbg !117
  store double* %9, double** %6, align 8, !dbg !117, !tbaa !118
  %10 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !121
  %11 = load i32* %10, align 4, !dbg !122, !tbaa !123
  %12 = sub nsw i32 %11, %offset, !dbg !122
  store i32 %12, i32* %10, align 4, !dbg !122, !tbaa !123
  %13 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !124
  %14 = load i32* %13, align 4, !dbg !125, !tbaa !126
  %15 = sub nsw i32 %14, %offset, !dbg !125
  store i32 %15, i32* %13, align 4, !dbg !125, !tbaa !126
  ret void, !dbg !127
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_push(%struct._DV* %dv, double %val) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !28, metadata !102), !dbg !128
  tail call void @llvm.dbg.value(metadata double %val, i64 0, metadata !29, metadata !102), !dbg !129
  %1 = icmp eq %struct._DV* %dv, null, !dbg !130
  br i1 %1, label %2, label %5, !dbg !132

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !133, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._DV* null, double %val) #5, !dbg !135
  tail call void @exit(i32 -1) #6, !dbg !136
  unreachable, !dbg !136

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !137
  %7 = load i32* %6, align 4, !dbg !137, !tbaa !126
  %8 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !139
  %9 = load i32* %8, align 4, !dbg !139, !tbaa !123
  %10 = icmp eq i32 %7, %9, !dbg !140
  br i1 %10, label %11, label %16, !dbg !141

; <label>:11                                      ; preds = %5
  %12 = icmp sgt i32 %7, 0, !dbg !142
  br i1 %12, label %13, label %15, !dbg !145

; <label>:13                                      ; preds = %11
  %14 = shl nsw i32 %7, 1, !dbg !146
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %14) #5, !dbg !148
  br label %16, !dbg !149

; <label>:15                                      ; preds = %11
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 10) #5, !dbg !150
  br label %16

; <label>:16                                      ; preds = %13, %15, %5
  %17 = load i32* %6, align 4, !dbg !152, !tbaa !126
  %18 = add nsw i32 %17, 1, !dbg !152
  store i32 %18, i32* %6, align 4, !dbg !152, !tbaa !126
  %19 = sext i32 %17 to i64, !dbg !153
  %20 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !154
  %21 = load double** %20, align 8, !dbg !154, !tbaa !118
  %22 = getelementptr inbounds double* %21, i64 %19, !dbg !153
  store double %val, double* %22, align 8, !dbg !155, !tbaa !156
  ret void, !dbg !158
}

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define double @DV_min(%struct._DV* %dv) #0 {
  %i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !34, metadata !102), !dbg !159
  %1 = icmp eq %struct._DV* %dv, null, !dbg !160
  br i1 %1, label %._crit_edge, label %2, !dbg !162

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !163
  %4 = load i32* %3, align 4, !dbg !163, !tbaa !126
  %5 = icmp slt i32 %4, 1, !dbg !164
  br i1 %5, label %._crit_edge, label %6, !dbg !165

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !166
  %8 = load double** %7, align 8, !dbg !166, !tbaa !118
  %9 = icmp eq double* %8, null, !dbg !167
  br i1 %9, label %._crit_edge, label %15, !dbg !168

._crit_edge:                                      ; preds = %0, %6, %2
  %10 = phi i32 [ %4, %6 ], [ %4, %2 ], [ 0, %0 ]
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !169, !tbaa !110
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !171
  %13 = load double** %12, align 8, !dbg !171, !tbaa !118
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), %struct._DV* %dv, i32 %10, double* %13) #5, !dbg !172
  tail call void @exit(i32 -1) #6, !dbg !173
  unreachable, !dbg !173

; <label>:15                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !35, metadata !102), !dbg !174
  %16 = call double @DVmin(i32 %4, double* %8, i32* %i) #5, !dbg !175
  ret double %16, !dbg !176
}

; Function Attrs: optsize
declare double @DVmin(i32, double*, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define double @DV_max(%struct._DV* %dv) #0 {
  %i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !38, metadata !102), !dbg !177
  %1 = icmp eq %struct._DV* %dv, null, !dbg !178
  br i1 %1, label %._crit_edge, label %2, !dbg !180

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !181
  %4 = load i32* %3, align 4, !dbg !181, !tbaa !126
  %5 = icmp slt i32 %4, 1, !dbg !182
  br i1 %5, label %._crit_edge, label %6, !dbg !183

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !184
  %8 = load double** %7, align 8, !dbg !184, !tbaa !118
  %9 = icmp eq double* %8, null, !dbg !185
  br i1 %9, label %._crit_edge, label %15, !dbg !186

._crit_edge:                                      ; preds = %0, %6, %2
  %10 = phi i32 [ %4, %6 ], [ %4, %2 ], [ 0, %0 ]
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !187, !tbaa !110
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !189
  %13 = load double** %12, align 8, !dbg !189, !tbaa !118
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i32 %10, double* %13) #5, !dbg !190
  tail call void @exit(i32 -1) #6, !dbg !191
  unreachable, !dbg !191

; <label>:15                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !39, metadata !102), !dbg !192
  %16 = call double @DVmax(i32 %4, double* %8, i32* %i) #5, !dbg !193
  ret double %16, !dbg !194
}

; Function Attrs: optsize
declare double @DVmax(i32, double*, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define double @DV_sum(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !42, metadata !102), !dbg !195
  %1 = icmp eq %struct._DV* %dv, null, !dbg !196
  br i1 %1, label %._crit_edge, label %2, !dbg !198

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !199
  %4 = load i32* %3, align 4, !dbg !199, !tbaa !126
  %5 = icmp slt i32 %4, 1, !dbg !200
  br i1 %5, label %._crit_edge, label %6, !dbg !201

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !202
  %8 = load double** %7, align 8, !dbg !202, !tbaa !118
  %9 = icmp eq double* %8, null, !dbg !203
  br i1 %9, label %._crit_edge, label %15, !dbg !204

._crit_edge:                                      ; preds = %0, %6, %2
  %10 = phi i32 [ %4, %6 ], [ %4, %2 ], [ 0, %0 ]
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !205, !tbaa !110
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !207
  %13 = load double** %12, align 8, !dbg !207, !tbaa !118
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), %struct._DV* %dv, i32 %10, double* %13) #5, !dbg !208
  tail call void @exit(i32 -1) #6, !dbg !209
  unreachable, !dbg !209

; <label>:15                                      ; preds = %6
  %16 = tail call double @DVsum(i32 %4, double* %8) #5, !dbg !210
  ret double %16, !dbg !211
}

; Function Attrs: optsize
declare double @DVsum(i32, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_sortUp(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !47, metadata !102), !dbg !212
  %1 = icmp eq %struct._DV* %dv, null, !dbg !213
  br i1 %1, label %._crit_edge, label %2, !dbg !215

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !216
  %4 = load i32* %3, align 4, !dbg !216, !tbaa !126
  %5 = icmp slt i32 %4, 1, !dbg !217
  br i1 %5, label %._crit_edge, label %6, !dbg !218

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !219
  %8 = load double** %7, align 8, !dbg !219, !tbaa !118
  %9 = icmp eq double* %8, null, !dbg !220
  br i1 %9, label %._crit_edge, label %15, !dbg !221

._crit_edge:                                      ; preds = %0, %6, %2
  %10 = phi i32 [ %4, %6 ], [ %4, %2 ], [ 0, %0 ]
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !222, !tbaa !110
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !224
  %13 = load double** %12, align 8, !dbg !224, !tbaa !118
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32 %10, double* %13) #5, !dbg !225
  tail call void @exit(i32 -1) #6, !dbg !226
  unreachable, !dbg !226

; <label>:15                                      ; preds = %6
  tail call void @DVqsortUp(i32 %4, double* %8) #5, !dbg !227
  ret void, !dbg !228
}

; Function Attrs: optsize
declare void @DVqsortUp(i32, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_sortDown(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !50, metadata !102), !dbg !229
  %1 = icmp eq %struct._DV* %dv, null, !dbg !230
  br i1 %1, label %._crit_edge, label %2, !dbg !232

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !233
  %4 = load i32* %3, align 4, !dbg !233, !tbaa !126
  %5 = icmp slt i32 %4, 1, !dbg !234
  br i1 %5, label %._crit_edge, label %6, !dbg !235

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !236
  %8 = load double** %7, align 8, !dbg !236, !tbaa !118
  %9 = icmp eq double* %8, null, !dbg !237
  br i1 %9, label %._crit_edge, label %15, !dbg !238

._crit_edge:                                      ; preds = %0, %6, %2
  %10 = phi i32 [ %4, %6 ], [ %4, %2 ], [ 0, %0 ]
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !239, !tbaa !110
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !241
  %13 = load double** %12, align 8, !dbg !241, !tbaa !118
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %10, double* %13) #5, !dbg !242
  tail call void @exit(i32 -1) #6, !dbg !243
  unreachable, !dbg !243

; <label>:15                                      ; preds = %6
  tail call void @DVqsortDown(i32 %4, double* %8) #5, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: optsize
declare void @DVqsortDown(i32, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_ramp(%struct._DV* %dv, double %base, double %incr) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !55, metadata !102), !dbg !246
  tail call void @llvm.dbg.value(metadata double %base, i64 0, metadata !56, metadata !102), !dbg !247
  tail call void @llvm.dbg.value(metadata double %incr, i64 0, metadata !57, metadata !102), !dbg !248
  %1 = icmp eq %struct._DV* %dv, null, !dbg !249
  br i1 %1, label %._crit_edge, label %2, !dbg !251

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !252
  %4 = load i32* %3, align 4, !dbg !252, !tbaa !126
  %5 = icmp slt i32 %4, 1, !dbg !253
  br i1 %5, label %._crit_edge, label %6, !dbg !254

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !255
  %8 = load double** %7, align 8, !dbg !255, !tbaa !118
  %9 = icmp eq double* %8, null, !dbg !256
  br i1 %9, label %._crit_edge, label %15, !dbg !257

._crit_edge:                                      ; preds = %0, %6, %2
  %10 = phi i32 [ %4, %6 ], [ %4, %2 ], [ 0, %0 ]
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !258, !tbaa !110
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !260
  %13 = load double** %12, align 8, !dbg !260, !tbaa !118
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._DV* %dv, double %base, double %incr, i32 %10, double* %13) #5, !dbg !261
  tail call void @exit(i32 -1) #6, !dbg !262
  unreachable, !dbg !262

; <label>:15                                      ; preds = %6
  tail call void @DVramp(i32 %4, double* %8, double %base, double %incr) #5, !dbg !263
  ret void, !dbg !264
}

; Function Attrs: optsize
declare void @DVramp(i32, double*, double, double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_shuffle(%struct._DV* %dv, i32 %seed) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !60, metadata !102), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !61, metadata !102), !dbg !266
  %1 = icmp eq %struct._DV* %dv, null, !dbg !267
  br i1 %1, label %._crit_edge, label %2, !dbg !269

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !270
  %4 = load i32* %3, align 4, !dbg !270, !tbaa !126
  %5 = icmp slt i32 %4, 1, !dbg !271
  br i1 %5, label %._crit_edge, label %6, !dbg !272

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !273
  %8 = load double** %7, align 8, !dbg !273, !tbaa !118
  %9 = icmp eq double* %8, null, !dbg !274
  br i1 %9, label %._crit_edge, label %15, !dbg !275

._crit_edge:                                      ; preds = %0, %6, %2
  %10 = phi i32 [ %4, %6 ], [ %4, %2 ], [ 0, %0 ]
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !276, !tbaa !110
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !278
  %13 = load double** %12, align 8, !dbg !278, !tbaa !118
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([56 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, i32 %seed, i32 %10, double* %13) #5, !dbg !279
  tail call void @exit(i32 -1) #6, !dbg !280
  unreachable, !dbg !280

; <label>:15                                      ; preds = %6
  tail call void @DVshuffle(i32 %4, double* %8, i32 %seed) #5, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: optsize
declare void @DVshuffle(i32, double*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_sizeOf(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !66, metadata !102), !dbg !283
  %1 = icmp eq %struct._DV* %dv, null, !dbg !284
  br i1 %1, label %2, label %5, !dbg !286

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !287, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), %struct._DV* null) #5, !dbg !289
  tail call void @exit(i32 -1) #6, !dbg !290
  unreachable, !dbg !290

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 24, i64 0, metadata !67, metadata !102), !dbg !291
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !292
  %7 = load i32* %6, align 4, !dbg !292, !tbaa !294
  %8 = icmp eq i32 %7, 1, !dbg !295
  br i1 %8, label %9, label %14, !dbg !296

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !297
  %11 = load i32* %10, align 4, !dbg !297, !tbaa !123
  %12 = shl i32 %11, 3, !dbg !299
  %13 = add i32 %12, 24, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !67, metadata !102), !dbg !291
  br label %14, !dbg !301

; <label>:14                                      ; preds = %9, %5
  %nbytes.0 = phi i32 [ %13, %9 ], [ 24, %5 ]
  ret i32 %nbytes.0, !dbg !302
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @DV_first(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !72, metadata !102), !dbg !303
  %1 = icmp eq %struct._DV* %dv, null, !dbg !304
  br i1 %1, label %2, label %5, !dbg !306

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !307, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str10, i64 0, i64 0), %struct._DV* null) #5, !dbg !309
  tail call void @exit(i32 -1) #6, !dbg !310
  unreachable, !dbg !310

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !311
  %7 = load i32* %6, align 4, !dbg !311, !tbaa !126
  %8 = icmp eq i32 %7, 0, !dbg !313
  br i1 %8, label %12, label %9, !dbg !314

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !315
  %11 = load double** %10, align 8, !dbg !315, !tbaa !118
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !73, metadata !102), !dbg !317
  br label %12

; <label>:12                                      ; preds = %5, %9
  %pd.0 = phi double* [ %11, %9 ], [ null, %5 ]
  ret double* %pd.0, !dbg !318
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @DV_next(%struct._DV* %dv, double* %pd) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !78, metadata !102), !dbg !319
  tail call void @llvm.dbg.value(metadata double* %pd, i64 0, metadata !79, metadata !102), !dbg !320
  %1 = icmp eq double* %pd, null, !dbg !321
  br i1 %1, label %2, label %7, !dbg !323

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !324, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str11, i64 0, i64 0), %struct._DV* %dv, double* null) #5, !dbg !326
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !327, !tbaa !110
  %6 = tail call i32 @fflush(%struct.__sFILE* %5) #5, !dbg !328
  tail call void @exit(i32 -1) #6, !dbg !329
  unreachable, !dbg !329

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !330
  %9 = load double** %8, align 8, !dbg !330, !tbaa !118
  %10 = ptrtoint double* %pd to i64, !dbg !332
  %11 = ptrtoint double* %9 to i64, !dbg !332
  %12 = sub i64 %10, %11, !dbg !332
  %13 = lshr exact i64 %12, 3, !dbg !332
  %14 = trunc i64 %13 to i32, !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !80, metadata !102), !dbg !334
  %15 = icmp sgt i32 %14, -1, !dbg !335
  %.phi.trans.insert = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !336, !tbaa !126
  %16 = icmp slt i32 %14, %.pre, !dbg !338
  %or.cond = and i1 %15, %16, !dbg !339
  br i1 %or.cond, label %21, label %._crit_edge, !dbg !339

._crit_edge:                                      ; preds = %7
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !340, !tbaa !110
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([64 x i8]* @.str12, i64 0, i64 0), %struct._DV* %dv, double* %pd, i32 %14, i32 %.pre) #5, !dbg !341
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !342, !tbaa !110
  %20 = tail call i32 @fflush(%struct.__sFILE* %19) #5, !dbg !343
  tail call void @exit(i32 -1) #6, !dbg !344
  unreachable, !dbg !344

; <label>:21                                      ; preds = %7
  %22 = add nsw i32 %.pre, -1, !dbg !345
  %23 = icmp eq i32 %14, %22, !dbg !347
  %24 = getelementptr inbounds double* %pd, i64 1, !dbg !348
  tail call void @llvm.dbg.value(metadata double* %24, i64 0, metadata !79, metadata !102), !dbg !320
  %.0 = select i1 %23, double* null, double* %24, !dbg !350
  ret double* %.0, !dbg !351
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_fill(%struct._DV* %dv, double %value) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !83, metadata !102), !dbg !352
  tail call void @llvm.dbg.value(metadata double %value, i64 0, metadata !84, metadata !102), !dbg !353
  %1 = icmp eq %struct._DV* %dv, null, !dbg !354
  br i1 %1, label %2, label %5, !dbg !356

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !357, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str13, i64 0, i64 0), %struct._DV* null, double %value) #5, !dbg !359
  tail call void @exit(i32 -1) #6, !dbg !360
  unreachable, !dbg !360

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !361
  %7 = load i32* %6, align 4, !dbg !361, !tbaa !126
  %8 = icmp sgt i32 %7, 0, !dbg !363
  br i1 %8, label %9, label %12, !dbg !364

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !365
  %11 = load double** %10, align 8, !dbg !365, !tbaa !118
  tail call void @DVfill(i32 %7, double* %11, double %value) #5, !dbg !367
  br label %12, !dbg !368

; <label>:12                                      ; preds = %9, %5
  ret void, !dbg !369
}

; Function Attrs: optsize
declare void @DVfill(i32, double*, double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_zero(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !87, metadata !102), !dbg !370
  %1 = icmp eq %struct._DV* %dv, null, !dbg !371
  br i1 %1, label %2, label %5, !dbg !373

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !374, !tbaa !110
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str14, i64 0, i64 0), %struct._DV* null) #5, !dbg !376
  tail call void @exit(i32 -1) #6, !dbg !377
  unreachable, !dbg !377

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !378
  %7 = load i32* %6, align 4, !dbg !378, !tbaa !126
  %8 = icmp sgt i32 %7, 0, !dbg !380
  br i1 %8, label %9, label %12, !dbg !381

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !382
  %11 = load double** %10, align 8, !dbg !382, !tbaa !118
  tail call void @DVzero(i32 %7, double* %11) #5, !dbg !384
  br label %12, !dbg !385

; <label>:12                                      ; preds = %9, %5
  ret void, !dbg !386
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_copy(%struct._DV* %dv1, %struct._DV* %dv2) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv1, i64 0, metadata !92, metadata !102), !dbg !387
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv2, i64 0, metadata !93, metadata !102), !dbg !388
  %1 = icmp eq %struct._DV* %dv1, null, !dbg !389
  %2 = icmp eq %struct._DV* %dv2, null, !dbg !391
  %or.cond = or i1 %1, %2, !dbg !392
  br i1 %or.cond, label %3, label %6, !dbg !392

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !393, !tbaa !110
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([44 x i8]* @.str15, i64 0, i64 0), %struct._DV* %dv1, %struct._DV* %dv2) #5, !dbg !395
  tail call void @exit(i32 -1) #6, !dbg !396
  unreachable, !dbg !396

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DV* %dv1, i64 0, i32 0, !dbg !397
  %8 = load i32* %7, align 4, !dbg !397, !tbaa !126
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !95, metadata !102), !dbg !398
  %9 = getelementptr inbounds %struct._DV* %dv2, i64 0, i32 0, !dbg !399
  %10 = load i32* %9, align 4, !dbg !399, !tbaa !126
  %11 = icmp sgt i32 %8, %10, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !95, metadata !102), !dbg !398
  %. = select i1 %11, i32 %10, i32 %8, !dbg !402
  %12 = getelementptr inbounds %struct._DV* %dv1, i64 0, i32 3, !dbg !403
  %13 = load double** %12, align 8, !dbg !403, !tbaa !118
  tail call void @llvm.dbg.value(metadata double* %13, i64 0, metadata !96, metadata !102), !dbg !404
  %14 = getelementptr inbounds %struct._DV* %dv2, i64 0, i32 3, !dbg !405
  %15 = load double** %14, align 8, !dbg !405, !tbaa !118
  tail call void @llvm.dbg.value(metadata double* %15, i64 0, metadata !97, metadata !102), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !102), !dbg !407
  %16 = icmp sgt i32 %., 0, !dbg !408
  br i1 %16, label %.lr.ph, label %._crit_edge, !dbg !411

.lr.ph:                                           ; preds = %6
  %17 = xor i32 %10, -1, !dbg !411
  %18 = xor i32 %8, -1, !dbg !411
  %19 = icmp sgt i32 %17, %18
  %smax = select i1 %19, i32 %17, i32 %18
  %20 = sub i32 -2, %smax, !dbg !411
  br label %21, !dbg !411

; <label>:21                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %22 = getelementptr inbounds double* %15, i64 %indvars.iv, !dbg !412
  %23 = bitcast double* %22 to i64*, !dbg !412
  %24 = load i64* %23, align 8, !dbg !412, !tbaa !156
  %25 = getelementptr inbounds double* %13, i64 %indvars.iv, !dbg !414
  %26 = bitcast double* %25 to i64*, !dbg !415
  store i64 %24, i64* %26, align 8, !dbg !415, !tbaa !156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !411
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !411
  %exitcond = icmp eq i32 %lftr.wideiv, %20, !dbg !411
  br i1 %exitcond, label %._crit_edge, label %21, !dbg !411

._crit_edge:                                      ; preds = %21, %6
  ret void, !dbg !416
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100}
!llvm.ident = !{!101}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !24, !30, !36, !40, !43, !48, !51, !58, !62, !68, !74, !81, !85, !88}
!6 = !DISubprogram(name: "DV_shiftBase", scope: !1, file: !1, line: 22, type: !7, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32)* @DV_shiftBase, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !{!22, !23}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !6, file: !1, line: 23, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "offset", arg: 2, scope: !6, file: !1, line: 24, type: !15)
!24 = !DISubprogram(name: "DV_push", scope: !1, file: !1, line: 46, type: !25, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, double)* @DV_push, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !9, !20}
!27 = !{!28, !29}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !24, file: !1, line: 47, type: !9)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 2, scope: !24, file: !1, line: 48, type: !20)
!30 = !DISubprogram(name: "DV_min", scope: !1, file: !1, line: 75, type: !31, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._DV*)* @DV_min, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!20, !9}
!33 = !{!34, !35}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !30, file: !1, line: 76, type: !9)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !30, file: !1, line: 78, type: !15)
!36 = !DISubprogram(name: "DV_max", scope: !1, file: !1, line: 88, type: !31, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._DV*)* @DV_max, variables: !37)
!37 = !{!38, !39}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !36, file: !1, line: 89, type: !9)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !36, file: !1, line: 91, type: !15)
!40 = !DISubprogram(name: "DV_sum", scope: !1, file: !1, line: 101, type: !31, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._DV*)* @DV_sum, variables: !41)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !40, file: !1, line: 102, type: !9)
!43 = !DISubprogram(name: "DV_sortUp", scope: !1, file: !1, line: 120, type: !44, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*)* @DV_sortUp, variables: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !9}
!46 = !{!47}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !43, file: !1, line: 121, type: !9)
!48 = !DISubprogram(name: "DV_sortDown", scope: !1, file: !1, line: 134, type: !44, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*)* @DV_sortDown, variables: !49)
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !48, file: !1, line: 135, type: !9)
!51 = !DISubprogram(name: "DV_ramp", scope: !1, file: !1, line: 156, type: !52, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, double, double)* @DV_ramp, variables: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !9, !20, !20}
!54 = !{!55, !56, !57}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !51, file: !1, line: 157, type: !9)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 2, scope: !51, file: !1, line: 158, type: !20)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "incr", arg: 3, scope: !51, file: !1, line: 159, type: !20)
!58 = !DISubprogram(name: "DV_shuffle", scope: !1, file: !1, line: 180, type: !7, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32)* @DV_shuffle, variables: !59)
!59 = !{!60, !61}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !58, file: !1, line: 181, type: !9)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 2, scope: !58, file: !1, line: 182, type: !15)
!62 = !DISubprogram(name: "DV_sizeOf", scope: !1, file: !1, line: 203, type: !63, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*)* @DV_sizeOf, variables: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!15, !9}
!65 = !{!66, !67}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !62, file: !1, line: 204, type: !9)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !62, file: !1, line: 206, type: !15)
!68 = !DISubprogram(name: "DV_first", scope: !1, file: !1, line: 229, type: !69, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._DV*)* @DV_first, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{!19, !9}
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !68, file: !1, line: 230, type: !9)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pd", scope: !68, file: !1, line: 232, type: !19)
!74 = !DISubprogram(name: "DV_next", scope: !1, file: !1, line: 260, type: !75, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._DV*, double*)* @DV_next, variables: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{!19, !9, !19}
!77 = !{!78, !79, !80}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !74, file: !1, line: 261, type: !9)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pd", arg: 2, scope: !74, file: !1, line: 262, type: !19)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !74, file: !1, line: 264, type: !15)
!81 = !DISubprogram(name: "DV_fill", scope: !1, file: !1, line: 318, type: !25, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, double)* @DV_fill, variables: !82)
!82 = !{!83, !84}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !81, file: !1, line: 319, type: !9)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !81, file: !1, line: 320, type: !20)
!85 = !DISubprogram(name: "DV_zero", scope: !1, file: !1, line: 347, type: !44, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*)* @DV_zero, variables: !86)
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !85, file: !1, line: 348, type: !9)
!88 = !DISubprogram(name: "DV_copy", scope: !1, file: !1, line: 376, type: !89, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, %struct._DV*)* @DV_copy, variables: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !9, !9}
!91 = !{!92, !93, !94, !95, !96, !97}
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv1", arg: 1, scope: !88, file: !1, line: 377, type: !9)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv2", arg: 2, scope: !88, file: !1, line: 378, type: !9)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !88, file: !1, line: 380, type: !15)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !88, file: !1, line: 380, type: !15)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vec1", scope: !88, file: !1, line: 381, type: !19)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vec2", scope: !88, file: !1, line: 381, type: !19)
!98 = !{i32 2, !"Dwarf Version", i32 2}
!99 = !{i32 2, !"Debug Info Version", i32 700000003}
!100 = !{i32 1, !"PIC Level", i32 2}
!101 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!102 = !DIExpression()
!103 = !DILocation(line: 23, column: 11, scope: !6)
!104 = !DILocation(line: 24, column: 11, scope: !6)
!105 = !DILocation(line: 26, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !6, file: !1, line: 26, column: 6)
!107 = !DILocation(line: 26, column: 6, scope: !6)
!108 = !DILocation(line: 27, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 26, column: 19)
!110 = !{!111, !111, i64 0}
!111 = !{!"any pointer", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !DILocation(line: 27, column: 4, scope: !109)
!115 = !DILocation(line: 29, column: 4, scope: !109)
!116 = !DILocation(line: 31, column: 5, scope: !6)
!117 = !DILocation(line: 31, column: 13, scope: !6)
!118 = !{!119, !111, i64 16}
!119 = !{!"_DV", !120, i64 0, !120, i64 4, !120, i64 8, !111, i64 16}
!120 = !{!"int", !112, i64 0}
!121 = !DILocation(line: 32, column: 5, scope: !6)
!122 = !DILocation(line: 32, column: 13, scope: !6)
!123 = !{!119, !120, i64 4}
!124 = !DILocation(line: 33, column: 5, scope: !6)
!125 = !DILocation(line: 33, column: 13, scope: !6)
!126 = !{!119, !120, i64 0}
!127 = !DILocation(line: 35, column: 1, scope: !6)
!128 = !DILocation(line: 47, column: 14, scope: !24)
!129 = !DILocation(line: 48, column: 13, scope: !24)
!130 = !DILocation(line: 50, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !24, file: !1, line: 50, column: 6)
!132 = !DILocation(line: 50, column: 6, scope: !24)
!133 = !DILocation(line: 51, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 50, column: 19)
!135 = !DILocation(line: 51, column: 4, scope: !134)
!136 = !DILocation(line: 53, column: 4, scope: !134)
!137 = !DILocation(line: 55, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !24, file: !1, line: 55, column: 6)
!139 = !DILocation(line: 55, column: 22, scope: !138)
!140 = !DILocation(line: 55, column: 15, scope: !138)
!141 = !DILocation(line: 55, column: 6, scope: !24)
!142 = !DILocation(line: 56, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 56, column: 9)
!144 = distinct !DILexicalBlock(scope: !138, file: !1, line: 55, column: 32)
!145 = !DILocation(line: 56, column: 9, scope: !144)
!146 = !DILocation(line: 57, column: 26, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 56, column: 27)
!148 = !DILocation(line: 57, column: 7, scope: !147)
!149 = !DILocation(line: 58, column: 4, scope: !147)
!150 = !DILocation(line: 59, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !143, file: !1, line: 58, column: 11)
!152 = !DILocation(line: 62, column: 17, scope: !24)
!153 = !DILocation(line: 62, column: 1, scope: !24)
!154 = !DILocation(line: 62, column: 5, scope: !24)
!155 = !DILocation(line: 62, column: 21, scope: !24)
!156 = !{!157, !157, i64 0}
!157 = !{!"double", !112, i64 0}
!158 = !DILocation(line: 64, column: 1, scope: !24)
!159 = !DILocation(line: 76, column: 10, scope: !30)
!160 = !DILocation(line: 80, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !30, file: !1, line: 80, column: 6)
!162 = !DILocation(line: 80, column: 17, scope: !161)
!163 = !DILocation(line: 80, column: 24, scope: !161)
!164 = !DILocation(line: 80, column: 29, scope: !161)
!165 = !DILocation(line: 80, column: 34, scope: !161)
!166 = !DILocation(line: 80, column: 41, scope: !161)
!167 = !DILocation(line: 80, column: 45, scope: !161)
!168 = !DILocation(line: 80, column: 6, scope: !30)
!169 = !DILocation(line: 81, column: 12, scope: !170)
!170 = distinct !DILexicalBlock(scope: !161, file: !1, line: 80, column: 55)
!171 = !DILocation(line: 82, column: 30, scope: !170)
!172 = !DILocation(line: 81, column: 4, scope: !170)
!173 = !DILocation(line: 83, column: 4, scope: !170)
!174 = !DILocation(line: 78, column: 7, scope: !30)
!175 = !DILocation(line: 85, column: 8, scope: !30)
!176 = !DILocation(line: 85, column: 1, scope: !30)
!177 = !DILocation(line: 89, column: 10, scope: !36)
!178 = !DILocation(line: 93, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !36, file: !1, line: 93, column: 6)
!180 = !DILocation(line: 93, column: 17, scope: !179)
!181 = !DILocation(line: 93, column: 24, scope: !179)
!182 = !DILocation(line: 93, column: 29, scope: !179)
!183 = !DILocation(line: 93, column: 34, scope: !179)
!184 = !DILocation(line: 93, column: 41, scope: !179)
!185 = !DILocation(line: 93, column: 45, scope: !179)
!186 = !DILocation(line: 93, column: 6, scope: !36)
!187 = !DILocation(line: 94, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !179, file: !1, line: 93, column: 55)
!189 = !DILocation(line: 95, column: 30, scope: !188)
!190 = !DILocation(line: 94, column: 4, scope: !188)
!191 = !DILocation(line: 96, column: 4, scope: !188)
!192 = !DILocation(line: 91, column: 7, scope: !36)
!193 = !DILocation(line: 98, column: 8, scope: !36)
!194 = !DILocation(line: 98, column: 1, scope: !36)
!195 = !DILocation(line: 102, column: 10, scope: !40)
!196 = !DILocation(line: 104, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !40, file: !1, line: 104, column: 6)
!198 = !DILocation(line: 104, column: 17, scope: !197)
!199 = !DILocation(line: 104, column: 24, scope: !197)
!200 = !DILocation(line: 104, column: 29, scope: !197)
!201 = !DILocation(line: 104, column: 34, scope: !197)
!202 = !DILocation(line: 104, column: 41, scope: !197)
!203 = !DILocation(line: 104, column: 45, scope: !197)
!204 = !DILocation(line: 104, column: 6, scope: !40)
!205 = !DILocation(line: 105, column: 12, scope: !206)
!206 = distinct !DILexicalBlock(scope: !197, file: !1, line: 104, column: 55)
!207 = !DILocation(line: 106, column: 30, scope: !206)
!208 = !DILocation(line: 105, column: 4, scope: !206)
!209 = !DILocation(line: 107, column: 4, scope: !206)
!210 = !DILocation(line: 109, column: 8, scope: !40)
!211 = !DILocation(line: 109, column: 1, scope: !40)
!212 = !DILocation(line: 121, column: 10, scope: !43)
!213 = !DILocation(line: 123, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !43, file: !1, line: 123, column: 6)
!215 = !DILocation(line: 123, column: 17, scope: !214)
!216 = !DILocation(line: 123, column: 24, scope: !214)
!217 = !DILocation(line: 123, column: 29, scope: !214)
!218 = !DILocation(line: 123, column: 34, scope: !214)
!219 = !DILocation(line: 123, column: 41, scope: !214)
!220 = !DILocation(line: 123, column: 45, scope: !214)
!221 = !DILocation(line: 123, column: 6, scope: !43)
!222 = !DILocation(line: 124, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !214, file: !1, line: 123, column: 55)
!224 = !DILocation(line: 126, column: 30, scope: !223)
!225 = !DILocation(line: 124, column: 4, scope: !223)
!226 = !DILocation(line: 127, column: 4, scope: !223)
!227 = !DILocation(line: 129, column: 1, scope: !43)
!228 = !DILocation(line: 131, column: 1, scope: !43)
!229 = !DILocation(line: 135, column: 10, scope: !48)
!230 = !DILocation(line: 137, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !48, file: !1, line: 137, column: 6)
!232 = !DILocation(line: 137, column: 17, scope: !231)
!233 = !DILocation(line: 137, column: 24, scope: !231)
!234 = !DILocation(line: 137, column: 29, scope: !231)
!235 = !DILocation(line: 137, column: 34, scope: !231)
!236 = !DILocation(line: 137, column: 41, scope: !231)
!237 = !DILocation(line: 137, column: 45, scope: !231)
!238 = !DILocation(line: 137, column: 6, scope: !48)
!239 = !DILocation(line: 138, column: 12, scope: !240)
!240 = distinct !DILexicalBlock(scope: !231, file: !1, line: 137, column: 55)
!241 = !DILocation(line: 140, column: 30, scope: !240)
!242 = !DILocation(line: 138, column: 4, scope: !240)
!243 = !DILocation(line: 141, column: 4, scope: !240)
!244 = !DILocation(line: 143, column: 1, scope: !48)
!245 = !DILocation(line: 145, column: 1, scope: !48)
!246 = !DILocation(line: 157, column: 14, scope: !51)
!247 = !DILocation(line: 158, column: 13, scope: !51)
!248 = !DILocation(line: 159, column: 13, scope: !51)
!249 = !DILocation(line: 161, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !51, file: !1, line: 161, column: 6)
!251 = !DILocation(line: 161, column: 17, scope: !250)
!252 = !DILocation(line: 161, column: 24, scope: !250)
!253 = !DILocation(line: 161, column: 29, scope: !250)
!254 = !DILocation(line: 161, column: 34, scope: !250)
!255 = !DILocation(line: 161, column: 41, scope: !250)
!256 = !DILocation(line: 161, column: 45, scope: !250)
!257 = !DILocation(line: 161, column: 6, scope: !51)
!258 = !DILocation(line: 162, column: 12, scope: !259)
!259 = distinct !DILexicalBlock(scope: !250, file: !1, line: 161, column: 55)
!260 = !DILocation(line: 164, column: 42, scope: !259)
!261 = !DILocation(line: 162, column: 4, scope: !259)
!262 = !DILocation(line: 165, column: 4, scope: !259)
!263 = !DILocation(line: 167, column: 1, scope: !51)
!264 = !DILocation(line: 169, column: 1, scope: !51)
!265 = !DILocation(line: 181, column: 11, scope: !58)
!266 = !DILocation(line: 182, column: 10, scope: !58)
!267 = !DILocation(line: 184, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !58, file: !1, line: 184, column: 6)
!269 = !DILocation(line: 184, column: 17, scope: !268)
!270 = !DILocation(line: 184, column: 24, scope: !268)
!271 = !DILocation(line: 184, column: 29, scope: !268)
!272 = !DILocation(line: 184, column: 34, scope: !268)
!273 = !DILocation(line: 184, column: 41, scope: !268)
!274 = !DILocation(line: 184, column: 45, scope: !268)
!275 = !DILocation(line: 184, column: 6, scope: !58)
!276 = !DILocation(line: 185, column: 12, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !1, line: 184, column: 55)
!278 = !DILocation(line: 187, column: 36, scope: !277)
!279 = !DILocation(line: 185, column: 4, scope: !277)
!280 = !DILocation(line: 188, column: 4, scope: !277)
!281 = !DILocation(line: 190, column: 1, scope: !58)
!282 = !DILocation(line: 192, column: 1, scope: !58)
!283 = !DILocation(line: 204, column: 10, scope: !62)
!284 = !DILocation(line: 208, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !62, file: !1, line: 208, column: 6)
!286 = !DILocation(line: 208, column: 6, scope: !62)
!287 = !DILocation(line: 209, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 208, column: 19)
!289 = !DILocation(line: 209, column: 4, scope: !288)
!290 = !DILocation(line: 211, column: 4, scope: !288)
!291 = !DILocation(line: 206, column: 7, scope: !62)
!292 = !DILocation(line: 214, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !62, file: !1, line: 214, column: 6)
!294 = !{!119, !120, i64 8}
!295 = !DILocation(line: 214, column: 16, scope: !293)
!296 = !DILocation(line: 214, column: 6, scope: !62)
!297 = !DILocation(line: 215, column: 20, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !1, line: 214, column: 23)
!299 = !DILocation(line: 215, column: 27, scope: !298)
!300 = !DILocation(line: 215, column: 11, scope: !298)
!301 = !DILocation(line: 216, column: 1, scope: !298)
!302 = !DILocation(line: 217, column: 1, scope: !62)
!303 = !DILocation(line: 230, column: 10, scope: !68)
!304 = !DILocation(line: 238, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !68, file: !1, line: 238, column: 6)
!306 = !DILocation(line: 238, column: 6, scope: !68)
!307 = !DILocation(line: 239, column: 12, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 238, column: 19)
!309 = !DILocation(line: 239, column: 4, scope: !308)
!310 = !DILocation(line: 241, column: 4, scope: !308)
!311 = !DILocation(line: 243, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !68, file: !1, line: 243, column: 6)
!313 = !DILocation(line: 243, column: 15, scope: !312)
!314 = !DILocation(line: 243, column: 6, scope: !68)
!315 = !DILocation(line: 246, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 245, column: 8)
!317 = !DILocation(line: 232, column: 11, scope: !68)
!318 = !DILocation(line: 248, column: 1, scope: !68)
!319 = !DILocation(line: 261, column: 14, scope: !74)
!320 = !DILocation(line: 262, column: 14, scope: !74)
!321 = !DILocation(line: 270, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !74, file: !1, line: 270, column: 6)
!323 = !DILocation(line: 270, column: 6, scope: !74)
!324 = !DILocation(line: 271, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !1, line: 270, column: 19)
!326 = !DILocation(line: 271, column: 4, scope: !325)
!327 = !DILocation(line: 273, column: 11, scope: !325)
!328 = !DILocation(line: 273, column: 4, scope: !325)
!329 = !DILocation(line: 274, column: 4, scope: !325)
!330 = !DILocation(line: 281, column: 25, scope: !331)
!331 = distinct !DILexicalBlock(scope: !74, file: !1, line: 281, column: 6)
!332 = !DILocation(line: 281, column: 19, scope: !331)
!333 = !DILocation(line: 281, column: 16, scope: !331)
!334 = !DILocation(line: 264, column: 7, scope: !74)
!335 = !DILocation(line: 281, column: 30, scope: !331)
!336 = !DILocation(line: 289, column: 32, scope: !337)
!337 = distinct !DILexicalBlock(scope: !331, file: !1, line: 281, column: 58)
!338 = !DILocation(line: 281, column: 44, scope: !331)
!339 = !DILocation(line: 281, column: 34, scope: !331)
!340 = !DILocation(line: 287, column: 12, scope: !337)
!341 = !DILocation(line: 287, column: 4, scope: !337)
!342 = !DILocation(line: 290, column: 11, scope: !337)
!343 = !DILocation(line: 290, column: 4, scope: !337)
!344 = !DILocation(line: 291, column: 4, scope: !337)
!345 = !DILocation(line: 292, column: 32, scope: !346)
!346 = distinct !DILexicalBlock(scope: !331, file: !1, line: 292, column: 13)
!347 = !DILocation(line: 292, column: 20, scope: !346)
!348 = !DILocation(line: 305, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !1, line: 299, column: 8)
!350 = !DILocation(line: 292, column: 13, scope: !331)
!351 = !DILocation(line: 307, column: 1, scope: !74)
!352 = !DILocation(line: 319, column: 14, scope: !81)
!353 = !DILocation(line: 320, column: 13, scope: !81)
!354 = !DILocation(line: 327, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !81, file: !1, line: 327, column: 6)
!356 = !DILocation(line: 327, column: 6, scope: !81)
!357 = !DILocation(line: 328, column: 12, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !1, line: 327, column: 19)
!359 = !DILocation(line: 328, column: 4, scope: !358)
!360 = !DILocation(line: 330, column: 4, scope: !358)
!361 = !DILocation(line: 332, column: 10, scope: !362)
!362 = distinct !DILexicalBlock(scope: !81, file: !1, line: 332, column: 6)
!363 = !DILocation(line: 332, column: 15, scope: !362)
!364 = !DILocation(line: 332, column: 6, scope: !81)
!365 = !DILocation(line: 333, column: 25, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !1, line: 332, column: 21)
!367 = !DILocation(line: 333, column: 4, scope: !366)
!368 = !DILocation(line: 334, column: 1, scope: !366)
!369 = !DILocation(line: 336, column: 1, scope: !81)
!370 = !DILocation(line: 348, column: 10, scope: !85)
!371 = !DILocation(line: 355, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !85, file: !1, line: 355, column: 6)
!373 = !DILocation(line: 355, column: 6, scope: !85)
!374 = !DILocation(line: 356, column: 12, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !1, line: 355, column: 19)
!376 = !DILocation(line: 356, column: 4, scope: !375)
!377 = !DILocation(line: 358, column: 4, scope: !375)
!378 = !DILocation(line: 360, column: 10, scope: !379)
!379 = distinct !DILexicalBlock(scope: !85, file: !1, line: 360, column: 6)
!380 = !DILocation(line: 360, column: 15, scope: !379)
!381 = !DILocation(line: 360, column: 6, scope: !85)
!382 = !DILocation(line: 361, column: 25, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !1, line: 360, column: 21)
!384 = !DILocation(line: 361, column: 4, scope: !383)
!385 = !DILocation(line: 362, column: 1, scope: !383)
!386 = !DILocation(line: 363, column: 1, scope: !85)
!387 = !DILocation(line: 377, column: 10, scope: !88)
!388 = !DILocation(line: 378, column: 10, scope: !88)
!389 = !DILocation(line: 387, column: 10, scope: !390)
!390 = distinct !DILexicalBlock(scope: !88, file: !1, line: 387, column: 6)
!391 = !DILocation(line: 387, column: 25, scope: !390)
!392 = !DILocation(line: 387, column: 18, scope: !390)
!393 = !DILocation(line: 388, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 387, column: 35)
!395 = !DILocation(line: 388, column: 4, scope: !394)
!396 = !DILocation(line: 390, column: 4, scope: !394)
!397 = !DILocation(line: 392, column: 13, scope: !88)
!398 = !DILocation(line: 380, column: 14, scope: !88)
!399 = !DILocation(line: 393, column: 18, scope: !400)
!400 = distinct !DILexicalBlock(scope: !88, file: !1, line: 393, column: 6)
!401 = !DILocation(line: 393, column: 11, scope: !400)
!402 = !DILocation(line: 393, column: 6, scope: !88)
!403 = !DILocation(line: 396, column: 13, scope: !88)
!404 = !DILocation(line: 381, column: 11, scope: !88)
!405 = !DILocation(line: 397, column: 13, scope: !88)
!406 = !DILocation(line: 381, column: 18, scope: !88)
!407 = !DILocation(line: 380, column: 10, scope: !88)
!408 = !DILocation(line: 398, column: 19, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 398, column: 1)
!410 = distinct !DILexicalBlock(scope: !88, file: !1, line: 398, column: 1)
!411 = !DILocation(line: 398, column: 1, scope: !410)
!412 = !DILocation(line: 399, column: 15, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !1, line: 398, column: 35)
!414 = !DILocation(line: 399, column: 4, scope: !413)
!415 = !DILocation(line: 399, column: 13, scope: !413)
!416 = !DILocation(line: 401, column: 1, scope: !88)

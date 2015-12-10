; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A inpmtx is NULL \0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A bad coordType \0A\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A bad inputMode \0A\00", align 1
@.str3 = private unnamed_addr constant [78 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A maxnent = %d, maxnvector = %d \0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [67 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad new coordType\0A\00", align 1
@.str6 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad existing coordType\0A\00", align 1
@.str7 = private unnamed_addr constant [66 x i8] c"\0A fatal error in InpMtx_changeStorageMode(%p,%d)\0A inpmtx is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_changeStorageMode(%p,%d)\0A bad new storage mode\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @InpMtx_init(%struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #0 {
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtx, i64 0, metadata !49, metadata !79), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %coordType, i64 0, metadata !50, metadata !79), !dbg !81
  tail call void @llvm.dbg.value(metadata i32 %inputMode, i64 0, metadata !51, metadata !79), !dbg !82
  tail call void @llvm.dbg.value(metadata i32 %maxnent, i64 0, metadata !52, metadata !79), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 %maxnvector, i64 0, metadata !53, metadata !79), !dbg !84
  %1 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !85
  br i1 %1, label %2, label %5, !dbg !87

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !88, !tbaa !90
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #5, !dbg !94
  tail call void @exit(i32 -1) #6, !dbg !95
  unreachable, !dbg !95

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !96
  %7 = load i32* %6, align 4, !dbg !96, !tbaa !98
  %.off = add i32 %7, -1, !dbg !104
  %switch = icmp ult i32 %.off, 3, !dbg !104
  br i1 %switch, label %11, label %8, !dbg !104

; <label>:8                                       ; preds = %5
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !105, !tbaa !90
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #5, !dbg !107
  tail call void @exit(i32 -1) #6, !dbg !108
  unreachable, !dbg !108

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !109
  %13 = load i32* %12, align 4, !dbg !109, !tbaa !111
  %switch2 = icmp ult i32 %13, 3, !dbg !112
  br i1 %switch2, label %17, label %14, !dbg !112

; <label>:14                                      ; preds = %11
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !113, !tbaa !90
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #5, !dbg !115
  tail call void @exit(i32 -1) #6, !dbg !116
  unreachable, !dbg !116

; <label>:17                                      ; preds = %11
  %18 = or i32 %maxnvector, %maxnent, !dbg !117
  %19 = icmp slt i32 %18, 0, !dbg !117
  br i1 %19, label %20, label %23, !dbg !117

; <label>:20                                      ; preds = %17
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !119, !tbaa !90
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([78 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector, i32 %maxnent, i32 %maxnvector) #5, !dbg !121
  tail call void @exit(i32 -1) #6, !dbg !122
  unreachable, !dbg !122

; <label>:23                                      ; preds = %17
  tail call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #5, !dbg !123
  store i32 %coordType, i32* %6, align 4, !dbg !124, !tbaa !98
  store i32 %inputMode, i32* %12, align 4, !dbg !125, !tbaa !111
  %24 = icmp sgt i32 %maxnent, 0, !dbg !126
  br i1 %24, label %25, label %26, !dbg !128

; <label>:25                                      ; preds = %23
  tail call void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %maxnent) #5, !dbg !129
  br label %26, !dbg !131

; <label>:26                                      ; preds = %25, %23
  %27 = icmp sgt i32 %maxnvector, 0, !dbg !132
  br i1 %27, label %28, label %29, !dbg !134

; <label>:28                                      ; preds = %26
  tail call void @InpMtx_setMaxnvector(%struct._InpMtx* %inpmtx, i32 %maxnvector) #5, !dbg !135
  br label %29, !dbg !137

; <label>:29                                      ; preds = %28, %26
  ret void, !dbg !138
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @InpMtx_clearData(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_setMaxnent(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_setMaxnvector(%struct._InpMtx*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 %newType) #0 {
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtx, i64 0, metadata !58, metadata !79), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %newType, i64 0, metadata !59, metadata !79), !dbg !140
  %1 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !141
  br i1 %1, label %2, label %5, !dbg !143

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !144, !tbaa !90
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null, i32 %newType) #5, !dbg !146
  tail call void @exit(i32 -1) #6, !dbg !147
  unreachable, !dbg !147

; <label>:5                                       ; preds = %0
  %newType.off = add i32 %newType, -1, !dbg !148
  %switch = icmp ult i32 %newType.off, 4, !dbg !148
  br i1 %switch, label %9, label %6, !dbg !148

; <label>:6                                       ; preds = %5
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !150, !tbaa !90
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newType) #5, !dbg !152
  tail call void @exit(i32 -1) #6, !dbg !153
  unreachable, !dbg !153

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !154
  %11 = load i32* %10, align 4, !dbg !154, !tbaa !98
  %.off = add i32 %11, -1, !dbg !156
  %switch12 = icmp ult i32 %.off, 3, !dbg !156
  br i1 %switch12, label %15, label %12, !dbg !156

; <label>:12                                      ; preds = %9
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !157, !tbaa !90
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newType) #5, !dbg !159
  tail call void @exit(i32 -1) #6, !dbg !160
  unreachable, !dbg !160

; <label>:15                                      ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !65, metadata !79), !dbg !161
  %16 = icmp eq i32 %11, %newType, !dbg !162
  br i1 %16, label %84, label %17, !dbg !164

; <label>:17                                      ; preds = %15
  %18 = icmp eq i32 %newType, 4, !dbg !165
  br i1 %18, label %19, label %20, !dbg !167

; <label>:19                                      ; preds = %17
  store i32 4, i32* %10, align 4, !dbg !168, !tbaa !98
  br label %84, !dbg !170

; <label>:20                                      ; preds = %17
  %21 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !171
  %22 = load i32* %21, align 4, !dbg !171, !tbaa !172
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !63, metadata !79), !dbg !173
  %23 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #5, !dbg !174
  tail call void @llvm.dbg.value(metadata i32* %23, i64 0, metadata !68, metadata !79), !dbg !175
  %24 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #5, !dbg !176
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !69, metadata !79), !dbg !177
  switch i32 %11, label %84 [
    i32 1, label %25
    i32 2, label %43
    i32 3, label %61
  ], !dbg !178

; <label>:25                                      ; preds = %20
  switch i32 %newType, label %84 [
    i32 2, label %.preheader
    i32 3, label %.preheader13
  ], !dbg !179

.preheader13:                                     ; preds = %25
  %26 = icmp sgt i32 %22, 0, !dbg !182
  br i1 %26, label %.lr.ph20, label %._crit_edge21, !dbg !188

.lr.ph20:                                         ; preds = %.preheader13
  %27 = add i32 %22, -1, !dbg !188
  br label %36, !dbg !188

.preheader:                                       ; preds = %25
  %28 = icmp sgt i32 %22, 0, !dbg !189
  br i1 %28, label %.lr.ph, label %._crit_edge, !dbg !193

.lr.ph:                                           ; preds = %.preheader
  %29 = add i32 %22, -1, !dbg !193
  br label %30, !dbg !193

; <label>:30                                      ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %31 = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !194
  %32 = load i32* %31, align 4, !dbg !194, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !67, metadata !79), !dbg !197
  %33 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !198
  %34 = load i32* %33, align 4, !dbg !198, !tbaa !196
  store i32 %34, i32* %31, align 4, !dbg !199, !tbaa !196
  store i32 %32, i32* %33, align 4, !dbg !200, !tbaa !196
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !193
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !193
  %exitcond = icmp eq i32 %lftr.wideiv, %29, !dbg !193
  br i1 %exitcond, label %._crit_edge, label %30, !dbg !193

._crit_edge:                                      ; preds = %30, %.preheader
  store i32 2, i32* %10, align 4, !dbg !201, !tbaa !98
  %35 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !202
  store i32 1, i32* %35, align 4, !dbg !203, !tbaa !204
  br label %84, !dbg !205

; <label>:36                                      ; preds = %36, %.lr.ph20
  %indvars.iv34 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next35, %36 ]
  %37 = getelementptr inbounds i32* %23, i64 %indvars.iv34, !dbg !206
  %38 = load i32* %37, align 4, !dbg !206, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !66, metadata !79), !dbg !208
  %39 = getelementptr inbounds i32* %24, i64 %indvars.iv34, !dbg !209
  %40 = load i32* %39, align 4, !dbg !209, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !61, metadata !79), !dbg !210
  %41 = icmp slt i32 %40, %38, !dbg !211
  %. = select i1 %41, i32 %40, i32 %38
  store i32 %., i32* %37, align 4, !dbg !213, !tbaa !196
  %storemerge8 = sub nsw i32 %40, %38, !dbg !215
  store i32 %storemerge8, i32* %39, align 4, !dbg !216, !tbaa !196
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !188
  %lftr.wideiv36 = trunc i64 %indvars.iv34 to i32, !dbg !188
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %27, !dbg !188
  br i1 %exitcond37, label %._crit_edge21, label %36, !dbg !188

._crit_edge21:                                    ; preds = %36, %.preheader13
  store i32 3, i32* %10, align 4, !dbg !218, !tbaa !98
  %42 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !219
  store i32 1, i32* %42, align 4, !dbg !220, !tbaa !204
  br label %84, !dbg !221

; <label>:43                                      ; preds = %20
  switch i32 %newType, label %84 [
    i32 1, label %.preheader14
    i32 3, label %.preheader15
  ], !dbg !222

.preheader15:                                     ; preds = %43
  %44 = icmp sgt i32 %22, 0, !dbg !225
  br i1 %44, label %.lr.ph26, label %._crit_edge27, !dbg !231

.lr.ph26:                                         ; preds = %.preheader15
  %45 = add i32 %22, -1, !dbg !231
  br label %54, !dbg !231

.preheader14:                                     ; preds = %43
  %46 = icmp sgt i32 %22, 0, !dbg !232
  br i1 %46, label %.lr.ph23, label %._crit_edge24, !dbg !236

.lr.ph23:                                         ; preds = %.preheader14
  %47 = add i32 %22, -1, !dbg !236
  br label %48, !dbg !236

; <label>:48                                      ; preds = %48, %.lr.ph23
  %indvars.iv38 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next39, %48 ]
  %49 = getelementptr inbounds i32* %23, i64 %indvars.iv38, !dbg !237
  %50 = load i32* %49, align 4, !dbg !237, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !67, metadata !79), !dbg !197
  %51 = getelementptr inbounds i32* %24, i64 %indvars.iv38, !dbg !239
  %52 = load i32* %51, align 4, !dbg !239, !tbaa !196
  store i32 %52, i32* %49, align 4, !dbg !240, !tbaa !196
  store i32 %50, i32* %51, align 4, !dbg !241, !tbaa !196
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !dbg !236
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32, !dbg !236
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %47, !dbg !236
  br i1 %exitcond41, label %._crit_edge24, label %48, !dbg !236

._crit_edge24:                                    ; preds = %48, %.preheader14
  store i32 1, i32* %10, align 4, !dbg !242, !tbaa !98
  %53 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !243
  store i32 1, i32* %53, align 4, !dbg !244, !tbaa !204
  br label %84, !dbg !245

; <label>:54                                      ; preds = %54, %.lr.ph26
  %indvars.iv42 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next43, %54 ]
  %55 = getelementptr inbounds i32* %23, i64 %indvars.iv42, !dbg !246
  %56 = load i32* %55, align 4, !dbg !246, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !61, metadata !79), !dbg !210
  %57 = getelementptr inbounds i32* %24, i64 %indvars.iv42, !dbg !248
  %58 = load i32* %57, align 4, !dbg !248, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !66, metadata !79), !dbg !208
  %59 = icmp slt i32 %56, %58, !dbg !249
  %.11 = select i1 %59, i32 %56, i32 %58
  store i32 %.11, i32* %55, align 4, !dbg !251, !tbaa !196
  %storemerge = sub nsw i32 %56, %58, !dbg !253
  store i32 %storemerge, i32* %57, align 4, !dbg !254, !tbaa !196
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !dbg !231
  %lftr.wideiv44 = trunc i64 %indvars.iv42 to i32, !dbg !231
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %45, !dbg !231
  br i1 %exitcond45, label %._crit_edge27, label %54, !dbg !231

._crit_edge27:                                    ; preds = %54, %.preheader15
  store i32 3, i32* %10, align 4, !dbg !256, !tbaa !98
  %60 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !257
  store i32 1, i32* %60, align 4, !dbg !258, !tbaa !204
  br label %84, !dbg !259

; <label>:61                                      ; preds = %20
  switch i32 %newType, label %84 [
    i32 1, label %.preheader16
    i32 2, label %.preheader17
  ], !dbg !260

.preheader17:                                     ; preds = %61
  %62 = icmp sgt i32 %22, 0, !dbg !263
  br i1 %62, label %.lr.ph32, label %._crit_edge33, !dbg !269

.lr.ph32:                                         ; preds = %.preheader17
  %63 = add i32 %22, -1, !dbg !269
  br label %75, !dbg !269

.preheader16:                                     ; preds = %61
  %64 = icmp sgt i32 %22, 0, !dbg !270
  br i1 %64, label %.lr.ph29, label %._crit_edge30, !dbg !274

.lr.ph29:                                         ; preds = %.preheader16
  %65 = add i32 %22, -1, !dbg !274
  br label %66, !dbg !274

; <label>:66                                      ; preds = %66, %.lr.ph29
  %indvars.iv46 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next47, %66 ]
  %67 = getelementptr inbounds i32* %23, i64 %indvars.iv46, !dbg !275
  %68 = load i32* %67, align 4, !dbg !275, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !60, metadata !79), !dbg !277
  %69 = getelementptr inbounds i32* %24, i64 %indvars.iv46, !dbg !278
  %70 = load i32* %69, align 4, !dbg !278, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !64, metadata !79), !dbg !279
  %71 = icmp sgt i32 %70, -1, !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !66, metadata !79), !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !61, metadata !79), !dbg !210
  %72 = select i1 %71, i32 0, i32 %70, !dbg !282
  %row.0 = sub nsw i32 %68, %72, !dbg !282
  %73 = select i1 %71, i32 %70, i32 0, !dbg !282
  %col.0 = add nsw i32 %73, %68, !dbg !282
  store i32 %row.0, i32* %67, align 4, !dbg !283, !tbaa !196
  store i32 %col.0, i32* %69, align 4, !dbg !284, !tbaa !196
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !274
  %lftr.wideiv48 = trunc i64 %indvars.iv46 to i32, !dbg !274
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %65, !dbg !274
  br i1 %exitcond49, label %._crit_edge30, label %66, !dbg !274

._crit_edge30:                                    ; preds = %66, %.preheader16
  store i32 1, i32* %10, align 4, !dbg !285, !tbaa !98
  %74 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !286
  store i32 1, i32* %74, align 4, !dbg !287, !tbaa !204
  br label %84, !dbg !288

; <label>:75                                      ; preds = %75, %.lr.ph32
  %indvars.iv50 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next51, %75 ]
  %76 = getelementptr inbounds i32* %23, i64 %indvars.iv50, !dbg !289
  %77 = load i32* %76, align 4, !dbg !289, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !60, metadata !79), !dbg !277
  %78 = getelementptr inbounds i32* %24, i64 %indvars.iv50, !dbg !291
  %79 = load i32* %78, align 4, !dbg !291, !tbaa !196
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !64, metadata !79), !dbg !279
  %80 = icmp sgt i32 %79, -1, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !66, metadata !79), !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !61, metadata !79), !dbg !210
  %81 = select i1 %80, i32 0, i32 %79, !dbg !294
  %row.1 = sub nsw i32 %77, %81, !dbg !294
  %82 = select i1 %80, i32 %79, i32 0, !dbg !294
  %col.1 = add nsw i32 %82, %77, !dbg !294
  store i32 %col.1, i32* %76, align 4, !dbg !295, !tbaa !196
  store i32 %row.1, i32* %78, align 4, !dbg !296, !tbaa !196
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !269
  %lftr.wideiv52 = trunc i64 %indvars.iv50 to i32, !dbg !269
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %63, !dbg !269
  br i1 %exitcond53, label %._crit_edge33, label %75, !dbg !269

._crit_edge33:                                    ; preds = %75, %.preheader17
  store i32 2, i32* %10, align 4, !dbg !297, !tbaa !98
  %83 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !298
  store i32 1, i32* %83, align 4, !dbg !299, !tbaa !204
  br label %84, !dbg !300

; <label>:84                                      ; preds = %61, %20, %43, %25, %._crit_edge21, %._crit_edge, %._crit_edge33, %._crit_edge30, %._crit_edge24, %._crit_edge27, %15, %19
  ret void, !dbg !301
}

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtx, i32 %newMode) #0 {
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtx, i64 0, metadata !72, metadata !79), !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %newMode, i64 0, metadata !73, metadata !79), !dbg !303
  %1 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !304
  br i1 %1, label %2, label %5, !dbg !306

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !307, !tbaa !90
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([66 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* null, i32 %newMode) #5, !dbg !309
  tail call void @exit(i32 -1) #6, !dbg !310
  unreachable, !dbg !310

; <label>:5                                       ; preds = %0
  %newMode.off = add i32 %newMode, -1, !dbg !311
  %switch = icmp ult i32 %newMode.off, 3, !dbg !311
  br i1 %switch, label %9, label %6, !dbg !311

; <label>:6                                       ; preds = %5
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !313, !tbaa !90
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([72 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newMode) #5, !dbg !315
  tail call void @exit(i32 -1) #6, !dbg !316
  unreachable, !dbg !316

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !317
  %11 = load i32* %10, align 4, !dbg !317, !tbaa !204
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !74, metadata !79), !dbg !318
  %12 = icmp eq i32 %11, %newMode, !dbg !319
  br i1 %12, label %23, label %13, !dbg !321

; <label>:13                                      ; preds = %9
  switch i32 %11, label %23 [
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
  ], !dbg !322

; <label>:14                                      ; preds = %13
  switch i32 %newMode, label %23 [
    i32 2, label %15
    i32 3, label %16
  ], !dbg !323

; <label>:15                                      ; preds = %14
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #5, !dbg !326
  store i32 2, i32* %10, align 4, !dbg !329, !tbaa !204
  br label %23, !dbg !330

; <label>:16                                      ; preds = %14
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #5, !dbg !331
  tail call void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #5, !dbg !334
  store i32 3, i32* %10, align 4, !dbg !335, !tbaa !204
  br label %23, !dbg !336

; <label>:17                                      ; preds = %13
  switch i32 %newMode, label %23 [
    i32 1, label %18
    i32 3, label %19
  ], !dbg !337

; <label>:18                                      ; preds = %17
  store i32 1, i32* %10, align 4, !dbg !340, !tbaa !204
  br label %23, !dbg !343

; <label>:19                                      ; preds = %17
  tail call void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #5, !dbg !344
  store i32 3, i32* %10, align 4, !dbg !347, !tbaa !204
  br label %23, !dbg !348

; <label>:20                                      ; preds = %13
  %21 = icmp ult i32 %newMode.off, 2, !dbg !349
  br i1 %21, label %22, label %23, !dbg !349

; <label>:22                                      ; preds = %20
  store i32 %newMode, i32* %10, align 4, !dbg !353, !tbaa !204
  br label %23, !dbg !355

; <label>:23                                      ; preds = %13, %17, %14, %16, %15, %20, %22, %18, %19, %9
  ret void, !dbg !356
}

; Function Attrs: optsize
declare void @InpMtx_sortAndCompress(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_convertToVectors(%struct._InpMtx*) #3

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
!llvm.module.flags = !{!75, !76, !77}
!llvm.ident = !{!78}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !54, !70}
!6 = !DISubprogram(name: "InpMtx_init", scope: !1, file: !1, line: 37, type: !7, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._InpMtx*, i32, i32, i32, i32)* @InpMtx_init, variables: !48)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !15, !15, !15}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "InpMtx", file: !11, line: 51, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_InpMtx", file: !11, line: 52, size: 1472, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !22, !32, !33, !43, !44, !45, !46, !47}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "coordType", scope: !12, file: !11, line: 53, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "storageMode", scope: !12, file: !11, line: 54, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "inputMode", scope: !12, file: !11, line: 55, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "maxnent", scope: !12, file: !11, line: 56, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !12, file: !11, line: 57, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "resizeMultiple", scope: !12, file: !11, line: 58, baseType: !21, size: 64, align: 64, offset: 192)
!21 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ivec1IV", scope: !12, file: !11, line: 59, baseType: !23, size: 192, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !24, line: 20, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !24, line: 21, size: 192, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !25, file: !24, line: 22, baseType: !15, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !25, file: !24, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !25, file: !24, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !25, file: !24, line: 25, baseType: !31, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ivec2IV", scope: !12, file: !11, line: 60, baseType: !23, size: 192, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dvecDV", scope: !12, file: !11, line: 61, baseType: !34, size: 192, align: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !35, line: 20, baseType: !36)
!35 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !35, line: 21, size: 192, align: 64, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !35, line: 22, baseType: !15, size: 32, align: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !36, file: !35, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !36, file: !35, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !36, file: !35, line: 25, baseType: !42, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "maxnvector", scope: !12, file: !11, line: 62, baseType: !15, size: 32, align: 32, offset: 832)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nvector", scope: !12, file: !11, line: 63, baseType: !15, size: 32, align: 32, offset: 864)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "vecidsIV", scope: !12, file: !11, line: 64, baseType: !23, size: 192, align: 64, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sizesIV", scope: !12, file: !11, line: 65, baseType: !23, size: 192, align: 64, offset: 1088)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsIV", scope: !12, file: !11, line: 66, baseType: !23, size: 192, align: 64, offset: 1280)
!48 = !{!49, !50, !51, !52, !53}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtx", arg: 1, scope: !6, file: !1, line: 38, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coordType", arg: 2, scope: !6, file: !1, line: 39, type: !15)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inputMode", arg: 3, scope: !6, file: !1, line: 40, type: !15)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxnent", arg: 4, scope: !6, file: !1, line: 41, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxnvector", arg: 5, scope: !6, file: !1, line: 42, type: !15)
!54 = !DISubprogram(name: "InpMtx_changeCoordType", scope: !1, file: !1, line: 114, type: !55, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._InpMtx*, i32)* @InpMtx_changeCoordType, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !9, !15}
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtx", arg: 1, scope: !54, file: !1, line: 115, type: !9)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newType", arg: 2, scope: !54, file: !1, line: 116, type: !15)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chev", scope: !54, file: !1, line: 118, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !54, file: !1, line: 118, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !54, file: !1, line: 118, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nent", scope: !54, file: !1, line: 118, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "off", scope: !54, file: !1, line: 118, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldType", scope: !54, file: !1, line: 118, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !54, file: !1, line: 118, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !54, file: !1, line: 118, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec1", scope: !54, file: !1, line: 119, type: !31)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec2", scope: !54, file: !1, line: 119, type: !31)
!70 = !DISubprogram(name: "InpMtx_changeStorageMode", scope: !1, file: !1, line: 286, type: !55, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._InpMtx*, i32)* @InpMtx_changeStorageMode, variables: !71)
!71 = !{!72, !73, !74}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtx", arg: 1, scope: !70, file: !1, line: 287, type: !9)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newMode", arg: 2, scope: !70, file: !1, line: 288, type: !15)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldMode", scope: !70, file: !1, line: 290, type: !15)
!75 = !{i32 2, !"Dwarf Version", i32 2}
!76 = !{i32 2, !"Debug Info Version", i32 700000003}
!77 = !{i32 1, !"PIC Level", i32 2}
!78 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!79 = !DIExpression()
!80 = !DILocation(line: 38, column: 13, scope: !6)
!81 = !DILocation(line: 39, column: 12, scope: !6)
!82 = !DILocation(line: 40, column: 12, scope: !6)
!83 = !DILocation(line: 41, column: 12, scope: !6)
!84 = !DILocation(line: 42, column: 12, scope: !6)
!85 = !DILocation(line: 49, column: 14, scope: !86)
!86 = distinct !DILexicalBlock(scope: !6, file: !1, line: 49, column: 7)
!87 = !DILocation(line: 49, column: 7, scope: !6)
!88 = !DILocation(line: 50, column: 12, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 49, column: 24)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 50, column: 4, scope: !89)
!95 = !DILocation(line: 53, column: 4, scope: !89)
!96 = !DILocation(line: 55, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !6, file: !1, line: 55, column: 6)
!98 = !{!99, !100, i64 0}
!99 = !{!"_InpMtx", !100, i64 0, !100, i64 4, !100, i64 8, !100, i64 12, !100, i64 16, !101, i64 24, !102, i64 32, !102, i64 56, !103, i64 80, !100, i64 104, !100, i64 108, !102, i64 112, !102, i64 136, !102, i64 160}
!100 = !{!"int", !92, i64 0}
!101 = !{!"double", !92, i64 0}
!102 = !{!"_IV", !100, i64 0, !100, i64 4, !100, i64 8, !91, i64 16}
!103 = !{!"_DV", !100, i64 0, !100, i64 4, !100, i64 8, !91, i64 16}
!104 = !DILocation(line: 56, column: 7, scope: !97)
!105 = !DILocation(line: 58, column: 12, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !1, line: 57, column: 44)
!107 = !DILocation(line: 58, column: 4, scope: !106)
!108 = !DILocation(line: 61, column: 4, scope: !106)
!109 = !DILocation(line: 63, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !6, file: !1, line: 63, column: 6)
!111 = !{!99, !100, i64 8}
!112 = !DILocation(line: 64, column: 4, scope: !110)
!113 = !DILocation(line: 66, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 65, column: 47)
!115 = !DILocation(line: 66, column: 4, scope: !114)
!116 = !DILocation(line: 69, column: 4, scope: !114)
!117 = !DILocation(line: 71, column: 18, scope: !118)
!118 = distinct !DILexicalBlock(scope: !6, file: !1, line: 71, column: 6)
!119 = !DILocation(line: 72, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !118, file: !1, line: 71, column: 38)
!121 = !DILocation(line: 72, column: 4, scope: !120)
!122 = !DILocation(line: 76, column: 4, scope: !120)
!123 = !DILocation(line: 83, column: 1, scope: !6)
!124 = !DILocation(line: 89, column: 19, scope: !6)
!125 = !DILocation(line: 90, column: 19, scope: !6)
!126 = !DILocation(line: 91, column: 14, scope: !127)
!127 = distinct !DILexicalBlock(scope: !6, file: !1, line: 91, column: 6)
!128 = !DILocation(line: 91, column: 6, scope: !6)
!129 = !DILocation(line: 92, column: 4, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 91, column: 20)
!131 = !DILocation(line: 93, column: 1, scope: !130)
!132 = !DILocation(line: 100, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !6, file: !1, line: 100, column: 6)
!134 = !DILocation(line: 100, column: 6, scope: !6)
!135 = !DILocation(line: 101, column: 4, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 100, column: 23)
!137 = !DILocation(line: 102, column: 1, scope: !136)
!138 = !DILocation(line: 103, column: 1, scope: !6)
!139 = !DILocation(line: 115, column: 14, scope: !54)
!140 = !DILocation(line: 116, column: 14, scope: !54)
!141 = !DILocation(line: 125, column: 13, scope: !142)
!142 = distinct !DILexicalBlock(scope: !54, file: !1, line: 125, column: 6)
!143 = !DILocation(line: 125, column: 6, scope: !54)
!144 = !DILocation(line: 126, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 125, column: 23)
!146 = !DILocation(line: 126, column: 4, scope: !145)
!147 = !DILocation(line: 129, column: 4, scope: !145)
!148 = !DILocation(line: 131, column: 33, scope: !149)
!149 = distinct !DILexicalBlock(scope: !54, file: !1, line: 131, column: 7)
!150 = !DILocation(line: 133, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !1, line: 132, column: 67)
!152 = !DILocation(line: 133, column: 4, scope: !151)
!153 = !DILocation(line: 136, column: 4, scope: !151)
!154 = !DILocation(line: 138, column: 10, scope: !155)
!155 = distinct !DILexicalBlock(scope: !54, file: !1, line: 138, column: 6)
!156 = !DILocation(line: 139, column: 7, scope: !155)
!157 = !DILocation(line: 141, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 140, column: 44)
!159 = !DILocation(line: 141, column: 4, scope: !158)
!160 = !DILocation(line: 144, column: 4, scope: !158)
!161 = !DILocation(line: 118, column: 32, scope: !54)
!162 = !DILocation(line: 147, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !54, file: !1, line: 147, column: 6)
!164 = !DILocation(line: 147, column: 6, scope: !54)
!165 = !DILocation(line: 150, column: 14, scope: !166)
!166 = distinct !DILexicalBlock(scope: !54, file: !1, line: 150, column: 6)
!167 = !DILocation(line: 150, column: 6, scope: !54)
!168 = !DILocation(line: 156, column: 22, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 150, column: 33)
!170 = !DILocation(line: 157, column: 4, scope: !169)
!171 = !DILocation(line: 159, column: 17, scope: !54)
!172 = !{!99, !100, i64 16}
!173 = !DILocation(line: 118, column: 21, scope: !54)
!174 = !DILocation(line: 160, column: 9, scope: !54)
!175 = !DILocation(line: 119, column: 8, scope: !54)
!176 = !DILocation(line: 161, column: 9, scope: !54)
!177 = !DILocation(line: 119, column: 16, scope: !54)
!178 = !DILocation(line: 162, column: 6, scope: !54)
!179 = !DILocation(line: 163, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 162, column: 34)
!181 = distinct !DILexicalBlock(scope: !54, file: !1, line: 162, column: 6)
!182 = !DILocation(line: 182, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 182, column: 7)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 182, column: 7)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 176, column: 48)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 176, column: 16)
!187 = distinct !DILexicalBlock(scope: !180, file: !1, line: 163, column: 9)
!188 = !DILocation(line: 182, column: 7, scope: !184)
!189 = !DILocation(line: 169, column: 23, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 169, column: 7)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 169, column: 7)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 163, column: 40)
!193 = !DILocation(line: 169, column: 7, scope: !191)
!194 = !DILocation(line: 170, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 169, column: 38)
!196 = !{!100, !100, i64 0}
!197 = !DILocation(line: 118, column: 46, scope: !54)
!198 = !DILocation(line: 171, column: 21, scope: !195)
!199 = !DILocation(line: 171, column: 19, scope: !195)
!200 = !DILocation(line: 172, column: 19, scope: !195)
!201 = !DILocation(line: 174, column: 27, scope: !192)
!202 = !DILocation(line: 175, column: 15, scope: !192)
!203 = !DILocation(line: 175, column: 27, scope: !192)
!204 = !{!99, !100, i64 4}
!205 = !DILocation(line: 176, column: 4, scope: !192)
!206 = !DILocation(line: 183, column: 16, scope: !207)
!207 = distinct !DILexicalBlock(scope: !183, file: !1, line: 182, column: 38)
!208 = !DILocation(line: 118, column: 41, scope: !54)
!209 = !DILocation(line: 184, column: 16, scope: !207)
!210 = !DILocation(line: 118, column: 13, scope: !54)
!211 = !DILocation(line: 185, column: 19, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !1, line: 185, column: 15)
!213 = !DILocation(line: 189, column: 22, scope: !214)
!214 = distinct !DILexicalBlock(scope: !212, file: !1, line: 188, column: 17)
!215 = !DILocation(line: 190, column: 28, scope: !214)
!216 = !DILocation(line: 187, column: 22, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 185, column: 28)
!218 = !DILocation(line: 193, column: 27, scope: !185)
!219 = !DILocation(line: 194, column: 15, scope: !185)
!220 = !DILocation(line: 194, column: 27, scope: !185)
!221 = !DILocation(line: 195, column: 4, scope: !185)
!222 = !DILocation(line: 197, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 196, column: 44)
!224 = distinct !DILexicalBlock(scope: !181, file: !1, line: 196, column: 13)
!225 = !DILocation(line: 216, column: 23, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 216, column: 7)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 216, column: 7)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 210, column: 48)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 210, column: 16)
!230 = distinct !DILexicalBlock(scope: !223, file: !1, line: 197, column: 9)
!231 = !DILocation(line: 216, column: 7, scope: !227)
!232 = !DILocation(line: 203, column: 23, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 203, column: 7)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 203, column: 7)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 197, column: 37)
!236 = !DILocation(line: 203, column: 7, scope: !234)
!237 = !DILocation(line: 204, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 203, column: 38)
!239 = !DILocation(line: 205, column: 21, scope: !238)
!240 = !DILocation(line: 205, column: 19, scope: !238)
!241 = !DILocation(line: 206, column: 19, scope: !238)
!242 = !DILocation(line: 208, column: 27, scope: !235)
!243 = !DILocation(line: 209, column: 15, scope: !235)
!244 = !DILocation(line: 209, column: 27, scope: !235)
!245 = !DILocation(line: 210, column: 4, scope: !235)
!246 = !DILocation(line: 217, column: 16, scope: !247)
!247 = distinct !DILexicalBlock(scope: !226, file: !1, line: 216, column: 38)
!248 = !DILocation(line: 218, column: 16, scope: !247)
!249 = !DILocation(line: 219, column: 19, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 219, column: 15)
!251 = !DILocation(line: 223, column: 22, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !1, line: 222, column: 17)
!253 = !DILocation(line: 224, column: 28, scope: !252)
!254 = !DILocation(line: 221, column: 22, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 219, column: 28)
!256 = !DILocation(line: 227, column: 27, scope: !228)
!257 = !DILocation(line: 228, column: 15, scope: !228)
!258 = !DILocation(line: 228, column: 27, scope: !228)
!259 = !DILocation(line: 229, column: 4, scope: !228)
!260 = !DILocation(line: 231, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 230, column: 45)
!262 = distinct !DILexicalBlock(scope: !224, file: !1, line: 230, column: 13)
!263 = !DILocation(line: 258, column: 23, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 258, column: 7)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 258, column: 7)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 252, column: 47)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 252, column: 16)
!268 = distinct !DILexicalBlock(scope: !261, file: !1, line: 231, column: 9)
!269 = !DILocation(line: 258, column: 7, scope: !265)
!270 = !DILocation(line: 237, column: 23, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 237, column: 7)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 237, column: 7)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 231, column: 37)
!274 = !DILocation(line: 237, column: 7, scope: !272)
!275 = !DILocation(line: 238, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !1, line: 237, column: 38)
!277 = !DILocation(line: 118, column: 7, scope: !54)
!278 = !DILocation(line: 239, column: 17, scope: !276)
!279 = !DILocation(line: 118, column: 27, scope: !54)
!280 = !DILocation(line: 240, column: 19, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 240, column: 15)
!282 = !DILocation(line: 240, column: 15, scope: !276)
!283 = !DILocation(line: 247, column: 19, scope: !276)
!284 = !DILocation(line: 248, column: 19, scope: !276)
!285 = !DILocation(line: 250, column: 27, scope: !273)
!286 = !DILocation(line: 251, column: 15, scope: !273)
!287 = !DILocation(line: 251, column: 27, scope: !273)
!288 = !DILocation(line: 252, column: 4, scope: !273)
!289 = !DILocation(line: 259, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !264, file: !1, line: 258, column: 38)
!291 = !DILocation(line: 260, column: 17, scope: !290)
!292 = !DILocation(line: 261, column: 19, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !1, line: 261, column: 15)
!294 = !DILocation(line: 261, column: 15, scope: !290)
!295 = !DILocation(line: 268, column: 19, scope: !290)
!296 = !DILocation(line: 269, column: 19, scope: !290)
!297 = !DILocation(line: 271, column: 27, scope: !266)
!298 = !DILocation(line: 272, column: 15, scope: !266)
!299 = !DILocation(line: 272, column: 27, scope: !266)
!300 = !DILocation(line: 273, column: 4, scope: !266)
!301 = !DILocation(line: 275, column: 10, scope: !54)
!302 = !DILocation(line: 287, column: 14, scope: !70)
!303 = !DILocation(line: 288, column: 14, scope: !70)
!304 = !DILocation(line: 296, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !70, file: !1, line: 296, column: 6)
!306 = !DILocation(line: 296, column: 6, scope: !70)
!307 = !DILocation(line: 297, column: 12, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 296, column: 23)
!309 = !DILocation(line: 297, column: 4, scope: !308)
!310 = !DILocation(line: 299, column: 4, scope: !308)
!311 = !DILocation(line: 301, column: 34, scope: !312)
!312 = distinct !DILexicalBlock(scope: !70, file: !1, line: 301, column: 7)
!313 = !DILocation(line: 303, column: 12, scope: !314)
!314 = distinct !DILexicalBlock(scope: !312, file: !1, line: 302, column: 38)
!315 = !DILocation(line: 303, column: 4, scope: !314)
!316 = !DILocation(line: 305, column: 4, scope: !314)
!317 = !DILocation(line: 307, column: 19, scope: !70)
!318 = !DILocation(line: 290, column: 7, scope: !70)
!319 = !DILocation(line: 308, column: 14, scope: !320)
!320 = distinct !DILexicalBlock(scope: !70, file: !1, line: 308, column: 6)
!321 = !DILocation(line: 308, column: 6, scope: !70)
!322 = !DILocation(line: 311, column: 6, scope: !70)
!323 = !DILocation(line: 312, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 311, column: 35)
!325 = distinct !DILexicalBlock(scope: !70, file: !1, line: 311, column: 6)
!326 = !DILocation(line: 318, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 312, column: 36)
!328 = distinct !DILexicalBlock(scope: !324, file: !1, line: 312, column: 9)
!329 = !DILocation(line: 319, column: 27, scope: !327)
!330 = !DILocation(line: 320, column: 4, scope: !327)
!331 = !DILocation(line: 326, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 320, column: 47)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 320, column: 16)
!334 = !DILocation(line: 327, column: 7, scope: !332)
!335 = !DILocation(line: 328, column: 27, scope: !332)
!336 = !DILocation(line: 329, column: 4, scope: !332)
!337 = !DILocation(line: 331, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 330, column: 40)
!339 = distinct !DILexicalBlock(scope: !325, file: !1, line: 330, column: 13)
!340 = !DILocation(line: 338, column: 27, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 331, column: 38)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 331, column: 9)
!343 = !DILocation(line: 339, column: 4, scope: !341)
!344 = !DILocation(line: 345, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 339, column: 47)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 339, column: 16)
!347 = !DILocation(line: 346, column: 27, scope: !345)
!348 = !DILocation(line: 347, column: 4, scope: !345)
!349 = !DILocation(line: 349, column: 36, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 349, column: 9)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 348, column: 44)
!352 = distinct !DILexicalBlock(scope: !339, file: !1, line: 348, column: 13)
!353 = !DILocation(line: 356, column: 27, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !1, line: 349, column: 66)
!355 = !DILocation(line: 357, column: 4, scope: !354)
!356 = !DILocation(line: 359, column: 10, scope: !70)

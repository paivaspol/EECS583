; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/spec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@dbglvl = global i32 4, align 4
@seedi = common global i64 0, align 8
@spec_fd = common global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Duplicating %d bytes\0A\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"spec_read: %d, %p, %d = \00", align 1
@.str9 = private unnamed_addr constant [34 x i8] c"spec_read: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c"spec_fread: %p, (%d x %d) fd %d =\00", align 1
@.str13 = private unnamed_addr constant [35 x i8] c"spec_fread: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"spec_getc: %d = \00", align 1
@.str15 = private unnamed_addr constant [19 x i8] c"spec_ungetc: %d = \00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"spec_ungetc: pos %d <= 0\0A\00", align 1
@.str17 = private unnamed_addr constant [72 x i8] c"spec_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str18 = private unnamed_addr constant [26 x i8] c"spec_write: %d, %p, %d = \00", align 1
@.str19 = private unnamed_addr constant [35 x i8] c"spec_write: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"spec_fwrite: %p, %d, %d, %d = \00", align 1
@.str21 = private unnamed_addr constant [36 x i8] c"spec_fwrite: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str22 = private unnamed_addr constant [21 x i8] c"spec_putc: %d, %d = \00", align 1
@str = private unnamed_addr constant [35 x i8] c"spec_init: Error mallocing memory!\00"
@str23 = private unnamed_addr constant [10 x i8] c"spec_init\00"
@str24 = private unnamed_addr constant [19 x i8] c"Filling input file\00"
@str25 = private unnamed_addr constant [16 x i8] c"Creating Chunks\00"
@str28 = private unnamed_addr constant [4 x i8] c"EOF\00"

; Function Attrs: nounwind optsize ssp uwtable
define double @ran() #0 {
  %1 = load i64* @seedi, align 8, !dbg !121, !tbaa !122
  %2 = sdiv i64 %1, 127773, !dbg !126
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !17, metadata !127), !dbg !128
  %3 = srem i64 %1, 127773, !dbg !129
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !15, metadata !127), !dbg !130
  %4 = mul nsw i64 %3, 16807, !dbg !131
  %5 = mul nsw i64 %2, -2836, !dbg !132
  %6 = add i64 %4, %5, !dbg !132
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !18, metadata !127), !dbg !133
  %7 = icmp sgt i64 %6, 0, !dbg !134
  %8 = add nsw i64 %6, 2147483647, !dbg !136
  %storemerge = select i1 %7, i64 %6, i64 %8, !dbg !138
  store i64 %storemerge, i64* @seedi, align 8, !dbg !139, !tbaa !122
  %9 = sitofp i64 %storemerge to float, !dbg !141
  %10 = fmul float %9, 0x3E00000000000000, !dbg !142
  %11 = fpext float %10 to double, !dbg !143
  ret double %11, !dbg !144
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_init() #0 {
  %1 = load i32* @dbglvl, align 4, !dbg !145, !tbaa !148
  %2 = icmp sgt i32 %1, 3, !dbg !145
  br i1 %2, label %3, label %.preheader2, !dbg !150

; <label>:3                                       ; preds = %0
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str23, i64 0, i64 0)), !dbg !145
  br label %.preheader2, !dbg !145

.preheader2:                                      ; preds = %0, %3, %._crit_edge
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 0, %3 ], [ 0, %0 ]
  %4 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv5, !dbg !151
  %5 = getelementptr inbounds %struct.spec_fd_t* %4, i64 0, i32 0, !dbg !152
  %6 = load i32* %5, align 8, !dbg !152, !tbaa !153
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !25, metadata !127), !dbg !156
  %7 = bitcast %struct.spec_fd_t* %4 to i8*, !dbg !157
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false), !dbg !157
  %9 = tail call i8* @__memset_chk(i8* %7, i32 0, i64 24, i64 %8) #6, !dbg !157
  store i32 %6, i32* %5, align 8, !dbg !158, !tbaa !153
  %10 = add nsw i32 %6, 1048576, !dbg !159
  %11 = sext i32 %10 to i64, !dbg !160
  %12 = tail call i8* @malloc(i64 %11) #6, !dbg !161
  %13 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv5, i32 3, !dbg !162
  store i8* %12, i8** %13, align 8, !dbg !163, !tbaa !164
  %14 = icmp eq i8* %12, null, !dbg !165
  br i1 %14, label %18, label %.preheader, !dbg !167

.preheader:                                       ; preds = %.preheader2
  %15 = icmp sgt i32 %6, 0, !dbg !168
  br i1 %15, label %.lr.ph, label %._crit_edge, !dbg !171

.lr.ph:                                           ; preds = %.preheader
  %16 = sext i32 %6 to i64, !dbg !171
  store i8 0, i8* %12, align 1, !dbg !172, !tbaa !174
  %17 = icmp sgt i32 %6, 1024, !dbg !168
  br i1 %17, label %._crit_edge7, label %._crit_edge, !dbg !171

; <label>:18                                      ; preds = %.preheader2
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str, i64 0, i64 0)), !dbg !175
  tail call void @exit(i32 0) #7, !dbg !177
  unreachable, !dbg !177

._crit_edge7:                                     ; preds = %.lr.ph, %._crit_edge7
  %indvars.iv.next8 = phi i64 [ %indvars.iv.next, %._crit_edge7 ], [ 1024, %.lr.ph ]
  %.pre = load i8** %13, align 8, !dbg !178, !tbaa !164
  %19 = getelementptr inbounds i8* %.pre, i64 %indvars.iv.next8, !dbg !179
  store i8 0, i8* %19, align 1, !dbg !172, !tbaa !174
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next8, 1024, !dbg !171
  %20 = icmp slt i64 %indvars.iv.next, %16, !dbg !168
  br i1 %20, label %._crit_edge7, label %._crit_edge, !dbg !171

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge7, %.preheader
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !180
  %21 = icmp slt i64 %indvars.iv.next6, 3, !dbg !181
  br i1 %21, label %.preheader2, label %22, !dbg !180

; <label>:22                                      ; preds = %._crit_edge
  ret i32 0, !dbg !182
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_random_load(i32 %fd) #0 {
  %random_text = alloca [32 x [131072 x i8]], align 16
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !33, metadata !127), !dbg !183
  %1 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 0, i64 0, !dbg !184
  call void @llvm.lifetime.start(i64 4194304, i8* %1) #4, !dbg !184
  tail call void @llvm.dbg.declare(metadata [32 x [131072 x i8]]* %random_text, metadata !36, metadata !127), !dbg !185
  %2 = load i32* @dbglvl, align 4, !dbg !186, !tbaa !148
  %3 = icmp sgt i32 %2, 4, !dbg !186
  br i1 %3, label %4, label %.preheader, !dbg !189

; <label>:4                                       ; preds = %0
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str25, i64 0, i64 0)), !dbg !186
  br label %5, !dbg !186

; <label>:5                                       ; preds = %4, %27
  %i.0.ph = phi i32 [ 0, %4 ], [ %28, %27 ]
  %.pr = load i32* @dbglvl, align 4, !dbg !190, !tbaa !148
  %6 = icmp slt i32 %i.0.ph, 32, !dbg !196
  br i1 %6, label %7, label %29, !dbg !197

; <label>:7                                       ; preds = %5
  %8 = icmp sgt i32 %.pr, 5, !dbg !190
  br i1 %8, label %9, label %.preheader, !dbg !198

; <label>:9                                       ; preds = %7
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i32 %i.0.ph) #6, !dbg !190
  br label %.preheader, !dbg !190

.preheader:                                       ; preds = %0, %9, %7
  %i.0911 = phi i32 [ %i.0.ph, %9 ], [ %i.0.ph, %7 ], [ 0, %0 ]
  %11 = sext i32 %i.0911 to i64, !dbg !199
  %seedi.promoted = load i64* @seedi, align 8, !dbg !203, !tbaa !122
  br label %12, !dbg !205

; <label>:12                                      ; preds = %12, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %12 ]
  %storemerge.i5 = phi i64 [ %seedi.promoted, %.preheader ], [ %storemerge.i, %12 ], !dbg !206
  %13 = sdiv i64 %storemerge.i5, 127773, !dbg !207
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !17, metadata !127), !dbg !208
  %14 = srem i64 %storemerge.i5, 127773, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !15, metadata !127), !dbg !210
  %15 = mul nsw i64 %14, 16807, !dbg !211
  %16 = mul nsw i64 %13, -2836, !dbg !212
  %17 = add i64 %15, %16, !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !18, metadata !127), !dbg !213
  %18 = icmp sgt i64 %17, 0, !dbg !214
  %19 = add nsw i64 %17, 2147483647, !dbg !215
  %storemerge.i = select i1 %18, i64 %17, i64 %19, !dbg !216
  %20 = sitofp i64 %storemerge.i to float, !dbg !217
  %21 = fmul float %20, 0x3E00000000000000, !dbg !218
  %22 = fpext float %21 to double, !dbg !219
  %23 = fmul double %22, 2.560000e+02, !dbg !220
  %24 = fptosi double %23 to i32, !dbg !221
  %25 = trunc i32 %24 to i8, !dbg !221
  %26 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %11, i64 %indvars.iv, !dbg !199
  store i8 %25, i8* %26, align 1, !dbg !222, !tbaa !174
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !205
  %exitcond = icmp eq i64 %indvars.iv.next, 131072, !dbg !205
  br i1 %exitcond, label %27, label %12, !dbg !205

; <label>:27                                      ; preds = %12
  store i64 %storemerge.i, i64* @seedi, align 8, !dbg !203, !tbaa !122
  %28 = add nsw i32 %i.0911, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !34, metadata !127), !dbg !224
  br label %5, !dbg !225

; <label>:29                                      ; preds = %5
  %30 = icmp sgt i32 %.pr, 4, !dbg !226
  br i1 %30, label %31, label %.preheader3, !dbg !229

; <label>:31                                      ; preds = %29
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str24, i64 0, i64 0)), !dbg !226
  br label %.preheader3, !dbg !226

.preheader3:                                      ; preds = %31, %29
  %32 = sext i32 %fd to i64, !dbg !230
  %33 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %32, i32 0, !dbg !233
  %34 = load i32* %33, align 8, !dbg !233, !tbaa !153
  %35 = icmp sgt i32 %34, 0, !dbg !234
  br i1 %35, label %.lr.ph, label %._crit_edge, !dbg !235

.lr.ph:                                           ; preds = %.preheader3
  %36 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %32, i32 3, !dbg !236
  br label %37, !dbg !235

; <label>:37                                      ; preds = %.lr.ph, %37
  %indvars.iv7 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next8, %37 ]
  %38 = load i8** %36, align 8, !dbg !236, !tbaa !164
  %39 = getelementptr inbounds i8* %38, i64 %indvars.iv7, !dbg !236
  %40 = load i64* @seedi, align 8, !dbg !238, !tbaa !122
  %41 = sdiv i64 %40, 127773, !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !17, metadata !127), !dbg !241
  %42 = srem i64 %40, 127773, !dbg !242
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !15, metadata !127), !dbg !243
  %43 = mul nsw i64 %42, 16807, !dbg !244
  %44 = mul nsw i64 %41, -2836, !dbg !245
  %45 = add i64 %43, %44, !dbg !245
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !18, metadata !127), !dbg !246
  %46 = icmp sgt i64 %45, 0, !dbg !247
  %47 = add nsw i64 %45, 2147483647, !dbg !248
  %storemerge.i2 = select i1 %46, i64 %45, i64 %47, !dbg !249
  store i64 %storemerge.i2, i64* @seedi, align 8, !dbg !250, !tbaa !122
  %48 = sitofp i64 %storemerge.i2 to float, !dbg !251
  %49 = fmul float %48, 0x3E00000000000000, !dbg !252
  %50 = fpext float %49 to double, !dbg !253
  %51 = fmul double %50, 3.200000e+01, !dbg !236
  %52 = fptosi double %51 to i32, !dbg !236
  %53 = sext i32 %52 to i64, !dbg !236
  %54 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %53, i64 0, !dbg !236
  %55 = call i64 @llvm.objectsize.i64.p0i8(i8* %39, i1 false), !dbg !236
  %56 = call i8* @__memcpy_chk(i8* %39, i8* %54, i64 131072, i64 %55) #6, !dbg !236
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 131072, !dbg !235
  %57 = load i32* %33, align 8, !dbg !233, !tbaa !153
  %58 = sext i32 %57 to i64, !dbg !234
  %59 = icmp slt i64 %indvars.iv.next8, %58, !dbg !234
  br i1 %59, label %37, label %._crit_edge, !dbg !235

._crit_edge:                                      ; preds = %37, %.preheader3
  %60 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %32, i32 1, !dbg !254
  store i32 1048576, i32* %60, align 4, !dbg !255, !tbaa !256
  call void @llvm.lifetime.end(i64 4194304, i8* %1) #4, !dbg !257
  ret i32 0, !dbg !257
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_load(i32 %num, i8* %filename, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !47, metadata !127), !dbg !258
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !48, metadata !127), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !49, metadata !127), !dbg !260
  %1 = tail call i32 (i8*, i32, ...)* @"\01_open"(i8* %filename, i32 0) #6, !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !50, metadata !127), !dbg !262
  %2 = icmp slt i32 %1, 0, !dbg !263
  br i1 %2, label %3, label %9, !dbg !265

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !266, !tbaa !268
  %5 = tail call i32* @__error() #6, !dbg !269
  %6 = load i32* %5, align 4, !dbg !269, !tbaa !148
  %7 = tail call i8* @"\01_strerror"(i32 %6) #6, !dbg !270
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i8* %filename, i8* %7) #6, !dbg !271
  tail call void @exit(i32 0) #7, !dbg !272
  unreachable, !dbg !272

; <label>:9                                       ; preds = %0
  %10 = sext i32 %num to i64, !dbg !273
  %11 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 1, !dbg !274
  store i32 0, i32* %11, align 4, !dbg !275, !tbaa !256
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 2, !dbg !276
  store i32 0, i32* %12, align 8, !dbg !277, !tbaa !278
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !52, metadata !127), !dbg !279
  %13 = icmp sgt i32 %size, 0, !dbg !280
  br i1 %13, label %.lr.ph3, label %._crit_edge4, !dbg !283

.lr.ph3:                                          ; preds = %9
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 3, !dbg !284
  br label %15, !dbg !283

; <label>:15                                      ; preds = %.lr.ph3, %30
  %i.01 = phi i32 [ 0, %.lr.ph3 ], [ %33, %30 ]
  %16 = load i8** %14, align 8, !dbg !284, !tbaa !164
  %17 = sext i32 %i.01 to i64, !dbg !286
  %18 = getelementptr inbounds i8* %16, i64 %17, !dbg !286
  %19 = tail call i64 @"\01_read"(i32 %1, i8* %18, i64 131072) #6, !dbg !287
  %20 = trunc i64 %19 to i32, !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !51, metadata !127), !dbg !288
  %21 = icmp eq i32 %20, 0, !dbg !289
  br i1 %21, label %._crit_edge4, label %22, !dbg !291

; <label>:22                                      ; preds = %15
  %23 = icmp slt i32 %20, 0, !dbg !292
  br i1 %23, label %24, label %30, !dbg !294

; <label>:24                                      ; preds = %22
  %25 = load %struct.__sFILE** @__stderrp, align 8, !dbg !295, !tbaa !268
  %26 = tail call i32* @__error() #6, !dbg !297
  %27 = load i32* %26, align 4, !dbg !297, !tbaa !148
  %28 = tail call i8* @"\01_strerror"(i32 %27) #6, !dbg !298
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i8* %filename, i8* %28) #6, !dbg !299
  tail call void @exit(i32 0) #7, !dbg !300
  unreachable, !dbg !300

; <label>:30                                      ; preds = %22
  %31 = load i32* %11, align 4, !dbg !301, !tbaa !256
  %32 = add nsw i32 %31, %20, !dbg !301
  store i32 %32, i32* %11, align 4, !dbg !301, !tbaa !256
  %33 = add nsw i32 %20, %i.01, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !52, metadata !127), !dbg !279
  %34 = icmp slt i32 %33, %size, !dbg !280
  br i1 %34, label %15, label %._crit_edge4, !dbg !283

._crit_edge4:                                     ; preds = %30, %15, %9
  %35 = tail call i32 @"\01_close"(i32 %1) #6, !dbg !303
  %36 = load i32* %11, align 4, !dbg !304, !tbaa !256
  %37 = icmp slt i32 %36, %size, !dbg !305
  br i1 %37, label %.lr.ph, label %._crit_edge, !dbg !306

.lr.ph:                                           ; preds = %._crit_edge4
  %38 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 3, !dbg !307
  br label %39, !dbg !306

; <label>:39                                      ; preds = %.lr.ph, %47
  %40 = phi i32 [ %36, %.lr.ph ], [ %56, %47 ]
  %41 = sub nsw i32 %size, %40, !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !53, metadata !127), !dbg !309
  %42 = icmp sgt i32 %41, %40, !dbg !310
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !53, metadata !127), !dbg !309
  %. = select i1 %42, i32 %40, i32 %41, !dbg !312
  %43 = load i32* @dbglvl, align 4, !dbg !313, !tbaa !148
  %44 = icmp sgt i32 %43, 3, !dbg !313
  br i1 %44, label %45, label %47, !dbg !316

; <label>:45                                      ; preds = %39
  %46 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 %.) #6, !dbg !313
  %.pre = load i32* %11, align 4, !dbg !307, !tbaa !256
  br label %47, !dbg !313

; <label>:47                                      ; preds = %45, %39
  %48 = phi i32 [ %.pre, %45 ], [ %40, %39 ], !dbg !307
  %49 = load i8** %38, align 8, !dbg !307, !tbaa !164
  %50 = sext i32 %48 to i64, !dbg !307
  %51 = getelementptr inbounds i8* %49, i64 %50, !dbg !307
  %52 = sext i32 %. to i64, !dbg !307
  %53 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %51, i1 false), !dbg !307
  %54 = tail call i8* @__memcpy_chk(i8* %51, i8* %49, i64 %52, i64 %53) #6, !dbg !307
  %55 = load i32* %11, align 4, !dbg !317, !tbaa !256
  %56 = add nsw i32 %55, %., !dbg !317
  store i32 %56, i32* %11, align 4, !dbg !317, !tbaa !256
  %57 = icmp slt i32 %56, %size, !dbg !305
  br i1 %57, label %39, label %._crit_edge, !dbg !306

._crit_edge:                                      ; preds = %47, %._crit_edge4
  ret i32 0, !dbg !318
}

; Function Attrs: optsize
declare i32 @"\01_open"(i8*, i32, ...) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: optsize
declare i8* @"\01_strerror"(i32) #5

; Function Attrs: optsize
declare i32* @__error() #5

; Function Attrs: optsize
declare i64 @"\01_read"(i32, i8*, i64) #5

; Function Attrs: optsize
declare i32 @"\01_close"(i32) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_read(i32 %fd, i8* %buf, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !59, metadata !127), !dbg !319
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !60, metadata !127), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !61, metadata !127), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !127), !dbg !322
  %1 = load i32* @dbglvl, align 4, !dbg !323, !tbaa !148
  %2 = icmp sgt i32 %1, 4, !dbg !323
  br i1 %2, label %3, label %5, !dbg !326

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #6, !dbg !323
  br label %5, !dbg !323

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3, !dbg !327
  br i1 %6, label %7, label %10, !dbg !329

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !330, !tbaa !268
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #6, !dbg !332
  tail call void @exit(i32 0) #7, !dbg !333
  unreachable, !dbg !333

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64, !dbg !334
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2, !dbg !336
  %13 = load i32* %12, align 8, !dbg !336, !tbaa !278
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1, !dbg !337
  %15 = load i32* %14, align 4, !dbg !337, !tbaa !256
  %16 = icmp sgt i32 %15, %13, !dbg !338
  br i1 %16, label %21, label %17, !dbg !339

; <label>:17                                      ; preds = %10
  %18 = load i32* @dbglvl, align 4, !dbg !340, !tbaa !148
  %19 = icmp sgt i32 %18, 4, !dbg !340
  br i1 %19, label %20, label %38, !dbg !344

; <label>:20                                      ; preds = %17
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0)), !dbg !340
  br label %38, !dbg !340

; <label>:21                                      ; preds = %10
  %22 = add nsw i32 %13, %size, !dbg !345
  %23 = icmp slt i32 %22, %15, !dbg !347
  %24 = sub nsw i32 %15, %13, !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !62, metadata !127), !dbg !322
  %rc.0 = select i1 %23, i32 %size, i32 %24, !dbg !350
  %25 = sext i32 %13 to i64, !dbg !351
  %26 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3, !dbg !351
  %27 = load i8** %26, align 8, !dbg !351, !tbaa !164
  %28 = getelementptr inbounds i8* %27, i64 %25, !dbg !351
  %29 = sext i32 %rc.0 to i64, !dbg !351
  %30 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %buf, i1 false), !dbg !351
  %31 = tail call i8* @__memcpy_chk(i8* %buf, i8* %28, i64 %29, i64 %30) #6, !dbg !351
  %32 = load i32* %12, align 8, !dbg !352, !tbaa !278
  %33 = add nsw i32 %32, %rc.0, !dbg !352
  store i32 %33, i32* %12, align 8, !dbg !352, !tbaa !278
  %34 = load i32* @dbglvl, align 4, !dbg !353, !tbaa !148
  %35 = icmp sgt i32 %34, 4, !dbg !353
  br i1 %35, label %36, label %38, !dbg !356

; <label>:36                                      ; preds = %21
  %37 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %rc.0) #6, !dbg !353
  br label %38, !dbg !353

; <label>:38                                      ; preds = %21, %36, %17, %20
  %.0 = phi i32 [ -1, %20 ], [ -1, %17 ], [ %rc.0, %36 ], [ %rc.0, %21 ]
  ret i32 %.0, !dbg !357
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_fread(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !67, metadata !127), !dbg !358
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !68, metadata !127), !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !69, metadata !127), !dbg !360
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !70, metadata !127), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !71, metadata !127), !dbg !362
  %1 = load i32* @dbglvl, align 4, !dbg !363, !tbaa !148
  %2 = icmp sgt i32 %1, 4, !dbg !363
  br i1 %2, label %3, label %5, !dbg !366

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #6, !dbg !363
  br label %5, !dbg !363

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3, !dbg !367
  br i1 %6, label %7, label %10, !dbg !369

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !370, !tbaa !268
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0), i32 %fd) #6, !dbg !372
  tail call void @exit(i32 0) #7, !dbg !373
  unreachable, !dbg !373

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64, !dbg !374
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2, !dbg !376
  %13 = load i32* %12, align 8, !dbg !376, !tbaa !278
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1, !dbg !377
  %15 = load i32* %14, align 4, !dbg !377, !tbaa !256
  %16 = icmp sgt i32 %15, %13, !dbg !378
  br i1 %16, label %21, label %17, !dbg !379

; <label>:17                                      ; preds = %10
  %18 = load i32* @dbglvl, align 4, !dbg !380, !tbaa !148
  %19 = icmp sgt i32 %18, 4, !dbg !380
  br i1 %19, label %20, label %43, !dbg !384

; <label>:20                                      ; preds = %17
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0)), !dbg !380
  br label %43, !dbg !380

; <label>:21                                      ; preds = %10
  %22 = mul nsw i32 %num, %size, !dbg !385
  %23 = add nsw i32 %13, %22, !dbg !387
  %24 = icmp slt i32 %23, %15, !dbg !388
  br i1 %24, label %28, label %25, !dbg !389

; <label>:25                                      ; preds = %21
  %26 = sub nsw i32 %15, %13, !dbg !390
  %27 = sdiv i32 %26, %size, !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !71, metadata !127), !dbg !362
  br label %28, !dbg !393

; <label>:28                                      ; preds = %21, %25
  %rc.0 = phi i32 [ %27, %25 ], [ %num, %21 ]
  %29 = sext i32 %13 to i64, !dbg !394
  %30 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3, !dbg !394
  %31 = load i8** %30, align 8, !dbg !394, !tbaa !164
  %32 = getelementptr inbounds i8* %31, i64 %29, !dbg !394
  %33 = sext i32 %rc.0 to i64, !dbg !394
  %34 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %buf, i1 false), !dbg !394
  %35 = tail call i8* @__memcpy_chk(i8* %buf, i8* %32, i64 %33, i64 %34) #6, !dbg !394
  %36 = mul nsw i32 %rc.0, %size, !dbg !395
  %37 = load i32* %12, align 8, !dbg !396, !tbaa !278
  %38 = add nsw i32 %37, %36, !dbg !396
  store i32 %38, i32* %12, align 8, !dbg !396, !tbaa !278
  %39 = load i32* @dbglvl, align 4, !dbg !397, !tbaa !148
  %40 = icmp sgt i32 %39, 4, !dbg !397
  br i1 %40, label %41, label %43, !dbg !400

; <label>:41                                      ; preds = %28
  %42 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %36) #6, !dbg !397
  br label %43, !dbg !397

; <label>:43                                      ; preds = %28, %41, %17, %20
  %.0 = phi i32 [ -1, %20 ], [ -1, %17 ], [ %rc.0, %41 ], [ %rc.0, %28 ]
  ret i32 %.0, !dbg !401
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_getc(i32 %fd) #0 {
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !74, metadata !127), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !75, metadata !127), !dbg !403
  %1 = load i32* @dbglvl, align 4, !dbg !404, !tbaa !148
  %2 = icmp sgt i32 %1, 4, !dbg !404
  br i1 %2, label %3, label %5, !dbg !407

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %fd) #6, !dbg !404
  br label %5, !dbg !404

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3, !dbg !408
  br i1 %6, label %7, label %10, !dbg !410

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !411, !tbaa !268
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #6, !dbg !413
  tail call void @exit(i32 0) #7, !dbg !414
  unreachable, !dbg !414

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64, !dbg !415
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2, !dbg !417
  %13 = load i32* %12, align 8, !dbg !417, !tbaa !278
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1, !dbg !418
  %15 = load i32* %14, align 4, !dbg !418, !tbaa !256
  %16 = icmp slt i32 %13, %15, !dbg !419
  br i1 %16, label %21, label %17, !dbg !420

; <label>:17                                      ; preds = %10
  %18 = load i32* @dbglvl, align 4, !dbg !421, !tbaa !148
  %19 = icmp sgt i32 %18, 4, !dbg !421
  br i1 %19, label %20, label %33, !dbg !425

; <label>:20                                      ; preds = %17
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0)), !dbg !421
  br label %33, !dbg !421

; <label>:21                                      ; preds = %10
  %22 = add nsw i32 %13, 1, !dbg !426
  store i32 %22, i32* %12, align 8, !dbg !426, !tbaa !278
  %23 = sext i32 %13 to i64, !dbg !427
  %24 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3, !dbg !428
  %25 = load i8** %24, align 8, !dbg !428, !tbaa !164
  %26 = getelementptr inbounds i8* %25, i64 %23, !dbg !427
  %27 = load i8* %26, align 1, !dbg !427, !tbaa !174
  %28 = zext i8 %27 to i32, !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !75, metadata !127), !dbg !403
  %29 = load i32* @dbglvl, align 4, !dbg !429, !tbaa !148
  %30 = icmp sgt i32 %29, 4, !dbg !429
  br i1 %30, label %31, label %33, !dbg !432

; <label>:31                                      ; preds = %21
  %32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %28) #6, !dbg !429
  br label %33, !dbg !429

; <label>:33                                      ; preds = %21, %31, %17, %20
  %.0 = phi i32 [ -1, %20 ], [ -1, %17 ], [ %28, %31 ], [ %28, %21 ]
  ret i32 %.0, !dbg !433
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_ungetc(i8 zeroext %ch, i32 %fd) #0 {
  tail call void @llvm.dbg.value(metadata i8 %ch, i64 0, metadata !80, metadata !127), !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !81, metadata !127), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !82, metadata !127), !dbg !436
  %1 = load i32* @dbglvl, align 4, !dbg !437, !tbaa !148
  %2 = icmp sgt i32 %1, 4, !dbg !437
  br i1 %2, label %3, label %5, !dbg !440

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str15, i64 0, i64 0), i32 %fd) #6, !dbg !437
  br label %5, !dbg !437

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3, !dbg !441
  br i1 %6, label %7, label %10, !dbg !443

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !444, !tbaa !268
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #6, !dbg !446
  tail call void @exit(i32 0) #7, !dbg !447
  unreachable, !dbg !447

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64, !dbg !448
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2, !dbg !450
  %13 = load i32* %12, align 8, !dbg !450, !tbaa !278
  %14 = icmp slt i32 %13, 1, !dbg !451
  br i1 %14, label %15, label %18, !dbg !452

; <label>:15                                      ; preds = %10
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !453, !tbaa !268
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %13) #6, !dbg !455
  tail call void @exit(i32 0) #7, !dbg !456
  unreachable, !dbg !456

; <label>:18                                      ; preds = %10
  %19 = add nsw i32 %13, -1, !dbg !457
  store i32 %19, i32* %12, align 8, !dbg !457, !tbaa !278
  %20 = sext i32 %19 to i64, !dbg !459
  %21 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3, !dbg !460
  %22 = load i8** %21, align 8, !dbg !460, !tbaa !164
  %23 = getelementptr inbounds i8* %22, i64 %20, !dbg !459
  %24 = load i8* %23, align 1, !dbg !459, !tbaa !174
  %25 = zext i8 %ch to i32, !dbg !461
  %26 = icmp eq i8 %24, %ch, !dbg !462
  br i1 %26, label %30, label %27, !dbg !463

; <label>:27                                      ; preds = %18
  %28 = load %struct.__sFILE** @__stderrp, align 8, !dbg !464, !tbaa !268
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str17, i64 0, i64 0), i64 71, i64 1, %struct.__sFILE* %28), !dbg !466
  tail call void @exit(i32 0) #7, !dbg !467
  unreachable, !dbg !467

; <label>:30                                      ; preds = %18
  %31 = load i32* @dbglvl, align 4, !dbg !468, !tbaa !148
  %32 = icmp sgt i32 %31, 4, !dbg !468
  br i1 %32, label %33, label %35, !dbg !471

; <label>:33                                      ; preds = %30
  %34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 0) #6, !dbg !468
  br label %35, !dbg !468

; <label>:35                                      ; preds = %33, %30
  ret i32 %25, !dbg !472
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_rewind(i32 %fd) #0 {
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !85, metadata !127), !dbg !473
  %1 = sext i32 %fd to i64, !dbg !474
  %2 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 2, !dbg !475
  store i32 0, i32* %2, align 8, !dbg !476, !tbaa !278
  ret i32 0, !dbg !477
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_reset(i32 %fd) #0 {
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !88, metadata !127), !dbg !478
  %1 = sext i32 %fd to i64, !dbg !479
  %2 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 3, !dbg !479
  %3 = load i8** %2, align 8, !dbg !479, !tbaa !164
  %4 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 1, !dbg !479
  %5 = load i32* %4, align 4, !dbg !479, !tbaa !256
  %6 = sext i32 %5 to i64, !dbg !479
  %7 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false), !dbg !479
  %8 = tail call i8* @__memset_chk(i8* %3, i32 0, i64 %6, i64 %7) #6, !dbg !479
  store i32 0, i32* %4, align 4, !dbg !480, !tbaa !256
  %9 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 2, !dbg !481
  store i32 0, i32* %9, align 8, !dbg !482, !tbaa !278
  ret i32 0, !dbg !483
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_write(i32 %fd, i8* %buf, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !91, metadata !127), !dbg !484
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !92, metadata !127), !dbg !485
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !93, metadata !127), !dbg !486
  %1 = load i32* @dbglvl, align 4, !dbg !487, !tbaa !148
  %2 = icmp sgt i32 %1, 4, !dbg !487
  br i1 %2, label %3, label %5, !dbg !490

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #6, !dbg !487
  br label %5, !dbg !487

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3, !dbg !491
  br i1 %6, label %7, label %10, !dbg !493

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !494, !tbaa !268
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #6, !dbg !496
  tail call void @exit(i32 0) #7, !dbg !497
  unreachable, !dbg !497

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64, !dbg !498
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2, !dbg !498
  %13 = load i32* %12, align 8, !dbg !498, !tbaa !278
  %14 = sext i32 %13 to i64, !dbg !498
  %15 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3, !dbg !498
  %16 = load i8** %15, align 8, !dbg !498, !tbaa !164
  %17 = getelementptr inbounds i8* %16, i64 %14, !dbg !498
  %18 = sext i32 %size to i64, !dbg !498
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false), !dbg !498
  %20 = tail call i8* @__memcpy_chk(i8* %17, i8* %buf, i64 %18, i64 %19) #6, !dbg !498
  %21 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1, !dbg !499
  %22 = load i32* %21, align 4, !dbg !500, !tbaa !256
  %23 = add nsw i32 %22, %size, !dbg !500
  store i32 %23, i32* %21, align 4, !dbg !500, !tbaa !256
  %24 = load i32* %12, align 8, !dbg !501, !tbaa !278
  %25 = add nsw i32 %24, %size, !dbg !501
  store i32 %25, i32* %12, align 8, !dbg !501, !tbaa !278
  %26 = load i32* @dbglvl, align 4, !dbg !502, !tbaa !148
  %27 = icmp sgt i32 %26, 4, !dbg !502
  br i1 %27, label %28, label %30, !dbg !505

; <label>:28                                      ; preds = %10
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %size) #6, !dbg !502
  br label %30, !dbg !502

; <label>:30                                      ; preds = %28, %10
  ret i32 %size, !dbg !506
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_fwrite(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !96, metadata !127), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !97, metadata !127), !dbg !508
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !98, metadata !127), !dbg !509
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !99, metadata !127), !dbg !510
  %1 = load i32* @dbglvl, align 4, !dbg !511, !tbaa !148
  %2 = icmp sgt i32 %1, 4, !dbg !511
  br i1 %2, label %3, label %5, !dbg !514

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #6, !dbg !511
  br label %5, !dbg !511

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3, !dbg !515
  br i1 %6, label %7, label %10, !dbg !517

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !518, !tbaa !268
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i32 %fd) #6, !dbg !520
  tail call void @exit(i32 0) #7, !dbg !521
  unreachable, !dbg !521

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64, !dbg !522
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2, !dbg !522
  %13 = load i32* %12, align 8, !dbg !522, !tbaa !278
  %14 = sext i32 %13 to i64, !dbg !522
  %15 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3, !dbg !522
  %16 = load i8** %15, align 8, !dbg !522, !tbaa !164
  %17 = getelementptr inbounds i8* %16, i64 %14, !dbg !522
  %18 = mul nsw i32 %num, %size, !dbg !522
  %19 = sext i32 %18 to i64, !dbg !522
  %20 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false), !dbg !522
  %21 = tail call i8* @__memcpy_chk(i8* %17, i8* %buf, i64 %19, i64 %20) #6, !dbg !522
  %22 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1, !dbg !523
  %23 = load i32* %22, align 4, !dbg !524, !tbaa !256
  %24 = add nsw i32 %23, %18, !dbg !524
  store i32 %24, i32* %22, align 4, !dbg !524, !tbaa !256
  %25 = load i32* %12, align 8, !dbg !525, !tbaa !278
  %26 = add nsw i32 %25, %18, !dbg !525
  store i32 %26, i32* %12, align 8, !dbg !525, !tbaa !278
  %27 = load i32* @dbglvl, align 4, !dbg !526, !tbaa !148
  %28 = icmp sgt i32 %27, 4, !dbg !526
  br i1 %28, label %29, label %31, !dbg !529

; <label>:29                                      ; preds = %10
  %30 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %num) #6, !dbg !526
  br label %31, !dbg !526

; <label>:31                                      ; preds = %29, %10
  ret i32 %num, !dbg !530
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_putc(i8 zeroext %ch, i32 %fd) #0 {
  tail call void @llvm.dbg.value(metadata i8 %ch, i64 0, metadata !102, metadata !127), !dbg !531
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !103, metadata !127), !dbg !532
  %1 = load i32* @dbglvl, align 4, !dbg !533, !tbaa !148
  %2 = icmp sgt i32 %1, 4, !dbg !533
  br i1 %2, label %3, label %6, !dbg !536

; <label>:3                                       ; preds = %0
  %4 = zext i8 %ch to i32, !dbg !533
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str22, i64 0, i64 0), i32 %4, i32 %fd) #6, !dbg !533
  br label %6, !dbg !533

; <label>:6                                       ; preds = %3, %0
  %7 = icmp sgt i32 %fd, 3, !dbg !537
  br i1 %7, label %8, label %11, !dbg !539

; <label>:8                                       ; preds = %6
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !540, !tbaa !268
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #6, !dbg !542
  tail call void @exit(i32 0) #7, !dbg !543
  unreachable, !dbg !543

; <label>:11                                      ; preds = %6
  %12 = sext i32 %fd to i64, !dbg !544
  %13 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %12, i32 2, !dbg !545
  %14 = load i32* %13, align 8, !dbg !546, !tbaa !278
  %15 = add nsw i32 %14, 1, !dbg !546
  store i32 %15, i32* %13, align 8, !dbg !546, !tbaa !278
  %16 = sext i32 %14 to i64, !dbg !547
  %17 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %12, i32 3, !dbg !548
  %18 = load i8** %17, align 8, !dbg !548, !tbaa !164
  %19 = getelementptr inbounds i8* %18, i64 %16, !dbg !547
  store i8 %ch, i8* %19, align 1, !dbg !549, !tbaa !174
  %20 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %12, i32 1, !dbg !550
  %21 = load i32* %20, align 4, !dbg !551, !tbaa !256
  %22 = add nsw i32 %21, 1, !dbg !551
  store i32 %22, i32* %20, align 4, !dbg !551, !tbaa !256
  %23 = zext i8 %ch to i32, !dbg !552
  ret i32 %23, !dbg !553
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!117, !118, !119}
!llvm.ident = !{!120}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !104, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/spec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !7, !8}
!4 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10, !19, !29, !42, !55, !63, !72, !76, !83, !86, !89, !94, !100}
!10 = !DISubprogram(name: "ran", scope: !1, file: !1, line: 53, type: !11, isLocal: false, isDefinition: true, scopeLine: 63, isOptimized: true, function: double ()* @ran, variables: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!14 = !{!15, !17, !18}
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !10, file: !1, line: 64, type: !16)
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !10, file: !1, line: 65, type: !16)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "test", scope: !10, file: !1, line: 66, type: !16)
!19 = !DISubprogram(name: "spec_init", scope: !1, file: !1, line: 80, type: !20, isLocal: false, isDefinition: true, scopeLine: 80, isOptimized: true, function: i32 ()* @spec_init, variables: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!8}
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !19, file: !1, line: 81, type: !8)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !19, file: !1, line: 81, type: !8)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !26, file: !1, line: 88, type: !8)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 87, column: 39)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 87, column: 5)
!28 = distinct !DILexicalBlock(scope: !19, file: !1, line: 87, column: 5)
!29 = !DISubprogram(name: "spec_random_load", scope: !1, file: !1, line: 103, type: !30, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @spec_random_load, variables: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!8, !8}
!32 = !{!33, !34, !35, !36}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !29, file: !1, line: 103, type: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !29, file: !1, line: 110, type: !8)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !29, file: !1, line: 110, type: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "random_text", scope: !29, file: !1, line: 111, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 33554432, align: 8, elements: !39)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !{!40, !41}
!40 = !DISubrange(count: 32)
!41 = !DISubrange(count: 131072)
!42 = !DISubprogram(name: "spec_load", scope: !1, file: !1, line: 132, type: !43, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i32)* @spec_load, variables: !46)
!43 = !DISubroutineType(types: !44)
!44 = !{!8, !8, !45, !8}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!46 = !{!47, !48, !49, !50, !51, !52, !53}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 1, scope: !42, file: !1, line: 132, type: !8)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !42, file: !1, line: 132, type: !45)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !42, file: !1, line: 132, type: !8)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !42, file: !1, line: 134, type: !8)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !42, file: !1, line: 134, type: !8)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !42, file: !1, line: 134, type: !8)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !54, file: !1, line: 155, type: !8)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 154, column: 37)
!55 = !DISubprogram(name: "spec_read", scope: !1, file: !1, line: 164, type: !56, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i32)* @spec_read, variables: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!8, !8, !5, !8}
!58 = !{!59, !60, !61, !62}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !55, file: !1, line: 164, type: !8)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !55, file: !1, line: 164, type: !5)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !55, file: !1, line: 164, type: !8)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !55, file: !1, line: 165, type: !8)
!63 = !DISubprogram(name: "spec_fread", scope: !1, file: !1, line: 185, type: !64, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i32, i32)* @spec_fread, variables: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!8, !5, !8, !8, !8}
!66 = !{!67, !68, !69, !70, !71}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !63, file: !1, line: 185, type: !5)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !63, file: !1, line: 185, type: !8)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 3, scope: !63, file: !1, line: 185, type: !8)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 4, scope: !63, file: !1, line: 185, type: !8)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !63, file: !1, line: 186, type: !8)
!72 = !DISubprogram(name: "spec_getc", scope: !1, file: !1, line: 206, type: !30, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @spec_getc, variables: !73)
!73 = !{!74, !75}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !72, file: !1, line: 206, type: !8)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !72, file: !1, line: 207, type: !8)
!76 = !DISubprogram(name: "spec_ungetc", scope: !1, file: !1, line: 221, type: !77, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8, i32)* @spec_ungetc, variables: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!8, !6, !8}
!79 = !{!80, !81, !82}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ch", arg: 1, scope: !76, file: !1, line: 221, type: !6)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 2, scope: !76, file: !1, line: 221, type: !8)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !76, file: !1, line: 222, type: !8)
!83 = !DISubprogram(name: "spec_rewind", scope: !1, file: !1, line: 239, type: !30, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @spec_rewind, variables: !84)
!84 = !{!85}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !83, file: !1, line: 239, type: !8)
!86 = !DISubprogram(name: "spec_reset", scope: !1, file: !1, line: 243, type: !30, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @spec_reset, variables: !87)
!87 = !{!88}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !86, file: !1, line: 243, type: !8)
!89 = !DISubprogram(name: "spec_write", scope: !1, file: !1, line: 249, type: !56, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i32)* @spec_write, variables: !90)
!90 = !{!91, !92, !93}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !89, file: !1, line: 249, type: !8)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !89, file: !1, line: 249, type: !5)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !89, file: !1, line: 249, type: !8)
!94 = !DISubprogram(name: "spec_fwrite", scope: !1, file: !1, line: 261, type: !64, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i32, i32)* @spec_fwrite, variables: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !94, file: !1, line: 261, type: !5)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !94, file: !1, line: 261, type: !8)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 3, scope: !94, file: !1, line: 261, type: !8)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 4, scope: !94, file: !1, line: 261, type: !8)
!100 = !DISubprogram(name: "spec_putc", scope: !1, file: !1, line: 273, type: !77, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8, i32)* @spec_putc, variables: !101)
!101 = !{!102, !103}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ch", arg: 1, scope: !100, file: !1, line: 273, type: !6)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 2, scope: !100, file: !1, line: 273, type: !8)
!104 = !{!105, !106, !116}
!105 = !DIGlobalVariable(name: "dbglvl", scope: !0, file: !1, line: 28, type: !8, isLocal: false, isDefinition: true, variable: i32* @dbglvl)
!106 = !DIGlobalVariable(name: "spec_fd", scope: !0, file: !1, line: 50, type: !107, isLocal: false, isDefinition: true, variable: [3 x %struct.spec_fd_t]* @spec_fd)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 576, align: 64, elements: !114)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "spec_fd_t", file: !1, line: 45, size: 192, align: 64, elements: !109)
!109 = !{!110, !111, !112, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !108, file: !1, line: 46, baseType: !8, size: 32, align: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !108, file: !1, line: 47, baseType: !8, size: 32, align: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !108, file: !1, line: 48, baseType: !8, size: 32, align: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !108, file: !1, line: 49, baseType: !5, size: 64, align: 64, offset: 128)
!114 = !{!115}
!115 = !DISubrange(count: 3)
!116 = !DIGlobalVariable(name: "seedi", scope: !0, file: !1, line: 52, type: !16, isLocal: false, isDefinition: true, variable: i64* @seedi)
!117 = !{i32 2, !"Dwarf Version", i32 2}
!118 = !{i32 2, !"Debug Info Version", i32 700000003}
!119 = !{i32 1, !"PIC Level", i32 2}
!120 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!121 = !DILocation(line: 68, column: 7, scope: !10)
!122 = !{!123, !123, i64 0}
!123 = !{!"long", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !DILocation(line: 68, column: 13, scope: !10)
!127 = !DIExpression()
!128 = !DILocation(line: 65, column: 7, scope: !10)
!129 = !DILocation(line: 69, column: 13, scope: !10)
!130 = !DILocation(line: 64, column: 7, scope: !10)
!131 = !DILocation(line: 70, column: 23, scope: !10)
!132 = !DILocation(line: 70, column: 28, scope: !10)
!133 = !DILocation(line: 66, column: 7, scope: !10)
!134 = !DILocation(line: 71, column: 11, scope: !135)
!135 = distinct !DILexicalBlock(scope: !10, file: !1, line: 71, column: 6)
!136 = !DILocation(line: 74, column: 16, scope: !137)
!137 = distinct !DILexicalBlock(scope: !135, file: !1, line: 73, column: 9)
!138 = !DILocation(line: 71, column: 6, scope: !10)
!139 = !DILocation(line: 72, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 71, column: 16)
!141 = !DILocation(line: 76, column: 11, scope: !10)
!142 = !DILocation(line: 76, column: 25, scope: !10)
!143 = !DILocation(line: 76, column: 9, scope: !10)
!144 = !DILocation(line: 76, column: 2, scope: !10)
!145 = !DILocation(line: 82, column: 5, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 82, column: 5)
!147 = distinct !DILexicalBlock(scope: !19, file: !1, line: 82, column: 5)
!148 = !{!149, !149, i64 0}
!149 = !{!"int", !124, i64 0}
!150 = !DILocation(line: 82, column: 5, scope: !147)
!151 = !DILocation(line: 88, column: 14, scope: !26)
!152 = !DILocation(line: 88, column: 25, scope: !26)
!153 = !{!154, !149, i64 0}
!154 = !{!"spec_fd_t", !149, i64 0, !149, i64 4, !149, i64 8, !155, i64 16}
!155 = !{!"any pointer", !124, i64 0}
!156 = !DILocation(line: 88, column: 6, scope: !26)
!157 = !DILocation(line: 89, column: 2, scope: !26)
!158 = !DILocation(line: 90, column: 19, scope: !26)
!159 = !DILocation(line: 91, column: 48, scope: !26)
!160 = !DILocation(line: 91, column: 43, scope: !26)
!161 = !DILocation(line: 91, column: 36, scope: !26)
!162 = !DILocation(line: 91, column: 13, scope: !26)
!163 = !DILocation(line: 91, column: 17, scope: !26)
!164 = !{!154, !155, i64 16}
!165 = !DILocation(line: 92, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !26, file: !1, line: 92, column: 6)
!167 = !DILocation(line: 92, column: 6, scope: !26)
!168 = !DILocation(line: 96, column: 16, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 96, column: 2)
!170 = distinct !DILexicalBlock(scope: !26, file: !1, line: 96, column: 2)
!171 = !DILocation(line: 96, column: 2, scope: !170)
!172 = !DILocation(line: 97, column: 24, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 96, column: 34)
!174 = !{!124, !124, i64 0}
!175 = !DILocation(line: 93, column: 6, scope: !176)
!176 = distinct !DILexicalBlock(scope: !166, file: !1, line: 92, column: 30)
!177 = !DILocation(line: 94, column: 6, scope: !176)
!178 = !DILocation(line: 97, column: 17, scope: !173)
!179 = !DILocation(line: 97, column: 6, scope: !173)
!180 = !DILocation(line: 87, column: 5, scope: !28)
!181 = !DILocation(line: 87, column: 19, scope: !27)
!182 = !DILocation(line: 100, column: 5, scope: !19)
!183 = !DILocation(line: 103, column: 27, scope: !29)
!184 = !DILocation(line: 111, column: 5, scope: !29)
!185 = !DILocation(line: 111, column: 10, scope: !29)
!186 = !DILocation(line: 113, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 113, column: 5)
!188 = distinct !DILexicalBlock(scope: !29, file: !1, line: 113, column: 5)
!189 = !DILocation(line: 113, column: 5, scope: !188)
!190 = !DILocation(line: 115, column: 2, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 115, column: 2)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 115, column: 2)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 114, column: 41)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 114, column: 5)
!195 = distinct !DILexicalBlock(scope: !29, file: !1, line: 114, column: 5)
!196 = !DILocation(line: 114, column: 19, scope: !194)
!197 = !DILocation(line: 114, column: 5, scope: !195)
!198 = !DILocation(line: 115, column: 2, scope: !192)
!199 = !DILocation(line: 117, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 116, column: 42)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 116, column: 2)
!202 = distinct !DILexicalBlock(scope: !193, file: !1, line: 116, column: 2)
!203 = !DILocation(line: 72, column: 9, scope: !140, inlinedAt: !204)
!204 = distinct !DILocation(line: 117, column: 32, scope: !200)
!205 = !DILocation(line: 116, column: 2, scope: !202)
!206 = !DILocation(line: 68, column: 7, scope: !10, inlinedAt: !204)
!207 = !DILocation(line: 68, column: 13, scope: !10, inlinedAt: !204)
!208 = !DILocation(line: 65, column: 7, scope: !10, inlinedAt: !204)
!209 = !DILocation(line: 69, column: 13, scope: !10, inlinedAt: !204)
!210 = !DILocation(line: 64, column: 7, scope: !10, inlinedAt: !204)
!211 = !DILocation(line: 70, column: 23, scope: !10, inlinedAt: !204)
!212 = !DILocation(line: 70, column: 28, scope: !10, inlinedAt: !204)
!213 = !DILocation(line: 66, column: 7, scope: !10, inlinedAt: !204)
!214 = !DILocation(line: 71, column: 11, scope: !135, inlinedAt: !204)
!215 = !DILocation(line: 74, column: 16, scope: !137, inlinedAt: !204)
!216 = !DILocation(line: 71, column: 6, scope: !10, inlinedAt: !204)
!217 = !DILocation(line: 76, column: 11, scope: !10, inlinedAt: !204)
!218 = !DILocation(line: 76, column: 25, scope: !10, inlinedAt: !204)
!219 = !DILocation(line: 76, column: 9, scope: !10, inlinedAt: !204)
!220 = !DILocation(line: 117, column: 37, scope: !200)
!221 = !DILocation(line: 117, column: 26, scope: !200)
!222 = !DILocation(line: 117, column: 24, scope: !200)
!223 = !DILocation(line: 114, column: 37, scope: !194)
!224 = !DILocation(line: 110, column: 9, scope: !29)
!225 = !DILocation(line: 114, column: 5, scope: !194)
!226 = !DILocation(line: 121, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 121, column: 5)
!228 = distinct !DILexicalBlock(scope: !29, file: !1, line: 121, column: 5)
!229 = !DILocation(line: 121, column: 5, scope: !228)
!230 = !DILocation(line: 123, column: 22, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 123, column: 5)
!232 = distinct !DILexicalBlock(scope: !29, file: !1, line: 123, column: 5)
!233 = !DILocation(line: 123, column: 34, scope: !231)
!234 = !DILocation(line: 123, column: 20, scope: !231)
!235 = !DILocation(line: 123, column: 5, scope: !232)
!236 = !DILocation(line: 124, column: 2, scope: !237)
!237 = distinct !DILexicalBlock(scope: !231, file: !1, line: 123, column: 64)
!238 = !DILocation(line: 68, column: 7, scope: !10, inlinedAt: !239)
!239 = distinct !DILocation(line: 124, column: 2, scope: !237)
!240 = !DILocation(line: 68, column: 13, scope: !10, inlinedAt: !239)
!241 = !DILocation(line: 65, column: 7, scope: !10, inlinedAt: !239)
!242 = !DILocation(line: 69, column: 13, scope: !10, inlinedAt: !239)
!243 = !DILocation(line: 64, column: 7, scope: !10, inlinedAt: !239)
!244 = !DILocation(line: 70, column: 23, scope: !10, inlinedAt: !239)
!245 = !DILocation(line: 70, column: 28, scope: !10, inlinedAt: !239)
!246 = !DILocation(line: 66, column: 7, scope: !10, inlinedAt: !239)
!247 = !DILocation(line: 71, column: 11, scope: !135, inlinedAt: !239)
!248 = !DILocation(line: 74, column: 16, scope: !137, inlinedAt: !239)
!249 = !DILocation(line: 71, column: 6, scope: !10, inlinedAt: !239)
!250 = !DILocation(line: 72, column: 9, scope: !140, inlinedAt: !239)
!251 = !DILocation(line: 76, column: 11, scope: !10, inlinedAt: !239)
!252 = !DILocation(line: 76, column: 25, scope: !10, inlinedAt: !239)
!253 = !DILocation(line: 76, column: 9, scope: !10, inlinedAt: !239)
!254 = !DILocation(line: 128, column: 17, scope: !29)
!255 = !DILocation(line: 128, column: 21, scope: !29)
!256 = !{!154, !149, i64 4}
!257 = !DILocation(line: 130, column: 1, scope: !29)
!258 = !DILocation(line: 132, column: 20, scope: !42)
!259 = !DILocation(line: 132, column: 31, scope: !42)
!260 = !DILocation(line: 132, column: 45, scope: !42)
!261 = !DILocation(line: 138, column: 10, scope: !42)
!262 = !DILocation(line: 134, column: 9, scope: !42)
!263 = !DILocation(line: 139, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !42, file: !1, line: 139, column: 9)
!265 = !DILocation(line: 139, column: 9, scope: !42)
!266 = !DILocation(line: 140, column: 10, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 139, column: 17)
!268 = !{!155, !155, i64 0}
!269 = !DILocation(line: 140, column: 65, scope: !267)
!270 = !DILocation(line: 140, column: 56, scope: !267)
!271 = !DILocation(line: 140, column: 2, scope: !267)
!272 = !DILocation(line: 141, column: 2, scope: !267)
!273 = !DILocation(line: 143, column: 24, scope: !42)
!274 = !DILocation(line: 143, column: 37, scope: !42)
!275 = !DILocation(line: 143, column: 41, scope: !42)
!276 = !DILocation(line: 143, column: 18, scope: !42)
!277 = !DILocation(line: 143, column: 22, scope: !42)
!278 = !{!154, !149, i64 8}
!279 = !DILocation(line: 134, column: 17, scope: !42)
!280 = !DILocation(line: 144, column: 20, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 144, column: 5)
!282 = distinct !DILexicalBlock(scope: !42, file: !1, line: 144, column: 5)
!283 = !DILocation(line: 144, column: 5, scope: !282)
!284 = !DILocation(line: 145, column: 29, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 144, column: 36)
!286 = !DILocation(line: 145, column: 32, scope: !285)
!287 = !DILocation(line: 145, column: 7, scope: !285)
!288 = !DILocation(line: 134, column: 13, scope: !42)
!289 = !DILocation(line: 146, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 146, column: 6)
!291 = !DILocation(line: 146, column: 6, scope: !285)
!292 = !DILocation(line: 147, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !1, line: 147, column: 6)
!294 = !DILocation(line: 147, column: 6, scope: !285)
!295 = !DILocation(line: 148, column: 14, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !1, line: 147, column: 14)
!297 = !DILocation(line: 148, column: 72, scope: !296)
!298 = !DILocation(line: 148, column: 63, scope: !296)
!299 = !DILocation(line: 148, column: 6, scope: !296)
!300 = !DILocation(line: 149, column: 6, scope: !296)
!301 = !DILocation(line: 151, column: 19, scope: !285)
!302 = !DILocation(line: 144, column: 29, scope: !281)
!303 = !DILocation(line: 153, column: 5, scope: !42)
!304 = !DILocation(line: 154, column: 25, scope: !42)
!305 = !DILocation(line: 154, column: 29, scope: !42)
!306 = !DILocation(line: 154, column: 5, scope: !42)
!307 = !DILocation(line: 158, column: 2, scope: !54)
!308 = !DILocation(line: 155, column: 17, scope: !54)
!309 = !DILocation(line: 155, column: 6, scope: !54)
!310 = !DILocation(line: 156, column: 10, scope: !311)
!311 = distinct !DILexicalBlock(scope: !54, file: !1, line: 156, column: 6)
!312 = !DILocation(line: 156, column: 6, scope: !54)
!313 = !DILocation(line: 157, column: 2, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 157, column: 2)
!315 = distinct !DILexicalBlock(scope: !54, file: !1, line: 157, column: 2)
!316 = !DILocation(line: 157, column: 2, scope: !315)
!317 = !DILocation(line: 159, column: 19, scope: !54)
!318 = !DILocation(line: 161, column: 5, scope: !42)
!319 = !DILocation(line: 164, column: 20, scope: !55)
!320 = !DILocation(line: 164, column: 39, scope: !55)
!321 = !DILocation(line: 164, column: 48, scope: !55)
!322 = !DILocation(line: 165, column: 9, scope: !55)
!323 = !DILocation(line: 166, column: 5, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 166, column: 5)
!325 = distinct !DILexicalBlock(scope: !55, file: !1, line: 166, column: 5)
!326 = !DILocation(line: 166, column: 5, scope: !325)
!327 = !DILocation(line: 167, column: 12, scope: !328)
!328 = distinct !DILexicalBlock(scope: !55, file: !1, line: 167, column: 9)
!329 = !DILocation(line: 167, column: 9, scope: !55)
!330 = !DILocation(line: 168, column: 10, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !1, line: 167, column: 27)
!332 = !DILocation(line: 168, column: 2, scope: !331)
!333 = !DILocation(line: 169, column: 2, scope: !331)
!334 = !DILocation(line: 171, column: 9, scope: !335)
!335 = distinct !DILexicalBlock(scope: !55, file: !1, line: 171, column: 9)
!336 = !DILocation(line: 171, column: 21, scope: !335)
!337 = !DILocation(line: 171, column: 40, scope: !335)
!338 = !DILocation(line: 171, column: 25, scope: !335)
!339 = !DILocation(line: 171, column: 9, scope: !55)
!340 = !DILocation(line: 172, column: 2, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 172, column: 2)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 172, column: 2)
!343 = distinct !DILexicalBlock(scope: !335, file: !1, line: 171, column: 45)
!344 = !DILocation(line: 172, column: 2, scope: !342)
!345 = !DILocation(line: 175, column: 25, scope: !346)
!346 = distinct !DILexicalBlock(scope: !55, file: !1, line: 175, column: 9)
!347 = !DILocation(line: 175, column: 32, scope: !346)
!348 = !DILocation(line: 176, column: 23, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !1, line: 175, column: 52)
!350 = !DILocation(line: 175, column: 9, scope: !55)
!351 = !DILocation(line: 180, column: 5, scope: !55)
!352 = !DILocation(line: 181, column: 21, scope: !55)
!353 = !DILocation(line: 182, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 182, column: 5)
!355 = distinct !DILexicalBlock(scope: !55, file: !1, line: 182, column: 5)
!356 = !DILocation(line: 182, column: 5, scope: !355)
!357 = !DILocation(line: 184, column: 1, scope: !55)
!358 = !DILocation(line: 185, column: 32, scope: !63)
!359 = !DILocation(line: 185, column: 41, scope: !63)
!360 = !DILocation(line: 185, column: 51, scope: !63)
!361 = !DILocation(line: 185, column: 60, scope: !63)
!362 = !DILocation(line: 186, column: 9, scope: !63)
!363 = !DILocation(line: 187, column: 5, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 187, column: 5)
!365 = distinct !DILexicalBlock(scope: !63, file: !1, line: 187, column: 5)
!366 = !DILocation(line: 187, column: 5, scope: !365)
!367 = !DILocation(line: 188, column: 12, scope: !368)
!368 = distinct !DILexicalBlock(scope: !63, file: !1, line: 188, column: 9)
!369 = !DILocation(line: 188, column: 9, scope: !63)
!370 = !DILocation(line: 189, column: 10, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !1, line: 188, column: 27)
!372 = !DILocation(line: 189, column: 2, scope: !371)
!373 = !DILocation(line: 190, column: 2, scope: !371)
!374 = !DILocation(line: 192, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !63, file: !1, line: 192, column: 9)
!376 = !DILocation(line: 192, column: 21, scope: !375)
!377 = !DILocation(line: 192, column: 40, scope: !375)
!378 = !DILocation(line: 192, column: 25, scope: !375)
!379 = !DILocation(line: 192, column: 9, scope: !63)
!380 = !DILocation(line: 193, column: 2, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 193, column: 2)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 193, column: 2)
!383 = distinct !DILexicalBlock(scope: !375, file: !1, line: 192, column: 45)
!384 = !DILocation(line: 193, column: 2, scope: !382)
!385 = !DILocation(line: 196, column: 32, scope: !386)
!386 = distinct !DILexicalBlock(scope: !63, file: !1, line: 196, column: 9)
!387 = !DILocation(line: 196, column: 25, scope: !386)
!388 = !DILocation(line: 196, column: 38, scope: !386)
!389 = !DILocation(line: 196, column: 9, scope: !63)
!390 = !DILocation(line: 197, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !1, line: 196, column: 58)
!392 = !DILocation(line: 197, column: 43, scope: !391)
!393 = !DILocation(line: 198, column: 5, scope: !391)
!394 = !DILocation(line: 201, column: 5, scope: !63)
!395 = !DILocation(line: 202, column: 27, scope: !63)
!396 = !DILocation(line: 202, column: 21, scope: !63)
!397 = !DILocation(line: 203, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 203, column: 5)
!399 = distinct !DILexicalBlock(scope: !63, file: !1, line: 203, column: 5)
!400 = !DILocation(line: 203, column: 5, scope: !399)
!401 = !DILocation(line: 205, column: 1, scope: !63)
!402 = !DILocation(line: 206, column: 20, scope: !72)
!403 = !DILocation(line: 207, column: 9, scope: !72)
!404 = !DILocation(line: 208, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 208, column: 5)
!406 = distinct !DILexicalBlock(scope: !72, file: !1, line: 208, column: 5)
!407 = !DILocation(line: 208, column: 5, scope: !406)
!408 = !DILocation(line: 209, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !72, file: !1, line: 209, column: 9)
!410 = !DILocation(line: 209, column: 9, scope: !72)
!411 = !DILocation(line: 210, column: 10, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !1, line: 209, column: 27)
!413 = !DILocation(line: 210, column: 2, scope: !412)
!414 = !DILocation(line: 211, column: 2, scope: !412)
!415 = !DILocation(line: 213, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !72, file: !1, line: 213, column: 9)
!417 = !DILocation(line: 213, column: 21, scope: !416)
!418 = !DILocation(line: 213, column: 40, scope: !416)
!419 = !DILocation(line: 213, column: 25, scope: !416)
!420 = !DILocation(line: 213, column: 9, scope: !72)
!421 = !DILocation(line: 214, column: 2, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 214, column: 2)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 214, column: 2)
!424 = distinct !DILexicalBlock(scope: !416, file: !1, line: 213, column: 45)
!425 = !DILocation(line: 214, column: 2, scope: !423)
!426 = !DILocation(line: 217, column: 41, scope: !72)
!427 = !DILocation(line: 217, column: 10, scope: !72)
!428 = !DILocation(line: 217, column: 22, scope: !72)
!429 = !DILocation(line: 218, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 218, column: 5)
!431 = distinct !DILexicalBlock(scope: !72, file: !1, line: 218, column: 5)
!432 = !DILocation(line: 218, column: 5, scope: !431)
!433 = !DILocation(line: 220, column: 1, scope: !72)
!434 = !DILocation(line: 221, column: 32, scope: !76)
!435 = !DILocation(line: 221, column: 40, scope: !76)
!436 = !DILocation(line: 222, column: 9, scope: !76)
!437 = !DILocation(line: 223, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 223, column: 5)
!439 = distinct !DILexicalBlock(scope: !76, file: !1, line: 223, column: 5)
!440 = !DILocation(line: 223, column: 5, scope: !439)
!441 = !DILocation(line: 224, column: 12, scope: !442)
!442 = distinct !DILexicalBlock(scope: !76, file: !1, line: 224, column: 9)
!443 = !DILocation(line: 224, column: 9, scope: !76)
!444 = !DILocation(line: 225, column: 10, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !1, line: 224, column: 27)
!446 = !DILocation(line: 225, column: 2, scope: !445)
!447 = !DILocation(line: 226, column: 2, scope: !445)
!448 = !DILocation(line: 228, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !76, file: !1, line: 228, column: 9)
!450 = !DILocation(line: 228, column: 21, scope: !449)
!451 = !DILocation(line: 228, column: 25, scope: !449)
!452 = !DILocation(line: 228, column: 9, scope: !76)
!453 = !DILocation(line: 229, column: 10, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !1, line: 228, column: 31)
!455 = !DILocation(line: 229, column: 2, scope: !454)
!456 = !DILocation(line: 230, column: 2, scope: !454)
!457 = !DILocation(line: 232, column: 25, scope: !458)
!458 = distinct !DILexicalBlock(scope: !76, file: !1, line: 232, column: 9)
!459 = !DILocation(line: 232, column: 9, scope: !458)
!460 = !DILocation(line: 232, column: 21, scope: !458)
!461 = !DILocation(line: 232, column: 47, scope: !458)
!462 = !DILocation(line: 232, column: 44, scope: !458)
!463 = !DILocation(line: 232, column: 9, scope: !76)
!464 = !DILocation(line: 233, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !458, file: !1, line: 232, column: 51)
!466 = !DILocation(line: 233, column: 2, scope: !465)
!467 = !DILocation(line: 234, column: 2, scope: !465)
!468 = !DILocation(line: 236, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 236, column: 5)
!470 = distinct !DILexicalBlock(scope: !76, file: !1, line: 236, column: 5)
!471 = !DILocation(line: 236, column: 5, scope: !470)
!472 = !DILocation(line: 237, column: 5, scope: !76)
!473 = !DILocation(line: 239, column: 21, scope: !83)
!474 = !DILocation(line: 240, column: 5, scope: !83)
!475 = !DILocation(line: 240, column: 17, scope: !83)
!476 = !DILocation(line: 240, column: 21, scope: !83)
!477 = !DILocation(line: 241, column: 5, scope: !83)
!478 = !DILocation(line: 243, column: 20, scope: !86)
!479 = !DILocation(line: 244, column: 5, scope: !86)
!480 = !DILocation(line: 245, column: 39, scope: !86)
!481 = !DILocation(line: 245, column: 17, scope: !86)
!482 = !DILocation(line: 245, column: 21, scope: !86)
!483 = !DILocation(line: 246, column: 5, scope: !86)
!484 = !DILocation(line: 249, column: 20, scope: !89)
!485 = !DILocation(line: 249, column: 39, scope: !89)
!486 = !DILocation(line: 249, column: 48, scope: !89)
!487 = !DILocation(line: 250, column: 5, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 250, column: 5)
!489 = distinct !DILexicalBlock(scope: !89, file: !1, line: 250, column: 5)
!490 = !DILocation(line: 250, column: 5, scope: !489)
!491 = !DILocation(line: 251, column: 12, scope: !492)
!492 = distinct !DILexicalBlock(scope: !89, file: !1, line: 251, column: 9)
!493 = !DILocation(line: 251, column: 9, scope: !89)
!494 = !DILocation(line: 252, column: 10, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !1, line: 251, column: 27)
!496 = !DILocation(line: 252, column: 2, scope: !495)
!497 = !DILocation(line: 253, column: 2, scope: !495)
!498 = !DILocation(line: 255, column: 5, scope: !89)
!499 = !DILocation(line: 256, column: 17, scope: !89)
!500 = !DILocation(line: 256, column: 21, scope: !89)
!501 = !DILocation(line: 257, column: 21, scope: !89)
!502 = !DILocation(line: 258, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 258, column: 5)
!504 = distinct !DILexicalBlock(scope: !89, file: !1, line: 258, column: 5)
!505 = !DILocation(line: 258, column: 5, scope: !504)
!506 = !DILocation(line: 259, column: 5, scope: !89)
!507 = !DILocation(line: 261, column: 32, scope: !94)
!508 = !DILocation(line: 261, column: 41, scope: !94)
!509 = !DILocation(line: 261, column: 51, scope: !94)
!510 = !DILocation(line: 261, column: 60, scope: !94)
!511 = !DILocation(line: 262, column: 5, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 262, column: 5)
!513 = distinct !DILexicalBlock(scope: !94, file: !1, line: 262, column: 5)
!514 = !DILocation(line: 262, column: 5, scope: !513)
!515 = !DILocation(line: 263, column: 12, scope: !516)
!516 = distinct !DILexicalBlock(scope: !94, file: !1, line: 263, column: 9)
!517 = !DILocation(line: 263, column: 9, scope: !94)
!518 = !DILocation(line: 264, column: 10, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !1, line: 263, column: 27)
!520 = !DILocation(line: 264, column: 2, scope: !519)
!521 = !DILocation(line: 265, column: 2, scope: !519)
!522 = !DILocation(line: 267, column: 5, scope: !94)
!523 = !DILocation(line: 268, column: 17, scope: !94)
!524 = !DILocation(line: 268, column: 21, scope: !94)
!525 = !DILocation(line: 269, column: 21, scope: !94)
!526 = !DILocation(line: 270, column: 5, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 270, column: 5)
!528 = distinct !DILexicalBlock(scope: !94, file: !1, line: 270, column: 5)
!529 = !DILocation(line: 270, column: 5, scope: !528)
!530 = !DILocation(line: 271, column: 5, scope: !94)
!531 = !DILocation(line: 273, column: 29, scope: !100)
!532 = !DILocation(line: 273, column: 37, scope: !100)
!533 = !DILocation(line: 274, column: 5, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 274, column: 5)
!535 = distinct !DILexicalBlock(scope: !100, file: !1, line: 274, column: 5)
!536 = !DILocation(line: 274, column: 5, scope: !535)
!537 = !DILocation(line: 275, column: 12, scope: !538)
!538 = distinct !DILexicalBlock(scope: !100, file: !1, line: 275, column: 9)
!539 = !DILocation(line: 275, column: 9, scope: !100)
!540 = !DILocation(line: 276, column: 10, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !1, line: 275, column: 27)
!542 = !DILocation(line: 276, column: 2, scope: !541)
!543 = !DILocation(line: 277, column: 2, scope: !541)
!544 = !DILocation(line: 279, column: 21, scope: !100)
!545 = !DILocation(line: 279, column: 33, scope: !100)
!546 = !DILocation(line: 279, column: 36, scope: !100)
!547 = !DILocation(line: 279, column: 5, scope: !100)
!548 = !DILocation(line: 279, column: 17, scope: !100)
!549 = !DILocation(line: 279, column: 40, scope: !100)
!550 = !DILocation(line: 280, column: 17, scope: !100)
!551 = !DILocation(line: 280, column: 21, scope: !100)
!552 = !DILocation(line: 281, column: 12, scope: !100)
!553 = !DILocation(line: 281, column: 5, scope: !100)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/strdb.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@get_a_line.line0 = internal unnamed_addr global i8* null, align 8
@get_a_line.nalloc = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"line0\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/strdb.c\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [74 x i8] c"Warning: line length exceeds buffer length (%d), data might be corrupted\0A\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"Warning: file does not end with a newline, last line:\0A%s\0A\00", align 1
@.str4 = private unnamed_addr constant [40 x i8] c"header is not terminated on line:\0A'%s'\0A\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%s%*s\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@warn_buf = external global [1024 x i8]
@.str7 = private unnamed_addr constant [17 x i8] c"File %s is empty\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"File is empty\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !12, metadata !151), !dbg !152
  %1 = icmp sgt i32 %__signo, 32, !dbg !153
  br i1 %1, label %5, label %2, !dbg !154

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !155
  %4 = shl i32 1, %3, !dbg !156
  br label %5, !dbg !154

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !154
  ret i32 %6, !dbg !157
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_a_line(%struct.__sFILE* nocapture %fp, i8* %line, i32 %n) #2 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !79, metadata !151), !dbg !158
  tail call void @llvm.dbg.value(metadata i8* %line, i64 0, metadata !80, metadata !151), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !81, metadata !151), !dbg !160
  %1 = load i32* @get_a_line.nalloc, align 4, !dbg !161, !tbaa !163
  %2 = icmp slt i32 %1, %n, !dbg !167
  br i1 %2, label %3, label %..preheader_crit_edge, !dbg !168

..preheader_crit_edge:                            ; preds = %0
  %.pre1 = add nsw i32 %n, 1, !dbg !169
  br label %.preheader, !dbg !168

; <label>:3                                       ; preds = %0
  store i32 %n, i32* @get_a_line.nalloc, align 4, !dbg !172, !tbaa !163
  %4 = load i8** @get_a_line.line0, align 8, !dbg !174, !tbaa !175
  %5 = add nsw i32 %n, 1, !dbg !174
  %6 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 49, i8* %4, i32 %5) #8, !dbg !174
  store i8* %6, i8** @get_a_line.line0, align 8, !dbg !174, !tbaa !175
  br label %.preheader, !dbg !177

.preheader:                                       ; preds = %..preheader_crit_edge, %3
  %.pre-phi = phi i32 [ %.pre1, %..preheader_crit_edge ], [ %5, %3 ], !dbg !169
  %7 = sext i32 %n to i64, !dbg !178
  %8 = add nsw i32 %n, -1, !dbg !181
  %9 = sext i32 %8 to i64, !dbg !183
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %line, i1 false), !dbg !184
  br label %11, !dbg !185

; <label>:11                                      ; preds = %.preheader, %35
  %12 = load i8** @get_a_line.line0, align 8, !dbg !185, !tbaa !175
  %13 = tail call i8* @fgets(i8* %12, i32 %.pre-phi, %struct.__sFILE* %fp) #8, !dbg !186
  %14 = icmp eq i8* %13, null, !dbg !186
  br i1 %14, label %41, label %15, !dbg !187

; <label>:15                                      ; preds = %11
  %16 = load i8** @get_a_line.line0, align 8, !dbg !188, !tbaa !175
  %17 = tail call i8* @strchr(i8* %16, i32 10) #8, !dbg !189
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !82, metadata !151), !dbg !190
  %18 = icmp eq i8* %17, null, !dbg !191
  br i1 %18, label %20, label %19, !dbg !192

; <label>:19                                      ; preds = %15
  store i8 0, i8* %17, align 1, !dbg !193, !tbaa !194
  br label %30, !dbg !195

; <label>:20                                      ; preds = %15
  %21 = tail call i64 @strlen(i8* %16) #8, !dbg !196
  %22 = icmp eq i64 %21, %7, !dbg !197
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !198, !tbaa !175
  br i1 %22, label %24, label %28, !dbg !199

; <label>:24                                      ; preds = %20
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([74 x i8]* @.str2, i64 0, i64 0), i32 %n) #8, !dbg !200
  %26 = load i8** @get_a_line.line0, align 8, !dbg !183, !tbaa !175
  %27 = getelementptr inbounds i8* %26, i64 %9, !dbg !183
  store i8 0, i8* %27, align 1, !dbg !201, !tbaa !194
  br label %30, !dbg !202

; <label>:28                                      ; preds = %20
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), i8* %16) #8, !dbg !203
  br label %30

; <label>:30                                      ; preds = %24, %28, %19
  %31 = load i8** @get_a_line.line0, align 8, !dbg !204, !tbaa !175
  %32 = tail call i8* @strchr(i8* %31, i32 59) #8, !dbg !205
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !82, metadata !151), !dbg !190
  %33 = icmp eq i8* %32, null, !dbg !206
  br i1 %33, label %35, label %34, !dbg !208

; <label>:34                                      ; preds = %30
  store i8 0, i8* %32, align 1, !dbg !209, !tbaa !194
  %.pre = load i8** @get_a_line.line0, align 8, !dbg !184, !tbaa !175
  br label %35, !dbg !210

; <label>:35                                      ; preds = %30, %34
  %36 = phi i8* [ %31, %30 ], [ %.pre, %34 ]
  %37 = tail call i8* @__strcpy_chk(i8* %line, i8* %36, i64 %10) #8, !dbg !184
  %38 = load i8** @get_a_line.line0, align 8, !dbg !211, !tbaa !175
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !82, metadata !151), !dbg !190
  tail call void @ltrim(i8* %38) #8, !dbg !212
  %39 = load i8* %38, align 1, !dbg !213, !tbaa !194
  %40 = icmp eq i8 %39, 0, !dbg !214
  br i1 %40, label %11, label %41, !dbg !215

; <label>:41                                      ; preds = %35, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %35 ]
  ret i32 %.0, !dbg !216
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: optsize
declare void @ltrim(i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_header(i8* %line, i8* %header) #2 {
  %temp = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %line, i64 0, metadata !87, metadata !151), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* %header, i64 0, metadata !88, metadata !151), !dbg !218
  %1 = getelementptr inbounds [4096 x i8]* %temp, i64 0, i64 0, !dbg !219
  call void @llvm.lifetime.start(i64 4096, i8* %1) #6, !dbg !219
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %temp, metadata !89, metadata !151), !dbg !220
  %2 = call i8* @__strcpy_chk(i8* %1, i8* %line, i64 4096) #8, !dbg !221
  %3 = call i8* @strchr(i8* %1, i32 91) #8, !dbg !222
  call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !93, metadata !151), !dbg !223
  %4 = icmp eq i8* %3, null, !dbg !224
  br i1 %4, label %12, label %5, !dbg !226

; <label>:5                                       ; preds = %0
  store i8 32, i8* %3, align 1, !dbg !227, !tbaa !194
  %6 = call i8* @strchr(i8* %1, i32 93) #8, !dbg !228
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !93, metadata !151), !dbg !223
  %7 = icmp eq i8* %6, null, !dbg !229
  br i1 %7, label %8, label %9, !dbg !231

; <label>:8                                       ; preds = %5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %line) #8, !dbg !232
  br label %12, !dbg !234

; <label>:9                                       ; preds = %5
  store i8 0, i8* %6, align 1, !dbg !235, !tbaa !194
  %10 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %header) #8, !dbg !236
  %11 = icmp eq i32 %10, 1, !dbg !238
  %. = zext i1 %11 to i32, !dbg !239
  br label %12, !dbg !239

; <label>:12                                      ; preds = %9, %0, %8
  %.0 = phi i32 [ 0, %8 ], [ 0, %0 ], [ %., %9 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #6, !dbg !240
  ret i32 %.0, !dbg !240
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_strings(i8* %db, i8*** nocapture %strings) #2 {
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %db, i64 0, metadata !100, metadata !151), !dbg !241
  tail call void @llvm.dbg.value(metadata i8*** %strings, i64 0, metadata !101, metadata !151), !dbg !242
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !243
  call void @llvm.lifetime.start(i64 256, i8* %1) #6, !dbg !243
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !104, metadata !151), !dbg !244
  %2 = tail call %struct.__sFILE* @libopen(i8* %db) #8, !dbg !245
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %2, i64 0, metadata !102, metadata !151), !dbg !246
  tail call void @set_warning_line(i8* %db, i32 1) #8, !dbg !247
  tail call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !109, metadata !151), !dbg !248
  %3 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %2, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #8, !dbg !249
  %4 = icmp eq i32 %3, 1, !dbg !251
  br i1 %4, label %7, label %5, !dbg !252

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0), i8* %db) #8, !dbg !253
  call void @warning(i8* null) #8, !dbg !255
  call void @ffclose(%struct.__sFILE* %2) #8, !dbg !256
  br label %21, !dbg !257

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !109, metadata !151), !dbg !248
  %8 = load i32* %nstr, align 4, !dbg !258, !tbaa !163
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 112, i32 %8, i32 8) #8, !dbg !258
  %10 = bitcast i8* %9 to i8**, !dbg !258
  call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !103, metadata !151), !dbg !259
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !108, metadata !151), !dbg !260
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !109, metadata !151), !dbg !248
  %11 = load i32* %nstr, align 4, !dbg !261, !tbaa !163
  %12 = icmp sgt i32 %11, 0, !dbg !264
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !265

.lr.ph:                                           ; preds = %7, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %7 ]
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %2, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %1) #8, !dbg !266
  %14 = call i8* @strdup(i8* %1) #8, !dbg !268
  %15 = getelementptr inbounds i8** %10, i64 %indvars.iv, !dbg !269
  store i8* %14, i8** %15, align 8, !dbg !270, !tbaa !175
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !265
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !109, metadata !151), !dbg !248
  %16 = load i32* %nstr, align 4, !dbg !261, !tbaa !163
  %17 = sext i32 %16 to i64, !dbg !264
  %18 = icmp slt i64 %indvars.iv.next, %17, !dbg !264
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !265

._crit_edge:                                      ; preds = %.lr.ph, %7
  call void @ffclose(%struct.__sFILE* %2) #8, !dbg !271
  %19 = bitcast i8*** %strings to i8**, !dbg !272
  store i8* %9, i8** %19, align 8, !dbg !272, !tbaa !175
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !109, metadata !151), !dbg !248
  %20 = load i32* %nstr, align 4, !dbg !273, !tbaa !163
  br label %21, !dbg !274

; <label>:21                                      ; preds = %._crit_edge, %5
  %.0 = phi i32 [ 0, %5 ], [ %20, %._crit_edge ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #6, !dbg !275
  ret i32 %.0, !dbg !275
}

; Function Attrs: optsize
declare %struct.__sFILE* @libopen(i8*) #3

; Function Attrs: optsize
declare void @set_warning_line(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: optsize
declare void @warning(i8*) #3

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @search_str(i32 %nstr, i8** nocapture readonly %str, i8* nocapture readonly %key) #7 {
  tail call void @llvm.dbg.value(metadata i32 %nstr, i64 0, metadata !114, metadata !151), !dbg !276
  tail call void @llvm.dbg.value(metadata i8** %str, i64 0, metadata !115, metadata !151), !dbg !277
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !116, metadata !151), !dbg !278
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !151), !dbg !279
  %1 = icmp sgt i32 %nstr, 0, !dbg !280
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !283

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nstr to i64, !dbg !283
  br label %3, !dbg !283

; <label>:3                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %4 = getelementptr inbounds i8** %str, i64 %indvars.iv, !dbg !284
  %5 = load i8** %4, align 8, !dbg !284, !tbaa !175
  %6 = tail call i32 @strcasecmp(i8* %5, i8* %key) #8, !dbg !286
  %7 = icmp eq i32 %6, 0, !dbg !287
  br i1 %7, label %._crit_edge2, label %8, !dbg !288

; <label>:8                                       ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !283
  %9 = icmp slt i64 %indvars.iv.next, %2, !dbg !280
  br i1 %9, label %3, label %._crit_edge, !dbg !283

._crit_edge2:                                     ; preds = %3
  %10 = trunc i64 %indvars.iv to i32, !dbg !288
  br label %._crit_edge, !dbg !288

._crit_edge:                                      ; preds = %8, %._crit_edge2, %0
  %.0 = phi i32 [ %10, %._crit_edge2 ], [ -1, %0 ], [ -1, %8 ]
  ret i32 %.0, !dbg !289
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fget_lines(%struct.__sFILE* %in, i8*** nocapture %strings) #2 {
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %in, i64 0, metadata !122, metadata !151), !dbg !290
  tail call void @llvm.dbg.value(metadata i8*** %strings, i64 0, metadata !123, metadata !151), !dbg !291
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !292
  call void @llvm.lifetime.start(i64 256, i8* %1) #6, !dbg !292
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !125, metadata !151), !dbg !293
  %2 = call i8* @fgets(i8* %1, i32 255, %struct.__sFILE* %in) #8, !dbg !294
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !127, metadata !151), !dbg !295
  %3 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #8, !dbg !296
  %4 = icmp eq i32 %3, 1, !dbg !298
  br i1 %4, label %7, label %5, !dbg !299

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !300
  call void @warning(i8* null) #8, !dbg !302
  call void @ffclose(%struct.__sFILE* %in) #8, !dbg !303
  br label %21, !dbg !304

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !127, metadata !151), !dbg !295
  %8 = load i32* %nstr, align 4, !dbg !305, !tbaa !163
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 153, i32 %8, i32 8) #8, !dbg !305
  %10 = bitcast i8* %9 to i8**, !dbg !305
  call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !124, metadata !151), !dbg !306
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !151), !dbg !307
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !127, metadata !151), !dbg !295
  %11 = load i32* %nstr, align 4, !dbg !308, !tbaa !163
  %12 = icmp sgt i32 %11, 0, !dbg !311
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !312

.lr.ph:                                           ; preds = %7, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %7 ]
  %13 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %in) #8, !dbg !313
  %14 = call i8* @strdup(i8* %1) #8, !dbg !315
  %15 = getelementptr inbounds i8** %10, i64 %indvars.iv, !dbg !316
  store i8* %14, i8** %15, align 8, !dbg !317, !tbaa !175
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !312
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !127, metadata !151), !dbg !295
  %16 = load i32* %nstr, align 4, !dbg !308, !tbaa !163
  %17 = sext i32 %16 to i64, !dbg !311
  %18 = icmp slt i64 %indvars.iv.next, %17, !dbg !311
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !312

._crit_edge:                                      ; preds = %.lr.ph, %7
  %19 = phi i32 [ %11, %7 ], [ %16, %.lr.ph ]
  %20 = bitcast i8*** %strings to i8**, !dbg !318
  store i8* %9, i8** %20, align 8, !dbg !318, !tbaa !175
  call void @llvm.dbg.value(metadata i32* %nstr, i64 0, metadata !127, metadata !151), !dbg !295
  br label %21, !dbg !319

; <label>:21                                      ; preds = %._crit_edge, %5
  %.0 = phi i32 [ 0, %5 ], [ %19, %._crit_edge ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #6, !dbg !320
  ret i32 %.0, !dbg !320
}

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_lines(i8* %db, i8*** nocapture %strings) #2 {
  tail call void @llvm.dbg.value(metadata i8* %db, i64 0, metadata !130, metadata !151), !dbg !321
  tail call void @llvm.dbg.value(metadata i8*** %strings, i64 0, metadata !131, metadata !151), !dbg !322
  tail call void @set_warning_line(i8* %db, i32 1) #8, !dbg !323
  %1 = tail call %struct.__sFILE* @libopen(i8* %db) #8, !dbg !324
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !132, metadata !151), !dbg !325
  %2 = tail call i32 @fget_lines(%struct.__sFILE* %1, i8*** %strings) #9, !dbg !326
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !133, metadata !151), !dbg !327
  tail call void @ffclose(%struct.__sFILE* %1) #8, !dbg !328
  ret i32 %2, !dbg !329
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_file(i8* %db, i8*** nocapture %strings) #2 {
  %buf = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %db, i64 0, metadata !136, metadata !151), !dbg !330
  tail call void @llvm.dbg.value(metadata i8*** %strings, i64 0, metadata !137, metadata !151), !dbg !331
  tail call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !139, metadata !151), !dbg !332
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !333
  call void @llvm.lifetime.start(i64 256, i8* %1) #6, !dbg !333
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !140, metadata !151), !dbg !334
  %2 = tail call %struct.__sFILE* @libopen(i8* %db) #8, !dbg !335
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %2, i64 0, metadata !138, metadata !151), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !143, metadata !151), !dbg !337
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !141, metadata !151), !dbg !338
  %3 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %2) #8, !dbg !339
  %4 = icmp eq i8* %3, null, !dbg !340
  br i1 %4, label %19, label %.lr.ph, !dbg !340

.lr.ph:                                           ; preds = %0, %13
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %0 ]
  %ptr.03 = phi i8** [ %ptr.1, %13 ], [ null, %0 ]
  %maxi.02 = phi i32 [ %maxi.1, %13 ], [ 0, %0 ]
  %5 = sext i32 %maxi.02 to i64, !dbg !341
  %6 = icmp slt i64 %indvars.iv, %5, !dbg !341
  br i1 %6, label %13, label %7, !dbg !344

; <label>:7                                       ; preds = %.lr.ph
  %8 = add nsw i32 %maxi.02, 50, !dbg !345
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !143, metadata !151), !dbg !337
  %9 = bitcast i8** %ptr.03 to i8*, !dbg !347
  %10 = shl i32 %8, 3, !dbg !347
  %11 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190, i8* %9, i32 %10) #8, !dbg !347
  %12 = bitcast i8* %11 to i8**, !dbg !347
  call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !139, metadata !151), !dbg !332
  br label %13, !dbg !348

; <label>:13                                      ; preds = %.lr.ph, %7
  %maxi.1 = phi i32 [ %8, %7 ], [ %maxi.02, %.lr.ph ]
  %ptr.1 = phi i8** [ %12, %7 ], [ %ptr.03, %.lr.ph ]
  %14 = call i8* @strdup(i8* %1) #8, !dbg !349
  %15 = getelementptr inbounds i8** %ptr.1, i64 %indvars.iv, !dbg !350
  store i8* %14, i8** %15, align 8, !dbg !351, !tbaa !175
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !340
  %16 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %2) #8, !dbg !339
  %17 = icmp eq i8* %16, null, !dbg !340
  br i1 %17, label %._crit_edge, label %.lr.ph, !dbg !340

._crit_edge:                                      ; preds = %13
  %18 = trunc i64 %indvars.iv.next to i32, !dbg !340
  br label %19, !dbg !340

; <label>:19                                      ; preds = %._crit_edge, %0
  %ptr.0.lcssa = phi i8** [ %ptr.1, %._crit_edge ], [ null, %0 ]
  %i.0.lcssa = phi i32 [ %18, %._crit_edge ], [ 0, %0 ]
  call void @ffclose(%struct.__sFILE* %2) #8, !dbg !352
  %20 = bitcast i8** %ptr.0.lcssa to i8*, !dbg !353
  %21 = shl i32 %i.0.lcssa, 3, !dbg !353
  %22 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 197, i8* %20, i32 %21) #8, !dbg !353
  %23 = bitcast i8*** %strings to i8**, !dbg !354
  store i8* %22, i8** %23, align 8, !dbg !354, !tbaa !175
  call void @llvm.lifetime.end(i64 256, i8* %1) #6, !dbg !355
  ret i32 %i.0.lcssa, !dbg !355
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!147, !148, !149}
!llvm.ident = !{!150}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !144, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/strdb.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !13, !83, !94, !110, !118, !128, !134}
!6 = !DISubprogram(name: "__sigbits", scope: !7, file: !7, line: 114, type: !8, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !11)
!7 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !6, file: !7, line: 114, type: !10)
!13 = !DISubprogram(name: "get_a_line", scope: !1, file: !1, line: 41, type: !14, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8*, i32)* @get_a_line, variables: !78)
!14 = !DISubroutineType(types: !15)
!15 = !{!10, !16, !44, !10}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 153, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 122, size: 1216, align: 64, elements: !20)
!20 = !{!21, !24, !25, !26, !28, !29, !34, !35, !36, !40, !46, !56, !62, !63, !66, !67, !71, !75, !76, !77}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !18, line: 123, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !18, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !18, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !18, line: 126, baseType: !27, size: 16, align: 16, offset: 128)
!27 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !18, line: 127, baseType: !27, size: 16, align: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !18, line: 128, baseType: !30, size: 128, align: 64, offset: 192)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 88, size: 128, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !30, file: !18, line: 89, baseType: !22, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !30, file: !18, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !18, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !18, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !18, line: 133, baseType: !37, size: 64, align: 64, offset: 448)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!10, !4}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !18, line: 134, baseType: !41, size: 64, align: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!10, !4, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !18, line: 135, baseType: !47, size: 64, align: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !4, !50, !10}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !18, line: 77, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !52, line: 71, baseType: !53)
!52 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !18, line: 136, baseType: !57, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!10, !4, !60, !10}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !18, line: 139, baseType: !30, size: 128, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !19, file: !18, line: 140, baseType: !64, size: 64, align: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !18, line: 94, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !18, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !18, line: 144, baseType: !68, size: 24, align: 8, offset: 928)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !18, line: 145, baseType: !72, size: 8, align: 8, offset: 952)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, align: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !18, line: 148, baseType: !30, size: 128, align: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !18, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !18, line: 152, baseType: !50, size: 64, align: 64, offset: 1152)
!78 = !{!79, !80, !81, !82}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !13, file: !1, line: 41, type: !16)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !13, file: !1, line: 41, type: !44)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !13, file: !1, line: 41, type: !10)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dum", scope: !13, file: !1, line: 45, type: !44)
!83 = !DISubprogram(name: "get_header", scope: !1, file: !1, line: 75, type: !84, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @get_header, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!10, !44, !44}
!86 = !{!87, !88, !89, !93}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 1, scope: !83, file: !1, line: 75, type: !44)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "header", arg: 2, scope: !83, file: !1, line: 75, type: !44)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !83, file: !1, line: 77, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32768, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 4096)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dum", scope: !83, file: !1, line: 77, type: !44)
!94 = !DISubprogram(name: "get_strings", scope: !1, file: !1, line: 96, type: !95, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8***)* @get_strings, variables: !99)
!95 = !DISubroutineType(types: !96)
!96 = !{!10, !44, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!99 = !{!100, !101, !102, !103, !104, !108, !109}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "db", arg: 1, scope: !94, file: !1, line: 96, type: !44)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "strings", arg: 2, scope: !94, file: !1, line: 96, type: !97)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !94, file: !1, line: 98, type: !16)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !94, file: !1, line: 99, type: !98)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !94, file: !1, line: 100, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 256)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !94, file: !1, line: 101, type: !10)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nstr", scope: !94, file: !1, line: 101, type: !10)
!110 = !DISubprogram(name: "search_str", scope: !1, file: !1, line: 127, type: !111, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**, i8*)* @search_str, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!10, !10, !98, !44}
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nstr", arg: 1, scope: !110, file: !1, line: 127, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 2, scope: !110, file: !1, line: 127, type: !98)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 3, scope: !110, file: !1, line: 127, type: !44)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !110, file: !1, line: 129, type: !10)
!118 = !DISubprogram(name: "fget_lines", scope: !1, file: !1, line: 139, type: !119, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8***)* @fget_lines, variables: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!10, !16, !97}
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !118, file: !1, line: 139, type: !16)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "strings", arg: 2, scope: !118, file: !1, line: 139, type: !97)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !118, file: !1, line: 141, type: !98)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !118, file: !1, line: 142, type: !105)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !118, file: !1, line: 143, type: !10)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nstr", scope: !118, file: !1, line: 143, type: !10)
!128 = !DISubprogram(name: "get_lines", scope: !1, file: !1, line: 164, type: !95, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8***)* @get_lines, variables: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "db", arg: 1, scope: !128, file: !1, line: 164, type: !44)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "strings", arg: 2, scope: !128, file: !1, line: 164, type: !97)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !128, file: !1, line: 166, type: !16)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nstr", scope: !128, file: !1, line: 167, type: !10)
!134 = !DISubprogram(name: "get_file", scope: !1, file: !1, line: 177, type: !95, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8***)* @get_file, variables: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "db", arg: 1, scope: !134, file: !1, line: 177, type: !44)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "strings", arg: 2, scope: !134, file: !1, line: 177, type: !97)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !134, file: !1, line: 179, type: !16)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !134, file: !1, line: 180, type: !98)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !134, file: !1, line: 181, type: !105)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !134, file: !1, line: 182, type: !10)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nstr", scope: !134, file: !1, line: 182, type: !10)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxi", scope: !134, file: !1, line: 182, type: !10)
!144 = !{!145, !146}
!145 = !DIGlobalVariable(name: "line0", scope: !13, file: !1, line: 43, type: !44, isLocal: true, isDefinition: true, variable: i8** @get_a_line.line0)
!146 = !DIGlobalVariable(name: "nalloc", scope: !13, file: !1, line: 44, type: !10, isLocal: true, isDefinition: true, variable: i32* @get_a_line.nalloc)
!147 = !{i32 2, !"Dwarf Version", i32 2}
!148 = !{i32 2, !"Debug Info Version", i32 700000003}
!149 = !{i32 1, !"PIC Level", i32 2}
!150 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!151 = !DIExpression()
!152 = !DILocation(line: 114, column: 15, scope: !6)
!153 = !DILocation(line: 116, column: 20, scope: !6)
!154 = !DILocation(line: 116, column: 12, scope: !6)
!155 = !DILocation(line: 116, column: 57, scope: !6)
!156 = !DILocation(line: 116, column: 45, scope: !6)
!157 = !DILocation(line: 116, column: 5, scope: !6)
!158 = !DILocation(line: 41, column: 23, scope: !13)
!159 = !DILocation(line: 41, column: 31, scope: !13)
!160 = !DILocation(line: 41, column: 42, scope: !13)
!161 = !DILocation(line: 47, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !13, file: !1, line: 47, column: 7)
!163 = !{!164, !164, i64 0}
!164 = !{!"int", !165, i64 0}
!165 = !{!"omnipotent char", !166, i64 0}
!166 = !{!"Simple C/C++ TBAA"}
!167 = !DILocation(line: 47, column: 8, scope: !162)
!168 = !DILocation(line: 47, column: 7, scope: !13)
!169 = !DILocation(line: 52, column: 23, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 52, column: 9)
!171 = distinct !DILexicalBlock(scope: !13, file: !1, line: 51, column: 6)
!172 = !DILocation(line: 48, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !162, file: !1, line: 47, column: 17)
!174 = !DILocation(line: 49, column: 5, scope: !173)
!175 = !{!176, !176, i64 0}
!176 = !{!"any pointer", !165, i64 0}
!177 = !DILocation(line: 50, column: 3, scope: !173)
!178 = !DILocation(line: 58, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 58, column: 14)
!180 = distinct !DILexicalBlock(scope: !171, file: !1, line: 56, column: 9)
!181 = !DILocation(line: 60, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 58, column: 32)
!183 = !DILocation(line: 60, column: 7, scope: !182)
!184 = !DILocation(line: 67, column: 5, scope: !171)
!185 = !DILocation(line: 52, column: 16, scope: !170)
!186 = !DILocation(line: 52, column: 10, scope: !170)
!187 = !DILocation(line: 52, column: 9, scope: !171)
!188 = !DILocation(line: 55, column: 16, scope: !171)
!189 = !DILocation(line: 55, column: 9, scope: !171)
!190 = !DILocation(line: 45, column: 9, scope: !13)
!191 = !DILocation(line: 56, column: 9, scope: !180)
!192 = !DILocation(line: 56, column: 9, scope: !171)
!193 = !DILocation(line: 57, column: 13, scope: !180)
!194 = !{!165, !165, i64 0}
!195 = !DILocation(line: 57, column: 7, scope: !180)
!196 = !DILocation(line: 58, column: 14, scope: !179)
!197 = !DILocation(line: 58, column: 27, scope: !179)
!198 = !DILocation(line: 59, column: 15, scope: !182)
!199 = !DILocation(line: 58, column: 14, scope: !180)
!200 = !DILocation(line: 59, column: 7, scope: !182)
!201 = !DILocation(line: 60, column: 18, scope: !182)
!202 = !DILocation(line: 61, column: 5, scope: !182)
!203 = !DILocation(line: 62, column: 7, scope: !179)
!204 = !DILocation(line: 64, column: 16, scope: !171)
!205 = !DILocation(line: 64, column: 9, scope: !171)
!206 = !DILocation(line: 65, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !171, file: !1, line: 65, column: 9)
!208 = !DILocation(line: 65, column: 9, scope: !171)
!209 = !DILocation(line: 66, column: 13, scope: !207)
!210 = !DILocation(line: 66, column: 7, scope: !207)
!211 = !DILocation(line: 68, column: 9, scope: !171)
!212 = !DILocation(line: 69, column: 5, scope: !171)
!213 = !DILocation(line: 70, column: 12, scope: !13)
!214 = !DILocation(line: 70, column: 19, scope: !13)
!215 = !DILocation(line: 70, column: 3, scope: !171)
!216 = !DILocation(line: 73, column: 1, scope: !13)
!217 = !DILocation(line: 75, column: 22, scope: !83)
!218 = !DILocation(line: 75, column: 35, scope: !83)
!219 = !DILocation(line: 77, column: 3, scope: !83)
!220 = !DILocation(line: 77, column: 8, scope: !83)
!221 = !DILocation(line: 79, column: 3, scope: !83)
!222 = !DILocation(line: 80, column: 7, scope: !83)
!223 = !DILocation(line: 77, column: 22, scope: !83)
!224 = !DILocation(line: 81, column: 10, scope: !225)
!225 = distinct !DILexicalBlock(scope: !83, file: !1, line: 81, column: 7)
!226 = !DILocation(line: 81, column: 7, scope: !83)
!227 = !DILocation(line: 83, column: 9, scope: !83)
!228 = !DILocation(line: 84, column: 7, scope: !83)
!229 = !DILocation(line: 85, column: 10, scope: !230)
!230 = distinct !DILexicalBlock(scope: !83, file: !1, line: 85, column: 7)
!231 = !DILocation(line: 85, column: 7, scope: !83)
!232 = !DILocation(line: 86, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 85, column: 18)
!234 = !DILocation(line: 87, column: 5, scope: !233)
!235 = !DILocation(line: 89, column: 9, scope: !83)
!236 = !DILocation(line: 90, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !83, file: !1, line: 90, column: 7)
!238 = !DILocation(line: 90, column: 35, scope: !237)
!239 = !DILocation(line: 93, column: 3, scope: !83)
!240 = !DILocation(line: 94, column: 1, scope: !83)
!241 = !DILocation(line: 96, column: 23, scope: !94)
!242 = !DILocation(line: 96, column: 34, scope: !94)
!243 = !DILocation(line: 100, column: 3, scope: !94)
!244 = !DILocation(line: 100, column: 8, scope: !94)
!245 = !DILocation(line: 103, column: 6, scope: !94)
!246 = !DILocation(line: 98, column: 9, scope: !94)
!247 = !DILocation(line: 105, column: 3, scope: !94)
!248 = !DILocation(line: 101, column: 10, scope: !94)
!249 = !DILocation(line: 106, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !94, file: !1, line: 106, column: 7)
!251 = !DILocation(line: 106, column: 29, scope: !250)
!252 = !DILocation(line: 106, column: 7, scope: !94)
!253 = !DILocation(line: 107, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 106, column: 35)
!255 = !DILocation(line: 108, column: 5, scope: !254)
!256 = !DILocation(line: 109, column: 5, scope: !254)
!257 = !DILocation(line: 110, column: 5, scope: !254)
!258 = !DILocation(line: 112, column: 3, scope: !94)
!259 = !DILocation(line: 99, column: 10, scope: !94)
!260 = !DILocation(line: 101, column: 8, scope: !94)
!261 = !DILocation(line: 113, column: 15, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 113, column: 3)
!263 = distinct !DILexicalBlock(scope: !94, file: !1, line: 113, column: 3)
!264 = !DILocation(line: 113, column: 14, scope: !262)
!265 = !DILocation(line: 113, column: 3, scope: !263)
!266 = !DILocation(line: 114, column: 5, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !1, line: 113, column: 27)
!268 = !DILocation(line: 118, column: 14, scope: !267)
!269 = !DILocation(line: 118, column: 5, scope: !267)
!270 = !DILocation(line: 118, column: 12, scope: !267)
!271 = !DILocation(line: 120, column: 3, scope: !94)
!272 = !DILocation(line: 122, column: 11, scope: !94)
!273 = !DILocation(line: 124, column: 10, scope: !94)
!274 = !DILocation(line: 124, column: 3, scope: !94)
!275 = !DILocation(line: 125, column: 1, scope: !94)
!276 = !DILocation(line: 127, column: 20, scope: !110)
!277 = !DILocation(line: 127, column: 32, scope: !110)
!278 = !DILocation(line: 127, column: 42, scope: !110)
!279 = !DILocation(line: 129, column: 7, scope: !110)
!280 = !DILocation(line: 132, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 132, column: 3)
!282 = distinct !DILexicalBlock(scope: !110, file: !1, line: 132, column: 3)
!283 = !DILocation(line: 132, column: 3, scope: !282)
!284 = !DILocation(line: 133, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 133, column: 9)
!286 = !DILocation(line: 133, column: 9, scope: !285)
!287 = !DILocation(line: 133, column: 31, scope: !285)
!288 = !DILocation(line: 133, column: 9, scope: !281)
!289 = !DILocation(line: 137, column: 1, scope: !110)
!290 = !DILocation(line: 139, column: 22, scope: !118)
!291 = !DILocation(line: 139, column: 33, scope: !118)
!292 = !DILocation(line: 142, column: 3, scope: !118)
!293 = !DILocation(line: 142, column: 8, scope: !118)
!294 = !DILocation(line: 145, column: 3, scope: !118)
!295 = !DILocation(line: 143, column: 10, scope: !118)
!296 = !DILocation(line: 146, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !118, file: !1, line: 146, column: 7)
!298 = !DILocation(line: 146, column: 30, scope: !297)
!299 = !DILocation(line: 146, column: 7, scope: !118)
!300 = !DILocation(line: 147, column: 5, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 146, column: 36)
!302 = !DILocation(line: 148, column: 5, scope: !301)
!303 = !DILocation(line: 149, column: 5, scope: !301)
!304 = !DILocation(line: 151, column: 5, scope: !301)
!305 = !DILocation(line: 153, column: 3, scope: !118)
!306 = !DILocation(line: 141, column: 10, scope: !118)
!307 = !DILocation(line: 143, column: 8, scope: !118)
!308 = !DILocation(line: 154, column: 15, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 154, column: 3)
!310 = distinct !DILexicalBlock(scope: !118, file: !1, line: 154, column: 3)
!311 = !DILocation(line: 154, column: 14, scope: !309)
!312 = !DILocation(line: 154, column: 3, scope: !310)
!313 = !DILocation(line: 155, column: 5, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !1, line: 154, column: 27)
!315 = !DILocation(line: 156, column: 14, scope: !314)
!316 = !DILocation(line: 156, column: 5, scope: !314)
!317 = !DILocation(line: 156, column: 12, scope: !314)
!318 = !DILocation(line: 159, column: 14, scope: !118)
!319 = !DILocation(line: 161, column: 3, scope: !118)
!320 = !DILocation(line: 162, column: 1, scope: !118)
!321 = !DILocation(line: 164, column: 21, scope: !128)
!322 = !DILocation(line: 164, column: 32, scope: !128)
!323 = !DILocation(line: 169, column: 3, scope: !128)
!324 = !DILocation(line: 170, column: 10, scope: !128)
!325 = !DILocation(line: 166, column: 9, scope: !128)
!326 = !DILocation(line: 171, column: 10, scope: !128)
!327 = !DILocation(line: 167, column: 8, scope: !128)
!328 = !DILocation(line: 172, column: 3, scope: !128)
!329 = !DILocation(line: 174, column: 3, scope: !128)
!330 = !DILocation(line: 177, column: 20, scope: !134)
!331 = !DILocation(line: 177, column: 31, scope: !134)
!332 = !DILocation(line: 180, column: 10, scope: !134)
!333 = !DILocation(line: 181, column: 3, scope: !134)
!334 = !DILocation(line: 181, column: 8, scope: !134)
!335 = !DILocation(line: 184, column: 6, scope: !134)
!336 = !DILocation(line: 179, column: 9, scope: !134)
!337 = !DILocation(line: 182, column: 15, scope: !134)
!338 = !DILocation(line: 182, column: 8, scope: !134)
!339 = !DILocation(line: 187, column: 10, scope: !134)
!340 = !DILocation(line: 187, column: 3, scope: !134)
!341 = !DILocation(line: 188, column: 10, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 188, column: 9)
!343 = distinct !DILexicalBlock(scope: !134, file: !1, line: 187, column: 30)
!344 = !DILocation(line: 188, column: 9, scope: !343)
!345 = !DILocation(line: 189, column: 11, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 188, column: 18)
!347 = !DILocation(line: 190, column: 7, scope: !346)
!348 = !DILocation(line: 191, column: 5, scope: !346)
!349 = !DILocation(line: 192, column: 14, scope: !343)
!350 = !DILocation(line: 192, column: 5, scope: !343)
!351 = !DILocation(line: 192, column: 12, scope: !343)
!352 = !DILocation(line: 196, column: 3, scope: !134)
!353 = !DILocation(line: 197, column: 3, scope: !134)
!354 = !DILocation(line: 198, column: 11, scope: !134)
!355 = !DILocation(line: 201, column: 1, scope: !134)

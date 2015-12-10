; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [64 x i8] c"\0A error in DV_readFromFile(%p,%s), file %s, line %d\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"\0A error in DV_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [100 x i8] c"\0A error in DV_readFromFile(%p,%s)\0A bad DV file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"\0A error in DV_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [65 x i8] c"\0A error in DV_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DV_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [73 x i8] c"\0A error in DV_readFromBinaryFile(%p,%p)\0A itemp(3) : %d items of %d read\0A\00", align 1
@.str11 = private unnamed_addr constant [74 x i8] c"\0A error in DV_readFromBinaryFile(%p,%p)\0A sizes(%d) : %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DV_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"\0A error in DV_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str17 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DV_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"\0A dv->size = %d\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"\0A %d\00", align 1
@.str20 = private unnamed_addr constant [85 x i8] c"\0A fatal error in DV_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str21 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DV_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [71 x i8] c"\0A error in DV_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str23 = private unnamed_addr constant [64 x i8] c"\0A error in DV_writeToBinaryFile(%p,%p)\0A %d of %d items written\0A\00", align 1
@.str24 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str25 = private unnamed_addr constant [88 x i8] c"\0A fatal error in DV_writeForHumanEye(%p,%p)\0A rc = %d, return from DV_writeStats(%p,%p)\0A\00", align 1
@.str26 = private unnamed_addr constant [44 x i8] c"\0A error in DV_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str27 = private unnamed_addr constant [31 x i8] c"\0A DV : double vector object : \00", align 1
@.str28 = private unnamed_addr constant [37 x i8] c" size = %d, maxsize = %d, owned = %d\00", align 1
@.str29 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DV_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str30 = private unnamed_addr constant [51 x i8] c"\0A error in DV_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str31 = private unnamed_addr constant [22 x i8] c"\0A %s = zeros(%d,%d) ;\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"\0A %s(%d) = %24.16e ;\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c".dvb\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c".dvf\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_readFromFile(%struct._DV* %dv, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !24, metadata !152), !dbg !153
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !25, metadata !152), !dbg !154
  %1 = icmp eq %struct._DV* %dv, null, !dbg !155
  %2 = icmp eq i8* %fn, null, !dbg !157
  %or.cond = or i1 %1, %2, !dbg !158
  br i1 %or.cond, label %3, label %6, !dbg !158

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !159, !tbaa !161
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i32 37) #6, !dbg !165
  br label %43, !dbg !166

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %fn) #6, !dbg !167
  %8 = trunc i64 %7 to i32, !dbg !167
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !87, metadata !152), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !89, metadata !152), !dbg !169
  %9 = icmp sgt i32 %8, 4, !dbg !170
  br i1 %9, label %10, label %40, !dbg !172

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !173
  %sext = add i64 %11, -17179869184, !dbg !173
  %12 = ashr exact i64 %sext, 32, !dbg !173
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !173
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #6, !dbg !176
  %15 = icmp eq i32 %14, 0, !dbg !177
  br i1 %15, label %16, label %25, !dbg !178

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !179
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !26, metadata !152), !dbg !182
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !183
  br i1 %18, label %19, label %22, !dbg !184

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !185, !tbaa !161
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !152), !dbg !188
  br label %43, !dbg !189

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @DV_readFromBinaryFile(%struct._DV* %dv, %struct.__sFILE* %17) #7, !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !88, metadata !152), !dbg !188
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #6, !dbg !192
  br label %43

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #6, !dbg !193
  %27 = icmp eq i32 %26, 0, !dbg !195
  br i1 %27, label %28, label %37, !dbg !196

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !197
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !26, metadata !152), !dbg !182
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !200
  br i1 %30, label %31, label %34, !dbg !201

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !202, !tbaa !161
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !152), !dbg !188
  br label %43, !dbg !205

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @DV_readFromFormattedFile(%struct._DV* %dv, %struct.__sFILE* %29) #7, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !88, metadata !152), !dbg !188
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #6, !dbg !208
  br label %43

; <label>:37                                      ; preds = %25
  %38 = load %struct.__sFILE** @__stderrp, align 8, !dbg !209, !tbaa !161
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #6, !dbg !211
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !152), !dbg !188
  br label %43

; <label>:40                                      ; preds = %6
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !212, !tbaa !161
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #6, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !152), !dbg !188
  br label %43

; <label>:43                                      ; preds = %40, %37, %34, %31, %19, %22, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %37 ], [ 0, %40 ]
  ret i32 %.0, !dbg !215
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_readFromBinaryFile(%struct._DV* %dv, %struct.__sFILE* %fp) #0 {
  %size = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !100, metadata !152), !dbg !216
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !101, metadata !152), !dbg !217
  %1 = icmp eq %struct._DV* %dv, null, !dbg !218
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !220
  %or.cond = or i1 %1, %2, !dbg !221
  br i1 %or.cond, label %3, label %6, !dbg !221

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !222, !tbaa !161
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp) #6, !dbg !224
  br label %25, !dbg !225

; <label>:6                                       ; preds = %0
  tail call void @DV_clearData(%struct._DV* %dv) #6, !dbg !226
  %7 = bitcast i32* %size to i8*, !dbg !227
  %8 = call i64 @fread(i8* %7, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !229
  %9 = trunc i64 %8 to i32, !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !102, metadata !152), !dbg !230
  %10 = icmp eq i32 %9, 1, !dbg !231
  br i1 %10, label %14, label %11, !dbg !232

; <label>:11                                      ; preds = %6
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !233, !tbaa !161
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([73 x i8]* @.str10, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %9, i32 1) #6, !dbg !235
  br label %25, !dbg !236

; <label>:14                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !103, metadata !152), !dbg !237
  %15 = load i32* %size, align 4, !dbg !238, !tbaa !239
  tail call void @DV_init(%struct._DV* %dv, i32 %15, double* null) #6, !dbg !241
  %16 = tail call double* @DV_entries(%struct._DV* %dv) #6, !dbg !242
  %17 = bitcast double* %16 to i8*, !dbg !244
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !103, metadata !152), !dbg !237
  %18 = sext i32 %15 to i64, !dbg !245
  %19 = tail call i64 @fread(i8* %17, i64 8, i64 %18, %struct.__sFILE* %fp) #6, !dbg !246
  %20 = trunc i64 %19 to i32, !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !102, metadata !152), !dbg !230
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !103, metadata !152), !dbg !237
  %21 = icmp eq i32 %20, %15, !dbg !247
  br i1 %21, label %25, label %22, !dbg !248

; <label>:22                                      ; preds = %14
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !249, !tbaa !161
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([74 x i8]* @.str11, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %15, i32 %20, i32 %15) #6, !dbg !251
  br label %25, !dbg !252

; <label>:25                                      ; preds = %14, %22, %11, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 0, %22 ], [ 1, %14 ]
  ret i32 %.0, !dbg !253
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_readFromFormattedFile(%struct._DV* %dv, %struct.__sFILE* %fp) #0 {
  %size = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !94, metadata !152), !dbg !254
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !95, metadata !152), !dbg !255
  %1 = icmp eq %struct._DV* %dv, null, !dbg !256
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !258
  %or.cond = or i1 %1, %2, !dbg !259
  br i1 %or.cond, label %3, label %6, !dbg !259

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !260, !tbaa !161
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp) #6, !dbg !262
  br label %22, !dbg !263

; <label>:6                                       ; preds = %0
  tail call void @DV_clearData(%struct._DV* %dv) #6, !dbg !264
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !97, metadata !152), !dbg !265
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %size) #6, !dbg !266
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !96, metadata !152), !dbg !268
  %8 = icmp eq i32 %7, 1, !dbg !269
  br i1 %8, label %12, label %9, !dbg !270

; <label>:9                                       ; preds = %6
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !271, !tbaa !161
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %7, i32 1) #6, !dbg !273
  br label %22, !dbg !274

; <label>:12                                      ; preds = %6
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !97, metadata !152), !dbg !265
  %13 = load i32* %size, align 4, !dbg !275, !tbaa !239
  call void @DV_init(%struct._DV* %dv, i32 %13, double* null) #6, !dbg !276
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !97, metadata !152), !dbg !265
  %14 = load i32* %size, align 4, !dbg !277, !tbaa !239
  %15 = call double* @DV_entries(%struct._DV* %dv) #6, !dbg !279
  %16 = call i32 @DVfscanf(%struct.__sFILE* %fp, i32 %14, double* %15) #6, !dbg !280
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !96, metadata !152), !dbg !268
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !97, metadata !152), !dbg !265
  %17 = load i32* %size, align 4, !dbg !281, !tbaa !239
  %18 = icmp eq i32 %16, %17, !dbg !282
  br i1 %18, label %22, label %19, !dbg !283

; <label>:19                                      ; preds = %12
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !284, !tbaa !161
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %16, i32 %17) #6, !dbg !286
  br label %22, !dbg !287

; <label>:22                                      ; preds = %12, %19, %9, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %9 ], [ 0, %19 ], [ 1, %12 ]
  ret i32 %.0, !dbg !288
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #3

; Function Attrs: optsize
declare i32 @DVfscanf(%struct.__sFILE*, i32, double*) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_writeToFile(%struct._DV* %dv, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !106, metadata !152), !dbg !289
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !107, metadata !152), !dbg !290
  %1 = icmp eq %struct._DV* %dv, null, !dbg !291
  %2 = icmp eq i8* %fn, null, !dbg !293
  %or.cond = or i1 %1, %2, !dbg !294
  br i1 %or.cond, label %3, label %6, !dbg !294

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !295, !tbaa !161
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([51 x i8]* @.str12, i64 0, i64 0), %struct._DV* %dv, i8* %fn) #6, !dbg !297
  br label %6, !dbg !298

; <label>:6                                       ; preds = %0, %3
  %7 = tail call i64 @strlen(i8* %fn) #6, !dbg !299
  %8 = trunc i64 %7 to i32, !dbg !299
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !109, metadata !152), !dbg !300
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !111, metadata !152), !dbg !301
  %9 = icmp sgt i32 %8, 4, !dbg !302
  br i1 %9, label %10, label %46, !dbg !304

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !305
  %sext = add i64 %11, -17179869184, !dbg !305
  %12 = ashr exact i64 %sext, 32, !dbg !305
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !305
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #6, !dbg !308
  %15 = icmp eq i32 %14, 0, !dbg !309
  br i1 %15, label %16, label %25, !dbg !310

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !311
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !108, metadata !152), !dbg !314
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !315
  br i1 %18, label %19, label %22, !dbg !316

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !317, !tbaa !161
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !152), !dbg !320
  br label %55, !dbg !321

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @DV_writeToBinaryFile(%struct._DV* %dv, %struct.__sFILE* %17) #7, !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !110, metadata !152), !dbg !320
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #6, !dbg !324
  br label %55

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #6, !dbg !325
  %27 = icmp eq i32 %26, 0, !dbg !327
  br i1 %27, label %28, label %37, !dbg !328

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !329
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !108, metadata !152), !dbg !314
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !332
  br i1 %30, label %31, label %34, !dbg !333

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !334, !tbaa !161
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !152), !dbg !320
  br label %55, !dbg !337

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @DV_writeToFormattedFile(%struct._DV* %dv, %struct.__sFILE* %29) #7, !dbg !338
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !110, metadata !152), !dbg !320
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #6, !dbg !340
  br label %55

; <label>:37                                      ; preds = %25
  %38 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !341
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %38, i64 0, metadata !108, metadata !152), !dbg !314
  %39 = icmp eq %struct.__sFILE* %38, null, !dbg !344
  br i1 %39, label %40, label %43, !dbg !345

; <label>:40                                      ; preds = %37
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !346, !tbaa !161
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !152), !dbg !320
  br label %55, !dbg !349

; <label>:43                                      ; preds = %37
  %44 = tail call i32 @DV_writeForHumanEye(%struct._DV* %dv, %struct.__sFILE* %38) #7, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !110, metadata !152), !dbg !320
  %45 = tail call i32 @fclose(%struct.__sFILE* %38) #6, !dbg !352
  br label %55

; <label>:46                                      ; preds = %6
  %47 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !353
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %47, i64 0, metadata !108, metadata !152), !dbg !314
  %48 = icmp eq %struct.__sFILE* %47, null, !dbg !356
  br i1 %48, label %49, label %52, !dbg !357

; <label>:49                                      ; preds = %46
  %50 = load %struct.__sFILE** @__stderrp, align 8, !dbg !358, !tbaa !161
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !152), !dbg !320
  br label %55, !dbg !361

; <label>:52                                      ; preds = %46
  %53 = tail call i32 @DV_writeForHumanEye(%struct._DV* %dv, %struct.__sFILE* %47) #7, !dbg !362
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !110, metadata !152), !dbg !320
  %54 = tail call i32 @fclose(%struct.__sFILE* %47) #6, !dbg !364
  br label %55

; <label>:55                                      ; preds = %49, %52, %22, %19, %40, %43, %31, %34
  %rc.0 = phi i32 [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %40 ], [ %44, %43 ], [ 0, %49 ], [ %53, %52 ]
  ret i32 %rc.0, !dbg !365
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_writeToBinaryFile(%struct._DV* %dv, %struct.__sFILE* %fp) #0 {
  %size = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !120, metadata !152), !dbg !366
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !121, metadata !152), !dbg !367
  %1 = icmp eq %struct._DV* %dv, null, !dbg !368
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !370
  %or.cond = or i1 %1, %2, !dbg !371
  br i1 %or.cond, label %7, label %3, !dbg !371

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !372
  %5 = load i32* %4, align 4, !dbg !372, !tbaa !373
  %6 = icmp slt i32 %5, 1, !dbg !375
  br i1 %6, label %7, label %10, !dbg !376

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !377, !tbaa !161
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([57 x i8]* @.str21, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp) #6, !dbg !379
  tail call void @exit(i32 -1) #8, !dbg !380
  unreachable, !dbg !380

; <label>:10                                      ; preds = %3
  %11 = tail call i32 @DV_size(%struct._DV* %dv) #6, !dbg !381
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !123, metadata !152), !dbg !382
  store i32 %11, i32* %size, align 4, !dbg !383, !tbaa !239
  %12 = bitcast i32* %size to i8*, !dbg !384
  %13 = call i64 @"\01_fwrite"(i8* %12, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !385
  %14 = trunc i64 %13 to i32, !dbg !385
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !122, metadata !152), !dbg !386
  %15 = icmp eq i32 %14, 1, !dbg !387
  br i1 %15, label %19, label %16, !dbg !389

; <label>:16                                      ; preds = %10
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !390, !tbaa !161
  %18 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([71 x i8]* @.str22, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %14, i32 1) #6, !dbg !392
  br label %31, !dbg !393

; <label>:19                                      ; preds = %10
  %20 = call double* @DV_entries(%struct._DV* %dv) #6, !dbg !394
  %21 = bitcast double* %20 to i8*, !dbg !395
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !123, metadata !152), !dbg !382
  %22 = load i32* %size, align 4, !dbg !396, !tbaa !239
  %23 = sext i32 %22 to i64, !dbg !396
  %24 = call i64 @"\01_fwrite"(i8* %21, i64 8, i64 %23, %struct.__sFILE* %fp) #6, !dbg !397
  %25 = trunc i64 %24 to i32, !dbg !397
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !122, metadata !152), !dbg !386
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !123, metadata !152), !dbg !382
  %26 = load i32* %size, align 4, !dbg !398, !tbaa !239
  %27 = icmp eq i32 %25, %26, !dbg !400
  br i1 %27, label %31, label %28, !dbg !401

; <label>:28                                      ; preds = %19
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !402, !tbaa !161
  %30 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([64 x i8]* @.str23, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %25, i32 %26) #6, !dbg !404
  br label %31, !dbg !405

; <label>:31                                      ; preds = %19, %28, %16
  %.0 = phi i32 [ 0, %16 ], [ 0, %28 ], [ 1, %19 ]
  ret i32 %.0, !dbg !406
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_writeToFormattedFile(%struct._DV* %dv, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !114, metadata !152), !dbg !407
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !115, metadata !152), !dbg !408
  %1 = icmp eq %struct._DV* %dv, null, !dbg !409
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !411
  %or.cond = or i1 %1, %2, !dbg !412
  %.pre = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !413
  br i1 %or.cond, label %._crit_edge, label %3, !dbg !412

; <label>:3                                       ; preds = %0
  %4 = load i32* %.pre, align 4, !dbg !415, !tbaa !373
  %5 = icmp slt i32 %4, 1, !dbg !416
  br i1 %5, label %._crit_edge, label %11, !dbg !417

._crit_edge:                                      ; preds = %0, %3
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !418, !tbaa !161
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([60 x i8]* @.str17, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp) #6, !dbg !419
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !420, !tbaa !161
  %9 = load i32* %.pre, align 4, !dbg !413, !tbaa !373
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32 %9) #6, !dbg !421
  tail call void @exit(i32 -1) #8, !dbg !422
  unreachable, !dbg !422

; <label>:11                                      ; preds = %3
  %12 = tail call i32 @DV_size(%struct._DV* %dv) #6, !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !117, metadata !152), !dbg !424
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i32 %12) #6, !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !116, metadata !152), !dbg !426
  %14 = icmp slt i32 %13, 0, !dbg !427
  br i1 %14, label %15, label %18, !dbg !429

; <label>:15                                      ; preds = %11
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !430, !tbaa !161
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([85 x i8]* @.str20, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %13) #6, !dbg !432
  br label %22, !dbg !433

; <label>:18                                      ; preds = %11
  %19 = icmp sgt i32 %12, 0, !dbg !434
  br i1 %19, label %20, label %22, !dbg !436

; <label>:20                                      ; preds = %18
  %21 = tail call double* @DV_entries(%struct._DV* %dv) #6, !dbg !437
  tail call void @DVfprintf(%struct.__sFILE* %fp, i32 %12, double* %21) #6, !dbg !439
  br label %22, !dbg !440

; <label>:22                                      ; preds = %18, %20, %15
  %.0 = phi i32 [ 0, %15 ], [ 1, %20 ], [ 1, %18 ]
  ret i32 %.0, !dbg !441
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_writeForHumanEye(%struct._DV* %dv, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !126, metadata !152), !dbg !442
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !127, metadata !152), !dbg !443
  %1 = icmp eq %struct._DV* %dv, null, !dbg !444
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !446
  %or.cond = or i1 %1, %2, !dbg !447
  br i1 %or.cond, label %3, label %6, !dbg !447

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !448, !tbaa !161
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([56 x i8]* @.str24, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp) #6, !dbg !450
  tail call void @exit(i32 -1) #8, !dbg !451
  unreachable, !dbg !451

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @DV_writeStats(%struct._DV* %dv, %struct.__sFILE* %fp) #7, !dbg !452
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !128, metadata !152), !dbg !454
  %8 = icmp eq i32 %7, 0, !dbg !455
  br i1 %8, label %9, label %12, !dbg !456

; <label>:9                                       ; preds = %6
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !457, !tbaa !161
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([88 x i8]* @.str25, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 0, %struct._DV* %dv, %struct.__sFILE* %fp) #6, !dbg !459
  br label %15, !dbg !460

; <label>:12                                      ; preds = %6
  %13 = tail call i32 @DV_size(%struct._DV* %dv) #6, !dbg !461
  %14 = tail call double* @DV_entries(%struct._DV* %dv) #6, !dbg !462
  tail call void @DVfprintf(%struct.__sFILE* %fp, i32 %13, double* %14) #6, !dbg !463
  br label %15, !dbg !464

; <label>:15                                      ; preds = %12, %9
  %.0 = phi i32 [ 0, %9 ], [ 1, %12 ]
  ret i32 %.0, !dbg !465
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #3

; Function Attrs: optsize
declare void @DVfprintf(%struct.__sFILE*, i32, double*) #3

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_writeStats(%struct._DV* %dv, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !131, metadata !152), !dbg !466
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !132, metadata !152), !dbg !467
  %1 = icmp eq %struct._DV* %dv, null, !dbg !468
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !470
  %or.cond = or i1 %1, %2, !dbg !471
  br i1 %or.cond, label %3, label %6, !dbg !471

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !472, !tbaa !161
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([44 x i8]* @.str26, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp) #6, !dbg !474
  tail call void @exit(i32 -1) #8, !dbg !475
  unreachable, !dbg !475

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str27, i64 0, i64 0)) #6, !dbg !476
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !133, metadata !152), !dbg !477
  %8 = icmp slt i32 %7, 0, !dbg !478
  br i1 %8, label %18, label %9, !dbg !480

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !481
  %11 = load i32* %10, align 4, !dbg !481, !tbaa !373
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !482
  %13 = load i32* %12, align 4, !dbg !482, !tbaa !483
  %14 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !484
  %15 = load i32* %14, align 4, !dbg !484, !tbaa !485
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str28, i64 0, i64 0), i32 %11, i32 %13, i32 %15) #6, !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !133, metadata !152), !dbg !477
  %17 = icmp slt i32 %16, 0, !dbg !487
  br i1 %17, label %18, label %21, !dbg !489

; <label>:18                                      ; preds = %9, %6
  %rc.0 = phi i32 [ %7, %6 ], [ %16, %9 ]
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !490, !tbaa !161
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([69 x i8]* @.str29, i64 0, i64 0), %struct._DV* %dv, %struct.__sFILE* %fp, i32 %rc.0) #6, !dbg !491
  br label %21, !dbg !492

; <label>:21                                      ; preds = %9, %18
  %.0 = phi i32 [ 0, %18 ], [ 1, %9 ]
  ret i32 %.0, !dbg !493
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_writeForMatlab(%struct._DV* %dv, i8* %name, %struct.__sFILE* %fp) #0 {
  %entries = alloca double*, align 8
  %size = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !138, metadata !152), !dbg !494
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !139, metadata !152), !dbg !495
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !140, metadata !152), !dbg !496
  %1 = icmp eq %struct._DV* %dv, null, !dbg !497
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !499
  %or.cond = or i1 %1, %2, !dbg !500
  br i1 %or.cond, label %3, label %6, !dbg !500

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !501, !tbaa !161
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([51 x i8]* @.str30, i64 0, i64 0), %struct._DV* %dv, i8* %name, %struct.__sFILE* %fp) #6, !dbg !503
  tail call void @exit(i32 -1) #8, !dbg !504
  unreachable, !dbg !504

; <label>:6                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata double** %entries, i64 0, metadata !141, metadata !152), !dbg !505
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !144, metadata !152), !dbg !506
  call void @DV_sizeAndEntries(%struct._DV* %dv, i32* %size, double** %entries) #6, !dbg !507
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !144, metadata !152), !dbg !506
  %7 = load i32* %size, align 4, !dbg !508, !tbaa !239
  %8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str31, i64 0, i64 0), i8* %name, i32 %7, i32 %7) #6, !dbg !509
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !142, metadata !152), !dbg !510
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !144, metadata !152), !dbg !506
  %9 = load i32* %size, align 4, !dbg !511, !tbaa !239
  %10 = icmp sgt i32 %9, 0, !dbg !514
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !515

.lr.ph:                                           ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !515
  call void @llvm.dbg.value(metadata double** %entries, i64 0, metadata !141, metadata !152), !dbg !505
  %11 = load double** %entries, align 8, !dbg !516, !tbaa !161
  %12 = getelementptr inbounds double* %11, i64 %indvars.iv, !dbg !516
  %13 = load double* %12, align 8, !dbg !516, !tbaa !518
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !520
  %15 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i8* %name, i32 %14, double %13) #6, !dbg !520
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !144, metadata !152), !dbg !506
  %16 = load i32* %size, align 4, !dbg !511, !tbaa !239
  %17 = sext i32 %16 to i64, !dbg !514
  %18 = icmp slt i64 %indvars.iv.next, %17, !dbg !514
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !515

._crit_edge:                                      ; preds = %.lr.ph, %6
  ret i32 1, !dbg !521
}

; Function Attrs: optsize
declare void @DV_sizeAndEntries(%struct._DV*, i32*, double**) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!148, !149, !150}
!llvm.ident = !{!151}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !145, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !90, !98, !104, !112, !118, !124, !129, !134}
!6 = !DISubprogram(name: "DV_readFromFile", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, i8*)* @DV_readFromFile, variables: !23)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !21}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !12, line: 20, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !12, line: 21, size: 192, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !13, file: !12, line: 22, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !13, file: !12, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !13, file: !12, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !13, file: !12, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !{!24, !25, !26, !87, !88, !89}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !6, file: !1, line: 24, type: !10)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !6, file: !1, line: 25, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !6, file: !1, line: 27, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 153, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !29, line: 122, size: 1216, align: 64, elements: !31)
!31 = !{!32, !35, !36, !37, !39, !40, !45, !46, !47, !51, !55, !65, !71, !72, !75, !76, !80, !84, !85, !86}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !30, file: !29, line: 123, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !30, file: !29, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !30, file: !29, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !29, line: 126, baseType: !38, size: 16, align: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !30, file: !29, line: 127, baseType: !38, size: 16, align: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !30, file: !29, line: 128, baseType: !41, size: 128, align: 64, offset: 192)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !29, line: 88, size: 128, align: 64, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !29, line: 89, baseType: !33, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !29, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !30, file: !29, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !30, file: !29, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !30, file: !29, line: 133, baseType: !48, size: 64, align: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!9, !4}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !30, file: !29, line: 134, baseType: !52, size: 64, align: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!9, !4, !21, !9}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !30, file: !29, line: 135, baseType: !56, size: 64, align: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !4, !59, !9}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !29, line: 77, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !61, line: 71, baseType: !62)
!61 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!64 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !30, file: !29, line: 136, baseType: !66, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!9, !4, !69, !9}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !30, file: !29, line: 139, baseType: !41, size: 128, align: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !30, file: !29, line: 140, baseType: !73, size: 64, align: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !29, line: 94, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !30, file: !29, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !30, file: !29, line: 144, baseType: !77, size: 24, align: 8, offset: 928)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, align: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !30, file: !29, line: 145, baseType: !81, size: 8, align: 8, offset: 952)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !30, file: !29, line: 148, baseType: !41, size: 128, align: 64, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !30, file: !29, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !29, line: 152, baseType: !59, size: 64, align: 64, offset: 1152)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !6, file: !1, line: 28, type: !9)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !6, file: !1, line: 28, type: !9)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !6, file: !1, line: 28, type: !9)
!90 = !DISubprogram(name: "DV_readFromFormattedFile", scope: !1, file: !1, line: 93, type: !91, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, %struct.__sFILE*)* @DV_readFromFormattedFile, variables: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!9, !10, !27}
!93 = !{!94, !95, !96, !97}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !90, file: !1, line: 94, type: !10)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !90, file: !1, line: 95, type: !27)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !90, file: !1, line: 97, type: !9)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !90, file: !1, line: 97, type: !9)
!98 = !DISubprogram(name: "DV_readFromBinaryFile", scope: !1, file: !1, line: 148, type: !91, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, %struct.__sFILE*)* @DV_readFromBinaryFile, variables: !99)
!99 = !{!100, !101, !102, !103}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !98, file: !1, line: 149, type: !10)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !98, file: !1, line: 150, type: !27)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !98, file: !1, line: 152, type: !9)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !98, file: !1, line: 152, type: !9)
!104 = !DISubprogram(name: "DV_writeToFile", scope: !1, file: !1, line: 212, type: !7, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, i8*)* @DV_writeToFile, variables: !105)
!105 = !{!106, !107, !108, !109, !110, !111}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !104, file: !1, line: 213, type: !10)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !104, file: !1, line: 214, type: !21)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !104, file: !1, line: 216, type: !27)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !104, file: !1, line: 217, type: !9)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !104, file: !1, line: 217, type: !9)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !104, file: !1, line: 217, type: !9)
!112 = !DISubprogram(name: "DV_writeToFormattedFile", scope: !1, file: !1, line: 286, type: !91, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, %struct.__sFILE*)* @DV_writeToFormattedFile, variables: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !112, file: !1, line: 287, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !112, file: !1, line: 288, type: !27)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !112, file: !1, line: 290, type: !9)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !112, file: !1, line: 290, type: !9)
!118 = !DISubprogram(name: "DV_writeToBinaryFile", scope: !1, file: !1, line: 331, type: !91, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, %struct.__sFILE*)* @DV_writeToBinaryFile, variables: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !118, file: !1, line: 332, type: !10)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !118, file: !1, line: 333, type: !27)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !118, file: !1, line: 335, type: !9)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !118, file: !1, line: 335, type: !9)
!124 = !DISubprogram(name: "DV_writeForHumanEye", scope: !1, file: !1, line: 373, type: !91, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, %struct.__sFILE*)* @DV_writeForHumanEye, variables: !125)
!125 = !{!126, !127, !128}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !124, file: !1, line: 374, type: !10)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !124, file: !1, line: 375, type: !27)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !124, file: !1, line: 377, type: !9)
!129 = !DISubprogram(name: "DV_writeStats", scope: !1, file: !1, line: 405, type: !91, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, %struct.__sFILE*)* @DV_writeStats, variables: !130)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !129, file: !1, line: 406, type: !10)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !129, file: !1, line: 407, type: !27)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !129, file: !1, line: 409, type: !9)
!134 = !DISubprogram(name: "DV_writeForMatlab", scope: !1, file: !1, line: 445, type: !135, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*, i8*, %struct.__sFILE*)* @DV_writeForMatlab, variables: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!9, !10, !21, !27}
!137 = !{!138, !139, !140, !141, !142, !143, !144}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !134, file: !1, line: 446, type: !10)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !134, file: !1, line: 447, type: !21)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !134, file: !1, line: 448, type: !27)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !134, file: !1, line: 450, type: !19)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !134, file: !1, line: 451, type: !9)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !134, file: !1, line: 451, type: !9)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !134, file: !1, line: 451, type: !9)
!145 = !{!146, !147}
!146 = !DIGlobalVariable(name: "suffixb", scope: !0, file: !1, line: 5, type: !69, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariable(name: "suffixf", scope: !0, file: !1, line: 6, type: !69, isLocal: true, isDefinition: true)
!148 = !{i32 2, !"Dwarf Version", i32 2}
!149 = !{i32 2, !"Debug Info Version", i32 700000003}
!150 = !{i32 1, !"PIC Level", i32 2}
!151 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!152 = !DIExpression()
!153 = !DILocation(line: 24, column: 11, scope: !6)
!154 = !DILocation(line: 25, column: 12, scope: !6)
!155 = !DILocation(line: 34, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 6)
!157 = !DILocation(line: 34, column: 23, scope: !156)
!158 = !DILocation(line: 34, column: 17, scope: !156)
!159 = !DILocation(line: 35, column: 12, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 34, column: 33)
!161 = !{!162, !162, i64 0}
!162 = !{!"any pointer", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !DILocation(line: 35, column: 4, scope: !160)
!166 = !DILocation(line: 38, column: 4, scope: !160)
!167 = !DILocation(line: 45, column: 12, scope: !6)
!168 = !DILocation(line: 28, column: 8, scope: !6)
!169 = !DILocation(line: 28, column: 22, scope: !6)
!170 = !DILocation(line: 47, column: 15, scope: !171)
!171 = distinct !DILexicalBlock(scope: !6, file: !1, line: 47, column: 6)
!172 = !DILocation(line: 47, column: 6, scope: !6)
!173 = !DILocation(line: 48, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 48, column: 9)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 47, column: 28)
!176 = !DILocation(line: 48, column: 9, scope: !174)
!177 = !DILocation(line: 48, column: 49, scope: !174)
!178 = !DILocation(line: 48, column: 9, scope: !175)
!179 = !DILocation(line: 49, column: 18, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 49, column: 12)
!181 = distinct !DILexicalBlock(scope: !174, file: !1, line: 48, column: 56)
!182 = !DILocation(line: 27, column: 9, scope: !6)
!183 = !DILocation(line: 49, column: 35, scope: !180)
!184 = !DILocation(line: 49, column: 12, scope: !181)
!185 = !DILocation(line: 50, column: 18, scope: !186)
!186 = distinct !DILexicalBlock(scope: !180, file: !1, line: 49, column: 45)
!187 = !DILocation(line: 50, column: 10, scope: !186)
!188 = !DILocation(line: 28, column: 18, scope: !6)
!189 = !DILocation(line: 53, column: 7, scope: !186)
!190 = !DILocation(line: 54, column: 15, scope: !191)
!191 = distinct !DILexicalBlock(scope: !180, file: !1, line: 53, column: 14)
!192 = !DILocation(line: 55, column: 10, scope: !191)
!193 = !DILocation(line: 57, column: 16, scope: !194)
!194 = distinct !DILexicalBlock(scope: !174, file: !1, line: 57, column: 16)
!195 = !DILocation(line: 57, column: 56, scope: !194)
!196 = !DILocation(line: 57, column: 16, scope: !174)
!197 = !DILocation(line: 58, column: 18, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 58, column: 12)
!199 = distinct !DILexicalBlock(scope: !194, file: !1, line: 57, column: 63)
!200 = !DILocation(line: 58, column: 34, scope: !198)
!201 = !DILocation(line: 58, column: 12, scope: !199)
!202 = !DILocation(line: 59, column: 18, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 58, column: 44)
!204 = !DILocation(line: 59, column: 10, scope: !203)
!205 = !DILocation(line: 62, column: 7, scope: !203)
!206 = !DILocation(line: 63, column: 15, scope: !207)
!207 = distinct !DILexicalBlock(scope: !198, file: !1, line: 62, column: 14)
!208 = !DILocation(line: 64, column: 10, scope: !207)
!209 = !DILocation(line: 67, column: 15, scope: !210)
!210 = distinct !DILexicalBlock(scope: !194, file: !1, line: 66, column: 11)
!211 = !DILocation(line: 67, column: 7, scope: !210)
!212 = !DILocation(line: 74, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !171, file: !1, line: 73, column: 8)
!214 = !DILocation(line: 74, column: 4, scope: !213)
!215 = !DILocation(line: 80, column: 14, scope: !6)
!216 = !DILocation(line: 149, column: 11, scope: !98)
!217 = !DILocation(line: 150, column: 12, scope: !98)
!218 = !DILocation(line: 158, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !98, file: !1, line: 158, column: 6)
!220 = !DILocation(line: 158, column: 23, scope: !219)
!221 = !DILocation(line: 158, column: 17, scope: !219)
!222 = !DILocation(line: 159, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 158, column: 33)
!224 = !DILocation(line: 159, column: 4, scope: !223)
!225 = !DILocation(line: 161, column: 4, scope: !223)
!226 = !DILocation(line: 163, column: 1, scope: !98)
!227 = !DILocation(line: 169, column: 18, scope: !228)
!228 = distinct !DILexicalBlock(scope: !98, file: !1, line: 169, column: 6)
!229 = !DILocation(line: 169, column: 12, scope: !228)
!230 = !DILocation(line: 152, column: 7, scope: !98)
!231 = !DILocation(line: 169, column: 55, scope: !228)
!232 = !DILocation(line: 169, column: 6, scope: !98)
!233 = !DILocation(line: 170, column: 12, scope: !234)
!234 = distinct !DILexicalBlock(scope: !228, file: !1, line: 169, column: 62)
!235 = !DILocation(line: 170, column: 4, scope: !234)
!236 = !DILocation(line: 172, column: 4, scope: !234)
!237 = !DILocation(line: 152, column: 11, scope: !98)
!238 = !DILocation(line: 179, column: 13, scope: !98)
!239 = !{!240, !240, i64 0}
!240 = !{!"int", !163, i64 0}
!241 = !DILocation(line: 179, column: 1, scope: !98)
!242 = !DILocation(line: 185, column: 27, scope: !243)
!243 = distinct !DILexicalBlock(scope: !98, file: !1, line: 185, column: 6)
!244 = !DILocation(line: 185, column: 18, scope: !243)
!245 = !DILocation(line: 185, column: 59, scope: !243)
!246 = !DILocation(line: 185, column: 12, scope: !243)
!247 = !DILocation(line: 186, column: 7, scope: !243)
!248 = !DILocation(line: 185, column: 6, scope: !98)
!249 = !DILocation(line: 187, column: 12, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !1, line: 186, column: 17)
!251 = !DILocation(line: 187, column: 4, scope: !250)
!252 = !DILocation(line: 190, column: 4, scope: !250)
!253 = !DILocation(line: 192, column: 13, scope: !98)
!254 = !DILocation(line: 94, column: 11, scope: !90)
!255 = !DILocation(line: 95, column: 12, scope: !90)
!256 = !DILocation(line: 103, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !90, file: !1, line: 103, column: 6)
!258 = !DILocation(line: 103, column: 23, scope: !257)
!259 = !DILocation(line: 103, column: 17, scope: !257)
!260 = !DILocation(line: 104, column: 12, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !1, line: 103, column: 33)
!262 = !DILocation(line: 104, column: 4, scope: !261)
!263 = !DILocation(line: 106, column: 4, scope: !261)
!264 = !DILocation(line: 108, column: 1, scope: !90)
!265 = !DILocation(line: 97, column: 11, scope: !90)
!266 = !DILocation(line: 114, column: 12, scope: !267)
!267 = distinct !DILexicalBlock(scope: !90, file: !1, line: 114, column: 6)
!268 = !DILocation(line: 97, column: 7, scope: !90)
!269 = !DILocation(line: 114, column: 37, scope: !267)
!270 = !DILocation(line: 114, column: 6, scope: !90)
!271 = !DILocation(line: 115, column: 12, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 114, column: 44)
!273 = !DILocation(line: 115, column: 4, scope: !272)
!274 = !DILocation(line: 117, column: 4, scope: !272)
!275 = !DILocation(line: 124, column: 13, scope: !90)
!276 = !DILocation(line: 124, column: 1, scope: !90)
!277 = !DILocation(line: 130, column: 25, scope: !278)
!278 = distinct !DILexicalBlock(scope: !90, file: !1, line: 130, column: 6)
!279 = !DILocation(line: 130, column: 31, scope: !278)
!280 = !DILocation(line: 130, column: 12, scope: !278)
!281 = !DILocation(line: 130, column: 51, scope: !278)
!282 = !DILocation(line: 130, column: 48, scope: !278)
!283 = !DILocation(line: 130, column: 6, scope: !90)
!284 = !DILocation(line: 131, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !278, file: !1, line: 130, column: 58)
!286 = !DILocation(line: 131, column: 4, scope: !285)
!287 = !DILocation(line: 133, column: 4, scope: !285)
!288 = !DILocation(line: 135, column: 13, scope: !90)
!289 = !DILocation(line: 213, column: 11, scope: !104)
!290 = !DILocation(line: 214, column: 12, scope: !104)
!291 = !DILocation(line: 223, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !104, file: !1, line: 223, column: 6)
!293 = !DILocation(line: 223, column: 23, scope: !292)
!294 = !DILocation(line: 223, column: 17, scope: !292)
!295 = !DILocation(line: 224, column: 12, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 223, column: 33)
!297 = !DILocation(line: 224, column: 4, scope: !296)
!298 = !DILocation(line: 226, column: 1, scope: !296)
!299 = !DILocation(line: 232, column: 12, scope: !104)
!300 = !DILocation(line: 217, column: 8, scope: !104)
!301 = !DILocation(line: 217, column: 22, scope: !104)
!302 = !DILocation(line: 234, column: 15, scope: !303)
!303 = distinct !DILexicalBlock(scope: !104, file: !1, line: 234, column: 6)
!304 = !DILocation(line: 234, column: 6, scope: !104)
!305 = !DILocation(line: 235, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 235, column: 9)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 234, column: 28)
!308 = !DILocation(line: 235, column: 9, scope: !306)
!309 = !DILocation(line: 235, column: 49, scope: !306)
!310 = !DILocation(line: 235, column: 9, scope: !307)
!311 = !DILocation(line: 236, column: 18, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 236, column: 12)
!313 = distinct !DILexicalBlock(scope: !306, file: !1, line: 235, column: 56)
!314 = !DILocation(line: 216, column: 9, scope: !104)
!315 = !DILocation(line: 236, column: 35, scope: !312)
!316 = !DILocation(line: 236, column: 12, scope: !313)
!317 = !DILocation(line: 237, column: 18, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !1, line: 236, column: 45)
!319 = !DILocation(line: 237, column: 10, scope: !318)
!320 = !DILocation(line: 217, column: 18, scope: !104)
!321 = !DILocation(line: 240, column: 7, scope: !318)
!322 = !DILocation(line: 241, column: 15, scope: !323)
!323 = distinct !DILexicalBlock(scope: !312, file: !1, line: 240, column: 14)
!324 = !DILocation(line: 242, column: 10, scope: !323)
!325 = !DILocation(line: 244, column: 16, scope: !326)
!326 = distinct !DILexicalBlock(scope: !306, file: !1, line: 244, column: 16)
!327 = !DILocation(line: 244, column: 56, scope: !326)
!328 = !DILocation(line: 244, column: 16, scope: !306)
!329 = !DILocation(line: 245, column: 18, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 245, column: 12)
!331 = distinct !DILexicalBlock(scope: !326, file: !1, line: 244, column: 63)
!332 = !DILocation(line: 245, column: 34, scope: !330)
!333 = !DILocation(line: 245, column: 12, scope: !331)
!334 = !DILocation(line: 246, column: 18, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !1, line: 245, column: 44)
!336 = !DILocation(line: 246, column: 10, scope: !335)
!337 = !DILocation(line: 249, column: 7, scope: !335)
!338 = !DILocation(line: 250, column: 15, scope: !339)
!339 = distinct !DILexicalBlock(scope: !330, file: !1, line: 249, column: 14)
!340 = !DILocation(line: 251, column: 10, scope: !339)
!341 = !DILocation(line: 254, column: 18, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 254, column: 12)
!343 = distinct !DILexicalBlock(scope: !326, file: !1, line: 253, column: 11)
!344 = !DILocation(line: 254, column: 34, scope: !342)
!345 = !DILocation(line: 254, column: 12, scope: !343)
!346 = !DILocation(line: 255, column: 18, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 254, column: 44)
!348 = !DILocation(line: 255, column: 10, scope: !347)
!349 = !DILocation(line: 258, column: 7, scope: !347)
!350 = !DILocation(line: 259, column: 15, scope: !351)
!351 = distinct !DILexicalBlock(scope: !342, file: !1, line: 258, column: 14)
!352 = !DILocation(line: 260, column: 10, scope: !351)
!353 = !DILocation(line: 264, column: 15, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 264, column: 9)
!355 = distinct !DILexicalBlock(scope: !303, file: !1, line: 263, column: 8)
!356 = !DILocation(line: 264, column: 31, scope: !354)
!357 = !DILocation(line: 264, column: 9, scope: !355)
!358 = !DILocation(line: 265, column: 15, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !1, line: 264, column: 41)
!360 = !DILocation(line: 265, column: 7, scope: !359)
!361 = !DILocation(line: 268, column: 4, scope: !359)
!362 = !DILocation(line: 269, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !354, file: !1, line: 268, column: 11)
!364 = !DILocation(line: 270, column: 7, scope: !363)
!365 = !DILocation(line: 273, column: 1, scope: !104)
!366 = !DILocation(line: 332, column: 11, scope: !118)
!367 = !DILocation(line: 333, column: 12, scope: !118)
!368 = !DILocation(line: 341, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !118, file: !1, line: 341, column: 6)
!370 = !DILocation(line: 341, column: 23, scope: !369)
!371 = !DILocation(line: 341, column: 17, scope: !369)
!372 = !DILocation(line: 341, column: 38, scope: !369)
!373 = !{!374, !240, i64 0}
!374 = !{!"_DV", !240, i64 0, !240, i64 4, !240, i64 8, !162, i64 16}
!375 = !DILocation(line: 341, column: 43, scope: !369)
!376 = !DILocation(line: 341, column: 6, scope: !118)
!377 = !DILocation(line: 342, column: 12, scope: !378)
!378 = distinct !DILexicalBlock(scope: !369, file: !1, line: 341, column: 50)
!379 = !DILocation(line: 342, column: 4, scope: !378)
!380 = !DILocation(line: 344, column: 4, scope: !378)
!381 = !DILocation(line: 346, column: 8, scope: !118)
!382 = !DILocation(line: 335, column: 11, scope: !118)
!383 = !DILocation(line: 346, column: 6, scope: !118)
!384 = !DILocation(line: 347, column: 13, scope: !118)
!385 = !DILocation(line: 347, column: 6, scope: !118)
!386 = !DILocation(line: 335, column: 7, scope: !118)
!387 = !DILocation(line: 348, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !118, file: !1, line: 348, column: 6)
!389 = !DILocation(line: 348, column: 6, scope: !118)
!390 = !DILocation(line: 349, column: 12, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !1, line: 348, column: 16)
!392 = !DILocation(line: 349, column: 4, scope: !391)
!393 = !DILocation(line: 351, column: 4, scope: !391)
!394 = !DILocation(line: 353, column: 22, scope: !118)
!395 = !DILocation(line: 353, column: 13, scope: !118)
!396 = !DILocation(line: 353, column: 54, scope: !118)
!397 = !DILocation(line: 353, column: 6, scope: !118)
!398 = !DILocation(line: 354, column: 12, scope: !399)
!399 = distinct !DILexicalBlock(scope: !118, file: !1, line: 354, column: 6)
!400 = !DILocation(line: 354, column: 9, scope: !399)
!401 = !DILocation(line: 354, column: 6, scope: !118)
!402 = !DILocation(line: 355, column: 12, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 354, column: 19)
!404 = !DILocation(line: 355, column: 4, scope: !403)
!405 = !DILocation(line: 358, column: 4, scope: !403)
!406 = !DILocation(line: 360, column: 13, scope: !118)
!407 = !DILocation(line: 287, column: 11, scope: !112)
!408 = !DILocation(line: 288, column: 12, scope: !112)
!409 = !DILocation(line: 296, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !112, file: !1, line: 296, column: 6)
!411 = !DILocation(line: 296, column: 23, scope: !410)
!412 = !DILocation(line: 296, column: 17, scope: !410)
!413 = !DILocation(line: 299, column: 44, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !1, line: 296, column: 50)
!415 = !DILocation(line: 296, column: 38, scope: !410)
!416 = !DILocation(line: 296, column: 43, scope: !410)
!417 = !DILocation(line: 296, column: 6, scope: !112)
!418 = !DILocation(line: 297, column: 12, scope: !414)
!419 = !DILocation(line: 297, column: 4, scope: !414)
!420 = !DILocation(line: 299, column: 12, scope: !414)
!421 = !DILocation(line: 299, column: 4, scope: !414)
!422 = !DILocation(line: 300, column: 4, scope: !414)
!423 = !DILocation(line: 307, column: 8, scope: !112)
!424 = !DILocation(line: 290, column: 11, scope: !112)
!425 = !DILocation(line: 308, column: 6, scope: !112)
!426 = !DILocation(line: 290, column: 7, scope: !112)
!427 = !DILocation(line: 309, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !112, file: !1, line: 309, column: 6)
!429 = !DILocation(line: 309, column: 6, scope: !112)
!430 = !DILocation(line: 310, column: 12, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !1, line: 309, column: 15)
!432 = !DILocation(line: 310, column: 4, scope: !431)
!433 = !DILocation(line: 312, column: 4, scope: !431)
!434 = !DILocation(line: 314, column: 11, scope: !435)
!435 = distinct !DILexicalBlock(scope: !112, file: !1, line: 314, column: 6)
!436 = !DILocation(line: 314, column: 6, scope: !112)
!437 = !DILocation(line: 315, column: 24, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !1, line: 314, column: 17)
!439 = !DILocation(line: 315, column: 4, scope: !438)
!440 = !DILocation(line: 316, column: 1, scope: !438)
!441 = !DILocation(line: 318, column: 13, scope: !112)
!442 = !DILocation(line: 374, column: 11, scope: !124)
!443 = !DILocation(line: 375, column: 12, scope: !124)
!444 = !DILocation(line: 379, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !124, file: !1, line: 379, column: 6)
!446 = !DILocation(line: 379, column: 23, scope: !445)
!447 = !DILocation(line: 379, column: 17, scope: !445)
!448 = !DILocation(line: 380, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !1, line: 379, column: 33)
!450 = !DILocation(line: 380, column: 4, scope: !449)
!451 = !DILocation(line: 382, column: 4, scope: !449)
!452 = !DILocation(line: 384, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !124, file: !1, line: 384, column: 6)
!454 = !DILocation(line: 377, column: 7, scope: !124)
!455 = !DILocation(line: 384, column: 35, scope: !453)
!456 = !DILocation(line: 384, column: 6, scope: !124)
!457 = !DILocation(line: 385, column: 12, scope: !458)
!458 = distinct !DILexicalBlock(scope: !453, file: !1, line: 384, column: 42)
!459 = !DILocation(line: 385, column: 4, scope: !458)
!460 = !DILocation(line: 388, column: 4, scope: !458)
!461 = !DILocation(line: 390, column: 15, scope: !124)
!462 = !DILocation(line: 390, column: 28, scope: !124)
!463 = !DILocation(line: 390, column: 1, scope: !124)
!464 = !DILocation(line: 392, column: 1, scope: !124)
!465 = !DILocation(line: 392, column: 13, scope: !124)
!466 = !DILocation(line: 406, column: 11, scope: !129)
!467 = !DILocation(line: 407, column: 12, scope: !129)
!468 = !DILocation(line: 415, column: 9, scope: !469)
!469 = distinct !DILexicalBlock(scope: !129, file: !1, line: 415, column: 6)
!470 = !DILocation(line: 415, column: 23, scope: !469)
!471 = !DILocation(line: 415, column: 17, scope: !469)
!472 = !DILocation(line: 416, column: 12, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !1, line: 415, column: 33)
!474 = !DILocation(line: 416, column: 4, scope: !473)
!475 = !DILocation(line: 418, column: 4, scope: !473)
!476 = !DILocation(line: 420, column: 6, scope: !129)
!477 = !DILocation(line: 409, column: 7, scope: !129)
!478 = !DILocation(line: 421, column: 9, scope: !479)
!479 = distinct !DILexicalBlock(scope: !129, file: !1, line: 421, column: 6)
!480 = !DILocation(line: 421, column: 6, scope: !129)
!481 = !DILocation(line: 424, column: 18, scope: !129)
!482 = !DILocation(line: 424, column: 28, scope: !129)
!483 = !{!374, !240, i64 4}
!484 = !DILocation(line: 424, column: 41, scope: !129)
!485 = !{!374, !240, i64 8}
!486 = !DILocation(line: 422, column: 6, scope: !129)
!487 = !DILocation(line: 425, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !129, file: !1, line: 425, column: 6)
!489 = !DILocation(line: 425, column: 6, scope: !129)
!490 = !DILocation(line: 429, column: 12, scope: !129)
!491 = !DILocation(line: 429, column: 4, scope: !129)
!492 = !DILocation(line: 431, column: 4, scope: !129)
!493 = !DILocation(line: 432, column: 1, scope: !129)
!494 = !DILocation(line: 446, column: 12, scope: !134)
!495 = !DILocation(line: 447, column: 12, scope: !134)
!496 = !DILocation(line: 448, column: 12, scope: !134)
!497 = !DILocation(line: 457, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !134, file: !1, line: 457, column: 6)
!499 = !DILocation(line: 457, column: 23, scope: !498)
!500 = !DILocation(line: 457, column: 17, scope: !498)
!501 = !DILocation(line: 458, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 457, column: 33)
!503 = !DILocation(line: 458, column: 4, scope: !502)
!504 = !DILocation(line: 460, column: 4, scope: !502)
!505 = !DILocation(line: 450, column: 11, scope: !134)
!506 = !DILocation(line: 451, column: 18, scope: !134)
!507 = !DILocation(line: 462, column: 1, scope: !134)
!508 = !DILocation(line: 463, column: 45, scope: !134)
!509 = !DILocation(line: 463, column: 1, scope: !134)
!510 = !DILocation(line: 451, column: 10, scope: !134)
!511 = !DILocation(line: 464, column: 21, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 464, column: 1)
!513 = distinct !DILexicalBlock(scope: !134, file: !1, line: 464, column: 1)
!514 = !DILocation(line: 464, column: 19, scope: !512)
!515 = !DILocation(line: 464, column: 1, scope: !513)
!516 = !DILocation(line: 465, column: 53, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !1, line: 464, column: 35)
!518 = !{!519, !519, i64 0}
!519 = !{!"double", !163, i64 0}
!520 = !DILocation(line: 465, column: 4, scope: !517)
!521 = !DILocation(line: 467, column: 1, scope: !134)

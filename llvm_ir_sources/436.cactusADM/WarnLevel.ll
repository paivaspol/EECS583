; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PKeyedData = type { %struct.PKeyedData*, %struct.PKeyedData*, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [12 x i8] c"INFO (%s): \00", align 1
@warning_level = internal unnamed_addr global i32 1, align 4
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str3 = private unnamed_addr constant [19 x i8] c"cctk_full_warnings\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@error_level = internal unnamed_addr global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [68 x i8] c"WARNING level %d in thorn %s processor %d\0A  (line %d of %s): \0A  -> \00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"WARNING[L%d,P%d] (%s): \00", align 1
@CCTK_Abort = external global i32 (%struct.cGH*, i32)*
@parameter_level = internal unnamed_addr global i32 1, align 4
@.str7 = private unnamed_addr constant [24 x i8] c"cctk_strong_param_check\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"PARAM %s (%s): %s\0A\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@param_errors = internal unnamed_addr global i32 0, align 4
@formatlist = internal global %struct.PKeyedData* null, align 8
@n_formats = internal unnamed_addr global i32 0, align 4
@.str11 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c\00", align 1
@.str12 = private unnamed_addr constant [85 x i8] c"CCTKi_SetParameterLevel: Parameter checking level %d not recognised, level unchanged\00", align 1
@.str13 = private unnamed_addr constant [31 x i8] c"%s warning level from %d to %d\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"Increasing\00", align 1
@.str15 = private unnamed_addr constant [11 x i8] c"Decreasing\00", align 1
@.str16 = private unnamed_addr constant [28 x i8] c"Warning level is already %d\00", align 1
@.str17 = private unnamed_addr constant [44 x i8] c"Decreasing error level to new warning level\00", align 1
@.str18 = private unnamed_addr constant [29 x i8] c"%s error level from %d to %d\00", align 1
@.str19 = private unnamed_addr constant [26 x i8] c"Error level is already %d\00", align 1
@.str20 = private unnamed_addr constant [57 x i8] c"Increasing warning level from %d to match error level %d\00", align 1
@.str21 = private unnamed_addr constant [38 x i8] c"\0AFailed parameter check (%d errors)\0A\0A\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"\0AThere was 1 parameter warning\0A\0A\00", align 1
@.str23 = private unnamed_addr constant [36 x i8] c"\0AThere were %d parameter warnings\0A\0A\00", align 1
@.str24 = private unnamed_addr constant [28 x i8] c"%s: feature not implemented\00", align 1
@.str25 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/WarnLevel.c,v 1.56 2001/12/10 00:46:25 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_WarnLevel_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str25, i64 0, i64 0), !dbg !219
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Info(i8* %thorn, i8* %message) #1 {
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !18, metadata !220), !dbg !221
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !19, metadata !220), !dbg !222
  %1 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #8, !dbg !223
  ret i32 0, !dbg !224
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_VInfo(i8* %thorn, i8* nocapture readonly %format, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !36, metadata !220), !dbg !225
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !37, metadata !220), !dbg !226
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !38, metadata !220), !dbg !227
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !228
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !228
  call void @llvm.va_start(i8* %2), !dbg !228
  %3 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !229, !tbaa !230
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* %thorn) #9, !dbg !234
  %5 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !235, !tbaa !230
  %6 = call i32 @vfprintf(%struct.__sFILE* %5, i8* %format, %struct.__va_list_tag* %1) #9, !dbg !236
  %7 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !237, !tbaa !230
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %7), !dbg !238
  %8 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !239, !tbaa !230
  %9 = call i32 @fflush(%struct.__sFILE* %8) #9, !dbg !240
  call void @llvm.va_end(i8* %2), !dbg !241
  ret i32 0, !dbg !242
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_info_(i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !26, metadata !220), !dbg !243
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !27, metadata !220), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !28, metadata !220), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !29, metadata !220), !dbg !243
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !30, metadata !220), !dbg !244
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !31, metadata !220), !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !18, metadata !220) #5, !dbg !245
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !19, metadata !220) #5, !dbg !247
  %3 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %2) #9, !dbg !248
  tail call void @free(i8* %1) #8, !dbg !249
  tail call void @free(i8* %2) #8, !dbg !250
  ret void, !dbg !251
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, %struct.__va_list_tag*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Warn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !57, metadata !220), !dbg !252
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !58, metadata !220), !dbg !253
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !59, metadata !220), !dbg !254
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !60, metadata !220), !dbg !255
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !61, metadata !220), !dbg !256
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #8, !dbg !257
  ret i32 0, !dbg !258
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_VWarn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* nocapture readonly %format, ...) #1 {
  %param_type = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !81, metadata !220), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !82, metadata !220), !dbg !260
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !83, metadata !220), !dbg !261
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !84, metadata !220), !dbg !262
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !85, metadata !220), !dbg !263
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !89, metadata !220), !dbg !264
  %1 = load i32* @warning_level, align 4, !dbg !265, !tbaa !267
  %2 = icmp slt i32 %1, %level, !dbg !269
  br i1 %2, label %45, label %3, !dbg !270

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !271, !tbaa !230
  %5 = tail call i32 %4(%struct.cGH* null) #9, !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !88, metadata !220), !dbg !273
  tail call void @llvm.dbg.value(metadata i32* %param_type, i64 0, metadata !87, metadata !220), !dbg !274
  %6 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #9, !dbg !275
  %7 = bitcast i8* %6 to i32*, !dbg !276
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !86, metadata !220), !dbg !277
  %8 = load i32* @error_level, align 4, !dbg !278, !tbaa !267
  %9 = icmp slt i32 %8, %level, !dbg !280
  br i1 %9, label %10, label %15, !dbg !281

; <label>:10                                      ; preds = %3
  %11 = icmp eq i8* %6, null, !dbg !282
  br i1 %11, label %22, label %12, !dbg !283

; <label>:12                                      ; preds = %10
  %13 = load i32* %7, align 4, !dbg !284, !tbaa !267
  %14 = icmp eq i32 %13, 0, !dbg !284
  br i1 %14, label %22, label %15, !dbg !285

; <label>:15                                      ; preds = %12, %3
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !286, !tbaa !230
  %17 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([68 x i8]* @.str5, i64 0, i64 0), i32 %level, i8* %thorn, i32 %5, i32 %line, i8* %file) #9, !dbg !288
  %18 = icmp eq i32 %5, 0, !dbg !289
  br i1 %18, label %29, label %19, !dbg !291

; <label>:19                                      ; preds = %15
  %20 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !292, !tbaa !230
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([68 x i8]* @.str5, i64 0, i64 0), i32 %level, i8* %thorn, i32 %5, i32 %line, i8* %file) #9, !dbg !294
  br label %29, !dbg !295

; <label>:22                                      ; preds = %12, %10
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !296, !tbaa !230
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %level, i32 %5, i8* %thorn) #9, !dbg !298
  %25 = icmp eq i32 %5, 0, !dbg !299
  br i1 %25, label %29, label %26, !dbg !301

; <label>:26                                      ; preds = %22
  %27 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !302, !tbaa !230
  %28 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %level, i32 %5, i8* %thorn) #9, !dbg !304
  br label %29, !dbg !305

; <label>:29                                      ; preds = %15, %22, %26, %19
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !306
  %31 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !306
  call void @llvm.va_start(i8* %31), !dbg !306
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !307, !tbaa !230
  %33 = call i32 @vfprintf(%struct.__sFILE* %32, i8* %format, %struct.__va_list_tag* %30) #9, !dbg !308
  %34 = load %struct.__sFILE** @__stderrp, align 8, !dbg !309, !tbaa !230
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %34), !dbg !310
  %35 = load %struct.__sFILE** @__stderrp, align 8, !dbg !311, !tbaa !230
  %36 = call i32 @fflush(%struct.__sFILE* %35) #9, !dbg !312
  %37 = icmp eq i32 %5, 0, !dbg !313
  br i1 %37, label %44, label %38, !dbg !315

; <label>:38                                      ; preds = %29
  %39 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !316, !tbaa !230
  %40 = call i32 @vfprintf(%struct.__sFILE* %39, i8* %format, %struct.__va_list_tag* %30) #9, !dbg !318
  %41 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !319, !tbaa !230
  %fputc3 = call i32 @fputc(i32 10, %struct.__sFILE* %41), !dbg !320
  %42 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !321, !tbaa !230
  %43 = call i32 @fflush(%struct.__sFILE* %42) #9, !dbg !322
  br label %44, !dbg !323

; <label>:44                                      ; preds = %29, %38
  call void @llvm.va_end(i8* %31), !dbg !324
  br label %45, !dbg !325

; <label>:45                                      ; preds = %0, %44
  %46 = load i32* @error_level, align 4, !dbg !326, !tbaa !267
  %47 = icmp slt i32 %46, %level, !dbg !328
  br i1 %47, label %51, label %48, !dbg !329

; <label>:48                                      ; preds = %45
  %49 = load i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !dbg !330, !tbaa !230
  %50 = call i32 %49(%struct.cGH* null, i32 0) #9, !dbg !330
  br label %51, !dbg !332

; <label>:51                                      ; preds = %45, %48
  ret i32 0, !dbg !333
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_warn_(i32* nocapture readonly %level, i32* nocapture readonly %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  tail call void @llvm.dbg.value(metadata i32* %level, i64 0, metadata !66, metadata !220), !dbg !334
  tail call void @llvm.dbg.value(metadata i32* %line, i64 0, metadata !67, metadata !220), !dbg !335
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !68, metadata !220), !dbg !336
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !69, metadata !220), !dbg !336
  tail call void @llvm.dbg.value(metadata i8* %cctk_str3, i64 0, metadata !70, metadata !220), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !71, metadata !220), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !72, metadata !220), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen3, i64 0, metadata !73, metadata !220), !dbg !336
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !337
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !74, metadata !220), !dbg !337
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !337
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !75, metadata !220), !dbg !337
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #9, !dbg !337
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !76, metadata !220), !dbg !337
  %4 = load i32* %level, align 4, !dbg !338, !tbaa !267
  %5 = load i32* %line, align 4, !dbg !339, !tbaa !267
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !57, metadata !220) #5, !dbg !340
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !58, metadata !220) #5, !dbg !342
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !59, metadata !220) #5, !dbg !343
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !60, metadata !220) #5, !dbg !344
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !61, metadata !220) #5, !dbg !345
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %4, i32 %5, i8* %1, i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %3) #9, !dbg !346
  tail call void @free(i8* %2) #8, !dbg !347
  tail call void @free(i8* %3) #8, !dbg !348
  tail call void @free(i8* %1) #8, !dbg !349
  ret void, !dbg !350
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_ParameterLevel() #6 {
  %1 = load i32* @parameter_level, align 4, !dbg !351, !tbaa !267
  ret i32 %1, !dbg !352
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ParamWarn(i8* %thorn, i8* %message) #1 {
  %param_type = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !95, metadata !220), !dbg !353
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !96, metadata !220), !dbg !354
  tail call void @llvm.dbg.value(metadata i32* %param_type, i64 0, metadata !98, metadata !220), !dbg !355
  %1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #9, !dbg !356
  %2 = bitcast i8* %1 to i32*, !dbg !357
  call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !97, metadata !220), !dbg !358
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !359, !tbaa !230
  %4 = load i32* %2, align 4, !dbg !360, !tbaa !267
  %5 = icmp ne i32 %4, 0, !dbg !360
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), !dbg !360
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* %6, i8* %thorn, i8* %message) #9, !dbg !361
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !362, !tbaa !230
  %9 = call i32 @fflush(%struct.__sFILE* %8) #9, !dbg !363
  %10 = load i32* @param_errors, align 4, !dbg !364, !tbaa !267
  %11 = add nsw i32 %10, 1, !dbg !364
  store i32 %11, i32* @param_errors, align 4, !dbg !364, !tbaa !267
  ret i32 0, !dbg !365
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_paramwarn_(i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !101, metadata !220), !dbg !366
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !102, metadata !220), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !103, metadata !220), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !104, metadata !220), !dbg !366
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !367
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !105, metadata !220), !dbg !367
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !367
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !106, metadata !220), !dbg !367
  %3 = tail call i32 @CCTK_ParamWarn(i8* %1, i8* %2) #8, !dbg !368
  tail call void @free(i8* %1) #8, !dbg !369
  tail call void @free(i8* %2) #8, !dbg !370
  ret void, !dbg !371
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_messageformat_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !111, metadata !220), !dbg !372
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !112, metadata !220), !dbg !372
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !373
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !113, metadata !220), !dbg !373
  %2 = load i32* @n_formats, align 4, !dbg !374, !tbaa !267
  %3 = tail call i32 @StoreKeyedData(%struct.PKeyedData** @formatlist, i32 %2, i8* %1) #9, !dbg !375
  %4 = load i32* @n_formats, align 4, !dbg !376, !tbaa !267
  %5 = add nsw i32 %4, 1, !dbg !376
  store i32 %5, i32* @n_formats, align 4, !dbg !376, !tbaa !267
  ret i32 %4, !dbg !377
}

; Function Attrs: optsize
declare i32 @StoreKeyedData(%struct.PKeyedData**, i32, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetParameterLevel(i32 %level) #1 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !118, metadata !220), !dbg !378
  %1 = icmp ult i32 %level, 3, !dbg !379
  br i1 %1, label %2, label %3, !dbg !379

; <label>:2                                       ; preds = %0
  store i32 %level, i32* @parameter_level, align 4, !dbg !381, !tbaa !267
  br label %5, !dbg !383

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 487, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i32 %level) #8, !dbg !384
  %.pre = load i32* @parameter_level, align 4, !dbg !386, !tbaa !267
  br label %5

; <label>:5                                       ; preds = %3, %2
  %6 = phi i32 [ %.pre, %3 ], [ %level, %2 ]
  ret i32 %6, !dbg !387
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetWarnLevel(i32 %level) #1 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !121, metadata !220), !dbg !388
  %1 = load i32* @warning_level, align 4, !dbg !389, !tbaa !267
  %2 = icmp eq i32 %1, %level, !dbg !391
  br i1 %2, label %8, label %3, !dbg !392

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %1, %level, !dbg !393
  %5 = select i1 %4, i32 1, i32 -1, !dbg !395
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !122, metadata !220), !dbg !396
  %6 = select i1 %4, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0), !dbg !397
  %7 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str13, i64 0, i64 0), i8* %6, i32 %1, i32 %level) #8, !dbg !398
  store i32 %level, i32* @warning_level, align 4, !dbg !399, !tbaa !267
  br label %10, !dbg !400

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str16, i64 0, i64 0), i32 %level) #8, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !122, metadata !220), !dbg !396
  %.pre = load i32* @warning_level, align 4, !dbg !403, !tbaa !267
  br label %10

; <label>:10                                      ; preds = %8, %3
  %11 = phi i32 [ %level, %3 ], [ %.pre, %8 ]
  %retval.0 = phi i32 [ %5, %3 ], [ 0, %8 ]
  %12 = load i32* @error_level, align 4, !dbg !405, !tbaa !267
  %13 = icmp slt i32 %11, %12, !dbg !406
  br i1 %13, label %14, label %16, !dbg !407

; <label>:14                                      ; preds = %10
  store i32 %11, i32* @error_level, align 4, !dbg !408, !tbaa !267
  %15 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 541, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str17, i64 0, i64 0), i32 %11) #8, !dbg !410
  br label %16, !dbg !411

; <label>:16                                      ; preds = %14, %10
  ret i32 %retval.0, !dbg !412
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetErrorLevel(i32 %level) #1 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !125, metadata !220), !dbg !413
  %1 = load i32* @warning_level, align 4, !dbg !414, !tbaa !267
  %2 = icmp slt i32 %1, %level, !dbg !416
  br i1 %2, label %13, label %3, !dbg !417

; <label>:3                                       ; preds = %0
  %4 = load i32* @error_level, align 4, !dbg !418, !tbaa !267
  %5 = icmp eq i32 %4, %level, !dbg !421
  br i1 %5, label %11, label %6, !dbg !422

; <label>:6                                       ; preds = %3
  %7 = icmp slt i32 %4, %level, !dbg !423
  %8 = select i1 %7, i32 1, i32 -1, !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !126, metadata !220), !dbg !426
  %9 = select i1 %7, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0), !dbg !427
  %10 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str18, i64 0, i64 0), i8* %9, i32 %4, i32 %level) #8, !dbg !428
  store i32 %level, i32* @error_level, align 4, !dbg !429, !tbaa !267
  br label %15, !dbg !430

; <label>:11                                      ; preds = %3
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 587, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0), i32 %level) #8, !dbg !431
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !220), !dbg !426
  br label %15

; <label>:13                                      ; preds = %0
  store i32 %level, i32* @error_level, align 4, !dbg !433, !tbaa !267
  %14 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str20, i64 0, i64 0), i32 %1, i32 %level) #8, !dbg !435
  store i32 %level, i32* @warning_level, align 4, !dbg !436, !tbaa !267
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !220), !dbg !426
  br label %15

; <label>:15                                      ; preds = %6, %11, %13
  %retval.0 = phi i32 [ %8, %6 ], [ 0, %11 ], [ 0, %13 ]
  ret i32 %retval.0, !dbg !437
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_ExpectError(i32 %in, i32 %err, i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
  tail call void @llvm.dbg.value(metadata i32 %in, i64 0, metadata !131, metadata !220), !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %err, i64 0, metadata !132, metadata !220), !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %warnonerr, i64 0, metadata !133, metadata !220), !dbg !440
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !134, metadata !220), !dbg !441
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !135, metadata !220), !dbg !442
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !136, metadata !220), !dbg !443
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !137, metadata !220), !dbg !444
  %1 = icmp eq i32 %in, %err, !dbg !445
  br i1 %1, label %2, label %4, !dbg !447

; <label>:2                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 %warnonerr, i64 0, metadata !57, metadata !220) #5, !dbg !448
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !58, metadata !220) #5, !dbg !451
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !59, metadata !220) #5, !dbg !452
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !60, metadata !220) #5, !dbg !453
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !61, metadata !220) #5, !dbg !454
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #9, !dbg !455
  br label %4, !dbg !456

; <label>:4                                       ; preds = %2, %0
  ret void, !dbg !457
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_expecterror_(i32* nocapture readonly %in, i32* nocapture readonly %err, i32* nocapture readonly %warnonerr, i32* nocapture readonly %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  tail call void @llvm.dbg.value(metadata i32* %in, i64 0, metadata !142, metadata !220), !dbg !458
  tail call void @llvm.dbg.value(metadata i32* %err, i64 0, metadata !143, metadata !220), !dbg !459
  tail call void @llvm.dbg.value(metadata i32* %warnonerr, i64 0, metadata !144, metadata !220), !dbg !460
  tail call void @llvm.dbg.value(metadata i32* %line, i64 0, metadata !145, metadata !220), !dbg !461
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !146, metadata !220), !dbg !462
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !147, metadata !220), !dbg !462
  tail call void @llvm.dbg.value(metadata i8* %cctk_str3, i64 0, metadata !148, metadata !220), !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !149, metadata !220), !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !150, metadata !220), !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen3, i64 0, metadata !151, metadata !220), !dbg !462
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !152, metadata !220), !dbg !463
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !463
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !153, metadata !220), !dbg !463
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #9, !dbg !463
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !154, metadata !220), !dbg !463
  %4 = load i32* %in, align 4, !dbg !464, !tbaa !267
  %5 = load i32* %err, align 4, !dbg !465, !tbaa !267
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !131, metadata !220) #5, !dbg !466
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !132, metadata !220) #5, !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !133, metadata !220) #5, !dbg !469
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !134, metadata !220) #5, !dbg !470
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !135, metadata !220) #5, !dbg !471
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !136, metadata !220) #5, !dbg !472
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !137, metadata !220) #5, !dbg !473
  %6 = icmp eq i32 %4, %5, !dbg !474
  br i1 %6, label %7, label %CCTKi_ExpectError.exit, !dbg !475

; <label>:7                                       ; preds = %0
  %8 = load i32* %line, align 4, !dbg !476, !tbaa !267
  %9 = load i32* %warnonerr, align 4, !dbg !477, !tbaa !267
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !57, metadata !220) #5, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !58, metadata !220) #5, !dbg !480
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !59, metadata !220) #5, !dbg !481
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !60, metadata !220) #5, !dbg !482
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !61, metadata !220) #5, !dbg !483
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %9, i32 %8, i8* %1, i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %3) #9, !dbg !484
  br label %CCTKi_ExpectError.exit, !dbg !485

CCTKi_ExpectError.exit:                           ; preds = %0, %7
  tail call void @free(i8* %1) #8, !dbg !486
  tail call void @free(i8* %2) #8, !dbg !487
  tail call void @free(i8* %3) #8, !dbg !488
  ret void, !dbg !489
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_ExpectOK(i32 %in, i32 %ok, i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
  tail call void @llvm.dbg.value(metadata i32 %in, i64 0, metadata !157, metadata !220), !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %ok, i64 0, metadata !158, metadata !220), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %warnonerr, i64 0, metadata !159, metadata !220), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !160, metadata !220), !dbg !493
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !161, metadata !220), !dbg !494
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !162, metadata !220), !dbg !495
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !163, metadata !220), !dbg !496
  %1 = icmp eq i32 %in, %ok, !dbg !497
  br i1 %1, label %4, label %2, !dbg !499

; <label>:2                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 %warnonerr, i64 0, metadata !57, metadata !220) #5, !dbg !500
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !58, metadata !220) #5, !dbg !503
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !59, metadata !220) #5, !dbg !504
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !60, metadata !220) #5, !dbg !505
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !61, metadata !220) #5, !dbg !506
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #9, !dbg !507
  br label %4, !dbg !508

; <label>:4                                       ; preds = %0, %2
  ret void, !dbg !509
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_expectok_(i32* nocapture readonly %in, i32* nocapture readonly %ok, i32* nocapture readonly %warnonerr, i32* nocapture readonly %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  tail call void @llvm.dbg.value(metadata i32* %in, i64 0, metadata !166, metadata !220), !dbg !510
  tail call void @llvm.dbg.value(metadata i32* %ok, i64 0, metadata !167, metadata !220), !dbg !511
  tail call void @llvm.dbg.value(metadata i32* %warnonerr, i64 0, metadata !168, metadata !220), !dbg !512
  tail call void @llvm.dbg.value(metadata i32* %line, i64 0, metadata !169, metadata !220), !dbg !513
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !170, metadata !220), !dbg !514
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !171, metadata !220), !dbg !514
  tail call void @llvm.dbg.value(metadata i8* %cctk_str3, i64 0, metadata !172, metadata !220), !dbg !514
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !173, metadata !220), !dbg !514
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !174, metadata !220), !dbg !514
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen3, i64 0, metadata !175, metadata !220), !dbg !514
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !515
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !176, metadata !220), !dbg !515
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !515
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !177, metadata !220), !dbg !515
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #9, !dbg !515
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !178, metadata !220), !dbg !515
  %4 = load i32* %in, align 4, !dbg !516, !tbaa !267
  %5 = load i32* %ok, align 4, !dbg !517, !tbaa !267
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !157, metadata !220) #5, !dbg !518
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !158, metadata !220) #5, !dbg !520
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !159, metadata !220) #5, !dbg !521
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !160, metadata !220) #5, !dbg !522
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !161, metadata !220) #5, !dbg !523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !162, metadata !220) #5, !dbg !524
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !163, metadata !220) #5, !dbg !525
  %6 = icmp eq i32 %4, %5, !dbg !526
  br i1 %6, label %CCTKi_ExpectOK.exit, label %7, !dbg !527

; <label>:7                                       ; preds = %0
  %8 = load i32* %line, align 4, !dbg !528, !tbaa !267
  %9 = load i32* %warnonerr, align 4, !dbg !529, !tbaa !267
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !57, metadata !220) #5, !dbg !530
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !58, metadata !220) #5, !dbg !532
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !59, metadata !220) #5, !dbg !533
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !60, metadata !220) #5, !dbg !534
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !61, metadata !220) #5, !dbg !535
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %9, i32 %8, i8* %1, i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %3) #9, !dbg !536
  br label %CCTKi_ExpectOK.exit, !dbg !537

CCTKi_ExpectOK.exit:                              ; preds = %0, %7
  tail call void @free(i8* %1) #8, !dbg !538
  tail call void @free(i8* %2) #8, !dbg !539
  tail call void @free(i8* %3) #8, !dbg !540
  ret void, !dbg !541
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_FinaliseParamWarn() #1 {
  %param_type = alloca i32, align 4
  %1 = load i32* @param_errors, align 4, !dbg !542, !tbaa !267
  %2 = icmp eq i32 %1, 0, !dbg !542
  br i1 %2, label %25, label %3, !dbg !544

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %param_type, i64 0, metadata !183, metadata !220), !dbg !545
  %4 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #9, !dbg !546
  %5 = bitcast i8* %4 to i32*, !dbg !548
  call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !184, metadata !220), !dbg !549
  %6 = load i32* %5, align 4, !dbg !550, !tbaa !267
  %7 = icmp eq i32 %6, 0, !dbg !550
  br i1 %7, label %14, label %8, !dbg !552

; <label>:8                                       ; preds = %3
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !553, !tbaa !230
  %10 = load i32* @param_errors, align 4, !dbg !555, !tbaa !267
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([38 x i8]* @.str21, i64 0, i64 0), i32 %10) #9, !dbg !556
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !557, !tbaa !230
  %13 = call i32 @fflush(%struct.__sFILE* %12) #9, !dbg !558
  call void @exit(i32 99) #10, !dbg !559
  unreachable, !dbg !559

; <label>:14                                      ; preds = %3
  %15 = load i32* @param_errors, align 4, !dbg !560, !tbaa !267
  %16 = icmp eq i32 %15, 1, !dbg !563
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !564, !tbaa !230
  br i1 %16, label %18, label %20, !dbg !566

; <label>:18                                      ; preds = %14
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %17), !dbg !567
  br label %22, !dbg !568

; <label>:20                                      ; preds = %14
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([36 x i8]* @.str23, i64 0, i64 0), i32 %15) #9, !dbg !569
  br label %22

; <label>:22                                      ; preds = %20, %18
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !571, !tbaa !230
  %24 = call i32 @fflush(%struct.__sFILE* %23) #9, !dbg !572
  br label %25, !dbg !573

; <label>:25                                      ; preds = %0, %22
  ret void, !dbg !574
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_NotYetImplemented(i8* %message) #1 {
  tail call void @llvm.dbg.value(metadata i8* %message, i64 0, metadata !189, metadata !220), !dbg !575
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 823, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str24, i64 0, i64 0), i8* %message) #8, !dbg !576
  ret void, !dbg !577
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_notyetimplemented_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !194, metadata !220), !dbg !578
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !195, metadata !220), !dbg !578
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !579
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !196, metadata !220), !dbg !579
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !189, metadata !220) #5, !dbg !580
  %2 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 823, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str24, i64 0, i64 0), i8* %1) #9, !dbg !582
  tail call void @free(i8* %1) #8, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!215, !216, !217}
!llvm.ident = !{!218}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !197, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{!8, !14, !20, !32, !53, !62, !77, !90, !93, !99, !107, !114, !119, !123, !127, !138, !155, !164, !179, !185, !190}
!8 = !DISubprogram(name: "CCTKi_version_main_WarnLevel_c", scope: !1, file: !1, line: 30, type: !9, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_WarnLevel_c, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DISubprogram(name: "CCTK_Info", scope: !1, file: !1, line: 114, type: !15, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @CCTK_Info, variables: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!6, !11, !11}
!17 = !{!18, !19}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 1, scope: !14, file: !1, line: 114, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 2, scope: !14, file: !1, line: 114, type: !11)
!20 = !DISubprogram(name: "cctk_info_", scope: !1, file: !1, line: 119, type: !21, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32)* @cctk_info_, variables: !25)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !23, !24, !24}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!24 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 1, scope: !20, file: !1, line: 120, type: !23)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 2, scope: !20, file: !1, line: 120, type: !23)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !20, file: !1, line: 120, type: !24)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 4, scope: !20, file: !1, line: 120, type: !24)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !20, file: !1, line: 122, type: !23)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !20, file: !1, line: 122, type: !23)
!32 = !DISubprogram(name: "CCTK_VInfo", scope: !1, file: !1, line: 158, type: !33, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, ...)* @CCTK_VInfo, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!6, !11, !11, null}
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 1, scope: !32, file: !1, line: 158, type: !11)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !32, file: !1, line: 158, type: !11)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !32, file: !1, line: 160, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !40, line: 30, baseType: !41)
!40 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stdarg.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 160, baseType: !42)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 192, align: 64, elements: !51)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 160, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 160, size: 192, align: 64, elements: !45)
!45 = !{!46, !47, !48, !50}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !44, file: !1, line: 160, baseType: !24, size: 32, align: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !44, file: !1, line: 160, baseType: !24, size: 32, align: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !44, file: !1, line: 160, baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !44, file: !1, line: 160, baseType: !49, size: 64, align: 64, offset: 128)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DISubprogram(name: "CCTK_Warn", scope: !1, file: !1, line: 216, type: !54, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i8*, i8*, i8*)* @CCTK_Warn, variables: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!6, !6, !6, !11, !11, !11}
!56 = !{!57, !58, !59, !60, !61}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !53, file: !1, line: 216, type: !6)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !53, file: !1, line: 217, type: !6)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 3, scope: !53, file: !1, line: 218, type: !11)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 4, scope: !53, file: !1, line: 219, type: !11)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 5, scope: !53, file: !1, line: 220, type: !11)
!62 = !DISubprogram(name: "cctk_warn_", scope: !1, file: !1, line: 225, type: !63, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctk_warn_, variables: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !4, !4, !23, !23, !23, !24, !24, !24}
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !62, file: !1, line: 226, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !62, file: !1, line: 227, type: !4)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !62, file: !1, line: 228, type: !23)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 4, scope: !62, file: !1, line: 228, type: !23)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str3", arg: 5, scope: !62, file: !1, line: 228, type: !23)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 6, scope: !62, file: !1, line: 228, type: !24)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 7, scope: !62, file: !1, line: 228, type: !24)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen3", arg: 8, scope: !62, file: !1, line: 228, type: !24)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !62, file: !1, line: 230, type: !23)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !62, file: !1, line: 230, type: !23)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !62, file: !1, line: 230, type: !23)
!77 = !DISubprogram(name: "CCTK_VWarn", scope: !1, file: !1, line: 287, type: !78, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn, variables: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!6, !6, !6, !11, !11, !11, null}
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !77, file: !1, line: 287, type: !6)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !77, file: !1, line: 288, type: !6)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 3, scope: !77, file: !1, line: 289, type: !11)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 4, scope: !77, file: !1, line: 290, type: !11)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 5, scope: !77, file: !1, line: 291, type: !11)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_full_warnings", scope: !77, file: !1, line: 294, type: !4)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param_type", scope: !77, file: !1, line: 295, type: !6)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myproc", scope: !77, file: !1, line: 296, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !77, file: !1, line: 297, type: !39)
!90 = !DISubprogram(name: "CCTK_ParameterLevel", scope: !1, file: !1, line: 364, type: !91, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTK_ParameterLevel, variables: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{!6}
!93 = !DISubprogram(name: "CCTK_ParamWarn", scope: !1, file: !1, line: 395, type: !15, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @CCTK_ParamWarn, variables: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 1, scope: !93, file: !1, line: 395, type: !11)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 2, scope: !93, file: !1, line: 395, type: !11)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_strong_param_check", scope: !93, file: !1, line: 397, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param_type", scope: !93, file: !1, line: 398, type: !6)
!99 = !DISubprogram(name: "cctk_paramwarn_", scope: !1, file: !1, line: 412, type: !21, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32)* @cctk_paramwarn_, variables: !100)
!100 = !{!101, !102, !103, !104, !105, !106}
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 1, scope: !99, file: !1, line: 413, type: !23)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 2, scope: !99, file: !1, line: 413, type: !23)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !99, file: !1, line: 413, type: !24)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 4, scope: !99, file: !1, line: 413, type: !24)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !99, file: !1, line: 415, type: !23)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !99, file: !1, line: 415, type: !23)
!107 = !DISubprogram(name: "cctk_messageformat_", scope: !1, file: !1, line: 442, type: !108, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @cctk_messageformat_, variables: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!6, !23, !24}
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 1, scope: !107, file: !1, line: 443, type: !23)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 2, scope: !107, file: !1, line: 443, type: !24)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !107, file: !1, line: 445, type: !23)
!114 = !DISubprogram(name: "CCTKi_SetParameterLevel", scope: !1, file: !1, line: 477, type: !115, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTKi_SetParameterLevel, variables: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!6, !6}
!117 = !{!118}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !114, file: !1, line: 477, type: !6)
!119 = !DISubprogram(name: "CCTKi_SetWarnLevel", scope: !1, file: !1, line: 519, type: !115, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTKi_SetWarnLevel, variables: !120)
!120 = !{!121, !122}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !119, file: !1, line: 519, type: !6)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !119, file: !1, line: 521, type: !6)
!123 = !DISubprogram(name: "CCTKi_SetErrorLevel", scope: !1, file: !1, line: 572, type: !115, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTKi_SetErrorLevel, variables: !124)
!124 = !{!125, !126}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !123, file: !1, line: 572, type: !6)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !123, file: !1, line: 574, type: !6)
!127 = !DISubprogram(name: "CCTKi_ExpectError", scope: !1, file: !1, line: 654, type: !128, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, i32, i8*, i8*, i8*)* @CCTKi_ExpectError, variables: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !6, !6, !6, !6, !11, !11, !11}
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !127, file: !1, line: 654, type: !6)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 2, scope: !127, file: !1, line: 655, type: !6)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "warnonerr", arg: 3, scope: !127, file: !1, line: 656, type: !6)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 4, scope: !127, file: !1, line: 657, type: !6)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 5, scope: !127, file: !1, line: 658, type: !11)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 6, scope: !127, file: !1, line: 659, type: !11)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 7, scope: !127, file: !1, line: 660, type: !11)
!138 = !DISubprogram(name: "cctki_expecterror_", scope: !1, file: !1, line: 668, type: !139, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctki_expecterror_, variables: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !4, !4, !4, !4, !23, !23, !23, !24, !24, !24}
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !138, file: !1, line: 669, type: !4)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 2, scope: !138, file: !1, line: 670, type: !4)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "warnonerr", arg: 3, scope: !138, file: !1, line: 671, type: !4)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 4, scope: !138, file: !1, line: 672, type: !4)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 5, scope: !138, file: !1, line: 673, type: !23)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 6, scope: !138, file: !1, line: 673, type: !23)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str3", arg: 7, scope: !138, file: !1, line: 673, type: !23)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 8, scope: !138, file: !1, line: 673, type: !24)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 9, scope: !138, file: !1, line: 673, type: !24)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen3", arg: 10, scope: !138, file: !1, line: 673, type: !24)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !138, file: !1, line: 675, type: !23)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !138, file: !1, line: 675, type: !23)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !138, file: !1, line: 675, type: !23)
!155 = !DISubprogram(name: "CCTKi_ExpectOK", scope: !1, file: !1, line: 730, type: !128, isLocal: false, isDefinition: true, scopeLine: 737, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, i32, i8*, i8*, i8*)* @CCTKi_ExpectOK, variables: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !155, file: !1, line: 730, type: !6)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ok", arg: 2, scope: !155, file: !1, line: 731, type: !6)
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "warnonerr", arg: 3, scope: !155, file: !1, line: 732, type: !6)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 4, scope: !155, file: !1, line: 733, type: !6)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 5, scope: !155, file: !1, line: 734, type: !11)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 6, scope: !155, file: !1, line: 735, type: !11)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 7, scope: !155, file: !1, line: 736, type: !11)
!164 = !DISubprogram(name: "cctki_expectok_", scope: !1, file: !1, line: 744, type: !139, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctki_expectok_, variables: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !164, file: !1, line: 745, type: !4)
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ok", arg: 2, scope: !164, file: !1, line: 746, type: !4)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "warnonerr", arg: 3, scope: !164, file: !1, line: 747, type: !4)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 4, scope: !164, file: !1, line: 748, type: !4)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 5, scope: !164, file: !1, line: 749, type: !23)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 6, scope: !164, file: !1, line: 749, type: !23)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str3", arg: 7, scope: !164, file: !1, line: 749, type: !23)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 8, scope: !164, file: !1, line: 749, type: !24)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 9, scope: !164, file: !1, line: 749, type: !24)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen3", arg: 10, scope: !164, file: !1, line: 749, type: !24)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !164, file: !1, line: 751, type: !23)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !164, file: !1, line: 751, type: !23)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !164, file: !1, line: 751, type: !23)
!179 = !DISubprogram(name: "CCTKi_FinaliseParamWarn", scope: !1, file: !1, line: 768, type: !180, isLocal: false, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_FinaliseParamWarn, variables: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{null}
!182 = !{!183, !184}
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param_type", scope: !179, file: !1, line: 770, type: !6)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_strong_param_check", scope: !179, file: !1, line: 771, type: !4)
!185 = !DISubprogram(name: "CCTKi_NotYetImplemented", scope: !1, file: !1, line: 815, type: !186, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @CCTKi_NotYetImplemented, variables: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !11}
!188 = !{!189}
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "message", arg: 1, scope: !185, file: !1, line: 815, type: !11)
!190 = !DISubprogram(name: "cctki_notyetimplemented_", scope: !1, file: !1, line: 827, type: !191, isLocal: false, isDefinition: true, scopeLine: 829, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @cctki_notyetimplemented_, variables: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !23, !24}
!193 = !{!194, !195, !196}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 1, scope: !190, file: !1, line: 828, type: !23)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 2, scope: !190, file: !1, line: 828, type: !24)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !190, file: !1, line: 830, type: !23)
!197 = !{!198, !199, !200, !201, !202, !203, !214}
!198 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 29, type: !11, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariable(name: "warning_level", scope: !0, file: !1, line: 78, type: !6, isLocal: true, isDefinition: true, variable: i32* @warning_level)
!200 = !DIGlobalVariable(name: "error_level", scope: !0, file: !1, line: 83, type: !6, isLocal: true, isDefinition: true, variable: i32* @error_level)
!201 = !DIGlobalVariable(name: "parameter_level", scope: !0, file: !1, line: 70, type: !6, isLocal: true, isDefinition: true, variable: i32* @parameter_level)
!202 = !DIGlobalVariable(name: "param_errors", scope: !0, file: !1, line: 73, type: !6, isLocal: true, isDefinition: true, variable: i32* @param_errors)
!203 = !DIGlobalVariable(name: "formatlist", scope: !0, file: !1, line: 87, type: !204, isLocal: true, isDefinition: true, variable: %struct.PKeyedData** @formatlist)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pKeyedData", file: !206, line: 26, baseType: !207)
!206 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreKeyedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "PKeyedData", file: !206, line: 18, size: 256, align: 64, elements: !208)
!208 = !{!209, !211, !212, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !207, file: !206, line: 20, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !206, line: 21, baseType: !210, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !207, file: !206, line: 23, baseType: !6, size: 32, align: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !206, line: 25, baseType: !49, size: 64, align: 64, offset: 192)
!214 = !DIGlobalVariable(name: "n_formats", scope: !0, file: !1, line: 86, type: !6, isLocal: true, isDefinition: true, variable: i32* @n_formats)
!215 = !{i32 2, !"Dwarf Version", i32 2}
!216 = !{i32 2, !"Debug Info Version", i32 700000003}
!217 = !{i32 1, !"PIC Level", i32 2}
!218 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!219 = !DILocation(line: 30, column: 1, scope: !8)
!220 = !DIExpression()
!221 = !DILocation(line: 114, column: 28, scope: !14)
!222 = !DILocation(line: 114, column: 47, scope: !14)
!223 = !DILocation(line: 116, column: 11, scope: !14)
!224 = !DILocation(line: 116, column: 3, scope: !14)
!225 = !DILocation(line: 158, column: 29, scope: !32)
!226 = !DILocation(line: 158, column: 48, scope: !32)
!227 = !DILocation(line: 160, column: 11, scope: !32)
!228 = !DILocation(line: 163, column: 3, scope: !32)
!229 = !DILocation(line: 165, column: 12, scope: !32)
!230 = !{!231, !231, i64 0}
!231 = !{!"any pointer", !232, i64 0}
!232 = !{!"omnipotent char", !233, i64 0}
!233 = !{!"Simple C/C++ TBAA"}
!234 = !DILocation(line: 165, column: 3, scope: !32)
!235 = !DILocation(line: 166, column: 13, scope: !32)
!236 = !DILocation(line: 166, column: 3, scope: !32)
!237 = !DILocation(line: 167, column: 12, scope: !32)
!238 = !DILocation(line: 167, column: 3, scope: !32)
!239 = !DILocation(line: 168, column: 11, scope: !32)
!240 = !DILocation(line: 168, column: 3, scope: !32)
!241 = !DILocation(line: 170, column: 3, scope: !32)
!242 = !DILocation(line: 172, column: 3, scope: !32)
!243 = !DILocation(line: 120, column: 29, scope: !20)
!244 = !DILocation(line: 122, column: 3, scope: !20)
!245 = !DILocation(line: 114, column: 28, scope: !14, inlinedAt: !246)
!246 = distinct !DILocation(line: 123, column: 3, scope: !20)
!247 = !DILocation(line: 114, column: 47, scope: !14, inlinedAt: !246)
!248 = !DILocation(line: 116, column: 11, scope: !14, inlinedAt: !246)
!249 = !DILocation(line: 124, column: 3, scope: !20)
!250 = !DILocation(line: 125, column: 3, scope: !20)
!251 = !DILocation(line: 126, column: 1, scope: !20)
!252 = !DILocation(line: 216, column: 20, scope: !53)
!253 = !DILocation(line: 217, column: 20, scope: !53)
!254 = !DILocation(line: 218, column: 28, scope: !53)
!255 = !DILocation(line: 219, column: 28, scope: !53)
!256 = !DILocation(line: 220, column: 28, scope: !53)
!257 = !DILocation(line: 222, column: 11, scope: !53)
!258 = !DILocation(line: 222, column: 3, scope: !53)
!259 = !DILocation(line: 287, column: 21, scope: !77)
!260 = !DILocation(line: 288, column: 21, scope: !77)
!261 = !DILocation(line: 289, column: 29, scope: !77)
!262 = !DILocation(line: 290, column: 29, scope: !77)
!263 = !DILocation(line: 291, column: 29, scope: !77)
!264 = !DILocation(line: 297, column: 11, scope: !77)
!265 = !DILocation(line: 299, column: 16, scope: !266)
!266 = distinct !DILexicalBlock(scope: !77, file: !1, line: 299, column: 7)
!267 = !{!268, !268, i64 0}
!268 = !{!"int", !232, i64 0}
!269 = !DILocation(line: 299, column: 13, scope: !266)
!270 = !DILocation(line: 299, column: 7, scope: !77)
!271 = !DILocation(line: 301, column: 14, scope: !272)
!272 = distinct !DILexicalBlock(scope: !266, file: !1, line: 300, column: 3)
!273 = !DILocation(line: 296, column: 7, scope: !77)
!274 = !DILocation(line: 295, column: 7, scope: !77)
!275 = !DILocation(line: 304, column: 26, scope: !272)
!276 = !DILocation(line: 303, column: 26, scope: !272)
!277 = !DILocation(line: 294, column: 19, scope: !77)
!278 = !DILocation(line: 306, column: 19, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !1, line: 306, column: 9)
!280 = !DILocation(line: 306, column: 16, scope: !279)
!281 = !DILocation(line: 306, column: 32, scope: !279)
!282 = !DILocation(line: 306, column: 36, scope: !279)
!283 = !DILocation(line: 306, column: 55, scope: !279)
!284 = !DILocation(line: 306, column: 58, scope: !279)
!285 = !DILocation(line: 306, column: 9, scope: !272)
!286 = !DILocation(line: 308, column: 16, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !1, line: 307, column: 5)
!288 = !DILocation(line: 308, column: 7, scope: !287)
!289 = !DILocation(line: 312, column: 11, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !1, line: 312, column: 11)
!291 = !DILocation(line: 312, column: 11, scope: !287)
!292 = !DILocation(line: 314, column: 18, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !1, line: 313, column: 7)
!294 = !DILocation(line: 314, column: 9, scope: !293)
!295 = !DILocation(line: 318, column: 7, scope: !293)
!296 = !DILocation(line: 322, column: 16, scope: !297)
!297 = distinct !DILexicalBlock(scope: !279, file: !1, line: 321, column: 5)
!298 = !DILocation(line: 322, column: 7, scope: !297)
!299 = !DILocation(line: 323, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !1, line: 323, column: 11)
!301 = !DILocation(line: 323, column: 11, scope: !297)
!302 = !DILocation(line: 325, column: 18, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 324, column: 7)
!304 = !DILocation(line: 325, column: 9, scope: !303)
!305 = !DILocation(line: 326, column: 7, scope: !303)
!306 = !DILocation(line: 329, column: 5, scope: !272)
!307 = !DILocation(line: 330, column: 15, scope: !272)
!308 = !DILocation(line: 330, column: 5, scope: !272)
!309 = !DILocation(line: 331, column: 14, scope: !272)
!310 = !DILocation(line: 331, column: 5, scope: !272)
!311 = !DILocation(line: 332, column: 13, scope: !272)
!312 = !DILocation(line: 332, column: 5, scope: !272)
!313 = !DILocation(line: 333, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !272, file: !1, line: 333, column: 9)
!315 = !DILocation(line: 333, column: 9, scope: !272)
!316 = !DILocation(line: 335, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !1, line: 334, column: 5)
!318 = !DILocation(line: 335, column: 7, scope: !317)
!319 = !DILocation(line: 336, column: 16, scope: !317)
!320 = !DILocation(line: 336, column: 7, scope: !317)
!321 = !DILocation(line: 337, column: 15, scope: !317)
!322 = !DILocation(line: 337, column: 7, scope: !317)
!323 = !DILocation(line: 338, column: 5, scope: !317)
!324 = !DILocation(line: 339, column: 5, scope: !272)
!325 = !DILocation(line: 340, column: 3, scope: !272)
!326 = !DILocation(line: 342, column: 16, scope: !327)
!327 = distinct !DILexicalBlock(scope: !77, file: !1, line: 342, column: 7)
!328 = !DILocation(line: 342, column: 13, scope: !327)
!329 = !DILocation(line: 342, column: 7, scope: !77)
!330 = !DILocation(line: 344, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 343, column: 3)
!332 = !DILocation(line: 345, column: 3, scope: !331)
!333 = !DILocation(line: 347, column: 3, scope: !77)
!334 = !DILocation(line: 226, column: 40, scope: !62)
!335 = !DILocation(line: 227, column: 40, scope: !62)
!336 = !DILocation(line: 228, column: 29, scope: !62)
!337 = !DILocation(line: 230, column: 3, scope: !62)
!338 = !DILocation(line: 231, column: 14, scope: !62)
!339 = !DILocation(line: 231, column: 22, scope: !62)
!340 = !DILocation(line: 216, column: 20, scope: !53, inlinedAt: !341)
!341 = distinct !DILocation(line: 231, column: 3, scope: !62)
!342 = !DILocation(line: 217, column: 20, scope: !53, inlinedAt: !341)
!343 = !DILocation(line: 218, column: 28, scope: !53, inlinedAt: !341)
!344 = !DILocation(line: 219, column: 28, scope: !53, inlinedAt: !341)
!345 = !DILocation(line: 220, column: 28, scope: !53, inlinedAt: !341)
!346 = !DILocation(line: 222, column: 11, scope: !53, inlinedAt: !341)
!347 = !DILocation(line: 232, column: 3, scope: !62)
!348 = !DILocation(line: 233, column: 3, scope: !62)
!349 = !DILocation(line: 234, column: 3, scope: !62)
!350 = !DILocation(line: 235, column: 1, scope: !62)
!351 = !DILocation(line: 366, column: 11, scope: !90)
!352 = !DILocation(line: 366, column: 3, scope: !90)
!353 = !DILocation(line: 395, column: 33, scope: !93)
!354 = !DILocation(line: 395, column: 52, scope: !93)
!355 = !DILocation(line: 398, column: 7, scope: !93)
!356 = !DILocation(line: 402, column: 31, scope: !93)
!357 = !DILocation(line: 401, column: 29, scope: !93)
!358 = !DILocation(line: 397, column: 19, scope: !93)
!359 = !DILocation(line: 404, column: 12, scope: !93)
!360 = !DILocation(line: 405, column: 12, scope: !93)
!361 = !DILocation(line: 404, column: 3, scope: !93)
!362 = !DILocation(line: 406, column: 11, scope: !93)
!363 = !DILocation(line: 406, column: 3, scope: !93)
!364 = !DILocation(line: 407, column: 15, scope: !93)
!365 = !DILocation(line: 409, column: 3, scope: !93)
!366 = !DILocation(line: 413, column: 29, scope: !99)
!367 = !DILocation(line: 415, column: 3, scope: !99)
!368 = !DILocation(line: 416, column: 3, scope: !99)
!369 = !DILocation(line: 417, column: 3, scope: !99)
!370 = !DILocation(line: 418, column: 3, scope: !99)
!371 = !DILocation(line: 419, column: 1, scope: !99)
!372 = !DILocation(line: 443, column: 28, scope: !107)
!373 = !DILocation(line: 445, column: 3, scope: !107)
!374 = !DILocation(line: 447, column: 32, scope: !107)
!375 = !DILocation(line: 447, column: 3, scope: !107)
!376 = !DILocation(line: 449, column: 20, scope: !107)
!377 = !DILocation(line: 449, column: 3, scope: !107)
!378 = !DILocation(line: 477, column: 34, scope: !114)
!379 = !DILocation(line: 479, column: 38, scope: !380)
!380 = distinct !DILexicalBlock(scope: !114, file: !1, line: 479, column: 7)
!381 = !DILocation(line: 483, column: 21, scope: !382)
!382 = distinct !DILexicalBlock(scope: !380, file: !1, line: 482, column: 3)
!383 = !DILocation(line: 484, column: 3, scope: !382)
!384 = !DILocation(line: 487, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !1, line: 486, column: 3)
!386 = !DILocation(line: 492, column: 11, scope: !114)
!387 = !DILocation(line: 492, column: 3, scope: !114)
!388 = !DILocation(line: 519, column: 29, scope: !119)
!389 = !DILocation(line: 524, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !119, file: !1, line: 524, column: 7)
!391 = !DILocation(line: 524, column: 21, scope: !390)
!392 = !DILocation(line: 524, column: 7, scope: !119)
!393 = !DILocation(line: 526, column: 20, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 525, column: 3)
!395 = !DILocation(line: 526, column: 14, scope: !394)
!396 = !DILocation(line: 521, column: 7, scope: !119)
!397 = !DILocation(line: 528, column: 17, scope: !394)
!398 = !DILocation(line: 527, column: 5, scope: !394)
!399 = !DILocation(line: 529, column: 19, scope: !394)
!400 = !DILocation(line: 530, column: 3, scope: !394)
!401 = !DILocation(line: 533, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !390, file: !1, line: 532, column: 3)
!403 = !DILocation(line: 538, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !119, file: !1, line: 538, column: 7)
!405 = !DILocation(line: 538, column: 23, scope: !404)
!406 = !DILocation(line: 538, column: 21, scope: !404)
!407 = !DILocation(line: 538, column: 7, scope: !119)
!408 = !DILocation(line: 540, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !1, line: 539, column: 3)
!410 = !DILocation(line: 541, column: 5, scope: !409)
!411 = !DILocation(line: 543, column: 3, scope: !409)
!412 = !DILocation(line: 545, column: 3, scope: !119)
!413 = !DILocation(line: 572, column: 30, scope: !123)
!414 = !DILocation(line: 576, column: 16, scope: !415)
!415 = distinct !DILexicalBlock(scope: !123, file: !1, line: 576, column: 7)
!416 = !DILocation(line: 576, column: 13, scope: !415)
!417 = !DILocation(line: 576, column: 7, scope: !123)
!418 = !DILocation(line: 578, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 578, column: 9)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 577, column: 3)
!421 = !DILocation(line: 578, column: 21, scope: !419)
!422 = !DILocation(line: 578, column: 9, scope: !420)
!423 = !DILocation(line: 580, column: 22, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 579, column: 5)
!425 = !DILocation(line: 580, column: 16, scope: !424)
!426 = !DILocation(line: 574, column: 7, scope: !123)
!427 = !DILocation(line: 582, column: 19, scope: !424)
!428 = !DILocation(line: 581, column: 7, scope: !424)
!429 = !DILocation(line: 583, column: 19, scope: !424)
!430 = !DILocation(line: 584, column: 5, scope: !424)
!431 = !DILocation(line: 587, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !419, file: !1, line: 586, column: 5)
!433 = !DILocation(line: 595, column: 17, scope: !434)
!434 = distinct !DILexicalBlock(scope: !415, file: !1, line: 593, column: 3)
!435 = !DILocation(line: 596, column: 5, scope: !434)
!436 = !DILocation(line: 599, column: 19, scope: !434)
!437 = !DILocation(line: 603, column: 3, scope: !123)
!438 = !DILocation(line: 654, column: 29, scope: !127)
!439 = !DILocation(line: 655, column: 29, scope: !127)
!440 = !DILocation(line: 656, column: 29, scope: !127)
!441 = !DILocation(line: 657, column: 29, scope: !127)
!442 = !DILocation(line: 658, column: 37, scope: !127)
!443 = !DILocation(line: 659, column: 37, scope: !127)
!444 = !DILocation(line: 660, column: 37, scope: !127)
!445 = !DILocation(line: 662, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !127, file: !1, line: 662, column: 7)
!447 = !DILocation(line: 662, column: 7, scope: !127)
!448 = !DILocation(line: 216, column: 20, scope: !53, inlinedAt: !449)
!449 = distinct !DILocation(line: 664, column: 5, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !1, line: 663, column: 3)
!451 = !DILocation(line: 217, column: 20, scope: !53, inlinedAt: !449)
!452 = !DILocation(line: 218, column: 28, scope: !53, inlinedAt: !449)
!453 = !DILocation(line: 219, column: 28, scope: !53, inlinedAt: !449)
!454 = !DILocation(line: 220, column: 28, scope: !53, inlinedAt: !449)
!455 = !DILocation(line: 222, column: 11, scope: !53, inlinedAt: !449)
!456 = !DILocation(line: 665, column: 3, scope: !450)
!457 = !DILocation(line: 666, column: 1, scope: !127)
!458 = !DILocation(line: 669, column: 40, scope: !138)
!459 = !DILocation(line: 670, column: 40, scope: !138)
!460 = !DILocation(line: 671, column: 40, scope: !138)
!461 = !DILocation(line: 672, column: 40, scope: !138)
!462 = !DILocation(line: 673, column: 29, scope: !138)
!463 = !DILocation(line: 675, column: 3, scope: !138)
!464 = !DILocation(line: 676, column: 22, scope: !138)
!465 = !DILocation(line: 676, column: 27, scope: !138)
!466 = !DILocation(line: 654, column: 29, scope: !127, inlinedAt: !467)
!467 = distinct !DILocation(line: 676, column: 3, scope: !138)
!468 = !DILocation(line: 655, column: 29, scope: !127, inlinedAt: !467)
!469 = !DILocation(line: 656, column: 29, scope: !127, inlinedAt: !467)
!470 = !DILocation(line: 657, column: 29, scope: !127, inlinedAt: !467)
!471 = !DILocation(line: 658, column: 37, scope: !127, inlinedAt: !467)
!472 = !DILocation(line: 659, column: 37, scope: !127, inlinedAt: !467)
!473 = !DILocation(line: 660, column: 37, scope: !127, inlinedAt: !467)
!474 = !DILocation(line: 662, column: 10, scope: !446, inlinedAt: !467)
!475 = !DILocation(line: 662, column: 7, scope: !127, inlinedAt: !467)
!476 = !DILocation(line: 676, column: 45, scope: !138)
!477 = !DILocation(line: 676, column: 33, scope: !138)
!478 = !DILocation(line: 216, column: 20, scope: !53, inlinedAt: !479)
!479 = distinct !DILocation(line: 664, column: 5, scope: !450, inlinedAt: !467)
!480 = !DILocation(line: 217, column: 20, scope: !53, inlinedAt: !479)
!481 = !DILocation(line: 218, column: 28, scope: !53, inlinedAt: !479)
!482 = !DILocation(line: 219, column: 28, scope: !53, inlinedAt: !479)
!483 = !DILocation(line: 220, column: 28, scope: !53, inlinedAt: !479)
!484 = !DILocation(line: 222, column: 11, scope: !53, inlinedAt: !479)
!485 = !DILocation(line: 665, column: 3, scope: !450, inlinedAt: !467)
!486 = !DILocation(line: 677, column: 3, scope: !138)
!487 = !DILocation(line: 678, column: 3, scope: !138)
!488 = !DILocation(line: 679, column: 3, scope: !138)
!489 = !DILocation(line: 680, column: 1, scope: !138)
!490 = !DILocation(line: 730, column: 26, scope: !155)
!491 = !DILocation(line: 731, column: 26, scope: !155)
!492 = !DILocation(line: 732, column: 26, scope: !155)
!493 = !DILocation(line: 733, column: 26, scope: !155)
!494 = !DILocation(line: 734, column: 34, scope: !155)
!495 = !DILocation(line: 735, column: 34, scope: !155)
!496 = !DILocation(line: 736, column: 34, scope: !155)
!497 = !DILocation(line: 738, column: 10, scope: !498)
!498 = distinct !DILexicalBlock(scope: !155, file: !1, line: 738, column: 7)
!499 = !DILocation(line: 738, column: 7, scope: !155)
!500 = !DILocation(line: 216, column: 20, scope: !53, inlinedAt: !501)
!501 = distinct !DILocation(line: 740, column: 5, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 739, column: 3)
!503 = !DILocation(line: 217, column: 20, scope: !53, inlinedAt: !501)
!504 = !DILocation(line: 218, column: 28, scope: !53, inlinedAt: !501)
!505 = !DILocation(line: 219, column: 28, scope: !53, inlinedAt: !501)
!506 = !DILocation(line: 220, column: 28, scope: !53, inlinedAt: !501)
!507 = !DILocation(line: 222, column: 11, scope: !53, inlinedAt: !501)
!508 = !DILocation(line: 741, column: 3, scope: !502)
!509 = !DILocation(line: 742, column: 1, scope: !155)
!510 = !DILocation(line: 745, column: 40, scope: !164)
!511 = !DILocation(line: 746, column: 40, scope: !164)
!512 = !DILocation(line: 747, column: 40, scope: !164)
!513 = !DILocation(line: 748, column: 40, scope: !164)
!514 = !DILocation(line: 749, column: 29, scope: !164)
!515 = !DILocation(line: 751, column: 3, scope: !164)
!516 = !DILocation(line: 752, column: 19, scope: !164)
!517 = !DILocation(line: 752, column: 24, scope: !164)
!518 = !DILocation(line: 730, column: 26, scope: !155, inlinedAt: !519)
!519 = distinct !DILocation(line: 752, column: 3, scope: !164)
!520 = !DILocation(line: 731, column: 26, scope: !155, inlinedAt: !519)
!521 = !DILocation(line: 732, column: 26, scope: !155, inlinedAt: !519)
!522 = !DILocation(line: 733, column: 26, scope: !155, inlinedAt: !519)
!523 = !DILocation(line: 734, column: 34, scope: !155, inlinedAt: !519)
!524 = !DILocation(line: 735, column: 34, scope: !155, inlinedAt: !519)
!525 = !DILocation(line: 736, column: 34, scope: !155, inlinedAt: !519)
!526 = !DILocation(line: 738, column: 10, scope: !498, inlinedAt: !519)
!527 = !DILocation(line: 738, column: 7, scope: !155, inlinedAt: !519)
!528 = !DILocation(line: 752, column: 41, scope: !164)
!529 = !DILocation(line: 752, column: 29, scope: !164)
!530 = !DILocation(line: 216, column: 20, scope: !53, inlinedAt: !531)
!531 = distinct !DILocation(line: 740, column: 5, scope: !502, inlinedAt: !519)
!532 = !DILocation(line: 217, column: 20, scope: !53, inlinedAt: !531)
!533 = !DILocation(line: 218, column: 28, scope: !53, inlinedAt: !531)
!534 = !DILocation(line: 219, column: 28, scope: !53, inlinedAt: !531)
!535 = !DILocation(line: 220, column: 28, scope: !53, inlinedAt: !531)
!536 = !DILocation(line: 222, column: 11, scope: !53, inlinedAt: !531)
!537 = !DILocation(line: 741, column: 3, scope: !502, inlinedAt: !519)
!538 = !DILocation(line: 753, column: 3, scope: !164)
!539 = !DILocation(line: 754, column: 3, scope: !164)
!540 = !DILocation(line: 755, column: 3, scope: !164)
!541 = !DILocation(line: 756, column: 1, scope: !164)
!542 = !DILocation(line: 774, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !179, file: !1, line: 774, column: 7)
!544 = !DILocation(line: 774, column: 7, scope: !179)
!545 = !DILocation(line: 770, column: 7, scope: !179)
!546 = !DILocation(line: 777, column: 33, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !1, line: 775, column: 3)
!548 = !DILocation(line: 776, column: 31, scope: !547)
!549 = !DILocation(line: 771, column: 19, scope: !179)
!550 = !DILocation(line: 779, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !1, line: 779, column: 9)
!552 = !DILocation(line: 779, column: 9, scope: !547)
!553 = !DILocation(line: 781, column: 16, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !1, line: 780, column: 5)
!555 = !DILocation(line: 781, column: 68, scope: !554)
!556 = !DILocation(line: 781, column: 7, scope: !554)
!557 = !DILocation(line: 782, column: 15, scope: !554)
!558 = !DILocation(line: 782, column: 7, scope: !554)
!559 = !DILocation(line: 783, column: 7, scope: !554)
!560 = !DILocation(line: 787, column: 11, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 787, column: 11)
!562 = distinct !DILexicalBlock(scope: !551, file: !1, line: 786, column: 5)
!563 = !DILocation(line: 787, column: 23, scope: !561)
!564 = !DILocation(line: 789, column: 18, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !1, line: 788, column: 7)
!566 = !DILocation(line: 787, column: 11, scope: !562)
!567 = !DILocation(line: 789, column: 9, scope: !565)
!568 = !DILocation(line: 790, column: 7, scope: !565)
!569 = !DILocation(line: 793, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !561, file: !1, line: 792, column: 7)
!571 = !DILocation(line: 795, column: 15, scope: !562)
!572 = !DILocation(line: 795, column: 7, scope: !562)
!573 = !DILocation(line: 797, column: 3, scope: !547)
!574 = !DILocation(line: 798, column: 1, scope: !179)
!575 = !DILocation(line: 815, column: 43, scope: !185)
!576 = !DILocation(line: 823, column: 3, scope: !185)
!577 = !DILocation(line: 825, column: 1, scope: !185)
!578 = !DILocation(line: 828, column: 29, scope: !190)
!579 = !DILocation(line: 830, column: 3, scope: !190)
!580 = !DILocation(line: 815, column: 43, scope: !185, inlinedAt: !581)
!581 = distinct !DILocation(line: 831, column: 3, scope: !190)
!582 = !DILocation(line: 823, column: 3, scope: !185, inlinedAt: !581)
!583 = !DILocation(line: 832, column: 3, scope: !190)
!584 = !DILocation(line: 833, column: 1, scope: !190)

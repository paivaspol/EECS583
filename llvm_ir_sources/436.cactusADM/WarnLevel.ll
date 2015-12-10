; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PKeyedData = type { %struct.PKeyedData*, %struct.PKeyedData*, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [12 x i8] c"INFO (%s): \00", align 1
@warning_level = internal unnamed_addr global i32 1, align 4
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str3 = private unnamed_addr constant [19 x i8] c"cctk_full_warnings\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@error_level = internal unnamed_addr global i32 0, align 4
@stderr = external global %struct._IO_FILE*
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
@.str11 = private unnamed_addr constant [66 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c\00", align 1
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

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_WarnLevel_c() #0 {
entry:
  ret i8* getelementptr inbounds ([85 x i8]* @.str25, i64 0, i64 0), !dbg !211
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_Info(i8* %thorn, i8* %message) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !16), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !17), !dbg !212
  %call = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #8, !dbg !213
  ret i32 0, !dbg !213
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_VInfo(i8* %thorn, i8* nocapture %format, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !32), !dbg !214
  call void @llvm.dbg.value(metadata !{i8* %format}, i64 0, metadata !33), !dbg !214
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !34), !dbg !215
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !216
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !216
  call void @llvm.va_start(i8* %arraydecay1), !dbg !216
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !217, !tbaa !218
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* %thorn) #9, !dbg !217
  %1 = load %struct._IO_FILE** @stdout, align 8, !dbg !221, !tbaa !218
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %format, %struct.__va_list_tag* %arraydecay) #9, !dbg !221
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !222, !tbaa !218
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %2), !dbg !222
  %3 = load %struct._IO_FILE** @stdout, align 8, !dbg !223, !tbaa !218
  %call5 = call i32 @fflush(%struct._IO_FILE* %3) #9, !dbg !223
  call void @llvm.va_end(i8* %arraydecay1), !dbg !224
  ret i32 0, !dbg !225
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_info_(i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !24), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !25), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !26), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !27), !dbg !226
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !227
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !28), !dbg !227
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !227
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !29), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !228) #5, !dbg !230
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !231) #5, !dbg !230
  %call.i = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* %call, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %call1) #9, !dbg !232
  tail call void @free(i8* %call) #9, !dbg !233
  tail call void @free(i8* %call1) #9, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_Warn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !53), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !54), !dbg !237
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !55), !dbg !238
  tail call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !56), !dbg !239
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !57), !dbg !240
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #8, !dbg !241
  ret i32 0, !dbg !241
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_VWarn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* nocapture %format, ...) #1 {
entry:
  %param_type = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !77), !dbg !242
  call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !78), !dbg !243
  call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !79), !dbg !244
  call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !80), !dbg !245
  call void @llvm.dbg.value(metadata !{i8* %format}, i64 0, metadata !81), !dbg !246
  call void @llvm.dbg.declare(metadata !{i32* %param_type}, metadata !83), !dbg !247
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !85), !dbg !248
  %0 = load i32* @warning_level, align 4, !dbg !249, !tbaa !250
  %cmp = icmp slt i32 %0, %level, !dbg !249
  br i1 %cmp, label %if.end29, label %if.then, !dbg !249

if.then:                                          ; preds = %entry
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !251, !tbaa !218
  %call = call i32 %1(%struct.cGH* null) #9, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !84), !dbg !251
  %call1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #9, !dbg !253
  %2 = bitcast i8* %call1 to i32*, !dbg !253
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !82), !dbg !253
  %3 = load i32* @error_level, align 4, !dbg !254, !tbaa !250
  %cmp2 = icmp slt i32 %3, %level, !dbg !254
  br i1 %cmp2, label %lor.lhs.false, label %if.then4, !dbg !254

lor.lhs.false:                                    ; preds = %if.then
  %tobool = icmp eq i8* %call1, null, !dbg !254
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !254

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32* %2, align 4, !dbg !254, !tbaa !250
  %tobool3 = icmp eq i32 %4, 0, !dbg !254
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !254

if.then4:                                         ; preds = %land.lhs.true, %if.then
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !255, !tbaa !218
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([68 x i8]* @.str5, i64 0, i64 0), i32 %level, i8* %thorn, i32 %call, i32 %line, i8* %file) #9, !dbg !255
  %tobool6 = icmp eq i32 %call, 0, !dbg !257
  br i1 %tobool6, label %if.end14, label %if.then7, !dbg !257

if.then7:                                         ; preds = %if.then4
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !258, !tbaa !218
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([68 x i8]* @.str5, i64 0, i64 0), i32 %level, i8* %thorn, i32 %call, i32 %line, i8* %file) #9, !dbg !258
  br label %if.end14, !dbg !260

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !261, !tbaa !218
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %level, i32 %call, i8* %thorn) #9, !dbg !261
  %tobool10 = icmp eq i32 %call, 0, !dbg !263
  br i1 %tobool10, label %if.end14, label %if.then11, !dbg !263

if.then11:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE** @stdout, align 8, !dbg !264, !tbaa !218
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %level, i32 %call, i8* %thorn) #9, !dbg !264
  br label %if.end14, !dbg !266

if.end14:                                         ; preds = %if.then4, %if.else, %if.then11, %if.then7
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !267
  %arraydecay15 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !267
  call void @llvm.va_start(i8* %arraydecay15), !dbg !267
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !268, !tbaa !218
  %call17 = call i32 @vfprintf(%struct._IO_FILE* %9, i8* %format, %struct.__va_list_tag* %arraydecay) #9, !dbg !268
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !269, !tbaa !218
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %10), !dbg !269
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !270, !tbaa !218
  %call19 = call i32 @fflush(%struct._IO_FILE* %11) #9, !dbg !270
  %tobool20 = icmp eq i32 %call, 0, !dbg !271
  br i1 %tobool20, label %if.end26, label %if.then21, !dbg !271

if.then21:                                        ; preds = %if.end14
  %12 = load %struct._IO_FILE** @stdout, align 8, !dbg !272, !tbaa !218
  %call23 = call i32 @vfprintf(%struct._IO_FILE* %12, i8* %format, %struct.__va_list_tag* %arraydecay) #9, !dbg !272
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !274, !tbaa !218
  %fputc55 = call i32 @fputc(i32 10, %struct._IO_FILE* %13), !dbg !274
  %14 = load %struct._IO_FILE** @stdout, align 8, !dbg !275, !tbaa !218
  %call25 = call i32 @fflush(%struct._IO_FILE* %14) #9, !dbg !275
  br label %if.end26, !dbg !276

if.end26:                                         ; preds = %if.end14, %if.then21
  call void @llvm.va_end(i8* %arraydecay15), !dbg !277
  br label %if.end29, !dbg !278

if.end29:                                         ; preds = %entry, %if.end26
  %15 = load i32* @error_level, align 4, !dbg !279, !tbaa !250
  %cmp30 = icmp slt i32 %15, %level, !dbg !279
  br i1 %cmp30, label %if.end33, label %if.then31, !dbg !279

if.then31:                                        ; preds = %if.end29
  %16 = load i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !dbg !280, !tbaa !218
  %call32 = call i32 %16(%struct.cGH* null, i32 0) #9, !dbg !280
  br label %if.end33, !dbg !282

if.end33:                                         ; preds = %if.end29, %if.then31
  ret i32 0, !dbg !283
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_warn_(i32* nocapture %level, i32* nocapture %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %level}, i64 0, metadata !64), !dbg !284
  tail call void @llvm.dbg.value(metadata !{i32* %line}, i64 0, metadata !65), !dbg !285
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !66), !dbg !286
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !67), !dbg !286
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str3}, i64 0, metadata !68), !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !69), !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !70), !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen3}, i64 0, metadata !71), !dbg !286
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !72), !dbg !287
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !73), !dbg !287
  %call2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #9, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !74), !dbg !287
  %0 = load i32* %level, align 4, !dbg !288, !tbaa !250
  %1 = load i32* %line, align 4, !dbg !288, !tbaa !250
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !289) #5, !dbg !290
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !291) #5, !dbg !292
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !293) #5, !dbg !294
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !295) #5, !dbg !296
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !297) #5, !dbg !298
  %call.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %0, i32 %1, i8* %call, i8* %call1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %call2) #9, !dbg !299
  tail call void @free(i8* %call1) #9, !dbg !300
  tail call void @free(i8* %call2) #9, !dbg !301
  tail call void @free(i8* %call) #9, !dbg !302
  ret void, !dbg !303
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_ParameterLevel() #6 {
entry:
  %0 = load i32* @parameter_level, align 4, !dbg !304, !tbaa !250
  ret i32 %0, !dbg !304
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_ParamWarn(i8* %thorn, i8* %message) #1 {
entry:
  %param_type = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !91), !dbg !305
  call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !92), !dbg !305
  call void @llvm.dbg.declare(metadata !{i32* %param_type}, metadata !94), !dbg !306
  %call = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #9, !dbg !307
  %0 = bitcast i8* %call to i32*, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !93), !dbg !307
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !308, !tbaa !218
  %2 = load i32* %0, align 4, !dbg !308, !tbaa !250
  %tobool = icmp ne i32 %2, 0, !dbg !308
  %cond = select i1 %tobool, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), !dbg !308
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* %cond, i8* %thorn, i8* %message) #9, !dbg !308
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !309, !tbaa !218
  %call2 = call i32 @fflush(%struct._IO_FILE* %3) #9, !dbg !309
  %4 = load i32* @param_errors, align 4, !dbg !310, !tbaa !250
  %inc = add nsw i32 %4, 1, !dbg !310
  store i32 %inc, i32* @param_errors, align 4, !dbg !310, !tbaa !250
  ret i32 0, !dbg !311
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_paramwarn_(i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !97), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !98), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !99), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !100), !dbg !312
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !101), !dbg !313
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !102), !dbg !313
  %call2 = tail call i32 @CCTK_ParamWarn(i8* %call, i8* %call1) #8, !dbg !314
  tail call void @free(i8* %call) #9, !dbg !315
  tail call void @free(i8* %call1) #9, !dbg !316
  ret void, !dbg !317
}

; Function Attrs: nounwind optsize uwtable
define i32 @cctk_messageformat_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !107), !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !108), !dbg !318
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !319
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !109), !dbg !319
  %0 = load i32* @n_formats, align 4, !dbg !320, !tbaa !250
  %call1 = tail call i32 @StoreKeyedData(%struct.PKeyedData** @formatlist, i32 %0, i8* %call) #9, !dbg !320
  %1 = load i32* @n_formats, align 4, !dbg !321, !tbaa !250
  %inc = add nsw i32 %1, 1, !dbg !321
  store i32 %inc, i32* @n_formats, align 4, !dbg !321, !tbaa !250
  ret i32 %1, !dbg !321
}

; Function Attrs: optsize
declare i32 @StoreKeyedData(%struct.PKeyedData**, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetParameterLevel(i32 %level) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !114), !dbg !322
  %0 = icmp ult i32 %level, 3, !dbg !323
  br i1 %0, label %if.then, label %if.else, !dbg !323

if.then:                                          ; preds = %entry
  store i32 %level, i32* @parameter_level, align 4, !dbg !324, !tbaa !250
  br label %if.end, !dbg !326

if.else:                                          ; preds = %entry
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 487, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i32 %level) #8, !dbg !327
  %.pre = load i32* @parameter_level, align 4, !dbg !329, !tbaa !250
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = phi i32 [ %.pre, %if.else ], [ %level, %if.then ]
  ret i32 %1, !dbg !329
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetWarnLevel(i32 %level) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !117), !dbg !330
  %0 = load i32* @warning_level, align 4, !dbg !331, !tbaa !250
  %cmp = icmp eq i32 %0, %level, !dbg !331
  br i1 %cmp, label %if.else, label %if.then, !dbg !331

if.then:                                          ; preds = %entry
  %cmp2 = icmp slt i32 %0, %level, !dbg !332
  %cond = select i1 %cmp2, i32 1, i32 -1, !dbg !332
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !118), !dbg !332
  %cond4 = select i1 %cmp2, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0), !dbg !334
  %call = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str13, i64 0, i64 0), i8* %cond4, i32 %0, i32 %level) #8, !dbg !334
  store i32 %level, i32* @warning_level, align 4, !dbg !335, !tbaa !250
  br label %if.end, !dbg !336

if.else:                                          ; preds = %entry
  %call5 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str16, i64 0, i64 0), i32 %level) #8, !dbg !337
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !118), !dbg !339
  %.pre = load i32* @warning_level, align 4, !dbg !340, !tbaa !250
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = phi i32 [ %level, %if.then ], [ %.pre, %if.else ]
  %retval1.0 = phi i32 [ %cond, %if.then ], [ 0, %if.else ]
  %2 = load i32* @error_level, align 4, !dbg !340, !tbaa !250
  %cmp6 = icmp slt i32 %1, %2, !dbg !340
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !340

if.then7:                                         ; preds = %if.end
  store i32 %1, i32* @error_level, align 4, !dbg !341, !tbaa !250
  %call8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 541, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str17, i64 0, i64 0), i32 %1) #8, !dbg !343
  br label %if.end9, !dbg !344

if.end9:                                          ; preds = %if.then7, %if.end
  ret i32 %retval1.0, !dbg !345
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetErrorLevel(i32 %level) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !121), !dbg !346
  %0 = load i32* @warning_level, align 4, !dbg !347, !tbaa !250
  %cmp = icmp slt i32 %0, %level, !dbg !347
  br i1 %cmp, label %if.else8, label %if.then, !dbg !347

if.then:                                          ; preds = %entry
  %1 = load i32* @error_level, align 4, !dbg !348, !tbaa !250
  %cmp2 = icmp eq i32 %1, %level, !dbg !348
  br i1 %cmp2, label %if.else, label %if.then3, !dbg !348

if.then3:                                         ; preds = %if.then
  %cmp4 = icmp slt i32 %1, %level, !dbg !350
  %cond = select i1 %cmp4, i32 1, i32 -1, !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !122), !dbg !350
  %cond6 = select i1 %cmp4, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0), !dbg !352
  %call = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str18, i64 0, i64 0), i8* %cond6, i32 %1, i32 %level) #8, !dbg !352
  store i32 %level, i32* @error_level, align 4, !dbg !353, !tbaa !250
  br label %if.end12, !dbg !354

if.else:                                          ; preds = %if.then
  %call7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 587, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0), i32 %level) #8, !dbg !355
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !357
  br label %if.end12

if.else8:                                         ; preds = %entry
  store i32 %level, i32* @error_level, align 4, !dbg !358, !tbaa !250
  %call11 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str20, i64 0, i64 0), i32 %0, i32 %level) #8, !dbg !360
  store i32 %level, i32* @warning_level, align 4, !dbg !361, !tbaa !250
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !362
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.else, %if.else8
  %retval1.0 = phi i32 [ %cond, %if.then3 ], [ 0, %if.else ], [ 0, %if.else8 ]
  ret i32 %retval1.0, !dbg !363
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_ExpectError(i32 %in, i32 %err, i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %in}, i64 0, metadata !127), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %err}, i64 0, metadata !128), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32 %warnonerr}, i64 0, metadata !129), !dbg !366
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !130), !dbg !367
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !131), !dbg !368
  tail call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !132), !dbg !369
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !133), !dbg !370
  %cmp = icmp eq i32 %in, %err, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %warnonerr}, i64 0, metadata !372) #5, !dbg !375
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !376) #5, !dbg !377
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !378) #5, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !380) #5, !dbg !381
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !382) #5, !dbg !383
  %call.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #9, !dbg !384
  br label %if.end, !dbg !385

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !386
}

; Function Attrs: nounwind optsize uwtable
define void @cctki_expecterror_(i32* nocapture %in, i32* nocapture %err, i32* nocapture %warnonerr, i32* nocapture %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !138), !dbg !387
  tail call void @llvm.dbg.value(metadata !{i32* %err}, i64 0, metadata !139), !dbg !388
  tail call void @llvm.dbg.value(metadata !{i32* %warnonerr}, i64 0, metadata !140), !dbg !389
  tail call void @llvm.dbg.value(metadata !{i32* %line}, i64 0, metadata !141), !dbg !390
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !142), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !143), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str3}, i64 0, metadata !144), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !145), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !146), !dbg !391
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen3}, i64 0, metadata !147), !dbg !391
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !148), !dbg !392
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !149), !dbg !392
  %call2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #9, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !150), !dbg !392
  %0 = load i32* %in, align 4, !dbg !393, !tbaa !250
  %1 = load i32* %err, align 4, !dbg !393, !tbaa !250
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !394) #5, !dbg !395
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !396) #5, !dbg !397
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !398) #5, !dbg !399
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !400) #5, !dbg !401
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !402) #5, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !404) #5, !dbg !405
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !406) #5, !dbg !407
  %cmp.i = icmp eq i32 %0, %1, !dbg !408
  br i1 %cmp.i, label %if.then.i, label %CCTKi_ExpectError.exit, !dbg !408

if.then.i:                                        ; preds = %entry
  %2 = load i32* %line, align 4, !dbg !393, !tbaa !250
  %3 = load i32* %warnonerr, align 4, !dbg !393, !tbaa !250
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !409) #5, !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !412) #5, !dbg !413
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !414) #5, !dbg !415
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !416) #5, !dbg !417
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !418) #5, !dbg !419
  %call.i.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %3, i32 %2, i8* %call, i8* %call1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %call2) #9, !dbg !420
  br label %CCTKi_ExpectError.exit, !dbg !421

CCTKi_ExpectError.exit:                           ; preds = %entry, %if.then.i
  tail call void @free(i8* %call) #9, !dbg !422
  tail call void @free(i8* %call1) #9, !dbg !423
  tail call void @free(i8* %call2) #9, !dbg !424
  ret void, !dbg !425
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_ExpectOK(i32 %in, i32 %ok, i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %in}, i64 0, metadata !153), !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %ok}, i64 0, metadata !154), !dbg !427
  tail call void @llvm.dbg.value(metadata !{i32 %warnonerr}, i64 0, metadata !155), !dbg !428
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !156), !dbg !429
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !157), !dbg !430
  tail call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !158), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !159), !dbg !432
  %cmp = icmp eq i32 %in, %ok, !dbg !433
  br i1 %cmp, label %if.end, label %if.then, !dbg !433

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %warnonerr}, i64 0, metadata !434) #5, !dbg !437
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !438) #5, !dbg !439
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !440) #5, !dbg !441
  tail call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !442) #5, !dbg !443
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !444) #5, !dbg !445
  %call.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #9, !dbg !446
  br label %if.end, !dbg !447

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !448
}

; Function Attrs: nounwind optsize uwtable
define void @cctki_expectok_(i32* nocapture %in, i32* nocapture %ok, i32* nocapture %warnonerr, i32* nocapture %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !162), !dbg !449
  tail call void @llvm.dbg.value(metadata !{i32* %ok}, i64 0, metadata !163), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32* %warnonerr}, i64 0, metadata !164), !dbg !451
  tail call void @llvm.dbg.value(metadata !{i32* %line}, i64 0, metadata !165), !dbg !452
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !166), !dbg !453
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !167), !dbg !453
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str3}, i64 0, metadata !168), !dbg !453
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !169), !dbg !453
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !170), !dbg !453
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen3}, i64 0, metadata !171), !dbg !453
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !454
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !172), !dbg !454
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #9, !dbg !454
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !173), !dbg !454
  %call2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #9, !dbg !454
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !174), !dbg !454
  %0 = load i32* %in, align 4, !dbg !455, !tbaa !250
  %1 = load i32* %ok, align 4, !dbg !455, !tbaa !250
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !456) #5, !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !458) #5, !dbg !459
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !460) #5, !dbg !461
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !462) #5, !dbg !463
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !464) #5, !dbg !465
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !466) #5, !dbg !467
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !468) #5, !dbg !469
  %cmp.i = icmp eq i32 %0, %1, !dbg !470
  br i1 %cmp.i, label %CCTKi_ExpectOK.exit, label %if.then.i, !dbg !470

if.then.i:                                        ; preds = %entry
  %2 = load i32* %line, align 4, !dbg !455, !tbaa !250
  %3 = load i32* %warnonerr, align 4, !dbg !455, !tbaa !250
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !471) #5, !dbg !473
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !474) #5, !dbg !475
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !476) #5, !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !478) #5, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !480) #5, !dbg !481
  %call.i.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %3, i32 %2, i8* %call, i8* %call1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %call2) #9, !dbg !482
  br label %CCTKi_ExpectOK.exit, !dbg !483

CCTKi_ExpectOK.exit:                              ; preds = %entry, %if.then.i
  tail call void @free(i8* %call) #9, !dbg !484
  tail call void @free(i8* %call1) #9, !dbg !485
  tail call void @free(i8* %call2) #9, !dbg !486
  ret void, !dbg !487
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_FinaliseParamWarn() #1 {
entry:
  %param_type = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %param_type}, metadata !179), !dbg !488
  %0 = load i32* @param_errors, align 4, !dbg !489, !tbaa !250
  %tobool = icmp eq i32 %0, 0, !dbg !489
  br i1 %tobool, label %if.end11, label %if.then, !dbg !489

if.then:                                          ; preds = %entry
  %call = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #9, !dbg !490
  %1 = bitcast i8* %call to i32*, !dbg !490
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !180), !dbg !490
  %2 = load i32* %1, align 4, !dbg !492, !tbaa !250
  %tobool1 = icmp eq i32 %2, 0, !dbg !492
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !492

if.then2:                                         ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !493, !tbaa !218
  %4 = load i32* @param_errors, align 4, !dbg !493, !tbaa !250
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8]* @.str21, i64 0, i64 0), i32 %4) #9, !dbg !493
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !495, !tbaa !218
  %call4 = call i32 @fflush(%struct._IO_FILE* %5) #9, !dbg !495
  call void @exit(i32 99) #10, !dbg !496
  unreachable, !dbg !496

if.else:                                          ; preds = %if.then
  %6 = load i32* @param_errors, align 4, !dbg !497, !tbaa !250
  %cmp = icmp eq i32 %6, 1, !dbg !497
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !499, !tbaa !218
  br i1 %cmp, label %if.then5, label %if.else7, !dbg !497

if.then5:                                         ; preds = %if.else
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %7), !dbg !499
  br label %if.end, !dbg !501

if.else7:                                         ; preds = %if.else
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([36 x i8]* @.str23, i64 0, i64 0), i32 %6) #9, !dbg !502
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then5
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !504, !tbaa !218
  %call9 = call i32 @fflush(%struct._IO_FILE* %9) #9, !dbg !504
  br label %if.end11, !dbg !505

if.end11:                                         ; preds = %entry, %if.end
  ret void, !dbg !506
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #7

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_NotYetImplemented(i8* %message) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !185), !dbg !507
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 823, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str24, i64 0, i64 0), i8* %message) #8, !dbg !508
  ret void, !dbg !509
}

; Function Attrs: nounwind optsize uwtable
define void @cctki_notyetimplemented_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !190), !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !191), !dbg !510
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !511
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !192), !dbg !511
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !512) #5, !dbg !514
  %call.i = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 823, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str24, i64 0, i64 0), i8* %call) #9, !dbg !515
  tail call void @free(i8* %call) #9, !dbg !516
  ret void, !dbg !517
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !193, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !18, metadata !30, metadata !49, metadata !58, metadata !75, metadata !86, metadata !89, metadata !95, metadata !103, metadata !110, metadata !115, metadata !119, metadata !123, metadata !134, metadata !151, metadata !160, metadata !175, metadata !181, metadata !186}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_WarnLevel_c", metadata !"CCTKi_version_main_WarnLevel_c", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_WarnLevel_c, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [CCTKi_version_main_WarnLevel_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Info", metadata !"CCTK_Info", metadata !"", i32 114, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @CCTK_Info, null, null, metadata !15, i32 115} ; [ DW_TAG_subprogram ] [line 114] [def] [scope 115] [CCTK_Info]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786689, metadata !11, metadata !"thorn", metadata !5, i32 16777330, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 114]
!17 = metadata !{i32 786689, metadata !11, metadata !"message", metadata !5, i32 33554546, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 114]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_info_", metadata !"cctk_info_", metadata !"", i32 119, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32)* @cctk_info_, null, null, metadata !23, i32 121} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 121] [cctk_info_]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !21, metadata !21, metadata !22, metadata !22}
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!24 = metadata !{i32 786689, metadata !18, metadata !"cctk_str1", metadata !5, i32 16777336, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 120]
!25 = metadata !{i32 786689, metadata !18, metadata !"cctk_str2", metadata !5, i32 33554552, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 120]
!26 = metadata !{i32 786689, metadata !18, metadata !"cctk_strlen1", metadata !5, i32 50331768, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 120]
!27 = metadata !{i32 786689, metadata !18, metadata !"cctk_strlen2", metadata !5, i32 67108984, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 120]
!28 = metadata !{i32 786688, metadata !18, metadata !"thorn", metadata !5, i32 122, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 122]
!29 = metadata !{i32 786688, metadata !18, metadata !"message", metadata !5, i32 122, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [message] [line 122]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_VInfo", metadata !"CCTK_VInfo", metadata !"", i32 158, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, ...)* @CCTK_VInfo, null, null, metadata !31, i32 159} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 159] [CCTK_VInfo]
!31 = metadata !{metadata !32, metadata !33, metadata !34}
!32 = metadata !{i32 786689, metadata !30, metadata !"thorn", metadata !5, i32 16777374, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 158]
!33 = metadata !{i32 786689, metadata !30, metadata !"format", metadata !5, i32 33554590, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 158]
!34 = metadata !{i32 786688, metadata !30, metadata !"ap", metadata !5, i32 160, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 160]
!35 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!36 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!37 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 160, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 160, size 0, align 0, offset 0] [from ]
!38 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !39, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!39 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 160, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [__va_list_tag] [line 160, size 0, align 0, offset 0] [from __va_list_tag]
!40 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 160, size 192, align 64, offset 0] [from ]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !46}
!42 = metadata !{i32 786445, metadata !1, metadata !40, metadata !"gp_offset", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [gp_offset] [line 160, size 32, align 32, offset 0] [from unsigned int]
!43 = metadata !{i32 786445, metadata !1, metadata !40, metadata !"fp_offset", i32 160, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [fp_offset] [line 160, size 32, align 32, offset 32] [from unsigned int]
!44 = metadata !{i32 786445, metadata !1, metadata !40, metadata !"overflow_arg_area", i32 160, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [overflow_arg_area] [line 160, size 64, align 64, offset 64] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786445, metadata !1, metadata !40, metadata !"reg_save_area", i32 160, i64 64, i64 64, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [reg_save_area] [line 160, size 64, align 64, offset 128] [from ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Warn", metadata !"CCTK_Warn", metadata !"", i32 216, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*, i8*, i8*)* @CCTK_Warn, null, null, metadata !52, i32 221} ; [ DW_TAG_subprogram ] [line 216] [def] [scope 221] [CCTK_Warn]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !14, metadata !14, metadata !14, metadata !8, metadata !8, metadata !8}
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!53 = metadata !{i32 786689, metadata !49, metadata !"level", metadata !5, i32 16777432, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 216]
!54 = metadata !{i32 786689, metadata !49, metadata !"line", metadata !5, i32 33554649, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 217]
!55 = metadata !{i32 786689, metadata !49, metadata !"file", metadata !5, i32 50331866, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 218]
!56 = metadata !{i32 786689, metadata !49, metadata !"thorn", metadata !5, i32 67109083, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 219]
!57 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !5, i32 83886300, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 220]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_warn_", metadata !"cctk_warn_", metadata !"", i32 225, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctk_warn_, null, null, metadata !63, i32 229} ; [ DW_TAG_subprogram ] [line 225] [def] [scope 229] [cctk_warn_]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !61, metadata !61, metadata !21, metadata !21, metadata !21, metadata !22, metadata !22, metadata !22}
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74}
!64 = metadata !{i32 786689, metadata !58, metadata !"level", metadata !5, i32 16777442, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 226]
!65 = metadata !{i32 786689, metadata !58, metadata !"line", metadata !5, i32 33554659, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 227]
!66 = metadata !{i32 786689, metadata !58, metadata !"cctk_str1", metadata !5, i32 50331876, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 228]
!67 = metadata !{i32 786689, metadata !58, metadata !"cctk_str2", metadata !5, i32 67109092, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 228]
!68 = metadata !{i32 786689, metadata !58, metadata !"cctk_str3", metadata !5, i32 83886308, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str3] [line 228]
!69 = metadata !{i32 786689, metadata !58, metadata !"cctk_strlen1", metadata !5, i32 100663524, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 228]
!70 = metadata !{i32 786689, metadata !58, metadata !"cctk_strlen2", metadata !5, i32 117440740, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 228]
!71 = metadata !{i32 786689, metadata !58, metadata !"cctk_strlen3", metadata !5, i32 134217956, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen3] [line 228]
!72 = metadata !{i32 786688, metadata !58, metadata !"file", metadata !5, i32 230, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 230]
!73 = metadata !{i32 786688, metadata !58, metadata !"thorn", metadata !5, i32 230, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 230]
!74 = metadata !{i32 786688, metadata !58, metadata !"message", metadata !5, i32 230, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [message] [line 230]
!75 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_VWarn", metadata !"CCTK_VWarn", metadata !"", i32 287, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn, null, null, metadata !76, i32 293} ; [ DW_TAG_subprogram ] [line 287] [def] [scope 293] [CCTK_VWarn]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85}
!77 = metadata !{i32 786689, metadata !75, metadata !"level", metadata !5, i32 16777503, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 287]
!78 = metadata !{i32 786689, metadata !75, metadata !"line", metadata !5, i32 33554720, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 288]
!79 = metadata !{i32 786689, metadata !75, metadata !"file", metadata !5, i32 50331937, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 289]
!80 = metadata !{i32 786689, metadata !75, metadata !"thorn", metadata !5, i32 67109154, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 290]
!81 = metadata !{i32 786689, metadata !75, metadata !"format", metadata !5, i32 83886371, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 291]
!82 = metadata !{i32 786688, metadata !75, metadata !"cctk_full_warnings", metadata !5, i32 294, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_full_warnings] [line 294]
!83 = metadata !{i32 786688, metadata !75, metadata !"param_type", metadata !5, i32 295, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 295]
!84 = metadata !{i32 786688, metadata !75, metadata !"myproc", metadata !5, i32 296, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 296]
!85 = metadata !{i32 786688, metadata !75, metadata !"ap", metadata !5, i32 297, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 297]
!86 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_ParameterLevel", metadata !"CCTK_ParameterLevel", metadata !"", i32 364, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_ParameterLevel, null, null, metadata !2, i32 365} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 365] [CCTK_ParameterLevel]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{metadata !14}
!89 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_ParamWarn", metadata !"CCTK_ParamWarn", metadata !"", i32 395, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @CCTK_ParamWarn, null, null, metadata !90, i32 396} ; [ DW_TAG_subprogram ] [line 395] [def] [scope 396] [CCTK_ParamWarn]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94}
!91 = metadata !{i32 786689, metadata !89, metadata !"thorn", metadata !5, i32 16777611, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 395]
!92 = metadata !{i32 786689, metadata !89, metadata !"message", metadata !5, i32 33554827, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 395]
!93 = metadata !{i32 786688, metadata !89, metadata !"cctk_strong_param_check", metadata !5, i32 397, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_strong_param_check] [line 397]
!94 = metadata !{i32 786688, metadata !89, metadata !"param_type", metadata !5, i32 398, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 398]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_paramwarn_", metadata !"cctk_paramwarn_", metadata !"", i32 412, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32)* @cctk_paramwarn_, null, null, metadata !96, i32 414} ; [ DW_TAG_subprogram ] [line 412] [def] [scope 414] [cctk_paramwarn_]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!97 = metadata !{i32 786689, metadata !95, metadata !"cctk_str1", metadata !5, i32 16777629, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 413]
!98 = metadata !{i32 786689, metadata !95, metadata !"cctk_str2", metadata !5, i32 33554845, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 413]
!99 = metadata !{i32 786689, metadata !95, metadata !"cctk_strlen1", metadata !5, i32 50332061, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 413]
!100 = metadata !{i32 786689, metadata !95, metadata !"cctk_strlen2", metadata !5, i32 67109277, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 413]
!101 = metadata !{i32 786688, metadata !95, metadata !"thorn", metadata !5, i32 415, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 415]
!102 = metadata !{i32 786688, metadata !95, metadata !"message", metadata !5, i32 415, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [message] [line 415]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_messageformat_", metadata !"cctk_messageformat_", metadata !"", i32 442, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @cctk_messageformat_, null, null, metadata !106, i32 444} ; [ DW_TAG_subprogram ] [line 442] [def] [scope 444] [cctk_messageformat_]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !14, metadata !21, metadata !22}
!106 = metadata !{metadata !107, metadata !108, metadata !109}
!107 = metadata !{i32 786689, metadata !103, metadata !"cctk_str1", metadata !5, i32 16777659, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 443]
!108 = metadata !{i32 786689, metadata !103, metadata !"cctk_strlen1", metadata !5, i32 33554875, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 443]
!109 = metadata !{i32 786688, metadata !103, metadata !"format", metadata !5, i32 445, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format] [line 445]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetParameterLevel", metadata !"CCTKi_SetParameterLevel", metadata !"", i32 477, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTKi_SetParameterLevel, null, null, metadata !113, i32 478} ; [ DW_TAG_subprogram ] [line 477] [def] [scope 478] [CCTKi_SetParameterLevel]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !14, metadata !14}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786689, metadata !110, metadata !"level", metadata !5, i32 16777693, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 477]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetWarnLevel", metadata !"CCTKi_SetWarnLevel", metadata !"", i32 519, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTKi_SetWarnLevel, null, null, metadata !116, i32 520} ; [ DW_TAG_subprogram ] [line 519] [def] [scope 520] [CCTKi_SetWarnLevel]
!116 = metadata !{metadata !117, metadata !118}
!117 = metadata !{i32 786689, metadata !115, metadata !"level", metadata !5, i32 16777735, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 519]
!118 = metadata !{i32 786688, metadata !115, metadata !"retval", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 521]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetErrorLevel", metadata !"CCTKi_SetErrorLevel", metadata !"", i32 572, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTKi_SetErrorLevel, null, null, metadata !120, i32 573} ; [ DW_TAG_subprogram ] [line 572] [def] [scope 573] [CCTKi_SetErrorLevel]
!120 = metadata !{metadata !121, metadata !122}
!121 = metadata !{i32 786689, metadata !119, metadata !"level", metadata !5, i32 16777788, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 572]
!122 = metadata !{i32 786688, metadata !119, metadata !"retval", metadata !5, i32 574, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 574]
!123 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ExpectError", metadata !"CCTKi_ExpectError", metadata !"", i32 654, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i8*, i8*, i8*)* @CCTKi_ExpectError, null, null, metadata !126, i32 661} ; [ DW_TAG_subprogram ] [line 654] [def] [scope 661] [CCTKi_ExpectError]
!124 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{null, metadata !14, metadata !14, metadata !14, metadata !14, metadata !8, metadata !8, metadata !8}
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!127 = metadata !{i32 786689, metadata !123, metadata !"in", metadata !5, i32 16777870, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 654]
!128 = metadata !{i32 786689, metadata !123, metadata !"err", metadata !5, i32 33555087, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [err] [line 655]
!129 = metadata !{i32 786689, metadata !123, metadata !"warnonerr", metadata !5, i32 50332304, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [warnonerr] [line 656]
!130 = metadata !{i32 786689, metadata !123, metadata !"line", metadata !5, i32 67109521, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 657]
!131 = metadata !{i32 786689, metadata !123, metadata !"file", metadata !5, i32 83886738, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 658]
!132 = metadata !{i32 786689, metadata !123, metadata !"thorn", metadata !5, i32 100663955, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 659]
!133 = metadata !{i32 786689, metadata !123, metadata !"message", metadata !5, i32 117441172, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 660]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctki_expecterror_", metadata !"cctki_expecterror_", metadata !"", i32 668, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctki_expecterror_, null, null, metadata !137, i32 674} ; [ DW_TAG_subprogram ] [line 668] [def] [scope 674] [cctki_expecterror_]
!135 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!136 = metadata !{null, metadata !61, metadata !61, metadata !61, metadata !61, metadata !21, metadata !21, metadata !21, metadata !22, metadata !22, metadata !22}
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150}
!138 = metadata !{i32 786689, metadata !134, metadata !"in", metadata !5, i32 16777885, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 669]
!139 = metadata !{i32 786689, metadata !134, metadata !"err", metadata !5, i32 33555102, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [err] [line 670]
!140 = metadata !{i32 786689, metadata !134, metadata !"warnonerr", metadata !5, i32 50332319, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [warnonerr] [line 671]
!141 = metadata !{i32 786689, metadata !134, metadata !"line", metadata !5, i32 67109536, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 672]
!142 = metadata !{i32 786689, metadata !134, metadata !"cctk_str1", metadata !5, i32 83886753, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 673]
!143 = metadata !{i32 786689, metadata !134, metadata !"cctk_str2", metadata !5, i32 100663969, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 673]
!144 = metadata !{i32 786689, metadata !134, metadata !"cctk_str3", metadata !5, i32 117441185, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str3] [line 673]
!145 = metadata !{i32 786689, metadata !134, metadata !"cctk_strlen1", metadata !5, i32 134218401, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 673]
!146 = metadata !{i32 786689, metadata !134, metadata !"cctk_strlen2", metadata !5, i32 150995617, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 673]
!147 = metadata !{i32 786689, metadata !134, metadata !"cctk_strlen3", metadata !5, i32 167772833, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen3] [line 673]
!148 = metadata !{i32 786688, metadata !134, metadata !"file", metadata !5, i32 675, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 675]
!149 = metadata !{i32 786688, metadata !134, metadata !"thorn", metadata !5, i32 675, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 675]
!150 = metadata !{i32 786688, metadata !134, metadata !"message", metadata !5, i32 675, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [message] [line 675]
!151 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ExpectOK", metadata !"CCTKi_ExpectOK", metadata !"", i32 730, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i8*, i8*, i8*)* @CCTKi_ExpectOK, null, null, metadata !152, i32 737} ; [ DW_TAG_subprogram ] [line 730] [def] [scope 737] [CCTKi_ExpectOK]
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159}
!153 = metadata !{i32 786689, metadata !151, metadata !"in", metadata !5, i32 16777946, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 730]
!154 = metadata !{i32 786689, metadata !151, metadata !"ok", metadata !5, i32 33555163, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ok] [line 731]
!155 = metadata !{i32 786689, metadata !151, metadata !"warnonerr", metadata !5, i32 50332380, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [warnonerr] [line 732]
!156 = metadata !{i32 786689, metadata !151, metadata !"line", metadata !5, i32 67109597, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 733]
!157 = metadata !{i32 786689, metadata !151, metadata !"file", metadata !5, i32 83886814, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 734]
!158 = metadata !{i32 786689, metadata !151, metadata !"thorn", metadata !5, i32 100664031, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 735]
!159 = metadata !{i32 786689, metadata !151, metadata !"message", metadata !5, i32 117441248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 736]
!160 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctki_expectok_", metadata !"cctki_expectok_", metadata !"", i32 744, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctki_expectok_, null, null, metadata !161, i32 750} ; [ DW_TAG_subprogram ] [line 744] [def] [scope 750] [cctki_expectok_]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174}
!162 = metadata !{i32 786689, metadata !160, metadata !"in", metadata !5, i32 16777961, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 745]
!163 = metadata !{i32 786689, metadata !160, metadata !"ok", metadata !5, i32 33555178, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ok] [line 746]
!164 = metadata !{i32 786689, metadata !160, metadata !"warnonerr", metadata !5, i32 50332395, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [warnonerr] [line 747]
!165 = metadata !{i32 786689, metadata !160, metadata !"line", metadata !5, i32 67109612, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 748]
!166 = metadata !{i32 786689, metadata !160, metadata !"cctk_str1", metadata !5, i32 83886829, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 749]
!167 = metadata !{i32 786689, metadata !160, metadata !"cctk_str2", metadata !5, i32 100664045, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 749]
!168 = metadata !{i32 786689, metadata !160, metadata !"cctk_str3", metadata !5, i32 117441261, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str3] [line 749]
!169 = metadata !{i32 786689, metadata !160, metadata !"cctk_strlen1", metadata !5, i32 134218477, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 749]
!170 = metadata !{i32 786689, metadata !160, metadata !"cctk_strlen2", metadata !5, i32 150995693, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 749]
!171 = metadata !{i32 786689, metadata !160, metadata !"cctk_strlen3", metadata !5, i32 167772909, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen3] [line 749]
!172 = metadata !{i32 786688, metadata !160, metadata !"file", metadata !5, i32 751, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 751]
!173 = metadata !{i32 786688, metadata !160, metadata !"thorn", metadata !5, i32 751, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 751]
!174 = metadata !{i32 786688, metadata !160, metadata !"message", metadata !5, i32 751, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [message] [line 751]
!175 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_FinaliseParamWarn", metadata !"CCTKi_FinaliseParamWarn", metadata !"", i32 768, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_FinaliseParamWarn, null, null, metadata !178, i32 769} ; [ DW_TAG_subprogram ] [line 768] [def] [scope 769] [CCTKi_FinaliseParamWarn]
!176 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{null}
!178 = metadata !{metadata !179, metadata !180}
!179 = metadata !{i32 786688, metadata !175, metadata !"param_type", metadata !5, i32 770, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 770]
!180 = metadata !{i32 786688, metadata !175, metadata !"cctk_strong_param_check", metadata !5, i32 771, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_strong_param_check] [line 771]
!181 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_NotYetImplemented", metadata !"CCTKi_NotYetImplemented", metadata !"", i32 815, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_NotYetImplemented, null, null, metadata !184, i32 816} ; [ DW_TAG_subprogram ] [line 815] [def] [scope 816] [CCTKi_NotYetImplemented]
!182 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{null, metadata !8}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 786689, metadata !181, metadata !"message", metadata !5, i32 16778031, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 815]
!186 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctki_notyetimplemented_", metadata !"cctki_notyetimplemented_", metadata !"", i32 827, metadata !187, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @cctki_notyetimplemented_, null, null, metadata !189, i32 829} ; [ DW_TAG_subprogram ] [line 827] [def] [scope 829] [cctki_notyetimplemented_]
!187 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!188 = metadata !{null, metadata !21, metadata !22}
!189 = metadata !{metadata !190, metadata !191, metadata !192}
!190 = metadata !{i32 786689, metadata !186, metadata !"cctk_str1", metadata !5, i32 16778044, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 828]
!191 = metadata !{i32 786689, metadata !186, metadata !"cctk_strlen1", metadata !5, i32 33555260, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 828]
!192 = metadata !{i32 786688, metadata !186, metadata !"message", metadata !5, i32 830, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [message] [line 830]
!193 = metadata !{metadata !194, metadata !195, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210}
!194 = metadata !{i32 786484, i32 0, null, metadata !"n_formats", metadata !"n_formats", metadata !"", metadata !5, i32 86, metadata !14, i32 1, i32 1, i32* @n_formats, null} ; [ DW_TAG_variable ] [n_formats] [line 86] [local] [def]
!195 = metadata !{i32 786484, i32 0, null, metadata !"formatlist", metadata !"formatlist", metadata !"", metadata !5, i32 87, metadata !196, i32 1, i32 1, %struct.PKeyedData** @formatlist, null} ; [ DW_TAG_variable ] [formatlist] [line 87] [local] [def]
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pKeyedData]
!197 = metadata !{i32 786454, metadata !1, null, metadata !"pKeyedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [pKeyedData] [line 26, size 0, align 0, offset 0] [from PKeyedData]
!198 = metadata !{i32 786451, metadata !199, null, metadata !"PKeyedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [PKeyedData] [line 18, size 256, align 64, offset 0] [from ]
!199 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreKeyedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!200 = metadata !{metadata !201, metadata !203, metadata !204, metadata !205}
!201 = metadata !{i32 786445, metadata !199, metadata !198, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!202 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PKeyedData]
!203 = metadata !{i32 786445, metadata !199, metadata !198, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!204 = metadata !{i32 786445, metadata !199, metadata !198, metadata !"key", i32 23, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 128] [from int]
!205 = metadata !{i32 786445, metadata !199, metadata !198, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!206 = metadata !{i32 786484, i32 0, null, metadata !"param_errors", metadata !"param_errors", metadata !"", metadata !5, i32 73, metadata !14, i32 1, i32 1, i32* @param_errors, null} ; [ DW_TAG_variable ] [param_errors] [line 73] [local] [def]
!207 = metadata !{i32 786484, i32 0, null, metadata !"parameter_level", metadata !"parameter_level", metadata !"", metadata !5, i32 70, metadata !14, i32 1, i32 1, i32* @parameter_level, null} ; [ DW_TAG_variable ] [parameter_level] [line 70] [local] [def]
!208 = metadata !{i32 786484, i32 0, null, metadata !"error_level", metadata !"error_level", metadata !"", metadata !5, i32 83, metadata !14, i32 1, i32 1, i32* @error_level, null} ; [ DW_TAG_variable ] [error_level] [line 83] [local] [def]
!209 = metadata !{i32 786484, i32 0, null, metadata !"warning_level", metadata !"warning_level", metadata !"", metadata !5, i32 78, metadata !14, i32 1, i32 1, i32* @warning_level, null} ; [ DW_TAG_variable ] [warning_level] [line 78] [local] [def]
!210 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 29, metadata !8, i32 1, i32 1, null, null}
!211 = metadata !{i32 30, i32 0, metadata !4, null}
!212 = metadata !{i32 114, i32 0, metadata !11, null}
!213 = metadata !{i32 116, i32 0, metadata !11, null}
!214 = metadata !{i32 158, i32 0, metadata !30, null}
!215 = metadata !{i32 160, i32 0, metadata !30, null}
!216 = metadata !{i32 163, i32 0, metadata !30, null}
!217 = metadata !{i32 165, i32 0, metadata !30, null}
!218 = metadata !{metadata !"any pointer", metadata !219}
!219 = metadata !{metadata !"omnipotent char", metadata !220}
!220 = metadata !{metadata !"Simple C/C++ TBAA"}
!221 = metadata !{i32 166, i32 0, metadata !30, null}
!222 = metadata !{i32 167, i32 0, metadata !30, null}
!223 = metadata !{i32 168, i32 0, metadata !30, null}
!224 = metadata !{i32 170, i32 0, metadata !30, null}
!225 = metadata !{i32 172, i32 0, metadata !30, null}
!226 = metadata !{i32 120, i32 0, metadata !18, null}
!227 = metadata !{i32 122, i32 0, metadata !18, null}
!228 = metadata !{i32 786689, metadata !11, metadata !"thorn", metadata !5, i32 16777330, metadata !8, i32 0, metadata !229} ; [ DW_TAG_arg_variable ] [thorn] [line 114]
!229 = metadata !{i32 123, i32 0, metadata !18, null}
!230 = metadata !{i32 114, i32 0, metadata !11, metadata !229}
!231 = metadata !{i32 786689, metadata !11, metadata !"message", metadata !5, i32 33554546, metadata !8, i32 0, metadata !229} ; [ DW_TAG_arg_variable ] [message] [line 114]
!232 = metadata !{i32 116, i32 0, metadata !11, metadata !229}
!233 = metadata !{i32 124, i32 0, metadata !18, null}
!234 = metadata !{i32 125, i32 0, metadata !18, null}
!235 = metadata !{i32 126, i32 0, metadata !18, null}
!236 = metadata !{i32 216, i32 0, metadata !49, null}
!237 = metadata !{i32 217, i32 0, metadata !49, null}
!238 = metadata !{i32 218, i32 0, metadata !49, null}
!239 = metadata !{i32 219, i32 0, metadata !49, null}
!240 = metadata !{i32 220, i32 0, metadata !49, null}
!241 = metadata !{i32 222, i32 0, metadata !49, null}
!242 = metadata !{i32 287, i32 0, metadata !75, null}
!243 = metadata !{i32 288, i32 0, metadata !75, null}
!244 = metadata !{i32 289, i32 0, metadata !75, null}
!245 = metadata !{i32 290, i32 0, metadata !75, null}
!246 = metadata !{i32 291, i32 0, metadata !75, null}
!247 = metadata !{i32 295, i32 0, metadata !75, null}
!248 = metadata !{i32 297, i32 0, metadata !75, null}
!249 = metadata !{i32 299, i32 0, metadata !75, null}
!250 = metadata !{metadata !"int", metadata !219}
!251 = metadata !{i32 301, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !75, i32 300, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!253 = metadata !{i32 304, i32 0, metadata !252, null}
!254 = metadata !{i32 306, i32 0, metadata !252, null}
!255 = metadata !{i32 308, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !252, i32 307, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!257 = metadata !{i32 312, i32 0, metadata !256, null}
!258 = metadata !{i32 314, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !256, i32 313, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!260 = metadata !{i32 318, i32 0, metadata !259, null}
!261 = metadata !{i32 322, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !252, i32 321, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!263 = metadata !{i32 323, i32 0, metadata !262, null}
!264 = metadata !{i32 325, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !262, i32 324, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!266 = metadata !{i32 326, i32 0, metadata !265, null}
!267 = metadata !{i32 329, i32 0, metadata !252, null}
!268 = metadata !{i32 330, i32 0, metadata !252, null}
!269 = metadata !{i32 331, i32 0, metadata !252, null}
!270 = metadata !{i32 332, i32 0, metadata !252, null}
!271 = metadata !{i32 333, i32 0, metadata !252, null}
!272 = metadata !{i32 335, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !252, i32 334, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!274 = metadata !{i32 336, i32 0, metadata !273, null}
!275 = metadata !{i32 337, i32 0, metadata !273, null}
!276 = metadata !{i32 338, i32 0, metadata !273, null}
!277 = metadata !{i32 339, i32 0, metadata !252, null}
!278 = metadata !{i32 340, i32 0, metadata !252, null}
!279 = metadata !{i32 342, i32 0, metadata !75, null}
!280 = metadata !{i32 344, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !75, i32 343, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!282 = metadata !{i32 345, i32 0, metadata !281, null}
!283 = metadata !{i32 347, i32 0, metadata !75, null}
!284 = metadata !{i32 226, i32 0, metadata !58, null}
!285 = metadata !{i32 227, i32 0, metadata !58, null}
!286 = metadata !{i32 228, i32 0, metadata !58, null}
!287 = metadata !{i32 230, i32 0, metadata !58, null}
!288 = metadata !{i32 231, i32 0, metadata !58, null}
!289 = metadata !{i32 786689, metadata !49, metadata !"level", metadata !5, i32 16777432, metadata !14, i32 0, metadata !288} ; [ DW_TAG_arg_variable ] [level] [line 216]
!290 = metadata !{i32 216, i32 0, metadata !49, metadata !288}
!291 = metadata !{i32 786689, metadata !49, metadata !"line", metadata !5, i32 33554649, metadata !14, i32 0, metadata !288} ; [ DW_TAG_arg_variable ] [line] [line 217]
!292 = metadata !{i32 217, i32 0, metadata !49, metadata !288}
!293 = metadata !{i32 786689, metadata !49, metadata !"file", metadata !5, i32 50331866, metadata !8, i32 0, metadata !288} ; [ DW_TAG_arg_variable ] [file] [line 218]
!294 = metadata !{i32 218, i32 0, metadata !49, metadata !288}
!295 = metadata !{i32 786689, metadata !49, metadata !"thorn", metadata !5, i32 67109083, metadata !8, i32 0, metadata !288} ; [ DW_TAG_arg_variable ] [thorn] [line 219]
!296 = metadata !{i32 219, i32 0, metadata !49, metadata !288}
!297 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !5, i32 83886300, metadata !8, i32 0, metadata !288} ; [ DW_TAG_arg_variable ] [message] [line 220]
!298 = metadata !{i32 220, i32 0, metadata !49, metadata !288}
!299 = metadata !{i32 222, i32 0, metadata !49, metadata !288}
!300 = metadata !{i32 232, i32 0, metadata !58, null}
!301 = metadata !{i32 233, i32 0, metadata !58, null}
!302 = metadata !{i32 234, i32 0, metadata !58, null}
!303 = metadata !{i32 235, i32 0, metadata !58, null}
!304 = metadata !{i32 366, i32 0, metadata !86, null}
!305 = metadata !{i32 395, i32 0, metadata !89, null}
!306 = metadata !{i32 398, i32 0, metadata !89, null}
!307 = metadata !{i32 402, i32 0, metadata !89, null}
!308 = metadata !{i32 404, i32 0, metadata !89, null}
!309 = metadata !{i32 406, i32 0, metadata !89, null}
!310 = metadata !{i32 407, i32 0, metadata !89, null}
!311 = metadata !{i32 409, i32 0, metadata !89, null}
!312 = metadata !{i32 413, i32 0, metadata !95, null}
!313 = metadata !{i32 415, i32 0, metadata !95, null}
!314 = metadata !{i32 416, i32 0, metadata !95, null}
!315 = metadata !{i32 417, i32 0, metadata !95, null}
!316 = metadata !{i32 418, i32 0, metadata !95, null}
!317 = metadata !{i32 419, i32 0, metadata !95, null}
!318 = metadata !{i32 443, i32 0, metadata !103, null}
!319 = metadata !{i32 445, i32 0, metadata !103, null}
!320 = metadata !{i32 447, i32 0, metadata !103, null}
!321 = metadata !{i32 449, i32 0, metadata !103, null}
!322 = metadata !{i32 477, i32 0, metadata !110, null}
!323 = metadata !{i32 479, i32 0, metadata !110, null}
!324 = metadata !{i32 483, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !110, i32 482, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!326 = metadata !{i32 484, i32 0, metadata !325, null}
!327 = metadata !{i32 487, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !110, i32 486, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!329 = metadata !{i32 492, i32 0, metadata !110, null}
!330 = metadata !{i32 519, i32 0, metadata !115, null}
!331 = metadata !{i32 524, i32 0, metadata !115, null}
!332 = metadata !{i32 526, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !115, i32 525, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!334 = metadata !{i32 527, i32 0, metadata !333, null}
!335 = metadata !{i32 529, i32 0, metadata !333, null}
!336 = metadata !{i32 530, i32 0, metadata !333, null}
!337 = metadata !{i32 533, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !115, i32 532, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!339 = metadata !{i32 535, i32 0, metadata !338, null}
!340 = metadata !{i32 538, i32 0, metadata !115, null}
!341 = metadata !{i32 540, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !115, i32 539, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!343 = metadata !{i32 541, i32 0, metadata !342, null}
!344 = metadata !{i32 543, i32 0, metadata !342, null}
!345 = metadata !{i32 545, i32 0, metadata !115, null}
!346 = metadata !{i32 572, i32 0, metadata !119, null}
!347 = metadata !{i32 576, i32 0, metadata !119, null}
!348 = metadata !{i32 578, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !119, i32 577, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!350 = metadata !{i32 580, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 579, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!352 = metadata !{i32 581, i32 0, metadata !351, null}
!353 = metadata !{i32 583, i32 0, metadata !351, null}
!354 = metadata !{i32 584, i32 0, metadata !351, null}
!355 = metadata !{i32 587, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !349, i32 586, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!357 = metadata !{i32 589, i32 0, metadata !356, null}
!358 = metadata !{i32 595, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !119, i32 593, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!360 = metadata !{i32 596, i32 0, metadata !359, null}
!361 = metadata !{i32 599, i32 0, metadata !359, null}
!362 = metadata !{i32 600, i32 0, metadata !359, null}
!363 = metadata !{i32 603, i32 0, metadata !119, null}
!364 = metadata !{i32 654, i32 0, metadata !123, null}
!365 = metadata !{i32 655, i32 0, metadata !123, null}
!366 = metadata !{i32 656, i32 0, metadata !123, null}
!367 = metadata !{i32 657, i32 0, metadata !123, null}
!368 = metadata !{i32 658, i32 0, metadata !123, null}
!369 = metadata !{i32 659, i32 0, metadata !123, null}
!370 = metadata !{i32 660, i32 0, metadata !123, null}
!371 = metadata !{i32 662, i32 0, metadata !123, null}
!372 = metadata !{i32 786689, metadata !49, metadata !"level", metadata !5, i32 16777432, metadata !14, i32 0, metadata !373} ; [ DW_TAG_arg_variable ] [level] [line 216]
!373 = metadata !{i32 664, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !123, i32 663, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!375 = metadata !{i32 216, i32 0, metadata !49, metadata !373}
!376 = metadata !{i32 786689, metadata !49, metadata !"line", metadata !5, i32 33554649, metadata !14, i32 0, metadata !373} ; [ DW_TAG_arg_variable ] [line] [line 217]
!377 = metadata !{i32 217, i32 0, metadata !49, metadata !373}
!378 = metadata !{i32 786689, metadata !49, metadata !"file", metadata !5, i32 50331866, metadata !8, i32 0, metadata !373} ; [ DW_TAG_arg_variable ] [file] [line 218]
!379 = metadata !{i32 218, i32 0, metadata !49, metadata !373}
!380 = metadata !{i32 786689, metadata !49, metadata !"thorn", metadata !5, i32 67109083, metadata !8, i32 0, metadata !373} ; [ DW_TAG_arg_variable ] [thorn] [line 219]
!381 = metadata !{i32 219, i32 0, metadata !49, metadata !373}
!382 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !5, i32 83886300, metadata !8, i32 0, metadata !373} ; [ DW_TAG_arg_variable ] [message] [line 220]
!383 = metadata !{i32 220, i32 0, metadata !49, metadata !373}
!384 = metadata !{i32 222, i32 0, metadata !49, metadata !373}
!385 = metadata !{i32 665, i32 0, metadata !374, null}
!386 = metadata !{i32 666, i32 0, metadata !123, null}
!387 = metadata !{i32 669, i32 0, metadata !134, null}
!388 = metadata !{i32 670, i32 0, metadata !134, null}
!389 = metadata !{i32 671, i32 0, metadata !134, null}
!390 = metadata !{i32 672, i32 0, metadata !134, null}
!391 = metadata !{i32 673, i32 0, metadata !134, null}
!392 = metadata !{i32 675, i32 0, metadata !134, null}
!393 = metadata !{i32 676, i32 0, metadata !134, null}
!394 = metadata !{i32 786689, metadata !123, metadata !"in", metadata !5, i32 16777870, metadata !14, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [in] [line 654]
!395 = metadata !{i32 654, i32 0, metadata !123, metadata !393}
!396 = metadata !{i32 786689, metadata !123, metadata !"err", metadata !5, i32 33555087, metadata !14, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [err] [line 655]
!397 = metadata !{i32 655, i32 0, metadata !123, metadata !393}
!398 = metadata !{i32 786689, metadata !123, metadata !"warnonerr", metadata !5, i32 50332304, metadata !14, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [warnonerr] [line 656]
!399 = metadata !{i32 656, i32 0, metadata !123, metadata !393}
!400 = metadata !{i32 786689, metadata !123, metadata !"line", metadata !5, i32 67109521, metadata !14, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [line] [line 657]
!401 = metadata !{i32 657, i32 0, metadata !123, metadata !393}
!402 = metadata !{i32 786689, metadata !123, metadata !"file", metadata !5, i32 83886738, metadata !8, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [file] [line 658]
!403 = metadata !{i32 658, i32 0, metadata !123, metadata !393}
!404 = metadata !{i32 786689, metadata !123, metadata !"thorn", metadata !5, i32 100663955, metadata !8, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [thorn] [line 659]
!405 = metadata !{i32 659, i32 0, metadata !123, metadata !393}
!406 = metadata !{i32 786689, metadata !123, metadata !"message", metadata !5, i32 117441172, metadata !8, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [message] [line 660]
!407 = metadata !{i32 660, i32 0, metadata !123, metadata !393}
!408 = metadata !{i32 662, i32 0, metadata !123, metadata !393}
!409 = metadata !{i32 786689, metadata !49, metadata !"level", metadata !5, i32 16777432, metadata !14, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [level] [line 216]
!410 = metadata !{i32 664, i32 0, metadata !374, metadata !393}
!411 = metadata !{i32 216, i32 0, metadata !49, metadata !410}
!412 = metadata !{i32 786689, metadata !49, metadata !"line", metadata !5, i32 33554649, metadata !14, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [line] [line 217]
!413 = metadata !{i32 217, i32 0, metadata !49, metadata !410}
!414 = metadata !{i32 786689, metadata !49, metadata !"file", metadata !5, i32 50331866, metadata !8, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [file] [line 218]
!415 = metadata !{i32 218, i32 0, metadata !49, metadata !410}
!416 = metadata !{i32 786689, metadata !49, metadata !"thorn", metadata !5, i32 67109083, metadata !8, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [thorn] [line 219]
!417 = metadata !{i32 219, i32 0, metadata !49, metadata !410}
!418 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !5, i32 83886300, metadata !8, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [message] [line 220]
!419 = metadata !{i32 220, i32 0, metadata !49, metadata !410}
!420 = metadata !{i32 222, i32 0, metadata !49, metadata !410}
!421 = metadata !{i32 665, i32 0, metadata !374, metadata !393}
!422 = metadata !{i32 677, i32 0, metadata !134, null}
!423 = metadata !{i32 678, i32 0, metadata !134, null}
!424 = metadata !{i32 679, i32 0, metadata !134, null}
!425 = metadata !{i32 680, i32 0, metadata !134, null}
!426 = metadata !{i32 730, i32 0, metadata !151, null}
!427 = metadata !{i32 731, i32 0, metadata !151, null}
!428 = metadata !{i32 732, i32 0, metadata !151, null}
!429 = metadata !{i32 733, i32 0, metadata !151, null}
!430 = metadata !{i32 734, i32 0, metadata !151, null}
!431 = metadata !{i32 735, i32 0, metadata !151, null}
!432 = metadata !{i32 736, i32 0, metadata !151, null}
!433 = metadata !{i32 738, i32 0, metadata !151, null}
!434 = metadata !{i32 786689, metadata !49, metadata !"level", metadata !5, i32 16777432, metadata !14, i32 0, metadata !435} ; [ DW_TAG_arg_variable ] [level] [line 216]
!435 = metadata !{i32 740, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !151, i32 739, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!437 = metadata !{i32 216, i32 0, metadata !49, metadata !435}
!438 = metadata !{i32 786689, metadata !49, metadata !"line", metadata !5, i32 33554649, metadata !14, i32 0, metadata !435} ; [ DW_TAG_arg_variable ] [line] [line 217]
!439 = metadata !{i32 217, i32 0, metadata !49, metadata !435}
!440 = metadata !{i32 786689, metadata !49, metadata !"file", metadata !5, i32 50331866, metadata !8, i32 0, metadata !435} ; [ DW_TAG_arg_variable ] [file] [line 218]
!441 = metadata !{i32 218, i32 0, metadata !49, metadata !435}
!442 = metadata !{i32 786689, metadata !49, metadata !"thorn", metadata !5, i32 67109083, metadata !8, i32 0, metadata !435} ; [ DW_TAG_arg_variable ] [thorn] [line 219]
!443 = metadata !{i32 219, i32 0, metadata !49, metadata !435}
!444 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !5, i32 83886300, metadata !8, i32 0, metadata !435} ; [ DW_TAG_arg_variable ] [message] [line 220]
!445 = metadata !{i32 220, i32 0, metadata !49, metadata !435}
!446 = metadata !{i32 222, i32 0, metadata !49, metadata !435}
!447 = metadata !{i32 741, i32 0, metadata !436, null}
!448 = metadata !{i32 742, i32 0, metadata !151, null}
!449 = metadata !{i32 745, i32 0, metadata !160, null}
!450 = metadata !{i32 746, i32 0, metadata !160, null}
!451 = metadata !{i32 747, i32 0, metadata !160, null}
!452 = metadata !{i32 748, i32 0, metadata !160, null}
!453 = metadata !{i32 749, i32 0, metadata !160, null}
!454 = metadata !{i32 751, i32 0, metadata !160, null}
!455 = metadata !{i32 752, i32 0, metadata !160, null}
!456 = metadata !{i32 786689, metadata !151, metadata !"in", metadata !5, i32 16777946, metadata !14, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [in] [line 730]
!457 = metadata !{i32 730, i32 0, metadata !151, metadata !455}
!458 = metadata !{i32 786689, metadata !151, metadata !"ok", metadata !5, i32 33555163, metadata !14, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [ok] [line 731]
!459 = metadata !{i32 731, i32 0, metadata !151, metadata !455}
!460 = metadata !{i32 786689, metadata !151, metadata !"warnonerr", metadata !5, i32 50332380, metadata !14, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [warnonerr] [line 732]
!461 = metadata !{i32 732, i32 0, metadata !151, metadata !455}
!462 = metadata !{i32 786689, metadata !151, metadata !"line", metadata !5, i32 67109597, metadata !14, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [line] [line 733]
!463 = metadata !{i32 733, i32 0, metadata !151, metadata !455}
!464 = metadata !{i32 786689, metadata !151, metadata !"file", metadata !5, i32 83886814, metadata !8, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [file] [line 734]
!465 = metadata !{i32 734, i32 0, metadata !151, metadata !455}
!466 = metadata !{i32 786689, metadata !151, metadata !"thorn", metadata !5, i32 100664031, metadata !8, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [thorn] [line 735]
!467 = metadata !{i32 735, i32 0, metadata !151, metadata !455}
!468 = metadata !{i32 786689, metadata !151, metadata !"message", metadata !5, i32 117441248, metadata !8, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [message] [line 736]
!469 = metadata !{i32 736, i32 0, metadata !151, metadata !455}
!470 = metadata !{i32 738, i32 0, metadata !151, metadata !455}
!471 = metadata !{i32 786689, metadata !49, metadata !"level", metadata !5, i32 16777432, metadata !14, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [level] [line 216]
!472 = metadata !{i32 740, i32 0, metadata !436, metadata !455}
!473 = metadata !{i32 216, i32 0, metadata !49, metadata !472}
!474 = metadata !{i32 786689, metadata !49, metadata !"line", metadata !5, i32 33554649, metadata !14, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [line] [line 217]
!475 = metadata !{i32 217, i32 0, metadata !49, metadata !472}
!476 = metadata !{i32 786689, metadata !49, metadata !"file", metadata !5, i32 50331866, metadata !8, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [file] [line 218]
!477 = metadata !{i32 218, i32 0, metadata !49, metadata !472}
!478 = metadata !{i32 786689, metadata !49, metadata !"thorn", metadata !5, i32 67109083, metadata !8, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [thorn] [line 219]
!479 = metadata !{i32 219, i32 0, metadata !49, metadata !472}
!480 = metadata !{i32 786689, metadata !49, metadata !"message", metadata !5, i32 83886300, metadata !8, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [message] [line 220]
!481 = metadata !{i32 220, i32 0, metadata !49, metadata !472}
!482 = metadata !{i32 222, i32 0, metadata !49, metadata !472}
!483 = metadata !{i32 741, i32 0, metadata !436, metadata !455}
!484 = metadata !{i32 753, i32 0, metadata !160, null}
!485 = metadata !{i32 754, i32 0, metadata !160, null}
!486 = metadata !{i32 755, i32 0, metadata !160, null}
!487 = metadata !{i32 756, i32 0, metadata !160, null}
!488 = metadata !{i32 770, i32 0, metadata !175, null}
!489 = metadata !{i32 774, i32 0, metadata !175, null}
!490 = metadata !{i32 777, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !175, i32 775, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!492 = metadata !{i32 779, i32 0, metadata !491, null}
!493 = metadata !{i32 781, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !491, i32 780, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!495 = metadata !{i32 782, i32 0, metadata !494, null}
!496 = metadata !{i32 783, i32 0, metadata !494, null}
!497 = metadata !{i32 787, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !491, i32 786, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!499 = metadata !{i32 789, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !498, i32 788, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!501 = metadata !{i32 790, i32 0, metadata !500, null}
!502 = metadata !{i32 793, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !498, i32 792, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c]
!504 = metadata !{i32 795, i32 0, metadata !498, null}
!505 = metadata !{i32 797, i32 0, metadata !491, null}
!506 = metadata !{i32 798, i32 0, metadata !175, null}
!507 = metadata !{i32 815, i32 0, metadata !181, null}
!508 = metadata !{i32 823, i32 0, metadata !181, null}
!509 = metadata !{i32 825, i32 0, metadata !181, null}
!510 = metadata !{i32 828, i32 0, metadata !186, null}
!511 = metadata !{i32 830, i32 0, metadata !186, null}
!512 = metadata !{i32 786689, metadata !181, metadata !"message", metadata !5, i32 16778031, metadata !8, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [message] [line 815]
!513 = metadata !{i32 831, i32 0, metadata !186, null}
!514 = metadata !{i32 815, i32 0, metadata !181, metadata !513}
!515 = metadata !{i32 823, i32 0, metadata !181, metadata !513}
!516 = metadata !{i32 832, i32 0, metadata !186, null}
!517 = metadata !{i32 833, i32 0, metadata !186, null}

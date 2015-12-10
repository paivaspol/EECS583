; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@Eslicings = internal global %struct.cHandledData* null, align 8
@num_slicings = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str2 = private unnamed_addr constant [39 x i8] c"cannot allocate memory for new slicing\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"New handle %s (%d) already in use\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"Could not obtain slicing structure for handle %d\00", align 1
@einsteinrest_ = external global %struct.anon
@.str5 = private unnamed_addr constant [32 x i8] c"Einstein::active_slicing_handle\00", align 1
@.str6 = private unnamed_addr constant [47 x i8] c"Cannot find grid scalar: active_slicing_handle\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"No slicing set. Probably fatal for evolution\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str11 = private unnamed_addr constant [31 x i8] c"Cannot register static slicing\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str13 = private unnamed_addr constant [33 x i8] c"Cannot register geodesic slicing\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"Cannot get handle for slicing %s\00", align 1
@.str15 = private unnamed_addr constant [32 x i8] c"Cannot access handle structure!\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str17 = private unnamed_addr constant [45 x i8] c"ERROR: You have specified a unique slicing (\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c") AND a condition-function is registered for that slicing.\0A \00", align 1
@.str19 = private unnamed_addr constant [69 x i8] c"Impossible, what should I do inbetween ? Rather set slicing -> mixed\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str23 = private unnamed_addr constant [31 x i8] c"No registered slicing for <%s>\00", align 1
@.str24 = private unnamed_addr constant [60 x i8] c"Einstein_GetSlicingHandle: cannot get handle for slicing %s\00", align 1
@.str25 = private unnamed_addr constant [62 x i8] c"Slicing parameter specifies non-activated/registered slicing!\00", align 1
@.str26 = private unnamed_addr constant [48 x i8] c"Slicing registry out of sync! No slicing found!\00", align 1
@.str27 = private unnamed_addr constant [59 x i8] c"ERROR: no active slicing found: hyes/hegal/hno: %d %d %d \0A\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str29 = private unnamed_addr constant [27 x i8] c"Cannot find slicing handle\00", align 1
@.str30 = private unnamed_addr constant [22 x i8] c"Next slicing: %s (%d)\00", align 1
@.str31 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/Slicing.c,v 1.25 2002/01/05 18:58:18 allen Exp $\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Registering Static\00"

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_Slicing_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str31, i64 0, i64 0), !dbg !202
}

; Function Attrs: nounwind optsize uwtable
define i32 @Einstein_RegisterSlicing(i8* %slice_name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %slice_name}, i64 0, metadata !16), !dbg !203
  %0 = load %struct.cHandledData** @Eslicings, align 8, !dbg !204, !tbaa !205
  %call = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %slice_name, i8** null) #7, !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !17), !dbg !204
  %cmp = icmp slt i32 %call, 0, !dbg !208
  br i1 %cmp, label %if.then, label %if.else5, !dbg !208

if.then:                                          ; preds = %entry
  %call1 = tail call noalias i8* @malloc(i64 24) #7, !dbg !209
  %tobool = icmp eq i8* %call1, null, !dbg !211
  br i1 %tobool, label %if.else, label %if.then2, !dbg !211

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @Util_NewHandle(%struct.cHandledData** @Eslicings, i8* %slice_name, i8* %call1) #7, !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !17), !dbg !212
  %name = bitcast i8* %call1 to i8**, !dbg !214
  store i8* %slice_name, i8** %name, align 8, !dbg !214, !tbaa !205
  %timetoslice = getelementptr inbounds i8* %call1, i64 16, !dbg !215
  %1 = bitcast i8* %timetoslice to i32 (%struct.cGH*)**, !dbg !215
  store i32 (%struct.cGH*)* null, i32 (%struct.cGH*)** %1, align 8, !dbg !215, !tbaa !205
  %param_active = getelementptr inbounds i8* %call1, i64 8, !dbg !216
  %2 = bitcast i8* %param_active to i32*, !dbg !216
  store i32 0, i32* %2, align 4, !dbg !216, !tbaa !217
  %3 = load i32* @num_slicings, align 4, !dbg !218, !tbaa !217
  %inc = add nsw i32 %3, 1, !dbg !218
  store i32 %inc, i32* @num_slicings, align 4, !dbg !218, !tbaa !217
  br label %if.end7, !dbg !219

if.else:                                          ; preds = %if.then
  %call4 = tail call i32 @CCTK_Warn(i32 0, i32 116, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !220
  tail call void @llvm.dbg.value(metadata !222, i64 0, metadata !17), !dbg !223
  br label %if.end7

if.else5:                                         ; preds = %entry
  %call6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 123, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i8* %slice_name, i32 %call) #7, !dbg !224
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !17), !dbg !227
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.else, %if.else5
  %handle.0 = phi i32 [ %call3, %if.then2 ], [ -2, %if.else ], [ -1, %if.else5 ]
  ret i32 %handle.0, !dbg !228
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @einstein_registerslicing_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !72), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !73), !dbg !229
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !230
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !75), !dbg !230
  %call1 = tail call i32 @CCTK_VarIndex(i8* %call) #7, !dbg !231
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !74), !dbg !231
  tail call void @free(i8* %call) #7, !dbg !232
  ret i32 %call1, !dbg !233
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Einstein_RegisterTimeToSlice(i32 %handle, i32 (%struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !80), !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %func}, i64 0, metadata !81), !dbg !234
  tail call void @llvm.dbg.value(metadata !235, i64 0, metadata !82), !dbg !236
  %0 = load %struct.cHandledData** @Eslicings, align 8, !dbg !237, !tbaa !205
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #7, !dbg !237
  %tobool = icmp eq i8* %call, null, !dbg !238
  br i1 %tobool, label %if.else, label %if.then, !dbg !238

if.then:                                          ; preds = %entry
  %timetoslice = getelementptr inbounds i8* %call, i64 16, !dbg !239
  %1 = bitcast i8* %timetoslice to i32 (%struct.cGH*)**, !dbg !239
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** %1, align 8, !dbg !239, !tbaa !205
  tail call void @llvm.dbg.value(metadata !235, i64 0, metadata !82), !dbg !241
  br label %if.end, !dbg !242

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 195, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), i32 %handle) #7, !dbg !243
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !245
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %return_code.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ]
  ret i32 %return_code.0, !dbg !246
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Einstein_ActivateSlicing(%struct.cGH* %GH) #1 {
entry:
  %item = alloca i8*, align 8
  %after = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !88), !dbg !247
  %0 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 10), align 8, !dbg !248, !tbaa !205
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !100), !dbg !248
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !dbg !248, !tbaa !205
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !102), !dbg !248
  call void @llvm.dbg.declare(metadata !{i8** %item}, metadata !130), !dbg !249
  call void @llvm.dbg.value(metadata !250, i64 0, metadata !130), !dbg !249
  store i8* null, i8** %item, align 8, !dbg !249, !tbaa !205
  call void @llvm.dbg.declare(metadata !{i8** %after}, metadata !131), !dbg !249
  call void @llvm.dbg.value(metadata !250, i64 0, metadata !131), !dbg !249
  store i8* null, i8** %after, align 8, !dbg !249, !tbaa !205
  %call = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !126), !dbg !251
  %cmp = icmp slt i32 %call, 0, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  %call1 = call i32 @CCTK_Warn(i32 0, i32 246, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !253
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %call) #7, !dbg !256
  %2 = bitcast i8* %call2 to i32*, !dbg !256
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !123), !dbg !256
  store i32 -1, i32* %2, align 4, !dbg !257, !tbaa !217
  %call3 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !258
  %tobool = icmp eq i32 %call3, 0, !dbg !258
  br i1 %tobool, label %if.then4, label %if.else49, !dbg !258

if.then4:                                         ; preds = %if.end
  %3 = load %struct.cHandledData** @Eslicings, align 8, !dbg !259, !tbaa !205
  %call5 = call i32 @Util_GetHandle(%struct.cHandledData* %3, i8* %1, i8** null) #7, !dbg !259
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !124), !dbg !259
  %cmp6 = icmp slt i32 %call5, 0, !dbg !261
  br i1 %cmp6, label %if.then7, label %if.end34, !dbg !261

if.then7:                                         ; preds = %if.then4
  %call8 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !262
  %tobool9 = icmp eq i32 %call8, 0, !dbg !262
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !262

if.then10:                                        ; preds = %if.then7
  %call11 = call i32 @CCTK_Warn(i32 2, i32 263, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !264
  br label %return, !dbg !266

if.else:                                          ; preds = %if.then7
  %call12 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !267
  %tobool13 = icmp eq i32 %call12, 0, !dbg !267
  br i1 %tobool13, label %if.else20, label %if.then14, !dbg !267

if.then14:                                        ; preds = %if.else
  %call15 = call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !268
  call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !127), !dbg !268
  %cmp16 = icmp slt i32 %call15, 0, !dbg !270
  br i1 %cmp16, label %if.then17, label %return, !dbg !270

if.then17:                                        ; preds = %if.then14
  %call18 = call i32 @CCTK_Warn(i32 1, i32 270, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !271
  br label %return, !dbg !273

if.else20:                                        ; preds = %if.else
  %call21 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !274
  %tobool22 = icmp eq i32 %call21, 0, !dbg !274
  br i1 %tobool22, label %if.else29, label %if.then23, !dbg !274

if.then23:                                        ; preds = %if.else20
  %call24 = call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #8, !dbg !275
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !127), !dbg !275
  %cmp25 = icmp slt i32 %call24, 0, !dbg !277
  br i1 %cmp25, label %if.then26, label %return, !dbg !277

if.then26:                                        ; preds = %if.then23
  %call27 = call i32 @CCTK_Warn(i32 1, i32 278, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !278
  br label %return, !dbg !280

if.else29:                                        ; preds = %if.else20
  %call30 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 283, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0), i8* %1) #7, !dbg !281
  br label %return

if.end34:                                         ; preds = %if.then4
  %4 = load %struct.cHandledData** @Eslicings, align 8, !dbg !283, !tbaa !205
  %call35 = call i8* @Util_GetHandledData(%struct.cHandledData* %4, i32 %call5) #7, !dbg !283
  %tobool36 = icmp eq i8* %call35, null, !dbg !284
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !284

if.then37:                                        ; preds = %if.end34
  %call38 = call i32 @CCTK_Warn(i32 0, i32 292, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !285
  br label %if.end39, !dbg !287

if.end39:                                         ; preds = %if.end34, %if.then37
  %param_active = getelementptr inbounds i8* %call35, i64 8, !dbg !288
  %5 = bitcast i8* %param_active to i32*, !dbg !288
  store i32 1, i32* %5, align 4, !dbg !288, !tbaa !217
  %timetoslice = getelementptr inbounds i8* %call35, i64 16, !dbg !289
  %6 = bitcast i8* %timetoslice to i32 (%struct.cGH*)**, !dbg !289
  %7 = load i32 (%struct.cGH*)** %6, align 8, !dbg !289, !tbaa !205
  %cmp40 = icmp eq i32 (%struct.cGH*)* %7, null, !dbg !289
  br i1 %cmp40, label %if.end92, label %if.then41, !dbg !289

if.then41:                                        ; preds = %if.end39
  %call42 = call noalias i8* @malloc(i64 256) #7, !dbg !290
  call void @llvm.dbg.value(metadata !{i8* %call42}, i64 0, metadata !128), !dbg !290
  %name = bitcast i8* %call35 to i8**, !dbg !292
  %8 = load i8** %name, align 8, !dbg !292, !tbaa !205
  %call43 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call42, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str17, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !292
  %call44 = call i32 @CCTK_Warn(i32 0, i32 304, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %call42) #7, !dbg !293
  %tobool45 = icmp eq i8* %call42, null, !dbg !294
  br i1 %tobool45, label %if.end92, label %if.then46, !dbg !294

if.then46:                                        ; preds = %if.then41
  call void @free(i8* %call42) #7, !dbg !294
  br label %if.end92, !dbg !294

if.else49:                                        ; preds = %if.end
  %call50 = call i64 @strlen(i8* %0) #9, !dbg !295
  %add = add i64 %call50, 2, !dbg !295
  %call51 = call noalias i8* @malloc(i64 %add) #7, !dbg !295
  call void @llvm.dbg.value(metadata !{i8* %call51}, i64 0, metadata !129), !dbg !295
  %call52 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call51, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* %0) #7, !dbg !297
  %call53 = call i32 @Util_SplitString(i8** %item, i8** %after, i8* %call51, i8* getelementptr inbounds ([2 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !298
  call void @llvm.dbg.value(metadata !235, i64 0, metadata !125), !dbg !299
  call void @llvm.dbg.value(metadata !{i8** %item}, i64 0, metadata !130), !dbg !300
  %9 = load i8** %item, align 8, !dbg !300, !tbaa !205
  %tobool54118 = icmp eq i8* %9, null, !dbg !300
  br i1 %tobool54118, label %if.end85, label %while.body, !dbg !300

while.body:                                       ; preds = %if.else49, %if.end80
  %10 = phi i8* [ %17, %if.end80 ], [ %9, %if.else49 ]
  %priority.0119 = phi i32 [ %inc, %if.end80 ], [ 1, %if.else49 ]
  %call55 = call i32 @CCTK_Equals(i8* %10, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !301
  %tobool56 = icmp eq i32 %call55, 0, !dbg !301
  br i1 %tobool56, label %if.else64, label %if.then57, !dbg !301

if.then57:                                        ; preds = %while.body
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str, i64 0, i64 0)), !dbg !303
  %call59 = call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !305
  call void @llvm.dbg.value(metadata !{i32 %call59}, i64 0, metadata !127), !dbg !305
  %cmp60 = icmp slt i32 %call59, 0, !dbg !306
  br i1 %cmp60, label %if.then61, label %if.end74, !dbg !306

if.then61:                                        ; preds = %if.then57
  %call62 = call i32 @CCTK_Warn(i32 1, i32 335, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !307
  br label %if.end74, !dbg !309

if.else64:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i8** %item}, i64 0, metadata !130), !dbg !310
  %11 = load i8** %item, align 8, !dbg !310, !tbaa !205
  %call65 = call i32 @CCTK_Equals(i8* %11, i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !310
  %tobool66 = icmp eq i32 %call65, 0, !dbg !310
  br i1 %tobool66, label %if.end74, label %if.then67, !dbg !310

if.then67:                                        ; preds = %if.else64
  %call68 = call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #8, !dbg !311
  call void @llvm.dbg.value(metadata !{i32 %call68}, i64 0, metadata !127), !dbg !311
  %cmp69 = icmp slt i32 %call68, 0, !dbg !313
  br i1 %cmp69, label %if.then70, label %if.end74, !dbg !313

if.then70:                                        ; preds = %if.then67
  %call71 = call i32 @CCTK_Warn(i32 1, i32 343, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !314
  br label %if.end74, !dbg !316

if.end74:                                         ; preds = %if.else64, %if.then70, %if.then67, %if.then57, %if.then61
  %12 = load %struct.cHandledData** @Eslicings, align 8, !dbg !317, !tbaa !205
  call void @llvm.dbg.value(metadata !{i8** %item}, i64 0, metadata !130), !dbg !317
  %13 = load i8** %item, align 8, !dbg !317, !tbaa !205
  %call75 = call i32 @Util_GetHandle(%struct.cHandledData* %12, i8* %13, i8** null) #7, !dbg !317
  %call76 = call i8* @Util_GetHandledData(%struct.cHandledData* %12, i32 %call75) #7, !dbg !317
  %tobool77 = icmp eq i8* %call76, null, !dbg !318
  br i1 %tobool77, label %if.then78, label %if.end80, !dbg !318

if.then78:                                        ; preds = %if.end74
  call void @llvm.dbg.value(metadata !{i8** %item}, i64 0, metadata !130), !dbg !319
  %14 = load i8** %item, align 8, !dbg !319, !tbaa !205
  %call79 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 351, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str23, i64 0, i64 0), i8* %14) #7, !dbg !319
  br label %if.end80, !dbg !321

if.end80:                                         ; preds = %if.end74, %if.then78
  %param_active81 = getelementptr inbounds i8* %call76, i64 8, !dbg !322
  %15 = bitcast i8* %param_active81 to i32*, !dbg !322
  store i32 %priority.0119, i32* %15, align 4, !dbg !322, !tbaa !217
  %inc = add nsw i32 %priority.0119, 1, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !125), !dbg !323
  call void @llvm.dbg.value(metadata !{i8** %after}, i64 0, metadata !131), !dbg !324
  %16 = load i8** %after, align 8, !dbg !324, !tbaa !205
  call void @llvm.dbg.value(metadata !{i8* %16}, i64 0, metadata !129), !dbg !324
  %call82 = call i32 @Util_SplitString(i8** %item, i8** %after, i8* %16, i8* getelementptr inbounds ([2 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !325
  call void @llvm.dbg.value(metadata !{i8** %item}, i64 0, metadata !130), !dbg !300
  %17 = load i8** %item, align 8, !dbg !300, !tbaa !205
  %tobool54 = icmp eq i8* %17, null, !dbg !300
  br i1 %tobool54, label %if.end85, label %while.body, !dbg !300

if.end85:                                         ; preds = %if.end80, %if.else49
  %split_string.0.lcssa = phi i8* [ %call51, %if.else49 ], [ %16, %if.end80 ]
  call void @llvm.dbg.value(metadata !{i8** %after}, i64 0, metadata !131), !dbg !326
  %18 = load i8** %after, align 8, !dbg !326, !tbaa !205
  %tobool86 = icmp eq i8* %18, null, !dbg !326
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !326

if.then87:                                        ; preds = %if.end85
  call void @free(i8* %18) #7, !dbg !326
  br label %if.end88, !dbg !326

if.end88:                                         ; preds = %if.end85, %if.then87
  %tobool89 = icmp eq i8* %split_string.0.lcssa, null, !dbg !327
  br i1 %tobool89, label %if.end92, label %if.then90, !dbg !327

if.then90:                                        ; preds = %if.end88
  call void @free(i8* %split_string.0.lcssa) #7, !dbg !327
  br label %if.end92, !dbg !327

if.end92:                                         ; preds = %if.end88, %if.then41, %if.end39, %if.then90, %if.then46
  call void @Einstein_SetNextSlicing(%struct.cGH* %GH) #8, !dbg !328
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  call void @llvm.dbg.value(metadata !329, i64 0, metadata !119), !dbg !330
  br label %return, !dbg !330

return:                                           ; preds = %if.then10, %if.else29, %if.then26, %if.then23, %if.then14, %if.then17, %if.end92
  ret void, !dbg !330
}

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @Einstein_SetNextSlicing(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !144), !dbg !331
  %0 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !dbg !332, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !157), !dbg !332
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 13), align 8, !dbg !332, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !158), !dbg !332
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !179), !dbg !333
  %2 = load i32* @num_slicings, align 4, !dbg !334, !tbaa !217
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !180), !dbg !334
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !181), !dbg !334
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !182), !dbg !334
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !335
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !176), !dbg !335
  %cmp = icmp slt i32 %call, 0, !dbg !336
  br i1 %cmp, label %if.then, label %if.end, !dbg !336

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @CCTK_Warn(i32 0, i32 481, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !337
  br label %if.end, !dbg !339

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %call) #7, !dbg !340
  %3 = bitcast i8* %call2 to i32*, !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !175), !dbg !340
  %call3 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !341
  %tobool = icmp eq i32 %call3, 0, !dbg !341
  br i1 %tobool, label %if.then4, label %for.cond.preheader, !dbg !341

for.cond.preheader:                               ; preds = %if.end
  %4 = load i32* @num_slicings, align 4, !dbg !342, !tbaa !217
  %cmp15117 = icmp sgt i32 %4, 0, !dbg !342
  br i1 %cmp15117, label %for.body, label %if.end47, !dbg !342

if.then4:                                         ; preds = %if.end
  %5 = load %struct.cHandledData** @Eslicings, align 8, !dbg !345, !tbaa !205
  %call5 = tail call i32 @Util_GetHandle(%struct.cHandledData* %5, i8* %0, i8** null) #7, !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !178), !dbg !345
  %cmp6 = icmp slt i32 %call5, 0, !dbg !347
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !347

if.then7:                                         ; preds = %if.then4
  %call8 = tail call i32 @CCTK_Warn(i32 0, i32 490, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !348
  br label %if.end9, !dbg !350

if.end9:                                          ; preds = %if.then7, %if.then4
  %6 = load %struct.cHandledData** @Eslicings, align 8, !dbg !351, !tbaa !205
  %call10 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %6, i32 %call5) #7, !dbg !351
  %tobool11 = icmp eq i8* %call10, null, !dbg !352
  br i1 %tobool11, label %if.then12, label %if.end47, !dbg !352

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @CCTK_Warn(i32 0, i32 496, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !353
  br label %if.end47, !dbg !355

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %h_egal.0122 = phi i32 [ %h_egal.2, %for.inc ], [ %2, %for.cond.preheader ]
  %h_no.0121 = phi i32 [ %h_no.1, %for.inc ], [ %2, %for.cond.preheader ]
  %h_yes.0120 = phi i32 [ %h_yes.2, %for.inc ], [ %2, %for.cond.preheader ]
  %h.0118 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %7 = load %struct.cHandledData** @Eslicings, align 8, !dbg !356, !tbaa !205
  %call16 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %7, i32 %h.0118) #7, !dbg !356
  %tobool17 = icmp eq i8* %call16, null, !dbg !358
  br i1 %tobool17, label %if.then18, label %if.else20, !dbg !358

if.then18:                                        ; preds = %for.body
  %call19 = tail call i32 @CCTK_Warn(i32 0, i32 517, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !359
  br label %for.inc, !dbg !361

if.else20:                                        ; preds = %for.body
  %param_active = getelementptr inbounds i8* %call16, i64 8, !dbg !362
  %8 = bitcast i8* %param_active to i32*, !dbg !362
  %9 = load i32* %8, align 4, !dbg !362, !tbaa !217
  %cmp21 = icmp sgt i32 %9, 0, !dbg !362
  br i1 %cmp21, label %if.then22, label %for.inc, !dbg !362

if.then22:                                        ; preds = %if.else20
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !179), !dbg !364
  %timetoslice = getelementptr inbounds i8* %call16, i64 16, !dbg !366
  %10 = bitcast i8* %timetoslice to i32 (%struct.cGH*)**, !dbg !366
  %11 = load i32 (%struct.cGH*)** %10, align 8, !dbg !366, !tbaa !205
  %cmp23 = icmp eq i32 (%struct.cGH*)* %11, null, !dbg !366
  br i1 %cmp23, label %land.lhs.true34, label %if.end27, !dbg !366

if.end27:                                         ; preds = %if.then22
  %call26 = tail call i32 %11(%struct.cGH* %GH) #7, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %call26}, i64 0, metadata !179), !dbg !367
  switch i32 %call26, label %for.inc [
    i32 1, label %if.end32.thread114
    i32 0, label %if.end27.land.lhs.true34_crit_edge
    i32 -1, label %land.lhs.true40
  ], !dbg !369

if.end27.land.lhs.true34_crit_edge:               ; preds = %if.end27
  %.pre = load i32* %8, align 4, !dbg !370, !tbaa !217
  br label %land.lhs.true34, !dbg !369

if.end32.thread114:                               ; preds = %if.end27
  %12 = load i32* %8, align 4, !dbg !369, !tbaa !217
  %cmp30 = icmp slt i32 %12, %h_yes.0120, !dbg !369
  tail call void @llvm.dbg.value(metadata !{i32 %h.0118}, i64 0, metadata !180), !dbg !371
  %h.0.h_yes.0 = select i1 %cmp30, i32 %h.0118, i32 %h_yes.0120, !dbg !369
  br label %for.inc, !dbg !370

land.lhs.true34:                                  ; preds = %if.end27.land.lhs.true34_crit_edge, %if.then22
  %13 = phi i32 [ %.pre, %if.end27.land.lhs.true34_crit_edge ], [ %9, %if.then22 ]
  %cmp36 = icmp slt i32 %13, %h_egal.0122, !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %h.0118}, i64 0, metadata !182), !dbg !373
  %h.0.h_egal.0 = select i1 %cmp36, i32 %h.0118, i32 %h_egal.0122, !dbg !370
  br label %for.inc, !dbg !370

land.lhs.true40:                                  ; preds = %if.end27
  %14 = load i32* %8, align 4, !dbg !375, !tbaa !217
  %cmp42 = icmp slt i32 %14, %h_no.0121, !dbg !375
  tail call void @llvm.dbg.value(metadata !{i32 %h.0118}, i64 0, metadata !181), !dbg !376
  %h.0.h_no.0 = select i1 %cmp42, i32 %h.0118, i32 %h_no.0121, !dbg !375
  br label %for.inc, !dbg !375

for.inc:                                          ; preds = %if.end27, %if.end32.thread114, %land.lhs.true34, %land.lhs.true40, %if.then18, %if.else20
  %h_yes.2 = phi i32 [ %h_yes.0120, %if.else20 ], [ %h_yes.0120, %if.then18 ], [ %h_yes.0120, %land.lhs.true40 ], [ %h_yes.0120, %land.lhs.true34 ], [ %h.0.h_yes.0, %if.end32.thread114 ], [ %h_yes.0120, %if.end27 ]
  %h_no.1 = phi i32 [ %h_no.0121, %if.else20 ], [ %h_no.0121, %if.then18 ], [ %h.0.h_no.0, %land.lhs.true40 ], [ %h_no.0121, %land.lhs.true34 ], [ %h_no.0121, %if.end32.thread114 ], [ %h_no.0121, %if.end27 ]
  %h_egal.2 = phi i32 [ %h_egal.0122, %if.else20 ], [ %h_egal.0122, %if.then18 ], [ %h_egal.0122, %land.lhs.true40 ], [ %h.0.h_egal.0, %land.lhs.true34 ], [ %h_egal.0122, %if.end32.thread114 ], [ %h_egal.0122, %if.end27 ]
  %inc = add nsw i32 %h.0118, 1, !dbg !342
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !178), !dbg !342
  %15 = load i32* @num_slicings, align 4, !dbg !342, !tbaa !217
  %cmp15 = icmp slt i32 %inc, %15, !dbg !342
  br i1 %cmp15, label %for.body, label %if.end47, !dbg !342

if.end47:                                         ; preds = %for.cond.preheader, %for.inc, %if.end9, %if.then12
  %h_yes.3 = phi i32 [ %call5, %if.then12 ], [ %call5, %if.end9 ], [ %2, %for.cond.preheader ], [ %h_yes.2, %for.inc ]
  %h_no.2 = phi i32 [ %2, %if.then12 ], [ %2, %if.end9 ], [ %2, %for.cond.preheader ], [ %h_no.1, %for.inc ]
  %h_egal.3 = phi i32 [ %2, %if.then12 ], [ %2, %if.end9 ], [ %2, %for.cond.preheader ], [ %h_egal.2, %for.inc ]
  %16 = load i32* @num_slicings, align 4, !dbg !378, !tbaa !217
  %cmp48 = icmp eq i32 %h_yes.3, %16, !dbg !378
  br i1 %cmp48, label %if.else50, label %if.then49, !dbg !378

if.then49:                                        ; preds = %if.end47
  store i32 %h_yes.3, i32* %3, align 4, !dbg !379, !tbaa !217
  br label %if.end56, !dbg !381

if.else50:                                        ; preds = %if.end47
  %cmp51 = icmp eq i32 %h_egal.3, %h_yes.3, !dbg !382
  br i1 %cmp51, label %if.else53, label %if.then52, !dbg !382

if.then52:                                        ; preds = %if.else50
  store i32 %h_egal.3, i32* %3, align 4, !dbg !384, !tbaa !217
  br label %if.end56, !dbg !386

if.else53:                                        ; preds = %if.else50
  %call54 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str27, i64 0, i64 0), i32 %h_yes.3, i32 %h_yes.3, i32 %h_no.2) #7, !dbg !387
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.else53, %if.then49
  %call57 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !389
  %tobool58 = icmp eq i32 %call57, 0, !dbg !389
  br i1 %tobool58, label %if.end71, label %if.then59, !dbg !389

if.then59:                                        ; preds = %if.end56
  %call60 = tail call noalias i8* @malloc(i64 256) #7, !dbg !390
  tail call void @llvm.dbg.value(metadata !{i8* %call60}, i64 0, metadata !177), !dbg !390
  %17 = load %struct.cHandledData** @Eslicings, align 8, !dbg !392, !tbaa !205
  %18 = load i32* %3, align 4, !dbg !392, !tbaa !217
  %call61 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %17, i32 %18) #7, !dbg !392
  %tobool62 = icmp eq i8* %call61, null, !dbg !393
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !393

if.then63:                                        ; preds = %if.then59
  %call64 = tail call i32 @CCTK_Warn(i32 0, i32 586, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !394
  br label %if.end65, !dbg !396

if.end65:                                         ; preds = %if.then59, %if.then63
  %name = bitcast i8* %call61 to i8**, !dbg !397
  %19 = load i8** %name, align 8, !dbg !397, !tbaa !205
  %20 = load i32* %3, align 4, !dbg !397, !tbaa !217
  %call66 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call60, i8* getelementptr inbounds ([22 x i8]* @.str30, i64 0, i64 0), i8* %19, i32 %20) #7, !dbg !397
  %call67 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %call60) #7, !dbg !398
  %tobool68 = icmp eq i8* %call60, null, !dbg !399
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !399

if.then69:                                        ; preds = %if.end65
  tail call void @free(i8* %call60) #7, !dbg !399
  br label %if.end71, !dbg !399

if.end71:                                         ; preds = %if.end65, %if.end56, %if.then69
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  tail call void @llvm.dbg.value(metadata !329, i64 0, metadata !173), !dbg !400
  ret void, !dbg !400
}

; Function Attrs: nounwind optsize uwtable
define i32 @Einstein_GetSlicingHandle(i8* %name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !134), !dbg !401
  %0 = load %struct.cHandledData** @Eslicings, align 8, !dbg !402, !tbaa !205
  %call = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %name, i8** null) #7, !dbg !402
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !135), !dbg !402
  %cmp = icmp slt i32 %call, 0, !dbg !403
  br i1 %cmp, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 427, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str24, i64 0, i64 0), i8* %name) #7, !dbg !404
  br label %if.end, !dbg !406

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call, !dbg !407
}

; Function Attrs: nounwind optsize uwtable
define i32 @einstein_getslicinghandle_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !138), !dbg !408
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !139), !dbg !408
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !409
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !141), !dbg !409
  %0 = load %struct.cHandledData** @Eslicings, align 8, !dbg !410, !tbaa !205
  %call1 = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %call, i8** null) #7, !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !140), !dbg !410
  tail call void @free(i8* %call) #7, !dbg !411
  ret i32 %call1, !dbg !412
}

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #6

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !183, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !67, metadata !76, metadata !84, metadata !132, metadata !136, metadata !142}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusEinstein_Einstein_Slicing_c", metadata !"CCTKi_version_CactusEinstein_Einstein_Slicing_c", metadata !"", i32 41, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusEinstein_Einstein_Slicing_c, null, null, metadata !2, i32 41} ; [ DW_TAG_subprogram ] [line 41] [def] [CCTKi_version_CactusEinstein_Einstein_Slicing_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Einstein_RegisterSlicing", metadata !"Einstein_RegisterSlicing", metadata !"", i32 71, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @Einstein_RegisterSlicing, null, null, metadata !15, i32 72} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 72] [Einstein_RegisterSlicing]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786689, metadata !11, metadata !"slice_name", metadata !5, i32 16777287, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slice_name] [line 71]
!17 = metadata !{i32 786688, metadata !11, metadata !"handle", metadata !5, i32 73, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 73]
!18 = metadata !{i32 786688, metadata !11, metadata !"new_slicing", metadata !5, i32 75, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_slicing] [line 75]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Einstein_slicing]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"Einstein_slicing", i32 31, i64 192, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [Einstein_slicing] [line 31, size 192, align 64, offset 0] [from ]
!21 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/../include/Slicing.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!22 = metadata !{metadata !23, metadata !25, metadata !26}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"name", i32 32, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [name] [line 32, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!25 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"param_active", i32 33, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [param_active] [line 33, size 32, align 32, offset 64] [from int]
!26 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"timetoslice", i32 34, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [timetoslice] [line 34, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !14, metadata !30}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!31 = metadata !{i32 786454, metadata !21, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!33 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !47, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !59, metadata !60}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!37 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!39 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!40 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!42 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!43 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!44 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!45 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!46 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!47 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!49 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !48} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!50 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!51 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!52 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!53 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!54 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !46} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!55 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !56} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !57} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!60 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !61} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!62 = metadata !{i32 786454, metadata !33, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!63 = metadata !{i32 786451, metadata !33, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!64 = metadata !{metadata !65, metadata !66}
!65 = metadata !{i32 786445, metadata !33, metadata !63, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!66 = metadata !{i32 786445, metadata !33, metadata !63, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"einstein_registerslicing_", metadata !"einstein_registerslicing_", metadata !"", i32 150, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @einstein_registerslicing_, null, null, metadata !71, i32 151} ; [ DW_TAG_subprogram ] [line 150] [def] [scope 151] [einstein_registerslicing_]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !14, metadata !24, metadata !70}
!70 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75}
!72 = metadata !{i32 786689, metadata !67, metadata !"cctk_str1", metadata !5, i32 16777366, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 150]
!73 = metadata !{i32 786689, metadata !67, metadata !"cctk_strlen1", metadata !5, i32 33554582, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 150]
!74 = metadata !{i32 786688, metadata !67, metadata !"handle", metadata !5, i32 152, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 152]
!75 = metadata !{i32 786688, metadata !67, metadata !"name", metadata !5, i32 153, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 153]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Einstein_RegisterTimeToSlice", metadata !"Einstein_RegisterTimeToSlice", metadata !"", i32 180, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32 (%struct.cGH*)*)* @Einstein_RegisterTimeToSlice, null, null, metadata !79, i32 181} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 181] [Einstein_RegisterTimeToSlice]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !14, metadata !14, metadata !27}
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83}
!80 = metadata !{i32 786689, metadata !76, metadata !"handle", metadata !5, i32 16777396, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 180]
!81 = metadata !{i32 786689, metadata !76, metadata !"func", metadata !5, i32 33554612, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 180]
!82 = metadata !{i32 786688, metadata !76, metadata !"return_code", metadata !5, i32 182, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 182]
!83 = metadata !{i32 786688, metadata !76, metadata !"slicing", metadata !5, i32 183, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 183]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Einstein_ActivateSlicing", metadata !"Einstein_ActivateSlicing", metadata !"", i32 229, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @Einstein_ActivateSlicing, null, null, metadata !87, i32 230} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 230] [Einstein_ActivateSlicing]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{null, metadata !30}
!87 = metadata !{metadata !88, metadata !89, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!88 = metadata !{i32 786689, metadata !84, metadata !"GH", metadata !5, i32 16777445, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 229]
!89 = metadata !{i32 786688, metadata !84, metadata !"gaussian_amplitude", metadata !5, i32 232, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_amplitude] [line 232]
!90 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!91 = metadata !{i32 786688, metadata !84, metadata !"gaussian_sigma2", metadata !5, i32 232, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_sigma2] [line 232]
!92 = metadata !{i32 786688, metadata !84, metadata !"psiminustwo_cut", metadata !5, i32 232, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiminustwo_cut] [line 232]
!93 = metadata !{i32 786688, metadata !84, metadata !"rot_shift_att_sigma", metadata !5, i32 232, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_sigma] [line 232]
!94 = metadata !{i32 786688, metadata !84, metadata !"rotation_omega", metadata !5, i32 232, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_omega] [line 232]
!95 = metadata !{i32 786688, metadata !84, metadata !"advection", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advection] [line 232]
!96 = metadata !{i32 786688, metadata !84, metadata !"evolution_system", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 232]
!97 = metadata !{i32 786688, metadata !84, metadata !"initial_data", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 232]
!98 = metadata !{i32 786688, metadata !84, metadata !"initial_lapse", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_lapse] [line 232]
!99 = metadata !{i32 786688, metadata !84, metadata !"initial_shift", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_shift] [line 232]
!100 = metadata !{i32 786688, metadata !84, metadata !"mixed_slicing", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mixed_slicing] [line 232]
!101 = metadata !{i32 786688, metadata !84, metadata !"shift", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 232]
!102 = metadata !{i32 786688, metadata !84, metadata !"slicing", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 232]
!103 = metadata !{i32 786688, metadata !84, metadata !"slicing_verbose", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing_verbose] [line 232]
!104 = metadata !{i32 786688, metadata !84, metadata !"einstein_register_slicing", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [einstein_register_slicing] [line 232]
!105 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!106 = metadata !{i32 786688, metadata !84, metadata !"rot_shift_att", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att] [line 232]
!107 = metadata !{i32 786688, metadata !84, metadata !"rot_shift_att_pow", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_pow] [line 232]
!108 = metadata !{i32 786688, metadata !84, metadata !"rotation_psipower", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_psipower] [line 232]
!109 = metadata !{i32 786688, metadata !84, metadata !"use_conformal", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 232]
!110 = metadata !{i32 786688, metadata !84, metadata !"use_conformal_derivs", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 232]
!111 = metadata !{i32 786688, metadata !84, metadata !"use_mask", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_mask] [line 232]
!112 = metadata !{i32 786688, metadata !84, metadata !"dtfac", metadata !5, i32 232, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 232]
!113 = metadata !{i32 786688, metadata !84, metadata !"gauge_speed", metadata !5, i32 232, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gauge_speed] [line 232]
!114 = metadata !{i32 786688, metadata !84, metadata !"wavecalc", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecalc] [line 232]
!115 = metadata !{i32 786688, metadata !84, metadata !"conformal_storage_all", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_storage_all] [line 232]
!116 = metadata !{i32 786688, metadata !84, metadata !"rsquared_in_sphm", metadata !5, i32 232, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsquared_in_sphm] [line 232]
!117 = metadata !{i32 786688, metadata !84, metadata !"domain", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 232]
!118 = metadata !{i32 786688, metadata !84, metadata !"timestep_method", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 232]
!119 = metadata !{i32 786688, metadata !84, metadata !"cctk_pdummy_pointer", metadata !5, i32 232, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 232]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{i32 786688, metadata !84, metadata !"slic", metadata !5, i32 234, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slic] [line 234]
!123 = metadata !{i32 786688, metadata !84, metadata !"active_slicing_handle", metadata !5, i32 235, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [active_slicing_handle] [line 235]
!124 = metadata !{i32 786688, metadata !84, metadata !"handle", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 237]
!125 = metadata !{i32 786688, metadata !84, metadata !"priority", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [priority] [line 237]
!126 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 237]
!127 = metadata !{i32 786688, metadata !84, metadata !"handle2", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle2] [line 238]
!128 = metadata !{i32 786688, metadata !84, metadata !"err", metadata !5, i32 239, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 239]
!129 = metadata !{i32 786688, metadata !84, metadata !"split_string", metadata !5, i32 239, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [split_string] [line 239]
!130 = metadata !{i32 786688, metadata !84, metadata !"item", metadata !5, i32 240, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [item] [line 240]
!131 = metadata !{i32 786688, metadata !84, metadata !"after", metadata !5, i32 240, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [after] [line 240]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Einstein_GetSlicingHandle", metadata !"Einstein_GetSlicingHandle", metadata !"", i32 420, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @Einstein_GetSlicingHandle, null, null, metadata !133, i32 421} ; [ DW_TAG_subprogram ] [line 420] [def] [scope 421] [Einstein_GetSlicingHandle]
!133 = metadata !{metadata !134, metadata !135}
!134 = metadata !{i32 786689, metadata !132, metadata !"name", metadata !5, i32 16777636, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 420]
!135 = metadata !{i32 786688, metadata !132, metadata !"handle", metadata !5, i32 422, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 422]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"einstein_getslicinghandle_", metadata !"einstein_getslicinghandle_", metadata !"", i32 434, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @einstein_getslicinghandle_, null, null, metadata !137, i32 435} ; [ DW_TAG_subprogram ] [line 434] [def] [scope 435] [einstein_getslicinghandle_]
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !141}
!138 = metadata !{i32 786689, metadata !136, metadata !"cctk_str1", metadata !5, i32 16777650, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 434]
!139 = metadata !{i32 786689, metadata !136, metadata !"cctk_strlen1", metadata !5, i32 33554866, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 434]
!140 = metadata !{i32 786688, metadata !136, metadata !"handle", metadata !5, i32 436, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 436]
!141 = metadata !{i32 786688, metadata !136, metadata !"name", metadata !5, i32 437, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 437]
!142 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Einstein_SetNextSlicing", metadata !"Einstein_SetNextSlicing", metadata !"", i32 462, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @Einstein_SetNextSlicing, null, null, metadata !143, i32 463} ; [ DW_TAG_subprogram ] [line 462] [def] [scope 463] [Einstein_SetNextSlicing]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182}
!144 = metadata !{i32 786689, metadata !142, metadata !"GH", metadata !5, i32 16777678, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 462]
!145 = metadata !{i32 786688, metadata !142, metadata !"gaussian_amplitude", metadata !5, i32 464, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_amplitude] [line 464]
!146 = metadata !{i32 786688, metadata !142, metadata !"gaussian_sigma2", metadata !5, i32 464, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_sigma2] [line 464]
!147 = metadata !{i32 786688, metadata !142, metadata !"psiminustwo_cut", metadata !5, i32 464, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiminustwo_cut] [line 464]
!148 = metadata !{i32 786688, metadata !142, metadata !"rot_shift_att_sigma", metadata !5, i32 464, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_sigma] [line 464]
!149 = metadata !{i32 786688, metadata !142, metadata !"rotation_omega", metadata !5, i32 464, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_omega] [line 464]
!150 = metadata !{i32 786688, metadata !142, metadata !"advection", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advection] [line 464]
!151 = metadata !{i32 786688, metadata !142, metadata !"evolution_system", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 464]
!152 = metadata !{i32 786688, metadata !142, metadata !"initial_data", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 464]
!153 = metadata !{i32 786688, metadata !142, metadata !"initial_lapse", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_lapse] [line 464]
!154 = metadata !{i32 786688, metadata !142, metadata !"initial_shift", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_shift] [line 464]
!155 = metadata !{i32 786688, metadata !142, metadata !"mixed_slicing", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mixed_slicing] [line 464]
!156 = metadata !{i32 786688, metadata !142, metadata !"shift", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 464]
!157 = metadata !{i32 786688, metadata !142, metadata !"slicing", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 464]
!158 = metadata !{i32 786688, metadata !142, metadata !"slicing_verbose", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing_verbose] [line 464]
!159 = metadata !{i32 786688, metadata !142, metadata !"einstein_register_slicing", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [einstein_register_slicing] [line 464]
!160 = metadata !{i32 786688, metadata !142, metadata !"rot_shift_att", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att] [line 464]
!161 = metadata !{i32 786688, metadata !142, metadata !"rot_shift_att_pow", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_pow] [line 464]
!162 = metadata !{i32 786688, metadata !142, metadata !"rotation_psipower", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_psipower] [line 464]
!163 = metadata !{i32 786688, metadata !142, metadata !"use_conformal", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 464]
!164 = metadata !{i32 786688, metadata !142, metadata !"use_conformal_derivs", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 464]
!165 = metadata !{i32 786688, metadata !142, metadata !"use_mask", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_mask] [line 464]
!166 = metadata !{i32 786688, metadata !142, metadata !"dtfac", metadata !5, i32 464, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 464]
!167 = metadata !{i32 786688, metadata !142, metadata !"gauge_speed", metadata !5, i32 464, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gauge_speed] [line 464]
!168 = metadata !{i32 786688, metadata !142, metadata !"wavecalc", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecalc] [line 464]
!169 = metadata !{i32 786688, metadata !142, metadata !"conformal_storage_all", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_storage_all] [line 464]
!170 = metadata !{i32 786688, metadata !142, metadata !"rsquared_in_sphm", metadata !5, i32 464, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsquared_in_sphm] [line 464]
!171 = metadata !{i32 786688, metadata !142, metadata !"domain", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 464]
!172 = metadata !{i32 786688, metadata !142, metadata !"timestep_method", metadata !5, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 464]
!173 = metadata !{i32 786688, metadata !142, metadata !"cctk_pdummy_pointer", metadata !5, i32 464, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 464]
!174 = metadata !{i32 786688, metadata !142, metadata !"slic", metadata !5, i32 466, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slic] [line 466]
!175 = metadata !{i32 786688, metadata !142, metadata !"active_slicing_handle", metadata !5, i32 467, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [active_slicing_handle] [line 467]
!176 = metadata !{i32 786688, metadata !142, metadata !"i", metadata !5, i32 468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 468]
!177 = metadata !{i32 786688, metadata !142, metadata !"info", metadata !5, i32 469, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 469]
!178 = metadata !{i32 786688, metadata !142, metadata !"h", metadata !5, i32 471, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 471]
!179 = metadata !{i32 786688, metadata !142, metadata !"doicare", metadata !5, i32 471, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doicare] [line 471]
!180 = metadata !{i32 786688, metadata !142, metadata !"h_yes", metadata !5, i32 472, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h_yes] [line 472]
!181 = metadata !{i32 786688, metadata !142, metadata !"h_no", metadata !5, i32 473, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h_no] [line 473]
!182 = metadata !{i32 786688, metadata !142, metadata !"h_egal", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h_egal] [line 474]
!183 = metadata !{metadata !184, metadata !185, metadata !201}
!184 = metadata !{i32 786484, i32 0, null, metadata !"num_slicings", metadata !"num_slicings", metadata !"", metadata !5, i32 49, metadata !14, i32 1, i32 1, i32* @num_slicings, null} ; [ DW_TAG_variable ] [num_slicings] [line 49] [local] [def]
!185 = metadata !{i32 786484, i32 0, null, metadata !"Eslicings", metadata !"Eslicings", metadata !"", metadata !5, i32 50, metadata !186, i32 1, i32 1, %struct.cHandledData** @Eslicings, null} ; [ DW_TAG_variable ] [Eslicings] [line 50] [local] [def]
!186 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!187 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !189, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !190, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!189 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!190 = metadata !{metadata !191, metadata !199, metadata !200}
!191 = metadata !{i32 786445, metadata !189, metadata !188, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!193 = metadata !{i32 786454, metadata !189, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!194 = metadata !{i32 786451, metadata !189, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !195, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !197, metadata !198}
!196 = metadata !{i32 786445, metadata !189, metadata !194, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!197 = metadata !{i32 786445, metadata !189, metadata !194, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!198 = metadata !{i32 786445, metadata !189, metadata !194, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !58} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!199 = metadata !{i32 786445, metadata !189, metadata !188, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!200 = metadata !{i32 786445, metadata !189, metadata !188, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !70} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!201 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 39, metadata !8, i32 1, i32 1, null, null}
!202 = metadata !{i32 41, i32 0, metadata !4, null}
!203 = metadata !{i32 71, i32 0, metadata !11, null}
!204 = metadata !{i32 78, i32 0, metadata !11, null}
!205 = metadata !{metadata !"any pointer", metadata !206}
!206 = metadata !{metadata !"omnipotent char", metadata !207}
!207 = metadata !{metadata !"Simple C/C++ TBAA"}
!208 = metadata !{i32 80, i32 0, metadata !11, null}
!209 = metadata !{i32 84, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !11, i32 81, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!211 = metadata !{i32 86, i32 0, metadata !210, null}
!212 = metadata !{i32 90, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !210, i32 87, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!214 = metadata !{i32 99, i32 0, metadata !213, null}
!215 = metadata !{i32 104, i32 0, metadata !213, null}
!216 = metadata !{i32 107, i32 0, metadata !213, null}
!217 = metadata !{metadata !"int", metadata !206}
!218 = metadata !{i32 110, i32 0, metadata !213, null}
!219 = metadata !{i32 112, i32 0, metadata !213, null}
!220 = metadata !{i32 116, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !210, i32 114, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!222 = metadata !{i32 -2}
!223 = metadata !{i32 117, i32 0, metadata !221, null}
!224 = metadata !{i32 123, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !11, i32 121, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!226 = metadata !{i32 -1}
!227 = metadata !{i32 126, i32 0, metadata !225, null}
!228 = metadata !{i32 129, i32 0, metadata !11, null}
!229 = metadata !{i32 150, i32 0, metadata !67, null}
!230 = metadata !{i32 153, i32 0, metadata !67, null}
!231 = metadata !{i32 154, i32 0, metadata !67, null}
!232 = metadata !{i32 155, i32 0, metadata !67, null}
!233 = metadata !{i32 156, i32 0, metadata !67, null}
!234 = metadata !{i32 180, i32 0, metadata !76, null}
!235 = metadata !{i32 1}
!236 = metadata !{i32 182, i32 0, metadata !76, null}
!237 = metadata !{i32 185, i32 0, metadata !76, null}
!238 = metadata !{i32 187, i32 0, metadata !76, null}
!239 = metadata !{i32 189, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !76, i32 188, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!241 = metadata !{i32 190, i32 0, metadata !240, null}
!242 = metadata !{i32 191, i32 0, metadata !240, null}
!243 = metadata !{i32 195, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !76, i32 193, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!245 = metadata !{i32 198, i32 0, metadata !244, null}
!246 = metadata !{i32 205, i32 0, metadata !76, null}
!247 = metadata !{i32 229, i32 0, metadata !84, null}
!248 = metadata !{i32 232, i32 0, metadata !84, null}
!249 = metadata !{i32 240, i32 0, metadata !84, null}
!250 = metadata !{i8* null}
!251 = metadata !{i32 243, i32 0, metadata !84, null}
!252 = metadata !{i32 244, i32 0, metadata !84, null}
!253 = metadata !{i32 246, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !84, i32 245, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!255 = metadata !{i32 247, i32 0, metadata !254, null}
!256 = metadata !{i32 248, i32 0, metadata !84, null}
!257 = metadata !{i32 249, i32 0, metadata !84, null}
!258 = metadata !{i32 253, i32 0, metadata !84, null}
!259 = metadata !{i32 255, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !84, i32 254, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!261 = metadata !{i32 257, i32 0, metadata !260, null}
!262 = metadata !{i32 261, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !260, i32 258, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!264 = metadata !{i32 263, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !263, i32 262, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!266 = metadata !{i32 264, i32 0, metadata !265, null}
!267 = metadata !{i32 265, i32 0, metadata !263, null}
!268 = metadata !{i32 267, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !263, i32 266, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!270 = metadata !{i32 268, i32 0, metadata !269, null}
!271 = metadata !{i32 270, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !269, i32 269, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!273 = metadata !{i32 271, i32 0, metadata !272, null}
!274 = metadata !{i32 273, i32 0, metadata !263, null}
!275 = metadata !{i32 275, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !263, i32 274, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!277 = metadata !{i32 276, i32 0, metadata !276, null}
!278 = metadata !{i32 278, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !276, i32 277, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!280 = metadata !{i32 279, i32 0, metadata !279, null}
!281 = metadata !{i32 283, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !263, i32 282, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!283 = metadata !{i32 289, i32 0, metadata !260, null}
!284 = metadata !{i32 290, i32 0, metadata !260, null}
!285 = metadata !{i32 292, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !260, i32 291, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!287 = metadata !{i32 293, i32 0, metadata !286, null}
!288 = metadata !{i32 294, i32 0, metadata !260, null}
!289 = metadata !{i32 297, i32 0, metadata !260, null}
!290 = metadata !{i32 299, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !260, i32 298, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!292 = metadata !{i32 300, i32 0, metadata !291, null}
!293 = metadata !{i32 304, i32 0, metadata !291, null}
!294 = metadata !{i32 305, i32 0, metadata !291, null}
!295 = metadata !{i32 319, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !84, i32 310, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!297 = metadata !{i32 320, i32 0, metadata !296, null}
!298 = metadata !{i32 323, i32 0, metadata !296, null}
!299 = metadata !{i32 326, i32 0, metadata !296, null}
!300 = metadata !{i32 327, i32 0, metadata !296, null}
!301 = metadata !{i32 329, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !296, i32 328, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!303 = metadata !{i32 331, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !302, i32 330, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!305 = metadata !{i32 332, i32 0, metadata !304, null}
!306 = metadata !{i32 333, i32 0, metadata !304, null}
!307 = metadata !{i32 335, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !304, i32 334, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!309 = metadata !{i32 336, i32 0, metadata !308, null}
!310 = metadata !{i32 338, i32 0, metadata !302, null}
!311 = metadata !{i32 340, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !302, i32 339, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!313 = metadata !{i32 341, i32 0, metadata !312, null}
!314 = metadata !{i32 343, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !312, i32 342, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!316 = metadata !{i32 344, i32 0, metadata !315, null}
!317 = metadata !{i32 347, i32 0, metadata !302, null}
!318 = metadata !{i32 349, i32 0, metadata !302, null}
!319 = metadata !{i32 351, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !302, i32 350, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!321 = metadata !{i32 353, i32 0, metadata !320, null}
!322 = metadata !{i32 355, i32 0, metadata !302, null}
!323 = metadata !{i32 359, i32 0, metadata !302, null}
!324 = metadata !{i32 360, i32 0, metadata !302, null}
!325 = metadata !{i32 361, i32 0, metadata !302, null}
!326 = metadata !{i32 365, i32 0, metadata !296, null}
!327 = metadata !{i32 366, i32 0, metadata !296, null}
!328 = metadata !{i32 375, i32 0, metadata !84, null}
!329 = metadata !{i8* undef}
!330 = metadata !{i32 398, i32 0, metadata !84, null}
!331 = metadata !{i32 462, i32 0, metadata !142, null}
!332 = metadata !{i32 464, i32 0, metadata !142, null}
!333 = metadata !{i32 471, i32 0, metadata !142, null}
!334 = metadata !{i32 474, i32 0, metadata !142, null}
!335 = metadata !{i32 478, i32 0, metadata !142, null}
!336 = metadata !{i32 479, i32 0, metadata !142, null}
!337 = metadata !{i32 481, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !142, i32 480, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!339 = metadata !{i32 482, i32 0, metadata !338, null}
!340 = metadata !{i32 483, i32 0, metadata !142, null}
!341 = metadata !{i32 485, i32 0, metadata !142, null}
!342 = metadata !{i32 509, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !344, i32 509, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!344 = metadata !{i32 786443, metadata !1, metadata !142, i32 508, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!345 = metadata !{i32 487, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !142, i32 486, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!347 = metadata !{i32 488, i32 0, metadata !346, null}
!348 = metadata !{i32 490, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !346, i32 489, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!350 = metadata !{i32 491, i32 0, metadata !349, null}
!351 = metadata !{i32 493, i32 0, metadata !346, null}
!352 = metadata !{i32 494, i32 0, metadata !346, null}
!353 = metadata !{i32 496, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !346, i32 495, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!355 = metadata !{i32 497, i32 0, metadata !354, null}
!356 = metadata !{i32 514, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !343, i32 510, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!358 = metadata !{i32 515, i32 0, metadata !357, null}
!359 = metadata !{i32 517, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !357, i32 516, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!361 = metadata !{i32 518, i32 0, metadata !360, null}
!362 = metadata !{i32 530, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !357, i32 520, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!364 = metadata !{i32 532, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !363, i32 531, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!366 = metadata !{i32 533, i32 0, metadata !365, null}
!367 = metadata !{i32 535, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !365, i32 534, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!369 = metadata !{i32 537, i32 0, metadata !365, null}
!370 = metadata !{i32 541, i32 0, metadata !365, null}
!371 = metadata !{i32 539, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !365, i32 538, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!373 = metadata !{i32 543, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !365, i32 542, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!375 = metadata !{i32 545, i32 0, metadata !365, null}
!376 = metadata !{i32 547, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !365, i32 546, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!378 = metadata !{i32 562, i32 0, metadata !142, null}
!379 = metadata !{i32 564, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !142, i32 563, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!381 = metadata !{i32 565, i32 0, metadata !380, null}
!382 = metadata !{i32 568, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !142, i32 567, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!384 = metadata !{i32 570, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !383, i32 569, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!386 = metadata !{i32 571, i32 0, metadata !385, null}
!387 = metadata !{i32 574, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !383, i32 573, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!389 = metadata !{i32 579, i32 0, metadata !142, null}
!390 = metadata !{i32 581, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !142, i32 580, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!392 = metadata !{i32 583, i32 0, metadata !391, null}
!393 = metadata !{i32 584, i32 0, metadata !391, null}
!394 = metadata !{i32 586, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !391, i32 585, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!396 = metadata !{i32 587, i32 0, metadata !395, null}
!397 = metadata !{i32 589, i32 0, metadata !391, null}
!398 = metadata !{i32 591, i32 0, metadata !391, null}
!399 = metadata !{i32 592, i32 0, metadata !391, null}
!400 = metadata !{i32 597, i32 0, metadata !142, null}
!401 = metadata !{i32 420, i32 0, metadata !132, null}
!402 = metadata !{i32 424, i32 0, metadata !132, null}
!403 = metadata !{i32 425, i32 0, metadata !132, null}
!404 = metadata !{i32 427, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !132, i32 426, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c]
!406 = metadata !{i32 430, i32 0, metadata !405, null}
!407 = metadata !{i32 431, i32 0, metadata !132, null}
!408 = metadata !{i32 434, i32 0, metadata !136, null}
!409 = metadata !{i32 437, i32 0, metadata !136, null}
!410 = metadata !{i32 438, i32 0, metadata !136, null}
!411 = metadata !{i32 439, i32 0, metadata !136, null}
!412 = metadata !{i32 440, i32 0, metadata !136, null}

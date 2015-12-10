; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__stdinp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d parsing errors in parameter file\00", align 1
@.str5 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d level 1 errors in parameter file\00", align 1
@.str6 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d level 0 errors in parameter file\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str7 = private unnamed_addr constant [36 x i8] c"Unable to open parameter file '%s'\0A\00", align 1
@.str8 = private unnamed_addr constant [100 x i8] c"$Header: /cactus/Cactus/src/main/ProcessParameterDatabase.c,v 1.20 2002/01/02 12:24:41 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ProcessParameterDatabase_c() #0 {
  ret i8* getelementptr inbounds ([100 x i8]* @.str8, i64 0, i64 0), !dbg !130
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ProcessParameterDatabase(%struct.tFleshConfig* %ConfigData) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !63, metadata !131), !dbg !132
  tail call void @CCTKi_SetParameterSetMask(i32 0) #6, !dbg !133
  %1 = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 0, !dbg !134
  %2 = load i8** %1, align 8, !dbg !134, !tbaa !136
  %3 = tail call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !142
  %4 = icmp eq i32 %3, 0, !dbg !142
  br i1 %4, label %5, label %7, !dbg !143

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stdinp, align 8, !dbg !144, !tbaa !146
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %6, i64 0, metadata !65, metadata !131), !dbg !147
  br label %9, !dbg !148

; <label>:7                                       ; preds = %0
  %8 = tail call %struct.__sFILE* @"\01_fopen"(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !149
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %8, i64 0, metadata !65, metadata !131), !dbg !147
  br label %9

; <label>:9                                       ; preds = %7, %5
  %parameter_file.0 = phi %struct.__sFILE* [ %8, %7 ], [ %6, %5 ]
  %10 = icmp ne %struct.__sFILE* %parameter_file.0, null, !dbg !151
  br i1 %10, label %11, label %34, !dbg !153

; <label>:11                                      ; preds = %9
  %12 = tail call i32 @ParseFile(%struct.__sFILE* %parameter_file.0, i32 (i8*, i8*, i32)* @CCTKi_SetParameter, %struct.tFleshConfig* %ConfigData) #6, !dbg !154
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !64, metadata !131), !dbg !156
  %13 = load i8** %1, align 8, !dbg !157, !tbaa !136
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !159
  %15 = icmp eq i32 %14, 0, !dbg !159
  br i1 %15, label %18, label %16, !dbg !160

; <label>:16                                      ; preds = %11
  %17 = tail call i32 @fclose(%struct.__sFILE* %parameter_file.0) #6, !dbg !161
  br label %18, !dbg !163

; <label>:18                                      ; preds = %11, %16
  %19 = icmp eq i32 %12, 0, !dbg !164
  br i1 %19, label %22, label %20, !dbg !166

; <label>:20                                      ; preds = %18
  %21 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 91, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 %12) #6, !dbg !167
  br label %22, !dbg !169

; <label>:22                                      ; preds = %18, %20
  %23 = tail call i32 @CCTKi_NumParameterFileErrors(i32 1) #6, !dbg !170
  %24 = icmp eq i32 %23, 0, !dbg !170
  br i1 %24, label %28, label %25, !dbg !172

; <label>:25                                      ; preds = %22
  %26 = tail call i32 @CCTKi_NumParameterFileErrors(i32 1) #6, !dbg !173
  %27 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 98, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str5, i64 0, i64 0), i32 %26) #6, !dbg !175
  br label %28, !dbg !176

; <label>:28                                      ; preds = %22, %25
  %29 = tail call i32 @CCTKi_NumParameterFileErrors(i32 0) #6, !dbg !177
  %30 = icmp eq i32 %29, 0, !dbg !177
  br i1 %30, label %38, label %31, !dbg !179

; <label>:31                                      ; preds = %28
  %32 = tail call i32 @CCTKi_NumParameterFileErrors(i32 0) #6, !dbg !180
  %33 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 105, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str6, i64 0, i64 0), i32 %32) #6, !dbg !182
  br label %38, !dbg !183

; <label>:34                                      ; preds = %9
  %35 = load %struct.__sFILE** @__stderrp, align 8, !dbg !184, !tbaa !146
  %36 = load i8** %1, align 8, !dbg !186, !tbaa !136
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i8* %36) #6, !dbg !187
  br label %38

; <label>:38                                      ; preds = %28, %31, %34
  %not. = xor i1 %10, true, !dbg !188
  %39 = sext i1 %not. to i32, !dbg !188
  ret i32 %39, !dbg !189
}

; Function Attrs: optsize
declare void @CCTKi_SetParameterSetMask(i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @ParseFile(%struct.__sFILE*, i32 (i8*, i8*, i32)*, %struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_SetParameter(i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTKi_NumParameterFileErrors(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!126, !127, !128}
!llvm.ident = !{!129}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !124, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_ProcessParameterDatabase_c", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_ProcessParameterDatabase_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_ProcessParameterDatabase", scope: !1, file: !1, line: 63, type: !11, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*)* @CCTKi_ProcessParameterDatabase, variables: !62)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !16, line: 28, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 19, size: 192, align: 64, elements: !18)
!18 = !{!19, !21, !60}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !17, file: !16, line: 21, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !17, file: !16, line: 24, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !25, line: 75, baseType: !26)
!25 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 24, size: 1216, align: 64, elements: !27)
!27 = !{!28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !46, !47, !48, !52, !53}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !26, file: !25, line: 26, baseType: !13, size: 32, align: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !26, file: !25, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !26, file: !25, line: 30, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !26, file: !25, line: 31, baseType: !31, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !26, file: !25, line: 32, baseType: !31, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !26, file: !25, line: 33, baseType: !31, size: 64, align: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !26, file: !25, line: 36, baseType: !31, size: 64, align: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !26, file: !25, line: 39, baseType: !31, size: 64, align: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !26, file: !25, line: 40, baseType: !31, size: 64, align: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !26, file: !25, line: 43, baseType: !39, size: 64, align: 64, offset: 512)
!39 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !26, file: !25, line: 44, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !26, file: !25, line: 47, baseType: !41, size: 64, align: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !26, file: !25, line: 51, baseType: !31, size: 64, align: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !26, file: !25, line: 54, baseType: !31, size: 64, align: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !26, file: !25, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !26, file: !25, line: 60, baseType: !31, size: 64, align: 64, offset: 896)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !26, file: !25, line: 63, baseType: !39, size: 64, align: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !25, line: 67, baseType: !49, size: 64, align: 64, offset: 1024)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !26, file: !25, line: 70, baseType: !50, size: 64, align: 64, offset: 1088)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !26, file: !25, line: 73, baseType: !54, size: 64, align: 64, offset: 1152)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !25, line: 22, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 18, size: 16, align: 8, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !56, file: !25, line: 20, baseType: !9, size: 8, align: 8)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !56, file: !25, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !17, file: !16, line: 25, baseType: !61, size: 32, align: 32, offset: 128)
!61 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ConfigData", arg: 1, scope: !10, file: !1, line: 63, type: !14)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parse_errors", scope: !10, file: !1, line: 65, type: !13)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parameter_file", scope: !10, file: !1, line: 66, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !68, line: 153, baseType: !69)
!68 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !68, line: 122, size: 1216, align: 64, elements: !70)
!70 = !{!71, !74, !75, !76, !78, !79, !84, !85, !86, !90, !94, !104, !108, !109, !112, !113, !117, !121, !122, !123}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !69, file: !68, line: 123, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !69, file: !68, line: 124, baseType: !13, size: 32, align: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !69, file: !68, line: 125, baseType: !13, size: 32, align: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !68, line: 126, baseType: !77, size: 16, align: 16, offset: 128)
!77 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !69, file: !68, line: 127, baseType: !77, size: 16, align: 16, offset: 144)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !69, file: !68, line: 128, baseType: !80, size: 128, align: 64, offset: 192)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !68, line: 88, size: 128, align: 64, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !80, file: !68, line: 89, baseType: !72, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !80, file: !68, line: 90, baseType: !13, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !69, file: !68, line: 129, baseType: !13, size: 32, align: 32, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !69, file: !68, line: 132, baseType: !51, size: 64, align: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !69, file: !68, line: 133, baseType: !87, size: 64, align: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!13, !51}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !69, file: !68, line: 134, baseType: !91, size: 64, align: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!13, !51, !20, !13}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !69, file: !68, line: 135, baseType: !95, size: 64, align: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !51, !98, !13}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !68, line: 77, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !100, line: 71, baseType: !101)
!100 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!103 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !69, file: !68, line: 136, baseType: !105, size: 64, align: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!13, !51, !7, !13}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !69, file: !68, line: 139, baseType: !80, size: 128, align: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !69, file: !68, line: 140, baseType: !110, size: 64, align: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !68, line: 94, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !69, file: !68, line: 141, baseType: !13, size: 32, align: 32, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !69, file: !68, line: 144, baseType: !114, size: 24, align: 8, offset: 928)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 24, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 3)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !69, file: !68, line: 145, baseType: !118, size: 8, align: 8, offset: 952)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 1)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !69, file: !68, line: 148, baseType: !80, size: 128, align: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !69, file: !68, line: 151, baseType: !13, size: 32, align: 32, offset: 1088)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !68, line: 152, baseType: !98, size: 64, align: 64, offset: 1152)
!124 = !{!125}
!125 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !7, isLocal: true, isDefinition: true)
!126 = !{i32 2, !"Dwarf Version", i32 2}
!127 = !{i32 2, !"Debug Info Version", i32 700000003}
!128 = !{i32 1, !"PIC Level", i32 2}
!129 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!130 = !DILocation(line: 25, column: 1, scope: !4)
!131 = !DIExpression()
!132 = !DILocation(line: 63, column: 51, scope: !10)
!133 = !DILocation(line: 69, column: 3, scope: !10)
!134 = !DILocation(line: 71, column: 29, scope: !135)
!135 = distinct !DILexicalBlock(scope: !10, file: !1, line: 71, column: 7)
!136 = !{!137, !138, i64 0}
!137 = !{!"", !138, i64 0, !138, i64 8, !141, i64 16}
!138 = !{!"any pointer", !139, i64 0}
!139 = !{!"omnipotent char", !140, i64 0}
!140 = !{!"Simple C/C++ TBAA"}
!141 = !{!"int", !139, i64 0}
!142 = !DILocation(line: 71, column: 9, scope: !135)
!143 = !DILocation(line: 71, column: 7, scope: !10)
!144 = !DILocation(line: 73, column: 22, scope: !145)
!145 = distinct !DILexicalBlock(scope: !135, file: !1, line: 72, column: 3)
!146 = !{!138, !138, i64 0}
!147 = !DILocation(line: 66, column: 9, scope: !10)
!148 = !DILocation(line: 74, column: 3, scope: !145)
!149 = !DILocation(line: 77, column: 22, scope: !150)
!150 = distinct !DILexicalBlock(scope: !135, file: !1, line: 76, column: 3)
!151 = !DILocation(line: 80, column: 7, scope: !152)
!152 = distinct !DILexicalBlock(scope: !10, file: !1, line: 80, column: 7)
!153 = !DILocation(line: 80, column: 7, scope: !10)
!154 = !DILocation(line: 82, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 81, column: 3)
!156 = !DILocation(line: 65, column: 7, scope: !10)
!157 = !DILocation(line: 84, column: 29, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 84, column: 9)
!159 = !DILocation(line: 84, column: 9, scope: !158)
!160 = !DILocation(line: 84, column: 9, scope: !155)
!161 = !DILocation(line: 86, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 85, column: 5)
!163 = !DILocation(line: 87, column: 5, scope: !162)
!164 = !DILocation(line: 89, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !155, file: !1, line: 89, column: 9)
!166 = !DILocation(line: 89, column: 9, scope: !155)
!167 = !DILocation(line: 91, column: 7, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 90, column: 5)
!169 = !DILocation(line: 94, column: 5, scope: !168)
!170 = !DILocation(line: 96, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !155, file: !1, line: 96, column: 9)
!172 = !DILocation(line: 96, column: 9, scope: !155)
!173 = !DILocation(line: 100, column: 37, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 97, column: 5)
!175 = !DILocation(line: 98, column: 7, scope: !174)
!176 = !DILocation(line: 101, column: 5, scope: !174)
!177 = !DILocation(line: 103, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !155, file: !1, line: 103, column: 9)
!179 = !DILocation(line: 103, column: 9, scope: !155)
!180 = !DILocation(line: 107, column: 37, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 104, column: 5)
!182 = !DILocation(line: 105, column: 7, scope: !181)
!183 = !DILocation(line: 108, column: 5, scope: !181)
!184 = !DILocation(line: 112, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !152, file: !1, line: 111, column: 3)
!186 = !DILocation(line: 113, column: 26, scope: !185)
!187 = !DILocation(line: 112, column: 5, scope: !185)
!188 = !DILocation(line: 116, column: 11, scope: !10)
!189 = !DILocation(line: 116, column: 3, scope: !10)

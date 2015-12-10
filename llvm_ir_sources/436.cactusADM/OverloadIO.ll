; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_OutputGH = global i32 (%struct.cGH*)* null, align 8
@CCTK_OverloadOutputGH.overloaded = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"Overload Macros: Attempted to overload function %s%s twice\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"CCTK_\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"OutputGH\00", align 1
@CCTK_OutputVarAsByMethod = global i32 (%struct.cGH*, i8*, i8*, i8*)* null, align 8
@CCTK_OverloadOutputVarAsByMethod.overloaded = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [20 x i8] c"OutputVarAsByMethod\00", align 1
@.str6 = private unnamed_addr constant [84 x i8] c"$Header: /cactus/Cactus/src/IO/OverloadIO.c,v 1.11 2001/11/05 14:58:49 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_IO_OverloadIO_c() #0 {
  ret i8* getelementptr inbounds ([84 x i8]* @.str6, i64 0, i64 0), !dbg !81
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadOutputGH(i32 (%struct.cGH*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*)* %func, i64 0, metadata !57, metadata !82), !dbg !83
  %1 = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !84
  %2 = load i32* @CCTK_OverloadOutputGH.overloaded, align 4, !dbg !86, !tbaa !89
  br i1 %1, label %9, label %3, !dbg !83

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !86
  br i1 %4, label %5, label %7, !dbg !93

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !94, !tbaa !96
  %6 = add nsw i32 %2, 1, !dbg !94
  store i32 %6, i32* @CCTK_OverloadOutputGH.overloaded, align 4, !dbg !94, !tbaa !89
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !58, metadata !82), !dbg !83
  br label %9, !dbg !94

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 43, i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !98
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !82), !dbg !83
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !83
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadOutputVarAsByMethod(i32 (%struct.cGH*, i8*, i8*, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i8*, i8*, i8*)* %func, i64 0, metadata !66, metadata !82), !dbg !100
  %1 = icmp eq i32 (%struct.cGH*, i8*, i8*, i8*)* %func, null, !dbg !101
  %2 = load i32* @CCTK_OverloadOutputVarAsByMethod.overloaded, align 4, !dbg !103, !tbaa !89
  br i1 %1, label %9, label %3, !dbg !100

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !103
  br i1 %4, label %5, label %7, !dbg !106

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*, i8*, i8*)* %func, i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !107, !tbaa !96
  %6 = add nsw i32 %2, 1, !dbg !107
  store i32 %6, i32* @CCTK_OverloadOutputVarAsByMethod.overloaded, align 4, !dbg !107, !tbaa !89
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !67, metadata !82), !dbg !100
  br label %9, !dbg !107

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 52, i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !82), !dbg !100
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !100
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupIOFunctions() #1 {
  %1 = tail call i32 @CCTK_OverloadOutputGH(i32 (%struct.cGH*)* @CactusDefaultOutputGH) #5, !dbg !111
  %2 = tail call i32 @CCTK_OverloadOutputVarAsByMethod(i32 (%struct.cGH*, i8*, i8*, i8*)* @CactusDefaultOutputVarAsByMethod) #5, !dbg !113
  ret i32 0, !dbg !114
}

; Function Attrs: optsize
declare i32 @CactusDefaultOutputGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultOutputVarAsByMethod(%struct.cGH*, i8*, i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !71, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !59, !68}
!4 = !DISubprogram(name: "CCTKi_version_IO_OverloadIO_c", scope: !1, file: !1, line: 27, type: !5, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_IO_OverloadIO_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTK_OverloadOutputGH", scope: !11, file: !11, line: 43, type: !12, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadOutputGH, variables: !56)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!14, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !21, line: 75, baseType: !22)
!21 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 24, size: 1216, align: 64, elements: !23)
!23 = !{!24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !43, !44, !48, !49}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !22, file: !21, line: 26, baseType: !14, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !22, file: !21, line: 27, baseType: !14, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !22, file: !21, line: 30, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !22, file: !21, line: 31, baseType: !27, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !22, file: !21, line: 32, baseType: !27, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !22, file: !21, line: 33, baseType: !27, size: 64, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !22, file: !21, line: 36, baseType: !27, size: 64, align: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !22, file: !21, line: 39, baseType: !27, size: 64, align: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !22, file: !21, line: 40, baseType: !27, size: 64, align: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !22, file: !21, line: 43, baseType: !35, size: 64, align: 64, offset: 512)
!35 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !22, file: !21, line: 44, baseType: !37, size: 64, align: 64, offset: 576)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !22, file: !21, line: 47, baseType: !37, size: 64, align: 64, offset: 640)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !22, file: !21, line: 51, baseType: !27, size: 64, align: 64, offset: 704)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !22, file: !21, line: 54, baseType: !27, size: 64, align: 64, offset: 768)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !22, file: !21, line: 57, baseType: !14, size: 32, align: 32, offset: 832)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !22, file: !21, line: 60, baseType: !27, size: 64, align: 64, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !22, file: !21, line: 63, baseType: !35, size: 64, align: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !21, line: 67, baseType: !45, size: 64, align: 64, offset: 1024)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !22, file: !21, line: 70, baseType: !46, size: 64, align: 64, offset: 1088)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !22, file: !21, line: 73, baseType: !50, size: 64, align: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !21, line: 22, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 18, size: 16, align: 8, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !52, file: !21, line: 20, baseType: !9, size: 8, align: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !52, file: !21, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!56 = !{!57, !58}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !10, file: !11, line: 43, type: !15)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !10, file: !11, line: 43, type: !14)
!59 = !DISubprogram(name: "CCTK_OverloadOutputVarAsByMethod", scope: !11, file: !11, line: 52, type: !60, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i8*, i8*, i8*)*)* @CCTK_OverloadOutputVarAsByMethod, variables: !65)
!60 = !DISubroutineType(types: !61)
!61 = !{!14, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!14, !18, !7, !7, !7}
!65 = !{!66, !67}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !59, file: !11, line: 52, type: !62)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !59, file: !11, line: 52, type: !14)
!68 = !DISubprogram(name: "CCTKi_SetupIOFunctions", scope: !1, file: !1, line: 65, type: !69, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_SetupIOFunctions, variables: !2)
!69 = !DISubroutineType(types: !70)
!70 = !{!14}
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIGlobalVariable(name: "CCTK_OutputGH", scope: !0, file: !11, line: 43, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*)** @CCTK_OutputGH)
!73 = !DIGlobalVariable(name: "overloaded", scope: !10, file: !11, line: 43, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadOutputGH.overloaded)
!74 = !DIGlobalVariable(name: "CCTK_OutputVarAsByMethod", scope: !0, file: !11, line: 52, type: !62, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod)
!75 = !DIGlobalVariable(name: "overloaded", scope: !59, file: !11, line: 52, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadOutputVarAsByMethod.overloaded)
!76 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 25, type: !7, isLocal: true, isDefinition: true)
!77 = !{i32 2, !"Dwarf Version", i32 2}
!78 = !{i32 2, !"Debug Info Version", i32 700000003}
!79 = !{i32 1, !"PIC Level", i32 2}
!80 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!81 = !DILocation(line: 27, column: 1, scope: !4)
!82 = !DIExpression()
!83 = !DILocation(line: 43, column: 1, scope: !10)
!84 = !DILocation(line: 43, column: 1, scope: !85)
!85 = distinct !DILexicalBlock(scope: !10, file: !11, line: 43, column: 1)
!86 = !DILocation(line: 43, column: 1, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !11, line: 43, column: 1)
!88 = distinct !DILexicalBlock(scope: !85, file: !11, line: 43, column: 1)
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !DILocation(line: 43, column: 1, scope: !88)
!94 = !DILocation(line: 43, column: 1, scope: !95)
!95 = distinct !DILexicalBlock(scope: !87, file: !11, line: 43, column: 1)
!96 = !{!97, !97, i64 0}
!97 = !{!"any pointer", !91, i64 0}
!98 = !DILocation(line: 43, column: 1, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !11, line: 43, column: 1)
!100 = !DILocation(line: 52, column: 1, scope: !59)
!101 = !DILocation(line: 52, column: 1, scope: !102)
!102 = distinct !DILexicalBlock(scope: !59, file: !11, line: 52, column: 1)
!103 = !DILocation(line: 52, column: 1, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !11, line: 52, column: 1)
!105 = distinct !DILexicalBlock(scope: !102, file: !11, line: 52, column: 1)
!106 = !DILocation(line: 52, column: 1, scope: !105)
!107 = !DILocation(line: 52, column: 1, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !11, line: 52, column: 1)
!109 = !DILocation(line: 52, column: 1, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !11, line: 52, column: 1)
!111 = !DILocation(line: 43, column: 1, scope: !112)
!112 = !DILexicalBlockFile(scope: !68, file: !11, discriminator: 0)
!113 = !DILocation(line: 52, column: 1, scope: !112)
!114 = !DILocation(line: 82, column: 3, scope: !115)
!115 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 0)

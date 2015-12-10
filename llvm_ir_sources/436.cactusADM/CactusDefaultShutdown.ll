; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str = private unnamed_addr constant [15 x i8] c"CCTK_TERMINATE\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"CCTK_SHUTDOWN\00", align 1
@.str4 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/Cactus/src/main/CactusDefaultShutdown.c,v 1.17 2001/11/05 14:58:53 tradke Exp $\00", align 1
@str = private unnamed_addr constant [81 x i8] c"--------------------------------------------------------------------------------\00"
@str5 = private unnamed_addr constant [6 x i8] c"Done.\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CactusDefaultShutdown_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), !dbg !72
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultShutdown(%struct.tFleshConfig* nocapture readonly %config) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !63, metadata !73), !dbg !74
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !75, !tbaa !76
  %2 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1, !dbg !80
  %3 = load %struct.cGH*** %2, align 8, !dbg !80, !tbaa !81
  %4 = load %struct.cGH** %3, align 8, !dbg !84, !tbaa !76
  %5 = tail call i32 %1(%struct.cGH* %4) #5, !dbg !75
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !64, metadata !73), !dbg !85
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !65, metadata !73), !dbg !86
  %6 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2, !dbg !87
  %7 = load i32* %6, align 4, !dbg !87, !tbaa !90
  %8 = icmp eq i32 %7, 0, !dbg !91
  br i1 %8, label %._crit_edge, label %.lr.ph5, !dbg !92

.preheader:                                       ; preds = %.lr.ph5
  %phitmp = icmp eq i32 %15, 0, !dbg !92
  br i1 %phitmp, label %._crit_edge, label %.lr.ph, !dbg !93

.lr.ph5:                                          ; preds = %0, %.lr.ph5
  %conv_level.03 = phi i32 [ %14, %.lr.ph5 ], [ 0, %0 ]
  %9 = zext i32 %conv_level.03 to i64, !dbg !95
  %10 = load %struct.cGH*** %2, align 8, !dbg !97, !tbaa !81
  %11 = getelementptr inbounds %struct.cGH** %10, i64 %9, !dbg !95
  %12 = load %struct.cGH** %11, align 8, !dbg !95, !tbaa !76
  %13 = tail call i32 @CCTK_Traverse(%struct.cGH* %12, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !98
  %14 = add nuw i32 %conv_level.03, 1, !dbg !99
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !65, metadata !73), !dbg !86
  %15 = load i32* %6, align 4, !dbg !87, !tbaa !90
  %16 = icmp ult i32 %14, %15, !dbg !91
  br i1 %16, label %.lr.ph5, label %.preheader, !dbg !92

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %conv_level.12 = phi i32 [ %22, %.lr.ph ], [ 0, %.preheader ]
  %17 = zext i32 %conv_level.12 to i64, !dbg !100
  %18 = load %struct.cGH*** %2, align 8, !dbg !103, !tbaa !81
  %19 = getelementptr inbounds %struct.cGH** %18, i64 %17, !dbg !100
  %20 = load %struct.cGH** %19, align 8, !dbg !100, !tbaa !76
  %21 = tail call i32 @CCTK_Traverse(%struct.cGH* %20, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !104
  %22 = add nuw i32 %conv_level.12, 1, !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !65, metadata !73), !dbg !86
  %23 = load i32* %6, align 4, !dbg !106, !tbaa !90
  %24 = icmp ult i32 %22, %23, !dbg !107
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !93

._crit_edge:                                      ; preds = %.lr.ph, %0, %.preheader
  %25 = icmp eq i32 %5, 0, !dbg !108
  br i1 %25, label %26, label %27, !dbg !110

; <label>:26                                      ; preds = %._crit_edge
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str, i64 0, i64 0)), !dbg !111
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([6 x i8]* @str5, i64 0, i64 0)), !dbg !113
  br label %27, !dbg !114

; <label>:27                                      ; preds = %26, %._crit_edge
  ret i32 0, !dbg !115
}

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69, !70}
!llvm.ident = !{!71}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !66, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_CactusDefaultShutdown_c", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_CactusDefaultShutdown_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CactusDefaultShutdown", scope: !1, file: !1, line: 67, type: !11, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*)* @CactusDefaultShutdown, variables: !62)
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
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 1, scope: !10, file: !1, line: 67, type: !14)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myproc", scope: !10, file: !1, line: 69, type: !13)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conv_level", scope: !10, file: !1, line: 70, type: !61)
!66 = !{!67}
!67 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !7, isLocal: true, isDefinition: true)
!68 = !{i32 2, !"Dwarf Version", i32 2}
!69 = !{i32 2, !"Debug Info Version", i32 700000003}
!70 = !{i32 1, !"PIC Level", i32 2}
!71 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!72 = !DILocation(line: 25, column: 1, scope: !4)
!73 = !DIExpression()
!74 = !DILocation(line: 67, column: 41, scope: !10)
!75 = !DILocation(line: 72, column: 12, scope: !10)
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !DILocation(line: 72, column: 32, scope: !10)
!81 = !{!82, !77, i64 8}
!82 = !{!"", !77, i64 0, !77, i64 8, !83, i64 16}
!83 = !{!"int", !78, i64 0}
!84 = !DILocation(line: 72, column: 24, scope: !10)
!85 = !DILocation(line: 69, column: 7, scope: !10)
!86 = !DILocation(line: 70, column: 16, scope: !10)
!87 = !DILocation(line: 75, column: 45, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 75, column: 3)
!89 = distinct !DILexicalBlock(scope: !10, file: !1, line: 75, column: 3)
!90 = !{!82, !83, i64 16}
!91 = !DILocation(line: 75, column: 35, scope: !88)
!92 = !DILocation(line: 75, column: 3, scope: !89)
!93 = !DILocation(line: 81, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !10, file: !1, line: 81, column: 3)
!95 = !DILocation(line: 77, column: 19, scope: !96)
!96 = distinct !DILexicalBlock(scope: !88, file: !1, line: 76, column: 3)
!97 = !DILocation(line: 77, column: 27, scope: !96)
!98 = !DILocation(line: 77, column: 5, scope: !96)
!99 = !DILocation(line: 75, column: 62, scope: !88)
!100 = !DILocation(line: 83, column: 19, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 82, column: 3)
!102 = distinct !DILexicalBlock(scope: !94, file: !1, line: 81, column: 3)
!103 = !DILocation(line: 83, column: 27, scope: !101)
!104 = !DILocation(line: 83, column: 5, scope: !101)
!105 = !DILocation(line: 81, column: 62, scope: !102)
!106 = !DILocation(line: 81, column: 45, scope: !102)
!107 = !DILocation(line: 81, column: 35, scope: !102)
!108 = !DILocation(line: 93, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !10, file: !1, line: 93, column: 6)
!110 = !DILocation(line: 93, column: 6, scope: !10)
!111 = !DILocation(line: 95, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 94, column: 3)
!113 = !DILocation(line: 96, column: 5, scope: !112)
!114 = !DILocation(line: 97, column: 3, scope: !112)
!115 = !DILocation(line: 99, column: 3, scope: !10)

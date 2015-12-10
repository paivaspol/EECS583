; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessEnvironment.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [94 x i8] c"$Header: /cactus/Cactus/src/main/ProcessEnvironment.c,v 1.10 2001/12/13 15:43:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ProcessEnvironment_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str, i64 0, i64 0), !dbg !74
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_ProcessEnvironment(i32* nocapture readnone %argc, i8*** nocapture readnone %argv, %struct.tFleshConfig* nocapture readnone %ConfigData) #0 {
  tail call void @llvm.dbg.value(metadata i32* %argc, i64 0, metadata !65, metadata !75), !dbg !76
  tail call void @llvm.dbg.value(metadata i8*** %argv, i64 0, metadata !66, metadata !75), !dbg !77
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !67, metadata !75), !dbg !78
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !67, metadata !75), !dbg !78
  tail call void @llvm.dbg.value(metadata i32* %argc, i64 0, metadata !65, metadata !75), !dbg !76
  tail call void @llvm.dbg.value(metadata i8*** %argv, i64 0, metadata !66, metadata !75), !dbg !77
  ret i32 0, !dbg !79
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !68, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessEnvironment.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_ProcessEnvironment_c", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_ProcessEnvironment_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_ProcessEnvironment", scope: !1, file: !1, line: 115, type: !11, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8***, %struct.tFleshConfig*)* @CCTKi_ProcessEnvironment, variables: !64)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !15, !18}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !20, line: 28, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 19, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !62}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !21, file: !20, line: 21, baseType: !17, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !21, file: !20, line: 24, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !28, line: 75, baseType: !29)
!28 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 24, size: 1216, align: 64, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !49, !50, !54, !55}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !29, file: !28, line: 26, baseType: !13, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !29, file: !28, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !29, file: !28, line: 30, baseType: !14, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !29, file: !28, line: 31, baseType: !14, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !29, file: !28, line: 32, baseType: !14, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !29, file: !28, line: 33, baseType: !14, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !29, file: !28, line: 36, baseType: !14, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !29, file: !28, line: 39, baseType: !14, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !29, file: !28, line: 40, baseType: !14, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !29, file: !28, line: 43, baseType: !41, size: 64, align: 64, offset: 512)
!41 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !29, file: !28, line: 44, baseType: !43, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !29, file: !28, line: 47, baseType: !43, size: 64, align: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !29, file: !28, line: 51, baseType: !14, size: 64, align: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !29, file: !28, line: 54, baseType: !14, size: 64, align: 64, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !29, file: !28, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !29, file: !28, line: 60, baseType: !14, size: 64, align: 64, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !29, file: !28, line: 63, baseType: !41, size: 64, align: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 67, baseType: !51, size: 64, align: 64, offset: 1024)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !29, file: !28, line: 70, baseType: !52, size: 64, align: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !29, file: !28, line: 73, baseType: !56, size: 64, align: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !28, line: 22, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 18, size: 16, align: 8, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !58, file: !28, line: 20, baseType: !9, size: 8, align: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !58, file: !28, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !21, file: !20, line: 25, baseType: !63, size: 32, align: 32, offset: 128)
!63 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !10, file: !1, line: 115, type: !14)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !10, file: !1, line: 115, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ConfigData", arg: 3, scope: !10, file: !1, line: 115, type: !18)
!68 = !{!69}
!69 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !7, isLocal: true, isDefinition: true)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DILocation(line: 25, column: 1, scope: !4)
!75 = !DIExpression()
!76 = !DILocation(line: 115, column: 35, scope: !10)
!77 = !DILocation(line: 115, column: 49, scope: !10)
!78 = !DILocation(line: 115, column: 68, scope: !10)
!79 = !DILocation(line: 135, column: 3, scope: !10)

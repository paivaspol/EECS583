; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Traverse.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [84 x i8] c"$Header: /cactus/Cactus/src/main/Traverse.c,v 1.3 2001/05/10 12:35:17 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Traverse_c() #0 {
  ret i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), !dbg !61
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Traverse(%struct.cGH* %GH, i8* %where) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !52, metadata !62), !dbg !63
  tail call void @llvm.dbg.value(metadata i8* %where, i64 0, metadata !53, metadata !62), !dbg !64
  %1 = tail call i32 @CCTKi_ScheduleTraverseGHExtensions(%struct.cGH* %GH, i8* %where) #4, !dbg !65
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !54, metadata !62), !dbg !66
  ret i32 %1, !dbg !67
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleTraverseGHExtensions(%struct.cGH*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !55, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Traverse.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_Traverse_c", scope: !1, file: !1, line: 21, type: !5, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_Traverse_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTK_Traverse", scope: !1, file: !1, line: 59, type: !11, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTK_Traverse, variables: !51)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !7}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !16, line: 75, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 24, size: 1216, align: 64, elements: !18)
!18 = !{!19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !38, !39, !43, !44}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !17, file: !16, line: 26, baseType: !13, size: 32, align: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !17, file: !16, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !17, file: !16, line: 30, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !17, file: !16, line: 31, baseType: !22, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !17, file: !16, line: 32, baseType: !22, size: 64, align: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !17, file: !16, line: 33, baseType: !22, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !17, file: !16, line: 36, baseType: !22, size: 64, align: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !17, file: !16, line: 39, baseType: !22, size: 64, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !17, file: !16, line: 40, baseType: !22, size: 64, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !17, file: !16, line: 43, baseType: !30, size: 64, align: 64, offset: 512)
!30 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !17, file: !16, line: 44, baseType: !32, size: 64, align: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !17, file: !16, line: 47, baseType: !32, size: 64, align: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !17, file: !16, line: 51, baseType: !22, size: 64, align: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !17, file: !16, line: 54, baseType: !22, size: 64, align: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !17, file: !16, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !17, file: !16, line: 60, baseType: !22, size: 64, align: 64, offset: 896)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !17, file: !16, line: 63, baseType: !30, size: 64, align: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !17, file: !16, line: 67, baseType: !40, size: 64, align: 64, offset: 1024)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !17, file: !16, line: 70, baseType: !41, size: 64, align: 64, offset: 1088)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !17, file: !16, line: 73, baseType: !45, size: 64, align: 64, offset: 1152)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !16, line: 22, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 18, size: 16, align: 8, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !47, file: !16, line: 20, baseType: !9, size: 8, align: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !47, file: !16, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!51 = !{!52, !53, !54}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !10, file: !1, line: 59, type: !14)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "where", arg: 2, scope: !10, file: !1, line: 59, type: !7)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retcode", scope: !10, file: !1, line: 61, type: !13)
!55 = !{!56}
!56 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 19, type: !7, isLocal: true, isDefinition: true)
!57 = !{i32 2, !"Dwarf Version", i32 2}
!58 = !{i32 2, !"Debug Info Version", i32 700000003}
!59 = !{i32 1, !"PIC Level", i32 2}
!60 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!61 = !DILocation(line: 21, column: 1, scope: !4)
!62 = !DIExpression()
!63 = !DILocation(line: 59, column: 24, scope: !10)
!64 = !DILocation(line: 59, column: 40, scope: !10)
!65 = !DILocation(line: 63, column: 13, scope: !10)
!66 = !DILocation(line: 61, column: 7, scope: !10)
!67 = !DILocation(line: 65, column: 3, scope: !10)

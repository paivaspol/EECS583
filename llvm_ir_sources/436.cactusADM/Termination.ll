; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Termination.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@termination_reached = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/Termination.c,v 1.6 2001/09/20 21:44:56 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Termination_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), !dbg !66
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_TerminationReached(%struct.cGH* nocapture readnone %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !53, metadata !67), !dbg !68
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !53, metadata !67), !dbg !68
  %.b = load i1* @termination_reached, align 1
  %1 = zext i1 %.b to i32
  ret i32 %1, !dbg !69
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_TerminateNext(%struct.cGH* nocapture readnone %GH) #2 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !58, metadata !67), !dbg !70
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !58, metadata !67), !dbg !70
  store i1 true, i1* @termination_reached, align 1
  ret void, !dbg !71
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !59, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Termination.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !54}
!4 = !DISubprogram(name: "CCTKi_version_main_Termination_c", scope: !1, file: !1, line: 19, type: !5, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_Termination_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTK_TerminationReached", scope: !1, file: !1, line: 49, type: !11, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @CCTK_TerminationReached, variables: !52)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !17, line: 75, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 24, size: 1216, align: 64, elements: !19)
!19 = !{!20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !38, !39, !40, !44, !45}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !18, file: !17, line: 26, baseType: !13, size: 32, align: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !18, file: !17, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !18, file: !17, line: 30, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !18, file: !17, line: 31, baseType: !23, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !18, file: !17, line: 32, baseType: !23, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !18, file: !17, line: 33, baseType: !23, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !18, file: !17, line: 36, baseType: !23, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !18, file: !17, line: 39, baseType: !23, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !18, file: !17, line: 40, baseType: !23, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !18, file: !17, line: 43, baseType: !31, size: 64, align: 64, offset: 512)
!31 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !18, file: !17, line: 44, baseType: !33, size: 64, align: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !18, file: !17, line: 47, baseType: !33, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !18, file: !17, line: 51, baseType: !23, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !18, file: !17, line: 54, baseType: !23, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !18, file: !17, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !18, file: !17, line: 60, baseType: !23, size: 64, align: 64, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !18, file: !17, line: 63, baseType: !31, size: 64, align: 64, offset: 960)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !17, line: 67, baseType: !41, size: 64, align: 64, offset: 1024)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !18, file: !17, line: 70, baseType: !42, size: 64, align: 64, offset: 1088)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !18, file: !17, line: 73, baseType: !46, size: 64, align: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !17, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 18, size: 16, align: 8, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !48, file: !17, line: 20, baseType: !9, size: 8, align: 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !48, file: !17, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!52 = !{!53}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !10, file: !1, line: 49, type: !14)
!54 = !DISubprogram(name: "CCTK_TerminateNext", scope: !1, file: !1, line: 70, type: !55, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @CCTK_TerminateNext, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !14}
!57 = !{!58}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !54, file: !1, line: 70, type: !14)
!59 = !{!60, !61}
!60 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 17, type: !7, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariable(name: "termination_reached", scope: !0, file: !1, line: 25, type: !13, isLocal: true, isDefinition: true)
!62 = !{i32 2, !"Dwarf Version", i32 2}
!63 = !{i32 2, !"Debug Info Version", i32 700000003}
!64 = !{i32 1, !"PIC Level", i32 2}
!65 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!66 = !DILocation(line: 19, column: 1, scope: !4)
!67 = !DIExpression()
!68 = !DILocation(line: 49, column: 41, scope: !10)
!69 = !DILocation(line: 53, column: 3, scope: !10)
!70 = !DILocation(line: 70, column: 37, scope: !54)
!71 = !DILocation(line: 75, column: 1, scope: !54)

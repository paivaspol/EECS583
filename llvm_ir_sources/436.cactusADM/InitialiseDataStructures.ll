; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseDataStructures.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str1 = private unnamed_addr constant [101 x i8] c"$Header: /cactus/Cactus/src/main/InitialiseDataStructures.c,v 1.23 2001/05/10 12:35:13 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_InitialiseDataStructures_c() #0 {
  ret i8* getelementptr inbounds ([101 x i8]* @.str1, i64 0, i64 0), !dbg !70
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InitialiseDataStructures(%struct.tFleshConfig* nocapture %ConfigData) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !63, metadata !71), !dbg !72
  %1 = tail call i32 @CCTKi_RegisterDefaultTimerFunctions() #4, !dbg !73
  %2 = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 2, !dbg !74
  store i32 0, i32* %2, align 4, !dbg !75, !tbaa !76
  %3 = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 1, !dbg !82
  store %struct.cGH** null, %struct.cGH*** %3, align 8, !dbg !83, !tbaa !84
  %4 = tail call i32 @CCTKi_ActivateThorn(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #4, !dbg !85
  %5 = tail call i32 @CCTKi_SetupCache() #4, !dbg !86
  ret i32 0, !dbg !87
}

; Function Attrs: optsize
declare i32 @CCTKi_RegisterDefaultTimerFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_ActivateThorn(i8*) #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupCache() #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !64, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseDataStructures.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_InitialiseDataStructures_c", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_InitialiseDataStructures_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_InitialiseDataStructures", scope: !1, file: !1, line: 75, type: !11, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*)* @CCTKi_InitialiseDataStructures, variables: !62)
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
!62 = !{!63}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ConfigData", arg: 1, scope: !10, file: !1, line: 75, type: !14)
!64 = !{!65}
!65 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !7, isLocal: true, isDefinition: true)
!66 = !{i32 2, !"Dwarf Version", i32 2}
!67 = !{i32 2, !"Debug Info Version", i32 700000003}
!68 = !{i32 1, !"PIC Level", i32 2}
!69 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!70 = !DILocation(line: 25, column: 1, scope: !4)
!71 = !DIExpression()
!72 = !DILocation(line: 75, column: 50, scope: !10)
!73 = !DILocation(line: 78, column: 3, scope: !10)
!74 = !DILocation(line: 80, column: 15, scope: !10)
!75 = !DILocation(line: 80, column: 20, scope: !10)
!76 = !{!77, !81, i64 16}
!77 = !{!"", !78, i64 0, !78, i64 8, !81, i64 16}
!78 = !{!"any pointer", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!"int", !79, i64 0}
!82 = !DILocation(line: 81, column: 15, scope: !10)
!83 = !DILocation(line: 81, column: 18, scope: !10)
!84 = !{!77, !78, i64 8}
!85 = !DILocation(line: 89, column: 3, scope: !10)
!86 = !DILocation(line: 90, column: 3, scope: !10)
!87 = !DILocation(line: 92, column: 3, scope: !10)

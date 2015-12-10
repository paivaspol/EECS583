; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CallStartupFunctions.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str1 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/Cactus/src/main/CallStartupFunctions.c,v 1.18 2001/11/05 14:58:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CallStartupFunctions_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str1, i64 0, i64 0), !dbg !71
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_CallStartupFunctions(%struct.tFleshConfig* nocapture readnone %ConfigData) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !64, metadata !72), !dbg !73
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !64, metadata !72), !dbg !73
  %1 = tail call i32 @CCTK_ScheduleTraverse(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* null, i32 (i8*, %struct.cFunctionData*, i8*)* null) #4, !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: optsize
declare i32 @CCTK_ScheduleTraverse(i8*, i8*, i32 (i8*, %struct.cFunctionData*, i8*)*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!67, !68, !69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !65, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CallStartupFunctions.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !12}
!6 = !DISubprogram(name: "CCTKi_version_main_CallStartupFunctions_c", scope: !1, file: !1, line: 22, type: !7, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_CallStartupFunctions_c, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DISubprogram(name: "CCTKi_CallStartupFunctions", scope: !1, file: !1, line: 49, type: !13, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*)* @CCTKi_CallStartupFunctions, variables: !63)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !18, line: 28, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 19, size: 192, align: 64, elements: !20)
!20 = !{!21, !23, !61}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !19, file: !18, line: 21, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !19, file: !18, line: 24, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !27, line: 75, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 24, size: 1216, align: 64, elements: !29)
!29 = !{!30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !49, !50, !53, !54}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !28, file: !27, line: 26, baseType: !15, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !28, file: !27, line: 27, baseType: !15, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !28, file: !27, line: 30, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !28, file: !27, line: 31, baseType: !33, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !28, file: !27, line: 32, baseType: !33, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !28, file: !27, line: 33, baseType: !33, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !28, file: !27, line: 36, baseType: !33, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !28, file: !27, line: 39, baseType: !33, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !28, file: !27, line: 40, baseType: !33, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !28, file: !27, line: 43, baseType: !41, size: 64, align: 64, offset: 512)
!41 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !28, file: !27, line: 44, baseType: !43, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !28, file: !27, line: 47, baseType: !43, size: 64, align: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !28, file: !27, line: 51, baseType: !33, size: 64, align: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !28, file: !27, line: 54, baseType: !33, size: 64, align: 64, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !28, file: !27, line: 57, baseType: !15, size: 32, align: 32, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !28, file: !27, line: 60, baseType: !33, size: 64, align: 64, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !28, file: !27, line: 63, baseType: !41, size: 64, align: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !28, file: !27, line: 67, baseType: !51, size: 64, align: 64, offset: 1024)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !28, file: !27, line: 70, baseType: !52, size: 64, align: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !28, file: !27, line: 73, baseType: !55, size: 64, align: 64, offset: 1152)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !27, line: 22, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 18, size: 16, align: 8, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !57, file: !27, line: 20, baseType: !11, size: 8, align: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !57, file: !27, line: 21, baseType: !11, size: 8, align: 8, offset: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !19, file: !18, line: 25, baseType: !62, size: 32, align: 32, offset: 128)
!62 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ConfigData", arg: 1, scope: !12, file: !1, line: 49, type: !16)
!65 = !{!66}
!66 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !9, isLocal: true, isDefinition: true)
!67 = !{i32 2, !"Dwarf Version", i32 2}
!68 = !{i32 2, !"Debug Info Version", i32 700000003}
!69 = !{i32 1, !"PIC Level", i32 2}
!70 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!71 = !DILocation(line: 22, column: 1, scope: !6)
!72 = !DIExpression()
!73 = !DILocation(line: 49, column: 47, scope: !12)
!74 = !DILocation(line: 53, column: 3, scope: !12)
!75 = !DILocation(line: 55, column: 3, scope: !12)

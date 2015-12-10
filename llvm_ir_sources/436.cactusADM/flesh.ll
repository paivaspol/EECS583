; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/flesh.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_Initialise = external global i32 (%struct.tFleshConfig*)*
@CCTK_Evolve = external global i32 (%struct.tFleshConfig*)*
@CCTK_Shutdown = external global i32 (%struct.tFleshConfig*)*
@.str = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/flesh.cc,v 1.10 2000/10/05 00:06:58 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_flesh_cc() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), !dbg !72
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %ConfigData = alloca %struct.tFleshConfig, align 8
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !17, metadata !73), !dbg !74
  store i32 %argc, i32* %1, align 4, !tbaa !75
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !18, metadata !73), !dbg !79
  store i8** %argv, i8*** %2, align 8, !tbaa !80
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !17, metadata !73), !dbg !74
  tail call void @llvm.dbg.value(metadata i8*** %2, i64 0, metadata !18, metadata !73), !dbg !79
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !19, metadata !73), !dbg !82
  %3 = call i32 @CCTKi_InitialiseCactus(i32* %1, i8*** %2, %struct.tFleshConfig* %ConfigData) #4, !dbg !83
  %4 = load i32 (%struct.tFleshConfig*)** @CCTK_Initialise, align 8, !dbg !84, !tbaa !80
  call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !19, metadata !73), !dbg !82
  %5 = call i32 %4(%struct.tFleshConfig* %ConfigData) #4, !dbg !84
  %6 = load i32 (%struct.tFleshConfig*)** @CCTK_Evolve, align 8, !dbg !85, !tbaa !80
  call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !19, metadata !73), !dbg !82
  %7 = call i32 %6(%struct.tFleshConfig* %ConfigData) #4, !dbg !85
  %8 = load i32 (%struct.tFleshConfig*)** @CCTK_Shutdown, align 8, !dbg !86, !tbaa !80
  call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !19, metadata !73), !dbg !82
  %9 = call i32 %8(%struct.tFleshConfig* %ConfigData) #4, !dbg !86
  call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !19, metadata !73), !dbg !82
  %10 = call i32 @CCTKi_ShutdownCactus(%struct.tFleshConfig* %ConfigData) #4, !dbg !87
  ret i32 0, !dbg !88
}

; Function Attrs: optsize
declare i32 @CCTKi_InitialiseCactus(i32*, i8***, %struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_ShutdownCactus(%struct.tFleshConfig*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69, !70}
!llvm.ident = !{!71}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !66, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/flesh.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_flesh_cc", scope: !1, file: !1, line: 20, type: !5, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_flesh_cc, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !11, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !10, file: !1, line: 58, type: !13)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !10, file: !1, line: 58, type: !14)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ConfigData", scope: !10, file: !1, line: 60, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !21, line: 28, baseType: !22)
!21 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 19, size: 192, align: 64, elements: !23)
!23 = !{!24, !25, !64}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !22, file: !21, line: 21, baseType: !15, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !22, file: !21, line: 24, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !29, line: 75, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 24, size: 1216, align: 64, elements: !31)
!31 = !{!32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !51, !52, !56, !57}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !30, file: !29, line: 26, baseType: !13, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !30, file: !29, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !30, file: !29, line: 30, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !30, file: !29, line: 31, baseType: !35, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !30, file: !29, line: 32, baseType: !35, size: 64, align: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !30, file: !29, line: 33, baseType: !35, size: 64, align: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !30, file: !29, line: 36, baseType: !35, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !30, file: !29, line: 39, baseType: !35, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !30, file: !29, line: 40, baseType: !35, size: 64, align: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !30, file: !29, line: 43, baseType: !43, size: 64, align: 64, offset: 512)
!43 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !30, file: !29, line: 44, baseType: !45, size: 64, align: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !30, file: !29, line: 47, baseType: !45, size: 64, align: 64, offset: 640)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !30, file: !29, line: 51, baseType: !35, size: 64, align: 64, offset: 704)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !30, file: !29, line: 54, baseType: !35, size: 64, align: 64, offset: 768)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !30, file: !29, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !30, file: !29, line: 60, baseType: !35, size: 64, align: 64, offset: 896)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !30, file: !29, line: 63, baseType: !43, size: 64, align: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !29, line: 67, baseType: !53, size: 64, align: 64, offset: 1024)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !30, file: !29, line: 70, baseType: !54, size: 64, align: 64, offset: 1088)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !30, file: !29, line: 73, baseType: !58, size: 64, align: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !29, line: 22, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 18, size: 16, align: 8, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !60, file: !29, line: 20, baseType: !9, size: 8, align: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !60, file: !29, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !22, file: !21, line: 25, baseType: !65, size: 32, align: 32, offset: 128)
!65 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!66 = !{!67}
!67 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 18, type: !15, isLocal: true, isDefinition: true)
!68 = !{i32 2, !"Dwarf Version", i32 2}
!69 = !{i32 2, !"Debug Info Version", i32 700000003}
!70 = !{i32 1, !"PIC Level", i32 2}
!71 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!72 = !DILocation(line: 20, column: 1, scope: !4)
!73 = !DIExpression()
!74 = !DILocation(line: 58, column: 14, scope: !10)
!75 = !{!76, !76, i64 0}
!76 = !{!"int", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 58, column: 27, scope: !10)
!80 = !{!81, !81, i64 0}
!81 = !{!"any pointer", !77, i64 0}
!82 = !DILocation(line: 60, column: 16, scope: !10)
!83 = !DILocation(line: 64, column: 3, scope: !10)
!84 = !DILocation(line: 68, column: 3, scope: !10)
!85 = !DILocation(line: 72, column: 3, scope: !10)
!86 = !DILocation(line: 76, column: 3, scope: !10)
!87 = !DILocation(line: 80, column: 3, scope: !10)
!88 = !DILocation(line: 82, column: 3, scope: !10)

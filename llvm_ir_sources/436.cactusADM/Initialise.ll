; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Initialise.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/CactusBase/Time/src/Initialise.c,v 1.1 2001/06/04 18:20:15 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Time_Initialise_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0), !dbg !83
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Time_Initialise(%struct.cGH* nocapture readonly %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !84), !dbg !85
  %1 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #4, !dbg !86
  %2 = sext i32 %1 to i64, !dbg !86
  %3 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !86
  %4 = load i8**** %3, align 8, !dbg !86, !tbaa !87
  %5 = getelementptr inbounds i8*** %4, i64 %2, !dbg !86
  %6 = bitcast i8*** %5 to double***, !dbg !86
  %7 = load double*** %6, align 8, !dbg !86, !tbaa !94
  %8 = load double** %7, align 8, !dbg !86, !tbaa !94
  tail call void @llvm.dbg.value(metadata double* %8, i64 0, metadata !74, metadata !84), !dbg !86
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !86
  %10 = sext i32 %9 to i64, !dbg !86
  %11 = load i8**** %3, align 8, !dbg !86, !tbaa !87
  %12 = getelementptr inbounds i8*** %11, i64 %10, !dbg !86
  %13 = bitcast i8*** %12 to double***, !dbg !86
  %14 = load double*** %13, align 8, !dbg !86, !tbaa !94
  %15 = load double** %14, align 8, !dbg !86, !tbaa !94
  tail call void @llvm.dbg.value(metadata double* %15, i64 0, metadata !75, metadata !84), !dbg !86
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !86
  %17 = sext i32 %16 to i64, !dbg !86
  %18 = load i8**** %3, align 8, !dbg !86, !tbaa !87
  %19 = getelementptr inbounds i8*** %18, i64 %17, !dbg !86
  %20 = bitcast i8*** %19 to double***, !dbg !86
  %21 = load double*** %20, align 8, !dbg !86, !tbaa !94
  %22 = load double** %21, align 8, !dbg !86, !tbaa !94
  tail call void @llvm.dbg.value(metadata double* %22, i64 0, metadata !76, metadata !84), !dbg !86
  store double 0.000000e+00, double* %22, align 8, !dbg !95, !tbaa !96
  store double 0.000000e+00, double* %15, align 8, !dbg !97, !tbaa !96
  store double 0.000000e+00, double* %8, align 8, !dbg !98, !tbaa !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !84), !dbg !86
  ret void, !dbg !99
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !77, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Initialise.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !{!7, !13}
!7 = !DISubprogram(name: "CCTKi_version_CactusBase_Time_Initialise_c", scope: !1, file: !1, line: 20, type: !8, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_Time_Initialise_c, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DISubprogram(name: "Time_Initialise", scope: !1, file: !1, line: 24, type: !14, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @Time_Initialise, variables: !52)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !18, line: 75, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 24, size: 1216, align: 64, elements: !20)
!20 = !{!21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !44, !45}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !19, file: !18, line: 26, baseType: !22, size: 32, align: 32)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !19, file: !18, line: 27, baseType: !22, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !19, file: !18, line: 30, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !19, file: !18, line: 31, baseType: !25, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !19, file: !18, line: 32, baseType: !25, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !19, file: !18, line: 33, baseType: !25, size: 64, align: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !19, file: !18, line: 36, baseType: !25, size: 64, align: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !19, file: !18, line: 39, baseType: !25, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !19, file: !18, line: 40, baseType: !25, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !19, file: !18, line: 43, baseType: !5, size: 64, align: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !19, file: !18, line: 44, baseType: !4, size: 64, align: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !19, file: !18, line: 47, baseType: !4, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !19, file: !18, line: 51, baseType: !25, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !19, file: !18, line: 54, baseType: !25, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !19, file: !18, line: 57, baseType: !22, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !19, file: !18, line: 60, baseType: !25, size: 64, align: 64, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !19, file: !18, line: 63, baseType: !5, size: 64, align: 64, offset: 960)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 67, baseType: !41, size: 64, align: 64, offset: 1024)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !19, file: !18, line: 70, baseType: !42, size: 64, align: 64, offset: 1088)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !19, file: !18, line: 73, baseType: !46, size: 64, align: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !18, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 18, size: 16, align: 8, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !48, file: !18, line: 20, baseType: !12, size: 8, align: 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !48, file: !18, line: 21, baseType: !12, size: 8, align: 8, offset: 8)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !13, file: !1, line: 24, type: !16)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !13, file: !1, line: 26, type: !22)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !13, file: !1, line: 26, type: !25)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !13, file: !1, line: 26, type: !25)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !13, file: !1, line: 26, type: !25)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !13, file: !1, line: 26, type: !25)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !13, file: !1, line: 26, type: !25)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !13, file: !1, line: 26, type: !25)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !13, file: !1, line: 26, type: !25)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !13, file: !1, line: 26, type: !25)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !13, file: !1, line: 26, type: !5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !13, file: !1, line: 26, type: !5)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !13, file: !1, line: 26, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !13, file: !1, line: 26, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !13, file: !1, line: 26, type: !25)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !13, file: !1, line: 26, type: !22)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !13, file: !1, line: 26, type: !25)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !13, file: !1, line: 26, type: !22)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !13, file: !1, line: 26, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_dt", scope: !13, file: !1, line: 26, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !13, file: !1, line: 26, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !13, file: !1, line: 26, type: !4)
!77 = !{!78}
!78 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 18, type: !10, isLocal: true, isDefinition: true)
!79 = !{i32 2, !"Dwarf Version", i32 2}
!80 = !{i32 2, !"Debug Info Version", i32 700000003}
!81 = !{i32 1, !"PIC Level", i32 2}
!82 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!83 = !DILocation(line: 20, column: 1, scope: !7)
!84 = !DIExpression()
!85 = !DILocation(line: 24, column: 22, scope: !13)
!86 = !DILocation(line: 26, column: 3, scope: !13)
!87 = !{!88, !92, i64 128}
!88 = !{!"", !89, i64 0, !89, i64 4, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !93, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !89, i64 104, !92, i64 112, !93, i64 120, !92, i64 128, !92, i64 136, !92, i64 144}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!"any pointer", !90, i64 0}
!93 = !{!"double", !90, i64 0}
!94 = !{!92, !92, i64 0}
!95 = !DILocation(line: 28, column: 23, scope: !13)
!96 = !{!93, !93, i64 0}
!97 = !DILocation(line: 29, column: 21, scope: !13)
!98 = !DILocation(line: 30, column: 15, scope: !13)
!99 = !DILocation(line: 31, column: 23, scope: !13)

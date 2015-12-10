; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Given.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { double, double, double, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@timepriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"$Header: /cactus/CactusBase/Time/src/Given.c,v 1.4 2001/06/04 18:20:14 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Time_Given_c() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), !dbg !92
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Time_Given(%struct.cGH* nocapture %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !93), !dbg !94
  %1 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 2) to i64*), align 8, !dbg !95, !tbaa !96
  %2 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 9, !dbg !102
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #4, !dbg !102
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !102
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !102
  %6 = bitcast double* %2 to i64*, !dbg !103
  store i64 %1, i64* %6, align 8, !dbg !103, !tbaa !104
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !62, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !62, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !62, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !62, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !62, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !62, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !62, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !93), !dbg !102
  ret void, !dbg !107
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
!llvm.module.flags = !{!88, !89, !90}
!llvm.ident = !{!91}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !86, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Given.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !{!7, !13}
!7 = !DISubprogram(name: "CCTKi_version_CactusBase_Time_Given_c", scope: !1, file: !1, line: 21, type: !8, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_Time_Given_c, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DISubprogram(name: "Time_Given", scope: !1, file: !1, line: 25, type: !14, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @Time_Given, variables: !52)
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
!52 = !{!53, !54, !55, !57, !59, !60, !61, !62, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !13, file: !1, line: 25, type: !16)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !13, file: !1, line: 27, type: !10)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_outonly", scope: !13, file: !1, line: 27, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_fac", scope: !13, file: !1, line: 27, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !13, file: !1, line: 27, type: !58)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep", scope: !13, file: !1, line: 27, type: !58)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outtimestep_every", scope: !13, file: !1, line: 27, type: !56)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !13, file: !1, line: 27, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !13, file: !1, line: 28, type: !22)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !13, file: !1, line: 28, type: !25)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !13, file: !1, line: 28, type: !25)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !13, file: !1, line: 28, type: !25)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !13, file: !1, line: 28, type: !25)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !13, file: !1, line: 28, type: !25)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !13, file: !1, line: 28, type: !25)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !13, file: !1, line: 28, type: !25)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !13, file: !1, line: 28, type: !25)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !13, file: !1, line: 28, type: !5)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !13, file: !1, line: 28, type: !5)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !13, file: !1, line: 28, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !13, file: !1, line: 28, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !13, file: !1, line: 28, type: !25)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !13, file: !1, line: 28, type: !22)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !13, file: !1, line: 28, type: !25)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !13, file: !1, line: 28, type: !22)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !13, file: !1, line: 28, type: !63)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_dt", scope: !13, file: !1, line: 28, type: !4)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !13, file: !1, line: 28, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !13, file: !1, line: 28, type: !4)
!86 = !{!87}
!87 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 19, type: !10, isLocal: true, isDefinition: true)
!88 = !{i32 2, !"Dwarf Version", i32 2}
!89 = !{i32 2, !"Debug Info Version", i32 700000003}
!90 = !{i32 1, !"PIC Level", i32 2}
!91 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!92 = !DILocation(line: 21, column: 1, scope: !7)
!93 = !DIExpression()
!94 = !DILocation(line: 25, column: 17, scope: !13)
!95 = !DILocation(line: 27, column: 3, scope: !13)
!96 = !{!97, !98, i64 16}
!97 = !{!"", !98, i64 0, !98, i64 8, !98, i64 16, !101, i64 24}
!98 = !{!"double", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!"int", !99, i64 0}
!102 = !DILocation(line: 28, column: 3, scope: !13)
!103 = !DILocation(line: 30, column: 27, scope: !13)
!104 = !{!105, !98, i64 64}
!105 = !{!"", !101, i64 0, !101, i64 4, !106, i64 8, !106, i64 16, !106, i64 24, !106, i64 32, !106, i64 40, !106, i64 48, !106, i64 56, !98, i64 64, !106, i64 72, !106, i64 80, !106, i64 88, !106, i64 96, !101, i64 104, !106, i64 112, !98, i64 120, !106, i64 128, !106, i64 136, !106, i64 144}
!106 = !{!"any pointer", !99, i64 0}
!107 = !DILocation(line: 31, column: 46, scope: !13)

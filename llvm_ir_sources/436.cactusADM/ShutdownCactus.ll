; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ShutdownCactus.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@cactuspriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str1 = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/main/ShutdownCactus.c,v 1.13 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ShutdownCactus_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str1, i64 0, i64 0), !dbg !91
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ShutdownCactus(%struct.tFleshConfig* nocapture readnone %ConfigData) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !63, metadata !92), !dbg !93
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 1), align 8, !dbg !94, !tbaa !95
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !72, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !63, metadata !92), !dbg !93
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #4, !dbg !101
  %3 = icmp eq i32 %2, 0, !dbg !101
  br i1 %3, label %6, label %4, !dbg !103

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_SchedulePrintTimes(i8* null) #4, !dbg !104
  br label %6, !dbg !106

; <label>:6                                       ; preds = %0, %4
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !82, metadata !92), !dbg !94
  ret i32 0, !dbg !107
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_SchedulePrintTimes(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!87, !88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !85, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ShutdownCactus.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_ShutdownCactus_c", scope: !1, file: !1, line: 24, type: !5, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_ShutdownCactus_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_ShutdownCactus", scope: !1, file: !1, line: 46, type: !11, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*)* @CCTKi_ShutdownCactus, variables: !62)
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
!62 = !{!63, !64, !66, !67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ConfigData", arg: 1, scope: !10, file: !1, line: 46, type: !14)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !10, file: !1, line: 48, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !10, file: !1, line: 48, type: !65)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !10, file: !1, line: 48, type: !7)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !10, file: !1, line: 48, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !10, file: !1, line: 48, type: !69)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_run_title", scope: !10, file: !1, line: 48, type: !7)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_timer_output", scope: !10, file: !1, line: 48, type: !7)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allow_mixeddim_gfs", scope: !10, file: !1, line: 48, type: !69)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_brief_output", scope: !10, file: !1, line: 48, type: !69)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_full_warnings", scope: !10, file: !1, line: 48, type: !69)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_banners", scope: !10, file: !1, line: 48, type: !69)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_schedule", scope: !10, file: !1, line: 48, type: !69)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_strong_param_check", scope: !10, file: !1, line: 48, type: !69)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_setup", scope: !10, file: !1, line: 48, type: !69)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_size", scope: !10, file: !1, line: 48, type: !69)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cacheline_bytes", scope: !10, file: !1, line: 48, type: !69)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !10, file: !1, line: 48, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!85 = !{!86}
!86 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 22, type: !7, isLocal: true, isDefinition: true)
!87 = !{i32 2, !"Dwarf Version", i32 2}
!88 = !{i32 2, !"Debug Info Version", i32 700000003}
!89 = !{i32 1, !"PIC Level", i32 2}
!90 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!91 = !DILocation(line: 24, column: 1, scope: !4)
!92 = !DIExpression()
!93 = !DILocation(line: 46, column: 40, scope: !10)
!94 = !DILocation(line: 48, column: 3, scope: !10)
!95 = !{!96, !97, i64 8}
!96 = !{!"", !97, i64 0, !97, i64 8, !100, i64 16, !100, i64 20, !100, i64 24, !100, i64 28, !100, i64 32, !100, i64 36, !100, i64 40, !100, i64 44, !100, i64 48}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!"int", !98, i64 0}
!101 = !DILocation(line: 54, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !10, file: !1, line: 54, column: 7)
!103 = !DILocation(line: 54, column: 7, scope: !10)
!104 = !DILocation(line: 56, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 55, column: 3)
!106 = !DILocation(line: 57, column: 3, scope: !105)
!107 = !DILocation(line: 59, column: 26, scope: !10)

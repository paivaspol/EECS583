; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [56 x i8] c"Tried to store two GHs at the same convergence level !\0A\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/ConfigData.c,v 1.9 2001/11/05 14:58:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ConfigData_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), !dbg !76
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_AddGH(%struct.tFleshConfig* nocapture %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !64, metadata !77), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %convergence_level, i64 0, metadata !65, metadata !77), !dbg !79
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !66, metadata !77), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !77), !dbg !81
  %1 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2, !dbg !82
  %2 = load i32* %1, align 4, !dbg !82, !tbaa !84
  %3 = icmp eq i32 %2, 0, !dbg !90
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, %convergence_level, !dbg !91
  %or.cond = or i1 %3, %5, !dbg !92
  %6 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1, !dbg !93
  br i1 %or.cond, label %7, label %._crit_edge6, !dbg !92

; <label>:7                                       ; preds = %0
  %8 = bitcast %struct.cGH*** %6 to i8**, !dbg !93
  %9 = load i8** %8, align 8, !dbg !93, !tbaa !95
  %10 = add i32 %convergence_level, 1, !dbg !96
  %11 = zext i32 %10 to i64, !dbg !97
  %12 = shl nuw nsw i64 %11, 3, !dbg !98
  %13 = tail call i8* @realloc(i8* %9, i64 %12) #5, !dbg !99
  %14 = icmp eq i8* %13, null, !dbg !100
  br i1 %14, label %.thread3, label %15, !dbg !102

; <label>:15                                      ; preds = %7
  store i8* %13, i8** %8, align 8, !dbg !103, !tbaa !95
  %16 = load i32* %1, align 4, !dbg !105, !tbaa !84
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !68, metadata !77), !dbg !107
  %17 = icmp ult i32 %16, %10, !dbg !108
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !110

.lr.ph:                                           ; preds = %15
  %18 = bitcast i8* %13 to %struct.cGH**
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds %struct.cGH** %18, i64 %19, !dbg !111
  store %struct.cGH* null, %struct.cGH** %20, align 8, !dbg !113, !tbaa !114
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !68, metadata !77), !dbg !107
  %exitcond8 = icmp eq i32 %16, %convergence_level, !dbg !110
  br i1 %exitcond8, label %._crit_edge, label %._crit_edge5, !dbg !110

._crit_edge5:                                     ; preds = %.lr.ph, %._crit_edge5
  %i.0410 = phi i32 [ %21, %._crit_edge5 ], [ %16, %.lr.ph ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next, %._crit_edge5 ], [ %19, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !110
  %21 = add nuw i32 %i.0410, 1, !dbg !115
  %.pre = load %struct.cGH*** %6, align 8, !dbg !116, !tbaa !95
  %22 = getelementptr inbounds %struct.cGH** %.pre, i64 %indvars.iv.next, !dbg !111
  store %struct.cGH* null, %struct.cGH** %22, align 8, !dbg !113, !tbaa !114
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !68, metadata !77), !dbg !107
  %exitcond = icmp eq i32 %21, %convergence_level, !dbg !110
  br i1 %exitcond, label %._crit_edge, label %._crit_edge5, !dbg !110

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge5, %15
  store i32 %10, i32* %1, align 4, !dbg !117, !tbaa !84
  br label %._crit_edge6, !dbg !118

._crit_edge6:                                     ; preds = %0, %._crit_edge
  %23 = zext i32 %convergence_level to i64, !dbg !119
  %24 = load %struct.cGH*** %6, align 8, !dbg !121, !tbaa !95
  %25 = getelementptr inbounds %struct.cGH** %24, i64 %23, !dbg !119
  %26 = load %struct.cGH** %25, align 8, !dbg !119, !tbaa !114
  %27 = icmp eq %struct.cGH* %26, null, !dbg !119
  br i1 %27, label %28, label %.thread3, !dbg !122

; <label>:28                                      ; preds = %._crit_edge6
  store %struct.cGH* %GH, %struct.cGH** %25, align 8, !dbg !123, !tbaa !114
  br label %31, !dbg !125

.thread3:                                         ; preds = %7, %._crit_edge6
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !126, !tbaa !114
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %29), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !67, metadata !77), !dbg !81
  br label %31

; <label>:31                                      ; preds = %.thread3, %28
  %retval.1 = phi i32 [ 2, %.thread3 ], [ 0, %28 ]
  ret i32 %retval.1, !dbg !129
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !44, globals: !70, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !7, line: 75, baseType: !8)
!7 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 24, size: 1216, align: 64, elements: !9)
!9 = !{!10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !35, !36}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !8, file: !7, line: 26, baseType: !11, size: 32, align: 32)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !8, file: !7, line: 27, baseType: !11, size: 32, align: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !8, file: !7, line: 30, baseType: !14, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !8, file: !7, line: 31, baseType: !14, size: 64, align: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !8, file: !7, line: 32, baseType: !14, size: 64, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !8, file: !7, line: 33, baseType: !14, size: 64, align: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !8, file: !7, line: 36, baseType: !14, size: 64, align: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !8, file: !7, line: 39, baseType: !14, size: 64, align: 64, offset: 384)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !8, file: !7, line: 40, baseType: !14, size: 64, align: 64, offset: 448)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !8, file: !7, line: 43, baseType: !22, size: 64, align: 64, offset: 512)
!22 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !8, file: !7, line: 44, baseType: !24, size: 64, align: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !8, file: !7, line: 47, baseType: !24, size: 64, align: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !8, file: !7, line: 51, baseType: !14, size: 64, align: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !8, file: !7, line: 54, baseType: !14, size: 64, align: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !8, file: !7, line: 57, baseType: !11, size: 32, align: 32, offset: 832)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !8, file: !7, line: 60, baseType: !14, size: 64, align: 64, offset: 896)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !8, file: !7, line: 63, baseType: !22, size: 64, align: 64, offset: 960)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8, file: !7, line: 67, baseType: !32, size: 64, align: 64, offset: 1024)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !8, file: !7, line: 70, baseType: !33, size: 64, align: 64, offset: 1088)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !8, file: !7, line: 73, baseType: !37, size: 64, align: 64, offset: 1152)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !7, line: 22, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 18, size: 16, align: 8, elements: !40)
!40 = !{!41, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !39, file: !7, line: 20, baseType: !42, size: 8, align: 8)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !39, file: !7, line: 21, baseType: !42, size: 8, align: 8, offset: 8)
!44 = !{!45, !50}
!45 = !DISubprogram(name: "CCTKi_version_main_ConfigData_c", scope: !1, file: !1, line: 21, type: !46, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_ConfigData_c, variables: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!50 = !DISubprogram(name: "CCTKi_AddGH", scope: !1, file: !1, line: 56, type: !51, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*, i32, %struct.cGH*)* @CCTKi_AddGH, variables: !63)
!51 = !DISubroutineType(types: !52)
!52 = !{!11, !53, !62, !5}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !55, line: 28, baseType: !56)
!55 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!56 = !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 19, size: 192, align: 64, elements: !57)
!57 = !{!58, !60, !61}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !56, file: !55, line: 21, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !56, file: !55, line: 24, baseType: !4, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !56, file: !55, line: 25, baseType: !62, size: 32, align: 32, offset: 128)
!62 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 1, scope: !50, file: !1, line: 56, type: !53)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "convergence_level", arg: 2, scope: !50, file: !1, line: 56, type: !62)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 3, scope: !50, file: !1, line: 56, type: !5)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !50, file: !1, line: 58, type: !11)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !50, file: !1, line: 59, type: !62)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !50, file: !1, line: 60, type: !4)
!70 = !{!71}
!71 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 19, type: !48, isLocal: true, isDefinition: true)
!72 = !{i32 2, !"Dwarf Version", i32 2}
!73 = !{i32 2, !"Debug Info Version", i32 700000003}
!74 = !{i32 1, !"PIC Level", i32 2}
!75 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!76 = !DILocation(line: 21, column: 1, scope: !45)
!77 = !DIExpression()
!78 = !DILocation(line: 56, column: 32, scope: !50)
!79 = !DILocation(line: 56, column: 53, scope: !50)
!80 = !DILocation(line: 56, column: 77, scope: !50)
!81 = !DILocation(line: 58, column: 7, scope: !50)
!82 = !DILocation(line: 65, column: 14, scope: !83)
!83 = distinct !DILexicalBlock(scope: !50, file: !1, line: 65, column: 6)
!84 = !{!85, !89, i64 16}
!85 = !{!"", !86, i64 0, !86, i64 8, !89, i64 16}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!"int", !87, i64 0}
!90 = !DILocation(line: 65, column: 19, scope: !83)
!91 = !DILocation(line: 65, column: 45, scope: !83)
!92 = !DILocation(line: 65, column: 24, scope: !83)
!93 = !DILocation(line: 67, column: 36, scope: !94)
!94 = distinct !DILexicalBlock(scope: !83, file: !1, line: 66, column: 3)
!95 = !{!85, !86, i64 8}
!96 = !DILocation(line: 67, column: 58, scope: !94)
!97 = !DILocation(line: 67, column: 40, scope: !94)
!98 = !DILocation(line: 67, column: 61, scope: !94)
!99 = !DILocation(line: 67, column: 20, scope: !94)
!100 = !DILocation(line: 69, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !94, file: !1, line: 69, column: 8)
!102 = !DILocation(line: 69, column: 8, scope: !94)
!103 = !DILocation(line: 71, column: 18, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 70, column: 5)
!105 = !DILocation(line: 72, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !104, file: !1, line: 72, column: 7)
!107 = !DILocation(line: 59, column: 16, scope: !50)
!108 = !DILocation(line: 72, column: 28, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 72, column: 7)
!110 = !DILocation(line: 72, column: 7, scope: !106)
!111 = !DILocation(line: 74, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 73, column: 7)
!113 = !DILocation(line: 74, column: 23, scope: !112)
!114 = !{!86, !86, i64 0}
!115 = !DILocation(line: 72, column: 50, scope: !109)
!116 = !DILocation(line: 74, column: 17, scope: !112)
!117 = !DILocation(line: 76, column: 19, scope: !104)
!118 = !DILocation(line: 77, column: 5, scope: !104)
!119 = !DILocation(line: 84, column: 18, scope: !120)
!120 = distinct !DILexicalBlock(scope: !50, file: !1, line: 84, column: 6)
!121 = !DILocation(line: 84, column: 26, scope: !120)
!122 = !DILocation(line: 84, column: 6, scope: !50)
!123 = !DILocation(line: 86, column: 35, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 85, column: 3)
!125 = !DILocation(line: 87, column: 3, scope: !124)
!126 = !DILocation(line: 90, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !120, file: !1, line: 89, column: 3)
!128 = !DILocation(line: 90, column: 5, scope: !127)
!129 = !DILocation(line: 94, column: 3, scope: !50)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranBindingsIO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_OutputGH = external global i32 (%struct.cGH*)*
@.str = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/IO/FortranBindingsIO.c,v 1.9 2001/11/05 14:58:49 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_IO_FortranBindingsIO_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str, i64 0, i64 0), !dbg !74
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_outputgh_(i32* nocapture %istat, %struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata i32* %istat, i64 0, metadata !53, metadata !75), !dbg !76
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !54, metadata !75), !dbg !77
  %1 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !78, !tbaa !79
  %2 = tail call i32 %1(%struct.cGH* %GH) #5, !dbg !78
  store i32 %2, i32* %istat, align 4, !dbg !83, !tbaa !84
  ret void, !dbg !86
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_registeriomethod_(i32* nocapture %handle, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %handle, i64 0, metadata !61, metadata !75), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !62, metadata !75), !dbg !88
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !63, metadata !75), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !64, metadata !75), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !65, metadata !75), !dbg !88
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !89
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !66, metadata !75), !dbg !89
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5, !dbg !89
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !67, metadata !75), !dbg !89
  %3 = tail call i32 @CCTKi_RegisterIOMethod(i8* %1, i8* %2) #5, !dbg !90
  store i32 %3, i32* %handle, align 4, !dbg !91, !tbaa !84
  tail call void @free(i8* %1) #6, !dbg !92
  tail call void @free(i8* %2) #6, !dbg !93
  ret void, !dbg !94
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: optsize
declare i32 @CCTKi_RegisterIOMethod(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !68, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranBindingsIO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !55}
!4 = !DISubprogram(name: "CCTKi_version_IO_FortranBindingsIO_c", scope: !1, file: !1, line: 22, type: !5, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_IO_FortranBindingsIO_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "cctk_outputgh_", scope: !1, file: !1, line: 31, type: !11, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*)* @cctk_outputgh_, variables: !52)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !18, line: 75, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 24, size: 1216, align: 64, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !38, !39, !40, !44, !45}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !19, file: !18, line: 26, baseType: !14, size: 32, align: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !19, file: !18, line: 27, baseType: !14, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !19, file: !18, line: 30, baseType: !13, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !19, file: !18, line: 31, baseType: !13, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !19, file: !18, line: 32, baseType: !13, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !19, file: !18, line: 33, baseType: !13, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !19, file: !18, line: 36, baseType: !13, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !19, file: !18, line: 39, baseType: !13, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !19, file: !18, line: 40, baseType: !13, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !19, file: !18, line: 43, baseType: !31, size: 64, align: 64, offset: 512)
!31 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !19, file: !18, line: 44, baseType: !33, size: 64, align: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !19, file: !18, line: 47, baseType: !33, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !19, file: !18, line: 51, baseType: !13, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !19, file: !18, line: 54, baseType: !13, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !19, file: !18, line: 57, baseType: !14, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !19, file: !18, line: 60, baseType: !13, size: 64, align: 64, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !19, file: !18, line: 63, baseType: !31, size: 64, align: 64, offset: 960)
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
!50 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !48, file: !18, line: 20, baseType: !9, size: 8, align: 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !48, file: !18, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!52 = !{!53, !54}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "istat", arg: 1, scope: !10, file: !1, line: 32, type: !13)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !10, file: !1, line: 32, type: !15)
!55 = !DISubprogram(name: "cctki_registeriomethod_", scope: !1, file: !1, line: 37, type: !56, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i8*, i32, i32)* @cctki_registeriomethod_, variables: !60)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !13, !58, !58, !59, !59}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!59 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !55, file: !1, line: 38, type: !13)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !55, file: !1, line: 38, type: !58)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 3, scope: !55, file: !1, line: 38, type: !58)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !55, file: !1, line: 38, type: !59)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 5, scope: !55, file: !1, line: 38, type: !59)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !55, file: !1, line: 40, type: !58)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !55, file: !1, line: 40, type: !58)
!68 = !{!69}
!69 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !7, isLocal: true, isDefinition: true)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DILocation(line: 22, column: 1, scope: !4)
!75 = !DIExpression()
!76 = !DILocation(line: 32, column: 34, scope: !10)
!77 = !DILocation(line: 32, column: 52, scope: !10)
!78 = !DILocation(line: 34, column: 12, scope: !10)
!79 = !{!80, !80, i64 0}
!80 = !{!"any pointer", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !DILocation(line: 34, column: 10, scope: !10)
!84 = !{!85, !85, i64 0}
!85 = !{!"int", !81, i64 0}
!86 = !DILocation(line: 35, column: 1, scope: !10)
!87 = !DILocation(line: 38, column: 34, scope: !55)
!88 = !DILocation(line: 38, column: 42, scope: !55)
!89 = !DILocation(line: 40, column: 3, scope: !55)
!90 = !DILocation(line: 41, column: 13, scope: !55)
!91 = !DILocation(line: 41, column: 11, scope: !55)
!92 = !DILocation(line: 42, column: 3, scope: !55)
!93 = !DILocation(line: 43, column: 3, scope: !55)
!94 = !DILocation(line: 44, column: 1, scope: !55)

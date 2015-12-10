; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOUtil_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperIOUtil(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !51, metadata !58), !dbg !59
  tail call void @llvm.dbg.value(metadata i8* %fpointer, i64 0, metadata !52, metadata !58), !dbg !60
  %1 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*)*, !dbg !61
  tail call void @llvm.dbg.value(metadata void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*)* %1, i64 0, metadata !53, metadata !58), !dbg !62
  %2 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !63
  %3 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !63
  %4 = load i32** %3, align 8, !dbg !63, !tbaa !64
  %5 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !63
  %6 = load i32** %5, align 8, !dbg !63, !tbaa !71
  %7 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !63
  %8 = load i32** %7, align 8, !dbg !63, !tbaa !72
  %9 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !63
  %10 = load i32** %9, align 8, !dbg !63, !tbaa !73
  %11 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !63
  %12 = load i32** %11, align 8, !dbg !63, !tbaa !74
  %13 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !63
  %14 = load i32** %13, align 8, !dbg !63, !tbaa !75
  %15 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !63
  %16 = load i32** %15, align 8, !dbg !63, !tbaa !76
  %17 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !63
  %18 = load i32** %17, align 8, !dbg !63, !tbaa !77
  %19 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !63
  %20 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !63
  %21 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !63
  %22 = load double** %21, align 8, !dbg !63, !tbaa !78
  %23 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !63
  %24 = load double** %23, align 8, !dbg !63, !tbaa !79
  %25 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !63
  %26 = load i32** %25, align 8, !dbg !63, !tbaa !80
  %27 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !63
  %28 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !63
  %29 = load i32** %28, align 8, !dbg !63, !tbaa !81
  %30 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !63
  tail call void %1(i32* %2, i32* %4, i32* %6, i32* %8, i32* %10, i32* %12, i32* %14, i32* %16, i32* %18, double* %19, double* %20, double* %22, double* %24, i32* %26, i32* %27, i32* %29, i32* %30, %struct.cGH* %GH) #2, !dbg !82
  ret i32 0, !dbg !83
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !46, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOUtil_FortranWrapper.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7, !7, !7, !7, !7, !7, !7, !7, !9, !9, !9, !9, !7, !7, !7, !7, !11}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !13, line: 75, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 24, size: 1216, align: 64, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !37, !38}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !14, file: !13, line: 26, baseType: !8, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !14, file: !13, line: 27, baseType: !8, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !14, file: !13, line: 30, baseType: !7, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !14, file: !13, line: 31, baseType: !7, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !14, file: !13, line: 32, baseType: !7, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !14, file: !13, line: 33, baseType: !7, size: 64, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !14, file: !13, line: 36, baseType: !7, size: 64, align: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !14, file: !13, line: 39, baseType: !7, size: 64, align: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !14, file: !13, line: 40, baseType: !7, size: 64, align: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !14, file: !13, line: 43, baseType: !10, size: 64, align: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !14, file: !13, line: 44, baseType: !9, size: 64, align: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !14, file: !13, line: 47, baseType: !9, size: 64, align: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !14, file: !13, line: 51, baseType: !7, size: 64, align: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !14, file: !13, line: 54, baseType: !7, size: 64, align: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !14, file: !13, line: 57, baseType: !8, size: 32, align: 32, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !14, file: !13, line: 60, baseType: !7, size: 64, align: 64, offset: 896)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !14, file: !13, line: 63, baseType: !10, size: 64, align: 64, offset: 960)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 67, baseType: !34, size: 64, align: 64, offset: 1024)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !14, file: !13, line: 70, baseType: !35, size: 64, align: 64, offset: 1088)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !14, file: !13, line: 73, baseType: !39, size: 64, align: 64, offset: 1152)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !13, line: 22, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 18, size: 16, align: 8, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !41, file: !13, line: 20, baseType: !44, size: 8, align: 8)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !41, file: !13, line: 21, baseType: !44, size: 8, align: 8, offset: 8)
!46 = !{!47}
!47 = !DISubprogram(name: "CCTKi_BindingsFortranWrapperIOUtil", scope: !1, file: !1, line: 13, type: !48, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperIOUtil, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!8, !11, !36}
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !47, file: !1, line: 13, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fpointer", arg: 2, scope: !47, file: !1, line: 13, type: !36)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function", scope: !47, file: !1, line: 15, type: !4)
!54 = !{i32 2, !"Dwarf Version", i32 2}
!55 = !{i32 2, !"Debug Info Version", i32 700000003}
!56 = !{i32 1, !"PIC Level", i32 2}
!57 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!58 = !DIExpression()
!59 = !DILocation(line: 13, column: 45, scope: !47)
!60 = !DILocation(line: 13, column: 55, scope: !47)
!61 = !DILocation(line: 20, column: 14, scope: !47)
!62 = !DILocation(line: 15, column: 10, scope: !47)
!63 = !DILocation(line: 22, column: 12, scope: !47)
!64 = !{!65, !69, i64 8}
!65 = !{!"", !66, i64 0, !66, i64 4, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !70, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !66, i64 104, !69, i64 112, !70, i64 120, !69, i64 128, !69, i64 136, !69, i64 144}
!66 = !{!"int", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!"any pointer", !67, i64 0}
!70 = !{!"double", !67, i64 0}
!71 = !{!65, !69, i64 16}
!72 = !{!65, !69, i64 24}
!73 = !{!65, !69, i64 32}
!74 = !{!65, !69, i64 40}
!75 = !{!65, !69, i64 56}
!76 = !{!65, !69, i64 48}
!77 = !{!65, !69, i64 88}
!78 = !{!65, !69, i64 72}
!79 = !{!65, !69, i64 80}
!80 = !{!65, !69, i64 96}
!81 = !{!65, !69, i64 112}
!82 = !DILocation(line: 22, column: 3, scope: !47)
!83 = !DILocation(line: 24, column: 3, scope: !47)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/rcfile.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@TTSize = common global i32 0, align 4
@ECacheSize = common global i32 0, align 4
@PBSize = common global i32 0, align 4
@cfg_devscale = common global i32 0, align 4
@cfg_scalefac = common global float 0.000000e+00, align 4
@cfg_razordrop = common global i32 0, align 4
@cfg_cutdrop = common global i32 0, align 4
@cfg_futprune = common global i32 0, align 4
@cfg_smarteval = common global i32 0, align 4
@cfg_attackeval = common global i32 0, align 4
@cfg_onerep = common global i32 0, align 4
@cfg_recap = common global i32 0, align 4
@havercfile = common global i32 0, align 4
@setcode = external global [30 x i8]
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@rcfile = common global %struct.__sFILE* null, align 8
@line = common global [256 x i8] zeroinitializer, align 16
@cfg_booklearn = common global i32 0, align 4
@cfg_ksafety = common global [15 x [9 x i32]] zeroinitializer, align 16
@cfg_tropism = common global [5 x [7 x i32]] zeroinitializer, align 16

; Function Attrs: nounwind optsize ssp uwtable
define void @read_rcfile() #0 {
  store i32 3000000, i32* @TTSize, align 4, !dbg !109, !tbaa !110
  store i32 1000000, i32* @ECacheSize, align 4, !dbg !114, !tbaa !110
  store i32 200000, i32* @PBSize, align 4, !dbg !115, !tbaa !110
  store i32 1, i32* @cfg_devscale, align 4, !dbg !116, !tbaa !110
  store float 1.000000e+00, float* @cfg_scalefac, align 4, !dbg !117, !tbaa !118
  store i32 1, i32* @cfg_razordrop, align 4, !dbg !120, !tbaa !110
  store i32 0, i32* @cfg_cutdrop, align 4, !dbg !121, !tbaa !110
  store i32 1, i32* @cfg_futprune, align 4, !dbg !122, !tbaa !110
  store i32 1, i32* @cfg_smarteval, align 4, !dbg !123, !tbaa !110
  store i32 0, i32* @cfg_attackeval, align 4, !dbg !124, !tbaa !110
  store i32 1, i32* @cfg_onerep, align 4, !dbg !125, !tbaa !110
  store i32 0, i32* @cfg_recap, align 4, !dbg !126, !tbaa !110
  store i32 0, i32* @havercfile, align 4, !dbg !127, !tbaa !110
  tail call void @llvm.dbg.value(metadata i32 110, i64 0, metadata !8, metadata !128), !dbg !129
  %1 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([30 x i8]* @setcode, i64 0, i64 0), i32 0, i64 30, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 110) #3, !dbg !130
  tail call void @initialize_eval() #3, !dbg !131
  tail call void @alloc_hash() #3, !dbg !132
  tail call void @alloc_ecache() #3, !dbg !133
  ret void, !dbg !134
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare void @initialize_eval() #1

; Function Attrs: optsize
declare void @alloc_hash() #1

; Function Attrs: optsize
declare void @alloc_ecache() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!105, !106, !107}
!llvm.ident = !{!108}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !10, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/rcfile.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "read_rcfile", scope: !1, file: !1, line: 35, type: !5, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @read_rcfile, variables: !7)
!5 = !DISubroutineType(types: !6)
!6 = !{null}
!7 = !{!8}
!8 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "setc", scope: !4, file: !1, line: 37, type: !9)
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !76, !80, !81, !82, !83, !84, !85, !86, !91, !96, !97, !98, !99, !100, !101, !102, !103}
!11 = !DIGlobalVariable(name: "rcfile", scope: !0, file: !1, line: 14, type: !12, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @rcfile)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 153, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !14, line: 122, size: 1216, align: 64, elements: !16)
!16 = !{!17, !20, !22, !23, !25, !26, !31, !32, !34, !38, !44, !54, !60, !61, !64, !65, !69, !73, !74, !75}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !15, file: !14, line: 123, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !15, file: !14, line: 124, baseType: !21, size: 32, align: 32, offset: 64)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !15, file: !14, line: 125, baseType: !21, size: 32, align: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !14, line: 126, baseType: !24, size: 16, align: 16, offset: 128)
!24 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !15, file: !14, line: 127, baseType: !24, size: 16, align: 16, offset: 144)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !15, file: !14, line: 128, baseType: !27, size: 128, align: 64, offset: 192)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !14, line: 88, size: 128, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !27, file: !14, line: 89, baseType: !18, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !27, file: !14, line: 90, baseType: !21, size: 32, align: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !15, file: !14, line: 129, baseType: !21, size: 32, align: 32, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !15, file: !14, line: 132, baseType: !33, size: 64, align: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !15, file: !14, line: 133, baseType: !35, size: 64, align: 64, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!21, !33}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !14, line: 134, baseType: !39, size: 64, align: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!21, !33, !42, !21}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !15, file: !14, line: 135, baseType: !45, size: 64, align: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !33, !48, !21}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !14, line: 77, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !50, line: 71, baseType: !51)
!50 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !52, line: 46, baseType: !53)
!52 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !14, line: 136, baseType: !55, size: 64, align: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!21, !33, !58, !21}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !15, file: !14, line: 139, baseType: !27, size: 128, align: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !15, file: !14, line: 140, baseType: !62, size: 64, align: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !14, line: 94, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !15, file: !14, line: 141, baseType: !21, size: 32, align: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !15, file: !14, line: 144, baseType: !66, size: 24, align: 8, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !15, file: !14, line: 145, baseType: !70, size: 8, align: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !15, file: !14, line: 148, baseType: !27, size: 128, align: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !15, file: !14, line: 151, baseType: !21, size: 32, align: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !14, line: 152, baseType: !48, size: 64, align: 64, offset: 1152)
!76 = !DIGlobalVariable(name: "line", scope: !0, file: !1, line: 15, type: !77, isLocal: false, isDefinition: true, variable: [256 x i8]* @line)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, align: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 256)
!80 = !DIGlobalVariable(name: "TTSize", scope: !0, file: !1, line: 17, type: !21, isLocal: false, isDefinition: true, variable: i32* @TTSize)
!81 = !DIGlobalVariable(name: "ECacheSize", scope: !0, file: !1, line: 18, type: !21, isLocal: false, isDefinition: true, variable: i32* @ECacheSize)
!82 = !DIGlobalVariable(name: "PBSize", scope: !0, file: !1, line: 19, type: !21, isLocal: false, isDefinition: true, variable: i32* @PBSize)
!83 = !DIGlobalVariable(name: "cfg_booklearn", scope: !0, file: !1, line: 21, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_booklearn)
!84 = !DIGlobalVariable(name: "cfg_razordrop", scope: !0, file: !1, line: 22, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_razordrop)
!85 = !DIGlobalVariable(name: "cfg_cutdrop", scope: !0, file: !1, line: 23, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_cutdrop)
!86 = !DIGlobalVariable(name: "cfg_ksafety", scope: !0, file: !1, line: 24, type: !87, isLocal: false, isDefinition: true, variable: [15 x [9 x i32]]* @cfg_ksafety)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4320, align: 32, elements: !88)
!88 = !{!89, !90}
!89 = !DISubrange(count: 15)
!90 = !DISubrange(count: 9)
!91 = !DIGlobalVariable(name: "cfg_tropism", scope: !0, file: !1, line: 25, type: !92, isLocal: false, isDefinition: true, variable: [5 x [7 x i32]]* @cfg_tropism)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1120, align: 32, elements: !93)
!93 = !{!94, !95}
!94 = !DISubrange(count: 5)
!95 = !DISubrange(count: 7)
!96 = !DIGlobalVariable(name: "havercfile", scope: !0, file: !1, line: 26, type: !21, isLocal: false, isDefinition: true, variable: i32* @havercfile)
!97 = !DIGlobalVariable(name: "cfg_futprune", scope: !0, file: !1, line: 27, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_futprune)
!98 = !DIGlobalVariable(name: "cfg_devscale", scope: !0, file: !1, line: 28, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_devscale)
!99 = !DIGlobalVariable(name: "cfg_onerep", scope: !0, file: !1, line: 29, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_onerep)
!100 = !DIGlobalVariable(name: "cfg_recap", scope: !0, file: !1, line: 30, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_recap)
!101 = !DIGlobalVariable(name: "cfg_smarteval", scope: !0, file: !1, line: 31, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_smarteval)
!102 = !DIGlobalVariable(name: "cfg_attackeval", scope: !0, file: !1, line: 32, type: !21, isLocal: false, isDefinition: true, variable: i32* @cfg_attackeval)
!103 = !DIGlobalVariable(name: "cfg_scalefac", scope: !0, file: !1, line: 33, type: !104, isLocal: false, isDefinition: true, variable: float* @cfg_scalefac)
!104 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!105 = !{i32 2, !"Dwarf Version", i32 2}
!106 = !{i32 2, !"Debug Info Version", i32 700000003}
!107 = !{i32 1, !"PIC Level", i32 2}
!108 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!109 = !DILocation(line: 39, column: 14, scope: !4)
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !DILocation(line: 40, column: 18, scope: !4)
!115 = !DILocation(line: 41, column: 14, scope: !4)
!116 = !DILocation(line: 43, column: 20, scope: !4)
!117 = !DILocation(line: 44, column: 20, scope: !4)
!118 = !{!119, !119, i64 0}
!119 = !{!"float", !112, i64 0}
!120 = !DILocation(line: 45, column: 21, scope: !4)
!121 = !DILocation(line: 46, column: 19, scope: !4)
!122 = !DILocation(line: 47, column: 20, scope: !4)
!123 = !DILocation(line: 48, column: 21, scope: !4)
!124 = !DILocation(line: 49, column: 22, scope: !4)
!125 = !DILocation(line: 50, column: 18, scope: !4)
!126 = !DILocation(line: 51, column: 17, scope: !4)
!127 = !DILocation(line: 53, column: 18, scope: !4)
!128 = !DIExpression()
!129 = !DILocation(line: 37, column: 16, scope: !4)
!130 = !DILocation(line: 65, column: 7, scope: !4)
!131 = !DILocation(line: 67, column: 7, scope: !4)
!132 = !DILocation(line: 68, column: 7, scope: !4)
!133 = !DILocation(line: 69, column: 7, scope: !4)
!134 = !DILocation(line: 71, column: 7, scope: !4)

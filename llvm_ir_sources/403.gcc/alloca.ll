; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/alloca.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%union.hdr = type { %struct.anon }
%struct.anon = type { %union.hdr*, i8* }

@stack_dir = internal unnamed_addr global i32 0, align 4
@last_alloca_header = internal unnamed_addr global %union.hdr* null, align 8
@find_stack_direction.addr = internal unnamed_addr global i8* null, align 8

; Function Attrs: nounwind optsize ssp uwtable
define i8* @C_alloca(i64 %size) #0 {
  %probe = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !29, metadata !55), !dbg !56
  tail call void @llvm.dbg.value(metadata i8* %probe, i64 0, metadata !31, metadata !55), !dbg !57
  %1 = load i32* @stack_dir, align 4, !dbg !58, !tbaa !60
  %2 = icmp eq i32 %1, 0, !dbg !64
  br i1 %2, label %3, label %4, !dbg !65

; <label>:3                                       ; preds = %0
  tail call fastcc void @find_stack_direction() #5, !dbg !66
  br label %4, !dbg !66

; <label>:4                                       ; preds = %3, %0
  %5 = load %union.hdr** @last_alloca_header, align 8, !dbg !67, !tbaa !68
  tail call void @llvm.dbg.value(metadata %union.hdr* %5, i64 0, metadata !32, metadata !55), !dbg !70
  %6 = icmp eq %union.hdr* %5, null, !dbg !71
  br i1 %6, label %._crit_edge, label %.lr.ph, !dbg !72

.lr.ph:                                           ; preds = %4, %18
  %hp.01 = phi %union.hdr* [ %20, %18 ], [ %5, %4 ]
  %7 = load i32* @stack_dir, align 4, !dbg !73, !tbaa !60
  %8 = icmp sgt i32 %7, 0, !dbg !74
  br i1 %8, label %9, label %thread-pre-split, !dbg !75

; <label>:9                                       ; preds = %.lr.ph
  %10 = getelementptr inbounds %union.hdr* %hp.01, i64 0, i32 0, i32 1, !dbg !76
  %11 = load i8** %10, align 8, !dbg !76, !tbaa !77
  %12 = icmp ugt i8* %11, %probe, !dbg !79
  br i1 %12, label %18, label %._crit_edge, !dbg !80

thread-pre-split:                                 ; preds = %.lr.ph
  %13 = icmp slt i32 %7, 0, !dbg !81
  br i1 %13, label %14, label %._crit_edge, !dbg !82

; <label>:14                                      ; preds = %thread-pre-split
  %15 = getelementptr inbounds %union.hdr* %hp.01, i64 0, i32 0, i32 1, !dbg !83
  %16 = load i8** %15, align 8, !dbg !83, !tbaa !77
  %17 = icmp ult i8* %16, %probe, !dbg !84
  br i1 %17, label %18, label %._crit_edge, !dbg !85

; <label>:18                                      ; preds = %14, %9
  %19 = getelementptr inbounds %union.hdr* %hp.01, i64 0, i32 0, i32 0, !dbg !86
  %20 = load %union.hdr** %19, align 8, !dbg !86, !tbaa !87
  call void @llvm.dbg.value(metadata %union.hdr* %20, i64 0, metadata !34, metadata !55), !dbg !88
  %21 = bitcast %union.hdr* %hp.01 to i8*, !dbg !89
  call void @free(i8* %21) #5, !dbg !90
  call void @llvm.dbg.value(metadata %union.hdr* %20, i64 0, metadata !32, metadata !55), !dbg !70
  %22 = icmp eq %union.hdr* %20, null, !dbg !71
  br i1 %22, label %._crit_edge, label %.lr.ph, !dbg !72

._crit_edge:                                      ; preds = %9, %14, %thread-pre-split, %18, %4
  %hp.0.lcssa = phi %union.hdr* [ null, %4 ], [ %hp.01, %9 ], [ %hp.01, %14 ], [ %hp.01, %thread-pre-split ], [ null, %18 ]
  store %union.hdr* %hp.0.lcssa, %union.hdr** @last_alloca_header, align 8, !dbg !91, !tbaa !68
  %23 = icmp eq i64 %size, 0, !dbg !92
  br i1 %23, label %35, label %24, !dbg !94

; <label>:24                                      ; preds = %._crit_edge
  %25 = add i64 %size, 16, !dbg !95
  %26 = call noalias i8* @xmalloc(i64 %25) #6, !dbg !96
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !39, metadata !55), !dbg !97
  %27 = icmp eq i8* %26, null, !dbg !98
  br i1 %27, label %28, label %29, !dbg !100

; <label>:28                                      ; preds = %24
  call void @abort() #7, !dbg !101
  unreachable, !dbg !101

; <label>:29                                      ; preds = %24
  %30 = load i64* bitcast (%union.hdr** @last_alloca_header to i64*), align 8, !dbg !102, !tbaa !68
  %31 = bitcast i8* %26 to i64*, !dbg !103
  store i64 %30, i64* %31, align 8, !dbg !103, !tbaa !87
  %32 = getelementptr inbounds i8* %26, i64 8, !dbg !104
  %33 = bitcast i8* %32 to i8**, !dbg !104
  call void @llvm.dbg.value(metadata i8* %probe, i64 0, metadata !30, metadata !55), !dbg !105
  store i8* %probe, i8** %33, align 8, !dbg !106, !tbaa !77
  store i8* %26, i8** bitcast (%union.hdr** @last_alloca_header to i8**), align 8, !dbg !107, !tbaa !68
  %34 = getelementptr inbounds i8* %26, i64 16, !dbg !108
  br label %35, !dbg !109

; <label>:35                                      ; preds = %._crit_edge, %29
  %.0 = phi i8* [ %34, %29 ], [ null, %._crit_edge ]
  ret i8* %.0, !dbg !110
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #2

; Function Attrs: noreturn optsize
declare void @abort() #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @find_stack_direction() #0 {
  %dummy = alloca i8, align 1
  %1 = load i8** @find_stack_direction.addr, align 8, !dbg !111, !tbaa !68
  %2 = icmp eq i8* %1, null, !dbg !113
  br i1 %2, label %3, label %4, !dbg !114

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* %dummy, i64 0, metadata !45, metadata !55), !dbg !115
  store i8* %dummy, i8** @find_stack_direction.addr, align 8, !dbg !116, !tbaa !68
  call fastcc void @find_stack_direction() #5, !dbg !118
  br label %8, !dbg !119

; <label>:4                                       ; preds = %0
  %5 = icmp ugt i8* %dummy, %1, !dbg !120
  br i1 %5, label %6, label %7, !dbg !123

; <label>:6                                       ; preds = %4
  store i32 1, i32* @stack_dir, align 4, !dbg !124, !tbaa !60
  br label %8, !dbg !125

; <label>:7                                       ; preds = %4
  store i32 -1, i32* @stack_dir, align 4, !dbg !126, !tbaa !60
  br label %8

; <label>:8                                       ; preds = %6, %7, %3
  ret void, !dbg !127
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !21, globals: !46, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/alloca.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "header", file: !1, line: 134, baseType: !7)
!7 = !DICompositeType(tag: DW_TAG_union_type, name: "hdr", file: !1, line: 126, size: 128, align: 64, elements: !8)
!8 = !{!9, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !7, file: !1, line: 128, baseType: !10, size: 64, align: 8)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, align: 8, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 8)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !7, file: !1, line: 133, baseType: !15, size: 128, align: 64)
!15 = !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 129, size: 128, align: 64, elements: !16)
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !1, line: 131, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "deep", scope: !15, file: !1, line: 132, baseType: !20, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!21 = !{!22, !41}
!22 = !DISubprogram(name: "C_alloca", scope: !1, file: !1, line: 148, type: !23, isLocal: false, isDefinition: true, scopeLine: 150, isOptimized: true, function: i8* (i64)* @C_alloca, variables: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!4, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 62, baseType: !27)
!26 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stddef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32, !34, !39}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !22, file: !1, line: 149, type: !25)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "probe", scope: !22, file: !1, line: 151, type: !11)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "depth", scope: !22, file: !1, line: 152, type: !20)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hp", scope: !33, file: !1, line: 163, type: !5)
!33 = distinct !DILexicalBlock(scope: !22, file: !1, line: 162, column: 3)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !35, file: !1, line: 169, type: !5)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 168, column: 2)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 166, column: 11)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 165, column: 5)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 165, column: 5)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !40, file: !1, line: 187, type: !4)
!40 = distinct !DILexicalBlock(scope: !22, file: !1, line: 186, column: 3)
!41 = !DISubprogram(name: "find_stack_direction", scope: !1, file: !1, line: 92, type: !42, isLocal: true, isDefinition: true, scopeLine: 93, isOptimized: true, function: void ()* @find_stack_direction, variables: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{null}
!44 = !{!45}
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !41, file: !1, line: 95, type: !11)
!46 = !{!47, !49, !50}
!47 = !DIGlobalVariable(name: "stack_dir", scope: !0, file: !1, line: 88, type: !48, isLocal: true, isDefinition: true, variable: i32* @stack_dir)
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIGlobalVariable(name: "addr", scope: !41, file: !1, line: 94, type: !20, isLocal: true, isDefinition: true, variable: i8** @find_stack_direction.addr)
!50 = !DIGlobalVariable(name: "last_alloca_header", scope: !0, file: !1, line: 136, type: !5, isLocal: true, isDefinition: true, variable: %union.hdr** @last_alloca_header)
!51 = !{i32 2, !"Dwarf Version", i32 2}
!52 = !{i32 2, !"Debug Info Version", i32 700000003}
!53 = !{i32 1, !"PIC Level", i32 2}
!54 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!55 = !DIExpression()
!56 = !DILocation(line: 149, column: 13, scope: !22)
!57 = !DILocation(line: 152, column: 18, scope: !22)
!58 = !DILocation(line: 155, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !22, file: !1, line: 155, column: 7)
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !DILocation(line: 155, column: 17, scope: !59)
!65 = !DILocation(line: 155, column: 7, scope: !22)
!66 = !DILocation(line: 156, column: 5, scope: !59)
!67 = !DILocation(line: 165, column: 15, scope: !38)
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !62, i64 0}
!70 = !DILocation(line: 163, column: 22, scope: !33)
!71 = !DILocation(line: 165, column: 38, scope: !37)
!72 = !DILocation(line: 165, column: 5, scope: !38)
!73 = !DILocation(line: 166, column: 12, scope: !36)
!74 = !DILocation(line: 166, column: 22, scope: !36)
!75 = !DILocation(line: 166, column: 26, scope: !36)
!76 = !DILocation(line: 166, column: 35, scope: !36)
!77 = !{!78, !69, i64 8}
!78 = !{!"", !69, i64 0, !69, i64 8}
!79 = !DILocation(line: 166, column: 40, scope: !36)
!80 = !DILocation(line: 167, column: 4, scope: !36)
!81 = !DILocation(line: 167, column: 18, scope: !36)
!82 = !DILocation(line: 167, column: 22, scope: !36)
!83 = !DILocation(line: 167, column: 31, scope: !36)
!84 = !DILocation(line: 167, column: 36, scope: !36)
!85 = !DILocation(line: 166, column: 11, scope: !37)
!86 = !DILocation(line: 169, column: 32, scope: !35)
!87 = !{!78, !69, i64 0}
!88 = !DILocation(line: 169, column: 21, scope: !35)
!89 = !DILocation(line: 171, column: 10, scope: !35)
!90 = !DILocation(line: 171, column: 4, scope: !35)
!91 = !DILocation(line: 178, column: 24, scope: !33)
!92 = !DILocation(line: 181, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !22, file: !1, line: 181, column: 7)
!94 = !DILocation(line: 181, column: 7, scope: !22)
!95 = !DILocation(line: 187, column: 49, scope: !40)
!96 = !DILocation(line: 187, column: 24, scope: !40)
!97 = !DILocation(line: 187, column: 18, scope: !40)
!98 = !DILocation(line: 190, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !40, file: !1, line: 190, column: 9)
!100 = !DILocation(line: 190, column: 9, scope: !40)
!101 = !DILocation(line: 191, column: 7, scope: !99)
!102 = !DILocation(line: 193, column: 32, scope: !40)
!103 = !DILocation(line: 193, column: 30, scope: !40)
!104 = !DILocation(line: 194, column: 25, scope: !40)
!105 = !DILocation(line: 151, column: 13, scope: !22)
!106 = !DILocation(line: 194, column: 30, scope: !40)
!107 = !DILocation(line: 196, column: 24, scope: !40)
!108 = !DILocation(line: 200, column: 32, scope: !40)
!109 = !DILocation(line: 200, column: 5, scope: !40)
!110 = !DILocation(line: 202, column: 1, scope: !22)
!111 = !DILocation(line: 97, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !41, file: !1, line: 97, column: 7)
!113 = !DILocation(line: 97, column: 12, scope: !112)
!114 = !DILocation(line: 97, column: 7, scope: !41)
!115 = !DILocation(line: 95, column: 13, scope: !41)
!116 = !DILocation(line: 99, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 98, column: 5)
!118 = !DILocation(line: 101, column: 7, scope: !117)
!119 = !DILocation(line: 102, column: 5, scope: !117)
!120 = !DILocation(line: 106, column: 36, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 106, column: 11)
!122 = distinct !DILexicalBlock(scope: !112, file: !1, line: 104, column: 5)
!123 = !DILocation(line: 106, column: 11, scope: !122)
!124 = !DILocation(line: 107, column: 12, scope: !121)
!125 = !DILocation(line: 107, column: 2, scope: !121)
!126 = !DILocation(line: 109, column: 12, scope: !121)
!127 = !DILocation(line: 111, column: 1, scope: !41)

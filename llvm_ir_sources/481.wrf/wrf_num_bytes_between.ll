; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @wrf_num_bytes_between_(i8* %a, i8* %b, i32* nocapture %n) #0 {
  tail call void @llvm.dbg.value(metadata i8* %a, i64 0, metadata !12, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* %b, i64 0, metadata !13, metadata !37), !dbg !39
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !14, metadata !37), !dbg !40
  %1 = ptrtoint i8* %a to i64, !dbg !41
  %2 = ptrtoint i8* %b to i64, !dbg !41
  %3 = sub i64 %1, %2, !dbg !41
  %4 = trunc i64 %3 to i32, !dbg !42
  %5 = icmp slt i32 %4, 0, !dbg !43
  %6 = sub nsw i32 0, %4, !dbg !45
  %. = select i1 %5, i32 %6, i32 %4, !dbg !46
  store i32 %., i32* %n, align 4, !dbg !47, !tbaa !48
  ret i32 undef, !dbg !52
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_initial_data_value_(float* nocapture %n) #0 {
  tail call void @llvm.dbg.value(metadata float* %n, i64 0, metadata !21, metadata !37), !dbg !53
  store float 0.000000e+00, float* %n, align 4, !dbg !54, !tbaa !55
  ret i32 undef, !dbg !57
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @what_is_a_nan_(i32* nocapture %n) #0 {
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !26, metadata !37), !dbg !58
  store i32 -4194304, i32* %n, align 4, !dbg !59, !tbaa !48
  ret i32 undef, !dbg !60
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @wrf_mem_copy_(i8* nocapture readonly %a, i8* nocapture %b, i32* nocapture readonly %n) #0 {
  tail call void @llvm.dbg.value(metadata i8* %a, i64 0, metadata !29, metadata !37), !dbg !61
  tail call void @llvm.dbg.value(metadata i8* %b, i64 0, metadata !30, metadata !37), !dbg !62
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !31, metadata !37), !dbg !63
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !37), !dbg !64
  %1 = load i32* %n, align 4, !dbg !65, !tbaa !48
  %2 = icmp sgt i32 %1, 0, !dbg !68
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !69

.lr.ph:                                           ; preds = %0, %.lr.ph
  %i.04 = phi i32 [ %6, %.lr.ph ], [ 0, %0 ]
  %.03 = phi i8* [ %3, %.lr.ph ], [ %a, %0 ]
  %.012 = phi i8* [ %5, %.lr.ph ], [ %b, %0 ]
  %3 = getelementptr inbounds i8* %.03, i64 1, !dbg !70
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !29, metadata !37), !dbg !61
  %4 = load i8* %.03, align 1, !dbg !72, !tbaa !73
  %5 = getelementptr inbounds i8* %.012, i64 1, !dbg !74
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !30, metadata !37), !dbg !62
  store i8 %4, i8* %.012, align 1, !dbg !75, !tbaa !73
  %6 = add nuw nsw i32 %i.04, 1, !dbg !76
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !32, metadata !37), !dbg !64
  %7 = load i32* %n, align 4, !dbg !65, !tbaa !48
  %8 = icmp slt i32 %6, %7, !dbg !68
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !69

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret i32 undef, !dbg !77
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15, !22, !27}
!4 = !DISubprogram(name: "wrf_num_bytes_between_", scope: !1, file: !1, line: 26, type: !5, isLocal: false, isDefinition: true, scopeLine: 30, isOptimized: true, function: i32 (i8*, i8*, i32*)* @wrf_num_bytes_between_, variables: !11)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !8, !10}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!11 = !{!12, !13, !14}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 27, type: !8)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 28, type: !8)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !4, file: !1, line: 29, type: !10)
!15 = !DISubprogram(name: "get_initial_data_value_", scope: !1, file: !1, line: 43, type: !16, isLocal: false, isDefinition: true, scopeLine: 45, isOptimized: true, function: i32 (float*)* @get_initial_data_value_, variables: !20)
!16 = !DISubroutineType(types: !17)
!17 = !{!7, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !15, file: !1, line: 44, type: !18)
!22 = !DISubprogram(name: "what_is_a_nan_", scope: !1, file: !1, line: 50, type: !23, isLocal: false, isDefinition: true, scopeLine: 52, isOptimized: true, function: i32 (i32*)* @what_is_a_nan_, variables: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!7, !10}
!25 = !{!26}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !22, file: !1, line: 51, type: !10)
!27 = !DISubprogram(name: "wrf_mem_copy_", scope: !1, file: !1, line: 70, type: !5, isLocal: false, isDefinition: true, scopeLine: 74, isOptimized: true, function: i32 (i8*, i8*, i32*)* @wrf_mem_copy_, variables: !28)
!28 = !{!29, !30, !31, !32}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !27, file: !1, line: 71, type: !8)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !27, file: !1, line: 72, type: !8)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !27, file: !1, line: 73, type: !10)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !27, file: !1, line: 75, type: !7)
!33 = !{i32 2, !"Dwarf Version", i32 2}
!34 = !{i32 2, !"Debug Info Version", i32 700000003}
!35 = !{i32 1, !"PIC Level", i32 2}
!36 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!37 = !DIExpression()
!38 = !DILocation(line: 27, column: 10, scope: !4)
!39 = !DILocation(line: 28, column: 10, scope: !4)
!40 = !DILocation(line: 29, column: 9, scope: !4)
!41 = !DILocation(line: 31, column: 10, scope: !4)
!42 = !DILocation(line: 31, column: 8, scope: !4)
!43 = !DILocation(line: 32, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !4, file: !1, line: 32, column: 8)
!45 = !DILocation(line: 32, column: 22, scope: !44)
!46 = !DILocation(line: 32, column: 8, scope: !4)
!47 = !DILocation(line: 31, column: 6, scope: !4)
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 33, column: 1, scope: !4)
!53 = !DILocation(line: 44, column: 11, scope: !15)
!54 = !DILocation(line: 46, column: 6, scope: !15)
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !50, i64 0}
!57 = !DILocation(line: 47, column: 1, scope: !15)
!58 = !DILocation(line: 51, column: 9, scope: !22)
!59 = !DILocation(line: 53, column: 6, scope: !22)
!60 = !DILocation(line: 58, column: 1, scope: !22)
!61 = !DILocation(line: 71, column: 10, scope: !27)
!62 = !DILocation(line: 72, column: 10, scope: !27)
!63 = !DILocation(line: 73, column: 9, scope: !27)
!64 = !DILocation(line: 75, column: 7, scope: !27)
!65 = !DILocation(line: 76, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 76, column: 3)
!67 = distinct !DILexicalBlock(scope: !27, file: !1, line: 76, column: 3)
!68 = !DILocation(line: 76, column: 19, scope: !66)
!69 = !DILocation(line: 76, column: 3, scope: !67)
!70 = !DILocation(line: 78, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 77, column: 3)
!72 = !DILocation(line: 78, column: 12, scope: !71)
!73 = !{!50, !50, i64 0}
!74 = !DILocation(line: 78, column: 7, scope: !71)
!75 = !DILocation(line: 78, column: 10, scope: !71)
!76 = !DILocation(line: 76, column: 27, scope: !66)
!77 = !DILocation(line: 80, column: 1, scope: !27)

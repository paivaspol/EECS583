; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IsOverloaded.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTK_IsOverloaded(i8* nocapture readnone %function) #0 {
  tail call void @llvm.dbg.value(metadata i8* %function, i64 0, metadata !12, metadata !30), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !13, metadata !30), !dbg !32
  tail call void @llvm.dbg.value(metadata i8* %function, i64 0, metadata !14, metadata !30), !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_isoverloaded_(i32* nocapture %ret, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ret, i64 0, metadata !22, metadata !30), !dbg !35
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !23, metadata !30), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !24, metadata !30), !dbg !36
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !37
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !25, metadata !30), !dbg !37
  store i32 0, i32* %ret, align 4, !dbg !38, !tbaa !39
  tail call void @free(i8* %1) #6, !dbg !43
  ret void, !dbg !44
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

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
!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IsOverloaded.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15}
!4 = !DISubprogram(name: "CCTK_IsOverloaded", scope: !1, file: !1, line: 18, type: !5, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_IsOverloaded, variables: !11)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{!12, !13, !14}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "function", arg: 1, scope: !4, file: !1, line: 18, type: !8)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !4, file: !1, line: 20, type: !7)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_string", scope: !4, file: !1, line: 22, type: !8)
!15 = !DISubprogram(name: "cctk_isoverloaded_", scope: !1, file: !1, line: 32, type: !16, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_isoverloaded_, variables: !21)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!20 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret", arg: 1, scope: !15, file: !1, line: 33, type: !18)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !15, file: !1, line: 33, type: !19)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !15, file: !1, line: 33, type: !20)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !15, file: !1, line: 35, type: !19)
!26 = !{i32 2, !"Dwarf Version", i32 2}
!27 = !{i32 2, !"Debug Info Version", i32 700000003}
!28 = !{i32 1, !"PIC Level", i32 2}
!29 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!30 = !DIExpression()
!31 = !DILocation(line: 18, column: 35, scope: !4)
!32 = !DILocation(line: 20, column: 7, scope: !4)
!33 = !DILocation(line: 22, column: 15, scope: !4)
!34 = !DILocation(line: 26, column: 3, scope: !4)
!35 = !DILocation(line: 33, column: 9, scope: !15)
!36 = !DILocation(line: 33, column: 14, scope: !15)
!37 = !DILocation(line: 35, column: 3, scope: !15)
!38 = !DILocation(line: 36, column: 8, scope: !15)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 37, column: 3, scope: !15)
!44 = !DILocation(line: 38, column: 1, scope: !15)

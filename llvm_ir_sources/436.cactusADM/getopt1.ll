; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/getopt1.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.option = type { i8*, i32, i32*, i32 }

; Function Attrs: nounwind optsize ssp uwtable
define i32 @getopt_long(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !25, metadata !41), !dbg !42
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !26, metadata !41), !dbg !43
  tail call void @llvm.dbg.value(metadata i8* %options, i64 0, metadata !27, metadata !41), !dbg !44
  tail call void @llvm.dbg.value(metadata %struct.option* %long_options, i64 0, metadata !28, metadata !41), !dbg !45
  tail call void @llvm.dbg.value(metadata i32* %opt_index, i64 0, metadata !29, metadata !41), !dbg !46
  %1 = tail call i32 @_getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index, i32 0) #3, !dbg !47
  ret i32 %1, !dbg !48
}

; Function Attrs: optsize
declare i32 @_getopt_internal(i32, i8**, i8*, %struct.option*, i32*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @getopt_long_only(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !32, metadata !41), !dbg !49
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !33, metadata !41), !dbg !50
  tail call void @llvm.dbg.value(metadata i8* %options, i64 0, metadata !34, metadata !41), !dbg !51
  tail call void @llvm.dbg.value(metadata %struct.option* %long_options, i64 0, metadata !35, metadata !41), !dbg !52
  tail call void @llvm.dbg.value(metadata i32* %opt_index, i64 0, metadata !36, metadata !41), !dbg !53
  %1 = tail call i32 @_getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index, i32 1) #3, !dbg !54
  ret i32 %1, !dbg !55
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/getopt1.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !30}
!4 = !DISubprogram(name: "getopt_long", scope: !1, file: !1, line: 70, type: !5, isLocal: false, isDefinition: true, scopeLine: 76, isOptimized: true, function: i32 (i32, i8**, i8*, %struct.option*, i32*)* @getopt_long, variables: !24)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !7, !8, !12, !14, !22}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !17, line: 83, size: 256, align: 64, elements: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/getopt.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !{!19, !20, !21, !23}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 86, baseType: !12, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !16, file: !17, line: 92, baseType: !7, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !16, file: !17, line: 93, baseType: !22, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !16, file: !17, line: 94, baseType: !7, size: 32, align: 32, offset: 192)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !4, file: !1, line: 71, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !4, file: !1, line: 72, type: !8)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "options", arg: 3, scope: !4, file: !1, line: 73, type: !12)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "long_options", arg: 4, scope: !4, file: !1, line: 74, type: !14)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opt_index", arg: 5, scope: !4, file: !1, line: 75, type: !22)
!30 = !DISubprogram(name: "getopt_long_only", scope: !1, file: !1, line: 86, type: !5, isLocal: false, isDefinition: true, scopeLine: 92, isOptimized: true, function: i32 (i32, i8**, i8*, %struct.option*, i32*)* @getopt_long_only, variables: !31)
!31 = !{!32, !33, !34, !35, !36}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !30, file: !1, line: 87, type: !7)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !30, file: !1, line: 88, type: !8)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "options", arg: 3, scope: !30, file: !1, line: 89, type: !12)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "long_options", arg: 4, scope: !30, file: !1, line: 90, type: !14)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opt_index", arg: 5, scope: !30, file: !1, line: 91, type: !22)
!37 = !{i32 2, !"Dwarf Version", i32 2}
!38 = !{i32 2, !"Debug Info Version", i32 700000003}
!39 = !{i32 1, !"PIC Level", i32 2}
!40 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!41 = !DIExpression()
!42 = !DILocation(line: 71, column: 10, scope: !4)
!43 = !DILocation(line: 72, column: 19, scope: !4)
!44 = !DILocation(line: 73, column: 18, scope: !4)
!45 = !DILocation(line: 74, column: 27, scope: !4)
!46 = !DILocation(line: 75, column: 11, scope: !4)
!47 = !DILocation(line: 77, column: 10, scope: !4)
!48 = !DILocation(line: 77, column: 3, scope: !4)
!49 = !DILocation(line: 87, column: 10, scope: !30)
!50 = !DILocation(line: 88, column: 19, scope: !30)
!51 = !DILocation(line: 89, column: 18, scope: !30)
!52 = !DILocation(line: 90, column: 27, scope: !30)
!53 = !DILocation(line: 91, column: 11, scope: !30)
!54 = !DILocation(line: 93, column: 10, scope: !30)
!55 = !DILocation(line: 93, column: 3, scope: !30)

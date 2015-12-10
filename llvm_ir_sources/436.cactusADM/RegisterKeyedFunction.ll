; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [97 x i8] c"$Header: /cactus/Cactus/src/util/RegisterKeyedFunction.c,v 1.6 2001/05/10 12:35:21 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_RegisterKeyedFunction_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), !dbg !47
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @RegisterKeyedFunction(void ()** nocapture %array, i32 %min, i32 %max, i32 %key, void ()* %func) #1 {
  tail call void @llvm.dbg.value(metadata void ()** %array, i64 0, metadata !28, metadata !48), !dbg !49
  tail call void @llvm.dbg.value(metadata i32 %min, i64 0, metadata !29, metadata !48), !dbg !50
  tail call void @llvm.dbg.value(metadata i32 %max, i64 0, metadata !30, metadata !48), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !31, metadata !48), !dbg !52
  tail call void @llvm.dbg.value(metadata void ()* %func, i64 0, metadata !32, metadata !48), !dbg !53
  %1 = icmp slt i32 %key, %min, !dbg !54
  %2 = icmp sgt i32 %key, %max, !dbg !56
  %or.cond = or i1 %1, %2, !dbg !57
  br i1 %or.cond, label %9, label %3, !dbg !57

; <label>:3                                       ; preds = %0
  %4 = sext i32 %key to i64, !dbg !58
  %5 = getelementptr inbounds void ()** %array, i64 %4, !dbg !58
  %6 = load void ()** %5, align 8, !dbg !58, !tbaa !61
  %7 = icmp eq void ()* %6, null, !dbg !65
  br i1 %7, label %8, label %9, !dbg !66

; <label>:8                                       ; preds = %3
  store void ()* %func, void ()** %5, align 8, !dbg !67, !tbaa !61
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !33, metadata !48), !dbg !69
  br label %9, !dbg !70

; <label>:9                                       ; preds = %0, %3, %8
  %return_code.0 = phi i32 [ 0, %8 ], [ 1, %3 ], [ 2, %0 ]
  ret i32 %return_code.0, !dbg !71
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias void ()** @CreateKeyedFunctionArray(i32 %size) #1 {
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !38, metadata !48), !dbg !72
  %1 = sext i32 %size to i64, !dbg !73
  %2 = shl nsw i64 %1, 3, !dbg !74
  %3 = tail call i8* @malloc(i64 %2) #5, !dbg !75
  %4 = bitcast i8* %3 to void ()**, !dbg !76
  tail call void @llvm.dbg.value(metadata void ()** %4, i64 0, metadata !39, metadata !48), !dbg !77
  %5 = icmp ne i8* %3, null, !dbg !78
  %6 = icmp sgt i32 %size, 0, !dbg !80
  %or.cond = and i1 %5, %6, !dbg !84
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !84

.lr.ph:                                           ; preds = %0
  %7 = add i32 %size, -1, !dbg !85
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3, !dbg !85
  %10 = add nuw nsw i64 %9, 8, !dbg !85
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %10, i32 8, i1 false), !dbg !86
  br label %.loopexit, !dbg !85

.loopexit:                                        ; preds = %0, %.lr.ph
  ret void ()** %4, !dbg !88
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !15, globals: !41, imports: !22)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RegisterKeyedFunctionErrors", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/RegisterKeyedFunction.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "REG_KEYED_FUNCTION_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "REG_KEYED_FUNCTION_ALREADY_ASSIGNED", value: 1)
!8 = !DIEnumerator(name: "REG_KEYED_FUNCTION_RANGE_ERROR", value: 2)
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null}
!15 = !{!16, !23, !34}
!16 = !DISubprogram(name: "CCTKi_version_util_RegisterKeyedFunction_c", scope: !1, file: !1, line: 19, type: !17, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_RegisterKeyedFunction_c, variables: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !{}
!23 = !DISubprogram(name: "RegisterKeyedFunction", scope: !1, file: !1, line: 35, type: !24, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: i32 (void ()**, i32, i32, i32, void ()*)* @RegisterKeyedFunction, variables: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !11, !26, !26, !26, !12}
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "array", arg: 1, scope: !23, file: !1, line: 35, type: !11)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min", arg: 2, scope: !23, file: !1, line: 36, type: !26)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max", arg: 3, scope: !23, file: !1, line: 36, type: !26)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 4, scope: !23, file: !1, line: 37, type: !26)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 5, scope: !23, file: !1, line: 37, type: !12)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !23, file: !1, line: 39, type: !26)
!34 = !DISubprogram(name: "CreateKeyedFunctionArray", scope: !1, file: !1, line: 80, type: !35, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: void ()** (i32)* @CreateKeyedFunctionArray, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!11, !26}
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !34, file: !1, line: 80, type: !26)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "array", scope: !34, file: !1, line: 82, type: !11)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !34, file: !1, line: 83, type: !26)
!41 = !{!42}
!42 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 17, type: !19, isLocal: true, isDefinition: true)
!43 = !{i32 2, !"Dwarf Version", i32 2}
!44 = !{i32 2, !"Debug Info Version", i32 700000003}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!47 = !DILocation(line: 19, column: 1, scope: !16)
!48 = !DIExpression()
!49 = !DILocation(line: 35, column: 34, scope: !23)
!50 = !DILocation(line: 36, column: 31, scope: !23)
!51 = !DILocation(line: 36, column: 40, scope: !23)
!52 = !DILocation(line: 37, column: 31, scope: !23)
!53 = !DILocation(line: 37, column: 43, scope: !23)
!54 = !DILocation(line: 41, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !23, file: !1, line: 41, column: 6)
!56 = !DILocation(line: 41, column: 24, scope: !55)
!57 = !DILocation(line: 41, column: 17, scope: !55)
!58 = !DILocation(line: 43, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 43, column: 8)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 42, column: 3)
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !DILocation(line: 43, column: 19, scope: !59)
!66 = !DILocation(line: 43, column: 8, scope: !60)
!67 = !DILocation(line: 45, column: 18, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 44, column: 5)
!69 = !DILocation(line: 39, column: 7, scope: !23)
!70 = !DILocation(line: 47, column: 5, scope: !68)
!71 = !DILocation(line: 58, column: 3, scope: !23)
!72 = !DILocation(line: 80, column: 40, scope: !34)
!73 = !DILocation(line: 86, column: 35, scope: !34)
!74 = !DILocation(line: 86, column: 39, scope: !34)
!75 = !DILocation(line: 86, column: 28, scope: !34)
!76 = !DILocation(line: 86, column: 11, scope: !34)
!77 = !DILocation(line: 82, column: 11, scope: !34)
!78 = !DILocation(line: 88, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !34, file: !1, line: 88, column: 6)
!80 = !DILocation(line: 91, column: 18, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 91, column: 5)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 91, column: 5)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 89, column: 3)
!84 = !DILocation(line: 88, column: 6, scope: !34)
!85 = !DILocation(line: 91, column: 5, scope: !82)
!86 = !DILocation(line: 93, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !1, line: 92, column: 5)
!88 = !DILocation(line: 97, column: 3, scope: !34)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/sub4vecs.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @sub_four_su3_vecs(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture readonly %b1, %struct.su3_vector* nocapture readonly %b2, %struct.su3_vector* nocapture readonly %b3, %struct.su3_vector* nocapture readonly %b4) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %a, i64 0, metadata !24, metadata !35), !dbg !36
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b1, i64 0, metadata !25, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b2, i64 0, metadata !26, metadata !35), !dbg !38
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b3, i64 0, metadata !27, metadata !35), !dbg !39
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b4, i64 0, metadata !28, metadata !35), !dbg !40
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !29, metadata !35), !dbg !41
  br label %1, !dbg !42

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !44
  %3 = load double* %2, align 8, !dbg !44, !tbaa !48
  %4 = getelementptr inbounds %struct.su3_vector* %b1, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !44
  %5 = load double* %4, align 8, !dbg !44, !tbaa !48
  %6 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !44
  %7 = load double* %6, align 8, !dbg !44, !tbaa !53
  %8 = getelementptr inbounds %struct.su3_vector* %b1, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !44
  %9 = load double* %8, align 8, !dbg !44, !tbaa !53
  %10 = fsub double %7, %9, !dbg !44
  store double %10, double* %6, align 8, !dbg !44, !tbaa !53
  %11 = getelementptr inbounds %struct.su3_vector* %b2, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !54
  %12 = getelementptr inbounds %struct.su3_vector* %b2, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !54
  %13 = load double* %12, align 8, !dbg !54, !tbaa !53
  %14 = fsub double %10, %13, !dbg !54
  store double %14, double* %6, align 8, !dbg !54, !tbaa !53
  %15 = getelementptr inbounds %struct.su3_vector* %b3, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !56
  %16 = load double* %15, align 8, !dbg !56, !tbaa !53
  %17 = fsub double %14, %16, !dbg !56
  store double %17, double* %6, align 8, !dbg !56, !tbaa !53
  %18 = getelementptr inbounds %struct.su3_vector* %b4, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !58
  %19 = load double* %18, align 8, !dbg !58, !tbaa !53
  %20 = insertelement <2 x double> undef, double %3, i32 0, !dbg !44
  %21 = insertelement <2 x double> %20, double %17, i32 1, !dbg !44
  %22 = insertelement <2 x double> undef, double %5, i32 0, !dbg !44
  %23 = insertelement <2 x double> %22, double %19, i32 1, !dbg !44
  %24 = fsub <2 x double> %21, %23, !dbg !44
  %25 = bitcast double* %2 to <2 x double>*, !dbg !44
  store <2 x double> %24, <2 x double>* %25, align 8, !dbg !44, !tbaa !60
  %26 = load double* %11, align 8, !dbg !54, !tbaa !48
  %27 = extractelement <2 x double> %24, i32 0, !dbg !54
  %28 = fsub double %27, %26, !dbg !54
  store double %28, double* %2, align 8, !dbg !54, !tbaa !48
  %29 = getelementptr inbounds %struct.su3_vector* %b3, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !56
  %30 = load double* %29, align 8, !dbg !56, !tbaa !48
  %31 = fsub double %28, %30, !dbg !56
  store double %31, double* %2, align 8, !dbg !56, !tbaa !48
  %32 = getelementptr inbounds %struct.su3_vector* %b4, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !58
  %33 = load double* %32, align 8, !dbg !58, !tbaa !48
  %34 = fsub double %31, %33, !dbg !58
  store double %34, double* %2, align 8, !dbg !58, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !42
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !42
  br i1 %exitcond, label %35, label %1, !dbg !42

; <label>:35                                      ; preds = %1
  ret void, !dbg !61
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/sub4vecs.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "sub_four_su3_vecs", scope: !1, file: !1, line: 13, type: !5, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*)* @sub_four_su3_vecs, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7, !7, !7, !7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !9, line: 15, baseType: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 15, size: 384, align: 64, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !10, file: !9, line: 15, baseType: !13, size: 384, align: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, align: 64, elements: !21)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !15, line: 76, baseType: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 73, size: 128, align: 64, elements: !17)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !16, file: !15, line: 74, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !16, file: !15, line: 75, baseType: !19, size: 64, align: 64, offset: 64)
!21 = !{!22}
!22 = !DISubrange(count: 3)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 13, type: !7)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b1", arg: 2, scope: !4, file: !1, line: 13, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b2", arg: 3, scope: !4, file: !1, line: 13, type: !7)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b3", arg: 4, scope: !4, file: !1, line: 14, type: !7)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b4", arg: 5, scope: !4, file: !1, line: 14, type: !7)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 15, type: !30)
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !{i32 2, !"Dwarf Version", i32 2}
!32 = !{i32 2, !"Debug Info Version", i32 700000003}
!33 = !{i32 1, !"PIC Level", i32 2}
!34 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!35 = !DIExpression()
!36 = !DILocation(line: 13, column: 37, scope: !4)
!37 = !DILocation(line: 13, column: 52, scope: !4)
!38 = !DILocation(line: 13, column: 68, scope: !4)
!39 = !DILocation(line: 14, column: 17, scope: !4)
!40 = !DILocation(line: 14, column: 33, scope: !4)
!41 = !DILocation(line: 15, column: 14, scope: !4)
!42 = !DILocation(line: 16, column: 5, scope: !43)
!43 = distinct !DILexicalBlock(scope: !4, file: !1, line: 16, column: 5)
!44 = !DILocation(line: 17, column: 2, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 17, column: 2)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 16, column: 21)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 16, column: 5)
!48 = !{!49, !50, i64 0}
!49 = !{!"", !50, i64 0, !50, i64 8}
!50 = !{!"double", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!49, !50, i64 8}
!54 = !DILocation(line: 18, column: 2, scope: !55)
!55 = distinct !DILexicalBlock(scope: !46, file: !1, line: 18, column: 2)
!56 = !DILocation(line: 19, column: 2, scope: !57)
!57 = distinct !DILexicalBlock(scope: !46, file: !1, line: 19, column: 2)
!58 = !DILocation(line: 20, column: 2, scope: !59)
!59 = distinct !DILexicalBlock(scope: !46, file: !1, line: 20, column: 2)
!60 = !{!50, !50, i64 0}
!61 = !DILocation(line: 22, column: 1, scope: !4)

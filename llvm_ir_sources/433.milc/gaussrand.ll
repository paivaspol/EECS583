; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/gaussrand.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

@gaussian_rand_no.iset = internal unnamed_addr global i1 false
@gaussian_rand_no.gset = internal unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: nounwind optsize ssp uwtable
define double @gaussian_rand_no(%struct.double_prn* %prn_pt) #0 {
  tail call void @llvm.dbg.value(metadata %struct.double_prn* %prn_pt, i64 0, metadata !27, metadata !40), !dbg !41
  %.b = load i1* @gaussian_rand_no.iset, align 1
  br i1 %.b, label %21, label %.preheader, !dbg !42

.preheader:                                       ; preds = %0, %.preheader
  %1 = tail call double @myrand(%struct.double_prn* %prn_pt) #4, !dbg !43
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !30, metadata !40), !dbg !47
  %2 = tail call double @myrand(%struct.double_prn* %prn_pt) #4, !dbg !48
  %3 = insertelement <2 x double> undef, double %1, i32 0, !dbg !49
  %4 = insertelement <2 x double> %3, double %2, i32 1, !dbg !49
  %5 = fmul <2 x double> %4, <double 2.000000e+00, double 2.000000e+00>, !dbg !49
  %6 = fadd <2 x double> %5, <double -1.000000e+00, double -1.000000e+00>, !dbg !50
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !31, metadata !40), !dbg !51
  %7 = fmul <2 x double> %6, %6, !dbg !52
  %8 = extractelement <2 x double> %7, i32 0, !dbg !53
  %9 = extractelement <2 x double> %7, i32 1, !dbg !53
  %10 = fadd double %8, %9, !dbg !53
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !29, metadata !40), !dbg !54
  %11 = fcmp ult double %10, 1.000000e+00, !dbg !55
  br i1 %11, label %12, label %.preheader, !dbg !56

; <label>:12                                      ; preds = %.preheader
  %13 = tail call double @log(double %10) #5, !dbg !57
  %14 = fsub double -0.000000e+00, %13, !dbg !58
  %15 = fdiv double %14, %10, !dbg !59
  %16 = tail call double @sqrt(double %15) #5, !dbg !60
  tail call void @llvm.dbg.value(metadata double %16, i64 0, metadata !28, metadata !40), !dbg !61
  %17 = extractelement <2 x double> %6, i32 0, !dbg !62
  %18 = fmul double %17, %16, !dbg !62
  store double %18, double* @gaussian_rand_no.gset, align 8, !dbg !63, !tbaa !64
  store i1 true, i1* @gaussian_rand_no.iset, align 1
  %19 = extractelement <2 x double> %6, i32 1, !dbg !68
  %20 = fmul double %19, %16, !dbg !68
  br label %23, !dbg !69

; <label>:21                                      ; preds = %0
  store i1 false, i1* @gaussian_rand_no.iset, align 1
  %22 = load double* @gaussian_rand_no.gset, align 8, !dbg !70, !tbaa !64
  br label %23, !dbg !72

; <label>:23                                      ; preds = %21, %12
  %.0 = phi double [ %20, %12 ], [ %22, %21 ]
  ret double %.0, !dbg !73
}

; Function Attrs: optsize
declare double @myrand(%struct.double_prn*) #1

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize readnone
declare double @log(double) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !32, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/gaussrand.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !{!6}
!6 = !DISubprogram(name: "gaussian_rand_no", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct.double_prn*)* @gaussian_rand_no, variables: !26)
!7 = !DISubroutineType(types: !8)
!8 = !{!4, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_prn", file: !11, line: 11, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/random.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 6, size: 704, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !12, file: !11, line: 8, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !12, file: !11, line: 8, baseType: !15, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !12, file: !11, line: 8, baseType: !15, size: 64, align: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !12, file: !11, line: 8, baseType: !15, size: 64, align: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !12, file: !11, line: 8, baseType: !15, size: 64, align: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !12, file: !11, line: 8, baseType: !15, size: 64, align: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !12, file: !11, line: 8, baseType: !15, size: 64, align: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "multiplier", scope: !12, file: !11, line: 9, baseType: !15, size: 64, align: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "addend", scope: !12, file: !11, line: 9, baseType: !15, size: 64, align: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ic_state", scope: !12, file: !11, line: 9, baseType: !15, size: 64, align: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !12, file: !11, line: 10, baseType: !4, size: 64, align: 64, offset: 640)
!26 = !{!27, !28, !29, !30, !31}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prn_pt", arg: 1, scope: !6, file: !1, line: 16, type: !9)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fac", scope: !6, file: !1, line: 19, type: !4)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !6, file: !1, line: 19, type: !4)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v1", scope: !6, file: !1, line: 19, type: !4)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v2", scope: !6, file: !1, line: 19, type: !4)
!32 = !{!33, !35}
!33 = !DIGlobalVariable(name: "iset", scope: !6, file: !1, line: 17, type: !34, isLocal: true, isDefinition: true)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !DIGlobalVariable(name: "gset", scope: !6, file: !1, line: 18, type: !4, isLocal: true, isDefinition: true, variable: double* @gaussian_rand_no.gset)
!36 = !{i32 2, !"Dwarf Version", i32 2}
!37 = !{i32 2, !"Debug Info Version", i32 700000003}
!38 = !{i32 1, !"PIC Level", i32 2}
!39 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!40 = !DIExpression()
!41 = !DILocation(line: 16, column: 38, scope: !6)
!42 = !DILocation(line: 21, column: 10, scope: !6)
!43 = !DILocation(line: 23, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 22, column: 5)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 21, column: 21)
!46 = distinct !DILexicalBlock(scope: !6, file: !1, line: 21, column: 10)
!47 = !DILocation(line: 19, column: 14, scope: !6)
!48 = !DILocation(line: 24, column: 13, scope: !44)
!49 = !DILocation(line: 23, column: 12, scope: !44)
!50 = !DILocation(line: 23, column: 27, scope: !44)
!51 = !DILocation(line: 19, column: 17, scope: !6)
!52 = !DILocation(line: 25, column: 10, scope: !44)
!53 = !DILocation(line: 25, column: 13, scope: !44)
!54 = !DILocation(line: 19, column: 12, scope: !6)
!55 = !DILocation(line: 26, column: 13, scope: !45)
!56 = !DILocation(line: 26, column: 2, scope: !44)
!57 = !DILocation(line: 27, column: 13, scope: !45)
!58 = !DILocation(line: 27, column: 12, scope: !45)
!59 = !DILocation(line: 27, column: 27, scope: !45)
!60 = !DILocation(line: 27, column: 6, scope: !45)
!61 = !DILocation(line: 19, column: 8, scope: !6)
!62 = !DILocation(line: 28, column: 9, scope: !45)
!63 = !DILocation(line: 28, column: 6, scope: !45)
!64 = !{!65, !65, i64 0}
!65 = !{!"double", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !DILocation(line: 30, column: 11, scope: !45)
!69 = !DILocation(line: 30, column: 2, scope: !45)
!70 = !DILocation(line: 33, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 12)
!72 = !DILocation(line: 33, column: 2, scope: !71)
!73 = !DILocation(line: 35, column: 1, scope: !6)

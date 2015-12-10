; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { i8*, i32 }

@einsteinrest_ = external global %struct.anon
@timerest_ = external global %struct.anon.2
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"psiminustwo\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"isotropic\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"courant\00", align 1
@.str10 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_Einstein() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7), align 8, !dbg !51, !tbaa !52
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !21, metadata !59), !dbg !51
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 8), align 8, !dbg !51, !tbaa !60
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !22, metadata !59), !dbg !51
  %3 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 9), align 8, !dbg !51, !tbaa !61
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !23, metadata !59), !dbg !51
  %4 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !dbg !51, !tbaa !62
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !25, metadata !59), !dbg !51
  %5 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !dbg !51, !tbaa !63
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !26, metadata !59), !dbg !51
  %6 = load i8** getelementptr inbounds (%struct.anon.2* @timerest_, i64 0, i32 0), align 8, !dbg !51, !tbaa !64
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !42, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !59), !dbg !66
  %7 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3, !dbg !67
  %8 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !69
  %9 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !71
  %10 = icmp eq i32 %9, 0, !dbg !71
  br i1 %10, label %11, label %13, !dbg !73

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %5, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !74
  br label %13, !dbg !75

; <label>:13                                      ; preds = %0, %11
  %14 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !76
  %15 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !78
  %16 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !80
  %17 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3, !dbg !82
  %18 = icmp eq i32 %17, 0, !dbg !82
  br i1 %18, label %19, label %22, !dbg !84

; <label>:19                                      ; preds = %13
  %20 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !85
  %21 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !88
  br label %22, !dbg !90

; <label>:22                                      ; preds = %13, %19
  %23 = tail call i32 @CCTK_Equals(i8* %6, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !91
  %24 = icmp eq i32 %23, 0, !dbg !91
  br i1 %24, label %25, label %27, !dbg !93

; <label>:25                                      ; preds = %22
  %26 = tail call i32 @CCTK_Equals(i8* %6, i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !94
  br label %27, !dbg !95

; <label>:27                                      ; preds = %22, %25
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !43, metadata !59), !dbg !51
  ret i32 0, !dbg !96
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_Einstein", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_Einstein, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !12, !13, !14, !15, !16, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !46}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_amplitude", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_sigma2", scope: !4, file: !1, line: 32, type: !10)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiminustwo_cut", scope: !4, file: !1, line: 32, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_sigma", scope: !4, file: !1, line: 32, type: !10)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_omega", scope: !4, file: !1, line: 32, type: !10)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advection", scope: !4, file: !1, line: 32, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !4, file: !1, line: 32, type: !17)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !4, file: !1, line: 32, type: !17)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_lapse", scope: !4, file: !1, line: 32, type: !17)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_shift", scope: !4, file: !1, line: 32, type: !17)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mixed_slicing", scope: !4, file: !1, line: 32, type: !17)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !4, file: !1, line: 32, type: !17)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !4, file: !1, line: 32, type: !17)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing_verbose", scope: !4, file: !1, line: 32, type: !17)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "einstein_register_slicing", scope: !4, file: !1, line: 32, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att", scope: !4, file: !1, line: 32, type: !29)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_pow", scope: !4, file: !1, line: 32, type: !29)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_psipower", scope: !4, file: !1, line: 32, type: !29)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !4, file: !1, line: 32, type: !29)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !4, file: !1, line: 32, type: !29)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_mask", scope: !4, file: !1, line: 32, type: !29)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !4, file: !1, line: 32, type: !10)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gauge_speed", scope: !4, file: !1, line: 32, type: !10)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecalc", scope: !4, file: !1, line: 32, type: !17)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_storage_all", scope: !4, file: !1, line: 32, type: !29)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rsquared_in_sphm", scope: !4, file: !1, line: 32, type: !29)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !4, file: !1, line: 32, type: !17)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !4, file: !1, line: 32, type: !17)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!47 = !{i32 2, !"Dwarf Version", i32 2}
!48 = !{i32 2, !"Debug Info Version", i32 700000003}
!49 = !{i32 1, !"PIC Level", i32 2}
!50 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!51 = !DILocation(line: 32, column: 3, scope: !4)
!52 = !{!53, !57, i64 56}
!53 = !{!"", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !58, i64 112, !58, i64 116, !58, i64 120, !58, i64 124, !58, i64 128, !58, i64 132, !58, i64 136}
!54 = !{!"double", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"any pointer", !55, i64 0}
!58 = !{!"int", !55, i64 0}
!59 = !DIExpression()
!60 = !{!53, !57, i64 64}
!61 = !{!53, !57, i64 72}
!62 = !{!53, !57, i64 88}
!63 = !{!53, !57, i64 96}
!64 = !{!65, !57, i64 0}
!65 = !{!"", !57, i64 0, !58, i64 8}
!66 = !DILocation(line: 33, column: 7, scope: !4)
!67 = !DILocation(line: 36, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !4, file: !1, line: 36, column: 5)
!69 = !DILocation(line: 68, column: 5, scope: !70)
!70 = distinct !DILexicalBlock(scope: !4, file: !1, line: 68, column: 5)
!71 = !DILocation(line: 75, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !4, file: !1, line: 75, column: 5)
!73 = !DILocation(line: 75, column: 38, scope: !72)
!74 = !DILocation(line: 75, column: 41, scope: !72)
!75 = !DILocation(line: 75, column: 5, scope: !4)
!76 = !DILocation(line: 82, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !4, file: !1, line: 82, column: 5)
!78 = !DILocation(line: 89, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !4, file: !1, line: 89, column: 5)
!80 = !DILocation(line: 96, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !4, file: !1, line: 96, column: 5)
!82 = !DILocation(line: 103, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !4, file: !1, line: 103, column: 5)
!84 = !DILocation(line: 103, column: 5, scope: !4)
!85 = !DILocation(line: 107, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 107, column: 8)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 105, column: 1)
!88 = !DILocation(line: 114, column: 8, scope: !89)
!89 = distinct !DILexicalBlock(scope: !87, file: !1, line: 114, column: 8)
!90 = !DILocation(line: 121, column: 1, scope: !87)
!91 = !DILocation(line: 133, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !4, file: !1, line: 133, column: 5)
!93 = !DILocation(line: 133, column: 44, scope: !92)
!94 = !DILocation(line: 133, column: 47, scope: !92)
!95 = !DILocation(line: 133, column: 5, scope: !4)
!96 = !DILocation(line: 141, column: 26, scope: !4)

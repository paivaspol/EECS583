; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [79 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"Converting metric: conformal -> physical\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"Converting metric: physical -> conformal\00", align 1
@.str4 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/ConfPhys.c,v 1.7 2002/01/04 10:00:01 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_ConfPhys_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str4, i64 0, i64 0), !dbg !76
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ConfToPhys(i32 %nx, i32 %ny, i32 %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !17, metadata !77), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !18, metadata !77), !dbg !79
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !19, metadata !77), !dbg !80
  tail call void @llvm.dbg.value(metadata double* %psi, i64 0, metadata !20, metadata !77), !dbg !81
  tail call void @llvm.dbg.value(metadata double* %gxx, i64 0, metadata !21, metadata !77), !dbg !82
  tail call void @llvm.dbg.value(metadata double* %gxy, i64 0, metadata !22, metadata !77), !dbg !83
  tail call void @llvm.dbg.value(metadata double* %gxz, i64 0, metadata !23, metadata !77), !dbg !84
  tail call void @llvm.dbg.value(metadata double* %gyy, i64 0, metadata !24, metadata !77), !dbg !85
  tail call void @llvm.dbg.value(metadata double* %gyz, i64 0, metadata !25, metadata !77), !dbg !86
  tail call void @llvm.dbg.value(metadata double* %gzz, i64 0, metadata !26, metadata !77), !dbg !87
  %1 = tail call i32 @CCTK_Warn(i32 4, i32 66, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !88
  %2 = mul nsw i32 %ny, %nx, !dbg !89
  %3 = mul nsw i32 %2, %nz, !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !28, metadata !77), !dbg !91
  %4 = icmp sgt i32 %3, 0, !dbg !92
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !93

.lr.ph:                                           ; preds = %0
  %5 = mul i32 %nz, %ny, !dbg !93
  %6 = mul i32 %5, %nx, !dbg !93
  %7 = sext i32 %6 to i64
  br label %8, !dbg !93

; <label>:8                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !93
  %9 = getelementptr inbounds double* %psi, i64 %indvars.iv.next, !dbg !94
  %10 = load double* %9, align 8, !dbg !94, !tbaa !96
  %11 = fmul double %10, %10, !dbg !100
  tail call void @llvm.dbg.value(metadata double %11, i64 0, metadata !27, metadata !77), !dbg !101
  %12 = fmul double %11, %11, !dbg !102
  tail call void @llvm.dbg.value(metadata double %12, i64 0, metadata !27, metadata !77), !dbg !101
  %13 = getelementptr inbounds double* %gxx, i64 %indvars.iv.next, !dbg !103
  %14 = load double* %13, align 8, !dbg !104, !tbaa !96
  %15 = fmul double %14, %12, !dbg !104
  store double %15, double* %13, align 8, !dbg !104, !tbaa !96
  %16 = getelementptr inbounds double* %gxy, i64 %indvars.iv.next, !dbg !105
  %17 = load double* %16, align 8, !dbg !106, !tbaa !96
  %18 = fmul double %17, %12, !dbg !106
  store double %18, double* %16, align 8, !dbg !106, !tbaa !96
  %19 = getelementptr inbounds double* %gxz, i64 %indvars.iv.next, !dbg !107
  %20 = load double* %19, align 8, !dbg !108, !tbaa !96
  %21 = fmul double %12, %20, !dbg !108
  store double %21, double* %19, align 8, !dbg !108, !tbaa !96
  %22 = getelementptr inbounds double* %gyy, i64 %indvars.iv.next, !dbg !109
  %23 = load double* %22, align 8, !dbg !110, !tbaa !96
  %24 = fmul double %12, %23, !dbg !110
  store double %24, double* %22, align 8, !dbg !110, !tbaa !96
  %25 = getelementptr inbounds double* %gyz, i64 %indvars.iv.next, !dbg !111
  %26 = load double* %25, align 8, !dbg !112, !tbaa !96
  %27 = fmul double %12, %26, !dbg !112
  store double %27, double* %25, align 8, !dbg !112, !tbaa !96
  %28 = getelementptr inbounds double* %gzz, i64 %indvars.iv.next, !dbg !113
  %29 = load double* %28, align 8, !dbg !114, !tbaa !96
  %30 = fmul double %12, %29, !dbg !114
  store double %30, double* %28, align 8, !dbg !114, !tbaa !96
  %31 = icmp sgt i64 %indvars.iv, 1, !dbg !92
  br i1 %31, label %8, label %._crit_edge, !dbg !93

._crit_edge:                                      ; preds = %8, %0
  ret void, !dbg !115
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @conftophys_(i32* nocapture readonly %nx, i32* nocapture readonly %ny, i32* nocapture readonly %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  tail call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !34, metadata !77), !dbg !116
  tail call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !35, metadata !77), !dbg !117
  tail call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !36, metadata !77), !dbg !118
  tail call void @llvm.dbg.value(metadata double* %psi, i64 0, metadata !37, metadata !77), !dbg !119
  tail call void @llvm.dbg.value(metadata double* %gxx, i64 0, metadata !38, metadata !77), !dbg !120
  tail call void @llvm.dbg.value(metadata double* %gxy, i64 0, metadata !39, metadata !77), !dbg !121
  tail call void @llvm.dbg.value(metadata double* %gxz, i64 0, metadata !40, metadata !77), !dbg !122
  tail call void @llvm.dbg.value(metadata double* %gyy, i64 0, metadata !41, metadata !77), !dbg !123
  tail call void @llvm.dbg.value(metadata double* %gyz, i64 0, metadata !42, metadata !77), !dbg !124
  tail call void @llvm.dbg.value(metadata double* %gzz, i64 0, metadata !43, metadata !77), !dbg !125
  %1 = load i32* %nx, align 4, !dbg !126, !tbaa !127
  %2 = load i32* %ny, align 4, !dbg !129, !tbaa !127
  %3 = load i32* %nz, align 4, !dbg !130, !tbaa !127
  tail call void @ConfToPhys(i32 %1, i32 %2, i32 %3, double* %psi, double* %gxx, double* %gxy, double* %gxz, double* %gyy, double* %gyz, double* %gzz) #5, !dbg !131
  ret void, !dbg !132
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PhysToConf(i32 %nx, i32 %ny, i32 %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !46, metadata !77), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !47, metadata !77), !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !48, metadata !77), !dbg !135
  tail call void @llvm.dbg.value(metadata double* %psi, i64 0, metadata !49, metadata !77), !dbg !136
  tail call void @llvm.dbg.value(metadata double* %gxx, i64 0, metadata !50, metadata !77), !dbg !137
  tail call void @llvm.dbg.value(metadata double* %gxy, i64 0, metadata !51, metadata !77), !dbg !138
  tail call void @llvm.dbg.value(metadata double* %gxz, i64 0, metadata !52, metadata !77), !dbg !139
  tail call void @llvm.dbg.value(metadata double* %gyy, i64 0, metadata !53, metadata !77), !dbg !140
  tail call void @llvm.dbg.value(metadata double* %gyz, i64 0, metadata !54, metadata !77), !dbg !141
  tail call void @llvm.dbg.value(metadata double* %gzz, i64 0, metadata !55, metadata !77), !dbg !142
  %1 = tail call i32 @CCTK_Warn(i32 4, i32 115, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !143
  %2 = mul nsw i32 %ny, %nx, !dbg !144
  %3 = mul nsw i32 %2, %nz, !dbg !145
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !56, metadata !77), !dbg !146
  %4 = icmp sgt i32 %3, 0, !dbg !147
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !148

.lr.ph:                                           ; preds = %0
  %5 = mul i32 %nz, %ny, !dbg !148
  %6 = mul i32 %5, %nx, !dbg !148
  %7 = sext i32 %6 to i64
  br label %8, !dbg !148

; <label>:8                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !148
  %9 = getelementptr inbounds double* %psi, i64 %indvars.iv.next, !dbg !149
  %10 = load double* %9, align 8, !dbg !149, !tbaa !96
  %11 = fmul double %10, %10, !dbg !151
  tail call void @llvm.dbg.value(metadata double %11, i64 0, metadata !57, metadata !77), !dbg !152
  %12 = fmul double %11, %11, !dbg !153
  tail call void @llvm.dbg.value(metadata double %12, i64 0, metadata !57, metadata !77), !dbg !152
  %13 = fdiv double 1.000000e+00, %12, !dbg !154
  tail call void @llvm.dbg.value(metadata double %13, i64 0, metadata !57, metadata !77), !dbg !152
  %14 = getelementptr inbounds double* %gxx, i64 %indvars.iv.next, !dbg !155
  %15 = load double* %14, align 8, !dbg !156, !tbaa !96
  %16 = fmul double %13, %15, !dbg !156
  store double %16, double* %14, align 8, !dbg !156, !tbaa !96
  %17 = getelementptr inbounds double* %gxy, i64 %indvars.iv.next, !dbg !157
  %18 = load double* %17, align 8, !dbg !158, !tbaa !96
  %19 = fmul double %13, %18, !dbg !158
  store double %19, double* %17, align 8, !dbg !158, !tbaa !96
  %20 = getelementptr inbounds double* %gxz, i64 %indvars.iv.next, !dbg !159
  %21 = load double* %20, align 8, !dbg !160, !tbaa !96
  %22 = fmul double %13, %21, !dbg !160
  store double %22, double* %20, align 8, !dbg !160, !tbaa !96
  %23 = getelementptr inbounds double* %gyy, i64 %indvars.iv.next, !dbg !161
  %24 = load double* %23, align 8, !dbg !162, !tbaa !96
  %25 = fmul double %13, %24, !dbg !162
  store double %25, double* %23, align 8, !dbg !162, !tbaa !96
  %26 = getelementptr inbounds double* %gyz, i64 %indvars.iv.next, !dbg !163
  %27 = load double* %26, align 8, !dbg !164, !tbaa !96
  %28 = fmul double %13, %27, !dbg !164
  store double %28, double* %26, align 8, !dbg !164, !tbaa !96
  %29 = getelementptr inbounds double* %gzz, i64 %indvars.iv.next, !dbg !165
  %30 = load double* %29, align 8, !dbg !166, !tbaa !96
  %31 = fmul double %13, %30, !dbg !166
  store double %31, double* %29, align 8, !dbg !166, !tbaa !96
  %32 = icmp sgt i64 %indvars.iv, 1, !dbg !147
  br i1 %32, label %8, label %._crit_edge, !dbg !148

._crit_edge:                                      ; preds = %8, %0
  ret void, !dbg !167
}

; Function Attrs: nounwind optsize ssp uwtable
define void @phystoconf_(i32* nocapture readonly %nx, i32* nocapture readonly %ny, i32* nocapture readonly %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  tail call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !60, metadata !77), !dbg !168
  tail call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !61, metadata !77), !dbg !169
  tail call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !62, metadata !77), !dbg !170
  tail call void @llvm.dbg.value(metadata double* %psi, i64 0, metadata !63, metadata !77), !dbg !171
  tail call void @llvm.dbg.value(metadata double* %gxx, i64 0, metadata !64, metadata !77), !dbg !172
  tail call void @llvm.dbg.value(metadata double* %gxy, i64 0, metadata !65, metadata !77), !dbg !173
  tail call void @llvm.dbg.value(metadata double* %gxz, i64 0, metadata !66, metadata !77), !dbg !174
  tail call void @llvm.dbg.value(metadata double* %gyy, i64 0, metadata !67, metadata !77), !dbg !175
  tail call void @llvm.dbg.value(metadata double* %gyz, i64 0, metadata !68, metadata !77), !dbg !176
  tail call void @llvm.dbg.value(metadata double* %gzz, i64 0, metadata !69, metadata !77), !dbg !177
  %1 = load i32* %nx, align 4, !dbg !178, !tbaa !127
  %2 = load i32* %ny, align 4, !dbg !179, !tbaa !127
  %3 = load i32* %nz, align 4, !dbg !180, !tbaa !127
  tail call void @PhysToConf(i32 %1, i32 %2, i32 %3, double* %psi, double* %gxx, double* %gxy, double* %gxz, double* %gyy, double* %gyz, double* %gzz) #5, !dbg !181
  ret void, !dbg !182
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !70, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !29, !44, !58}
!4 = !DISubprogram(name: "CCTKi_version_CactusEinstein_Einstein_ConfPhys_c", scope: !1, file: !1, line: 24, type: !5, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusEinstein_Einstein_ConfPhys_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "ConfToPhys", scope: !1, file: !1, line: 51, type: !11, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, double*, double*, double*, double*, double*, double*, double*)* @ConfToPhys, variables: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13, !14, !14, !14, !14, !14, !14, !14}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 1, scope: !10, file: !1, line: 51, type: !13)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 2, scope: !10, file: !1, line: 52, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 3, scope: !10, file: !1, line: 53, type: !13)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psi", arg: 4, scope: !10, file: !1, line: 54, type: !14)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxx", arg: 5, scope: !10, file: !1, line: 55, type: !14)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxy", arg: 6, scope: !10, file: !1, line: 56, type: !14)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxz", arg: 7, scope: !10, file: !1, line: 57, type: !14)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyy", arg: 8, scope: !10, file: !1, line: 58, type: !14)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyz", arg: 9, scope: !10, file: !1, line: 59, type: !14)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gzz", arg: 10, scope: !10, file: !1, line: 60, type: !14)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi4", scope: !10, file: !1, line: 62, type: !15)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !10, file: !1, line: 63, type: !13)
!29 = !DISubprogram(name: "conftophys_", scope: !1, file: !1, line: 85, type: !30, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)* @conftophys_, variables: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !32, !14, !14, !14, !14, !14, !14, !14}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 1, scope: !29, file: !1, line: 85, type: !32)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 2, scope: !29, file: !1, line: 86, type: !32)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 3, scope: !29, file: !1, line: 87, type: !32)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psi", arg: 4, scope: !29, file: !1, line: 88, type: !14)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxx", arg: 5, scope: !29, file: !1, line: 89, type: !14)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxy", arg: 6, scope: !29, file: !1, line: 90, type: !14)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxz", arg: 7, scope: !29, file: !1, line: 91, type: !14)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyy", arg: 8, scope: !29, file: !1, line: 92, type: !14)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyz", arg: 9, scope: !29, file: !1, line: 93, type: !14)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gzz", arg: 10, scope: !29, file: !1, line: 94, type: !14)
!44 = !DISubprogram(name: "PhysToConf", scope: !1, file: !1, line: 100, type: !11, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, double*, double*, double*, double*, double*, double*, double*)* @PhysToConf, variables: !45)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 1, scope: !44, file: !1, line: 100, type: !13)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 2, scope: !44, file: !1, line: 101, type: !13)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 3, scope: !44, file: !1, line: 102, type: !13)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psi", arg: 4, scope: !44, file: !1, line: 103, type: !14)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxx", arg: 5, scope: !44, file: !1, line: 104, type: !14)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxy", arg: 6, scope: !44, file: !1, line: 105, type: !14)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxz", arg: 7, scope: !44, file: !1, line: 106, type: !14)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyy", arg: 8, scope: !44, file: !1, line: 107, type: !14)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyz", arg: 9, scope: !44, file: !1, line: 108, type: !14)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gzz", arg: 10, scope: !44, file: !1, line: 109, type: !14)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !44, file: !1, line: 111, type: !13)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi4", scope: !44, file: !1, line: 112, type: !15)
!58 = !DISubprogram(name: "phystoconf_", scope: !1, file: !1, line: 136, type: !30, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)* @phystoconf_, variables: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 1, scope: !58, file: !1, line: 136, type: !32)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 2, scope: !58, file: !1, line: 137, type: !32)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 3, scope: !58, file: !1, line: 138, type: !32)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psi", arg: 4, scope: !58, file: !1, line: 139, type: !14)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxx", arg: 5, scope: !58, file: !1, line: 140, type: !14)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxy", arg: 6, scope: !58, file: !1, line: 141, type: !14)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gxz", arg: 7, scope: !58, file: !1, line: 142, type: !14)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyy", arg: 8, scope: !58, file: !1, line: 143, type: !14)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gyz", arg: 9, scope: !58, file: !1, line: 144, type: !14)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gzz", arg: 10, scope: !58, file: !1, line: 145, type: !14)
!70 = !{!71}
!71 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 22, type: !7, isLocal: true, isDefinition: true)
!72 = !{i32 2, !"Dwarf Version", i32 2}
!73 = !{i32 2, !"Debug Info Version", i32 700000003}
!74 = !{i32 1, !"PIC Level", i32 2}
!75 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!76 = !DILocation(line: 24, column: 1, scope: !4)
!77 = !DIExpression()
!78 = !DILocation(line: 51, column: 22, scope: !10)
!79 = !DILocation(line: 52, column: 22, scope: !10)
!80 = !DILocation(line: 53, column: 22, scope: !10)
!81 = !DILocation(line: 54, column: 29, scope: !10)
!82 = !DILocation(line: 55, column: 29, scope: !10)
!83 = !DILocation(line: 56, column: 29, scope: !10)
!84 = !DILocation(line: 57, column: 29, scope: !10)
!85 = !DILocation(line: 58, column: 29, scope: !10)
!86 = !DILocation(line: 59, column: 29, scope: !10)
!87 = !DILocation(line: 60, column: 29, scope: !10)
!88 = !DILocation(line: 66, column: 3, scope: !10)
!89 = !DILocation(line: 68, column: 14, scope: !10)
!90 = !DILocation(line: 68, column: 19, scope: !10)
!91 = !DILocation(line: 63, column: 7, scope: !10)
!92 = !DILocation(line: 69, column: 18, scope: !10)
!93 = !DILocation(line: 69, column: 3, scope: !10)
!94 = !DILocation(line: 72, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !10, file: !1, line: 70, column: 3)
!96 = !{!97, !97, i64 0}
!97 = !{!"double", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 72, column: 23, scope: !95)
!101 = !DILocation(line: 62, column: 13, scope: !10)
!102 = !DILocation(line: 73, column: 17, scope: !95)
!103 = !DILocation(line: 75, column: 5, scope: !95)
!104 = !DILocation(line: 75, column: 16, scope: !95)
!105 = !DILocation(line: 76, column: 5, scope: !95)
!106 = !DILocation(line: 76, column: 16, scope: !95)
!107 = !DILocation(line: 77, column: 5, scope: !95)
!108 = !DILocation(line: 77, column: 16, scope: !95)
!109 = !DILocation(line: 78, column: 5, scope: !95)
!110 = !DILocation(line: 78, column: 16, scope: !95)
!111 = !DILocation(line: 79, column: 5, scope: !95)
!112 = !DILocation(line: 79, column: 16, scope: !95)
!113 = !DILocation(line: 80, column: 5, scope: !95)
!114 = !DILocation(line: 80, column: 16, scope: !95)
!115 = !DILocation(line: 82, column: 1, scope: !10)
!116 = !DILocation(line: 85, column: 35, scope: !29)
!117 = !DILocation(line: 86, column: 47, scope: !29)
!118 = !DILocation(line: 87, column: 47, scope: !29)
!119 = !DILocation(line: 88, column: 53, scope: !29)
!120 = !DILocation(line: 89, column: 53, scope: !29)
!121 = !DILocation(line: 90, column: 53, scope: !29)
!122 = !DILocation(line: 91, column: 53, scope: !29)
!123 = !DILocation(line: 92, column: 53, scope: !29)
!124 = !DILocation(line: 93, column: 53, scope: !29)
!125 = !DILocation(line: 94, column: 53, scope: !29)
!126 = !DILocation(line: 96, column: 15, scope: !29)
!127 = !{!128, !128, i64 0}
!128 = !{!"int", !98, i64 0}
!129 = !DILocation(line: 96, column: 20, scope: !29)
!130 = !DILocation(line: 96, column: 25, scope: !29)
!131 = !DILocation(line: 96, column: 3, scope: !29)
!132 = !DILocation(line: 97, column: 1, scope: !29)
!133 = !DILocation(line: 100, column: 22, scope: !44)
!134 = !DILocation(line: 101, column: 22, scope: !44)
!135 = !DILocation(line: 102, column: 22, scope: !44)
!136 = !DILocation(line: 103, column: 29, scope: !44)
!137 = !DILocation(line: 104, column: 29, scope: !44)
!138 = !DILocation(line: 105, column: 29, scope: !44)
!139 = !DILocation(line: 106, column: 29, scope: !44)
!140 = !DILocation(line: 107, column: 29, scope: !44)
!141 = !DILocation(line: 108, column: 29, scope: !44)
!142 = !DILocation(line: 109, column: 29, scope: !44)
!143 = !DILocation(line: 115, column: 3, scope: !44)
!144 = !DILocation(line: 117, column: 14, scope: !44)
!145 = !DILocation(line: 117, column: 19, scope: !44)
!146 = !DILocation(line: 111, column: 7, scope: !44)
!147 = !DILocation(line: 118, column: 18, scope: !44)
!148 = !DILocation(line: 118, column: 3, scope: !44)
!149 = !DILocation(line: 121, column: 12, scope: !150)
!150 = distinct !DILexicalBlock(scope: !44, file: !1, line: 119, column: 3)
!151 = !DILocation(line: 121, column: 23, scope: !150)
!152 = !DILocation(line: 112, column: 13, scope: !44)
!153 = !DILocation(line: 122, column: 17, scope: !150)
!154 = !DILocation(line: 125, column: 16, scope: !150)
!155 = !DILocation(line: 127, column: 5, scope: !150)
!156 = !DILocation(line: 127, column: 16, scope: !150)
!157 = !DILocation(line: 128, column: 5, scope: !150)
!158 = !DILocation(line: 128, column: 16, scope: !150)
!159 = !DILocation(line: 129, column: 5, scope: !150)
!160 = !DILocation(line: 129, column: 16, scope: !150)
!161 = !DILocation(line: 130, column: 5, scope: !150)
!162 = !DILocation(line: 130, column: 16, scope: !150)
!163 = !DILocation(line: 131, column: 5, scope: !150)
!164 = !DILocation(line: 131, column: 16, scope: !150)
!165 = !DILocation(line: 132, column: 5, scope: !150)
!166 = !DILocation(line: 132, column: 16, scope: !150)
!167 = !DILocation(line: 134, column: 1, scope: !44)
!168 = !DILocation(line: 136, column: 35, scope: !58)
!169 = !DILocation(line: 137, column: 47, scope: !58)
!170 = !DILocation(line: 138, column: 47, scope: !58)
!171 = !DILocation(line: 139, column: 53, scope: !58)
!172 = !DILocation(line: 140, column: 53, scope: !58)
!173 = !DILocation(line: 141, column: 53, scope: !58)
!174 = !DILocation(line: 142, column: 53, scope: !58)
!175 = !DILocation(line: 143, column: 53, scope: !58)
!176 = !DILocation(line: 144, column: 53, scope: !58)
!177 = !DILocation(line: 145, column: 53, scope: !58)
!178 = !DILocation(line: 147, column: 15, scope: !58)
!179 = !DILocation(line: 147, column: 20, scope: !58)
!180 = !DILocation(line: 147, column: 25, scope: !58)
!181 = !DILocation(line: 147, column: 3, scope: !58)
!182 = !DILocation(line: 148, column: 1, scope: !58)

; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"Converting metric: conformal -> physical\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"Converting metric: physical -> conformal\00", align 1
@.str4 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/ConfPhys.c,v 1.7 2002/01/04 10:00:01 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_ConfPhys_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str4, i64 0, i64 0), !dbg !73
}

; Function Attrs: nounwind optsize uwtable
define void @ConfToPhys(i32 %nx, i32 %ny, i32 %nz, double* nocapture %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !18), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !19), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !20), !dbg !76
  tail call void @llvm.dbg.value(metadata !{double* %psi}, i64 0, metadata !21), !dbg !77
  tail call void @llvm.dbg.value(metadata !{double* %gxx}, i64 0, metadata !22), !dbg !78
  tail call void @llvm.dbg.value(metadata !{double* %gxy}, i64 0, metadata !23), !dbg !79
  tail call void @llvm.dbg.value(metadata !{double* %gxz}, i64 0, metadata !24), !dbg !80
  tail call void @llvm.dbg.value(metadata !{double* %gyy}, i64 0, metadata !25), !dbg !81
  tail call void @llvm.dbg.value(metadata !{double* %gyz}, i64 0, metadata !26), !dbg !82
  tail call void @llvm.dbg.value(metadata !{double* %gzz}, i64 0, metadata !27), !dbg !83
  %call = tail call i32 @CCTK_Warn(i32 4, i32 66, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !84
  %mul = mul nsw i32 %ny, %nx, !dbg !85
  %mul1 = mul nsw i32 %mul, %nz, !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %mul1}, i64 0, metadata !29), !dbg !85
  %cmp41 = icmp sgt i32 %mul1, 0, !dbg !86
  br i1 %cmp41, label %while.body.lr.ph, label %while.end, !dbg !86

while.body.lr.ph:                                 ; preds = %entry
  %0 = mul i32 %nz, %ny, !dbg !86
  %1 = mul i32 %0, %nx, !dbg !86
  %2 = sext i32 %1 to i64
  br label %while.body, !dbg !86

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %2, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !86
  %arrayidx = getelementptr inbounds double* %psi, i64 %indvars.iv.next, !dbg !87
  %3 = load double* %arrayidx, align 8, !dbg !87, !tbaa !89
  %mul4 = fmul double %3, %3, !dbg !87
  tail call void @llvm.dbg.value(metadata !{double %mul4}, i64 0, metadata !28), !dbg !87
  %mul5 = fmul double %mul4, %mul4, !dbg !92
  tail call void @llvm.dbg.value(metadata !{double %mul5}, i64 0, metadata !28), !dbg !92
  %arrayidx7 = getelementptr inbounds double* %gxx, i64 %indvars.iv.next, !dbg !93
  %4 = load double* %arrayidx7, align 8, !dbg !93, !tbaa !89
  %mul8 = fmul double %4, %mul5, !dbg !93
  store double %mul8, double* %arrayidx7, align 8, !dbg !93, !tbaa !89
  %arrayidx10 = getelementptr inbounds double* %gxy, i64 %indvars.iv.next, !dbg !94
  %5 = load double* %arrayidx10, align 8, !dbg !94, !tbaa !89
  %mul11 = fmul double %5, %mul5, !dbg !94
  store double %mul11, double* %arrayidx10, align 8, !dbg !94, !tbaa !89
  %arrayidx13 = getelementptr inbounds double* %gxz, i64 %indvars.iv.next, !dbg !95
  %6 = load double* %arrayidx13, align 8, !dbg !95, !tbaa !89
  %mul14 = fmul double %mul5, %6, !dbg !95
  store double %mul14, double* %arrayidx13, align 8, !dbg !95, !tbaa !89
  %arrayidx16 = getelementptr inbounds double* %gyy, i64 %indvars.iv.next, !dbg !96
  %7 = load double* %arrayidx16, align 8, !dbg !96, !tbaa !89
  %mul17 = fmul double %mul5, %7, !dbg !96
  store double %mul17, double* %arrayidx16, align 8, !dbg !96, !tbaa !89
  %arrayidx19 = getelementptr inbounds double* %gyz, i64 %indvars.iv.next, !dbg !97
  %8 = load double* %arrayidx19, align 8, !dbg !97, !tbaa !89
  %mul20 = fmul double %mul5, %8, !dbg !97
  store double %mul20, double* %arrayidx19, align 8, !dbg !97, !tbaa !89
  %arrayidx22 = getelementptr inbounds double* %gzz, i64 %indvars.iv.next, !dbg !98
  %9 = load double* %arrayidx22, align 8, !dbg !98, !tbaa !89
  %mul23 = fmul double %mul5, %9, !dbg !98
  store double %mul23, double* %arrayidx22, align 8, !dbg !98, !tbaa !89
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !86
  %cmp = icmp sgt i32 %10, 0, !dbg !86
  br i1 %cmp, label %while.body, label %while.end, !dbg !86

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !99
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @conftophys_(i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, double* nocapture %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !35), !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !36), !dbg !101
  tail call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !37), !dbg !102
  tail call void @llvm.dbg.value(metadata !{double* %psi}, i64 0, metadata !38), !dbg !103
  tail call void @llvm.dbg.value(metadata !{double* %gxx}, i64 0, metadata !39), !dbg !104
  tail call void @llvm.dbg.value(metadata !{double* %gxy}, i64 0, metadata !40), !dbg !105
  tail call void @llvm.dbg.value(metadata !{double* %gxz}, i64 0, metadata !41), !dbg !106
  tail call void @llvm.dbg.value(metadata !{double* %gyy}, i64 0, metadata !42), !dbg !107
  tail call void @llvm.dbg.value(metadata !{double* %gyz}, i64 0, metadata !43), !dbg !108
  tail call void @llvm.dbg.value(metadata !{double* %gzz}, i64 0, metadata !44), !dbg !109
  %0 = load i32* %nx, align 4, !dbg !110, !tbaa !111
  %1 = load i32* %ny, align 4, !dbg !110, !tbaa !111
  %2 = load i32* %nz, align 4, !dbg !110, !tbaa !111
  tail call void @ConfToPhys(i32 %0, i32 %1, i32 %2, double* %psi, double* %gxx, double* %gxy, double* %gxz, double* %gyy, double* %gyz, double* %gzz) #5, !dbg !110
  ret void, !dbg !112
}

; Function Attrs: nounwind optsize uwtable
define void @PhysToConf(i32 %nx, i32 %ny, i32 %nz, double* nocapture %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !47), !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !48), !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !49), !dbg !115
  tail call void @llvm.dbg.value(metadata !{double* %psi}, i64 0, metadata !50), !dbg !116
  tail call void @llvm.dbg.value(metadata !{double* %gxx}, i64 0, metadata !51), !dbg !117
  tail call void @llvm.dbg.value(metadata !{double* %gxy}, i64 0, metadata !52), !dbg !118
  tail call void @llvm.dbg.value(metadata !{double* %gxz}, i64 0, metadata !53), !dbg !119
  tail call void @llvm.dbg.value(metadata !{double* %gyy}, i64 0, metadata !54), !dbg !120
  tail call void @llvm.dbg.value(metadata !{double* %gyz}, i64 0, metadata !55), !dbg !121
  tail call void @llvm.dbg.value(metadata !{double* %gzz}, i64 0, metadata !56), !dbg !122
  %call = tail call i32 @CCTK_Warn(i32 4, i32 115, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !123
  %mul = mul nsw i32 %ny, %nx, !dbg !124
  %mul1 = mul nsw i32 %mul, %nz, !dbg !124
  tail call void @llvm.dbg.value(metadata !{i32 %mul1}, i64 0, metadata !57), !dbg !124
  %cmp42 = icmp sgt i32 %mul1, 0, !dbg !125
  br i1 %cmp42, label %while.body.lr.ph, label %while.end, !dbg !125

while.body.lr.ph:                                 ; preds = %entry
  %0 = mul i32 %nz, %ny, !dbg !125
  %1 = mul i32 %0, %nx, !dbg !125
  %2 = sext i32 %1 to i64
  br label %while.body, !dbg !125

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %2, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !125
  %arrayidx = getelementptr inbounds double* %psi, i64 %indvars.iv.next, !dbg !126
  %3 = load double* %arrayidx, align 8, !dbg !126, !tbaa !89
  %mul4 = fmul double %3, %3, !dbg !126
  tail call void @llvm.dbg.value(metadata !{double %mul4}, i64 0, metadata !58), !dbg !126
  %mul5 = fmul double %mul4, %mul4, !dbg !128
  tail call void @llvm.dbg.value(metadata !{double %mul5}, i64 0, metadata !58), !dbg !128
  %div = fdiv double 1.000000e+00, %mul5, !dbg !129
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !58), !dbg !129
  %arrayidx7 = getelementptr inbounds double* %gxx, i64 %indvars.iv.next, !dbg !130
  %4 = load double* %arrayidx7, align 8, !dbg !130, !tbaa !89
  %mul8 = fmul double %div, %4, !dbg !130
  store double %mul8, double* %arrayidx7, align 8, !dbg !130, !tbaa !89
  %arrayidx10 = getelementptr inbounds double* %gxy, i64 %indvars.iv.next, !dbg !131
  %5 = load double* %arrayidx10, align 8, !dbg !131, !tbaa !89
  %mul11 = fmul double %div, %5, !dbg !131
  store double %mul11, double* %arrayidx10, align 8, !dbg !131, !tbaa !89
  %arrayidx13 = getelementptr inbounds double* %gxz, i64 %indvars.iv.next, !dbg !132
  %6 = load double* %arrayidx13, align 8, !dbg !132, !tbaa !89
  %mul14 = fmul double %div, %6, !dbg !132
  store double %mul14, double* %arrayidx13, align 8, !dbg !132, !tbaa !89
  %arrayidx16 = getelementptr inbounds double* %gyy, i64 %indvars.iv.next, !dbg !133
  %7 = load double* %arrayidx16, align 8, !dbg !133, !tbaa !89
  %mul17 = fmul double %div, %7, !dbg !133
  store double %mul17, double* %arrayidx16, align 8, !dbg !133, !tbaa !89
  %arrayidx19 = getelementptr inbounds double* %gyz, i64 %indvars.iv.next, !dbg !134
  %8 = load double* %arrayidx19, align 8, !dbg !134, !tbaa !89
  %mul20 = fmul double %div, %8, !dbg !134
  store double %mul20, double* %arrayidx19, align 8, !dbg !134, !tbaa !89
  %arrayidx22 = getelementptr inbounds double* %gzz, i64 %indvars.iv.next, !dbg !135
  %9 = load double* %arrayidx22, align 8, !dbg !135, !tbaa !89
  %mul23 = fmul double %div, %9, !dbg !135
  store double %mul23, double* %arrayidx22, align 8, !dbg !135, !tbaa !89
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !125
  %cmp = icmp sgt i32 %10, 0, !dbg !125
  br i1 %cmp, label %while.body, label %while.end, !dbg !125

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !136
}

; Function Attrs: nounwind optsize uwtable
define void @phystoconf_(i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, double* nocapture %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !61), !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !62), !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !63), !dbg !139
  tail call void @llvm.dbg.value(metadata !{double* %psi}, i64 0, metadata !64), !dbg !140
  tail call void @llvm.dbg.value(metadata !{double* %gxx}, i64 0, metadata !65), !dbg !141
  tail call void @llvm.dbg.value(metadata !{double* %gxy}, i64 0, metadata !66), !dbg !142
  tail call void @llvm.dbg.value(metadata !{double* %gxz}, i64 0, metadata !67), !dbg !143
  tail call void @llvm.dbg.value(metadata !{double* %gyy}, i64 0, metadata !68), !dbg !144
  tail call void @llvm.dbg.value(metadata !{double* %gyz}, i64 0, metadata !69), !dbg !145
  tail call void @llvm.dbg.value(metadata !{double* %gzz}, i64 0, metadata !70), !dbg !146
  %0 = load i32* %nx, align 4, !dbg !147, !tbaa !111
  %1 = load i32* %ny, align 4, !dbg !147, !tbaa !111
  %2 = load i32* %nz, align 4, !dbg !147, !tbaa !111
  tail call void @PhysToConf(i32 %0, i32 %1, i32 %2, double* %psi, double* %gxx, double* %gxy, double* %gxz, double* %gyy, double* %gyz, double* %gzz) #5, !dbg !147
  ret void, !dbg !148
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !71, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !30, metadata !45, metadata !59}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusEinstein_Einstein_ConfPhys_c", metadata !"CCTKi_version_CactusEinstein_Einstein_ConfPhys_c", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusEinstein_Einstein_ConfPhys_c, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [CCTKi_version_CactusEinstein_Einstein_ConfPhys_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ConfToPhys", metadata !"ConfToPhys", metadata !"", i32 51, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, double*, double*, double*, double*, double*, double*, double*)* @ConfToPhys, null, null, metadata !17, i32 61} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 61] [ConfToPhys]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14, metadata !14, metadata !14, metadata !15, metadata !15, metadata !15, metadata !15, metadata !15, metadata !15, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!16 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!18 = metadata !{i32 786689, metadata !11, metadata !"nx", metadata !5, i32 16777267, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 51]
!19 = metadata !{i32 786689, metadata !11, metadata !"ny", metadata !5, i32 33554484, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 52]
!20 = metadata !{i32 786689, metadata !11, metadata !"nz", metadata !5, i32 50331701, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 53]
!21 = metadata !{i32 786689, metadata !11, metadata !"psi", metadata !5, i32 67108918, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psi] [line 54]
!22 = metadata !{i32 786689, metadata !11, metadata !"gxx", metadata !5, i32 83886135, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxx] [line 55]
!23 = metadata !{i32 786689, metadata !11, metadata !"gxy", metadata !5, i32 100663352, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxy] [line 56]
!24 = metadata !{i32 786689, metadata !11, metadata !"gxz", metadata !5, i32 117440569, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxz] [line 57]
!25 = metadata !{i32 786689, metadata !11, metadata !"gyy", metadata !5, i32 134217786, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyy] [line 58]
!26 = metadata !{i32 786689, metadata !11, metadata !"gyz", metadata !5, i32 150995003, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyz] [line 59]
!27 = metadata !{i32 786689, metadata !11, metadata !"gzz", metadata !5, i32 167772220, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gzz] [line 60]
!28 = metadata !{i32 786688, metadata !11, metadata !"psi4", metadata !5, i32 62, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psi4] [line 62]
!29 = metadata !{i32 786688, metadata !11, metadata !"index", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 63]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"conftophys_", metadata !"conftophys_", metadata !"", i32 85, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)* @conftophys_, null, null, metadata !34, i32 95} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 95] [conftophys_]
!31 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !33, metadata !33, metadata !33, metadata !15, metadata !15, metadata !15, metadata !15, metadata !15, metadata !15, metadata !15}
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!35 = metadata !{i32 786689, metadata !30, metadata !"nx", metadata !5, i32 16777301, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 85]
!36 = metadata !{i32 786689, metadata !30, metadata !"ny", metadata !5, i32 33554518, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 86]
!37 = metadata !{i32 786689, metadata !30, metadata !"nz", metadata !5, i32 50331735, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 87]
!38 = metadata !{i32 786689, metadata !30, metadata !"psi", metadata !5, i32 67108952, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psi] [line 88]
!39 = metadata !{i32 786689, metadata !30, metadata !"gxx", metadata !5, i32 83886169, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxx] [line 89]
!40 = metadata !{i32 786689, metadata !30, metadata !"gxy", metadata !5, i32 100663386, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxy] [line 90]
!41 = metadata !{i32 786689, metadata !30, metadata !"gxz", metadata !5, i32 117440603, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxz] [line 91]
!42 = metadata !{i32 786689, metadata !30, metadata !"gyy", metadata !5, i32 134217820, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyy] [line 92]
!43 = metadata !{i32 786689, metadata !30, metadata !"gyz", metadata !5, i32 150995037, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyz] [line 93]
!44 = metadata !{i32 786689, metadata !30, metadata !"gzz", metadata !5, i32 167772254, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gzz] [line 94]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PhysToConf", metadata !"PhysToConf", metadata !"", i32 100, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, double*, double*, double*, double*, double*, double*, double*)* @PhysToConf, null, null, metadata !46, i32 110} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 110] [PhysToConf]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!47 = metadata !{i32 786689, metadata !45, metadata !"nx", metadata !5, i32 16777316, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 100]
!48 = metadata !{i32 786689, metadata !45, metadata !"ny", metadata !5, i32 33554533, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 101]
!49 = metadata !{i32 786689, metadata !45, metadata !"nz", metadata !5, i32 50331750, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 102]
!50 = metadata !{i32 786689, metadata !45, metadata !"psi", metadata !5, i32 67108967, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psi] [line 103]
!51 = metadata !{i32 786689, metadata !45, metadata !"gxx", metadata !5, i32 83886184, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxx] [line 104]
!52 = metadata !{i32 786689, metadata !45, metadata !"gxy", metadata !5, i32 100663401, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxy] [line 105]
!53 = metadata !{i32 786689, metadata !45, metadata !"gxz", metadata !5, i32 117440618, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxz] [line 106]
!54 = metadata !{i32 786689, metadata !45, metadata !"gyy", metadata !5, i32 134217835, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyy] [line 107]
!55 = metadata !{i32 786689, metadata !45, metadata !"gyz", metadata !5, i32 150995052, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyz] [line 108]
!56 = metadata !{i32 786689, metadata !45, metadata !"gzz", metadata !5, i32 167772269, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gzz] [line 109]
!57 = metadata !{i32 786688, metadata !45, metadata !"index", metadata !5, i32 111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 111]
!58 = metadata !{i32 786688, metadata !45, metadata !"psi4", metadata !5, i32 112, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psi4] [line 112]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"phystoconf_", metadata !"phystoconf_", metadata !"", i32 136, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)* @phystoconf_, null, null, metadata !60, i32 146} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 146] [phystoconf_]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!61 = metadata !{i32 786689, metadata !59, metadata !"nx", metadata !5, i32 16777352, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 136]
!62 = metadata !{i32 786689, metadata !59, metadata !"ny", metadata !5, i32 33554569, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 137]
!63 = metadata !{i32 786689, metadata !59, metadata !"nz", metadata !5, i32 50331786, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 138]
!64 = metadata !{i32 786689, metadata !59, metadata !"psi", metadata !5, i32 67109003, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psi] [line 139]
!65 = metadata !{i32 786689, metadata !59, metadata !"gxx", metadata !5, i32 83886220, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxx] [line 140]
!66 = metadata !{i32 786689, metadata !59, metadata !"gxy", metadata !5, i32 100663437, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxy] [line 141]
!67 = metadata !{i32 786689, metadata !59, metadata !"gxz", metadata !5, i32 117440654, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gxz] [line 142]
!68 = metadata !{i32 786689, metadata !59, metadata !"gyy", metadata !5, i32 134217871, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyy] [line 143]
!69 = metadata !{i32 786689, metadata !59, metadata !"gyz", metadata !5, i32 150995088, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gyz] [line 144]
!70 = metadata !{i32 786689, metadata !59, metadata !"gzz", metadata !5, i32 167772305, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gzz] [line 145]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 22, metadata !8, i32 1, i32 1, null, null}
!73 = metadata !{i32 24, i32 0, metadata !4, null}
!74 = metadata !{i32 51, i32 0, metadata !11, null}
!75 = metadata !{i32 52, i32 0, metadata !11, null}
!76 = metadata !{i32 53, i32 0, metadata !11, null}
!77 = metadata !{i32 54, i32 0, metadata !11, null}
!78 = metadata !{i32 55, i32 0, metadata !11, null}
!79 = metadata !{i32 56, i32 0, metadata !11, null}
!80 = metadata !{i32 57, i32 0, metadata !11, null}
!81 = metadata !{i32 58, i32 0, metadata !11, null} ; [ DW_TAG_imported_module ]
!82 = metadata !{i32 59, i32 0, metadata !11, null}
!83 = metadata !{i32 60, i32 0, metadata !11, null}
!84 = metadata !{i32 66, i32 0, metadata !11, null}
!85 = metadata !{i32 68, i32 0, metadata !11, null}
!86 = metadata !{i32 69, i32 0, metadata !11, null}
!87 = metadata !{i32 72, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !11, i32 70, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c]
!89 = metadata !{metadata !"double", metadata !90}
!90 = metadata !{metadata !"omnipotent char", metadata !91}
!91 = metadata !{metadata !"Simple C/C++ TBAA"}
!92 = metadata !{i32 73, i32 0, metadata !88, null}
!93 = metadata !{i32 75, i32 0, metadata !88, null}
!94 = metadata !{i32 76, i32 0, metadata !88, null}
!95 = metadata !{i32 77, i32 0, metadata !88, null}
!96 = metadata !{i32 78, i32 0, metadata !88, null}
!97 = metadata !{i32 79, i32 0, metadata !88, null}
!98 = metadata !{i32 80, i32 0, metadata !88, null}
!99 = metadata !{i32 82, i32 0, metadata !11, null}
!100 = metadata !{i32 85, i32 0, metadata !30, null}
!101 = metadata !{i32 86, i32 0, metadata !30, null}
!102 = metadata !{i32 87, i32 0, metadata !30, null}
!103 = metadata !{i32 88, i32 0, metadata !30, null}
!104 = metadata !{i32 89, i32 0, metadata !30, null}
!105 = metadata !{i32 90, i32 0, metadata !30, null}
!106 = metadata !{i32 91, i32 0, metadata !30, null}
!107 = metadata !{i32 92, i32 0, metadata !30, null}
!108 = metadata !{i32 93, i32 0, metadata !30, null}
!109 = metadata !{i32 94, i32 0, metadata !30, null}
!110 = metadata !{i32 96, i32 0, metadata !30, null}
!111 = metadata !{metadata !"int", metadata !90}
!112 = metadata !{i32 97, i32 0, metadata !30, null}
!113 = metadata !{i32 100, i32 0, metadata !45, null}
!114 = metadata !{i32 101, i32 0, metadata !45, null}
!115 = metadata !{i32 102, i32 0, metadata !45, null}
!116 = metadata !{i32 103, i32 0, metadata !45, null}
!117 = metadata !{i32 104, i32 0, metadata !45, null}
!118 = metadata !{i32 105, i32 0, metadata !45, null}
!119 = metadata !{i32 106, i32 0, metadata !45, null}
!120 = metadata !{i32 107, i32 0, metadata !45, null}
!121 = metadata !{i32 108, i32 0, metadata !45, null}
!122 = metadata !{i32 109, i32 0, metadata !45, null}
!123 = metadata !{i32 115, i32 0, metadata !45, null}
!124 = metadata !{i32 117, i32 0, metadata !45, null}
!125 = metadata !{i32 118, i32 0, metadata !45, null}
!126 = metadata !{i32 121, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !45, i32 119, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c]
!128 = metadata !{i32 122, i32 0, metadata !127, null}
!129 = metadata !{i32 125, i32 0, metadata !127, null}
!130 = metadata !{i32 127, i32 0, metadata !127, null}
!131 = metadata !{i32 128, i32 0, metadata !127, null}
!132 = metadata !{i32 129, i32 0, metadata !127, null}
!133 = metadata !{i32 130, i32 0, metadata !127, null}
!134 = metadata !{i32 131, i32 0, metadata !127, null}
!135 = metadata !{i32 132, i32 0, metadata !127, null}
!136 = metadata !{i32 134, i32 0, metadata !45, null}
!137 = metadata !{i32 136, i32 0, metadata !59, null}
!138 = metadata !{i32 137, i32 0, metadata !59, null}
!139 = metadata !{i32 138, i32 0, metadata !59, null}
!140 = metadata !{i32 139, i32 0, metadata !59, null}
!141 = metadata !{i32 140, i32 0, metadata !59, null}
!142 = metadata !{i32 141, i32 0, metadata !59, null}
!143 = metadata !{i32 142, i32 0, metadata !59, null}
!144 = metadata !{i32 143, i32 0, metadata !59, null}
!145 = metadata !{i32 144, i32 0, metadata !59, null}
!146 = metadata !{i32 145, i32 0, metadata !59, null}
!147 = metadata !{i32 147, i32 0, metadata !59, null}
!148 = metadata !{i32 148, i32 0, metadata !59, null}

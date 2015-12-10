; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind optsize uwtable
define void @calc_mu_and_q(%struct.t_nsborder* nocapture %nsb, [3 x float]* nocapture %x, float* nocapture %q, float* nocapture %mu, float* nocapture %qsum) #0 {
entry:
  %tmpmu = alloca [3 x double], align 16
  %tmpmu79 = bitcast [3 x double]* %tmpmu to i8*
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !37), !dbg !128
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !38), !dbg !128
  call void @llvm.dbg.value(metadata !{float* %q}, i64 0, metadata !39), !dbg !128
  call void @llvm.dbg.value(metadata !{float* %mu}, i64 0, metadata !40), !dbg !128
  call void @llvm.dbg.value(metadata !{float* %qsum}, i64 0, metadata !41), !dbg !128
  call void @llvm.dbg.declare(metadata !{[3 x double]* %tmpmu}, metadata !46), !dbg !129
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !130
  %0 = load i32* %nodeid, align 4, !dbg !130, !tbaa !131
  %idxprom = sext i32 %0 to i64, !dbg !130
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom, !dbg !130
  %1 = load i32* %arrayidx, align 4, !dbg !130, !tbaa !131
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !43), !dbg !130
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !134
  %2 = load i32* %arrayidx3, align 4, !dbg !134, !tbaa !131
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !44), !dbg !134
  call void @llvm.dbg.value(metadata !135, i64 0, metadata !49), !dbg !136
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !137
  call void @llvm.memset.p0i8.i64(i8* %tmpmu79, i8 0, i64 24, i32 16, i1 false), !dbg !139
  %add = add nsw i32 %2, %1, !dbg !134
  %cmp765 = icmp sgt i32 %2, 0, !dbg !140
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !142
  br i1 %cmp765, label %for.cond9.preheader.lr.ph, label %for.cond31.preheader, !dbg !140

for.cond9.preheader.lr.ph:                        ; preds = %entry
  %3 = sext i32 %1 to i64
  br label %for.cond9.preheader, !dbg !140

for.cond9.preheader:                              ; preds = %for.cond9.preheader.lr.ph, %for.end23
  %indvars.iv73 = phi i64 [ %3, %for.cond9.preheader.lr.ph ], [ %indvars.iv.next74, %for.end23 ]
  %tmpq.067 = phi double [ 0.000000e+00, %for.cond9.preheader.lr.ph ], [ %add27, %for.end23 ]
  %arrayidx13 = getelementptr inbounds float* %q, i64 %indvars.iv73, !dbg !145
  %4 = load float* %arrayidx13, align 4, !dbg !145, !tbaa !147
  br label %for.body11, !dbg !142

for.cond6.for.cond31.preheader_crit_edge:         ; preds = %for.end23
  %phitmp = fptrunc double %add27 to float, !dbg !140
  br label %for.cond31.preheader, !dbg !140

for.cond31.preheader:                             ; preds = %for.cond6.for.cond31.preheader_crit_edge, %entry
  %tmpq.0.lcssa = phi float [ %phitmp, %for.cond6.for.cond31.preheader_crit_edge ], [ 0.000000e+00, %entry ]
  br label %for.body34, !dbg !148

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %indvars.iv69 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next70, %for.body11 ]
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv73, i64 %indvars.iv69, !dbg !145
  %5 = load float* %arrayidx17, align 4, !dbg !145, !tbaa !147
  %mul = fmul float %4, %5, !dbg !145
  %conv = fpext float %mul to double, !dbg !145
  %arrayidx19 = getelementptr inbounds [3 x double]* %tmpmu, i64 0, i64 %indvars.iv69, !dbg !145
  %6 = load double* %arrayidx19, align 8, !dbg !145, !tbaa !150
  %add20 = fadd double %6, %conv, !dbg !145
  store double %add20, double* %arrayidx19, align 8, !dbg !145, !tbaa !150
  %indvars.iv.next70 = add i64 %indvars.iv69, 1, !dbg !142
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32, !dbg !142
  %exitcond72 = icmp eq i32 %lftr.wideiv71, 3, !dbg !142
  br i1 %exitcond72, label %for.end23, label %for.body11, !dbg !142

for.end23:                                        ; preds = %for.body11
  %conv26 = fpext float %4 to double, !dbg !151
  %add27 = fadd double %tmpq.067, %conv26, !dbg !151
  call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !49), !dbg !151
  %indvars.iv.next74 = add i64 %indvars.iv73, 1, !dbg !140
  %7 = trunc i64 %indvars.iv.next74 to i32, !dbg !140
  %cmp7 = icmp slt i32 %7, %add, !dbg !140
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !142
  br i1 %cmp7, label %for.cond9.preheader, label %for.cond6.for.cond31.preheader_crit_edge, !dbg !140

for.body34:                                       ; preds = %for.body34, %for.cond31.preheader
  %indvars.iv = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next, %for.body34 ]
  %arrayidx36 = getelementptr inbounds [3 x double]* %tmpmu, i64 0, i64 %indvars.iv, !dbg !152
  %8 = load double* %arrayidx36, align 8, !dbg !152, !tbaa !150
  %mul37 = fmul double %8, 4.803210e+01, !dbg !152
  %conv38 = fptrunc double %mul37 to float, !dbg !152
  %arrayidx40 = getelementptr inbounds float* %mu, i64 %indvars.iv, !dbg !152
  store float %conv38, float* %arrayidx40, align 4, !dbg !152, !tbaa !147
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !148
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !148
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !148
  br i1 %exitcond, label %for.end43, label %for.body34, !dbg !148

for.end43:                                        ; preds = %for.body34
  store float %tmpq.0.lcssa, float* %qsum, align 4, !dbg !153, !tbaa !147
  ret void, !dbg !154
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @read_mu(%struct._IO_FILE* nocapture %fp, float* nocapture %mu, float* nocapture %vol) #0 {
entry:
  %mmm = alloca [4 x float], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !111), !dbg !155
  call void @llvm.dbg.value(metadata !{float* %mu}, i64 0, metadata !112), !dbg !155
  call void @llvm.dbg.value(metadata !{float* %vol}, i64 0, metadata !113), !dbg !155
  call void @llvm.dbg.declare(metadata !{[4 x float]* %mmm}, metadata !114), !dbg !156
  %0 = bitcast [4 x float]* %mmm to i8*, !dbg !157
  %call = call i64 @fread(i8* %0, i64 64, i64 1, %struct._IO_FILE* %fp) #4, !dbg !157
  %cmp = icmp eq i64 %call, 1, !dbg !157
  br i1 %cmp, label %if.end, label %return, !dbg !157

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 0, !dbg !157
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !158), !dbg !160
  tail call void @llvm.dbg.value(metadata !{float* %mu}, i64 0, metadata !161), !dbg !160
  %1 = load float* %arraydecay, align 16, !dbg !162, !tbaa !147
  store float %1, float* %mu, align 4, !dbg !162, !tbaa !147
  %arrayidx2.i = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 1, !dbg !164
  %2 = load float* %arrayidx2.i, align 4, !dbg !164, !tbaa !147
  %arrayidx3.i = getelementptr inbounds float* %mu, i64 1, !dbg !164
  store float %2, float* %arrayidx3.i, align 4, !dbg !164, !tbaa !147
  %arrayidx4.i = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 2, !dbg !165
  %3 = load float* %arrayidx4.i, align 8, !dbg !165, !tbaa !147
  %arrayidx5.i = getelementptr inbounds float* %mu, i64 2, !dbg !165
  store float %3, float* %arrayidx5.i, align 4, !dbg !165, !tbaa !147
  %arrayidx = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 3, !dbg !166
  %4 = load float* %arrayidx, align 4, !dbg !166, !tbaa !147
  store float %4, float* %vol, align 4, !dbg !166, !tbaa !147
  br label %return, !dbg !167

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !167
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !50, metadata !118}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_mu_and_q", metadata !"calc_mu_and_q", metadata !"", i32 43, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_nsborder*, [3 x float]*, float*, float*, float*)* @calc_mu_and_q, null, null, metadata !36, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [calc_mu_and_q]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !28, metadata !35, metadata !35, metadata !35}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !25, metadata !26, metadata !27}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !22} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !22} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !22} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!29 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!30 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !31, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!32 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !49}
!37 = metadata !{i32 786689, metadata !4, metadata !"nsb", metadata !5, i32 16777259, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 43]
!38 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 33554475, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 43]
!39 = metadata !{i32 786689, metadata !4, metadata !"q", metadata !5, i32 50331691, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [q] [line 43]
!40 = metadata !{i32 786689, metadata !4, metadata !"mu", metadata !5, i32 67108907, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 43]
!41 = metadata !{i32 786689, metadata !4, metadata !"qsum", metadata !5, i32 83886123, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [qsum] [line 43]
!42 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!43 = metadata !{i32 786688, metadata !4, metadata !"start", metadata !5, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 45]
!44 = metadata !{i32 786688, metadata !4, metadata !"end", metadata !5, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 45]
!45 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 45]
!46 = metadata !{i32 786688, metadata !4, metadata !"tmpmu", metadata !5, i32 47, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpmu] [line 47]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !48, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from double]
!48 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!49 = metadata !{i32 786688, metadata !4, metadata !"tmpq", metadata !5, i32 48, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpq] [line 48]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_mu", metadata !"read_mu", metadata !"", i32 69, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, float*, float*)* @read_mu, null, null, metadata !110, i32 70} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 70] [read_mu]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !14, metadata !53, metadata !35, metadata !35}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!54 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!55 = metadata !{i32 786451, metadata !56, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!56 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!57 = metadata !{metadata !58, metadata !59, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !80, metadata !81, metadata !82, metadata !83, metadata !86, metadata !88, metadata !90, metadata !94, metadata !96, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !105, metadata !106}
!58 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!61 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!62 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!63 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!64 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!65 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!66 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!67 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!68 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!69 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!70 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!71 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!72 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !73} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!74 = metadata !{i32 786451, metadata !56, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !75, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !77, metadata !79}
!76 = metadata !{i32 786445, metadata !56, metadata !74, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786445, metadata !56, metadata !74, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!79 = metadata !{i32 786445, metadata !56, metadata !74, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!80 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !78} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!81 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!82 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!83 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !84} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!84 = metadata !{i32 786454, metadata !56, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!85 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!86 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !87} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!87 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!88 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !89} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!89 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!90 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !91} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !61, metadata !92, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!92 = metadata !{metadata !93}
!93 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!94 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !95} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!96 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !97} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!97 = metadata !{i32 786454, metadata !56, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!98 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !95} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!99 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !95} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!100 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !95} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!101 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !95} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!102 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !103} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!103 = metadata !{i32 786454, metadata !56, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!104 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!105 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!106 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !107} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !61, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114}
!111 = metadata !{i32 786689, metadata !50, metadata !"fp", metadata !5, i32 16777285, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 69]
!112 = metadata !{i32 786689, metadata !50, metadata !"mu", metadata !5, i32 33554501, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 69]
!113 = metadata !{i32 786689, metadata !50, metadata !"vol", metadata !5, i32 50331717, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vol] [line 69]
!114 = metadata !{i32 786688, metadata !50, metadata !"mmm", metadata !5, i32 72, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmm] [line 72]
!115 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !31, metadata !116, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from real]
!116 = metadata !{metadata !117}
!117 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!118 = metadata !{i32 786478, metadata !119, metadata !120, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !121, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !125, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!119 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!120 = metadata !{i32 786473, metadata !119}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!121 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{null, metadata !123, metadata !35}
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!124 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!125 = metadata !{metadata !126, metadata !127}
!126 = metadata !{i32 786689, metadata !118, metadata !"a", metadata !120, i32 16777486, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!127 = metadata !{i32 786689, metadata !118, metadata !"b", metadata !120, i32 33554702, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!128 = metadata !{i32 43, i32 0, metadata !4, null}
!129 = metadata !{i32 47, i32 0, metadata !4, null}
!130 = metadata !{i32 50, i32 0, metadata !4, null}
!131 = metadata !{metadata !"int", metadata !132}
!132 = metadata !{metadata !"omnipotent char", metadata !133}
!133 = metadata !{metadata !"Simple C/C++ TBAA"}
!134 = metadata !{i32 51, i32 0, metadata !4, null}
!135 = metadata !{double 0.000000e+00}
!136 = metadata !{i32 53, i32 0, metadata !4, null}
!137 = metadata !{i32 54, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c]
!139 = metadata !{i32 55, i32 0, metadata !138, null}
!140 = metadata !{i32 57, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c]
!142 = metadata !{i32 58, i32 0, metadata !143, null} ; [ DW_TAG_imported_module ]
!143 = metadata !{i32 786443, metadata !1, metadata !144, i32 58, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c]
!144 = metadata !{i32 786443, metadata !1, metadata !141, i32 57, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c]
!145 = metadata !{i32 59, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !143, i32 58, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c]
!147 = metadata !{metadata !"float", metadata !132}
!148 = metadata !{i32 63, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !4, i32 63, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c]
!150 = metadata !{metadata !"double", metadata !132}
!151 = metadata !{i32 61, i32 0, metadata !144, null}
!152 = metadata !{i32 64, i32 0, metadata !149, null}
!153 = metadata !{i32 66, i32 0, metadata !4, null}
!154 = metadata !{i32 67, i32 0, metadata !4, null}
!155 = metadata !{i32 69, i32 0, metadata !50, null}
!156 = metadata !{i32 72, i32 0, metadata !50, null}
!157 = metadata !{i32 74, i32 0, metadata !50, null}
!158 = metadata !{i32 786689, metadata !118, metadata !"a", metadata !120, i32 16777486, metadata !123, i32 0, metadata !159} ; [ DW_TAG_arg_variable ] [a] [line 270]
!159 = metadata !{i32 77, i32 0, metadata !50, null}
!160 = metadata !{i32 270, i32 0, metadata !118, metadata !159}
!161 = metadata !{i32 786689, metadata !118, metadata !"b", metadata !120, i32 33554702, metadata !35, i32 0, metadata !159} ; [ DW_TAG_arg_variable ] [b] [line 270]
!162 = metadata !{i32 272, i32 0, metadata !163, metadata !159}
!163 = metadata !{i32 786443, metadata !119, metadata !118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!164 = metadata !{i32 273, i32 0, metadata !163, metadata !159}
!165 = metadata !{i32 274, i32 0, metadata !163, metadata !159}
!166 = metadata !{i32 78, i32 0, metadata !50, null}
!167 = metadata !{i32 80, i32 0, metadata !50, null}

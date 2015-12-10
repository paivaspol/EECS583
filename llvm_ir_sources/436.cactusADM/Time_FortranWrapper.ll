; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time_FortranWrapper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"Time::couranttemps\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"time::speedvars\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsFortranWrapperTime(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !48), !dbg !60
  tail call void @llvm.dbg.value(metadata !{i8* %fpointer}, i64 0, metadata !49), !dbg !60
  %0 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !dbg !61, !tbaa !62
  %cmp = icmp eq i32 %0, -1, !dbg !61
  br i1 %cmp, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !61
  store i32 %call, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !dbg !61, !tbaa !62
  br label %if.end, !dbg !61

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps, align 4, !dbg !61, !tbaa !62
  %cmp1 = icmp eq i32 %1, -1, !dbg !61
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !61

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !61
  store i32 %call3, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps, align 4, !dbg !61, !tbaa !62
  br label %if.end4, !dbg !61

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !dbg !61, !tbaa !62
  %cmp5 = icmp eq i32 %2, -1, !dbg !61
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !61

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !61
  store i32 %call7, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !dbg !61, !tbaa !62
  br label %if.end8, !dbg !61

if.end8:                                          ; preds = %if.then6, %if.end4
  %3 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars, align 4, !dbg !61, !tbaa !62
  %cmp9 = icmp eq i32 %3, -1, !dbg !61
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !61

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !61
  store i32 %call11, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars, align 4, !dbg !61, !tbaa !62
  br label %if.end12, !dbg !61

if.end12:                                         ; preds = %if.then10, %if.end8
  %4 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed, align 4, !dbg !61, !tbaa !62
  %cmp13 = icmp eq i32 %4, -1, !dbg !61
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !61

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !61
  store i32 %call15, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed, align 4, !dbg !61, !tbaa !62
  br label %if.end16, !dbg !61

if.end16:                                         ; preds = %if.end12, %if.then14
  %5 = phi i32 [ %call15, %if.then14 ], [ %4, %if.end12 ]
  %6 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, double*, double*, double*)*, !dbg !65
  tail call void @llvm.dbg.value(metadata !{void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, double*, double*, double*)* %6}, i64 0, metadata !50), !dbg !65
  %cctk_dim = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !66
  %cctk_gsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !66
  %7 = load i32** %cctk_gsh, align 8, !dbg !66, !tbaa !67
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !66
  %8 = load i32** %cctk_lsh, align 8, !dbg !66, !tbaa !67
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !66
  %9 = load i32** %cctk_lbnd, align 8, !dbg !66, !tbaa !67
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !66
  %10 = load i32** %cctk_ubnd, align 8, !dbg !66, !tbaa !67
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !66
  %11 = load i32** %cctk_lssh, align 8, !dbg !66, !tbaa !67
  %cctk_from = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !66
  %12 = load i32** %cctk_from, align 8, !dbg !66, !tbaa !67
  %cctk_to = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !66
  %13 = load i32** %cctk_to, align 8, !dbg !66, !tbaa !67
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !66
  %14 = load i32** %cctk_bbox, align 8, !dbg !66, !tbaa !67
  %cctk_delta_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !66
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !66
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !66
  %15 = load double** %cctk_delta_space, align 8, !dbg !66, !tbaa !67
  %cctk_origin_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !66
  %16 = load double** %cctk_origin_space, align 8, !dbg !66, !tbaa !67
  %cctk_levfac = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !66
  %17 = load i32** %cctk_levfac, align 8, !dbg !66, !tbaa !67
  %cctk_convlevel = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !66
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !66
  %18 = load i32** %cctk_nghostzones, align 8, !dbg !66, !tbaa !67
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !66
  %19 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !dbg !66, !tbaa !62
  %cmp17 = icmp slt i32 %19, 0, !dbg !66
  br i1 %cmp17, label %cond.end, label %cond.false, !dbg !66

cond.false:                                       ; preds = %if.end16
  %idxprom = sext i32 %19 to i64, !dbg !66
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !66
  %20 = load i8**** %data, align 8, !dbg !66, !tbaa !67
  %arrayidx = getelementptr inbounds i8*** %20, i64 %idxprom, !dbg !66
  %21 = load i8*** %arrayidx, align 8, !dbg !66, !tbaa !67
  %22 = load i8** %21, align 8, !dbg !66, !tbaa !67
  %phitmp = bitcast i8* %22 to double*, !dbg !66
  br label %cond.end, !dbg !66

cond.end:                                         ; preds = %if.end16, %cond.false
  %cond = phi double* [ %phitmp, %cond.false ], [ null, %if.end16 ]
  %23 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !dbg !66, !tbaa !62
  %cmp19 = icmp slt i32 %23, 0, !dbg !66
  br i1 %cmp19, label %cond.end26, label %cond.false21, !dbg !66

cond.false21:                                     ; preds = %cond.end
  %idxprom22 = sext i32 %23 to i64, !dbg !66
  %data23 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !66
  %24 = load i8**** %data23, align 8, !dbg !66, !tbaa !67
  %arrayidx24 = getelementptr inbounds i8*** %24, i64 %idxprom22, !dbg !66
  %25 = load i8*** %arrayidx24, align 8, !dbg !66, !tbaa !67
  %26 = load i8** %25, align 8, !dbg !66, !tbaa !67
  %phitmp57 = bitcast i8* %26 to double*, !dbg !66
  br label %cond.end26, !dbg !66

cond.end26:                                       ; preds = %cond.end, %cond.false21
  %cond27 = phi double* [ %phitmp57, %cond.false21 ], [ null, %cond.end ]
  %cmp28 = icmp slt i32 %5, 0, !dbg !66
  br i1 %cmp28, label %cond.end35, label %cond.false30, !dbg !66

cond.false30:                                     ; preds = %cond.end26
  %idxprom31 = sext i32 %5 to i64, !dbg !66
  %data32 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !66
  %27 = load i8**** %data32, align 8, !dbg !66, !tbaa !67
  %arrayidx33 = getelementptr inbounds i8*** %27, i64 %idxprom31, !dbg !66
  %28 = load i8*** %arrayidx33, align 8, !dbg !66, !tbaa !67
  %29 = load i8** %28, align 8, !dbg !66, !tbaa !67
  %phitmp58 = bitcast i8* %29 to double*, !dbg !66
  br label %cond.end35, !dbg !66

cond.end35:                                       ; preds = %cond.end26, %cond.false30
  %cond36 = phi double* [ %phitmp58, %cond.false30 ], [ null, %cond.end26 ]
  tail call void %6(i32* %cctk_dim, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, double* %cctk_delta_time, double* %cctk_time, double* %15, double* %16, i32* %17, i32* %cctk_convlevel, i32* %18, i32* %cctk_iteration, %struct.cGH* %GH, double* %cond, double* %cond27, double* %cond36) #3, !dbg !66
  ret i32 0, !dbg !68
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !54, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time_FortranWrapper.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time_FortranWrapper.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsFortranWrapperTime", metadata !"CCTKi_BindingsFortranWrapperTime", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperTime, null, null, metadata !47, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [CCTKi_BindingsFortranWrapperTime]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time_FortranWrapper.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !37}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !38, metadata !39}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!29 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!30 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!33 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!34 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !35} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !40} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!41 = metadata !{i32 786454, metadata !12, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!42 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !46}
!44 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!45 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !45} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !4, metadata !"GH", metadata !5, i32 16777229, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 13]
!49 = metadata !{i32 786689, metadata !4, metadata !"fpointer", metadata !5, i32 33554445, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fpointer] [line 13]
!50 = metadata !{i32 786688, metadata !4, metadata !"function", metadata !5, i32 15, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [function] [line 15]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !17, metadata !17, metadata !17, metadata !9, metadata !27, metadata !27, metadata !27}
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!55 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_dt", metadata !"CCTKARGNUM_courant_dt", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_dt] [line 17] [local] [def]
!56 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_couranttemps", metadata !"CCTKGROUPNUM_couranttemps", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_couranttemps] [line 17] [local] [def]
!57 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_min_time", metadata !"CCTKARGNUM_courant_min_time", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_min_time] [line 17] [local] [def]
!58 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_speedvars", metadata !"CCTKGROUPNUM_speedvars", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_speedvars] [line 17] [local] [def]
!59 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_wave_speed", metadata !"CCTKARGNUM_courant_wave_speed", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_wave_speed] [line 17] [local] [def]
!60 = metadata !{i32 13, i32 0, metadata !4, null}
!61 = metadata !{i32 18, i32 0, metadata !4, null}
!62 = metadata !{metadata !"int", metadata !63}
!63 = metadata !{metadata !"omnipotent char", metadata !64}
!64 = metadata !{metadata !"Simple C/C++ TBAA"}
!65 = metadata !{i32 20, i32 0, metadata !4, null}
!66 = metadata !{i32 22, i32 0, metadata !4, null}
!67 = metadata !{metadata !"any pointer", metadata !63}
!68 = metadata !{i32 24, i32 0, metadata !4, null}

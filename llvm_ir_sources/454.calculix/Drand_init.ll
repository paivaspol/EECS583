; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in Drand_init(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"\0A fatal error in Drand_setSeed(%p,%d)\0A first seed must in in (0,%.0f)\00", align 1
@.str2 = private unnamed_addr constant [108 x i8] c"\0A fatal error in Drand_setSeeds(%p,%d,%d)\0A first seed must in in (0,%.0f)\0A second seed must in in (0,%.0f)\0A\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Drand_setUniform(%p,%f,%f)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Drand_setNormal(%p,%f,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Drand_init(%struct._Drand* %drand) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !25), !dbg !51
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !52
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !53, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._Drand* null) #5, !dbg !53
  tail call void @exit(i32 -1) #6, !dbg !58
  unreachable, !dbg !58

if.end:                                           ; preds = %entry
  tail call void @Drand_setDefaultFields(%struct._Drand* %drand) #5, !dbg !59
  ret void, !dbg !60
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #3

; Function Attrs: nounwind optsize uwtable
define void @Drand_setSeed(%struct._Drand* %drand, i32 %u) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !30), !dbg !61
  tail call void @llvm.dbg.value(metadata !{i32 %u}, i64 0, metadata !31), !dbg !62
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !63
  %cmp1 = icmp slt i32 %u, 1, !dbg !63
  %or.cond = or i1 %cmp, %cmp1, !dbg !63
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2, !dbg !63

entry.if.then_crit_edge:                          ; preds = %entry
  %base15.phi.trans.insert = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %.pre = load double* %base15.phi.trans.insert, align 8, !dbg !64, !tbaa !66
  br label %if.then, !dbg !63

lor.lhs.false2:                                   ; preds = %entry
  %conv = sitofp i32 %u to double, !dbg !63
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !63
  %0 = load double* %base1, align 8, !dbg !63, !tbaa !66
  %cmp3 = fcmp ult double %conv, %0, !dbg !63
  br i1 %cmp3, label %if.end, label %if.then, !dbg !63

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false2
  %1 = phi double [ %.pre, %entry.if.then_crit_edge ], [ %0, %lor.lhs.false2 ]
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !64, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), %struct._Drand* %drand, i32 %u, double %1) #5, !dbg !64
  tail call void @exit(i32 -1) #6, !dbg !67
  unreachable, !dbg !67

if.end:                                           ; preds = %lor.lhs.false2
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !68
  store double %conv, double* %seed1, align 8, !dbg !68, !tbaa !66
  %mul = fmul double %conv, 2.718000e+03, !dbg !69
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !69
  %3 = load double* %base2, align 8, !dbg !69, !tbaa !66
  %call8 = tail call double @fmod(double %mul, double %3) #5, !dbg !69
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !69
  store double %call8, double* %seed2, align 8, !dbg !69, !tbaa !66
  ret void, !dbg !70
}

; Function Attrs: nounwind optsize
declare double @fmod(double, double) #1

; Function Attrs: nounwind optsize uwtable
define void @Drand_setSeeds(%struct._Drand* %drand, i32 %u, i32 %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !36), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32 %u}, i64 0, metadata !37), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !38), !dbg !73
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !74
  %cmp1 = icmp slt i32 %u, 1, !dbg !74
  %or.cond = or i1 %cmp, %cmp1, !dbg !74
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2, !dbg !74

entry.if.then_crit_edge:                          ; preds = %entry
  %base112.phi.trans.insert = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %.pre = load double* %base112.phi.trans.insert, align 8, !dbg !75, !tbaa !66
  br label %if.then, !dbg !74

lor.lhs.false2:                                   ; preds = %entry
  %conv = sitofp i32 %u to double, !dbg !74
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !74
  %0 = load double* %base1, align 8, !dbg !74, !tbaa !66
  %cmp3 = fcmp oge double %conv, %0, !dbg !74
  %cmp6 = icmp slt i32 %v, 1, !dbg !74
  %or.cond29 = or i1 %cmp3, %cmp6, !dbg !74
  br i1 %or.cond29, label %if.then, label %lor.lhs.false8, !dbg !74

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %conv9 = sitofp i32 %v to double, !dbg !74
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !74
  %1 = load double* %base2, align 8, !dbg !74, !tbaa !66
  %cmp10 = fcmp ult double %conv9, %1, !dbg !74
  br i1 %cmp10, label %if.end, label %if.then, !dbg !74

if.then:                                          ; preds = %lor.lhs.false2, %entry.if.then_crit_edge, %lor.lhs.false8
  %2 = phi double [ %.pre, %entry.if.then_crit_edge ], [ %0, %lor.lhs.false8 ], [ %0, %lor.lhs.false2 ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !75, !tbaa !55
  %base213 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !75
  %4 = load double* %base213, align 8, !dbg !75, !tbaa !66
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str2, i64 0, i64 0), %struct._Drand* %drand, i32 %u, i32 %v, double %2, double %4) #5, !dbg !75
  tail call void @exit(i32 -1) #6, !dbg !77
  unreachable, !dbg !77

if.end:                                           ; preds = %lor.lhs.false8
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !78
  store double %conv, double* %seed1, align 8, !dbg !78, !tbaa !66
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !79
  store double %conv9, double* %seed2, align 8, !dbg !79, !tbaa !66
  ret void, !dbg !80
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_setUniform(%struct._Drand* %drand, double %lower, double %upper) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !43), !dbg !81
  tail call void @llvm.dbg.value(metadata !{double %lower}, i64 0, metadata !44), !dbg !82
  tail call void @llvm.dbg.value(metadata !{double %upper}, i64 0, metadata !45), !dbg !83
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !84
  %cmp1 = fcmp ogt double %lower, %upper, !dbg !84
  %or.cond = or i1 %cmp, %cmp1, !dbg !84
  br i1 %or.cond, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._Drand* %drand, double %lower, double %upper) #5, !dbg !85
  tail call void @exit(i32 -1) #6, !dbg !87
  unreachable, !dbg !87

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !88
  store i32 1, i32* %mode, align 4, !dbg !88, !tbaa !89
  %lower2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4, !dbg !90
  store double %lower, double* %lower2, align 8, !dbg !90, !tbaa !66
  %upper3 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5, !dbg !91
  store double %upper, double* %upper3, align 8, !dbg !91, !tbaa !66
  ret void, !dbg !92
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_setNormal(%struct._Drand* %drand, double %mean, double %sigma) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !48), !dbg !93
  tail call void @llvm.dbg.value(metadata !{double %mean}, i64 0, metadata !49), !dbg !94
  tail call void @llvm.dbg.value(metadata !{double %sigma}, i64 0, metadata !50), !dbg !95
  %cmp = icmp ne %struct._Drand* %drand, null, !dbg !96
  %cmp1 = fcmp ugt double %sigma, 0.000000e+00, !dbg !96
  %or.cond = and i1 %cmp, %cmp1, !dbg !96
  br i1 %or.cond, label %if.end, label %if.then, !dbg !96

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._Drand* %drand, double %mean, double %sigma) #5, !dbg !97
  tail call void @exit(i32 -1) #6, !dbg !99
  unreachable, !dbg !99

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !100
  store i32 2, i32* %mode, align 4, !dbg !100, !tbaa !89
  %mean2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6, !dbg !101
  store double %mean, double* %mean2, align 8, !dbg !101, !tbaa !66
  %sigma3 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7, !dbg !102
  store double %sigma, double* %sigma3, align 8, !dbg !102, !tbaa !66
  ret void, !dbg !103
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !26, metadata !32, metadata !39, metadata !46}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_init", metadata !"Drand_init", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*)* @Drand_init, null, null, metadata !24, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [Drand_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Drand]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/../Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!14 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!23 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786689, metadata !4, metadata !"drand", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 15]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_setSeed", metadata !"Drand_setSeed", metadata !"", i32 45, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*, i32)* @Drand_setSeed, null, null, metadata !29, i32 48} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 48] [Drand_setSeed]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !8, metadata !23}
!29 = metadata !{metadata !30, metadata !31}
!30 = metadata !{i32 786689, metadata !26, metadata !"drand", metadata !5, i32 16777262, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 46]
!31 = metadata !{i32 786689, metadata !26, metadata !"u", metadata !5, i32 33554479, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [u] [line 47]
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_setSeeds", metadata !"Drand_setSeeds", metadata !"", i32 69, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*, i32, i32)* @Drand_setSeeds, null, null, metadata !35, i32 73} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 73] [Drand_setSeeds]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !8, metadata !23, metadata !23}
!35 = metadata !{metadata !36, metadata !37, metadata !38}
!36 = metadata !{i32 786689, metadata !32, metadata !"drand", metadata !5, i32 16777286, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 70]
!37 = metadata !{i32 786689, metadata !32, metadata !"u", metadata !5, i32 33554503, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [u] [line 71]
!38 = metadata !{i32 786689, metadata !32, metadata !"v", metadata !5, i32 50331720, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 72]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_setUniform", metadata !"Drand_setUniform", metadata !"", i32 97, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*, double, double)* @Drand_setUniform, null, null, metadata !42, i32 101} ; [ DW_TAG_subprogram ] [line 97] [def] [scope 101] [Drand_setUniform]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !8, metadata !14, metadata !14}
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786689, metadata !39, metadata !"drand", metadata !5, i32 16777314, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 98]
!44 = metadata !{i32 786689, metadata !39, metadata !"lower", metadata !5, i32 33554531, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 99]
!45 = metadata !{i32 786689, metadata !39, metadata !"upper", metadata !5, i32 50331748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 100]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_setNormal", metadata !"Drand_setNormal", metadata !"", i32 127, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*, double, double)* @Drand_setNormal, null, null, metadata !47, i32 131} ; [ DW_TAG_subprogram ] [line 127] [def] [scope 131] [Drand_setNormal]
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !46, metadata !"drand", metadata !5, i32 16777344, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 128]
!49 = metadata !{i32 786689, metadata !46, metadata !"mean", metadata !5, i32 33554561, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mean] [line 129]
!50 = metadata !{i32 786689, metadata !46, metadata !"sigma", metadata !5, i32 50331778, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sigma] [line 130]
!51 = metadata !{i32 15, i32 0, metadata !4, null}
!52 = metadata !{i32 22, i32 0, metadata !4, null}
!53 = metadata !{i32 23, i32 0, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c]
!55 = metadata !{metadata !"any pointer", metadata !56}
!56 = metadata !{metadata !"omnipotent char", metadata !57}
!57 = metadata !{metadata !"Simple C/C++ TBAA"}
!58 = metadata !{i32 25, i32 0, metadata !54, null}
!59 = metadata !{i32 32, i32 0, metadata !4, null}
!60 = metadata !{i32 34, i32 0, metadata !4, null}
!61 = metadata !{i32 46, i32 0, metadata !26, null}
!62 = metadata !{i32 47, i32 0, metadata !26, null}
!63 = metadata !{i32 49, i32 0, metadata !26, null}
!64 = metadata !{i32 50, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !26, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c]
!66 = metadata !{metadata !"double", metadata !56}
!67 = metadata !{i32 53, i32 0, metadata !65, null}
!68 = metadata !{i32 55, i32 0, metadata !26, null}
!69 = metadata !{i32 56, i32 0, metadata !26, null}
!70 = metadata !{i32 58, i32 0, metadata !26, null} ; [ DW_TAG_imported_module ]
!71 = metadata !{i32 70, i32 0, metadata !32, null}
!72 = metadata !{i32 71, i32 0, metadata !32, null}
!73 = metadata !{i32 72, i32 0, metadata !32, null}
!74 = metadata !{i32 74, i32 0, metadata !32, null}
!75 = metadata !{i32 77, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !32, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c]
!77 = metadata !{i32 81, i32 0, metadata !76, null}
!78 = metadata !{i32 83, i32 0, metadata !32, null}
!79 = metadata !{i32 84, i32 0, metadata !32, null}
!80 = metadata !{i32 86, i32 0, metadata !32, null}
!81 = metadata !{i32 98, i32 0, metadata !39, null}
!82 = metadata !{i32 99, i32 0, metadata !39, null}
!83 = metadata !{i32 100, i32 0, metadata !39, null}
!84 = metadata !{i32 107, i32 0, metadata !39, null}
!85 = metadata !{i32 108, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !39, i32 107, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c]
!87 = metadata !{i32 110, i32 0, metadata !86, null}
!88 = metadata !{i32 112, i32 0, metadata !39, null}
!89 = metadata !{metadata !"int", metadata !56}
!90 = metadata !{i32 113, i32 0, metadata !39, null}
!91 = metadata !{i32 114, i32 0, metadata !39, null}
!92 = metadata !{i32 116, i32 0, metadata !39, null}
!93 = metadata !{i32 128, i32 0, metadata !46, null}
!94 = metadata !{i32 129, i32 0, metadata !46, null}
!95 = metadata !{i32 130, i32 0, metadata !46, null}
!96 = metadata !{i32 137, i32 0, metadata !46, null}
!97 = metadata !{i32 138, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !46, i32 137, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c]
!99 = metadata !{i32 140, i32 0, metadata !98, null}
!100 = metadata !{i32 142, i32 0, metadata !46, null}
!101 = metadata !{i32 143, i32 0, metadata !46, null}
!102 = metadata !{i32 144, i32 0, metadata !46, null}
!103 = metadata !{i32 146, i32 0, metadata !46, null}

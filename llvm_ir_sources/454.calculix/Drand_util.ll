; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in Drand_value(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillZvector(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillDvector(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillIvector(%p,%d,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @Drand_value(%struct._Drand* %drand) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !25), !dbg !52
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !54, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._Drand* null) #4, !dbg !54
  tail call void @exit(i32 -1) #5, !dbg !59
  unreachable, !dbg !59

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !60
  %1 = load i32* %mode, align 4, !dbg !60, !tbaa !61
  %cmp1 = icmp eq i32 %1, 1, !dbg !60
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !62
  %2 = load double* %seed1, align 8, !dbg !62, !tbaa !64
  %mul = fmul double %2, 4.001400e+04, !dbg !62
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !62
  %3 = load double* %base1, align 8, !dbg !62, !tbaa !64
  %call3 = tail call double @fmod(double %mul, double %3) #4, !dbg !62
  store double %call3, double* %seed1, align 8, !dbg !62, !tbaa !64
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !65
  %4 = load double* %seed2, align 8, !dbg !65, !tbaa !64
  %mul5 = fmul double %4, 4.069200e+04, !dbg !65
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !65
  %5 = load double* %base2, align 8, !dbg !65, !tbaa !64
  %call6 = tail call double @fmod(double %mul5, double %5) #4, !dbg !65
  store double %call6, double* %seed2, align 8, !dbg !65, !tbaa !64
  %6 = load double* %seed1, align 8, !dbg !66, !tbaa !64
  %sub = fsub double %6, %call6, !dbg !66
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !27), !dbg !66
  %cmp10 = fcmp ole double %sub, 0.000000e+00, !dbg !67
  %7 = load double* %base1, align 8, !dbg !68, !tbaa !64
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !60

if.then2:                                         ; preds = %if.end
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !67

if.then11:                                        ; preds = %if.then2
  %sub13 = fadd double %7, -1.000000e+00, !dbg !68
  %add = fadd double %sub, %sub13, !dbg !68
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !27), !dbg !68
  br label %if.end14, !dbg !70

if.end14:                                         ; preds = %if.then2, %if.then11
  %t.0 = phi double [ %add, %if.then11 ], [ %sub, %if.then2 ]
  %lower = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4, !dbg !71
  %8 = load double* %lower, align 8, !dbg !71, !tbaa !64
  %div = fdiv double %t.0, %7, !dbg !71
  %upper = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5, !dbg !71
  %9 = load double* %upper, align 8, !dbg !71, !tbaa !64
  %sub17 = fsub double %9, %8, !dbg !71
  %mul18 = fmul double %div, %sub17, !dbg !71
  %add19 = fadd double %8, %mul18, !dbg !71
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !27), !dbg !71
  br label %if.end89, !dbg !72

if.else:                                          ; preds = %if.end
  br i1 %cmp10, label %if.then34, label %if.end38, !dbg !73

if.then34:                                        ; preds = %if.else
  %sub36 = fadd double %7, -1.000000e+00, !dbg !75
  %add37 = fadd double %sub, %sub36, !dbg !75
  tail call void @llvm.dbg.value(metadata !{double %add37}, i64 0, metadata !27), !dbg !75
  br label %if.end38, !dbg !77

if.end38:                                         ; preds = %if.else, %if.then34
  %t.1 = phi double [ %add37, %if.then34 ], [ %sub, %if.else ]
  %div40 = fdiv double %t.1, %7, !dbg !78
  tail call void @llvm.dbg.value(metadata !{double %div40}, i64 0, metadata !27), !dbg !78
  tail call void @llvm.dbg.value(metadata !{double %div40}, i64 0, metadata !26), !dbg !79
  %mul42 = fmul double %6, 4.001400e+04, !dbg !80
  %call44 = tail call double @fmod(double %mul42, double %7) #4, !dbg !80
  store double %call44, double* %seed1, align 8, !dbg !80, !tbaa !64
  %10 = load double* %seed2, align 8, !dbg !81, !tbaa !64
  %mul47 = fmul double %10, 4.069200e+04, !dbg !81
  %11 = load double* %base2, align 8, !dbg !81, !tbaa !64
  %call49 = tail call double @fmod(double %mul47, double %11) #4, !dbg !81
  store double %call49, double* %seed2, align 8, !dbg !81, !tbaa !64
  %12 = load double* %seed1, align 8, !dbg !82, !tbaa !64
  %sub53 = fsub double %12, %call49, !dbg !82
  tail call void @llvm.dbg.value(metadata !{double %sub53}, i64 0, metadata !27), !dbg !82
  %cmp54 = fcmp ugt double %sub53, 0.000000e+00, !dbg !83
  %.pre146 = load double* %base1, align 8, !dbg !84, !tbaa !64
  br i1 %cmp54, label %if.end59, label %if.then55, !dbg !83

if.then55:                                        ; preds = %if.end38
  %sub57 = fadd double %.pre146, -1.000000e+00, !dbg !85
  %add58 = fadd double %sub53, %sub57, !dbg !85
  tail call void @llvm.dbg.value(metadata !{double %add58}, i64 0, metadata !27), !dbg !85
  br label %if.end59, !dbg !87

if.end59:                                         ; preds = %if.end38, %if.then55
  %t.2 = phi double [ %add58, %if.then55 ], [ %sub53, %if.end38 ]
  %div61 = fdiv double %t.2, %.pre146, !dbg !84
  tail call void @llvm.dbg.value(metadata !{double %div61}, i64 0, metadata !27), !dbg !84
  %add62 = fadd double %div40, %div61, !dbg !88
  tail call void @llvm.dbg.value(metadata !{double %add62}, i64 0, metadata !26), !dbg !88
  %mul64 = fmul double %12, 4.001400e+04, !dbg !89
  %call66 = tail call double @fmod(double %mul64, double %.pre146) #4, !dbg !89
  store double %call66, double* %seed1, align 8, !dbg !89, !tbaa !64
  %13 = load double* %seed2, align 8, !dbg !90, !tbaa !64
  %mul69 = fmul double %13, 4.069200e+04, !dbg !90
  %14 = load double* %base2, align 8, !dbg !90, !tbaa !64
  %call71 = tail call double @fmod(double %mul69, double %14) #4, !dbg !90
  store double %call71, double* %seed2, align 8, !dbg !90, !tbaa !64
  %15 = load double* %seed1, align 8, !dbg !91, !tbaa !64
  %sub75 = fsub double %15, %call71, !dbg !91
  tail call void @llvm.dbg.value(metadata !{double %sub75}, i64 0, metadata !27), !dbg !91
  %cmp76 = fcmp ugt double %sub75, 0.000000e+00, !dbg !92
  %.pre147 = load double* %base1, align 8, !dbg !93, !tbaa !64
  br i1 %cmp76, label %if.end81, label %if.then77, !dbg !92

if.then77:                                        ; preds = %if.end59
  %sub79 = fadd double %.pre147, -1.000000e+00, !dbg !94
  %add80 = fadd double %sub75, %sub79, !dbg !94
  tail call void @llvm.dbg.value(metadata !{double %add80}, i64 0, metadata !27), !dbg !94
  br label %if.end81, !dbg !96

if.end81:                                         ; preds = %if.end59, %if.then77
  %t.3 = phi double [ %add80, %if.then77 ], [ %sub75, %if.end59 ]
  %div83 = fdiv double %t.3, %.pre147, !dbg !93
  tail call void @llvm.dbg.value(metadata !{double %div83}, i64 0, metadata !27), !dbg !93
  %add84 = fadd double %add62, %div83, !dbg !97
  tail call void @llvm.dbg.value(metadata !{double %add84}, i64 0, metadata !26), !dbg !97
  %mean = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6, !dbg !98
  %16 = load double* %mean, align 8, !dbg !98, !tbaa !64
  %sigma = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7, !dbg !98
  %17 = load double* %sigma, align 8, !dbg !98, !tbaa !64
  %mul85 = fmul double %add84, 2.000000e+00, !dbg !98
  %sub86 = fadd double %mul85, -3.000000e+00, !dbg !98
  %mul87 = fmul double %17, %sub86, !dbg !98
  %add88 = fadd double %16, %mul87, !dbg !98
  tail call void @llvm.dbg.value(metadata !{double %add88}, i64 0, metadata !27), !dbg !98
  br label %if.end89

if.end89:                                         ; preds = %if.end81, %if.end14
  %t.4 = phi double [ %add19, %if.end14 ], [ %add88, %if.end81 ]
  ret double %t.4, !dbg !99
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare double @fmod(double, double) #1

; Function Attrs: nounwind optsize uwtable
define void @Drand_fillZvector(%struct._Drand* %drand, i32 %size, double* %dvec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !33), !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !34), !dbg !101
  tail call void @llvm.dbg.value(metadata !{double* %dvec}, i64 0, metadata !35), !dbg !102
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !103
  %cmp1 = icmp slt i32 %size, 0, !dbg !103
  %or.cond = or i1 %cmp, %cmp1, !dbg !103
  %cmp3 = icmp eq double* %dvec, null, !dbg !103
  %or.cond14 = or i1 %or.cond, %cmp3, !dbg !103
  br i1 %or.cond14, label %if.then, label %for.cond.preheader, !dbg !103

for.cond.preheader:                               ; preds = %entry
  %mul = shl nsw i32 %size, 1, !dbg !104
  %cmp415 = icmp sgt i32 %size, 0, !dbg !104
  br i1 %cmp415, label %for.body, label %for.end, !dbg !104

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !106, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._Drand* %drand, i32 %size, double* %dvec) #4, !dbg !106
  tail call void @exit(i32 -1) #5, !dbg !108
  unreachable, !dbg !108

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call5 = tail call double @Drand_value(%struct._Drand* %drand) #6, !dbg !109
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv, !dbg !109
  store double %call5, double* %arrayidx, align 8, !dbg !109, !tbaa !64
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !104
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !104
  %cmp4 = icmp slt i32 %1, %mul, !dbg !104
  br i1 %cmp4, label %for.body, label %for.end, !dbg !104

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !111
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_fillDvector(%struct._Drand* %drand, i32 %size, double* %dvec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !39), !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !40), !dbg !113
  tail call void @llvm.dbg.value(metadata !{double* %dvec}, i64 0, metadata !41), !dbg !114
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !115
  %cmp1 = icmp slt i32 %size, 0, !dbg !115
  %or.cond = or i1 %cmp, %cmp1, !dbg !115
  %cmp3 = icmp eq double* %dvec, null, !dbg !115
  %or.cond14 = or i1 %or.cond, %cmp3, !dbg !115
  br i1 %or.cond14, label %if.then, label %for.cond.preheader, !dbg !115

for.cond.preheader:                               ; preds = %entry
  %cmp415 = icmp sgt i32 %size, 0, !dbg !116
  br i1 %cmp415, label %for.body, label %for.end, !dbg !116

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !118, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Drand* %drand, i32 %size, double* %dvec) #4, !dbg !118
  tail call void @exit(i32 -1) #5, !dbg !120
  unreachable, !dbg !120

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call5 = tail call double @Drand_value(%struct._Drand* %drand) #6, !dbg !121
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv, !dbg !121
  store double %call5, double* %arrayidx, align 8, !dbg !121, !tbaa !64
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !116
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !116
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !116
  br i1 %exitcond, label %for.end, label %for.body, !dbg !116

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !123
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_fillIvector(%struct._Drand* %drand, i32 %size, i32* %ivec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !48), !dbg !124
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !49), !dbg !125
  tail call void @llvm.dbg.value(metadata !{i32* %ivec}, i64 0, metadata !50), !dbg !126
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !127
  %cmp1 = icmp slt i32 %size, 0, !dbg !127
  %or.cond = or i1 %cmp, %cmp1, !dbg !127
  %cmp3 = icmp eq i32* %ivec, null, !dbg !127
  %or.cond14 = or i1 %or.cond, %cmp3, !dbg !127
  br i1 %or.cond14, label %if.then, label %for.cond.preheader, !dbg !127

for.cond.preheader:                               ; preds = %entry
  %cmp415 = icmp sgt i32 %size, 0, !dbg !128
  br i1 %cmp415, label %for.body, label %for.end, !dbg !128

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !130, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._Drand* %drand, i32 %size, i32* %ivec) #4, !dbg !130
  tail call void @exit(i32 -1) #5, !dbg !132
  unreachable, !dbg !132

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call5 = tail call double @Drand_value(%struct._Drand* %drand) #6, !dbg !133
  %conv = fptosi double %call5 to i32, !dbg !133
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv, !dbg !133
  store i32 %conv, i32* %arrayidx, align 4, !dbg !133, !tbaa !61
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !128
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !128
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !128
  br i1 %exitcond, label %for.end, label %for.body, !dbg !128

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !135
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !28, metadata !37, metadata !43}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_value", metadata !"Drand_value", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._Drand*)* @Drand_value, null, null, metadata !24, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [Drand_value]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Drand]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/../Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !8} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!23 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!24 = metadata !{metadata !25, metadata !26, metadata !27}
!25 = metadata !{i32 786689, metadata !4, metadata !"drand", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 15]
!26 = metadata !{i32 786688, metadata !4, metadata !"sum", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 17]
!27 = metadata !{i32 786688, metadata !4, metadata !"t", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 17]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_fillZvector", metadata !"Drand_fillZvector", metadata !"", i32 90, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*, i32, double*)* @Drand_fillZvector, null, null, metadata !32, i32 94} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 94] [Drand_fillZvector]
!29 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !9, metadata !23, metadata !31}
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !36}
!33 = metadata !{i32 786689, metadata !28, metadata !"drand", metadata !5, i32 16777307, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 91]
!34 = metadata !{i32 786689, metadata !28, metadata !"size", metadata !5, i32 33554524, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 92]
!35 = metadata !{i32 786689, metadata !28, metadata !"dvec", metadata !5, i32 50331741, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvec] [line 93]
!36 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !5, i32 95, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 95]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_fillDvector", metadata !"Drand_fillDvector", metadata !"", i32 125, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*, i32, double*)* @Drand_fillDvector, null, null, metadata !38, i32 129} ; [ DW_TAG_subprogram ] [line 125] [def] [scope 129] [Drand_fillDvector]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42}
!39 = metadata !{i32 786689, metadata !37, metadata !"drand", metadata !5, i32 16777342, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 126]
!40 = metadata !{i32 786689, metadata !37, metadata !"size", metadata !5, i32 33554559, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 127]
!41 = metadata !{i32 786689, metadata !37, metadata !"dvec", metadata !5, i32 50331776, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvec] [line 128]
!42 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !5, i32 130, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 130]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_fillIvector", metadata !"Drand_fillIvector", metadata !"", i32 161, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*, i32, i32*)* @Drand_fillIvector, null, null, metadata !47, i32 165} ; [ DW_TAG_subprogram ] [line 161] [def] [scope 165] [Drand_fillIvector]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{null, metadata !9, metadata !23, metadata !46}
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51}
!48 = metadata !{i32 786689, metadata !43, metadata !"drand", metadata !5, i32 16777378, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 162]
!49 = metadata !{i32 786689, metadata !43, metadata !"size", metadata !5, i32 33554595, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 163]
!50 = metadata !{i32 786689, metadata !43, metadata !"ivec", metadata !5, i32 50331812, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivec] [line 164]
!51 = metadata !{i32 786688, metadata !43, metadata !"i", metadata !5, i32 166, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 166]
!52 = metadata !{i32 15, i32 0, metadata !4, null}
!53 = metadata !{i32 23, i32 0, metadata !4, null}
!54 = metadata !{i32 24, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!56 = metadata !{metadata !"any pointer", metadata !57}
!57 = metadata !{metadata !"omnipotent char", metadata !58}
!58 = metadata !{metadata !"Simple C/C++ TBAA"}
!59 = metadata !{i32 26, i32 0, metadata !55, null}
!60 = metadata !{i32 33, i32 0, metadata !4, null}
!61 = metadata !{metadata !"int", metadata !57}
!62 = metadata !{i32 39, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!64 = metadata !{metadata !"double", metadata !57}
!65 = metadata !{i32 40, i32 0, metadata !63, null}
!66 = metadata !{i32 41, i32 0, metadata !63, null}
!67 = metadata !{i32 42, i32 0, metadata !63, null}
!68 = metadata !{i32 43, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !63, i32 42, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!70 = metadata !{i32 44, i32 0, metadata !69, null}
!71 = metadata !{i32 45, i32 0, metadata !63, null}
!72 = metadata !{i32 46, i32 0, metadata !63, null}
!73 = metadata !{i32 55, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!75 = metadata !{i32 56, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !74, i32 55, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!77 = metadata !{i32 57, i32 0, metadata !76, null}
!78 = metadata !{i32 58, i32 0, metadata !74, null} ; [ DW_TAG_imported_module ]
!79 = metadata !{i32 59, i32 0, metadata !74, null}
!80 = metadata !{i32 60, i32 0, metadata !74, null}
!81 = metadata !{i32 61, i32 0, metadata !74, null}
!82 = metadata !{i32 62, i32 0, metadata !74, null}
!83 = metadata !{i32 63, i32 0, metadata !74, null}
!84 = metadata !{i32 66, i32 0, metadata !74, null}
!85 = metadata !{i32 64, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !74, i32 63, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!87 = metadata !{i32 65, i32 0, metadata !86, null}
!88 = metadata !{i32 67, i32 0, metadata !74, null}
!89 = metadata !{i32 68, i32 0, metadata !74, null}
!90 = metadata !{i32 69, i32 0, metadata !74, null}
!91 = metadata !{i32 70, i32 0, metadata !74, null}
!92 = metadata !{i32 71, i32 0, metadata !74, null}
!93 = metadata !{i32 74, i32 0, metadata !74, null}
!94 = metadata !{i32 72, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !74, i32 71, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!96 = metadata !{i32 73, i32 0, metadata !95, null}
!97 = metadata !{i32 75, i32 0, metadata !74, null}
!98 = metadata !{i32 76, i32 0, metadata !74, null}
!99 = metadata !{i32 79, i32 0, metadata !4, null}
!100 = metadata !{i32 91, i32 0, metadata !28, null}
!101 = metadata !{i32 92, i32 0, metadata !28, null}
!102 = metadata !{i32 93, i32 0, metadata !28, null}
!103 = metadata !{i32 101, i32 0, metadata !28, null}
!104 = metadata !{i32 111, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !28, i32 111, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!106 = metadata !{i32 102, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !28, i32 101, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!108 = metadata !{i32 104, i32 0, metadata !107, null}
!109 = metadata !{i32 112, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !105, i32 111, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!111 = metadata !{i32 114, i32 0, metadata !28, null}
!112 = metadata !{i32 126, i32 0, metadata !37, null}
!113 = metadata !{i32 127, i32 0, metadata !37, null}
!114 = metadata !{i32 128, i32 0, metadata !37, null}
!115 = metadata !{i32 136, i32 0, metadata !37, null}
!116 = metadata !{i32 146, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !37, i32 146, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!118 = metadata !{i32 137, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !37, i32 136, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!120 = metadata !{i32 139, i32 0, metadata !119, null}
!121 = metadata !{i32 147, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !117, i32 146, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!123 = metadata !{i32 150, i32 0, metadata !37, null}
!124 = metadata !{i32 162, i32 0, metadata !43, null}
!125 = metadata !{i32 163, i32 0, metadata !43, null}
!126 = metadata !{i32 164, i32 0, metadata !43, null}
!127 = metadata !{i32 172, i32 0, metadata !43, null}
!128 = metadata !{i32 182, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !43, i32 182, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!130 = metadata !{i32 173, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !43, i32 172, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!132 = metadata !{i32 175, i32 0, metadata !131, null}
!133 = metadata !{i32 183, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !129, i32 182, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c]
!135 = metadata !{i32 186, i32 0, metadata !43, null}

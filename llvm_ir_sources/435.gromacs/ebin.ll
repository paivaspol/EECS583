; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"eb\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"eb->e\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"eb->enm\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"%s-%d: Energies out of range: index=%d nener=%d maxener=%d\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"Invalid index in pr_ebin: %d\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@.str8 = private unnamed_addr constant [33 x i8] c"Invalid print mode %d in pr_ebin\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"   %12.5e\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_ebin* @mk_ebin() #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 63, i32 1, i32 24) #5
  %0 = bitcast i8* %call to %struct.t_ebin*
  ret %struct.t_ebin* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @get_ebin_space(%struct.t_ebin* nocapture %eb, i32 %nener, i8** nocapture %enm) #0 {
entry:
  %nener1 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0
  %0 = load i32* %nener1, align 4, !tbaa !0
  %add = add nsw i32 %0, %nener
  store i32 %add, i32* %nener1, align 4, !tbaa !0
  %e = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2
  %1 = load %struct.t_energy** %e, align 8, !tbaa !3
  %2 = bitcast %struct.t_energy* %1 to i8*
  %mul = shl i32 %add, 5
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 75, i8* %2, i32 %mul) #5
  %3 = bitcast i8* %call to %struct.t_energy*
  store %struct.t_energy* %3, %struct.t_energy** %e, align 8, !tbaa !3
  %enm6 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1
  %4 = load i8*** %enm6, align 8, !tbaa !3
  %5 = bitcast i8** %4 to i8*
  %6 = load i32* %nener1, align 4, !tbaa !0
  %mul9 = shl i32 %6, 3
  %call11 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 76, i8* %5, i32 %mul9) #5
  %7 = bitcast i8* %call11 to i8**
  store i8** %7, i8*** %enm6, align 8, !tbaa !3
  %8 = load i32* %nener1, align 4, !tbaa !0
  %cmp54 = icmp slt i32 %0, %8
  br i1 %cmp54, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %9 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = load %struct.t_energy** %e, align 8, !tbaa !3
  %e16 = getelementptr inbounds %struct.t_energy* %10, i64 %indvars.iv, i32 0
  store float 0.000000e+00, float* %e16, align 4, !tbaa !4
  %eav = getelementptr inbounds %struct.t_energy* %10, i64 %indvars.iv, i32 1
  %11 = trunc i64 %indvars.iv to i32
  %sub = sub nsw i32 %11, %0
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds i8** %enm, i64 %idxprom26
  %12 = bitcast double* %eav to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 20, i32 8, i1 false)
  %13 = load i8** %arrayidx27, align 8, !tbaa !3
  %call28 = tail call i8* @gmx_strdup(i8* %13) #5
  %14 = load i8*** %enm6, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds i8** %14, i64 %indvars.iv
  store i8* %call28, i8** %arrayidx31, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = load i32* %nener1, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %16, %15
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret i32 %0
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @add_ebin(%struct.t_ebin* nocapture %eb, i32 %index, i32 %nener, float* nocapture %ener, i32 %step) #0 {
entry:
  %add = add nsw i32 %nener, %index
  %nener1 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0
  %0 = load i32* %nener1, align 4, !tbaa !0
  %cmp = icmp sgt i32 %add, %0
  %cmp2 = icmp slt i32 %index, 0
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 95, i32 %index, i32 %nener, i32 %0) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp4 = icmp sgt i32 %step, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %conv = sitofp i32 %step to double
  %div = fdiv double 1.000000e+00, %conv
  %add7 = fadd double %conv, 1.000000e+00
  %div8 = fdiv double %div, %add7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  %invmm.0 = phi double [ %div8, %if.then5 ], [ 0.000000e+00, %if.end ]
  %idxprom = sext i32 %index to i64
  %e10 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2
  %1 = load %struct.t_energy** %e10, align 8, !tbaa !3
  %cmp1154 = icmp sgt i32 %nener, 0
  br i1 %cmp1154, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %conv22 = sitofp i32 %step to double
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx14 = getelementptr inbounds float* %ener, i64 %indvars.iv
  %2 = load float* %arrayidx14, align 4, !tbaa !4
  %conv15 = fpext float %2 to double
  %arrayidx.sum = add i64 %indvars.iv, %idxprom
  %e19 = getelementptr inbounds %struct.t_energy* %1, i64 %arrayidx.sum, i32 0
  store float %2, float* %e19, align 4, !tbaa !4
  %esum = getelementptr inbounds %struct.t_energy* %1, i64 %arrayidx.sum, i32 2
  %3 = load double* %esum, align 8, !tbaa !5
  %mul = fmul double %conv22, %conv15
  %sub = fsub double %3, %mul
  %conv23 = fptrunc double %sub to float
  %mul.i = fmul float %conv23, %conv23
  %conv24 = fpext float %mul.i to double
  %mul25 = fmul double %invmm.0, %conv24
  %eav = getelementptr inbounds %struct.t_energy* %1, i64 %arrayidx.sum, i32 1
  %4 = load double* %eav, align 8, !tbaa !5
  %add28 = fadd double %4, %mul25
  store double %add28, double* %eav, align 8, !tbaa !5
  %add32 = fadd double %conv15, %3
  store double %add32, double* %esum, align 8, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nener
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end9
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @pr_ebin(%struct._IO_FILE* nocapture %fp, %struct.t_ebin* nocapture %eb, i32 %index, i32 %nener, i32 %nperline, i32 %prmode, i32 %tsteps, i32 %bPrHead) #0 {
entry:
  %cmp = icmp slt i32 %index, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %index) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i32 %nener, -1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %nener3 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0
  %0 = load i32* %nener3, align 4, !tbaa !0
  br label %if.end4

if.else:                                          ; preds = %if.end
  %add = add nsw i32 %nener, %index
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %nener.addr.0 = phi i32 [ %0, %if.then2 ], [ %add, %if.else ]
  %cmp596 = icmp sgt i32 %nener.addr.0, %index
  br i1 %cmp596, label %for.body.lr.ph, label %for.end50

for.body.lr.ph:                                   ; preds = %if.end4
  %tobool = icmp eq i32 %bPrHead, 0
  %cmp884 = icmp sgt i32 %nperline, 0
  %enm = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1
  %e = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2
  %conv.i = sitofp i32 %tsteps to double
  %1 = sub i32 0, %nperline
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end48
  %ee.098 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %ee.1.lcssa, %for.end48 ]
  %i.097 = phi i32 [ %index, %for.body.lr.ph ], [ %i.3.lcssa, %for.end48 ]
  br i1 %tobool, label %for.cond14.preheader, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.body
  %cmp985 = icmp slt i32 %i.097, %nener.addr.0
  %cmp9.86 = and i1 %cmp884, %cmp985
  br i1 %cmp9.86, label %for.body10.lr.ph, label %for.end

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %2 = sext i32 %i.097 to i64
  %3 = sub i32 %i.097, %nener.addr.0
  %4 = icmp ult i32 %3, %1
  %umax = select i1 %4, i32 %1, i32 %3
  %5 = sub i32 0, %umax
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %indvars.iv = phi i64 [ %2, %for.body10.lr.ph ], [ %indvars.iv.next, %for.body10 ]
  %j.088 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10 ]
  %6 = load i8*** %enm, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv
  %7 = load i8** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %7) #5
  %inc = add nsw i32 %j.088, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %inc, %5
  br i1 %exitcond, label %for.end, label %for.body10

for.end:                                          ; preds = %for.body10, %for.cond7.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body, %for.end
  %cmp1790 = icmp slt i32 %i.097, %nener.addr.0
  %or.cond91 = and i1 %cmp884, %cmp1790
  br i1 %or.cond91, label %for.body19.lr.ph, label %for.end48

for.body19.lr.ph:                                 ; preds = %for.cond14.preheader
  %8 = sext i32 %i.097 to i64
  %9 = sub i32 %i.097, %nener.addr.0
  %10 = icmp ult i32 %9, %1
  %umax101 = select i1 %10, i32 %1, i32 %9
  %11 = sub i32 0, %umax101
  br label %for.body19

for.body19:                                       ; preds = %if.end42, %for.body19.lr.ph
  %indvars.iv99 = phi i64 [ %8, %for.body19.lr.ph ], [ %indvars.iv.next100, %if.end42 ]
  %ee.194 = phi float [ %ee.098, %for.body19.lr.ph ], [ %ee.2, %if.end42 ]
  %j.193 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc46, %if.end42 ]
  switch i32 %prmode, label %if.else39 [
    i32 0, label %if.then21
    i32 2, label %if.then27
    i32 1, label %if.then34
  ]

if.then21:                                        ; preds = %for.body19
  %12 = load %struct.t_energy** %e, align 8, !tbaa !3
  %e24 = getelementptr inbounds %struct.t_energy* %12, i64 %indvars.iv99, i32 0
  %13 = load float* %e24, align 4, !tbaa !4
  br label %if.end42

if.then27:                                        ; preds = %for.body19
  %14 = load %struct.t_energy** %e, align 8, !tbaa !3
  %esum.i = getelementptr inbounds %struct.t_energy* %14, i64 %indvars.iv99, i32 2
  %15 = load double* %esum.i, align 8, !tbaa !5
  %div.i = fdiv double %15, %conv.i
  %eav1.i = getelementptr inbounds %struct.t_energy* %14, i64 %indvars.iv99, i32 1
  %16 = load double* %eav1.i, align 8, !tbaa !5
  %div3.i = fdiv double %16, %conv.i
  %call.i = tail call double @sqrt(double %div3.i) #5
  %call4.i = tail call double @fabs(double %div.i) #6
  %cmp.i = fcmp ogt double %call4.i, 1.200000e-38
  br i1 %cmp.i, label %if.then.i, label %rms_ener.exit

if.then.i:                                        ; preds = %if.then27
  %div6.i = fdiv double %call.i, %div.i
  %call7.i = tail call double @fabs(double %div6.i) #6
  %cmp8.i = fcmp olt double %call7.i, 1.000000e-06
  br i1 %cmp8.i, label %if.then10.i, label %rms_ener.exit

if.then10.i:                                      ; preds = %if.then.i
  br label %rms_ener.exit

rms_ener.exit:                                    ; preds = %if.then27, %if.then.i, %if.then10.i
  %rms.0.i = phi double [ 0.000000e+00, %if.then10.i ], [ %call.i, %if.then.i ], [ %call.i, %if.then27 ]
  %conv12.i = fptrunc double %rms.0.i to float
  br label %if.end42

if.then34:                                        ; preds = %for.body19
  %17 = load %struct.t_energy** %e, align 8, !tbaa !3
  %esum = getelementptr inbounds %struct.t_energy* %17, i64 %indvars.iv99, i32 2
  %18 = load double* %esum, align 8, !tbaa !5
  %div = fdiv double %18, %conv.i
  %conv38 = fptrunc double %div to float
  br label %if.end42

if.else39:                                        ; preds = %for.body19
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str8, i64 0, i64 0), i32 %prmode) #5
  br label %if.end42

if.end42:                                         ; preds = %rms_ener.exit, %if.else39, %if.then34, %if.then21
  %ee.2 = phi float [ %13, %if.then21 ], [ %conv12.i, %rms_ener.exit ], [ %conv38, %if.then34 ], [ %ee.194, %if.else39 ]
  %conv43 = fpext float %ee.2 to double
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), double %conv43) #5
  %inc46 = add nsw i32 %j.193, 1
  %indvars.iv.next100 = add i64 %indvars.iv99, 1
  %exitcond102 = icmp eq i32 %inc46, %11
  br i1 %exitcond102, label %for.cond14.for.end48_crit_edge, label %for.body19

for.cond14.for.end48_crit_edge:                   ; preds = %if.end42
  %19 = sub i32 %i.097, %umax101
  br label %for.end48

for.end48:                                        ; preds = %for.cond14.for.end48_crit_edge, %for.cond14.preheader
  %ee.1.lcssa = phi float [ %ee.2, %for.cond14.for.end48_crit_edge ], [ %ee.098, %for.cond14.preheader ]
  %i.3.lcssa = phi i32 [ %19, %for.cond14.for.end48_crit_edge ], [ %i.097, %for.cond14.preheader ]
  %fputc83 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %cmp5 = icmp slt i32 %i.3.lcssa, %nener.addr.0
  br i1 %cmp5, label %for.body, label %for.end50

for.end50:                                        ; preds = %for.end48, %if.end4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

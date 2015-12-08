; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/mat_invert.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@niter = external global i32
@rsqprop = external global double
@lattice = external global %struct.site*
@even_sites_on_node = external global i32
@sites_on_node = external global i32
@.str1 = private unnamed_addr constant [41 x i8] c"%d %d  ( %.4e , %.4e )  ( %.4e , %.4e )\0A\00", align 1
@this_node = external global i32
@.str2 = private unnamed_addr constant [37 x i8] c"Inversion checked, frac. error = %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@str = private unnamed_addr constant [6 x i8] c"BOTCH\00"

; Function Attrs: nounwind optsize uwtable
define i32 @mat_invert_cg(i32 %src, i32 %dest, i32 %temp, double %mass) #0 {
entry:
  %finalrsq = alloca double, align 8
  call void @clear_latvec(i32 %dest, i32 3) #6
  %0 = load i32* @niter, align 4, !tbaa !0
  %1 = load double* @rsqprop, align 8, !tbaa !3
  %call = call i32 @ks_congrad(i32 %src, i32 %dest, double %mass, i32 %0, double %1, i32 3, double* %finalrsq) #6
  call void @dslash(i32 %dest, i32 1232, i32 3) #6
  %mul = fmul double %mass, -2.000000e+00
  call void @scalar_mult_add_latvec(i32 1232, i32 %dest, double %mul, i32 1232, i32 3) #6
  call void @scalar_mult_latvec(i32 1232, double -1.000000e+00, i32 %dest, i32 3) #6
  ret i32 %call
}

; Function Attrs: optsize
declare void @clear_latvec(i32, i32) #1

; Function Attrs: optsize
declare i32 @ks_congrad(i32, i32, double, i32, double, i32, double*) #1

; Function Attrs: optsize
declare void @dslash(i32, i32, i32) #1

; Function Attrs: optsize
declare void @scalar_mult_add_latvec(i32, i32, double, i32, i32) #1

; Function Attrs: optsize
declare void @scalar_mult_latvec(i32, double, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @mat_invert_uml(i32 %src, i32 %dest, i32 %temp, double %mass) #0 {
entry:
  %finalrsq = alloca double, align 8
  %cmp = icmp eq i32 %src, %temp
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([6 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 0) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @dslash(i32 %src, i32 1232, i32 2) #6
  %mul = fmul double %mass, -2.000000e+00
  call void @scalar_mult_add_latvec(i32 1232, i32 %src, double %mul, i32 %temp, i32 2) #6
  call void @scalar_mult_latvec(i32 %temp, double -1.000000e+00, i32 %temp, i32 2) #6
  %0 = load i32* @niter, align 4, !tbaa !0
  %1 = load double* @rsqprop, align 8, !tbaa !3
  %call9 = call i32 @ks_congrad(i32 %temp, i32 %dest, double %mass, i32 %0, double %1, i32 2, double* %finalrsq) #6
  call void @dslash(i32 %dest, i32 1232, i32 1) #6
  %2 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %3 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp1848 = icmp slt i32 %2, %3
  br i1 %cmp1848, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %4 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom = sext i32 %2 to i64
  %arrayidx17 = getelementptr inbounds %struct.site* %4, i64 %idxprom
  %idx.ext = sext i32 %src to i64
  %idx.ext21 = sext i32 %dest to i64
  %mul25 = fmul double %mass, 2.000000e+00
  %div = fdiv double 1.000000e+00, %mul25
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %s.050 = phi %struct.site* [ %arrayidx17, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %i.049 = phi i32 [ %2, %for.body.lr.ph ], [ %inc, %for.body ]
  %5 = bitcast %struct.site* %s.050 to i8*
  %add.ptr = getelementptr inbounds i8* %5, i64 %idx.ext
  %6 = bitcast i8* %add.ptr to %struct.su3_vector*
  %ttt20 = getelementptr inbounds %struct.site* %s.050, i64 0, i32 15
  %add.ptr22 = getelementptr inbounds i8* %5, i64 %idx.ext21
  %7 = bitcast i8* %add.ptr22 to %struct.su3_vector*
  call void @sub_su3_vector(%struct.su3_vector* %6, %struct.su3_vector* %ttt20, %struct.su3_vector* %7) #6
  call void @scalar_mult_su3_vector(%struct.su3_vector* %7, double %div, %struct.su3_vector* %7) #6
  %inc = add nsw i32 %i.049, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.050, i64 1
  %8 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp18 = icmp slt i32 %inc, %8
  br i1 %cmp18, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  ret i32 %call9
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @sub_su3_vector(%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: optsize
declare void @scalar_mult_su3_vector(%struct.su3_vector*, double, %struct.su3_vector*) #1

; Function Attrs: nounwind optsize uwtable
define void @check_invert(i32 %src, i32 %dest, double %mass, double %tol) #0 {
entry:
  %sum = alloca double, align 8
  %sum2 = alloca double, align 8
  call void @dslash(i32 %src, i32 1136, i32 3) #6
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp132 = icmp sgt i32 %0, 0
  br i1 %cmp132, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  store double 0.000000e+00, double* %sum, align 8, !tbaa !3
  store double 0.000000e+00, double* %sum2, align 8, !tbaa !3
  br label %for.end78

for.body.lr.ph:                                   ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !4
  %idx.ext = sext i32 %src to i64
  %mul = fmul double %mass, 2.000000e+00
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %s.0133 = phi %struct.site* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %cg_p3 = getelementptr inbounds %struct.site* %s.0133, i64 0, i32 13
  %2 = bitcast %struct.site* %s.0133 to i8*
  %add.ptr = getelementptr inbounds i8* %2, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.su3_vector*
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %cg_p3, %struct.su3_vector* %3, double %mul, %struct.su3_vector* %cg_p3) #6
  %inc = add nsw i32 %i.0134, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0133, i64 1
  %4 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  store double 0.000000e+00, double* %sum, align 8, !tbaa !3
  store double 0.000000e+00, double* %sum2, align 8, !tbaa !3
  %cmp6129 = icmp sgt i32 %4, 0
  br i1 %cmp6129, label %for.cond9.preheader.lr.ph, label %for.end78

for.cond9.preheader.lr.ph:                        ; preds = %for.end
  %5 = load %struct.site** @lattice, align 8, !tbaa !4
  %idx.ext13 = sext i32 %dest to i64
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond9.preheader.lr.ph, %for.end70
  %i.1131 = phi i32 [ 0, %for.cond9.preheader.lr.ph ], [ %inc76, %for.end70 ]
  %s.1130 = phi %struct.site* [ %5, %for.cond9.preheader.lr.ph ], [ %incdec.ptr77, %for.end70 ]
  %6 = bitcast %struct.site* %s.1130 to i8*
  %add.ptr14 = getelementptr inbounds i8* %6, i64 %idx.ext13
  %c = bitcast i8* %add.ptr14 to [3 x %struct.complex]*
  br label %for.body12

for.body12:                                       ; preds = %if.end64, %for.cond9.preheader
  %indvars.iv = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next, %if.end64 ]
  %flag.0127 = phi i32 [ 0, %for.cond9.preheader ], [ %flag.1125, %if.end64 ]
  %real = getelementptr inbounds [3 x %struct.complex]* %c, i64 0, i64 %indvars.iv, i32 0
  %7 = load double* %real, align 8, !tbaa !3
  %real20 = getelementptr inbounds %struct.site* %s.1130, i64 0, i32 13, i32 0, i64 %indvars.iv, i32 0
  %8 = load double* %real20, align 8, !tbaa !3
  %sub = fsub double %7, %8
  %imag = getelementptr inbounds [3 x %struct.complex]* %c, i64 0, i64 %indvars.iv, i32 1
  %9 = load double* %imag, align 8, !tbaa !3
  %imag30 = getelementptr inbounds %struct.site* %s.1130, i64 0, i32 13, i32 0, i64 %indvars.iv, i32 1
  %10 = load double* %imag30, align 8, !tbaa !3
  %sub31 = fsub double %9, %10
  %call = call double @fabs(double %sub) #8
  %cmp32 = fcmp ogt double %call, %tol
  br i1 %cmp32, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body12
  %call34 = call double @fabs(double %sub31) #8
  %cmp35 = fcmp ogt double %call34, %tol
  br i1 %cmp35, label %if.then37, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool = icmp eq i32 %flag.0127, 0
  br i1 %tobool, label %if.end64, label %if.then37

if.then37:                                        ; preds = %if.end, %lor.lhs.false, %for.body12
  %flag.1126 = phi i32 [ %flag.0127, %if.end ], [ 1, %for.body12 ], [ 1, %lor.lhs.false ]
  %11 = trunc i64 %indvars.iv to i32
  %call60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i32 %i.1131, i32 %11, double %7, double %9, double %8, double %10) #6
  call void @terminate(i32 0) #6
  br label %if.end64

if.end64:                                         ; preds = %if.end, %if.then37
  %flag.1125 = phi i32 [ %flag.1126, %if.then37 ], [ 0, %if.end ]
  %mul65 = fmul double %sub, %sub
  %mul66 = fmul double %sub31, %sub31
  %add = fadd double %mul65, %mul66
  %12 = load double* %sum, align 8, !tbaa !3
  %add67 = fadd double %add, %12
  store double %add67, double* %sum, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end70, label %for.body12

for.end70:                                        ; preds = %if.end64
  %13 = bitcast i8* %add.ptr14 to %struct.su3_vector*
  %call73 = call double @magsq_su3vec(%struct.su3_vector* %13) #6
  %14 = load double* %sum2, align 8, !tbaa !3
  %add74 = fadd double %call73, %14
  store double %add74, double* %sum2, align 8, !tbaa !3
  %inc76 = add nsw i32 %i.1131, 1
  %incdec.ptr77 = getelementptr inbounds %struct.site* %s.1130, i64 1
  %15 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp6 = icmp slt i32 %inc76, %15
  br i1 %cmp6, label %for.cond9.preheader, label %for.end78

for.end78:                                        ; preds = %for.end70, %for.end.thread, %for.end
  call void @g_doublesum(double* %sum) #6
  call void @g_doublesum(double* %sum2) #6
  call void (...)* @g_sync() #6
  %16 = load i32* @this_node, align 4, !tbaa !0
  %cmp79 = icmp eq i32 %16, 0
  br i1 %cmp79, label %if.then81, label %if.end85

if.then81:                                        ; preds = %for.end78
  %17 = load double* %sum, align 8, !tbaa !3
  %18 = load double* %sum2, align 8, !tbaa !3
  %div = fdiv double %17, %18
  %call82 = call double @sqrt(double %div) #6
  %call83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), double %call82) #6
  %19 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call84 = call i32 @fflush(%struct._IO_FILE* %19) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %for.end78
  ret void
}

; Function Attrs: optsize
declare void @scalar_mult_add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, double, %struct.su3_vector*) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare void @terminate(i32) #1

; Function Attrs: optsize
declare double @magsq_su3vec(%struct.su3_vector*) #1

; Function Attrs: optsize
declare void @g_doublesum(double*) #1

; Function Attrs: optsize
declare void @g_sync(...) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}

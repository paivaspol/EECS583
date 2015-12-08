; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/grsource_imp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

@lattice = external global %struct.site*
@sites_on_node = external global i32
@.str = private unnamed_addr constant [18 x i8] c"Site %d %d %d %d\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"%d %d\09%e\09%e\09%e\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @grsource_imp(i32 %dest, double %mass, i32 %parity) #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp38 = icmp sgt i32 %0, 0
  br i1 %cmp38, label %for.cond1.preheader.lr.ph, label %for.end12

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc10
  %s.040 = phi %struct.site* [ %1, %for.cond1.preheader.lr.ph ], [ %incdec.ptr, %for.inc10 ]
  %i.039 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc11, %for.inc10 ]
  %site_prn = getelementptr inbounds %struct.site* %s.040, i64 0, i32 6
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %call = tail call double @gaussian_rand_no(%struct.double_prn* %site_prn) #4
  %real = getelementptr inbounds %struct.site* %s.040, i64 0, i32 16, i32 0, i64 %indvars.iv, i32 0
  store double %call, double* %real, align 8, !tbaa !4
  %call5 = tail call double @gaussian_rand_no(%struct.double_prn* %site_prn) #4
  %imag = getelementptr inbounds %struct.site* %s.040, i64 0, i32 16, i32 0, i64 %indvars.iv, i32 1
  store double %call5, double* %imag, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc10, label %for.body3

for.inc10:                                        ; preds = %for.body3
  %inc11 = add nsw i32 %i.039, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.040, i64 1
  %2 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc11, %2
  br i1 %cmp, label %for.cond1.preheader, label %for.end12

for.end12:                                        ; preds = %for.inc10, %entry
  tail call void @dslash(i32 1280, i32 %dest, i32 %parity) #4
  tail call void @scalar_mult_latvec(i32 %dest, double -1.000000e+00, i32 %dest, i32 %parity) #4
  %mul = fmul double %mass, 2.000000e+00
  tail call void @scalar_mult_add_latvec(i32 %dest, i32 1280, double %mul, i32 %dest, i32 %parity) #4
  ret void
}

; Function Attrs: optsize
declare double @gaussian_rand_no(%struct.double_prn*) #1

; Function Attrs: optsize
declare void @dslash(i32, i32, i32) #1

; Function Attrs: optsize
declare void @scalar_mult_latvec(i32, double, i32, i32) #1

; Function Attrs: optsize
declare void @scalar_mult_add_latvec(i32, i32, double, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @checkmul_imp(i32 %src, double %mass) #0 {
entry:
  tail call void @dslash(i32 %src, i32 1232, i32 3) #4
  %mul = fmul double %mass, 2.000000e+00
  tail call void @scalar_mult_add_latvec(i32 1232, i32 %src, double %mul, i32 1232, i32 3) #4
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp95 = icmp sgt i32 %0, 0
  br i1 %cmp95, label %for.body.lr.ph, label %for.end66

for.body.lr.ph:                                   ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %s.097 = phi %struct.site* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.end ]
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc65, %for.end ]
  %x = getelementptr inbounds %struct.site* %s.097, i64 0, i32 0
  %2 = load i16* %x, align 2, !tbaa !5
  %conv17 = sext i16 %2 to i32
  %y = getelementptr inbounds %struct.site* %s.097, i64 0, i32 1
  %3 = load i16* %y, align 2, !tbaa !5
  %conv18 = sext i16 %3 to i32
  %z = getelementptr inbounds %struct.site* %s.097, i64 0, i32 2
  %4 = load i16* %z, align 2, !tbaa !5
  %conv19 = sext i16 %4 to i32
  %t = getelementptr inbounds %struct.site* %s.097, i64 0, i32 3
  %5 = load i16* %t, align 2, !tbaa !5
  %conv20 = sext i16 %5 to i32
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %conv17, i32 %conv18, i32 %conv19, i32 %conv20) #4
  br label %for.body24

for.body24:                                       ; preds = %for.body24, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body24 ]
  %real = getelementptr inbounds %struct.site* %s.097, i64 0, i32 16, i32 0, i64 %indvars.iv, i32 0
  %6 = load double* %real, align 8, !tbaa !4
  %real30 = getelementptr inbounds %struct.site* %s.097, i64 0, i32 15, i32 0, i64 %indvars.iv, i32 0
  %7 = load double* %real30, align 8, !tbaa !4
  %sub = fsub double %6, %7
  %8 = trunc i64 %indvars.iv to i32
  %call41 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i32 %i.096, i32 %8, double %6, double %7, double %sub) #4
  %imag = getelementptr inbounds %struct.site* %s.097, i64 0, i32 16, i32 0, i64 %indvars.iv, i32 1
  %9 = load double* %imag, align 8, !tbaa !4
  %imag50 = getelementptr inbounds %struct.site* %s.097, i64 0, i32 15, i32 0, i64 %indvars.iv, i32 1
  %10 = load double* %imag50, align 8, !tbaa !4
  %sub61 = fsub double %9, %10
  %call62 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i32 %i.096, i32 %8, double %9, double %10, double %sub61) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body24

for.end:                                          ; preds = %for.body24
  %putchar = tail call i32 @putchar(i32 10) #3
  %inc65 = add nsw i32 %i.096, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.097, i64 1
  %11 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc65, %11
  br i1 %cmp, label %for.body, label %for.end66

for.end66:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}

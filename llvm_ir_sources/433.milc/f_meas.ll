; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/f_meas.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

@lattice = external global %struct.site*
@even_sites_on_node = external global i32
@sites_on_node = external global i32
@volume = external global i32
@this_node = external global i32
@.str = private unnamed_addr constant [38 x i8] c"PBP: mass %e     %e  %e ( %d of %d )\0A\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"FACTION: mass = %e,  %e ( %d of %d )\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @f_meas_imp(i32 %phi_off, i32 %xxx_off, double %mass) #0 {
for.body:
  %rpbp_e = alloca double, align 8
  %rpbp_o = alloca double, align 8
  %rfaction = alloca double, align 8
  %idx.ext22 = sext i32 %xxx_off to i64
  %idx.ext = sext i32 %phi_off to i64
  store double 0.000000e+00, double* %rfaction, align 8, !tbaa !0
  store double 0.000000e+00, double* %rpbp_o, align 8, !tbaa !0
  store double 0.000000e+00, double* %rpbp_e, align 8, !tbaa !0
  call void @grsource_imp(i32 %phi_off, double %mass, i32 3) #3
  %call = call i32 @mat_invert_uml(i32 1280, i32 %xxx_off, i32 %phi_off, double %mass) #3
  %0 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %cmp382 = icmp sgt i32 %0, 0
  br i1 %cmp382, label %for.body5.lr.ph, label %for.end

for.body5.lr.ph:                                  ; preds = %for.body
  %1 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %i.084 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.body5 ]
  %st.083 = phi %struct.site* [ %1, %for.body5.lr.ph ], [ %incdec.ptr, %for.body5 ]
  %2 = bitcast %struct.site* %st.083 to i8*
  %add.ptr = getelementptr inbounds i8* %2, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.su3_vector*
  %add.ptr7 = getelementptr inbounds i8* %2, i64 %idx.ext22
  %4 = bitcast i8* %add.ptr7 to %struct.su3_vector*
  %call8 = call { double, double } @su3_dot(%struct.su3_vector* %3, %struct.su3_vector* %4) #3
  %5 = extractvalue { double, double } %call8, 0
  %6 = load double* %rfaction, align 8, !tbaa !0
  %add = fadd double %6, %5
  store double %add, double* %rfaction, align 8, !tbaa !0
  %g_rand9 = getelementptr inbounds %struct.site* %st.083, i64 0, i32 16
  %call12 = call { double, double } @su3_dot(%struct.su3_vector* %g_rand9, %struct.su3_vector* %4) #3
  %7 = extractvalue { double, double } %call12, 0
  %8 = load double* %rpbp_e, align 8, !tbaa !0
  %add15 = fadd double %8, %7
  store double %add15, double* %rpbp_e, align 8, !tbaa !0
  %inc = add nsw i32 %i.084, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %st.083, i64 1
  %9 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %inc, %9
  br i1 %cmp3, label %for.body5, label %for.end

for.end:                                          ; preds = %for.body5, %for.body
  %.lcssa = phi i32 [ %0, %for.body ], [ %9, %for.body5 ]
  %10 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp1885 = icmp slt i32 %.lcssa, %10
  br i1 %cmp1885, label %for.body20.lr.ph, label %for.end31

for.body20.lr.ph:                                 ; preds = %for.end
  %11 = load %struct.site** @lattice, align 8, !tbaa !4
  %idxprom = sext i32 %.lcssa to i64
  %arrayidx16 = getelementptr inbounds %struct.site* %11, i64 %idxprom
  br label %for.body20

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %i.187 = phi i32 [ %.lcssa, %for.body20.lr.ph ], [ %inc29, %for.body20 ]
  %st.186 = phi %struct.site* [ %arrayidx16, %for.body20.lr.ph ], [ %incdec.ptr30, %for.body20 ]
  %g_rand21 = getelementptr inbounds %struct.site* %st.186, i64 0, i32 16
  %12 = bitcast %struct.site* %st.186 to i8*
  %add.ptr23 = getelementptr inbounds i8* %12, i64 %idx.ext22
  %13 = bitcast i8* %add.ptr23 to %struct.su3_vector*
  %call24 = call { double, double } @su3_dot(%struct.su3_vector* %g_rand21, %struct.su3_vector* %13) #3
  %14 = extractvalue { double, double } %call24, 0
  %15 = load double* %rpbp_o, align 8, !tbaa !0
  %add27 = fadd double %15, %14
  store double %add27, double* %rpbp_o, align 8, !tbaa !0
  %inc29 = add nsw i32 %i.187, 1
  %incdec.ptr30 = getelementptr inbounds %struct.site* %st.186, i64 1
  %16 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp18 = icmp slt i32 %inc29, %16
  br i1 %cmp18, label %for.body20, label %for.end31

for.end31:                                        ; preds = %for.body20, %for.end
  call void @g_doublesum(double* %rpbp_o) #3
  call void @g_doublesum(double* %rpbp_e) #3
  call void @g_doublesum(double* %rfaction) #3
  %17 = load i32* @volume, align 4, !tbaa !3
  %conv32 = sitofp i32 %17 to double
  %div = fdiv double 2.000000e+00, %conv32
  %18 = load double* %rfaction, align 8, !tbaa !0
  %div37 = fdiv double 1.000000e+00, %conv32
  %mul38 = fmul double %18, %div37
  %19 = load i32* @this_node, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %19, 0
  br i1 %cmp39, label %if.end, label %for.end51

if.end:                                           ; preds = %for.end31
  %20 = load double* %rpbp_e, align 8, !tbaa !0
  %21 = load double* %rpbp_o, align 8, !tbaa !0
  %mul35 = fmul double %div, %20
  %mul = fmul double %div, %21
  %call42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), double %mass, double %mul35, double %mul, i32 1, i32 1) #3
  %.pr = load i32* @this_node, align 4, !tbaa !3
  %cmp43 = icmp eq i32 %.pr, 0
  br i1 %cmp43, label %if.then45, label %for.end51

if.then45:                                        ; preds = %if.end
  %call47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), double %mass, double %mul38, i32 1, i32 1) #3
  br label %for.end51

for.end51:                                        ; preds = %if.then45, %if.end, %for.end31
  ret void
}

; Function Attrs: optsize
declare void @grsource_imp(i32, double, i32) #1

; Function Attrs: optsize
declare i32 @mat_invert_uml(i32, i32, i32, double) #1

; Function Attrs: optsize
declare { double, double } @su3_dot(%struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: optsize
declare void @g_doublesum(double*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}

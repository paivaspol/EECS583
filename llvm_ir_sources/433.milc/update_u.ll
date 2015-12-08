; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/update_u.c'
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

; Function Attrs: nounwind optsize uwtable
define void @update_u(double %eps) #0 {
entry:
  %temp1 = alloca %struct.su3_matrix, align 8
  %temp2 = alloca %struct.su3_matrix, align 8
  %htemp = alloca %struct.su3_matrix, align 8
  %0 = bitcast %struct.su3_matrix* %temp1 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = bitcast %struct.su3_matrix* %temp2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #1
  %2 = bitcast %struct.su3_matrix* %htemp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %2) #1
  %div = fmul double %eps, 5.000000e-01
  %div1 = fdiv double %eps, 3.000000e+00
  %div2 = fmul double %eps, 2.500000e-01
  %div3 = fdiv double %eps, 5.000000e+00
  %div4 = fdiv double %eps, 6.000000e+00
  %3 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp33 = icmp sgt i32 %3, 0
  br i1 %cmp33, label %for.cond5.preheader.lr.ph, label %for.end13

for.cond5.preheader.lr.ph:                        ; preds = %entry
  %4 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond5.preheader.lr.ph, %for.inc11
  %i.035 = phi i32 [ 0, %for.cond5.preheader.lr.ph ], [ %inc12, %for.inc11 ]
  %s.034 = phi %struct.site* [ %4, %for.cond5.preheader.lr.ph ], [ %incdec.ptr, %for.inc11 ]
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.cond5.preheader
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.body7 ]
  %arrayidx = getelementptr inbounds %struct.site* %s.034, i64 0, i32 9, i64 %indvars.iv
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %arrayidx, %struct.su3_matrix* %htemp) #3
  %arrayidx10 = getelementptr inbounds %struct.site* %s.034, i64 0, i32 8, i64 %indvars.iv
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %arrayidx10, %struct.su3_matrix* %temp1) #3
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %arrayidx10, %struct.su3_matrix* %temp1, double %div4, %struct.su3_matrix* %temp2) #3
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1) #3
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %arrayidx10, %struct.su3_matrix* %temp1, double %div3, %struct.su3_matrix* %temp2) #3
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1) #3
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %arrayidx10, %struct.su3_matrix* %temp1, double %div2, %struct.su3_matrix* %temp2) #3
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1) #3
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %arrayidx10, %struct.su3_matrix* %temp1, double %div1, %struct.su3_matrix* %temp2) #3
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1) #3
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %arrayidx10, %struct.su3_matrix* %temp1, double %div, %struct.su3_matrix* %temp2) #3
  call void @mult_su3_nn(%struct.su3_matrix* %htemp, %struct.su3_matrix* %temp2, %struct.su3_matrix* %temp1) #3
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %arrayidx10, %struct.su3_matrix* %temp1, double %eps, %struct.su3_matrix* %temp2) #3
  call void @su3mat_copy(%struct.su3_matrix* %temp2, %struct.su3_matrix* %arrayidx10) #3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc11, label %for.body7

for.inc11:                                        ; preds = %for.body7
  %inc12 = add nsw i32 %i.035, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.034, i64 1
  %5 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc12, %5
  br i1 %cmp, label %for.cond5.preheader, label %for.end13

for.end13:                                        ; preds = %for.inc11, %entry
  call void @llvm.lifetime.end(i64 144, i8* %2) #1
  call void @llvm.lifetime.end(i64 144, i8* %1) #1
  call void @llvm.lifetime.end(i64 144, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @uncompress_anti_hermitian(%struct.anti_hermitmat*, %struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @scalar_mult_add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, double, %struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @su3mat_copy(%struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

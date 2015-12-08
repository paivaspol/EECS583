; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/ploop3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@lattice = external global %struct.site*
@gen_pt = external global [16 x i8**]
@even_sites_on_node = external global i32
@nt = external global i32
@nx = external global i32
@ny = external global i32
@nz = external global i32

; Function Attrs: nounwind optsize uwtable
define { double, double } @ploop() #0 {
entry:
  %sum = alloca %struct.complex, align 8
  %tmat = alloca %struct.su3_matrix, align 8
  %d = alloca [4 x i32], align 16
  %0 = bitcast %struct.su3_matrix* %tmat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %call = call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00) #3
  %1 = extractvalue { double, double } %call, 0
  %2 = extractvalue { double, double } %call, 1
  %coerce.sroa.0.0.idx = getelementptr inbounds %struct.complex* %sum, i64 0, i32 0
  store double %1, double* %coerce.sroa.0.0.idx, align 8
  %coerce.sroa.1.8.idx76 = getelementptr inbounds %struct.complex* %sum, i64 0, i32 1
  store double %2, double* %coerce.sroa.1.8.idx76, align 8
  %arrayidx = getelementptr inbounds [4 x i32]* %d, i64 0, i64 2
  store i32 0, i32* %arrayidx, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds [4 x i32]* %d, i64 0, i64 1
  store i32 0, i32* %arrayidx1, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds [4 x i32]* %d, i64 0, i64 0
  store i32 0, i32* %arrayidx2, align 16, !tbaa !0
  %3 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call6 = call %struct.msg_tag* @start_gather(i32 544, i32 144, i32 3, i32 2, i8** %3) #3
  call void @wait_gather(%struct.msg_tag* %call6) #3
  %4 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cmp107 = icmp sgt i32 %4, 0
  br i1 %cmp107, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %5 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv110 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next111, %for.body ]
  %st.0108 = phi %struct.site* [ %5, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %arrayidx9 = getelementptr inbounds %struct.site* %st.0108, i64 0, i32 8, i64 3
  %6 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i8** %6, i64 %indvars.iv110
  %7 = load i8** %arrayidx10, align 8, !tbaa !3
  %8 = bitcast i8* %7 to %struct.su3_matrix*
  %tempmat1 = getelementptr inbounds %struct.site* %st.0108, i64 0, i32 18
  call void @mult_su3_nn(%struct.su3_matrix* %arrayidx9, %struct.su3_matrix* %8, %struct.su3_matrix* %tempmat1) #3
  %indvars.iv.next111 = add i64 %indvars.iv110, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %st.0108, i64 1
  %9 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %10 = trunc i64 %indvars.iv.next111 to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @cleanup_gather(%struct.msg_tag* %call6) #3
  %11 = load i32* @nt, align 4, !tbaa !0
  %cmp12105 = icmp sgt i32 %11, 2
  br i1 %cmp12105, label %for.body14.lr.ph, label %for.end43

for.body14.lr.ph:                                 ; preds = %for.end
  %arrayidx15 = getelementptr inbounds [4 x i32]* %d, i64 0, i64 3
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.end41
  %t.0106 = phi i32 [ 2, %for.body14.lr.ph ], [ %add, %for.end41 ]
  store i32 %t.0106, i32* %arrayidx15, align 4, !tbaa !0
  %12 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %call23 = call %struct.msg_tag* @start_general_gather(i32 1520, i32 144, i32* %arrayidx2, i32 2, i8** %12) #3
  call void @wait_general_gather(%struct.msg_tag* %call23) #3
  %13 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cmp25102 = icmp sgt i32 %13, 0
  br i1 %cmp25102, label %for.body27.lr.ph, label %for.end41

for.body27.lr.ph:                                 ; preds = %for.body14
  %14 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body27

for.body27:                                       ; preds = %for.body27.lr.ph, %for.inc38
  %15 = phi i32 [ %13, %for.body27.lr.ph ], [ %22, %for.inc38 ]
  %indvars.iv = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next, %for.inc38 ]
  %st.1103 = phi %struct.site* [ %14, %for.body27.lr.ph ], [ %incdec.ptr40, %for.inc38 ]
  %t28 = getelementptr inbounds %struct.site* %st.1103, i64 0, i32 3
  %16 = load i16* %t28, align 2, !tbaa !4
  %cmp30 = icmp sgt i16 %16, 1
  br i1 %cmp30, label %for.inc38, label %if.end

if.end:                                           ; preds = %for.body27
  %tempmat132 = getelementptr inbounds %struct.site* %st.1103, i64 0, i32 18
  %17 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds i8** %17, i64 %indvars.iv
  %18 = load i8** %arrayidx34, align 8, !tbaa !3
  %19 = bitcast i8* %18 to %struct.su3_matrix*
  call void @mult_su3_nn(%struct.su3_matrix* %tempmat132, %struct.su3_matrix* %19, %struct.su3_matrix* %tmat) #3
  %20 = load %struct.site** @lattice, align 8, !tbaa !3
  %tempmat137 = getelementptr inbounds %struct.site* %20, i64 %indvars.iv, i32 18
  %21 = bitcast %struct.su3_matrix* %tempmat137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %0, i64 144, i32 8, i1 false), !tbaa.struct !5
  %.pre112 = load i32* @even_sites_on_node, align 4, !tbaa !0
  br label %for.inc38

for.inc38:                                        ; preds = %for.body27, %if.end
  %22 = phi i32 [ %15, %for.body27 ], [ %.pre112, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr40 = getelementptr inbounds %struct.site* %st.1103, i64 1
  %23 = trunc i64 %indvars.iv.next to i32
  %cmp25 = icmp slt i32 %23, %22
  br i1 %cmp25, label %for.body27, label %for.end41

for.end41:                                        ; preds = %for.inc38, %for.body14
  call void @cleanup_general_gather(%struct.msg_tag* %call23) #3
  %add = add nsw i32 %t.0106, 2
  %24 = load i32* @nt, align 4, !tbaa !0
  %cmp12 = icmp slt i32 %add, %24
  br i1 %cmp12, label %for.body14, label %for.end43

for.end43:                                        ; preds = %for.end41, %for.end
  %25 = load i32* @even_sites_on_node, align 4, !tbaa !0
  %cmp4599 = icmp sgt i32 %25, 0
  br i1 %cmp4599, label %for.body47.lr.ph, label %for.end64

for.body47.lr.ph:                                 ; preds = %for.end43
  %26 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body47

for.body47:                                       ; preds = %for.body47.lr.ph, %for.inc61
  %27 = phi i32 [ %25, %for.body47.lr.ph ], [ %33, %for.inc61 ]
  %i.2101 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc62, %for.inc61 ]
  %st.2100 = phi %struct.site* [ %26, %for.body47.lr.ph ], [ %incdec.ptr63, %for.inc61 ]
  %t48 = getelementptr inbounds %struct.site* %st.2100, i64 0, i32 3
  %28 = load i16* %t48, align 2, !tbaa !4
  %cmp50 = icmp sgt i16 %28, 1
  br i1 %cmp50, label %for.inc61, label %if.end53

if.end53:                                         ; preds = %for.body47
  %tempmat154 = getelementptr inbounds %struct.site* %st.2100, i64 0, i32 18
  %call55 = call { double, double } @trace_su3(%struct.su3_matrix* %tempmat154) #3
  %29 = extractvalue { double, double } %call55, 0
  %30 = extractvalue { double, double } %call55, 1
  %31 = load double* %coerce.sroa.0.0.idx, align 8, !tbaa !6
  %add58 = fadd double %31, %29
  store double %add58, double* %coerce.sroa.0.0.idx, align 8, !tbaa !6
  %32 = load double* %coerce.sroa.1.8.idx76, align 8, !tbaa !6
  %add60 = fadd double %30, %32
  store double %add60, double* %coerce.sroa.1.8.idx76, align 8, !tbaa !6
  %.pre = load i32* @even_sites_on_node, align 4, !tbaa !0
  br label %for.inc61

for.inc61:                                        ; preds = %for.body47, %if.end53
  %33 = phi i32 [ %27, %for.body47 ], [ %.pre, %if.end53 ]
  %inc62 = add nsw i32 %i.2101, 1
  %incdec.ptr63 = getelementptr inbounds %struct.site* %st.2100, i64 1
  %cmp45 = icmp slt i32 %inc62, %33
  br i1 %cmp45, label %for.body47, label %for.end64

for.end64:                                        ; preds = %for.inc61, %for.end43
  call void @g_complexsum(%struct.complex* %sum) #3
  %34 = load double* %coerce.sroa.0.0.idx, align 8, !tbaa !6
  %35 = load i32* @nx, align 4, !tbaa !0
  %36 = load i32* @ny, align 4, !tbaa !0
  %mul = mul nsw i32 %36, %35
  %37 = load i32* @nz, align 4, !tbaa !0
  %mul66 = mul nsw i32 %mul, %37
  %conv67 = sitofp i32 %mul66 to double
  %div = fdiv double %34, %conv67
  %38 = load double* %coerce.sroa.1.8.idx76, align 8, !tbaa !6
  %div73 = fdiv double %38, %conv67
  call void @llvm.lifetime.end(i64 144, i8* %0) #1
  %.fca.0.insert = insertvalue { double, double } undef, double %div, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %div73, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare { double, double } @cmplx(double, double) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #2

; Function Attrs: optsize
declare void @wait_gather(%struct.msg_tag*) #2

; Function Attrs: optsize
declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @cleanup_gather(%struct.msg_tag*) #2

; Function Attrs: optsize
declare %struct.msg_tag* @start_general_gather(i32, i32, i32*, i32, i8**) #2

; Function Attrs: optsize
declare void @wait_general_gather(%struct.msg_tag*) #2

; Function Attrs: optsize
declare void @cleanup_general_gather(%struct.msg_tag*) #2

; Function Attrs: optsize
declare { double, double } @trace_su3(%struct.su3_matrix*) #2

; Function Attrs: optsize
declare void @g_complexsum(%struct.complex*) #2

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
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{i64 0, i64 144, metadata !1}
!6 = metadata !{metadata !"double", metadata !1}

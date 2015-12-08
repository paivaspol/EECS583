; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/d_plaq4.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.msg_tag = type { i32, i32, i8*, i32 }

@sites_on_node = external global i32
@stdout = external global %struct._IO_FILE*
@lattice = external global %struct.site*
@gen_pt = external global [16 x i8**]
@nx = external global i32
@ny = external global i32
@nz = external global i32
@nt = external global i32
@str = private unnamed_addr constant [31 x i8] c"plaquette: can't malloc su3mat\00"

; Function Attrs: nounwind optsize uwtable
define void @d_plaquette(double* nocapture %ss_plaq, double* nocapture %st_plaq) #0 {
entry:
  %mtmp = alloca %struct.su3_matrix, align 8
  %ss_sum = alloca double, align 8
  %st_sum = alloca double, align 8
  %0 = bitcast %struct.su3_matrix* %mtmp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  store double 0.000000e+00, double* %st_sum, align 8, !tbaa !0
  store double 0.000000e+00, double* %ss_sum, align 8, !tbaa !0
  %1 = load i32* @sites_on_node, align 4, !tbaa !3
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 144) #4
  %2 = bitcast i8* %call to %struct.su3_matrix*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.body9.lr.ph

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str, i64 0, i64 0))
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call3 = call i32 @fflush(%struct._IO_FILE* %3) #4
  call void @terminate(i32 1) #4
  br label %for.body9.lr.ph

for.body9.lr.ph:                                  ; preds = %for.inc62, %if.then, %entry
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc62 ], [ 1, %if.then ], [ 1, %entry ]
  %indvars.iv114 = phi i32 [ %indvars.iv.next115, %for.inc62 ], [ 1, %if.then ], [ 1, %entry ]
  %4 = mul i64 %indvars.iv116, 144
  %5 = add i64 %4, 112
  %6 = trunc i64 %indvars.iv116 to i32
  %cmp44 = icmp eq i32 %6, 3
  br label %for.body9

for.body9:                                        ; preds = %for.end58, %for.body9.lr.ph
  %indvars.iv110 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next111, %for.end58 ]
  %7 = mul i64 %indvars.iv110, 144
  %8 = add i64 %7, 112
  %9 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !4
  %10 = trunc i64 %8 to i32
  %call13 = call %struct.msg_tag* @start_gather(i32 %10, i32 144, i32 %6, i32 3, i8** %9) #4
  %11 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 1), align 8, !tbaa !4
  %12 = trunc i64 %indvars.iv110 to i32
  %13 = trunc i64 %5 to i32
  %call23 = call %struct.msg_tag* @start_gather(i32 %13, i32 144, i32 %12, i32 3, i8** %11) #4
  %14 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp25100 = icmp sgt i32 %14, 0
  br i1 %cmp25100, label %for.body27.lr.ph, label %for.end

for.body27.lr.ph:                                 ; preds = %for.body9
  %15 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.body27

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next, %for.body27 ]
  %s.0101 = phi %struct.site* [ %15, %for.body27.lr.ph ], [ %incdec.ptr, %for.body27 ]
  %arrayidx30 = getelementptr inbounds %struct.site* %s.0101, i64 0, i32 8, i64 %indvars.iv116
  %arrayidx33 = getelementptr inbounds %struct.site* %s.0101, i64 0, i32 8, i64 %indvars.iv110
  %arrayidx35 = getelementptr inbounds %struct.su3_matrix* %2, i64 %indvars.iv
  call void @mult_su3_an(%struct.su3_matrix* %arrayidx33, %struct.su3_matrix* %arrayidx30, %struct.su3_matrix* %arrayidx35) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0101, i64 1
  %16 = load i32* @sites_on_node, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp25 = icmp slt i32 %17, %16
  br i1 %cmp25, label %for.body27, label %for.end

for.end:                                          ; preds = %for.body27, %for.body9
  call void @wait_gather(%struct.msg_tag* %call13) #4
  call void @wait_gather(%struct.msg_tag* %call23) #4
  %18 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp37103 = icmp sgt i32 %18, 0
  br i1 %cmp37103, label %for.body39, label %for.end58

for.body39:                                       ; preds = %for.end, %for.inc55
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.inc55 ], [ 0, %for.end ]
  %arrayidx41 = getelementptr inbounds %struct.su3_matrix* %2, i64 %indvars.iv108
  %19 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 0), align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds i8** %19, i64 %indvars.iv108
  %20 = load i8** %arrayidx43, align 8, !tbaa !4
  %21 = bitcast i8* %20 to %struct.su3_matrix*
  call void @mult_su3_nn(%struct.su3_matrix* %arrayidx41, %struct.su3_matrix* %21, %struct.su3_matrix* %mtmp) #4
  %22 = load i8*** getelementptr inbounds ([16 x i8**]* @gen_pt, i64 0, i64 1), align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds i8** %22, i64 %indvars.iv108
  %23 = load i8** %arrayidx48, align 8, !tbaa !4
  %24 = bitcast i8* %23 to %struct.su3_matrix*
  %call49 = call double @realtrace_su3(%struct.su3_matrix* %24, %struct.su3_matrix* %mtmp) #4
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.body39
  %25 = load double* %st_sum, align 8, !tbaa !0
  %add = fadd double %call49, %25
  store double %add, double* %st_sum, align 8, !tbaa !0
  br label %for.inc55

if.else:                                          ; preds = %for.body39
  %26 = load double* %ss_sum, align 8, !tbaa !0
  %add53 = fadd double %call49, %26
  store double %add53, double* %ss_sum, align 8, !tbaa !0
  br label %for.inc55

for.inc55:                                        ; preds = %if.then46, %if.else
  %indvars.iv.next109 = add i64 %indvars.iv108, 1
  %27 = load i32* @sites_on_node, align 4, !tbaa !3
  %28 = trunc i64 %indvars.iv.next109 to i32
  %cmp37 = icmp slt i32 %28, %27
  br i1 %cmp37, label %for.body39, label %for.end58

for.end58:                                        ; preds = %for.inc55, %for.end
  call void @cleanup_gather(%struct.msg_tag* %call13) #4
  call void @cleanup_gather(%struct.msg_tag* %call23) #4
  %indvars.iv.next111 = add i64 %indvars.iv110, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next111 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv114
  br i1 %exitcond, label %for.inc62, label %for.body9

for.inc62:                                        ; preds = %for.end58
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %indvars.iv.next115 = add i32 %indvars.iv114, 1
  %lftr.wideiv120 = trunc i64 %indvars.iv.next117 to i32
  %exitcond121 = icmp eq i32 %lftr.wideiv120, 4
  br i1 %exitcond121, label %for.end64, label %for.body9.lr.ph

for.end64:                                        ; preds = %for.inc62
  call void @g_doublesum(double* %ss_sum) #4
  call void @g_doublesum(double* %st_sum) #4
  %29 = load double* %ss_sum, align 8, !tbaa !0
  %30 = load i32* @nx, align 4, !tbaa !3
  %mul = mul nsw i32 %30, 3
  %31 = load i32* @ny, align 4, !tbaa !3
  %mul65 = mul nsw i32 %mul, %31
  %32 = load i32* @nz, align 4, !tbaa !3
  %mul66 = mul nsw i32 %mul65, %32
  %33 = load i32* @nt, align 4, !tbaa !3
  %mul67 = mul nsw i32 %mul66, %33
  %conv68 = sitofp i32 %mul67 to double
  %div = fdiv double %29, %conv68
  store double %div, double* %ss_plaq, align 8, !tbaa !0
  %34 = load double* %st_sum, align 8, !tbaa !0
  %div74 = fdiv double %34, %conv68
  store double %div74, double* %st_plaq, align 8, !tbaa !0
  call void @free(i8* %call) #4
  call void @llvm.lifetime.end(i64 144, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @terminate(i32) #3

; Function Attrs: optsize
declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #3

; Function Attrs: optsize
declare void @mult_su3_an(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @wait_gather(%struct.msg_tag*) #3

; Function Attrs: optsize
declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare double @realtrace_su3(%struct.su3_matrix*, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @cleanup_gather(%struct.msg_tag*) #3

; Function Attrs: optsize
declare void @g_doublesum(double*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}

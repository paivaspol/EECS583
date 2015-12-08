; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/rephase.c'
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
@nt = external global i32
@phases_in = external global i32
@this_node = external global i32
@str = private unnamed_addr constant [32 x i8] c"DUMMY: you fouled up the phases\00"

; Function Attrs: nounwind optsize uwtable
define void @phaseset() #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp65 = icmp sgt i32 %0, 0
  br i1 %cmp65, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !3
  %2 = load i32* @nt, align 4, !tbaa !0
  %sub40 = add nsw i32 %2, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %sit.066 = phi %struct.site* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 10, i64 3
  store double 1.000000e+00, double* %arrayidx, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 3
  %3 = load i16* %t, align 2, !tbaa !5
  %conv = sext i16 %3 to i32
  %rem = srem i32 %conv, 2
  %cmp1 = icmp eq i32 %rem, 1
  %arrayidx4 = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 10, i64 0
  %. = select i1 %cmp1, double -1.000000e+00, double 1.000000e+00
  store double %., double* %arrayidx4, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 0
  %4 = load i16* %x, align 2, !tbaa !5
  %conv7 = sext i16 %4 to i32
  %rem8 = srem i32 %conv7, 2
  %cmp9 = icmp eq i32 %rem8, 1
  br i1 %cmp9, label %if.then11, label %if.else16

if.then11:                                        ; preds = %for.body
  %sub = fsub double -0.000000e+00, %.
  %arrayidx15 = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 10, i64 1
  store double %sub, double* %arrayidx15, align 8, !tbaa !4
  br label %if.end21

if.else16:                                        ; preds = %for.body
  %arrayidx20 = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 10, i64 1
  store double %., double* %arrayidx20, align 8, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then11
  %5 = phi double [ %., %if.else16 ], [ %sub, %if.then11 ]
  %y = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 1
  %6 = load i16* %y, align 2, !tbaa !5
  %conv22 = sext i16 %6 to i32
  %rem23 = srem i32 %conv22, 2
  %cmp24 = icmp eq i32 %rem23, 1
  br i1 %cmp24, label %if.then26, label %if.else32

if.then26:                                        ; preds = %if.end21
  %sub29 = fsub double -0.000000e+00, %5
  %arrayidx31 = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 10, i64 2
  store double %sub29, double* %arrayidx31, align 8, !tbaa !4
  br label %if.end37

if.else32:                                        ; preds = %if.end21
  %arrayidx36 = getelementptr inbounds %struct.site* %sit.066, i64 0, i32 10, i64 2
  store double %5, double* %arrayidx36, align 8, !tbaa !4
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then26
  %cmp41 = icmp eq i32 %conv, %sub40
  br i1 %cmp41, label %if.then43, label %for.inc

if.then43:                                        ; preds = %if.end37
  store double -1.000000e+00, double* %arrayidx, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.then43
  %inc = add nsw i32 %i.067, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %sit.066, i64 1
  %cmp = icmp slt i32 %inc, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rephase(i32 %flag) #0 {
entry:
  %cmp = icmp eq i32 %flag, 1
  %0 = load i32* @phases_in, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %0, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp eq i32 %flag, 0
  %cmp4 = icmp eq i32 %0, 1
  %or.cond45 = and i1 %cmp2, %cmp4
  br i1 %or.cond45, label %if.end7, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %1 = load i32* @this_node, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  tail call void @terminate(i32 1) #3
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %entry, %if.end
  %2 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp867 = icmp sgt i32 %2, 0
  br i1 %cmp867, label %for.cond9.preheader.lr.ph, label %for.end44

for.cond9.preheader.lr.ph:                        ; preds = %if.end7
  %3 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond9.preheader.lr.ph, %for.inc42
  %s.069 = phi %struct.site* [ %3, %for.cond9.preheader.lr.ph ], [ %incdec.ptr, %for.inc42 ]
  %i.068 = phi i32 [ 0, %for.cond9.preheader.lr.ph ], [ %inc43, %for.inc42 ]
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.inc39, %for.cond9.preheader
  %indvars.iv74 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next75, %for.inc39 ]
  %arrayidx = getelementptr inbounds %struct.site* %s.069, i64 0, i32 10, i64 %indvars.iv74
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc36, %for.cond12.preheader
  %indvars.iv70 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next71, %for.inc36 ]
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.cond15.preheader
  %indvars.iv = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next, %for.body17 ]
  %4 = load double* %arrayidx, align 8, !tbaa !4
  %real = getelementptr inbounds %struct.site* %s.069, i64 0, i32 8, i64 %indvars.iv74, i32 0, i64 %indvars.iv70, i64 %indvars.iv, i32 0
  %5 = load double* %real, align 8, !tbaa !4
  %mul = fmul double %4, %5
  store double %mul, double* %real, align 8, !tbaa !4
  %6 = load double* %arrayidx, align 8, !tbaa !4
  %imag = getelementptr inbounds %struct.site* %s.069, i64 0, i32 8, i64 %indvars.iv74, i32 0, i64 %indvars.iv70, i64 %indvars.iv, i32 1
  %7 = load double* %imag, align 8, !tbaa !4
  %mul35 = fmul double %6, %7
  store double %mul35, double* %imag, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc36, label %for.body17

for.inc36:                                        ; preds = %for.body17
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv.next71 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, 3
  br i1 %exitcond73, label %for.inc39, label %for.cond15.preheader

for.inc39:                                        ; preds = %for.inc36
  %indvars.iv.next75 = add i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, 4
  br i1 %exitcond77, label %for.inc42, label %for.cond12.preheader

for.inc42:                                        ; preds = %for.inc39
  %inc43 = add nsw i32 %i.068, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.069, i64 1
  %cmp8 = icmp slt i32 %inc43, %2
  br i1 %cmp8, label %for.cond9.preheader, label %for.end44

for.end44:                                        ; preds = %for.inc42, %if.end7
  store i32 %flag, i32* @phases_in, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @terminate(i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}

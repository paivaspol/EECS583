; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/make_lattice.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

@sites_on_node = external global i32
@lattice = external global %struct.site*
@.str = private unnamed_addr constant [30 x i8] c"NODE %d: no room for lattice\0A\00", align 1
@this_node = external global i32
@gen_pt = external global [16 x i8**]
@.str1 = private unnamed_addr constant [37 x i8] c"NODE %d: no room for pointer vector\0A\00", align 1
@nt = external global i32
@nz = external global i32
@ny = external global i32
@nx = external global i32
@iseed = external global i32

; Function Attrs: nounwind optsize uwtable
define void @make_lattice() #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 1808) #3
  %1 = bitcast i8* %call to %struct.site*
  store %struct.site* %1, %struct.site** @lattice, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %2 = load i32* @this_node, align 4, !tbaa !0
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str, i64 0, i64 0), i32 %2) #3
  tail call void @terminate(i32 1) #3
  br label %for.body

for.cond14.preheader:                             ; preds = %for.inc
  %3 = load i32* @nt, align 4, !tbaa !0
  %cmp15132 = icmp sgt i32 %3, 0
  br i1 %cmp15132, label %for.cond18.preheader.lr.ph, label %for.end87

for.cond18.preheader.lr.ph:                       ; preds = %for.cond14.preheader
  %.pre = load i32* @nz, align 4, !tbaa !0
  br label %for.cond18.preheader

for.body:                                         ; preds = %for.inc, %entry, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %4 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv5 = sext i32 %4 to i64
  %call6 = tail call noalias i8* @calloc(i64 %conv5, i64 8) #3
  %5 = bitcast i8* %call6 to i8**
  %arrayidx = getelementptr inbounds [16 x i8**]* @gen_pt, i64 0, i64 %indvars.iv
  store i8** %5, i8*** %arrayidx, align 8, !tbaa !3
  %cmp9 = icmp eq i8* %call6, null
  br i1 %cmp9, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  %6 = load i32* @this_node, align 4, !tbaa !0
  %call12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0), i32 %6) #3
  tail call void @terminate(i32 1) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then11
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.cond14.preheader, label %for.body

for.cond18.preheader:                             ; preds = %for.cond18.preheader.lr.ph, %for.inc85
  %7 = phi i32 [ %3, %for.cond18.preheader.lr.ph ], [ %25, %for.inc85 ]
  %8 = phi i32 [ %.pre, %for.cond18.preheader.lr.ph ], [ %26, %for.inc85 ]
  %t.0133 = phi i32 [ 0, %for.cond18.preheader.lr.ph ], [ %inc86, %for.inc85 ]
  %cmp19129 = icmp sgt i32 %8, 0
  br i1 %cmp19129, label %for.cond22.preheader.lr.ph, label %for.inc85

for.cond22.preheader.lr.ph:                       ; preds = %for.cond18.preheader
  %conv48 = trunc i32 %t.0133 to i16
  %.pre137 = load i32* @ny, align 4, !tbaa !0
  br label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond22.preheader.lr.ph, %for.inc82
  %9 = phi i32 [ %8, %for.cond22.preheader.lr.ph ], [ %23, %for.inc82 ]
  %10 = phi i32 [ %.pre137, %for.cond22.preheader.lr.ph ], [ %24, %for.inc82 ]
  %z.0130 = phi i32 [ 0, %for.cond22.preheader.lr.ph ], [ %inc83, %for.inc82 ]
  %cmp23126 = icmp sgt i32 %10, 0
  br i1 %cmp23126, label %for.cond26.preheader.lr.ph, label %for.inc82

for.cond26.preheader.lr.ph:                       ; preds = %for.cond22.preheader
  %conv44 = trunc i32 %z.0130 to i16
  %add58 = add i32 %z.0130, %t.0133
  %.pre139 = load i32* @nx, align 4, !tbaa !0
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond26.preheader.lr.ph, %for.inc79
  %11 = phi i32 [ %10, %for.cond26.preheader.lr.ph ], [ %21, %for.inc79 ]
  %12 = phi i32 [ %.pre139, %for.cond26.preheader.lr.ph ], [ %22, %for.inc79 ]
  %y.0127 = phi i32 [ 0, %for.cond26.preheader.lr.ph ], [ %inc80, %for.inc79 ]
  %cmp27124 = icmp sgt i32 %12, 0
  br i1 %cmp27124, label %for.body29.lr.ph, label %for.inc79

for.body29.lr.ph:                                 ; preds = %for.cond26.preheader
  %conv40 = trunc i32 %y.0127 to i16
  %add59 = add i32 %add58, %y.0127
  br label %for.body29

for.body29:                                       ; preds = %for.body29.lr.ph, %for.inc76
  %x.0125 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc77, %for.inc76 ]
  %call30 = tail call i32 @node_number(i32 %x.0125, i32 %y.0127, i32 %z.0130, i32 %t.0133) #3
  %call31 = tail call i32 (...)* @mynode() #3
  %cmp32 = icmp eq i32 %call30, %call31
  br i1 %cmp32, label %if.then34, label %for.inc76

if.then34:                                        ; preds = %for.body29
  %call35 = tail call i32 @node_index(i32 %x.0125, i32 %y.0127, i32 %z.0130, i32 %t.0133) #3
  %conv36 = trunc i32 %x.0125 to i16
  %idxprom37 = sext i32 %call35 to i64
  %13 = load %struct.site** @lattice, align 8, !tbaa !3
  %x39 = getelementptr inbounds %struct.site* %13, i64 %idxprom37, i32 0
  store i16 %conv36, i16* %x39, align 2, !tbaa !4
  %y43 = getelementptr inbounds %struct.site* %13, i64 %idxprom37, i32 1
  store i16 %conv40, i16* %y43, align 2, !tbaa !4
  %z47 = getelementptr inbounds %struct.site* %13, i64 %idxprom37, i32 2
  store i16 %conv44, i16* %z47, align 2, !tbaa !4
  %t51 = getelementptr inbounds %struct.site* %13, i64 %idxprom37, i32 3
  store i16 %conv48, i16* %t51, align 2, !tbaa !4
  %14 = load i32* @nx, align 4, !tbaa !0
  %15 = load i32* @ny, align 4, !tbaa !0
  %16 = load i32* @nz, align 4, !tbaa !0
  %mul = mul nsw i32 %16, %t.0133
  %add = add nsw i32 %mul, %z.0130
  %mul52 = mul nsw i32 %add, %15
  %add53 = add nsw i32 %mul52, %y.0127
  %mul54 = mul nsw i32 %add53, %14
  %add55 = add nsw i32 %mul54, %x.0125
  %index = getelementptr inbounds %struct.site* %13, i64 %idxprom37, i32 5
  store i32 %add55, i32* %index, align 4, !tbaa !0
  %add60 = add i32 %add59, %x.0125
  %rem123 = and i32 %add60, 1
  %cmp61 = icmp eq i32 %rem123, 0
  %parity = getelementptr inbounds %struct.site* %13, i64 %idxprom37, i32 4
  %. = select i1 %cmp61, i8 2, i8 1
  store i8 %., i8* %parity, align 1, !tbaa !1
  %17 = load %struct.site** @lattice, align 8, !tbaa !3
  %site_prn = getelementptr inbounds %struct.site* %17, i64 %idxprom37, i32 6
  %18 = load i32* @iseed, align 4, !tbaa !0
  %index74 = getelementptr inbounds %struct.site* %17, i64 %idxprom37, i32 5
  %19 = load i32* %index74, align 4, !tbaa !0
  tail call void @initialize_prn(%struct.double_prn* %site_prn, i32 %18, i32 %19) #3
  br label %for.inc76

for.inc76:                                        ; preds = %for.body29, %if.then34
  %inc77 = add nsw i32 %x.0125, 1
  %20 = load i32* @nx, align 4, !tbaa !0
  %cmp27 = icmp slt i32 %inc77, %20
  br i1 %cmp27, label %for.body29, label %for.cond26.for.inc79_crit_edge

for.cond26.for.inc79_crit_edge:                   ; preds = %for.inc76
  %.pre140 = load i32* @ny, align 4, !tbaa !0
  br label %for.inc79

for.inc79:                                        ; preds = %for.cond26.for.inc79_crit_edge, %for.cond26.preheader
  %21 = phi i32 [ %.pre140, %for.cond26.for.inc79_crit_edge ], [ %11, %for.cond26.preheader ]
  %22 = phi i32 [ %20, %for.cond26.for.inc79_crit_edge ], [ %12, %for.cond26.preheader ]
  %inc80 = add nsw i32 %y.0127, 1
  %cmp23 = icmp slt i32 %inc80, %21
  br i1 %cmp23, label %for.cond26.preheader, label %for.cond22.for.inc82_crit_edge

for.cond22.for.inc82_crit_edge:                   ; preds = %for.inc79
  %.pre138 = load i32* @nz, align 4, !tbaa !0
  br label %for.inc82

for.inc82:                                        ; preds = %for.cond22.for.inc82_crit_edge, %for.cond22.preheader
  %23 = phi i32 [ %.pre138, %for.cond22.for.inc82_crit_edge ], [ %9, %for.cond22.preheader ]
  %24 = phi i32 [ %21, %for.cond22.for.inc82_crit_edge ], [ %10, %for.cond22.preheader ]
  %inc83 = add nsw i32 %z.0130, 1
  %cmp19 = icmp slt i32 %inc83, %23
  br i1 %cmp19, label %for.cond22.preheader, label %for.cond18.for.inc85_crit_edge

for.cond18.for.inc85_crit_edge:                   ; preds = %for.inc82
  %.pre136 = load i32* @nt, align 4, !tbaa !0
  br label %for.inc85

for.inc85:                                        ; preds = %for.cond18.for.inc85_crit_edge, %for.cond18.preheader
  %25 = phi i32 [ %.pre136, %for.cond18.for.inc85_crit_edge ], [ %7, %for.cond18.preheader ]
  %26 = phi i32 [ %23, %for.cond18.for.inc85_crit_edge ], [ %8, %for.cond18.preheader ]
  %inc86 = add nsw i32 %t.0133, 1
  %cmp15 = icmp slt i32 %inc86, %25
  br i1 %cmp15, label %for.cond18.preheader, label %for.end87

for.end87:                                        ; preds = %for.inc85, %for.cond14.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @terminate(i32) #2

; Function Attrs: optsize
declare i32 @node_number(i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @mynode(...) #2

; Function Attrs: optsize
declare i32 @node_index(i32, i32, i32, i32) #2

; Function Attrs: optsize
declare void @initialize_prn(%struct.double_prn*, i32, i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
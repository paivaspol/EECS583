; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basket = type { %struct.arc*, i64, i64 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }

@perm = internal unnamed_addr global [351 x %struct.basket*] zeroinitializer, align 16
@initialize = internal unnamed_addr global i1 false
@basket = internal global [351 x %struct.basket] zeroinitializer, align 16
@nr_group = internal unnamed_addr global i64 0, align 8
@group_pos = internal unnamed_addr global i64 0, align 8
@basket_size = internal unnamed_addr global i64 0, align 8

; Function Attrs: nounwind optsize readonly uwtable
define i32 @bea_is_dual_infeasible(%struct.arc* nocapture %arc, i64 %red_cost) #0 {
entry:
  %cmp = icmp slt i64 %red_cost, 0
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %ident = getelementptr inbounds %struct.arc* %arc, i64 0, i32 3
  %0 = load i32* %ident, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %cmp2 = icmp sgt i64 %red_cost, 0
  br i1 %cmp2, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %ident3 = getelementptr inbounds %struct.arc* %arc, i64 0, i32 3
  %1 = load i32* %ident3, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %1, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %land.lhs.true
  %2 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind optsize uwtable
define void @sort_basket(i64 %min, i64 %max) #1 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end22, %entry
  %min.tr = phi i64 [ %min, %entry ], [ %l.0.inc, %if.end22 ]
  %add = add nsw i64 %min.tr, %max
  %div = sdiv i64 %add, 2
  %arrayidx = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %div
  %0 = load %struct.basket** %arrayidx, align 8, !tbaa !3
  %abs_cost = getelementptr inbounds %struct.basket* %0, i64 0, i32 2
  %1 = load i64* %abs_cost, align 8, !tbaa !4
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %tailrecurse
  %r.0.ph = phi i64 [ %max, %tailrecurse ], [ %r.1.dec, %if.end ]
  %l.0.ph = phi i64 [ %min.tr, %tailrecurse ], [ %l.0.inc, %if.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.outer
  %l.0 = phi i64 [ %inc, %while.cond ], [ %l.0.ph, %while.cond.outer ]
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %l.0
  %2 = load %struct.basket** %arrayidx1, align 8, !tbaa !3
  %abs_cost2 = getelementptr inbounds %struct.basket* %2, i64 0, i32 2
  %3 = load i64* %abs_cost2, align 8, !tbaa !4
  %cmp = icmp sgt i64 %3, %1
  %inc = add nsw i64 %l.0, 1
  br i1 %cmp, label %while.cond, label %while.cond3

while.cond3:                                      ; preds = %while.cond, %while.cond3
  %r.1 = phi i64 [ %dec, %while.cond3 ], [ %r.0.ph, %while.cond ]
  %arrayidx4 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %r.1
  %4 = load %struct.basket** %arrayidx4, align 8, !tbaa !3
  %abs_cost5 = getelementptr inbounds %struct.basket* %4, i64 0, i32 2
  %5 = load i64* %abs_cost5, align 8, !tbaa !4
  %cmp6 = icmp sgt i64 %1, %5
  %dec = add nsw i64 %r.1, -1
  br i1 %cmp6, label %while.cond3, label %while.end8

while.end8:                                       ; preds = %while.cond3
  %cmp9 = icmp slt i64 %l.0, %r.1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end8
  store %struct.basket* %4, %struct.basket** %arrayidx1, align 8, !tbaa !3
  store %struct.basket* %2, %struct.basket** %arrayidx4, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end8
  %cmp14 = icmp sgt i64 %l.0, %r.1
  %r.1.dec = select i1 %cmp14, i64 %r.1, i64 %dec
  %l.0.inc = select i1 %cmp14, i64 %l.0, i64 %inc
  %cmp19 = icmp sgt i64 %l.0.inc, %r.1.dec
  br i1 %cmp19, label %do.end, label %while.cond.outer

do.end:                                           ; preds = %if.end
  %cmp20 = icmp sgt i64 %r.1.dec, %min.tr
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end
  tail call void @sort_basket(i64 %min.tr, i64 %r.1.dec) #2
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end
  %cmp23 = icmp slt i64 %l.0.inc, %max
  %cmp24 = icmp slt i64 %l.0.inc, 51
  %or.cond = and i1 %cmp23, %cmp24
  br i1 %or.cond, label %tailrecurse, label %if.end26

if.end26:                                         ; preds = %if.end22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.arc* @primal_bea_mpp(i64 %m, %struct.arc* %arcs, %struct.arc* %stop_arcs, i64* nocapture %red_cost_of_bea) #1 {
entry:
  %.b = load i1* @initialize, align 1
  br i1 %.b, label %for.cond2.preheader, label %for.body

for.cond2.preheader:                              ; preds = %entry
  %0 = load i64* @basket_size, align 8, !tbaa !4
  %cmp4113 = icmp slt i64 %0, 2
  br i1 %cmp4113, label %for.end27, label %for.body5

for.body:                                         ; preds = %entry, %for.body
  %i.0117 = phi i64 [ %inc, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [351 x %struct.basket]* @basket, i64 0, i64 %i.0117
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %i.0117
  store %struct.basket* %arrayidx, %struct.basket** %arrayidx1, align 8, !tbaa !3
  %inc = add nsw i64 %i.0117, 1
  %exitcond = icmp eq i64 %inc, 351
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %sub = add nsw i64 %m, -1
  %div = sdiv i64 %sub, 300
  %add = add nsw i64 %div, 1
  store i64 %add, i64* @nr_group, align 8, !tbaa !4
  store i64 0, i64* @group_pos, align 8, !tbaa !4
  store i64 0, i64* @basket_size, align 8, !tbaa !4
  store i1 true, i1* @initialize, align 1
  br label %if.end28

for.body5:                                        ; preds = %for.cond2.preheader, %for.inc25
  %1 = phi i64 [ %13, %for.inc25 ], [ %0, %for.cond2.preheader ]
  %next.0115 = phi i64 [ %next.1, %for.inc25 ], [ 0, %for.cond2.preheader ]
  %i.1114 = phi i64 [ %inc26, %for.inc25 ], [ 2, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %i.1114
  %2 = load %struct.basket** %arrayidx6, align 8, !tbaa !3
  %a = getelementptr inbounds %struct.basket* %2, i64 0, i32 0
  %3 = load %struct.arc** %a, align 8, !tbaa !3
  %cost = getelementptr inbounds %struct.arc* %3, i64 0, i32 0
  %4 = load i64* %cost, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.arc* %3, i64 0, i32 1
  %5 = load %struct.node** %tail, align 8, !tbaa !3
  %potential = getelementptr inbounds %struct.node* %5, i64 0, i32 0
  %6 = load i64* %potential, align 8, !tbaa !4
  %sub7 = sub nsw i64 %4, %6
  %head = getelementptr inbounds %struct.arc* %3, i64 0, i32 2
  %7 = load %struct.node** %head, align 8, !tbaa !3
  %potential8 = getelementptr inbounds %struct.node* %7, i64 0, i32 0
  %8 = load i64* %potential8, align 8, !tbaa !4
  %add9 = add nsw i64 %8, %sub7
  %cmp10 = icmp slt i64 %add9, 0
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body5
  %ident = getelementptr inbounds %struct.arc* %3, i64 0, i32 3
  %9 = load i32* %ident, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %9, 1
  br i1 %cmp11, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body5
  %cmp12 = icmp sgt i64 %add9, 0
  br i1 %cmp12, label %land.lhs.true13, label %for.inc25

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %ident14 = getelementptr inbounds %struct.arc* %3, i64 0, i32 3
  %10 = load i32* %ident14, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %10, 2
  br i1 %cmp15, label %if.then16, label %for.inc25

if.then16:                                        ; preds = %land.lhs.true13, %land.lhs.true
  %inc17 = add nsw i64 %next.0115, 1
  %arrayidx18 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %inc17
  %11 = load %struct.basket** %arrayidx18, align 8, !tbaa !3
  %a19 = getelementptr inbounds %struct.basket* %11, i64 0, i32 0
  store %struct.arc* %3, %struct.arc** %a19, align 8, !tbaa !3
  %12 = load %struct.basket** %arrayidx18, align 8, !tbaa !3
  %cost21 = getelementptr inbounds %struct.basket* %12, i64 0, i32 1
  store i64 %add9, i64* %cost21, align 8, !tbaa !4
  %cmp22 = icmp sgt i64 %add9, -1
  %sub23 = sub nsw i64 0, %add9
  %cond = select i1 %cmp22, i64 %add9, i64 %sub23
  %abs_cost = getelementptr inbounds %struct.basket* %12, i64 0, i32 2
  store i64 %cond, i64* %abs_cost, align 8, !tbaa !4
  %.pre118 = load i64* @basket_size, align 8, !tbaa !4
  br label %for.inc25

for.inc25:                                        ; preds = %lor.lhs.false, %land.lhs.true13, %if.then16
  %13 = phi i64 [ %.pre118, %if.then16 ], [ %1, %land.lhs.true13 ], [ %1, %lor.lhs.false ]
  %next.1 = phi i64 [ %inc17, %if.then16 ], [ %next.0115, %land.lhs.true13 ], [ %next.0115, %lor.lhs.false ]
  %inc26 = add nsw i64 %i.1114, 1
  %cmp3 = icmp sgt i64 %i.1114, 49
  %cmp4 = icmp sge i64 %i.1114, %13
  %or.cond = or i1 %cmp3, %cmp4
  br i1 %or.cond, label %for.end27, label %for.body5

for.end27:                                        ; preds = %for.inc25, %for.cond2.preheader
  %next.0.lcssa = phi i64 [ 0, %for.cond2.preheader ], [ %next.1, %for.inc25 ]
  store i64 %next.0.lcssa, i64* @basket_size, align 8, !tbaa !4
  %.pre = load i64* @group_pos, align 8, !tbaa !4
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %for.end
  %14 = phi i64 [ %next.0.lcssa, %for.end27 ], [ 0, %for.end ]
  %15 = phi i64 [ %.pre, %for.end27 ], [ 0, %for.end ]
  br label %NEXT

NEXT:                                             ; preds = %for.end61, %if.end28
  %16 = phi i64 [ %30, %for.end61 ], [ %14, %if.end28 ]
  %17 = phi i64 [ %.inc62, %for.end61 ], [ %15, %if.end28 ]
  %add.ptr = getelementptr inbounds %struct.arc* %arcs, i64 %17
  %cmp30111 = icmp ult %struct.arc* %add.ptr, %stop_arcs
  br i1 %cmp30111, label %for.body31, label %NEXT.for.end61_crit_edge

NEXT.for.end61_crit_edge:                         ; preds = %NEXT
  %.pre120 = load i64* @nr_group, align 8, !tbaa !4
  br label %for.end61

for.body31:                                       ; preds = %NEXT, %for.inc59
  %arc.0112 = phi %struct.arc* [ %add.ptr60, %for.inc59 ], [ %add.ptr, %NEXT ]
  %ident32 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 3
  %18 = load i32* %ident32, align 4, !tbaa !0
  %cmp33 = icmp sgt i32 %18, 0
  br i1 %cmp33, label %if.then34, label %for.inc59

if.then34:                                        ; preds = %for.body31
  %cost35 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 0
  %19 = load i64* %cost35, align 8, !tbaa !4
  %tail36 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 1
  %20 = load %struct.node** %tail36, align 8, !tbaa !3
  %potential37 = getelementptr inbounds %struct.node* %20, i64 0, i32 0
  %21 = load i64* %potential37, align 8, !tbaa !4
  %sub38 = sub nsw i64 %19, %21
  %head39 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 2
  %22 = load %struct.node** %head39, align 8, !tbaa !3
  %potential40 = getelementptr inbounds %struct.node* %22, i64 0, i32 0
  %23 = load i64* %potential40, align 8, !tbaa !4
  %add41 = add nsw i64 %23, %sub38
  %cmp.i = icmp slt i64 %add41, 0
  %cmp1.i = icmp eq i32 %18, 1
  %or.cond110 = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond110, label %if.then43, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.then34
  %cmp2.i = icmp sgt i64 %add41, 0
  %cmp4.i = icmp eq i32 %18, 2
  %or.cond122 = and i1 %cmp2.i, %cmp4.i
  br i1 %or.cond122, label %if.then43, label %for.inc59

if.then43:                                        ; preds = %lor.rhs.i, %if.then34
  %24 = load i64* @basket_size, align 8, !tbaa !4
  %inc44 = add nsw i64 %24, 1
  store i64 %inc44, i64* @basket_size, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %inc44
  %25 = load %struct.basket** %arrayidx45, align 8, !tbaa !3
  %a46 = getelementptr inbounds %struct.basket* %25, i64 0, i32 0
  store %struct.arc* %arc.0112, %struct.arc** %a46, align 8, !tbaa !3
  %26 = load %struct.basket** %arrayidx45, align 8, !tbaa !3
  %cost48 = getelementptr inbounds %struct.basket* %26, i64 0, i32 1
  store i64 %add41, i64* %cost48, align 8, !tbaa !4
  %cmp49 = icmp sgt i64 %add41, -1
  %sub52 = sub nsw i64 0, %add41
  %cond54 = select i1 %cmp49, i64 %add41, i64 %sub52
  %27 = load i64* @basket_size, align 8, !tbaa !4
  %arrayidx55 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %27
  %28 = load %struct.basket** %arrayidx55, align 8, !tbaa !3
  %abs_cost56 = getelementptr inbounds %struct.basket* %28, i64 0, i32 2
  store i64 %cond54, i64* %abs_cost56, align 8, !tbaa !4
  br label %for.inc59

for.inc59:                                        ; preds = %lor.rhs.i, %for.body31, %if.then43
  %29 = load i64* @nr_group, align 8, !tbaa !4
  %add.ptr60 = getelementptr inbounds %struct.arc* %arc.0112, i64 %29
  %cmp30 = icmp ult %struct.arc* %add.ptr60, %stop_arcs
  br i1 %cmp30, label %for.body31, label %for.cond29.for.end61_crit_edge

for.cond29.for.end61_crit_edge:                   ; preds = %for.inc59
  %.pre119 = load i64* @group_pos, align 8, !tbaa !4
  %.pre121 = load i64* @basket_size, align 8, !tbaa !4
  br label %for.end61

for.end61:                                        ; preds = %NEXT.for.end61_crit_edge, %for.cond29.for.end61_crit_edge
  %30 = phi i64 [ %16, %NEXT.for.end61_crit_edge ], [ %.pre121, %for.cond29.for.end61_crit_edge ]
  %31 = phi i64 [ %.pre120, %NEXT.for.end61_crit_edge ], [ %29, %for.cond29.for.end61_crit_edge ]
  %32 = phi i64 [ %17, %NEXT.for.end61_crit_edge ], [ %.pre119, %for.cond29.for.end61_crit_edge ]
  %inc62 = add nsw i64 %32, 1
  %cmp63 = icmp eq i64 %inc62, %31
  %.inc62 = select i1 %cmp63, i64 0, i64 %inc62
  store i64 %.inc62, i64* @group_pos, align 8, !tbaa !4
  %cmp66 = icmp sgt i64 %30, 49
  %cmp68 = icmp eq i64 %.inc62, %15
  %or.cond109 = or i1 %cmp66, %cmp68
  br i1 %or.cond109, label %if.end70, label %NEXT

if.end70:                                         ; preds = %for.end61
  %cmp71 = icmp eq i64 %30, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  store i1 false, i1* @initialize, align 1
  store i64 0, i64* %red_cost_of_bea, align 8, !tbaa !4
  br label %return

if.end73:                                         ; preds = %if.end70
  tail call void @sort_basket(i64 1, i64 %30) #2
  %33 = load %struct.basket** getelementptr inbounds ([351 x %struct.basket*]* @perm, i64 0, i64 1), align 8, !tbaa !3
  %cost74 = getelementptr inbounds %struct.basket* %33, i64 0, i32 1
  %34 = load i64* %cost74, align 8, !tbaa !4
  store i64 %34, i64* %red_cost_of_bea, align 8, !tbaa !4
  %a75 = getelementptr inbounds %struct.basket* %33, i64 0, i32 0
  %35 = load %struct.arc** %a75, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end73, %if.then72
  %retval.0 = phi %struct.arc* [ null, %if.then72 ], [ %35, %if.end73 ]
  ret %struct.arc* %retval.0
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}

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
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %arc}, i64 0, metadata !46), !dbg !90
  tail call void @llvm.dbg.value(metadata !{i64 %red_cost}, i64 0, metadata !47), !dbg !90
  %cmp = icmp slt i64 %red_cost, 0, !dbg !91
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !91

land.lhs.true:                                    ; preds = %entry
  %ident = getelementptr inbounds %struct.arc* %arc, i64 0, i32 3, !dbg !91
  %0 = load i32* %ident, align 4, !dbg !91, !tbaa !92
  %cmp1 = icmp eq i32 %0, 1, !dbg !91
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !91

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %cmp2 = icmp sgt i64 %red_cost, 0, !dbg !91
  br i1 %cmp2, label %land.rhs, label %lor.end, !dbg !91

land.rhs:                                         ; preds = %lor.rhs
  %ident3 = getelementptr inbounds %struct.arc* %arc, i64 0, i32 3, !dbg !91
  %1 = load i32* %ident3, align 4, !dbg !91, !tbaa !92
  %cmp4 = icmp eq i32 %1, 2, !dbg !91
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %land.lhs.true
  %2 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext, !dbg !95
}

; Function Attrs: nounwind optsize uwtable
define void @sort_basket(i64 %min, i64 %max) #1 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end22, %entry
  %min.tr = phi i64 [ %min, %entry ], [ %l.0.inc, %if.end22 ]
  tail call void @llvm.dbg.value(metadata !{i64 %min.tr}, i64 0, metadata !52), !dbg !96
  tail call void @llvm.dbg.value(metadata !{i64 %max}, i64 0, metadata !53), !dbg !96
  tail call void @llvm.dbg.value(metadata !{i64 %min.tr}, i64 0, metadata !54), !dbg !97
  tail call void @llvm.dbg.value(metadata !{i64 %max}, i64 0, metadata !55), !dbg !97
  %add = add nsw i64 %min.tr, %max, !dbg !98
  %div = sdiv i64 %add, 2, !dbg !98
  %arrayidx = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %div, !dbg !98
  %0 = load %struct.basket** %arrayidx, align 8, !dbg !98, !tbaa !99
  %abs_cost = getelementptr inbounds %struct.basket* %0, i64 0, i32 2, !dbg !98
  %1 = load i64* %abs_cost, align 8, !dbg !98, !tbaa !100
  tail call void @llvm.dbg.value(metadata !{i64 %1}, i64 0, metadata !56), !dbg !98
  br label %while.cond.outer, !dbg !101

while.cond.outer:                                 ; preds = %if.end, %tailrecurse
  %r.0.ph = phi i64 [ %max, %tailrecurse ], [ %r.1.dec, %if.end ]
  %l.0.ph = phi i64 [ %min.tr, %tailrecurse ], [ %l.0.inc, %if.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.outer
  %l.0 = phi i64 [ %inc, %while.cond ], [ %l.0.ph, %while.cond.outer ]
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %l.0, !dbg !102
  %2 = load %struct.basket** %arrayidx1, align 8, !dbg !102, !tbaa !99
  %abs_cost2 = getelementptr inbounds %struct.basket* %2, i64 0, i32 2, !dbg !102
  %3 = load i64* %abs_cost2, align 8, !dbg !102, !tbaa !100
  %cmp = icmp sgt i64 %3, %1, !dbg !102
  %inc = add nsw i64 %l.0, 1, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !54), !dbg !104
  br i1 %cmp, label %while.cond, label %while.cond3, !dbg !102

while.cond3:                                      ; preds = %while.cond, %while.cond3
  %r.1 = phi i64 [ %dec, %while.cond3 ], [ %r.0.ph, %while.cond ]
  %arrayidx4 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %r.1, !dbg !105
  %4 = load %struct.basket** %arrayidx4, align 8, !dbg !105, !tbaa !99
  %abs_cost5 = getelementptr inbounds %struct.basket* %4, i64 0, i32 2, !dbg !105
  %5 = load i64* %abs_cost5, align 8, !dbg !105, !tbaa !100
  %cmp6 = icmp sgt i64 %1, %5, !dbg !105
  %dec = add nsw i64 %r.1, -1, !dbg !106
  tail call void @llvm.dbg.value(metadata !{i64 %dec}, i64 0, metadata !55), !dbg !106
  br i1 %cmp6, label %while.cond3, label %while.end8, !dbg !105

while.end8:                                       ; preds = %while.cond3
  %cmp9 = icmp slt i64 %l.0, %r.1, !dbg !107
  br i1 %cmp9, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %while.end8
  tail call void @llvm.dbg.value(metadata !{%struct.basket* %2}, i64 0, metadata !57), !dbg !108
  store %struct.basket* %4, %struct.basket** %arrayidx1, align 8, !dbg !110, !tbaa !99
  store %struct.basket* %2, %struct.basket** %arrayidx4, align 8, !dbg !111, !tbaa !99
  br label %if.end, !dbg !112

if.end:                                           ; preds = %if.then, %while.end8
  %cmp14 = icmp sgt i64 %l.0, %r.1, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !54), !dbg !114
  tail call void @llvm.dbg.value(metadata !{i64 %dec}, i64 0, metadata !55), !dbg !114
  %r.1.dec = select i1 %cmp14, i64 %r.1, i64 %dec, !dbg !113
  %l.0.inc = select i1 %cmp14, i64 %l.0, i64 %inc, !dbg !113
  %cmp19 = icmp sgt i64 %l.0.inc, %r.1.dec, !dbg !116
  br i1 %cmp19, label %do.end, label %while.cond.outer, !dbg !116

do.end:                                           ; preds = %if.end
  %cmp20 = icmp sgt i64 %r.1.dec, %min.tr, !dbg !117
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !117

if.then21:                                        ; preds = %do.end
  tail call void @sort_basket(i64 %min.tr, i64 %r.1.dec) #3, !dbg !118
  br label %if.end22, !dbg !118

if.end22:                                         ; preds = %if.then21, %do.end
  %cmp23 = icmp slt i64 %l.0.inc, %max, !dbg !119
  %cmp24 = icmp slt i64 %l.0.inc, 51, !dbg !119
  %or.cond = and i1 %cmp23, %cmp24, !dbg !119
  br i1 %or.cond, label %tailrecurse, label %if.end26, !dbg !119

if.end26:                                         ; preds = %if.end22
  ret void, !dbg !120
}

; Function Attrs: nounwind optsize uwtable
define %struct.arc* @primal_bea_mpp(i64 %m, %struct.arc* %arcs, %struct.arc* %stop_arcs, i64* nocapture %red_cost_of_bea) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %m}, i64 0, metadata !70), !dbg !121
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %arcs}, i64 0, metadata !71), !dbg !121
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %stop_arcs}, i64 0, metadata !72), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i64* %red_cost_of_bea}, i64 0, metadata !73), !dbg !122
  %.b = load i1* @initialize, align 1
  br i1 %.b, label %for.cond2.preheader, label %for.body, !dbg !123

for.cond2.preheader:                              ; preds = %entry
  %0 = load i64* @basket_size, align 8, !dbg !124, !tbaa !100
  %cmp4113 = icmp slt i64 %0, 2, !dbg !124
  br i1 %cmp4113, label %for.end27, label %for.body5, !dbg !124

for.body:                                         ; preds = %entry, %for.body
  %i.0117 = phi i64 [ %inc, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [351 x %struct.basket]* @basket, i64 0, i64 %i.0117, !dbg !127
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %i.0117, !dbg !127
  store %struct.basket* %arrayidx, %struct.basket** %arrayidx1, align 8, !dbg !127, !tbaa !99
  %inc = add nsw i64 %i.0117, 1, !dbg !130
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !74), !dbg !130
  %exitcond = icmp eq i64 %inc, 351, !dbg !130
  br i1 %exitcond, label %for.end, label %for.body, !dbg !130

for.end:                                          ; preds = %for.body
  %sub = add nsw i64 %m, -1, !dbg !131
  %div = sdiv i64 %sub, 300, !dbg !131
  %add = add nsw i64 %div, 1, !dbg !131
  store i64 %add, i64* @nr_group, align 8, !dbg !131, !tbaa !100
  store i64 0, i64* @group_pos, align 8, !dbg !132, !tbaa !100
  store i64 0, i64* @basket_size, align 8, !dbg !133, !tbaa !100
  store i1 true, i1* @initialize, align 1
  br label %if.end28, !dbg !134

for.body5:                                        ; preds = %for.cond2.preheader, %for.inc25
  %1 = phi i64 [ %13, %for.inc25 ], [ %0, %for.cond2.preheader ]
  %next.0115 = phi i64 [ %next.1, %for.inc25 ], [ 0, %for.cond2.preheader ]
  %i.1114 = phi i64 [ %inc26, %for.inc25 ], [ 2, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %i.1114, !dbg !135
  %2 = load %struct.basket** %arrayidx6, align 8, !dbg !135, !tbaa !99
  %a = getelementptr inbounds %struct.basket* %2, i64 0, i32 0, !dbg !135
  %3 = load %struct.arc** %a, align 8, !dbg !135, !tbaa !99
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %3}, i64 0, metadata !77), !dbg !135
  %cost = getelementptr inbounds %struct.arc* %3, i64 0, i32 0, !dbg !137
  %4 = load i64* %cost, align 8, !dbg !137, !tbaa !100
  %tail = getelementptr inbounds %struct.arc* %3, i64 0, i32 1, !dbg !137
  %5 = load %struct.node** %tail, align 8, !dbg !137, !tbaa !99
  %potential = getelementptr inbounds %struct.node* %5, i64 0, i32 0, !dbg !137
  %6 = load i64* %potential, align 8, !dbg !137, !tbaa !100
  %sub7 = sub nsw i64 %4, %6, !dbg !137
  %head = getelementptr inbounds %struct.arc* %3, i64 0, i32 2, !dbg !137
  %7 = load %struct.node** %head, align 8, !dbg !137, !tbaa !99
  %potential8 = getelementptr inbounds %struct.node* %7, i64 0, i32 0, !dbg !137
  %8 = load i64* %potential8, align 8, !dbg !137, !tbaa !100
  %add9 = add nsw i64 %8, %sub7, !dbg !137
  tail call void @llvm.dbg.value(metadata !{i64 %add9}, i64 0, metadata !78), !dbg !137
  %cmp10 = icmp slt i64 %add9, 0, !dbg !138
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false, !dbg !138

land.lhs.true:                                    ; preds = %for.body5
  %ident = getelementptr inbounds %struct.arc* %3, i64 0, i32 3, !dbg !138
  %9 = load i32* %ident, align 4, !dbg !138, !tbaa !92
  %cmp11 = icmp eq i32 %9, 1, !dbg !138
  br i1 %cmp11, label %if.then16, label %lor.lhs.false, !dbg !138

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body5
  %cmp12 = icmp sgt i64 %add9, 0, !dbg !138
  br i1 %cmp12, label %land.lhs.true13, label %for.inc25, !dbg !138

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %ident14 = getelementptr inbounds %struct.arc* %3, i64 0, i32 3, !dbg !138
  %10 = load i32* %ident14, align 4, !dbg !138, !tbaa !92
  %cmp15 = icmp eq i32 %10, 2, !dbg !138
  br i1 %cmp15, label %if.then16, label %for.inc25, !dbg !138

if.then16:                                        ; preds = %land.lhs.true13, %land.lhs.true
  %inc17 = add nsw i64 %next.0115, 1, !dbg !139
  tail call void @llvm.dbg.value(metadata !{i64 %inc17}, i64 0, metadata !75), !dbg !139
  %arrayidx18 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %inc17, !dbg !141
  %11 = load %struct.basket** %arrayidx18, align 8, !dbg !141, !tbaa !99
  %a19 = getelementptr inbounds %struct.basket* %11, i64 0, i32 0, !dbg !141
  store %struct.arc* %3, %struct.arc** %a19, align 8, !dbg !141, !tbaa !99
  %12 = load %struct.basket** %arrayidx18, align 8, !dbg !142, !tbaa !99
  %cost21 = getelementptr inbounds %struct.basket* %12, i64 0, i32 1, !dbg !142
  store i64 %add9, i64* %cost21, align 8, !dbg !142, !tbaa !100
  %cmp22 = icmp sgt i64 %add9, -1, !dbg !143
  %sub23 = sub nsw i64 0, %add9, !dbg !143
  %cond = select i1 %cmp22, i64 %add9, i64 %sub23, !dbg !143
  %abs_cost = getelementptr inbounds %struct.basket* %12, i64 0, i32 2, !dbg !143
  store i64 %cond, i64* %abs_cost, align 8, !dbg !143, !tbaa !100
  %.pre118 = load i64* @basket_size, align 8, !dbg !124, !tbaa !100
  br label %for.inc25, !dbg !144

for.inc25:                                        ; preds = %lor.lhs.false, %land.lhs.true13, %if.then16
  %13 = phi i64 [ %.pre118, %if.then16 ], [ %1, %land.lhs.true13 ], [ %1, %lor.lhs.false ], !dbg !124
  %next.1 = phi i64 [ %inc17, %if.then16 ], [ %next.0115, %land.lhs.true13 ], [ %next.0115, %lor.lhs.false ]
  %inc26 = add nsw i64 %i.1114, 1, !dbg !124
  tail call void @llvm.dbg.value(metadata !{i64 %inc26}, i64 0, metadata !74), !dbg !124
  %cmp3 = icmp sgt i64 %i.1114, 49, !dbg !124
  %cmp4 = icmp sge i64 %i.1114, %13, !dbg !124
  %or.cond = or i1 %cmp3, %cmp4, !dbg !124
  br i1 %or.cond, label %for.end27, label %for.body5, !dbg !124

for.end27:                                        ; preds = %for.inc25, %for.cond2.preheader
  %next.0.lcssa = phi i64 [ 0, %for.cond2.preheader ], [ %next.1, %for.inc25 ]
  store i64 %next.0.lcssa, i64* @basket_size, align 8, !dbg !145, !tbaa !100
  %.pre = load i64* @group_pos, align 8, !dbg !146, !tbaa !100
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %for.end
  %14 = phi i64 [ %next.0.lcssa, %for.end27 ], [ 0, %for.end ]
  %15 = phi i64 [ %.pre, %for.end27 ], [ 0, %for.end ]
  tail call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !76), !dbg !146
  br label %NEXT, !dbg !146

NEXT:                                             ; preds = %for.end61, %if.end28
  %16 = phi i64 [ %30, %for.end61 ], [ %14, %if.end28 ]
  %17 = phi i64 [ %.inc62, %for.end61 ], [ %15, %if.end28 ]
  %add.ptr = getelementptr inbounds %struct.arc* %arcs, i64 %17, !dbg !147
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %add.ptr}, i64 0, metadata !77), !dbg !147
  %cmp30111 = icmp ult %struct.arc* %add.ptr, %stop_arcs, !dbg !148
  br i1 %cmp30111, label %for.body31, label %NEXT.for.end61_crit_edge, !dbg !148

NEXT.for.end61_crit_edge:                         ; preds = %NEXT
  %.pre120 = load i64* @nr_group, align 8, !dbg !150, !tbaa !100
  br label %for.end61, !dbg !148

for.body31:                                       ; preds = %NEXT, %for.inc59
  %arc.0112 = phi %struct.arc* [ %add.ptr60, %for.inc59 ], [ %add.ptr, %NEXT ]
  %ident32 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 3, !dbg !151
  %18 = load i32* %ident32, align 4, !dbg !151, !tbaa !92
  %cmp33 = icmp sgt i32 %18, 0, !dbg !151
  br i1 %cmp33, label %if.then34, label %for.inc59, !dbg !151

if.then34:                                        ; preds = %for.body31
  %cost35 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 0, !dbg !153
  %19 = load i64* %cost35, align 8, !dbg !153, !tbaa !100
  %tail36 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 1, !dbg !153
  %20 = load %struct.node** %tail36, align 8, !dbg !153, !tbaa !99
  %potential37 = getelementptr inbounds %struct.node* %20, i64 0, i32 0, !dbg !153
  %21 = load i64* %potential37, align 8, !dbg !153, !tbaa !100
  %sub38 = sub nsw i64 %19, %21, !dbg !153
  %head39 = getelementptr inbounds %struct.arc* %arc.0112, i64 0, i32 2, !dbg !153
  %22 = load %struct.node** %head39, align 8, !dbg !153, !tbaa !99
  %potential40 = getelementptr inbounds %struct.node* %22, i64 0, i32 0, !dbg !153
  %23 = load i64* %potential40, align 8, !dbg !153, !tbaa !100
  %add41 = add nsw i64 %23, %sub38, !dbg !153
  tail call void @llvm.dbg.value(metadata !{i64 %add41}, i64 0, metadata !78), !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %arc.0112}, i64 0, metadata !155), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i64 %add41}, i64 0, metadata !158), !dbg !157
  %cmp.i = icmp slt i64 %add41, 0, !dbg !159
  %cmp1.i = icmp eq i32 %18, 1, !dbg !159
  %or.cond110 = and i1 %cmp.i, %cmp1.i, !dbg !159
  br i1 %or.cond110, label %if.then43, label %lor.rhs.i, !dbg !159

lor.rhs.i:                                        ; preds = %if.then34
  %cmp2.i = icmp sgt i64 %add41, 0, !dbg !159
  %cmp4.i = icmp eq i32 %18, 2, !dbg !159
  %or.cond122 = and i1 %cmp2.i, %cmp4.i, !dbg !159
  br i1 %or.cond122, label %if.then43, label %for.inc59, !dbg !159

if.then43:                                        ; preds = %lor.rhs.i, %if.then34
  %24 = load i64* @basket_size, align 8, !dbg !160, !tbaa !100
  %inc44 = add nsw i64 %24, 1, !dbg !160
  store i64 %inc44, i64* @basket_size, align 8, !dbg !160, !tbaa !100
  %arrayidx45 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %inc44, !dbg !162
  %25 = load %struct.basket** %arrayidx45, align 8, !dbg !162, !tbaa !99
  %a46 = getelementptr inbounds %struct.basket* %25, i64 0, i32 0, !dbg !162
  store %struct.arc* %arc.0112, %struct.arc** %a46, align 8, !dbg !162, !tbaa !99
  %26 = load %struct.basket** %arrayidx45, align 8, !dbg !163, !tbaa !99
  %cost48 = getelementptr inbounds %struct.basket* %26, i64 0, i32 1, !dbg !163
  store i64 %add41, i64* %cost48, align 8, !dbg !163, !tbaa !100
  %cmp49 = icmp sgt i64 %add41, -1, !dbg !164
  %sub52 = sub nsw i64 0, %add41, !dbg !164
  %cond54 = select i1 %cmp49, i64 %add41, i64 %sub52, !dbg !164
  %27 = load i64* @basket_size, align 8, !dbg !164, !tbaa !100
  %arrayidx55 = getelementptr inbounds [351 x %struct.basket*]* @perm, i64 0, i64 %27, !dbg !164
  %28 = load %struct.basket** %arrayidx55, align 8, !dbg !164, !tbaa !99
  %abs_cost56 = getelementptr inbounds %struct.basket* %28, i64 0, i32 2, !dbg !164
  store i64 %cond54, i64* %abs_cost56, align 8, !dbg !164, !tbaa !100
  br label %for.inc59, !dbg !165

for.inc59:                                        ; preds = %lor.rhs.i, %for.body31, %if.then43
  %29 = load i64* @nr_group, align 8, !dbg !148, !tbaa !100
  %add.ptr60 = getelementptr inbounds %struct.arc* %arc.0112, i64 %29, !dbg !148
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %add.ptr60}, i64 0, metadata !77), !dbg !148
  %cmp30 = icmp ult %struct.arc* %add.ptr60, %stop_arcs, !dbg !148
  br i1 %cmp30, label %for.body31, label %for.cond29.for.end61_crit_edge, !dbg !148

for.cond29.for.end61_crit_edge:                   ; preds = %for.inc59
  %.pre119 = load i64* @group_pos, align 8, !dbg !150, !tbaa !100
  %.pre121 = load i64* @basket_size, align 8, !dbg !166, !tbaa !100
  br label %for.end61, !dbg !148

for.end61:                                        ; preds = %NEXT.for.end61_crit_edge, %for.cond29.for.end61_crit_edge
  %30 = phi i64 [ %16, %NEXT.for.end61_crit_edge ], [ %.pre121, %for.cond29.for.end61_crit_edge ], !dbg !150
  %31 = phi i64 [ %.pre120, %NEXT.for.end61_crit_edge ], [ %29, %for.cond29.for.end61_crit_edge ], !dbg !150
  %32 = phi i64 [ %17, %NEXT.for.end61_crit_edge ], [ %.pre119, %for.cond29.for.end61_crit_edge ], !dbg !150
  %inc62 = add nsw i64 %32, 1, !dbg !150
  %cmp63 = icmp eq i64 %inc62, %31, !dbg !150
  %.inc62 = select i1 %cmp63, i64 0, i64 %inc62, !dbg !150
  store i64 %.inc62, i64* @group_pos, align 8, !dbg !167, !tbaa !100
  %cmp66 = icmp sgt i64 %30, 49, !dbg !166
  %cmp68 = icmp eq i64 %.inc62, %15, !dbg !166
  %or.cond109 = or i1 %cmp66, %cmp68, !dbg !166
  br i1 %or.cond109, label %if.end70, label %NEXT, !dbg !166

if.end70:                                         ; preds = %for.end61
  %cmp71 = icmp eq i64 %30, 0, !dbg !168
  br i1 %cmp71, label %if.then72, label %if.end73, !dbg !168

if.then72:                                        ; preds = %if.end70
  store i1 false, i1* @initialize, align 1
  store i64 0, i64* %red_cost_of_bea, align 8, !dbg !169, !tbaa !100
  br label %return, !dbg !171

if.end73:                                         ; preds = %if.end70
  tail call void @sort_basket(i64 1, i64 %30) #3, !dbg !172
  %33 = load %struct.basket** getelementptr inbounds ([351 x %struct.basket*]* @perm, i64 0, i64 1), align 8, !dbg !173, !tbaa !99
  %cost74 = getelementptr inbounds %struct.basket* %33, i64 0, i32 1, !dbg !173
  %34 = load i64* %cost74, align 8, !dbg !173, !tbaa !100
  store i64 %34, i64* %red_cost_of_bea, align 8, !dbg !173, !tbaa !100
  %a75 = getelementptr inbounds %struct.basket* %33, i64 0, i32 0, !dbg !174
  %35 = load %struct.arc** %a75, align 8, !dbg !174, !tbaa !99
  br label %return, !dbg !174

return:                                           ; preds = %if.end73, %if.then72
  %retval.0 = phi %struct.arc* [ null, %if.then72 ], [ %35, %if.end73 ]
  ret %struct.arc* %retval.0, !dbg !175
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !79, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !48, metadata !65}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bea_is_dual_infeasible", metadata !"bea_is_dual_infeasible", metadata !"", i32 34, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.arc*, i64)* @bea_is_dual_infeasible, null, null, metadata !45, i32 40} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 40] [bea_is_dual_infeasible]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !15}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc_t]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"arc_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [arc_t] [line 102, size 0, align 0, offset 0] [from arc]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"arc", i32 126, i64 512, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [arc] [line 126, size 512, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/defines.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !17, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cost", i32 128, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [cost] [line 128, size 64, align 64, offset 0] [from cost_t]
!15 = metadata !{i32 786454, metadata !12, null, metadata !"cost_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [cost_t] [line 69, size 0, align 0, offset 0] [from long int]
!16 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"tail", i32 129, i64 64, i64 64, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [tail] [line 129, size 64, align 64, offset 64] [from node_p]
!18 = metadata !{i32 786454, metadata !12, null, metadata !"node_p", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [node_p] [line 100, size 0, align 0, offset 0] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node]
!20 = metadata !{i32 786451, metadata !12, null, metadata !"node", i32 107, i64 832, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [node] [line 107, size 832, align 64, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !31, metadata !32, metadata !33, metadata !34, metadata !36, metadata !37, metadata !38}
!22 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"potential", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [potential] [line 109, size 64, align 64, offset 0] [from cost_t]
!23 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"orientation", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [orientation] [line 110, size 32, align 32, offset 64] [from int]
!24 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"child", i32 111, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [child] [line 111, size 64, align 64, offset 128] [from node_p]
!25 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"pred", i32 112, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [pred] [line 112, size 64, align 64, offset 192] [from node_p]
!26 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"sibling", i32 113, i64 64, i64 64, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [sibling] [line 113, size 64, align 64, offset 256] [from node_p]
!27 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"sibling_prev", i32 114, i64 64, i64 64, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [sibling_prev] [line 114, size 64, align 64, offset 320] [from node_p]
!28 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"basic_arc", i32 115, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [basic_arc] [line 115, size 64, align 64, offset 384] [from arc_p]
!29 = metadata !{i32 786454, metadata !12, null, metadata !"arc_p", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [arc_p] [line 103, size 0, align 0, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc]
!31 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"firstout", i32 116, i64 64, i64 64, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [firstout] [line 116, size 64, align 64, offset 448] [from arc_p]
!32 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"firstin", i32 116, i64 64, i64 64, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ] [firstin] [line 116, size 64, align 64, offset 512] [from arc_p]
!33 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"arc_tmp", i32 117, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ] [arc_tmp] [line 117, size 64, align 64, offset 576] [from arc_p]
!34 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"flow", i32 118, i64 64, i64 64, i64 640, i32 0, metadata !35} ; [ DW_TAG_member ] [flow] [line 118, size 64, align 64, offset 640] [from flow_t]
!35 = metadata !{i32 786454, metadata !12, null, metadata !"flow_t", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [flow_t] [line 68, size 0, align 0, offset 0] [from long int]
!36 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"depth", i32 119, i64 64, i64 64, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [depth] [line 119, size 64, align 64, offset 704] [from long int]
!37 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"number", i32 120, i64 32, i64 32, i64 768, i32 0, metadata !8} ; [ DW_TAG_member ] [number] [line 120, size 32, align 32, offset 768] [from int]
!38 = metadata !{i32 786445, metadata !12, metadata !20, metadata !"time", i32 121, i64 32, i64 32, i64 800, i32 0, metadata !8} ; [ DW_TAG_member ] [time] [line 121, size 32, align 32, offset 800] [from int]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"head", i32 129, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [head] [line 129, size 64, align 64, offset 128] [from node_p]
!40 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ident", i32 130, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [ident] [line 130, size 32, align 32, offset 192] [from int]
!41 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nextout", i32 131, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [nextout] [line 131, size 64, align 64, offset 256] [from arc_p]
!42 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nextin", i32 131, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [nextin] [line 131, size 64, align 64, offset 320] [from arc_p]
!43 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"flow", i32 132, i64 64, i64 64, i64 384, i32 0, metadata !35} ; [ DW_TAG_member ] [flow] [line 132, size 64, align 64, offset 384] [from flow_t]
!44 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"org_cost", i32 133, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [org_cost] [line 133, size 64, align 64, offset 448] [from cost_t]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786689, metadata !4, metadata !"arc", metadata !5, i32 16777250, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arc] [line 34]
!47 = metadata !{i32 786689, metadata !4, metadata !"red_cost", metadata !5, i32 33554466, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [red_cost] [line 34]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sort_basket", metadata !"sort_basket", metadata !"", i32 65, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @sort_basket, null, null, metadata !51, i32 70} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 70] [sort_basket]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !16, metadata !16}
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!52 = metadata !{i32 786689, metadata !48, metadata !"min", metadata !5, i32 16777281, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 65]
!53 = metadata !{i32 786689, metadata !48, metadata !"max", metadata !5, i32 33554497, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 65]
!54 = metadata !{i32 786688, metadata !48, metadata !"l", metadata !5, i32 71, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 71]
!55 = metadata !{i32 786688, metadata !48, metadata !"r", metadata !5, i32 71, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 71]
!56 = metadata !{i32 786688, metadata !48, metadata !"cut", metadata !5, i32 72, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cut] [line 72]
!57 = metadata !{i32 786688, metadata !48, metadata !"xchange", metadata !5, i32 73, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xchange] [line 73]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BASKET]
!59 = metadata !{i32 786454, metadata !1, null, metadata !"BASKET", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [BASKET] [line 56, size 0, align 0, offset 0] [from basket]
!60 = metadata !{i32 786451, metadata !1, null, metadata !"basket", i32 51, i64 192, i64 64, i32 0, i32 0, null, metadata !61, i32 0, null, null} ; [ DW_TAG_structure_type ] [basket] [line 51, size 192, align 64, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !63, metadata !64}
!62 = metadata !{i32 786445, metadata !1, metadata !60, metadata !"a", i32 53, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [a] [line 53, size 64, align 64, offset 0] [from ]
!63 = metadata !{i32 786445, metadata !1, metadata !60, metadata !"cost", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [cost] [line 54, size 64, align 64, offset 64] [from cost_t]
!64 = metadata !{i32 786445, metadata !1, metadata !60, metadata !"abs_cost", i32 55, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [abs_cost] [line 55, size 64, align 64, offset 128] [from cost_t]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"primal_bea_mpp", metadata !"primal_bea_mpp", metadata !"", i32 119, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.arc* (i64, %struct.arc*, %struct.arc*, i64*)* @primal_bea_mpp, null, null, metadata !69, i32 128} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 128] [primal_bea_mpp]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !9, metadata !16, metadata !9, metadata !9, metadata !68}
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cost_t]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!70 = metadata !{i32 786689, metadata !65, metadata !"m", metadata !5, i32 16777335, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 119]
!71 = metadata !{i32 786689, metadata !65, metadata !"arcs", metadata !5, i32 33554551, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arcs] [line 119]
!72 = metadata !{i32 786689, metadata !65, metadata !"stop_arcs", metadata !5, i32 50331767, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stop_arcs] [line 119]
!73 = metadata !{i32 786689, metadata !65, metadata !"red_cost_of_bea", metadata !5, i32 67108984, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [red_cost_of_bea] [line 120]
!74 = metadata !{i32 786688, metadata !65, metadata !"i", metadata !5, i32 129, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 129]
!75 = metadata !{i32 786688, metadata !65, metadata !"next", metadata !5, i32 129, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 129]
!76 = metadata !{i32 786688, metadata !65, metadata !"old_group_pos", metadata !5, i32 129, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_group_pos] [line 129]
!77 = metadata !{i32 786688, metadata !65, metadata !"arc", metadata !5, i32 130, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 130]
!78 = metadata !{i32 786688, metadata !65, metadata !"red_cost", metadata !5, i32 131, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [red_cost] [line 131]
!79 = metadata !{metadata !80, metadata !81, metadata !85, metadata !87, metadata !88, metadata !89}
!80 = metadata !{i32 786484, i32 0, null, metadata !"basket_size", metadata !"basket_size", metadata !"", metadata !5, i32 58, metadata !16, i32 1, i32 1, i64* @basket_size, null} ; [ DW_TAG_variable ] [basket_size] [line 58] [local] [def]
!81 = metadata !{i32 786484, i32 0, null, metadata !"basket", metadata !"basket", metadata !"", metadata !5, i32 59, metadata !82, i32 1, i32 1, [351 x %struct.basket]* @basket, null} ; [ DW_TAG_variable ] [basket] [line 59] [local] [def]
!82 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 67392, i64 64, i32 0, i32 0, metadata !59, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 67392, align 64, offset 0] [from BASKET]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 351}      ; [ DW_TAG_subrange_type ] [0, 350]
!85 = metadata !{i32 786484, i32 0, null, metadata !"perm", metadata !"perm", metadata !"", metadata !5, i32 60, metadata !86, i32 1, i32 1, [351 x %struct.basket*]* @perm, null} ; [ DW_TAG_variable ] [perm] [line 60] [local] [def]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 22464, i64 64, i32 0, i32 0, metadata !58, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 22464, align 64, offset 0] [from ]
!87 = metadata !{i32 786484, i32 0, null, metadata !"nr_group", metadata !"nr_group", metadata !"", metadata !5, i32 111, metadata !16, i32 1, i32 1, i64* @nr_group, null} ; [ DW_TAG_variable ] [nr_group] [line 111] [local] [def]
!88 = metadata !{i32 786484, i32 0, null, metadata !"group_pos", metadata !"group_pos", metadata !"", metadata !5, i32 112, metadata !16, i32 1, i32 1, i64* @group_pos, null} ; [ DW_TAG_variable ] [group_pos] [line 112] [local] [def]
!89 = metadata !{i32 786484, i32 0, null, metadata !"initialize", metadata !"initialize", metadata !"", metadata !5, i32 115, metadata !16, i32 1, i32 1, null, null}
!90 = metadata !{i32 34, i32 0, metadata !4, null}
!91 = metadata !{i32 41, i32 0, metadata !4, null}
!92 = metadata !{metadata !"int", metadata !93}
!93 = metadata !{metadata !"omnipotent char", metadata !94}
!94 = metadata !{metadata !"Simple C/C++ TBAA"}
!95 = metadata !{i32 43, i32 0, metadata !4, null}
!96 = metadata !{i32 65, i32 0, metadata !48, null}
!97 = metadata !{i32 75, i32 0, metadata !48, null}
!98 = metadata !{i32 77, i32 0, metadata !48, null}
!99 = metadata !{metadata !"any pointer", metadata !93}
!100 = metadata !{metadata !"long", metadata !93}
!101 = metadata !{i32 79, i32 0, metadata !48, null}
!102 = metadata !{i32 81, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !48, i32 80, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!104 = metadata !{i32 82, i32 0, metadata !103, null}
!105 = metadata !{i32 83, i32 0, metadata !103, null}
!106 = metadata !{i32 84, i32 0, metadata !103, null}
!107 = metadata !{i32 86, i32 0, metadata !103, null}
!108 = metadata !{i32 88, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !103, i32 87, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!110 = metadata !{i32 89, i32 0, metadata !109, null}
!111 = metadata !{i32 90, i32 0, metadata !109, null}
!112 = metadata !{i32 91, i32 0, metadata !109, null}
!113 = metadata !{i32 92, i32 0, metadata !103, null}
!114 = metadata !{i32 94, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !103, i32 93, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!116 = metadata !{i32 97, i32 0, metadata !103, null}
!117 = metadata !{i32 100, i32 0, metadata !48, null}
!118 = metadata !{i32 101, i32 0, metadata !48, null}
!119 = metadata !{i32 102, i32 0, metadata !48, null}
!120 = metadata !{i32 104, i32 0, metadata !48, null}
!121 = metadata !{i32 119, i32 0, metadata !65, null}
!122 = metadata !{i32 120, i32 0, metadata !65, null}
!123 = metadata !{i32 133, i32 0, metadata !65, null}
!124 = metadata !{i32 144, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !126, i32 144, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!126 = metadata !{i32 786443, metadata !1, metadata !65, i32 143, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!127 = metadata !{i32 136, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !129, i32 135, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!129 = metadata !{i32 786443, metadata !1, metadata !65, i32 134, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!130 = metadata !{i32 135, i32 0, metadata !128, null}
!131 = metadata !{i32 137, i32 0, metadata !129, null}
!132 = metadata !{i32 138, i32 0, metadata !129, null}
!133 = metadata !{i32 139, i32 0, metadata !129, null}
!134 = metadata !{i32 141, i32 0, metadata !129, null}
!135 = metadata !{i32 146, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !125, i32 145, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!137 = metadata !{i32 147, i32 0, metadata !136, null}
!138 = metadata !{i32 148, i32 0, metadata !136, null}
!139 = metadata !{i32 151, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !136, i32 150, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!141 = metadata !{i32 152, i32 0, metadata !140, null}
!142 = metadata !{i32 153, i32 0, metadata !140, null}
!143 = metadata !{i32 154, i32 0, metadata !140, null}
!144 = metadata !{i32 155, i32 0, metadata !140, null}
!145 = metadata !{i32 157, i32 0, metadata !126, null}
!146 = metadata !{i32 160, i32 0, metadata !65, null}
!147 = metadata !{i32 164, i32 0, metadata !65, null}
!148 = metadata !{i32 165, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !65, i32 165, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!150 = metadata !{i32 182, i32 0, metadata !65, null}
!151 = metadata !{i32 167, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !149, i32 166, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!153 = metadata !{i32 170, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !152, i32 168, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!155 = metadata !{i32 786689, metadata !4, metadata !"arc", metadata !5, i32 16777250, metadata !9, i32 0, metadata !156} ; [ DW_TAG_arg_variable ] [arc] [line 34]
!156 = metadata !{i32 171, i32 0, metadata !154, null}
!157 = metadata !{i32 34, i32 0, metadata !4, metadata !156}
!158 = metadata !{i32 786689, metadata !4, metadata !"red_cost", metadata !5, i32 33554466, metadata !15, i32 0, metadata !156} ; [ DW_TAG_arg_variable ] [red_cost] [line 34]
!159 = metadata !{i32 41, i32 0, metadata !4, metadata !156}
!160 = metadata !{i32 173, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !154, i32 172, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!162 = metadata !{i32 174, i32 0, metadata !161, null}
!163 = metadata !{i32 175, i32 0, metadata !161, null}
!164 = metadata !{i32 176, i32 0, metadata !161, null}
!165 = metadata !{i32 177, i32 0, metadata !161, null}
!166 = metadata !{i32 185, i32 0, metadata !65, null}
!167 = metadata !{i32 183, i32 0, metadata !65, null}
!168 = metadata !{i32 188, i32 0, metadata !65, null}
!169 = metadata !{i32 191, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !65, i32 189, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbeampp.c]
!171 = metadata !{i32 192, i32 0, metadata !170, null}
!172 = metadata !{i32 195, i32 0, metadata !65, null}
!173 = metadata !{i32 197, i32 0, metadata !65, null}
!174 = metadata !{i32 198, i32 0, metadata !65, null}
!175 = metadata !{i32 199, i32 0, metadata !65, null}

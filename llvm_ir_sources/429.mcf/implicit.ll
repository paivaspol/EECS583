; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define i64 @resize_prob(%struct.network* %net) #0 {
entry:
  %max_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 9
  %0 = load i64* %max_new_m, align 8, !tbaa !0
  %max_m = getelementptr inbounds %struct.network* %net, i64 0, i32 4
  %1 = load i64* %max_m, align 8, !tbaa !0
  %add = add nsw i64 %1, %0
  store i64 %add, i64* %max_m, align 8, !tbaa !0
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8
  %2 = load i64* %max_residual_new_m, align 8, !tbaa !0
  %add2 = add nsw i64 %2, %0
  store i64 %add2, i64* %max_residual_new_m, align 8, !tbaa !0
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %3 = load %struct.arc** %arcs, align 8, !tbaa !3
  %4 = bitcast %struct.arc* %3 to i8*
  %mul = shl i64 %add, 6
  %call = tail call i8* @realloc(i8* %4, i64 %mul) #4
  %5 = bitcast i8* %call to %struct.arc*
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.network* %net, i64 0, i32 0, i64 0
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str, i64 0, i64 0), i8* %arraydecay) #4
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call5 = tail call i32 @fflush(%struct._IO_FILE* %6) #4
  br label %return

if.end:                                           ; preds = %entry
  %7 = ptrtoint i8* %call to i64
  %8 = load %struct.arc** %arcs, align 8, !tbaa !3
  %9 = ptrtoint %struct.arc* %8 to i64
  %sub = sub i64 %7, %9
  store %struct.arc* %5, %struct.arc** %arcs, align 8, !tbaa !3
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5
  %10 = load i64* %m, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.arc* %5, i64 %10
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs, align 8, !tbaa !3
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %11 = load %struct.node** %nodes, align 8, !tbaa !3
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22
  %12 = load %struct.node** %stop_nodes, align 8, !tbaa !3
  %node.034 = getelementptr inbounds %struct.node* %11, i64 1
  %cmp35 = icmp ult %struct.node* %node.034, %12
  br i1 %cmp35, label %for.body, label %return

for.body:                                         ; preds = %if.end, %for.cond.backedge
  %node.037 = phi %struct.node* [ %node.0, %for.cond.backedge ], [ %node.034, %if.end ]
  %.pn36 = phi %struct.node* [ %node.037, %for.cond.backedge ], [ %11, %if.end ]
  %pred = getelementptr inbounds %struct.node* %.pn36, i64 1, i32 3
  %13 = load %struct.node** %pred, align 8, !tbaa !3
  %cmp8 = icmp eq %struct.node* %13, %11
  br i1 %cmp8, label %for.cond.backedge, label %if.then9

for.cond.backedge:                                ; preds = %for.body, %if.then9
  %node.0 = getelementptr inbounds %struct.node* %node.037, i64 1
  %cmp = icmp ult %struct.node* %node.0, %12
  br i1 %cmp, label %for.body, label %return

if.then9:                                         ; preds = %for.body
  %basic_arc = getelementptr inbounds %struct.node* %.pn36, i64 1, i32 6
  %14 = load %struct.arc** %basic_arc, align 8, !tbaa !3
  %15 = ptrtoint %struct.arc* %14 to i64
  %add10 = add i64 %sub, %15
  %16 = inttoptr i64 %add10 to %struct.arc*
  store %struct.arc* %16, %struct.arc** %basic_arc, align 8, !tbaa !3
  br label %for.cond.backedge

return:                                           ; preds = %if.end, %for.cond.backedge, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ 0, %for.cond.backedge ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @insert_new_arc(%struct.arc* nocapture %new, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
entry:
  %tail1 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 1
  store %struct.node* %tail, %struct.node** %tail1, align 8, !tbaa !3
  %head3 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 2
  store %struct.node* %head, %struct.node** %head3, align 8, !tbaa !3
  %org_cost = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 7
  store i64 %cost, i64* %org_cost, align 8, !tbaa !0
  %cost6 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 0
  store i64 %cost, i64* %cost6, align 8, !tbaa !0
  %flow = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 6
  store i64 %red_cost, i64* %flow, align 8, !tbaa !0
  %tobool111 = icmp eq i64 %newpos, 0
  br i1 %tobool111, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %add = add nsw i64 %newpos, 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %sub113 = phi i64 [ %newpos, %land.rhs.lr.ph ], [ %sub8, %while.body ]
  %pos.0112 = phi i64 [ %add, %land.rhs.lr.ph ], [ %div, %while.body ]
  %div = sdiv i64 %pos.0112, 2
  %sub8 = add nsw i64 %div, -1
  %flow10 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 6
  %0 = load i64* %flow10, align 8, !tbaa !0
  %cmp = icmp slt i64 %0, %red_cost
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %tail14 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 1
  %1 = load %struct.node** %tail14, align 8, !tbaa !3
  %tail17 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 1
  store %struct.node* %1, %struct.node** %tail17, align 8, !tbaa !3
  %head21 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 2
  %2 = load %struct.node** %head21, align 8, !tbaa !3
  %head24 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 2
  store %struct.node* %2, %struct.node** %head24, align 8, !tbaa !3
  %cost28 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 0
  %3 = load i64* %cost28, align 8, !tbaa !0
  %cost31 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 0
  store i64 %3, i64* %cost31, align 8, !tbaa !0
  %4 = load i64* %cost28, align 8, !tbaa !0
  %org_cost38 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 7
  store i64 %4, i64* %org_cost38, align 8, !tbaa !0
  %flow45 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 6
  store i64 %0, i64* %flow45, align 8, !tbaa !0
  store %struct.node* %tail, %struct.node** %tail14, align 8, !tbaa !3
  store %struct.node* %head, %struct.node** %head21, align 8, !tbaa !3
  store i64 %cost, i64* %cost28, align 8, !tbaa !0
  %org_cost58 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 7
  store i64 %cost, i64* %org_cost58, align 8, !tbaa !0
  store i64 %red_cost, i64* %flow10, align 8, !tbaa !0
  %tobool = icmp eq i64 %sub8, 0
  br i1 %tobool, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @replace_weaker_arc(%struct.network* nocapture %net, %struct.arc* nocapture %new, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
entry:
  %tail1 = getelementptr inbounds %struct.arc* %new, i64 0, i32 1
  store %struct.node* %tail, %struct.node** %tail1, align 8, !tbaa !3
  %head3 = getelementptr inbounds %struct.arc* %new, i64 0, i32 2
  store %struct.node* %head, %struct.node** %head3, align 8, !tbaa !3
  %org_cost = getelementptr inbounds %struct.arc* %new, i64 0, i32 7
  store i64 %cost, i64* %org_cost, align 8, !tbaa !0
  %cost6 = getelementptr inbounds %struct.arc* %new, i64 0, i32 0
  store i64 %cost, i64* %cost6, align 8, !tbaa !0
  %flow = getelementptr inbounds %struct.arc* %new, i64 0, i32 6
  store i64 %red_cost, i64* %flow, align 8, !tbaa !0
  %flow9 = getelementptr inbounds %struct.arc* %new, i64 1, i32 6
  %0 = load i64* %flow9, align 8, !tbaa !0
  %flow11 = getelementptr inbounds %struct.arc* %new, i64 2, i32 6
  %1 = load i64* %flow11, align 8, !tbaa !0
  %cmp12 = icmp sgt i64 %0, %1
  %conv = select i1 %cmp12, i64 2, i64 3
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8
  %2 = load i64* %max_residual_new_m, align 8, !tbaa !0
  %cmp13130 = icmp sgt i64 %conv, %2
  br i1 %cmp13130, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.cond.backedge
  %cmp.0132 = phi i64 [ %cmp.0.be, %while.cond.backedge ], [ %conv, %entry ]
  %pos.0131 = phi i64 [ %cmp.0132, %while.cond.backedge ], [ 1, %entry ]
  %sub = add nsw i64 %cmp.0132, -1
  %flow16 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 6
  %3 = load i64* %flow16, align 8, !tbaa !0
  %cmp17 = icmp sgt i64 %3, %red_cost
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %tail21 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 1
  %4 = load %struct.node** %tail21, align 8, !tbaa !3
  %sub22 = add nsw i64 %pos.0131, -1
  %tail24 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 1
  store %struct.node* %4, %struct.node** %tail24, align 8, !tbaa !3
  %head27 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 2
  %5 = load %struct.node** %head27, align 8, !tbaa !3
  %head30 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 2
  store %struct.node* %5, %struct.node** %head30, align 8, !tbaa !3
  %cost33 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 0
  %6 = load i64* %cost33, align 8, !tbaa !0
  %cost36 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 0
  store i64 %6, i64* %cost36, align 8, !tbaa !0
  %7 = load i64* %cost33, align 8, !tbaa !0
  %org_cost42 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 7
  store i64 %7, i64* %org_cost42, align 8, !tbaa !0
  %flow48 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 6
  store i64 %3, i64* %flow48, align 8, !tbaa !0
  store %struct.node* %tail, %struct.node** %tail21, align 8, !tbaa !3
  store %struct.node* %head, %struct.node** %head27, align 8, !tbaa !3
  store i64 %cost, i64* %cost33, align 8, !tbaa !0
  %org_cost60 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 7
  store i64 %cost, i64* %org_cost60, align 8, !tbaa !0
  store i64 %red_cost, i64* %flow16, align 8, !tbaa !0
  %mul = shl nsw i64 %cmp.0132, 1
  %add129 = or i64 %mul, 1
  %8 = load i64* %max_residual_new_m, align 8, !tbaa !0
  %cmp65 = icmp sgt i64 %add129, %8
  br i1 %cmp65, label %while.cond.backedge, label %if.then

while.cond.backedge:                              ; preds = %while.body, %if.then
  %cmp.0.be = phi i64 [ %mul, %while.body ], [ %add129.mul, %if.then ]
  %cmp13 = icmp sgt i64 %cmp.0.be, %8
  br i1 %cmp13, label %while.end, label %land.rhs

if.then:                                          ; preds = %while.body
  %sub67 = add nsw i64 %mul, -1
  %flow69 = getelementptr inbounds %struct.arc* %new, i64 %sub67, i32 6
  %9 = load i64* %flow69, align 8, !tbaa !0
  %flow71 = getelementptr inbounds %struct.arc* %new, i64 %mul, i32 6
  %10 = load i64* %flow71, align 8, !tbaa !0
  %cmp72 = icmp slt i64 %9, %10
  %add129.mul = select i1 %cmp72, i64 %add129, i64 %mul
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %land.rhs, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @price_out_impl(%struct.network* %net) #0 {
entry:
  %bigM1 = getelementptr inbounds %struct.network* %net, i64 0, i32 18
  %0 = load i64* %bigM1, align 8, !tbaa !0
  %sub = add nsw i64 %0, -15
  %n_trips = getelementptr inbounds %struct.network* %net, i64 0, i32 3
  %1 = load i64* %n_trips, align 8, !tbaa !0
  %cmp = icmp slt i64 %1, 15001
  br i1 %cmp, label %if.then, label %if.end12.thread

if.end12.thread:                                  ; preds = %entry
  %stop_arcs215 = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %2 = load %struct.arc** %stop_arcs215, align 8, !tbaa !3
  %arcs216 = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %3 = load %struct.arc** %arcs216, align 8, !tbaa !3
  br label %land.rhs.lr.ph

if.then:                                          ; preds = %entry
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5
  %4 = load i64* %m, align 8, !tbaa !0
  %max_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 9
  %5 = load i64* %max_new_m, align 8, !tbaa !0
  %add = add nsw i64 %5, %4
  %max_m = getelementptr inbounds %struct.network* %net, i64 0, i32 4
  %6 = load i64* %max_m, align 8, !tbaa !0
  %cmp2 = icmp sgt i64 %add, %6
  br i1 %cmp2, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %mul = mul nsw i64 %1, %1
  %div = lshr i64 %mul, 1
  %add6 = add nsw i64 %4, %div
  %cmp8 = icmp sgt i64 %add6, %6
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  %call = tail call i64 @resize_prob(%struct.network* %net) #5
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %if.then9
  tail call void @refresh_neighbour_lists(%struct.network* %net) #4
  %.pre = load i64* %n_trips, align 8, !tbaa !0
  br label %if.end12

if.end12:                                         ; preds = %if.then, %land.lhs.true, %if.end
  %7 = phi i64 [ %.pre, %if.end ], [ %1, %land.lhs.true ], [ %1, %if.then ]
  %resized.0 = phi i64 [ 1, %if.end ], [ 0, %land.lhs.true ], [ 0, %if.then ]
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %8 = load %struct.arc** %stop_arcs, align 8, !tbaa !3
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %9 = load %struct.arc** %arcs, align 8, !tbaa !3
  %cmp14206 = icmp sgt i64 %7, 0
  br i1 %cmp14206, label %land.rhs.lr.ph, label %for.cond16.preheader

land.rhs.lr.ph:                                   ; preds = %if.end12.thread, %if.end12
  %10 = phi %struct.arc* [ %3, %if.end12.thread ], [ %9, %if.end12 ]
  %11 = phi %struct.arc* [ %2, %if.end12.thread ], [ %8, %if.end12 ]
  %stop_arcs221 = phi %struct.arc** [ %stop_arcs215, %if.end12.thread ], [ %stop_arcs, %if.end12 ]
  %resized.0219 = phi i64 [ 0, %if.end12.thread ], [ %resized.0, %if.end12 ]
  %12 = phi i64 [ %1, %if.end12.thread ], [ %7, %if.end12 ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %i.0208 = phi i64 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %arcout.0207 = phi %struct.arc* [ %10, %land.rhs.lr.ph ], [ %add.ptr, %for.inc ]
  %ident = getelementptr inbounds %struct.arc* %arcout.0207, i64 1, i32 3
  %13 = load i32* %ident, align 4, !tbaa !4
  %cmp15 = icmp eq i32 %13, -1
  br i1 %cmp15, label %for.inc, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.inc, %land.rhs, %if.end12
  %14 = phi %struct.arc* [ %8, %if.end12 ], [ %11, %land.rhs ], [ %11, %for.inc ]
  %stop_arcs220 = phi %struct.arc** [ %stop_arcs, %if.end12 ], [ %stop_arcs221, %land.rhs ], [ %stop_arcs221, %for.inc ]
  %resized.0218 = phi i64 [ %resized.0, %if.end12 ], [ %resized.0219, %land.rhs ], [ %resized.0219, %for.inc ]
  %15 = phi i64 [ %7, %if.end12 ], [ %12, %land.rhs ], [ %12, %for.inc ]
  %i.0.lcssa = phi i64 [ 0, %if.end12 ], [ %i.0208, %land.rhs ], [ %inc, %for.inc ]
  %arcout.0.lcssa = phi %struct.arc* [ %9, %if.end12 ], [ %arcout.0207, %land.rhs ], [ %add.ptr, %for.inc ]
  %cmp17200 = icmp slt i64 %i.0.lcssa, %15
  br i1 %cmp17200, label %for.body18.lr.ph, label %return

for.body18.lr.ph:                                 ; preds = %for.cond16.preheader
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8
  %flow = getelementptr inbounds %struct.arc* %14, i64 0, i32 6
  br label %for.body18

for.inc:                                          ; preds = %land.rhs
  %inc = add nsw i64 %i.0208, 1
  %add.ptr = getelementptr inbounds %struct.arc* %arcout.0207, i64 3
  %cmp14 = icmp slt i64 %inc, %12
  br i1 %cmp14, label %land.rhs, label %for.cond16.preheader

for.body18:                                       ; preds = %for.inc66, %for.body18.lr.ph
  %i.1204 = phi i64 [ %i.0.lcssa, %for.body18.lr.ph ], [ %inc67, %for.inc66 ]
  %first_of_sparse_list.0203 = phi %struct.arc* [ null, %for.body18.lr.ph ], [ %first_of_sparse_list.1, %for.inc66 ]
  %new_arcs.0202 = phi i64 [ 0, %for.body18.lr.ph ], [ %new_arcs.3, %for.inc66 ]
  %arcout.1201 = phi %struct.arc* [ %arcout.0.lcssa, %for.body18.lr.ph ], [ %add.ptr68, %for.inc66 ]
  %ident20 = getelementptr inbounds %struct.arc* %arcout.1201, i64 1, i32 3
  %16 = load i32* %ident20, align 4, !tbaa !4
  %cmp21 = icmp eq i32 %16, -1
  br i1 %cmp21, label %if.end26, label %if.then22

if.then22:                                        ; preds = %for.body18
  %arrayidx19 = getelementptr inbounds %struct.arc* %arcout.1201, i64 1
  %head23 = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 2
  %17 = load %struct.node** %head23, align 8, !tbaa !3
  %firstout = getelementptr inbounds %struct.node* %17, i64 0, i32 7
  %18 = load %struct.arc** %firstout, align 8, !tbaa !3
  %head24 = getelementptr inbounds %struct.arc* %18, i64 0, i32 2
  %19 = load %struct.node** %head24, align 8, !tbaa !3
  %arc_tmp = getelementptr inbounds %struct.node* %19, i64 0, i32 9
  store %struct.arc* %first_of_sparse_list.0203, %struct.arc** %arc_tmp, align 8, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %for.body18, %if.then22
  %first_of_sparse_list.1 = phi %struct.arc* [ %arrayidx19, %if.then22 ], [ %first_of_sparse_list.0203, %for.body18 ]
  %ident27 = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 3
  %20 = load i32* %ident27, align 4, !tbaa !4
  %cmp28 = icmp eq i32 %20, -1
  br i1 %cmp28, label %for.inc66, label %if.end30

if.end30:                                         ; preds = %if.end26
  %head31 = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 2
  %21 = load %struct.node** %head31, align 8, !tbaa !3
  %time = getelementptr inbounds %struct.node* %21, i64 0, i32 13
  %22 = load i32* %time, align 4, !tbaa !4
  %conv = sext i32 %22 to i64
  %org_cost = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 7
  %23 = load i64* %org_cost, align 8, !tbaa !0
  %sub32 = sub i64 %sub, %23
  %add33 = add i64 %sub32, %conv
  %potential = getelementptr inbounds %struct.node* %21, i64 0, i32 0
  %tail34 = getelementptr inbounds %struct.arc* %first_of_sparse_list.1, i64 0, i32 1
  %24 = load %struct.node** %tail34, align 8, !tbaa !3
  %arc_tmp35 = getelementptr inbounds %struct.node* %24, i64 0, i32 9
  %arcin.0191196 = load %struct.arc** %arc_tmp35, align 8
  %tobool36192197 = icmp eq %struct.arc* %arcin.0191196, null
  br i1 %tobool36192197, label %for.inc66, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end30, %if.end64
  %arcin.0191199 = phi %struct.arc* [ %arcin.0191, %if.end64 ], [ %arcin.0191196, %if.end30 ]
  %new_arcs.1.ph198 = phi i64 [ %new_arcs.2, %if.end64 ], [ %new_arcs.0202, %if.end30 ]
  br label %while.body

while.cond:                                       ; preds = %while.body
  %arc_tmp45 = getelementptr inbounds %struct.node* %25, i64 0, i32 9
  %arcin.0 = load %struct.arc** %arc_tmp45, align 8
  %tobool36 = icmp eq %struct.arc* %arcin.0, null
  br i1 %tobool36, label %for.inc66, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %arcin.0193 = phi %struct.arc* [ %arcin.0191199, %while.body.lr.ph ], [ %arcin.0, %while.cond ]
  %tail37 = getelementptr inbounds %struct.arc* %arcin.0193, i64 0, i32 1
  %25 = load %struct.node** %tail37, align 8, !tbaa !3
  %time38 = getelementptr inbounds %struct.node* %25, i64 0, i32 13
  %26 = load i32* %time38, align 4, !tbaa !4
  %conv39 = sext i32 %26 to i64
  %org_cost40 = getelementptr inbounds %struct.arc* %arcin.0193, i64 0, i32 7
  %27 = load i64* %org_cost40, align 8, !tbaa !0
  %add41 = add nsw i64 %conv39, %27
  %cmp42 = icmp sgt i64 %add41, %add33
  br i1 %cmp42, label %while.cond, label %if.end46

if.end46:                                         ; preds = %while.body
  %potential47 = getelementptr inbounds %struct.node* %25, i64 0, i32 0
  %28 = load i64* %potential47, align 8, !tbaa !0
  %sub48 = sub nsw i64 30, %28
  %29 = load i64* %potential, align 8, !tbaa !0
  %add50 = add nsw i64 %sub48, %29
  %cmp51 = icmp slt i64 %add50, 0
  br i1 %cmp51, label %if.then53, label %if.end64

if.then53:                                        ; preds = %if.end46
  %30 = load i64* %max_residual_new_m, align 8, !tbaa !0
  %cmp54 = icmp slt i64 %new_arcs.1.ph198, %30
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then53
  tail call void @insert_new_arc(%struct.arc* %14, i64 %new_arcs.1.ph198, %struct.node* %25, %struct.node* %21, i64 30, i64 %add50) #5
  %inc57 = add nsw i64 %new_arcs.1.ph198, 1
  br label %if.end64

if.else:                                          ; preds = %if.then53
  %31 = load i64* %flow, align 8, !tbaa !0
  %cmp59 = icmp sgt i64 %31, %add50
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.else
  tail call void @replace_weaker_arc(%struct.network* %net, %struct.arc* %14, %struct.node* %25, %struct.node* %21, i64 30, i64 %add50) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then56, %if.then61, %if.else, %if.end46
  %new_arcs.2 = phi i64 [ %inc57, %if.then56 ], [ %new_arcs.1.ph198, %if.then61 ], [ %new_arcs.1.ph198, %if.else ], [ %new_arcs.1.ph198, %if.end46 ]
  %arc_tmp65 = getelementptr inbounds %struct.node* %25, i64 0, i32 9
  %arcin.0191 = load %struct.arc** %arc_tmp65, align 8
  %tobool36192 = icmp eq %struct.arc* %arcin.0191, null
  br i1 %tobool36192, label %for.inc66, label %while.body.lr.ph

for.inc66:                                        ; preds = %while.cond, %if.end64, %if.end30, %if.end26
  %new_arcs.3 = phi i64 [ %new_arcs.0202, %if.end26 ], [ %new_arcs.1.ph198, %while.cond ], [ %new_arcs.0202, %if.end30 ], [ %new_arcs.2, %if.end64 ]
  %inc67 = add nsw i64 %i.1204, 1
  %add.ptr68 = getelementptr inbounds %struct.arc* %arcout.1201, i64 3
  %exitcond = icmp eq i64 %inc67, %15
  br i1 %exitcond, label %for.end69, label %for.body18

for.end69:                                        ; preds = %for.inc66
  %tobool70 = icmp eq i64 %new_arcs.3, 0
  br i1 %tobool70, label %return, label %if.then71

if.then71:                                        ; preds = %for.end69
  %32 = load %struct.arc** %stop_arcs220, align 8, !tbaa !3
  %add.ptr74 = getelementptr inbounds %struct.arc* %32, i64 %new_arcs.3
  store %struct.arc* %add.ptr74, %struct.arc** %stop_arcs220, align 8, !tbaa !3
  %tobool76 = icmp eq i64 %resized.0218, 0
  br i1 %tobool76, label %for.body90, label %for.body81

for.body81:                                       ; preds = %if.then71, %for.body81
  %arcnew.0190 = phi %struct.arc* [ %incdec.ptr, %for.body81 ], [ %32, %if.then71 ]
  %flow82 = getelementptr inbounds %struct.arc* %arcnew.0190, i64 0, i32 6
  store i64 0, i64* %flow82, align 8, !tbaa !0
  %ident83 = getelementptr inbounds %struct.arc* %arcnew.0190, i64 0, i32 3
  store i32 1, i32* %ident83, align 4, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.arc* %arcnew.0190, i64 1
  %cmp79 = icmp eq %struct.arc* %incdec.ptr, %add.ptr74
  br i1 %cmp79, label %if.end103, label %for.body81

for.body90:                                       ; preds = %if.then71, %for.body90
  %arcnew.1187 = phi %struct.arc* [ %incdec.ptr101, %for.body90 ], [ %32, %if.then71 ]
  %flow91 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 6
  store i64 0, i64* %flow91, align 8, !tbaa !0
  %ident92 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 3
  store i32 1, i32* %ident92, align 4, !tbaa !4
  %tail93 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 1
  %33 = load %struct.node** %tail93, align 8, !tbaa !3
  %firstout94 = getelementptr inbounds %struct.node* %33, i64 0, i32 7
  %34 = load %struct.arc** %firstout94, align 8, !tbaa !3
  %nextout = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 4
  store %struct.arc* %34, %struct.arc** %nextout, align 8, !tbaa !3
  store %struct.arc* %arcnew.1187, %struct.arc** %firstout94, align 8, !tbaa !3
  %head97 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 2
  %35 = load %struct.node** %head97, align 8, !tbaa !3
  %firstin = getelementptr inbounds %struct.node* %35, i64 0, i32 8
  %36 = load %struct.arc** %firstin, align 8, !tbaa !3
  %nextin = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 5
  store %struct.arc* %36, %struct.arc** %nextin, align 8, !tbaa !3
  store %struct.arc* %arcnew.1187, %struct.arc** %firstin, align 8, !tbaa !3
  %incdec.ptr101 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 1
  %cmp88 = icmp eq %struct.arc* %incdec.ptr101, %add.ptr74
  br i1 %cmp88, label %if.end103, label %for.body90

if.end103:                                        ; preds = %for.body81, %for.body90
  %m104 = getelementptr inbounds %struct.network* %net, i64 0, i32 5
  %37 = load i64* %m104, align 8, !tbaa !0
  %add105 = add nsw i64 %37, %new_arcs.3
  store i64 %add105, i64* %m104, align 8, !tbaa !0
  %m_impl = getelementptr inbounds %struct.network* %net, i64 0, i32 7
  %38 = load i64* %m_impl, align 8, !tbaa !0
  %add106 = add nsw i64 %38, %new_arcs.3
  store i64 %add106, i64* %m_impl, align 8, !tbaa !0
  %max_residual_new_m107 = getelementptr inbounds %struct.network* %net, i64 0, i32 8
  %39 = load i64* %max_residual_new_m107, align 8, !tbaa !0
  %sub108 = sub nsw i64 %39, %new_arcs.3
  store i64 %sub108, i64* %max_residual_new_m107, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %for.cond16.preheader, %if.end103, %for.end69, %if.then9
  %retval.0 = phi i64 [ -1, %if.then9 ], [ 0, %for.end69 ], [ %new_arcs.3, %if.end103 ], [ 0, %for.cond16.preheader ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare void @refresh_neighbour_lists(%struct.network*) #2

; Function Attrs: nounwind optsize uwtable
define i64 @suspend_impl(%struct.network* %net, i64 %threshold, i64 %all) #0 {
entry:
  %tobool = icmp eq i64 %all, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %m_impl = getelementptr inbounds %struct.network* %net, i64 0, i32 7
  %0 = load i64* %m_impl, align 8, !tbaa !0
  br label %if.end25

if.else:                                          ; preds = %entry
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %1 = load %struct.arc** %stop_arcs, align 8, !tbaa !3
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5
  %2 = load i64* %m, align 8, !tbaa !0
  %m_impl1 = getelementptr inbounds %struct.network* %net, i64 0, i32 7
  %3 = load i64* %m_impl1, align 8, !tbaa !0
  %sub = sub nsw i64 %2, %3
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %4 = load %struct.arc** %arcs, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.arc* %4, i64 %sub
  %cmp62 = icmp ult %struct.arc* %arrayidx, %1
  br i1 %cmp62, label %for.body, label %if.end34

for.body:                                         ; preds = %if.else, %for.inc
  %susp.065 = phi i64 [ %susp.1, %for.inc ], [ 0, %if.else ]
  %arc.064 = phi %struct.arc* [ %incdec.ptr24, %for.inc ], [ %arrayidx, %if.else ]
  %new_arc.063 = phi %struct.arc* [ %new_arc.1, %for.inc ], [ %arrayidx, %if.else ]
  %ident = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 3
  %5 = load i32* %ident, align 4, !tbaa !4
  switch i32 %5, label %if.end19 [
    i32 1, label %if.then3
    i32 0, label %if.then9
  ]

if.then3:                                         ; preds = %for.body
  %cost = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 0
  %6 = load i64* %cost, align 8, !tbaa !0
  %tail = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 1
  %7 = load %struct.node** %tail, align 8, !tbaa !3
  %potential = getelementptr inbounds %struct.node* %7, i64 0, i32 0
  %8 = load i64* %potential, align 8, !tbaa !0
  %sub4 = sub i64 %6, %8
  %head = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 2
  %9 = load %struct.node** %head, align 8, !tbaa !3
  %potential5 = getelementptr inbounds %struct.node* %9, i64 0, i32 0
  %10 = load i64* %potential5, align 8, !tbaa !0
  %add = add nsw i64 %sub4, %10
  br label %if.end19

if.then9:                                         ; preds = %for.body
  %tail10 = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 1
  %11 = load %struct.node** %tail10, align 8, !tbaa !3
  %basic_arc = getelementptr inbounds %struct.node* %11, i64 0, i32 6
  %12 = load %struct.arc** %basic_arc, align 8, !tbaa !3
  %cmp11 = icmp eq %struct.arc* %12, %arc.064
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.then9
  store %struct.arc* %new_arc.063, %struct.arc** %basic_arc, align 8, !tbaa !3
  br label %if.end19

if.else15:                                        ; preds = %if.then9
  %head16 = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 2
  %13 = load %struct.node** %head16, align 8, !tbaa !3
  %basic_arc17 = getelementptr inbounds %struct.node* %13, i64 0, i32 6
  store %struct.arc* %new_arc.063, %struct.arc** %basic_arc17, align 8, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %for.body, %if.else15, %if.then12, %if.then3
  %red_cost.0 = phi i64 [ %add, %if.then3 ], [ -2, %if.then12 ], [ -2, %if.else15 ], [ -2, %for.body ]
  %cmp20 = icmp sgt i64 %red_cost.0, %threshold
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end19
  %inc = add nsw i64 %susp.065, 1
  br label %for.inc

if.else22:                                        ; preds = %if.end19
  %14 = bitcast %struct.arc* %new_arc.063 to i8*
  %15 = bitcast %struct.arc* %arc.064 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 64, i32 8, i1 false), !tbaa.struct !5
  %incdec.ptr = getelementptr inbounds %struct.arc* %new_arc.063, i64 1
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.else22
  %new_arc.1 = phi %struct.arc* [ %new_arc.063, %if.then21 ], [ %incdec.ptr, %if.else22 ]
  %susp.1 = phi i64 [ %inc, %if.then21 ], [ %susp.065, %if.else22 ]
  %incdec.ptr24 = getelementptr inbounds %struct.arc* %arc.064, i64 1
  %cmp = icmp ult %struct.arc* %incdec.ptr24, %1
  br i1 %cmp, label %for.body, label %if.end25

if.end25:                                         ; preds = %for.inc, %if.then
  %susp.2 = phi i64 [ %0, %if.then ], [ %susp.1, %for.inc ]
  %tobool26 = icmp eq i64 %susp.2, 0
  br i1 %tobool26, label %if.end34, label %if.then27

if.then27:                                        ; preds = %if.end25
  %m28 = getelementptr inbounds %struct.network* %net, i64 0, i32 5
  %16 = load i64* %m28, align 8, !tbaa !0
  %sub29 = sub nsw i64 %16, %susp.2
  store i64 %sub29, i64* %m28, align 8, !tbaa !0
  %m_impl30 = getelementptr inbounds %struct.network* %net, i64 0, i32 7
  %17 = load i64* %m_impl30, align 8, !tbaa !0
  %sub31 = sub nsw i64 %17, %susp.2
  store i64 %sub31, i64* %m_impl30, align 8, !tbaa !0
  %stop_arcs32 = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %18 = load %struct.arc** %stop_arcs32, align 8, !tbaa !3
  %idx.neg = sub i64 0, %susp.2
  %add.ptr = getelementptr inbounds %struct.arc* %18, i64 %idx.neg
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs32, align 8, !tbaa !3
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8
  %19 = load i64* %max_residual_new_m, align 8, !tbaa !0
  %add33 = add nsw i64 %19, %susp.2
  store i64 %add33, i64* %max_residual_new_m, align 8, !tbaa !0
  tail call void @refresh_neighbour_lists(%struct.network* %net) #4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end25, %if.then27
  %susp.267 = phi i64 [ 0, %if.end25 ], [ %susp.2, %if.then27 ], [ 0, %if.else ]
  ret i64 %susp.267
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{i64 0, i64 8, metadata !0, i64 8, i64 8, metadata !3, i64 16, i64 8, metadata !3, i64 24, i64 4, metadata !4, i64 32, i64 8, metadata !3, i64 40, i64 8, metadata !3, i64 48, i64 8, metadata !0, i64 56, i64 8, metadata !0}

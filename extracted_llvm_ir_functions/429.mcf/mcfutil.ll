; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/mcfutil.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"artificial arc with nonzero flow, node %d (%ld)\0A\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"basis dual infeasible\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @refresh_neighbour_lists(%struct.network* nocapture %net) #0 {
entry:
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %0 = load %struct.node** %nodes, align 8, !tbaa !0
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22
  %1 = load %struct.node** %stop_nodes, align 8, !tbaa !0
  %cmp31 = icmp ult %struct.node* %0, %1
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %node.032 = phi %struct.node* [ %incdec.ptr, %for.body ], [ %0, %entry ]
  %firstout = getelementptr inbounds %struct.node* %node.032, i64 0, i32 7
  %incdec.ptr = getelementptr inbounds %struct.node* %node.032, i64 1
  %cmp = icmp ult %struct.node* %incdec.ptr, %1
  %2 = bitcast %struct.arc** %firstout to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %3 = load %struct.arc** %arcs, align 8, !tbaa !0
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %4 = load %struct.arc** %stop_arcs, align 8, !tbaa !0
  %cmp229 = icmp ult %struct.arc* %3, %4
  br i1 %cmp229, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.end, %for.body3
  %arc.030 = phi %struct.arc* [ %incdec.ptr11, %for.body3 ], [ %3, %for.end ]
  %tail = getelementptr inbounds %struct.arc* %arc.030, i64 0, i32 1
  %5 = load %struct.node** %tail, align 8, !tbaa !0
  %firstout4 = getelementptr inbounds %struct.node* %5, i64 0, i32 7
  %6 = load %struct.arc** %firstout4, align 8, !tbaa !0
  %nextout = getelementptr inbounds %struct.arc* %arc.030, i64 0, i32 4
  store %struct.arc* %6, %struct.arc** %nextout, align 8, !tbaa !0
  store %struct.arc* %arc.030, %struct.arc** %firstout4, align 8, !tbaa !0
  %head = getelementptr inbounds %struct.arc* %arc.030, i64 0, i32 2
  %7 = load %struct.node** %head, align 8, !tbaa !0
  %firstin7 = getelementptr inbounds %struct.node* %7, i64 0, i32 8
  %8 = load %struct.arc** %firstin7, align 8, !tbaa !0
  %nextin = getelementptr inbounds %struct.arc* %arc.030, i64 0, i32 5
  store %struct.arc* %8, %struct.arc** %nextin, align 8, !tbaa !0
  store %struct.arc* %arc.030, %struct.arc** %firstin7, align 8, !tbaa !0
  %incdec.ptr11 = getelementptr inbounds %struct.arc* %arc.030, i64 1
  %cmp2 = icmp ult %struct.arc* %incdec.ptr11, %4
  br i1 %cmp2, label %for.body3, label %for.end12

for.end12:                                        ; preds = %for.body3, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @refresh_potential(%struct.network* nocapture %net) #0 {
entry:
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %0 = load %struct.node** %nodes, align 8, !tbaa !0
  %potential = getelementptr inbounds %struct.node* %0, i64 0, i32 0
  store i64 -100000000, i64* %potential, align 8, !tbaa !3
  %child = getelementptr inbounds %struct.node* %0, i64 0, i32 2
  %1 = load %struct.node** %child, align 8, !tbaa !0
  %cmp46 = icmp eq %struct.node* %1, %0
  br i1 %cmp46, label %while.end24, label %while.cond3.preheader

while.cond.loopexit:                              ; preds = %while.cond14, %while.body17
  %tmp.0.ph = phi %struct.node* [ %13, %while.body17 ], [ %tmp.2, %while.cond14 ]
  %node.0.ph = phi %struct.node* [ %13, %while.body17 ], [ %node.2, %while.cond14 ]
  %cmp = icmp eq %struct.node* %node.0.ph, %0
  br i1 %cmp, label %while.end24, label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %entry, %while.cond.loopexit
  %checksum.049 = phi i64 [ %checksum.1.lcssa, %while.cond.loopexit ], [ 0, %entry ]
  %node.048 = phi %struct.node* [ %node.0.ph, %while.cond.loopexit ], [ %1, %entry ]
  %tmp.047 = phi %struct.node* [ %tmp.0.ph, %while.cond.loopexit ], [ %1, %entry ]
  %tobool42 = icmp eq %struct.node* %node.048, null
  br i1 %tobool42, label %while.cond14.loopexit, label %while.body4

while.body4:                                      ; preds = %while.cond3.preheader, %if.end
  %checksum.144 = phi i64 [ %checksum.2, %if.end ], [ %checksum.049, %while.cond3.preheader ]
  %node.143 = phi %struct.node* [ %11, %if.end ], [ %node.048, %while.cond3.preheader ]
  %orientation = getelementptr inbounds %struct.node* %node.143, i64 0, i32 1
  %2 = load i32* %orientation, align 4, !tbaa !4
  %cmp5 = icmp eq i32 %2, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body4
  %basic_arc = getelementptr inbounds %struct.node* %node.143, i64 0, i32 6
  %3 = load %struct.arc** %basic_arc, align 8, !tbaa !0
  %cost = getelementptr inbounds %struct.arc* %3, i64 0, i32 0
  %4 = load i64* %cost, align 8, !tbaa !3
  %pred = getelementptr inbounds %struct.node* %node.143, i64 0, i32 3
  %5 = load %struct.node** %pred, align 8, !tbaa !0
  %potential6 = getelementptr inbounds %struct.node* %5, i64 0, i32 0
  %6 = load i64* %potential6, align 8, !tbaa !3
  %add = add nsw i64 %6, %4
  %potential7 = getelementptr inbounds %struct.node* %node.143, i64 0, i32 0
  store i64 %add, i64* %potential7, align 8, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %while.body4
  %pred8 = getelementptr inbounds %struct.node* %node.143, i64 0, i32 3
  %7 = load %struct.node** %pred8, align 8, !tbaa !0
  %potential9 = getelementptr inbounds %struct.node* %7, i64 0, i32 0
  %8 = load i64* %potential9, align 8, !tbaa !3
  %basic_arc10 = getelementptr inbounds %struct.node* %node.143, i64 0, i32 6
  %9 = load %struct.arc** %basic_arc10, align 8, !tbaa !0
  %cost11 = getelementptr inbounds %struct.arc* %9, i64 0, i32 0
  %10 = load i64* %cost11, align 8, !tbaa !3
  %sub = sub nsw i64 %8, %10
  %potential12 = getelementptr inbounds %struct.node* %node.143, i64 0, i32 0
  store i64 %sub, i64* %potential12, align 8, !tbaa !3
  %inc = add nsw i64 %checksum.144, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %checksum.2 = phi i64 [ %checksum.144, %if.then ], [ %inc, %if.else ]
  %child13 = getelementptr inbounds %struct.node* %node.143, i64 0, i32 2
  %11 = load %struct.node** %child13, align 8, !tbaa !0
  %tobool = icmp eq %struct.node* %11, null
  br i1 %tobool, label %while.cond14.loopexit, label %while.body4

while.cond14.loopexit:                            ; preds = %if.end, %while.cond3.preheader
  %checksum.1.lcssa = phi i64 [ %checksum.049, %while.cond3.preheader ], [ %checksum.2, %if.end ]
  %tmp.1.lcssa = phi %struct.node* [ %tmp.047, %while.cond3.preheader ], [ %node.143, %if.end ]
  br label %while.cond14

while.cond14:                                     ; preds = %while.cond14.loopexit, %while.body17
  %tmp.2 = phi %struct.node* [ null, %while.body17 ], [ %tmp.1.lcssa, %while.cond14.loopexit ]
  %node.2 = phi %struct.node* [ %12, %while.body17 ], [ %tmp.1.lcssa, %while.cond14.loopexit ]
  %pred15 = getelementptr inbounds %struct.node* %node.2, i64 0, i32 3
  %12 = load %struct.node** %pred15, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.node* %12, null
  br i1 %tobool16, label %while.cond.loopexit, label %while.body17

while.body17:                                     ; preds = %while.cond14
  %sibling = getelementptr inbounds %struct.node* %node.2, i64 0, i32 4
  %13 = load %struct.node** %sibling, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.node* %13, null
  br i1 %tobool18, label %while.cond14, label %while.cond.loopexit

while.end24:                                      ; preds = %while.cond.loopexit, %entry
  %checksum.0.lcssa = phi i64 [ 0, %entry ], [ %checksum.1.lcssa, %while.cond.loopexit ]
  ret i64 %checksum.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define double @flow_cost(%struct.network* nocapture %net) #0 {
entry:
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %0 = load %struct.arc** %stop_arcs, align 8, !tbaa !0
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %1 = load %struct.arc** %arcs, align 8, !tbaa !0
  %cmp76 = icmp eq %struct.arc* %1, %0
  br i1 %cmp76, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %arc.077 = phi %struct.arc* [ %incdec.ptr, %for.body ], [ %1, %entry ]
  %ident = getelementptr inbounds %struct.arc* %arc.077, i64 0, i32 3
  %2 = load i32* %ident, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %2, 2
  %flow = getelementptr inbounds %struct.arc* %arc.077, i64 0, i32 6
  %. = zext i1 %cmp1 to i64
  store i64 %., i64* %flow, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds %struct.arc* %arc.077, i64 1
  %cmp = icmp eq %struct.arc* %incdec.ptr, %0
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22
  %3 = load %struct.node** %stop_nodes, align 8, !tbaa !0
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %4 = load %struct.node** %nodes, align 8, !tbaa !0
  %node.072 = getelementptr inbounds %struct.node* %4, i64 1
  %cmp573 = icmp eq %struct.node* %node.072, %3
  br i1 %cmp573, label %for.end11, label %for.body6

for.body6:                                        ; preds = %for.end, %for.body6
  %node.075 = phi %struct.node* [ %node.0, %for.body6 ], [ %node.072, %for.end ]
  %.pn74 = phi %struct.node* [ %node.075, %for.body6 ], [ %4, %for.end ]
  %flow7 = getelementptr inbounds %struct.node* %.pn74, i64 1, i32 10
  %5 = load i64* %flow7, align 8, !tbaa !3
  %basic_arc = getelementptr inbounds %struct.node* %.pn74, i64 1, i32 6
  %6 = load %struct.arc** %basic_arc, align 8, !tbaa !0
  %flow8 = getelementptr inbounds %struct.arc* %6, i64 0, i32 6
  store i64 %5, i64* %flow8, align 8, !tbaa !3
  %node.0 = getelementptr inbounds %struct.node* %node.075, i64 1
  %cmp5 = icmp eq %struct.node* %node.0, %3
  br i1 %cmp5, label %for.end11, label %for.body6

for.end11:                                        ; preds = %for.body6, %for.end
  %bigM36.pre = getelementptr inbounds %struct.network* %net, i64 0, i32 18
  br i1 %cmp76, label %for.end35, label %for.body16

for.body16:                                       ; preds = %for.end11, %for.inc33
  %operational_cost.070 = phi i64 [ %operational_cost.1, %for.inc33 ], [ 0, %for.end11 ]
  %fleet.069 = phi i64 [ %fleet.1, %for.inc33 ], [ 0, %for.end11 ]
  %arc.167 = phi %struct.arc* [ %incdec.ptr34, %for.inc33 ], [ %1, %for.end11 ]
  %flow17 = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 6
  %7 = load i64* %flow17, align 8, !tbaa !3
  %tobool = icmp eq i64 %7, 0
  br i1 %tobool, label %for.inc33, label %if.then18

if.then18:                                        ; preds = %for.body16
  %tail = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 1
  %8 = load %struct.node** %tail, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.node* %8, i64 0, i32 12
  %9 = load i32* %number, align 4, !tbaa !4
  %cmp19 = icmp slt i32 %9, 0
  br i1 %cmp19, label %land.lhs.true, label %if.then22

land.lhs.true:                                    ; preds = %if.then18
  %head = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 2
  %10 = load %struct.node** %head, align 8, !tbaa !0
  %number20 = getelementptr inbounds %struct.node* %10, i64 0, i32 12
  %11 = load i32* %number20, align 4, !tbaa !4
  %cmp21 = icmp sgt i32 %11, 0
  br i1 %cmp21, label %for.inc33, label %if.then22.thread

if.then22.thread:                                 ; preds = %land.lhs.true
  %cost2879 = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 0
  %12 = load i64* %cost2879, align 8, !tbaa !3
  br label %if.else27

if.then22:                                        ; preds = %if.then18
  %tobool25 = icmp eq i32 %9, 0
  %cost28 = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 0
  %13 = load i64* %cost28, align 8, !tbaa !3
  br i1 %tobool25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then22
  %14 = load i64* %bigM36.pre, align 8, !tbaa !3
  %sub = add i64 %13, %operational_cost.070
  %add = sub i64 %sub, %14
  %inc = add nsw i64 %fleet.069, 1
  br label %for.inc33

if.else27:                                        ; preds = %if.then22.thread, %if.then22
  %15 = phi i64 [ %12, %if.then22.thread ], [ %13, %if.then22 ]
  %add29 = add nsw i64 %15, %operational_cost.070
  br label %for.inc33

for.inc33:                                        ; preds = %for.body16, %if.then26, %if.else27, %land.lhs.true
  %fleet.1 = phi i64 [ %fleet.069, %land.lhs.true ], [ %fleet.069, %if.else27 ], [ %inc, %if.then26 ], [ %fleet.069, %for.body16 ]
  %operational_cost.1 = phi i64 [ %operational_cost.070, %land.lhs.true ], [ %add29, %if.else27 ], [ %add, %if.then26 ], [ %operational_cost.070, %for.body16 ]
  %incdec.ptr34 = getelementptr inbounds %struct.arc* %arc.167, i64 1
  %cmp15 = icmp eq %struct.arc* %incdec.ptr34, %0
  br i1 %cmp15, label %for.end35, label %for.body16

for.end35:                                        ; preds = %for.end11, %for.inc33
  %operational_cost.0.lcssa = phi i64 [ %operational_cost.1, %for.inc33 ], [ 0, %for.end11 ]
  %fleet.0.lcssa = phi i64 [ %fleet.1, %for.inc33 ], [ 0, %for.end11 ]
  %conv = sitofp i64 %fleet.0.lcssa to double
  %16 = load i64* %bigM36.pre, align 8, !tbaa !3
  %conv37 = sitofp i64 %16 to double
  %mul = fmul double %conv, %conv37
  %conv38 = sitofp i64 %operational_cost.0.lcssa to double
  %add39 = fadd double %conv38, %mul
  ret double %add39
}

; Function Attrs: nounwind optsize uwtable
define double @flow_org_cost(%struct.network* nocapture %net) #0 {
entry:
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %0 = load %struct.arc** %stop_arcs, align 8, !tbaa !0
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %1 = load %struct.arc** %arcs, align 8, !tbaa !0
  %cmp76 = icmp eq %struct.arc* %1, %0
  br i1 %cmp76, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %arc.077 = phi %struct.arc* [ %incdec.ptr, %for.body ], [ %1, %entry ]
  %ident = getelementptr inbounds %struct.arc* %arc.077, i64 0, i32 3
  %2 = load i32* %ident, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %2, 2
  %flow = getelementptr inbounds %struct.arc* %arc.077, i64 0, i32 6
  %. = zext i1 %cmp1 to i64
  store i64 %., i64* %flow, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds %struct.arc* %arc.077, i64 1
  %cmp = icmp eq %struct.arc* %incdec.ptr, %0
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22
  %3 = load %struct.node** %stop_nodes, align 8, !tbaa !0
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %4 = load %struct.node** %nodes, align 8, !tbaa !0
  %node.072 = getelementptr inbounds %struct.node* %4, i64 1
  %cmp573 = icmp eq %struct.node* %node.072, %3
  br i1 %cmp573, label %for.end11, label %for.body6

for.body6:                                        ; preds = %for.end, %for.body6
  %node.075 = phi %struct.node* [ %node.0, %for.body6 ], [ %node.072, %for.end ]
  %.pn74 = phi %struct.node* [ %node.075, %for.body6 ], [ %4, %for.end ]
  %flow7 = getelementptr inbounds %struct.node* %.pn74, i64 1, i32 10
  %5 = load i64* %flow7, align 8, !tbaa !3
  %basic_arc = getelementptr inbounds %struct.node* %.pn74, i64 1, i32 6
  %6 = load %struct.arc** %basic_arc, align 8, !tbaa !0
  %flow8 = getelementptr inbounds %struct.arc* %6, i64 0, i32 6
  store i64 %5, i64* %flow8, align 8, !tbaa !3
  %node.0 = getelementptr inbounds %struct.node* %node.075, i64 1
  %cmp5 = icmp eq %struct.node* %node.0, %3
  br i1 %cmp5, label %for.end11, label %for.body6

for.end11:                                        ; preds = %for.body6, %for.end
  %bigM36.pre = getelementptr inbounds %struct.network* %net, i64 0, i32 18
  br i1 %cmp76, label %for.end35, label %for.body16

for.body16:                                       ; preds = %for.end11, %for.inc33
  %operational_cost.070 = phi i64 [ %operational_cost.1, %for.inc33 ], [ 0, %for.end11 ]
  %fleet.069 = phi i64 [ %fleet.1, %for.inc33 ], [ 0, %for.end11 ]
  %arc.167 = phi %struct.arc* [ %incdec.ptr34, %for.inc33 ], [ %1, %for.end11 ]
  %flow17 = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 6
  %7 = load i64* %flow17, align 8, !tbaa !3
  %tobool = icmp eq i64 %7, 0
  br i1 %tobool, label %for.inc33, label %if.then18

if.then18:                                        ; preds = %for.body16
  %tail = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 1
  %8 = load %struct.node** %tail, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.node* %8, i64 0, i32 12
  %9 = load i32* %number, align 4, !tbaa !4
  %cmp19 = icmp slt i32 %9, 0
  br i1 %cmp19, label %land.lhs.true, label %if.then22

land.lhs.true:                                    ; preds = %if.then18
  %head = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 2
  %10 = load %struct.node** %head, align 8, !tbaa !0
  %number20 = getelementptr inbounds %struct.node* %10, i64 0, i32 12
  %11 = load i32* %number20, align 4, !tbaa !4
  %cmp21 = icmp sgt i32 %11, 0
  br i1 %cmp21, label %for.inc33, label %if.then22.thread

if.then22.thread:                                 ; preds = %land.lhs.true
  %org_cost2879 = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 7
  %12 = load i64* %org_cost2879, align 8, !tbaa !3
  br label %if.else27

if.then22:                                        ; preds = %if.then18
  %tobool25 = icmp eq i32 %9, 0
  %org_cost28 = getelementptr inbounds %struct.arc* %arc.167, i64 0, i32 7
  %13 = load i64* %org_cost28, align 8, !tbaa !3
  br i1 %tobool25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then22
  %14 = load i64* %bigM36.pre, align 8, !tbaa !3
  %sub = add i64 %13, %operational_cost.070
  %add = sub i64 %sub, %14
  %inc = add nsw i64 %fleet.069, 1
  br label %for.inc33

if.else27:                                        ; preds = %if.then22.thread, %if.then22
  %15 = phi i64 [ %12, %if.then22.thread ], [ %13, %if.then22 ]
  %add29 = add nsw i64 %15, %operational_cost.070
  br label %for.inc33

for.inc33:                                        ; preds = %for.body16, %if.then26, %if.else27, %land.lhs.true
  %fleet.1 = phi i64 [ %fleet.069, %land.lhs.true ], [ %fleet.069, %if.else27 ], [ %inc, %if.then26 ], [ %fleet.069, %for.body16 ]
  %operational_cost.1 = phi i64 [ %operational_cost.070, %land.lhs.true ], [ %add29, %if.else27 ], [ %add, %if.then26 ], [ %operational_cost.070, %for.body16 ]
  %incdec.ptr34 = getelementptr inbounds %struct.arc* %arc.167, i64 1
  %cmp15 = icmp eq %struct.arc* %incdec.ptr34, %0
  br i1 %cmp15, label %for.end35, label %for.body16

for.end35:                                        ; preds = %for.end11, %for.inc33
  %operational_cost.0.lcssa = phi i64 [ %operational_cost.1, %for.inc33 ], [ 0, %for.end11 ]
  %fleet.0.lcssa = phi i64 [ %fleet.1, %for.inc33 ], [ 0, %for.end11 ]
  %conv = sitofp i64 %fleet.0.lcssa to double
  %16 = load i64* %bigM36.pre, align 8, !tbaa !3
  %conv37 = sitofp i64 %16 to double
  %mul = fmul double %conv, %conv37
  %conv38 = sitofp i64 %operational_cost.0.lcssa to double
  %add39 = fadd double %conv38, %mul
  ret double %add39
}

; Function Attrs: nounwind optsize uwtable
define i64 @primal_feasible(%struct.network* nocapture %net) #0 {
entry:
  %dummy_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 25
  %0 = load %struct.arc** %dummy_arcs, align 8, !tbaa !0
  %stop_dummy1 = getelementptr inbounds %struct.network* %net, i64 0, i32 26
  %1 = load %struct.arc** %stop_dummy1, align 8, !tbaa !0
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %2 = load %struct.node** %nodes, align 8, !tbaa !0
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22
  %3 = load %struct.node** %stop_nodes, align 8, !tbaa !0
  %node.042 = getelementptr inbounds %struct.node* %2, i64 1
  %cmp43 = icmp ult %struct.node* %node.042, %3
  br i1 %cmp43, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %feas_tol = getelementptr inbounds %struct.network* %net, i64 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %node.045 = phi %struct.node* [ %node.042, %for.body.lr.ph ], [ %node.0, %for.cond.backedge ]
  %.pn44 = phi %struct.node* [ %2, %for.body.lr.ph ], [ %node.045, %for.cond.backedge ]
  %basic_arc = getelementptr inbounds %struct.node* %.pn44, i64 1, i32 6
  %4 = load %struct.arc** %basic_arc, align 8, !tbaa !0
  %flow2 = getelementptr inbounds %struct.node* %.pn44, i64 1, i32 10
  %5 = load i64* %flow2, align 8, !tbaa !3
  %cmp3 = icmp uge %struct.arc* %4, %0
  %cmp4 = icmp ult %struct.arc* %4, %1
  %or.cond = and i1 %cmp3, %cmp4
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %cmp5 = icmp sgt i64 %5, -1
  %sub = sub nsw i64 0, %5
  %cond = select i1 %cmp5, i64 %5, i64 %sub
  %6 = load i64* %feas_tol, align 8, !tbaa !3
  %cmp6 = icmp sgt i64 %cond, %6
  br i1 %cmp6, label %if.then7, label %for.cond.backedge

if.then7:                                         ; preds = %if.then
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i64 0, i64 0)) #3
  %number = getelementptr inbounds %struct.node* %.pn44, i64 1, i32 12
  %7 = load i32* %number, align 4, !tbaa !4
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i32 %7, i64 %5) #3
  br label %for.cond.backedge

if.else:                                          ; preds = %for.body
  %8 = load i64* %feas_tol, align 8, !tbaa !3
  %sub10 = sub nsw i64 0, %8
  %cmp11 = icmp slt i64 %5, %sub10
  %sub12 = add nsw i64 %5, -1
  %cmp14 = icmp sgt i64 %sub12, %8
  %or.cond41 = or i1 %cmp11, %cmp14
  br i1 %or.cond41, label %if.then15, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else, %if.then7, %if.then
  %node.0 = getelementptr inbounds %struct.node* %node.045, i64 1
  %cmp = icmp ult %struct.node* %node.0, %3
  br i1 %cmp, label %for.body, label %for.end

if.then15:                                        ; preds = %if.else
  %call16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i64 0, i64 0)) #3
  %call17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i64 0, i64 0), i64 %5) #3
  %feasible = getelementptr inbounds %struct.network* %net, i64 0, i32 13
  store i64 0, i64* %feasible, align 8, !tbaa !3
  br label %return

for.end:                                          ; preds = %for.cond.backedge, %entry
  %feasible21 = getelementptr inbounds %struct.network* %net, i64 0, i32 13
  store i64 1, i64* %feasible21, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %for.end, %if.then15
  %retval.0 = phi i64 [ 1, %if.then15 ], [ 0, %for.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i64 @dual_feasible(%struct.network* nocapture %net) #0 {
entry:
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %0 = load %struct.arc** %stop_arcs, align 8, !tbaa !0
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %1 = load %struct.arc** %arcs, align 8, !tbaa !0
  %cmp20 = icmp ult %struct.arc* %1, %0
  br i1 %cmp20, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %feas_tol = getelementptr inbounds %struct.network* %net, i64 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %arc.021 = phi %struct.arc* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %cost = getelementptr inbounds %struct.arc* %arc.021, i64 0, i32 0
  %2 = load i64* %cost, align 8, !tbaa !3
  %tail = getelementptr inbounds %struct.arc* %arc.021, i64 0, i32 1
  %3 = load %struct.node** %tail, align 8, !tbaa !0
  %potential = getelementptr inbounds %struct.node* %3, i64 0, i32 0
  %4 = load i64* %potential, align 8, !tbaa !3
  %sub = sub nsw i64 %2, %4
  %head = getelementptr inbounds %struct.arc* %arc.021, i64 0, i32 2
  %5 = load %struct.node** %head, align 8, !tbaa !0
  %potential1 = getelementptr inbounds %struct.node* %5, i64 0, i32 0
  %6 = load i64* %potential1, align 8, !tbaa !3
  %add = add nsw i64 %6, %sub
  %ident = getelementptr inbounds %struct.arc* %arc.021, i64 0, i32 3
  %7 = load i32* %ident, align 4, !tbaa !4
  switch i32 %7, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %8 = load i64* %feas_tol, align 8, !tbaa !3
  %sub2 = sub nsw i64 0, %8
  %cmp3 = icmp slt i64 %add, %sub2
  br i1 %cmp3, label %DUAL_INFEAS, label %for.inc

sw.bb4:                                           ; preds = %for.body
  %9 = load i64* %feas_tol, align 8, !tbaa !3
  %cmp6 = icmp sgt i64 %add, %9
  br i1 %cmp6, label %DUAL_INFEAS, label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb4, %for.body
  %incdec.ptr = getelementptr inbounds %struct.arc* %arc.021, i64 1
  %cmp = icmp ult %struct.arc* %incdec.ptr, %0
  br i1 %cmp, label %for.body, label %return

DUAL_INFEAS:                                      ; preds = %sw.bb4, %sw.bb
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %10)
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %12)
  br label %return

return:                                           ; preds = %entry, %for.inc, %DUAL_INFEAS
  %retval.0 = phi i64 [ 1, %DUAL_INFEAS ], [ 0, %for.inc ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @getfree(%struct.network* nocapture %net) #0 {
entry:
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %0 = load %struct.node** %nodes, align 8, !tbaa !0
  %tobool = icmp eq %struct.node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.node* %0 to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %2 = load %struct.arc** %arcs, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.arc* %2, null
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = bitcast %struct.arc* %2 to i8*
  tail call void @free(i8* %3) #3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %dummy_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 25
  %4 = load %struct.arc** %dummy_arcs, align 8, !tbaa !0
  %tobool6 = icmp eq %struct.arc* %4, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %5 = bitcast %struct.arc* %4 to i8*
  tail call void @free(i8* %5) #3
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then7
  %6 = bitcast %struct.node** %nodes to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 48, i32 8, i1 false)
  ret i64 0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}

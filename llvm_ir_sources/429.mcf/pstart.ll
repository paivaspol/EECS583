; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define i64 @primal_start_artificial(%struct.network* nocapture %net) #0 {
entry:
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %0 = load %struct.node** %nodes, align 8, !tbaa !0
  %1 = ptrtoint %struct.node* %0 to i64
  %incdec.ptr = getelementptr inbounds %struct.node* %0, i64 1
  %basic_arc = getelementptr inbounds %struct.node* %0, i64 0, i32 6
  store %struct.arc* null, %struct.arc** %basic_arc, align 8, !tbaa !0
  %pred = getelementptr inbounds %struct.node* %0, i64 0, i32 3
  store %struct.node* null, %struct.node** %pred, align 8, !tbaa !0
  %child = getelementptr inbounds %struct.node* %0, i64 0, i32 2
  store %struct.node* %incdec.ptr, %struct.node** %child, align 8, !tbaa !0
  %sibling = getelementptr inbounds %struct.node* %0, i64 0, i32 4
  %n = getelementptr inbounds %struct.network* %net, i64 0, i32 2
  %2 = bitcast %struct.node** %sibling to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  %3 = load i64* %n, align 8, !tbaa !3
  %add = add nsw i64 %3, 1
  %depth = getelementptr inbounds %struct.node* %0, i64 0, i32 11
  store i64 %add, i64* %depth, align 8, !tbaa !3
  %orientation = getelementptr inbounds %struct.node* %0, i64 0, i32 1
  store i32 0, i32* %orientation, align 4, !tbaa !4
  %potential = getelementptr inbounds %struct.node* %0, i64 0, i32 0
  store i64 -100000000, i64* %potential, align 8, !tbaa !3
  %flow = getelementptr inbounds %struct.node* %0, i64 0, i32 10
  store i64 0, i64* %flow, align 8, !tbaa !3
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %4 = load %struct.arc** %stop_arcs, align 8, !tbaa !0
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %5 = load %struct.arc** %arcs, align 8, !tbaa !0
  %cmp73 = icmp eq %struct.arc* %5, %4
  br i1 %cmp73, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %arc.074 = phi %struct.arc* [ %incdec.ptr3, %for.inc ], [ %5, %entry ]
  %ident = getelementptr inbounds %struct.arc* %arc.074, i64 0, i32 3
  %6 = load i32* %ident, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %6, -1
  br i1 %cmp1, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %ident, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr3 = getelementptr inbounds %struct.arc* %arc.074, i64 1
  %cmp = icmp eq %struct.arc* %incdec.ptr3, %4
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22
  %7 = load %struct.node** %stop_nodes, align 8, !tbaa !0
  %cmp570 = icmp eq %struct.node* %incdec.ptr, %7
  br i1 %cmp570, label %for.end21, label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.end
  %dummy_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 25
  %8 = load %struct.arc** %dummy_arcs, align 8, !tbaa !0
  %scevgep = getelementptr %struct.node* %7, i64 -2, i32 0
  %scevgep75 = bitcast i64* %scevgep to i8*
  %9 = sub i64 0, %1
  %uglygep = getelementptr i8* %scevgep75, i64 %9
  %uglygep76 = ptrtoint i8* %uglygep to i64
  %10 = udiv i64 %uglygep76, 104
  %11 = add i64 %10, 2
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %arc.172 = phi %struct.arc* [ %8, %for.body6.lr.ph ], [ %incdec.ptr19, %for.body6 ]
  %node.071 = phi %struct.node* [ %incdec.ptr, %for.body6.lr.ph ], [ %add.ptr, %for.body6 ]
  %basic_arc7 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 6
  store %struct.arc* %arc.172, %struct.arc** %basic_arc7, align 8, !tbaa !0
  %pred8 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 3
  store %struct.node* %0, %struct.node** %pred8, align 8, !tbaa !0
  %child9 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 2
  store %struct.node* null, %struct.node** %child9, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.node* %node.071, i64 1
  %sibling10 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 4
  store %struct.node* %add.ptr, %struct.node** %sibling10, align 8, !tbaa !0
  %add.ptr11 = getelementptr inbounds %struct.node* %node.071, i64 -1
  %sibling_prev12 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 5
  store %struct.node* %add.ptr11, %struct.node** %sibling_prev12, align 8, !tbaa !0
  %depth13 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 11
  store i64 1, i64* %depth13, align 8, !tbaa !3
  %cost = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 0
  store i64 100000000, i64* %cost, align 8, !tbaa !3
  %ident14 = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 3
  store i32 0, i32* %ident14, align 4, !tbaa !4
  %orientation15 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 1
  store i32 1, i32* %orientation15, align 4, !tbaa !4
  %potential16 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 0
  store i64 0, i64* %potential16, align 8, !tbaa !3
  %tail = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 1
  store %struct.node* %node.071, %struct.node** %tail, align 8, !tbaa !0
  %head = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 2
  store %struct.node* %0, %struct.node** %head, align 8, !tbaa !0
  %flow17 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 10
  store i64 0, i64* %flow17, align 8, !tbaa !3
  %incdec.ptr19 = getelementptr inbounds %struct.arc* %arc.172, i64 1
  %cmp5 = icmp eq %struct.node* %add.ptr, %7
  br i1 %cmp5, label %for.cond4.for.end21_crit_edge, label %for.body6

for.cond4.for.end21_crit_edge:                    ; preds = %for.body6
  %scevgep77 = getelementptr %struct.node* %0, i64 %11
  br label %for.end21

for.end21:                                        ; preds = %for.cond4.for.end21_crit_edge, %for.end
  %node.0.lcssa = phi %struct.node* [ %scevgep77, %for.cond4.for.end21_crit_edge ], [ %incdec.ptr, %for.end ]
  %sibling24 = getelementptr inbounds %struct.node* %node.0.lcssa, i64 -1, i32 4
  store %struct.node* null, %struct.node** %sibling24, align 8, !tbaa !0
  %sibling_prev25 = getelementptr inbounds %struct.node* %0, i64 1, i32 5
  store %struct.node* null, %struct.node** %sibling_prev25, align 8, !tbaa !0
  ret i64 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}

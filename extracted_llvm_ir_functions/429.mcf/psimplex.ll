; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define i64 @primal_net_simplex(%struct.network* %net) #0 {
while.body.lr.ph:
  %delta = alloca i64, align 8
  %xchange = alloca i64, align 8
  %w = alloca %struct.node*, align 8
  %red_cost_of_bea = alloca i64, align 8
  %arcs1 = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  %0 = load %struct.arc** %arcs1, align 8, !tbaa !0
  %stop_arcs2 = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %1 = load %struct.arc** %stop_arcs2, align 8, !tbaa !0
  %m3 = getelementptr inbounds %struct.network* %net, i64 0, i32 5
  %2 = load i64* %m3, align 8, !tbaa !3
  %iterations4 = getelementptr inbounds %struct.network* %net, i64 0, i32 27
  %bound_exchanges5 = getelementptr inbounds %struct.network* %net, i64 0, i32 28
  %checksum6 = getelementptr inbounds %struct.network* %net, i64 0, i32 29
  %feas_tol = getelementptr inbounds %struct.network* %net, i64 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.else24, %if.then13, %if.then52, %if.then22, %while.body.lr.ph
  %call = call %struct.arc* @primal_bea_mpp(i64 %2, %struct.arc* %0, %struct.arc* %1, i64* %red_cost_of_bea) #2
  %tobool7 = icmp eq %struct.arc* %call, null
  br i1 %tobool7, label %while.end, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load i64* %iterations4, align 8, !tbaa !3
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %iterations4, align 8, !tbaa !3
  %4 = load i64* %red_cost_of_bea, align 8, !tbaa !3
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %head = getelementptr inbounds %struct.arc* %call, i64 0, i32 2
  %tail = getelementptr inbounds %struct.arc* %call, i64 0, i32 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %tail9 = getelementptr inbounds %struct.arc* %call, i64 0, i32 1
  %head10 = getelementptr inbounds %struct.arc* %call, i64 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %jplus.0.in = phi %struct.node** [ %tail, %if.then8 ], [ %head10, %if.else ]
  %iplus.0.in = phi %struct.node** [ %head, %if.then8 ], [ %tail9, %if.else ]
  %iplus.0 = load %struct.node** %iplus.0.in, align 8
  %jplus.0 = load %struct.node** %jplus.0.in, align 8
  store i64 1, i64* %delta, align 8, !tbaa !3
  %call11 = call %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node** %w) #2
  %tobool12 = icmp eq %struct.node* %call11, null
  br i1 %tobool12, label %if.then13, label %if.else24

if.then13:                                        ; preds = %if.end
  %5 = load i64* %bound_exchanges5, align 8, !tbaa !3
  %inc14 = add nsw i64 %5, 1
  store i64 %inc14, i64* %bound_exchanges5, align 8, !tbaa !3
  %ident = getelementptr inbounds %struct.arc* %call, i64 0, i32 3
  %6 = load i32* %ident, align 4, !tbaa !4
  %cmp15 = icmp eq i32 %6, 2
  %. = select i1 %cmp15, i32 1, i32 2
  store i32 %., i32* %ident, align 4, !tbaa !4
  %7 = load i64* %delta, align 8, !tbaa !3
  %tobool21 = icmp eq i64 %7, 0
  br i1 %tobool21, label %while.body, label %if.then22

if.then22:                                        ; preds = %if.then13
  %8 = load %struct.node** %w, align 8, !tbaa !0
  call void @primal_update_flow(%struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node* %8) #2
  br label %while.body

if.else24:                                        ; preds = %if.end
  %9 = load i64* %xchange, align 8, !tbaa !3
  %tobool25 = icmp eq i64 %9, 0
  %jplus.0.iplus.0 = select i1 %tobool25, %struct.node* %jplus.0, %struct.node* %iplus.0
  %iplus.0.jplus.0 = select i1 %tobool25, %struct.node* %iplus.0, %struct.node* %jplus.0
  %pred = getelementptr inbounds %struct.node* %call11, i64 0, i32 3
  %10 = load %struct.node** %pred, align 8, !tbaa !0
  %basic_arc = getelementptr inbounds %struct.node* %call11, i64 0, i32 6
  %11 = load %struct.arc** %basic_arc, align 8, !tbaa !0
  %orientation = getelementptr inbounds %struct.node* %call11, i64 0, i32 1
  %12 = load i32* %orientation, align 4, !tbaa !4
  %conv = sext i32 %12 to i64
  %cmp28 = icmp eq i64 %9, %conv
  %new_set.0 = select i1 %cmp28, i32 2, i32 1
  %13 = load i64* %red_cost_of_bea, align 8, !tbaa !3
  %cmp33 = icmp sgt i64 %13, 0
  %14 = load i64* %delta, align 8, !tbaa !3
  %sub = sub nsw i64 1, %14
  %new_flow.0 = select i1 %cmp33, i64 %sub, i64 %14
  %tail38 = getelementptr inbounds %struct.arc* %call, i64 0, i32 1
  %15 = load %struct.node** %tail38, align 8, !tbaa !0
  %cmp39 = icmp eq %struct.node* %15, %iplus.0.jplus.0
  %.92 = zext i1 %cmp39 to i64
  %conv46 = zext i1 %tobool25 to i64
  %16 = load %struct.node** %w, align 8, !tbaa !0
  %17 = load i64* %feas_tol, align 8, !tbaa !3
  call void @update_tree(i64 %conv46, i64 %.92, i64 %14, i64 %new_flow.0, %struct.node* %iplus.0.jplus.0, %struct.node* %jplus.0.iplus.0, %struct.node* %call11, %struct.node* %10, %struct.node* %16, %struct.arc* %call, i64 %13, i64 %17) #2
  %ident47 = getelementptr inbounds %struct.arc* %call, i64 0, i32 3
  store i32 0, i32* %ident47, align 4, !tbaa !4
  %ident49 = getelementptr inbounds %struct.arc* %11, i64 0, i32 3
  store i32 %new_set.0, i32* %ident49, align 4, !tbaa !4
  %18 = load i64* %iterations4, align 8, !tbaa !3
  %sub50 = add nsw i64 %18, -1
  %rem = srem i64 %sub50, 200
  %tobool51 = icmp eq i64 %rem, 0
  br i1 %tobool51, label %if.then52, label %while.body

if.then52:                                        ; preds = %if.else24
  %call53 = call i64 @refresh_potential(%struct.network* %net) #2
  %19 = load i64* %checksum6, align 8, !tbaa !3
  %add = add nsw i64 %19, %call53
  store i64 %add, i64* %checksum6, align 8, !tbaa !3
  br label %while.body

while.end:                                        ; preds = %while.body
  %call58 = call i64 @refresh_potential(%struct.network* %net) #2
  %20 = load i64* %checksum6, align 8, !tbaa !3
  %add59 = add nsw i64 %20, %call58
  store i64 %add59, i64* %checksum6, align 8, !tbaa !3
  %call60 = call i64 @primal_feasible(%struct.network* %net) #2
  %call61 = call i64 @dual_feasible(%struct.network* %net) #2
  ret i64 0
}

; Function Attrs: optsize
declare %struct.arc* @primal_bea_mpp(i64, %struct.arc*, %struct.arc*, i64*) #1

; Function Attrs: optsize
declare %struct.node* @primal_iminus(i64*, i64*, %struct.node*, %struct.node*, %struct.node**) #1

; Function Attrs: optsize
declare void @primal_update_flow(%struct.node*, %struct.node*, %struct.node*) #1

; Function Attrs: optsize
declare void @update_tree(i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64) #1

; Function Attrs: optsize
declare i64 @refresh_potential(%struct.network*) #1

; Function Attrs: optsize
declare i64 @primal_feasible(%struct.network*) #1

; Function Attrs: optsize
declare i64 @dual_feasible(%struct.network*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}

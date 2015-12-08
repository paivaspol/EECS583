; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) #0 {
entry:
  %tail = getelementptr inbounds %struct.arc* %bea, i64 0, i32 1
  %0 = load %struct.node** %tail, align 8, !tbaa !0
  %cmp = icmp eq %struct.node* %0, %jplus
  %cmp1 = icmp slt i64 %sigma, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq %struct.node* %0, %iplus
  %cmp5 = icmp sgt i64 %sigma, 0
  %or.cond211 = and i1 %cmp3, %cmp5
  br i1 %or.cond211, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cmp6 = icmp sgt i64 %sigma, -1
  %sub = sub nsw i64 0, %sigma
  %cond = select i1 %cmp6, i64 %sigma, i64 %sub
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %cmp7 = icmp sgt i64 %sigma, -1
  %sub10 = sub nsw i64 0, %sigma
  %cond12 = select i1 %cmp7, i64 %sigma, i64 %sub10
  %sub13 = sub nsw i64 0, %cond12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sigma.addr.0 = phi i64 [ %cond, %if.then ], [ %sub13, %if.else ]
  %potential = getelementptr inbounds %struct.node* %iminus, i64 0, i32 0
  %1 = load i64* %potential, align 8, !tbaa !3
  %add = add nsw i64 %1, %sigma.addr.0
  store i64 %add, i64* %potential, align 8, !tbaa !3
  br label %RECURSION

RECURSION:                                        ; preds = %ITERATION, %if.end
  %father.0 = phi %struct.node* [ %iminus, %if.end ], [ %temp.0, %ITERATION ]
  %child = getelementptr inbounds %struct.node* %father.0, i64 0, i32 2
  %2 = load %struct.node** %child, align 8, !tbaa !0
  %tobool = icmp eq %struct.node* %2, null
  br i1 %tobool, label %TEST.preheader, label %ITERATION

TEST.preheader:                                   ; preds = %RECURSION
  %cmp18232 = icmp eq %struct.node* %father.0, %iminus
  br i1 %cmp18232, label %CONTINUE, label %if.end20

ITERATION:                                        ; preds = %if.end20, %RECURSION
  %temp.0 = phi %struct.node* [ %2, %RECURSION ], [ %4, %if.end20 ]
  %potential15 = getelementptr inbounds %struct.node* %temp.0, i64 0, i32 0
  %3 = load i64* %potential15, align 8, !tbaa !3
  %add16 = add nsw i64 %3, %sigma.addr.0
  store i64 %add16, i64* %potential15, align 8, !tbaa !3
  br label %RECURSION

if.end20:                                         ; preds = %TEST.preheader, %if.end23
  %father.1233 = phi %struct.node* [ %5, %if.end23 ], [ %father.0, %TEST.preheader ]
  %sibling = getelementptr inbounds %struct.node* %father.1233, i64 0, i32 4
  %4 = load %struct.node** %sibling, align 8, !tbaa !0
  %tobool21 = icmp eq %struct.node* %4, null
  br i1 %tobool21, label %if.end23, label %ITERATION

if.end23:                                         ; preds = %if.end20
  %pred = getelementptr inbounds %struct.node* %father.1233, i64 0, i32 3
  %5 = load %struct.node** %pred, align 8, !tbaa !0
  %cmp18 = icmp eq %struct.node* %5, %iminus
  br i1 %cmp18, label %CONTINUE, label %if.end20

CONTINUE:                                         ; preds = %TEST.preheader, %if.end23
  %depth = getelementptr inbounds %struct.node* %iminus, i64 0, i32 11
  %6 = load i64* %depth, align 8, !tbaa !3
  %cmp25223 = icmp eq %struct.node* %iplus, %jminus
  br i1 %cmp25223, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %CONTINUE
  %7 = sub i64 0, %delta
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end50
  %iplus.pn = phi %struct.node* [ %iplus, %while.body.lr.ph ], [ %father.2231, %if.end50 ]
  %new_depth.0229 = phi i64 [ %6, %while.body.lr.ph ], [ %sub68, %if.end50 ]
  %new_orientation.addr.0228 = phi i64 [ %new_orientation, %while.body.lr.ph ], [ %conv, %if.end50 ]
  %new_flow.addr.0227 = phi i64 [ %new_flow, %while.body.lr.ph ], [ %flow_temp.0, %if.end50 ]
  %new_pred.0226 = phi %struct.node* [ %jplus, %while.body.lr.ph ], [ %iplus.pn225, %if.end50 ]
  %iplus.pn225 = phi %struct.node* [ %iplus, %while.body.lr.ph ], [ %father.2231, %if.end50 ]
  %new_basic_arc.0224 = phi %struct.arc* [ %bea, %while.body.lr.ph ], [ %15, %if.end50 ]
  %father.2231.in = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 3
  %father.2231 = load %struct.node** %father.2231.in, align 8
  %sibling26 = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 4
  %8 = load %struct.node** %sibling26, align 8, !tbaa !0
  %tobool27 = icmp eq %struct.node* %8, null
  %sibling_prev32.pre = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 5
  br i1 %tobool27, label %if.end31, label %if.then28

if.then28:                                        ; preds = %while.body
  %9 = load %struct.node** %sibling_prev32.pre, align 8, !tbaa !0
  %sibling_prev30 = getelementptr inbounds %struct.node* %8, i64 0, i32 5
  store %struct.node* %9, %struct.node** %sibling_prev30, align 8, !tbaa !0
  %.pre = load %struct.node** %sibling26, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %while.body, %if.then28
  %10 = phi %struct.node* [ %.pre, %if.then28 ], [ null, %while.body ]
  %11 = load %struct.node** %sibling_prev32.pre, align 8, !tbaa !0
  %tobool33 = icmp eq %struct.node* %11, null
  br i1 %tobool33, label %if.else38, label %if.then34

if.then34:                                        ; preds = %if.end31
  %sibling37 = getelementptr inbounds %struct.node* %11, i64 0, i32 4
  store %struct.node* %10, %struct.node** %sibling37, align 8, !tbaa !0
  br label %if.end41

if.else38:                                        ; preds = %if.end31
  %child40 = getelementptr inbounds %struct.node* %father.2231, i64 0, i32 2
  store %struct.node* %10, %struct.node** %child40, align 8, !tbaa !0
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then34
  store %struct.node* %new_pred.0226, %struct.node** %father.2231.in, align 8, !tbaa !0
  %child43 = getelementptr inbounds %struct.node* %new_pred.0226, i64 0, i32 2
  %12 = load %struct.node** %child43, align 8, !tbaa !0
  store %struct.node* %12, %struct.node** %sibling26, align 8, !tbaa !0
  %tobool46 = icmp eq %struct.node* %12, null
  br i1 %tobool46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end41
  %sibling_prev49 = getelementptr inbounds %struct.node* %12, i64 0, i32 5
  store %struct.node* %iplus.pn225, %struct.node** %sibling_prev49, align 8, !tbaa !0
  br label %if.end50

if.end50:                                         ; preds = %if.end41, %if.then47
  store %struct.node* %iplus.pn225, %struct.node** %child43, align 8, !tbaa !0
  store %struct.node* null, %struct.node** %sibling_prev32.pre, align 8, !tbaa !0
  %orientation = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 1
  %13 = load i32* %orientation, align 4, !tbaa !4
  %lnot = icmp eq i32 %13, 0
  %conv = zext i1 %lnot to i64
  %cmp54 = icmp eq i64 %conv, %cycle_ori
  %flow = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 10
  %14 = load i64* %flow, align 8, !tbaa !3
  %flow_temp.0.p = select i1 %cmp54, i64 %delta, i64 %7
  %flow_temp.0 = add i64 %flow_temp.0.p, %14
  %basic_arc = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 6
  %15 = load %struct.arc** %basic_arc, align 8, !tbaa !0
  %depth62 = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 11
  %16 = load i64* %depth62, align 8, !tbaa !3
  %conv63 = trunc i64 %new_orientation.addr.0228 to i32
  store i32 %conv63, i32* %orientation, align 4, !tbaa !4
  store i64 %new_flow.addr.0227, i64* %flow, align 8, !tbaa !3
  store %struct.arc* %new_basic_arc.0224, %struct.arc** %basic_arc, align 8, !tbaa !0
  store i64 %new_depth.0229, i64* %depth62, align 8, !tbaa !3
  %sub68 = sub nsw i64 %6, %16
  %cmp25 = icmp eq %struct.node* %father.2231, %jminus
  br i1 %cmp25, label %while.end, label %while.body

while.end:                                        ; preds = %if.end50, %CONTINUE
  %cmp70 = icmp sgt i64 %delta, %feas_tol
  %cmp73214 = icmp eq %struct.node* %jminus, %w
  br i1 %cmp70, label %for.cond.preheader, label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %while.end
  br i1 %cmp73214, label %for.cond119.preheader, label %for.body113

for.cond.preheader:                               ; preds = %while.end
  br i1 %cmp73214, label %for.cond89.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %17 = sub i64 0, %delta
  br label %for.body

for.cond89.preheader:                             ; preds = %for.body, %for.cond.preheader
  %cmp90212 = icmp eq %struct.node* %jplus, %w
  br i1 %cmp90212, label %if.end128, label %for.body92.lr.ph

for.body92.lr.ph:                                 ; preds = %for.cond89.preheader
  %18 = sub i64 0, %delta
  br label %for.body92

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %temp.2215 = phi %struct.node* [ %jminus, %for.body.lr.ph ], [ %22, %for.body ]
  %depth75 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 11
  %19 = load i64* %depth75, align 8, !tbaa !3
  %sub76 = sub nsw i64 %19, %6
  store i64 %sub76, i64* %depth75, align 8, !tbaa !3
  %orientation77 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 1
  %20 = load i32* %orientation77, align 4, !tbaa !4
  %conv78 = sext i32 %20 to i64
  %cmp79 = icmp eq i64 %conv78, %cycle_ori
  %flow82 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 10
  %21 = load i64* %flow82, align 8, !tbaa !3
  %storemerge210.p = select i1 %cmp79, i64 %17, i64 %delta
  %storemerge210 = add i64 %storemerge210.p, %21
  store i64 %storemerge210, i64* %flow82, align 8, !tbaa !3
  %pred88 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 3
  %22 = load %struct.node** %pred88, align 8, !tbaa !0
  %cmp73 = icmp eq %struct.node* %22, %w
  br i1 %cmp73, label %for.cond89.preheader, label %for.body

for.body92:                                       ; preds = %for.body92.lr.ph, %for.body92
  %temp.3213 = phi %struct.node* [ %jplus, %for.body92.lr.ph ], [ %26, %for.body92 ]
  %depth93 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 11
  %23 = load i64* %depth93, align 8, !tbaa !3
  %add94 = add nsw i64 %23, %6
  store i64 %add94, i64* %depth93, align 8, !tbaa !3
  %orientation95 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 1
  %24 = load i32* %orientation95, align 4, !tbaa !4
  %conv96 = sext i32 %24 to i64
  %cmp97 = icmp eq i64 %conv96, %cycle_ori
  %flow100 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 10
  %25 = load i64* %flow100, align 8, !tbaa !3
  %storemerge.p = select i1 %cmp97, i64 %delta, i64 %18
  %storemerge = add i64 %storemerge.p, %25
  store i64 %storemerge, i64* %flow100, align 8, !tbaa !3
  %pred107 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 3
  %26 = load %struct.node** %pred107, align 8, !tbaa !0
  %cmp90 = icmp eq %struct.node* %26, %w
  br i1 %cmp90, label %if.end128, label %for.body92

for.cond119.preheader:                            ; preds = %for.body113, %for.cond110.preheader
  %cmp120217 = icmp eq %struct.node* %jplus, %w
  br i1 %cmp120217, label %if.end128, label %for.body122

for.body113:                                      ; preds = %for.cond110.preheader, %for.body113
  %temp.4220 = phi %struct.node* [ %28, %for.body113 ], [ %jminus, %for.cond110.preheader ]
  %depth114 = getelementptr inbounds %struct.node* %temp.4220, i64 0, i32 11
  %27 = load i64* %depth114, align 8, !tbaa !3
  %sub115 = sub nsw i64 %27, %6
  store i64 %sub115, i64* %depth114, align 8, !tbaa !3
  %pred117 = getelementptr inbounds %struct.node* %temp.4220, i64 0, i32 3
  %28 = load %struct.node** %pred117, align 8, !tbaa !0
  %cmp111 = icmp eq %struct.node* %28, %w
  br i1 %cmp111, label %for.cond119.preheader, label %for.body113

for.body122:                                      ; preds = %for.cond119.preheader, %for.body122
  %temp.5218 = phi %struct.node* [ %30, %for.body122 ], [ %jplus, %for.cond119.preheader ]
  %depth123 = getelementptr inbounds %struct.node* %temp.5218, i64 0, i32 11
  %29 = load i64* %depth123, align 8, !tbaa !3
  %add124 = add nsw i64 %29, %6
  store i64 %add124, i64* %depth123, align 8, !tbaa !3
  %pred126 = getelementptr inbounds %struct.node* %temp.5218, i64 0, i32 3
  %30 = load %struct.node** %pred126, align 8, !tbaa !0
  %cmp120 = icmp eq %struct.node* %30, %w
  br i1 %cmp120, label %if.end128, label %for.body122

if.end128:                                        ; preds = %for.cond119.preheader, %for.body122, %for.cond89.preheader, %for.body92
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define %struct.node* @primal_iminus(i64* nocapture %delta, i64* nocapture %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** nocapture %w) #0 {
entry:
  %cmp7682 = icmp eq %struct.node* %iplus, %jplus
  br i1 %cmp7682, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry, %if.end41
  %iminus.0.ph85 = phi %struct.node* [ %iminus.2, %if.end41 ], [ null, %entry ]
  %iplus.addr.0.ph84 = phi %struct.node* [ %iplus.addr.077, %if.end41 ], [ %iplus, %entry ]
  %jplus.addr.0.ph83 = phi %struct.node* [ %17, %if.end41 ], [ %jplus, %entry ]
  %depth1 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end17, %while.body.lr.ph
  %iminus.078 = phi %struct.node* [ %iminus.0.ph85, %while.body.lr.ph ], [ %iminus.1, %if.end17 ]
  %iplus.addr.077 = phi %struct.node* [ %iplus.addr.0.ph84, %while.body.lr.ph ], [ %9, %if.end17 ]
  %depth = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 11
  %0 = load i64* %depth, align 8, !tbaa !0
  %1 = load i64* %depth1, align 8, !tbaa !0
  %cmp2 = icmp slt i64 %0, %1
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %orientation = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 1
  %2 = load i32* %orientation, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %3 = load i64* %delta, align 8, !tbaa !0
  %flow = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 10
  %4 = load i64* %flow, align 8, !tbaa !0
  %cmp4 = icmp sgt i64 %3, %4
  br i1 %cmp4, label %if.then5, label %if.end17

if.then5:                                         ; preds = %if.then3
  store i64 %4, i64* %delta, align 8, !tbaa !0
  store i64 0, i64* %xchange, align 8, !tbaa !0
  br label %if.end17

if.else:                                          ; preds = %if.then
  %pred = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 3
  %5 = load %struct.node** %pred, align 8, !tbaa !4
  %pred7 = getelementptr inbounds %struct.node* %5, i64 0, i32 3
  %6 = load %struct.node** %pred7, align 8, !tbaa !4
  %tobool8 = icmp eq %struct.node* %6, null
  br i1 %tobool8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.else
  %7 = load i64* %delta, align 8, !tbaa !0
  %flow10 = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 10
  %8 = load i64* %flow10, align 8, !tbaa !0
  %sub = sub nsw i64 1, %8
  %cmp11 = icmp sgt i64 %7, %sub
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.then9
  store i64 %sub, i64* %delta, align 8, !tbaa !0
  store i64 0, i64* %xchange, align 8, !tbaa !0
  br label %if.end17

if.end17:                                         ; preds = %if.then3, %if.else, %if.then12, %if.then9, %if.then5
  %iminus.1 = phi %struct.node* [ %iplus.addr.077, %if.then5 ], [ %iplus.addr.077, %if.then12 ], [ %iminus.078, %if.then9 ], [ %iminus.078, %if.else ], [ %iminus.078, %if.then3 ]
  %pred18 = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 3
  %9 = load %struct.node** %pred18, align 8, !tbaa !4
  %cmp = icmp eq %struct.node* %9, %jplus.addr.0.ph83
  br i1 %cmp, label %while.end, label %while.body

if.else19:                                        ; preds = %while.body
  %orientation20 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 1
  %10 = load i32* %orientation20, align 4, !tbaa !3
  %tobool21 = icmp eq i32 %10, 0
  br i1 %tobool21, label %if.then22, label %if.else28

if.then22:                                        ; preds = %if.else19
  %11 = load i64* %delta, align 8, !tbaa !0
  %flow23 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 10
  %12 = load i64* %flow23, align 8, !tbaa !0
  %cmp24 = icmp slt i64 %11, %12
  br i1 %cmp24, label %if.end41, label %if.then25

if.then25:                                        ; preds = %if.then22
  store i64 %12, i64* %delta, align 8, !tbaa !0
  store i64 1, i64* %xchange, align 8, !tbaa !0
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %pred29 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 3
  %13 = load %struct.node** %pred29, align 8, !tbaa !4
  %pred30 = getelementptr inbounds %struct.node* %13, i64 0, i32 3
  %14 = load %struct.node** %pred30, align 8, !tbaa !4
  %tobool31 = icmp eq %struct.node* %14, null
  br i1 %tobool31, label %if.end41, label %if.then32

if.then32:                                        ; preds = %if.else28
  %15 = load i64* %delta, align 8, !tbaa !0
  %flow33 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 10
  %16 = load i64* %flow33, align 8, !tbaa !0
  %sub34 = sub nsw i64 1, %16
  %cmp35 = icmp slt i64 %15, %sub34
  br i1 %cmp35, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.then32
  store i64 %sub34, i64* %delta, align 8, !tbaa !0
  store i64 1, i64* %xchange, align 8, !tbaa !0
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.else28, %if.then22, %if.then36, %if.then25
  %iminus.2 = phi %struct.node* [ %jplus.addr.0.ph83, %if.then36 ], [ %jplus.addr.0.ph83, %if.then25 ], [ %iminus.078, %if.then22 ], [ %iminus.078, %if.else28 ], [ %iminus.078, %if.then32 ]
  %pred42 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 3
  %17 = load %struct.node** %pred42, align 8, !tbaa !4
  %cmp76 = icmp eq %struct.node* %iplus.addr.077, %17
  br i1 %cmp76, label %while.end, label %while.body.lr.ph

while.end:                                        ; preds = %entry, %if.end41, %if.end17
  %iminus.0.lcssa = phi %struct.node* [ %iminus.1, %if.end17 ], [ null, %entry ], [ %iminus.2, %if.end41 ]
  %iplus.addr.0.lcssa = phi %struct.node* [ %jplus.addr.0.ph83, %if.end17 ], [ %iplus, %entry ], [ %iplus.addr.077, %if.end41 ]
  store %struct.node* %iplus.addr.0.lcssa, %struct.node** %w, align 8, !tbaa !4
  ret %struct.node* %iminus.0.lcssa
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}

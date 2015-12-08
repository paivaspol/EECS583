; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/layout_hyper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"LAYOUT = Hypercubes, options = \00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"EVENFIRST,\00", align 1
@nx = external global i32
@squaresize = common global [4 x i32] zeroinitializer, align 16
@ny = external global i32
@nz = external global i32
@nt = external global i32
@nsquares = common global [4 x i32] zeroinitializer, align 16
@sites_on_node = external global i32
@odd_sites_on_node = external global i32
@even_sites_on_node = external global i32
@str = private unnamed_addr constant [34 x i8] c"SORRY, CAN'T LAY OUT THIS LATTICE\00"
@str5 = private unnamed_addr constant [60 x i8] c"LAYOUT: Can't lay out this lattice, not enough factors of 2\00"

; Function Attrs: nounwind optsize uwtable
define void @setup_layout() #0 {
entry:
  %call = tail call i32 (...)* @mynode() #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #5
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0)) #5
  %putchar = tail call i32 @putchar(i32 10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32* @nx, align 4, !tbaa !0
  store i32 %0, i32* getelementptr inbounds ([4 x i32]* @squaresize, i64 0, i64 0), align 16, !tbaa !0
  %1 = load i32* @ny, align 4, !tbaa !0
  store i32 %1, i32* getelementptr inbounds ([4 x i32]* @squaresize, i64 0, i64 1), align 4, !tbaa !0
  %2 = load i32* @nz, align 4, !tbaa !0
  store i32 %2, i32* getelementptr inbounds ([4 x i32]* @squaresize, i64 0, i64 2), align 8, !tbaa !0
  %3 = load i32* @nt, align 4, !tbaa !0
  store i32 %3, i32* getelementptr inbounds ([4 x i32]* @squaresize, i64 0, i64 3), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @nsquares, i64 0, i64 3), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @nsquares, i64 0, i64 2), align 8, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @nsquares, i64 0, i64 1), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @nsquares, i64 0, i64 0), align 16, !tbaa !0
  %call4104 = tail call i32 (...)* @numnodes() #5
  %cmp5105 = icmp sgt i32 %call4104, 1
  br i1 %cmp5105, label %for.cond.preheader, label %while.end

for.cond.preheader:                               ; preds = %if.end, %if.end51
  %i.0106 = phi i32 [ %mul, %if.end51 ], [ 1, %if.end ]
  br label %for.body

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %j.097 = phi i32 [ 1, %for.cond.preheader ], [ %j.1, %for.body ]
  %arrayidx = getelementptr inbounds [4 x i32]* @squaresize, i64 0, i64 %indvars.iv
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp sgt i32 %4, %j.097
  %rem90 = and i32 %4, 1
  %cmp10 = icmp eq i32 %rem90, 0
  %or.cond = and i1 %cmp7, %cmp10
  %j.1 = select i1 %or.cond, i32 %4, i32 %j.097
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.body17, label %for.body

for.body17:                                       ; preds = %for.body, %for.inc27
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.inc27 ], [ 0, %for.body ]
  %dir.1100 = phi i32 [ %inc28, %for.inc27 ], [ 0, %for.body ]
  %arrayidx19 = getelementptr inbounds [4 x i32]* @squaresize, i64 0, i64 %indvars.iv108
  %5 = load i32* %arrayidx19, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %5, %j.1
  br i1 %cmp20, label %land.lhs.true21, label %for.inc27

land.lhs.true21:                                  ; preds = %for.body17
  %arrayidx23 = getelementptr inbounds [4 x i32]* @nsquares, i64 0, i64 %indvars.iv108
  %6 = load i32* %arrayidx23, align 4, !tbaa !0
  %cmp24 = icmp sgt i32 %6, 1
  br i1 %cmp24, label %for.end29, label %for.inc27

for.inc27:                                        ; preds = %for.body17, %land.lhs.true21
  %indvars.iv.next109 = add i64 %indvars.iv108, 1
  %inc28 = add nsw i32 %dir.1100, 1
  %7 = trunc i64 %indvars.iv.next109 to i32
  %cmp16 = icmp slt i32 %7, 4
  br i1 %cmp16, label %for.body17, label %for.body34

for.end29:                                        ; preds = %land.lhs.true21
  %cmp30 = icmp sgt i32 %dir.1100, 3
  br i1 %cmp30, label %for.body34, label %if.end51

for.cond32:                                       ; preds = %for.body34
  %8 = trunc i64 %indvars.iv.next113 to i32
  %cmp33 = icmp slt i32 %8, 4
  br i1 %cmp33, label %for.body34, label %if.then45

for.body34:                                       ; preds = %for.end29, %for.inc27, %for.cond32
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.cond32 ], [ 0, %for.inc27 ], [ 0, %for.end29 ]
  %dir.2103 = phi i32 [ %inc41, %for.cond32 ], [ 0, %for.inc27 ], [ 0, %for.end29 ]
  %arrayidx36 = getelementptr inbounds [4 x i32]* @squaresize, i64 0, i64 %indvars.iv112
  %9 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %9, %j.1
  %indvars.iv.next113 = add i64 %indvars.iv112, 1
  %inc41 = add nsw i32 %dir.2103, 1
  br i1 %cmp37, label %if.end43, label %for.cond32

if.end43:                                         ; preds = %for.body34
  %cmp44 = icmp sgt i32 %dir.2103, 3
  br i1 %cmp44, label %if.then45, label %if.end51

if.then45:                                        ; preds = %for.cond32, %if.end43
  %dir.2102 = phi i32 [ %dir.2103, %if.end43 ], [ %inc41, %for.cond32 ]
  %call46 = tail call i32 (...)* @mynode() #5
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then45
  %puts89 = tail call i32 @puts(i8* getelementptr inbounds ([60 x i8]* @str5, i64 0, i64 0))
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then45
  tail call void @terminate(i32 1) #5
  br label %if.end51

if.end51:                                         ; preds = %for.end29, %if.end50, %if.end43
  %dir.393 = phi i32 [ %dir.2102, %if.end50 ], [ %dir.2103, %if.end43 ], [ %dir.1100, %for.end29 ]
  %mul = shl nsw i32 %i.0106, 1
  %idxprom52 = sext i32 %dir.393 to i64
  %arrayidx53 = getelementptr inbounds [4 x i32]* @squaresize, i64 0, i64 %idxprom52
  %10 = load i32* %arrayidx53, align 4, !tbaa !0
  %div = sdiv i32 %10, 2
  store i32 %div, i32* %arrayidx53, align 4, !tbaa !0
  %arrayidx55 = getelementptr inbounds [4 x i32]* @nsquares, i64 0, i64 %idxprom52
  %11 = load i32* %arrayidx55, align 4, !tbaa !0
  %mul56 = shl nsw i32 %11, 1
  store i32 %mul56, i32* %arrayidx55, align 4, !tbaa !0
  %call4 = tail call i32 (...)* @numnodes() #5
  %cmp5 = icmp slt i32 %mul, %call4
  br i1 %cmp5, label %for.cond.preheader, label %while.end

while.end:                                        ; preds = %if.end51, %if.end
  %12 = load i64* bitcast ([4 x i32]* @squaresize to i64*), align 16
  %13 = trunc i64 %12 to i32
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  %mul57 = mul nsw i32 %15, %13
  %16 = load i64* bitcast (i32* getelementptr inbounds ([4 x i32]* @squaresize, i64 0, i64 2) to i64*), align 8
  %17 = trunc i64 %16 to i32
  %mul58 = mul nsw i32 %mul57, %17
  %18 = lshr i64 %16, 32
  %19 = trunc i64 %18 to i32
  %mul59 = mul nsw i32 %mul58, %19
  store i32 %mul59, i32* @sites_on_node, align 4, !tbaa !0
  %call60 = tail call i32 (...)* @mynode() #5
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end68

if.then62:                                        ; preds = %while.end
  %20 = load i32* @sites_on_node, align 4, !tbaa !0
  %rem6388 = and i32 %20, 1
  %cmp64 = icmp eq i32 %rem6388, 0
  br i1 %cmp64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.then62
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str, i64 0, i64 0))
  tail call void @terminate(i32 0) #5
  br label %if.end68

if.end68:                                         ; preds = %while.end, %if.then62, %if.then65
  %21 = load i32* @sites_on_node, align 4, !tbaa !0
  %div69 = sdiv i32 %21, 2
  store i32 %div69, i32* @odd_sites_on_node, align 4, !tbaa !0
  store i32 %div69, i32* @even_sites_on_node, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @mynode(...) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @numnodes(...) #1

; Function Attrs: optsize
declare void @terminate(i32) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @node_number(i32 %x, i32 %y, i32 %z, i32 %t) #3 {
entry:
  %0 = load i64* bitcast ([4 x i32]* @squaresize to i64*), align 16
  %1 = trunc i64 %0 to i32
  %div = sdiv i32 %x, %1
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %div1 = sdiv i32 %y, %3
  %4 = load i64* bitcast (i32* getelementptr inbounds ([4 x i32]* @squaresize, i64 0, i64 2) to i64*), align 8
  %5 = trunc i64 %4 to i32
  %div2 = sdiv i32 %z, %5
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %div3 = sdiv i32 %t, %7
  %8 = load i64* bitcast ([4 x i32]* @nsquares to i64*), align 16
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %12 = load i32* getelementptr inbounds ([4 x i32]* @nsquares, i64 0, i64 2), align 8, !tbaa !0
  %mul = mul nsw i32 %12, %div3
  %add = add nsw i32 %mul, %div2
  %mul4 = mul nsw i32 %add, %11
  %add5 = add nsw i32 %mul4, %div1
  %mul6 = mul nsw i32 %add5, %9
  %add7 = add nsw i32 %mul6, %div
  ret i32 %add7
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @node_index(i32 %x, i32 %y, i32 %z, i32 %t) #3 {
entry:
  %0 = load i64* bitcast ([4 x i32]* @squaresize to i64*), align 16
  %1 = trunc i64 %0 to i32
  %rem = srem i32 %x, %1
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %rem1 = srem i32 %y, %3
  %4 = load i64* bitcast (i32* getelementptr inbounds ([4 x i32]* @squaresize, i64 0, i64 2) to i64*), align 8
  %5 = trunc i64 %4 to i32
  %rem2 = srem i32 %z, %5
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %rem3 = srem i32 %t, %7
  %mul = mul nsw i32 %rem3, %5
  %add = add nsw i32 %mul, %rem2
  %mul4 = mul nsw i32 %add, %3
  %add5 = add nsw i32 %mul4, %rem1
  %mul6 = mul nsw i32 %add5, %1
  %add7 = add nsw i32 %mul6, %rem
  %add8 = add nsw i32 %y, %x
  %add9 = add nsw i32 %add8, %z
  %add10 = add nsw i32 %add9, %t
  %rem1118 = and i32 %add10, 1
  %cmp = icmp eq i32 %rem1118, 0
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %8 = load i32* @sites_on_node, align 4, !tbaa !0
  %add12 = add nsw i32 %8, %add7
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0.in = phi i32 [ %add12, %if.else ], [ %add7, %entry ]
  %retval.0 = sdiv i32 %retval.0.in, 2
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @num_sites(i32 %node) #3 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}

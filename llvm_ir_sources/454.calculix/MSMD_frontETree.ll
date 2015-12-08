; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in MSMD_frontETree(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @MSMD_frontETree(%struct._MSMD* %msmd) #0 {
entry:
  %cmp = icmp eq %struct._MSMD* %msmd, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._MSMD* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  %1 = load i32* %nvtx1, align 4, !tbaa !3
  %call2 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call3 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %cmp4225 = icmp sgt i32 %1, 0
  br i1 %cmp4225, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %2 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %v.0229 = phi %struct._MSMDvtx* [ %2, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %iv.0228 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc ]
  %nfront.0227 = phi i32 [ 0, %for.body.lr.ph ], [ %nfront.1, %for.inc ]
  %root.0226 = phi i32 [ -1, %for.body.lr.ph ], [ %root.2, %for.inc ]
  %status = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 2
  %3 = load i8* %status, align 1, !tbaa !1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %for.inc [
    i32 76, label %sw.bb
    i32 69, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %par5 = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 8
  %4 = load %struct._MSMDvtx** %par5, align 8, !tbaa !0
  %cmp6 = icmp eq %struct._MSMDvtx* %4, null
  br i1 %cmp6, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb
  %id = getelementptr inbounds %struct._MSMDvtx* %4, i64 0, i32 0
  %5 = load i32* %id, align 4, !tbaa !3
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32* %call2, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %id9 = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 0
  %7 = load i32* %id9, align 4, !tbaa !3
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds i32* %call3, i64 %idxprom10
  store i32 %6, i32* %arrayidx11, align 4, !tbaa !3
  %8 = load i32* %id9, align 4, !tbaa !3
  %9 = load i32* %id, align 4, !tbaa !3
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds i32* %call2, i64 %idxprom14
  store i32 %8, i32* %arrayidx15, align 4, !tbaa !3
  br label %if.end20

if.else:                                          ; preds = %sw.bb
  %id16 = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 0
  %10 = load i32* %id16, align 4, !tbaa !3
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds i32* %call3, i64 %idxprom17
  store i32 %root.0226, i32* %arrayidx18, align 4, !tbaa !3
  %11 = load i32* %id16, align 4, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then8
  %root.1 = phi i32 [ %root.0226, %if.then8 ], [ %11, %if.else ]
  %inc = add nsw i32 %nfront.0227, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %for.body
  %root.2 = phi i32 [ %root.0226, %for.body ], [ %root.1, %if.end20 ]
  %nfront.1 = phi i32 [ %nfront.0227, %for.body ], [ %inc, %if.end20 ]
  %inc21 = add nsw i32 %iv.0228, 1
  %incdec.ptr = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 1
  %exitcond238 = icmp eq i32 %inc21, %1
  br i1 %exitcond238, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %nfront.0.lcssa = phi i32 [ 0, %if.end ], [ %nfront.1, %for.inc ]
  %root.0.lcssa = phi i32 [ -1, %if.end ], [ %root.2, %for.inc ]
  %call22 = tail call %struct._ETree* @ETree_new() #4
  tail call void @ETree_init1(%struct._ETree* %call22, i32 %nfront.0.lcssa, i32 %1) #4
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 3
  %12 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call23 = tail call i32* @IV_entries(%struct._IV* %12) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 4
  %13 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call24 = tail call i32* @IV_entries(%struct._IV* %13) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 5
  %14 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call25 = tail call i32* @IV_entries(%struct._IV* %14) #4
  %cmp26222 = icmp eq i32 %root.0.lcssa, -1
  br i1 %cmp26222, label %while.end57, label %while.cond28.preheader.lr.ph

while.cond28.preheader.lr.ph:                     ; preds = %for.end
  %15 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  br label %while.cond28.preheader

while.cond28.preheader:                           ; preds = %while.body48, %while.end, %while.cond28.preheader.lr.ph
  %iv.1224 = phi i32 [ %root.0.lcssa, %while.cond28.preheader.lr.ph ], [ %17, %while.end ], [ %20, %while.body48 ]
  %nfront.2223 = phi i32 [ 0, %while.cond28.preheader.lr.ph ], [ %nfront.3214, %while.end ], [ %nfront.3, %while.body48 ]
  br label %while.cond28

while.cond28:                                     ; preds = %while.cond28.preheader, %while.cond28
  %iv.2 = phi i32 [ %16, %while.cond28 ], [ %iv.1224, %while.cond28.preheader ]
  %idxprom29 = sext i32 %iv.2 to i64
  %arrayidx30 = getelementptr inbounds i32* %call2, i64 %idxprom29
  %16 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp31 = icmp eq i32 %16, -1
  br i1 %cmp31, label %while.end, label %while.cond28

while.end:                                        ; preds = %while.cond28
  %arrayidx39 = getelementptr inbounds i32* %call25, i64 %idxprom29
  store i32 %nfront.2223, i32* %arrayidx39, align 4, !tbaa !3
  %nfront.3214 = add nsw i32 %nfront.2223, 1
  %arrayidx42216 = getelementptr inbounds i32* %call3, i64 %idxprom29
  %17 = load i32* %arrayidx42216, align 4, !tbaa !3
  %cmp43217 = icmp eq i32 %17, -1
  br i1 %cmp43217, label %land.rhs.lr.ph, label %while.cond28.preheader

land.rhs.lr.ph:                                   ; preds = %while.end
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idxprom29
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body48
  %nfront.3219 = phi i32 [ %nfront.3214, %land.rhs.lr.ph ], [ %nfront.3, %while.body48 ]
  %v.1218 = phi %struct._MSMDvtx* [ %add.ptr, %land.rhs.lr.ph ], [ %18, %while.body48 ]
  %par45 = getelementptr inbounds %struct._MSMDvtx* %v.1218, i64 0, i32 8
  %18 = load %struct._MSMDvtx** %par45, align 8, !tbaa !0
  %cmp46 = icmp eq %struct._MSMDvtx* %18, null
  br i1 %cmp46, label %while.end57, label %while.body48

while.body48:                                     ; preds = %land.rhs
  %id50 = getelementptr inbounds %struct._MSMDvtx* %18, i64 0, i32 0
  %19 = load i32* %id50, align 4, !tbaa !3
  %idxprom52 = sext i32 %19 to i64
  %arrayidx53 = getelementptr inbounds i32* %call25, i64 %idxprom52
  store i32 %nfront.3219, i32* %arrayidx53, align 4, !tbaa !3
  %nfront.3 = add nsw i32 %nfront.3219, 1
  %arrayidx42 = getelementptr inbounds i32* %call3, i64 %idxprom52
  %20 = load i32* %arrayidx42, align 4, !tbaa !3
  %cmp43 = icmp eq i32 %20, -1
  br i1 %cmp43, label %land.rhs, label %while.cond28.preheader

while.end57:                                      ; preds = %land.rhs, %for.end
  tail call void @IVfree(i32* %call2) #4
  tail call void @IVfree(i32* %call3) #4
  br i1 %cmp4225, label %for.body62.lr.ph, label %for.end94.thread

for.end94.thread:                                 ; preds = %while.end57
  %tree242 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 2
  %21 = load %struct._Tree** %tree242, align 8, !tbaa !0
  br label %for.end128

for.body62.lr.ph:                                 ; preds = %while.end57
  %22 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  br label %for.body62

for.body62:                                       ; preds = %for.inc91, %for.body62.lr.ph
  %v.2212 = phi %struct._MSMDvtx* [ %22, %for.body62.lr.ph ], [ %incdec.ptr93, %for.inc91 ]
  %iv.4211 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc92, %for.inc91 ]
  %status63 = getelementptr inbounds %struct._MSMDvtx* %v.2212, i64 0, i32 2
  %23 = load i8* %status63, align 1, !tbaa !1
  %cond = icmp eq i8 %23, 73
  br i1 %cond, label %while.cond66, label %for.inc91

while.cond66:                                     ; preds = %while.cond66, %for.body62
  %w.0 = phi %struct._MSMDvtx* [ %v.2212, %for.body62 ], [ %24, %while.cond66 ]
  %par67 = getelementptr inbounds %struct._MSMDvtx* %w.0, i64 0, i32 8
  %24 = load %struct._MSMDvtx** %par67, align 8, !tbaa !0
  %cmp68 = icmp ne %struct._MSMDvtx* %24, null
  %status79.phi.trans.insert = getelementptr inbounds %struct._MSMDvtx* %w.0, i64 0, i32 2
  %.pre = load i8* %status79.phi.trans.insert, align 1, !tbaa !1
  %cmp73 = icmp eq i8 %.pre, 73
  %or.cond = and i1 %cmp68, %cmp73
  br i1 %or.cond, label %while.cond66, label %while.end78

while.end78:                                      ; preds = %while.cond66
  %conv80 = sext i8 %.pre to i32
  switch i32 %conv80, label %for.inc91 [
    i32 76, label %sw.bb81
    i32 69, label %sw.bb81
  ]

sw.bb81:                                          ; preds = %while.end78, %while.end78
  %id82 = getelementptr inbounds %struct._MSMDvtx* %w.0, i64 0, i32 0
  %25 = load i32* %id82, align 4, !tbaa !3
  %idxprom83 = sext i32 %25 to i64
  %arrayidx84 = getelementptr inbounds i32* %call25, i64 %idxprom83
  %26 = load i32* %arrayidx84, align 4, !tbaa !3
  %id85 = getelementptr inbounds %struct._MSMDvtx* %v.2212, i64 0, i32 0
  %27 = load i32* %id85, align 4, !tbaa !3
  %idxprom86 = sext i32 %27 to i64
  %arrayidx87 = getelementptr inbounds i32* %call25, i64 %idxprom86
  store i32 %26, i32* %arrayidx87, align 4, !tbaa !3
  br label %for.inc91

for.inc91:                                        ; preds = %for.body62, %while.end78, %sw.bb81
  %inc92 = add nsw i32 %iv.4211, 1
  %incdec.ptr93 = getelementptr inbounds %struct._MSMDvtx* %v.2212, i64 1
  %exitcond233 = icmp eq i32 %inc92, %1
  br i1 %exitcond233, label %for.end94, label %for.body62

for.end94:                                        ; preds = %for.inc91
  %tree = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 2
  %28 = load %struct._Tree** %tree, align 8, !tbaa !0
  %par95 = getelementptr inbounds %struct._Tree* %28, i64 0, i32 2
  %29 = load i32** %par95, align 8, !tbaa !0
  br i1 %cmp4225, label %for.body100.lr.ph, label %for.end128

for.body100.lr.ph:                                ; preds = %for.end94
  %30 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  br label %for.body100

for.body100:                                      ; preds = %for.inc125, %for.body100.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body100.lr.ph ], [ %indvars.iv.next, %for.inc125 ]
  %v.3208 = phi %struct._MSMDvtx* [ %30, %for.body100.lr.ph ], [ %incdec.ptr127, %for.inc125 ]
  %status101 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 2
  %31 = load i8* %status101, align 1, !tbaa !1
  %conv102 = sext i8 %31 to i32
  switch i32 %conv102, label %for.inc125 [
    i32 76, label %sw.bb103
    i32 69, label %sw.bb103
  ]

sw.bb103:                                         ; preds = %for.body100, %for.body100
  %arrayidx105 = getelementptr inbounds i32* %call25, i64 %indvars.iv
  %32 = load i32* %arrayidx105, align 4, !tbaa !3
  %par106 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 8
  %33 = load %struct._MSMDvtx** %par106, align 8, !tbaa !0
  %cmp107 = icmp eq %struct._MSMDvtx* %33, null
  br i1 %cmp107, label %if.end118, label %if.then109

if.then109:                                       ; preds = %sw.bb103
  %id110 = getelementptr inbounds %struct._MSMDvtx* %33, i64 0, i32 0
  %34 = load i32* %id110, align 4, !tbaa !3
  %idxprom111 = sext i32 %34 to i64
  %arrayidx112 = getelementptr inbounds i32* %call25, i64 %idxprom111
  %35 = load i32* %arrayidx112, align 4, !tbaa !3
  %id113 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 0
  %36 = load i32* %id113, align 4, !tbaa !3
  %idxprom114 = sext i32 %36 to i64
  %arrayidx115 = getelementptr inbounds i32* %call25, i64 %idxprom114
  %37 = load i32* %arrayidx115, align 4, !tbaa !3
  %idxprom116 = sext i32 %37 to i64
  %arrayidx117 = getelementptr inbounds i32* %29, i64 %idxprom116
  store i32 %35, i32* %arrayidx117, align 4, !tbaa !3
  br label %if.end118

if.end118:                                        ; preds = %sw.bb103, %if.then109
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 7
  %38 = load i32* %bndwght, align 4, !tbaa !3
  %idxprom119 = sext i32 %32 to i64
  %arrayidx120 = getelementptr inbounds i32* %call24, i64 %idxprom119
  store i32 %38, i32* %arrayidx120, align 4, !tbaa !3
  %wght = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 4
  %39 = load i32* %wght, align 4, !tbaa !3
  %arrayidx122 = getelementptr inbounds i32* %call23, i64 %idxprom119
  store i32 %39, i32* %arrayidx122, align 4, !tbaa !3
  br label %for.inc125

for.inc125:                                       ; preds = %if.end118, %for.body100
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr127 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end128, label %for.body100

for.end128:                                       ; preds = %for.inc125, %for.end94.thread, %for.end94
  %40 = phi %struct._Tree* [ %21, %for.end94.thread ], [ %28, %for.end94 ], [ %28, %for.inc125 ]
  tail call void @Tree_setFchSibRoot(%struct._Tree* %40) #4
  ret %struct._ETree* %call22
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
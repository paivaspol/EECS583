; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_fundChainMap(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ETree_fundSupernodeMap(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [51 x i8] c"\0A fatal error in ETree_compress(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_fundChainMap(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %0, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %2 = load i32* %nvtx6, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  %call9 = tail call %struct._IV* @Tree_fundChainMap(%struct._Tree* %0) #4
  ret %struct._IV* %call9
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @Tree_fundChainMap(%struct._Tree*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_fundSupernodeMap(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %0, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %2 = load i32* %nvtx6, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  %par9 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 2
  %4 = load i32** %par9, align 8, !tbaa !0
  %fch11 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3
  %5 = load i32** %fch11, align 8, !tbaa !0
  %sib13 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4
  %6 = load i32** %sib13, align 8, !tbaa !0
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %7 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call14 = tail call i32* @IV_entries(%struct._IV* %7) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %8 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call15 = tail call i32* @IV_entries(%struct._IV* %8) #4
  %call16 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call16, i32 %1, i32* null) #4
  %call17 = tail call i32* @IV_entries(%struct._IV* %call16) #4
  %9 = load %struct._Tree** %tree, align 8, !tbaa !0
  %root = getelementptr inbounds %struct._Tree* %9, i64 0, i32 1
  %front.0117 = load i32* %root, align 4
  %cmp19118 = icmp eq i32 %front.0117, -1
  br i1 %cmp19118, label %while.end62, label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %if.then50, %while.end, %if.else, %if.end
  %front.0120 = phi i32 [ %front.0117, %if.end ], [ %20, %if.else ], [ %11, %while.end ], [ %18, %if.then50 ]
  %nfs.0119 = phi i32 [ 0, %if.end ], [ %nfs.1.ph112, %if.else ], [ %inc, %while.end ], [ %inc51, %if.then50 ]
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.preheader, %while.cond20
  %front.1 = phi i32 [ %10, %while.cond20 ], [ %front.0120, %while.cond20.preheader ]
  %idxprom = sext i32 %front.1 to i64
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %10, -1
  br i1 %cmp21, label %while.end, label %while.cond20

while.end:                                        ; preds = %while.cond20
  %inc = add nsw i32 %nfs.0119, 1
  %arrayidx26 = getelementptr inbounds i32* %call17, i64 %idxprom
  store i32 %nfs.0119, i32* %arrayidx26, align 4, !tbaa !3
  %arrayidx29100110 = getelementptr inbounds i32* %6, i64 %idxprom
  %11 = load i32* %arrayidx29100110, align 4, !tbaa !3
  %cmp30101111 = icmp eq i32 %11, -1
  br i1 %cmp30101111, label %land.rhs.lr.ph, label %while.cond20.preheader

land.rhs.lr.ph:                                   ; preds = %while.end, %if.then50
  %idxprom2899113 = phi i64 [ %idxprom37, %if.then50 ], [ %idxprom, %while.end ]
  %nfs.1.ph112 = phi i32 [ %inc51, %if.then50 ], [ %inc, %while.end ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.else
  %idxprom28102 = phi i64 [ %idxprom2899113, %land.rhs.lr.ph ], [ %idxprom37, %if.else ]
  %arrayidx32 = getelementptr inbounds i32* %4, i64 %idxprom28102
  %12 = load i32* %arrayidx32, align 4, !tbaa !3
  %cmp33 = icmp eq i32 %12, -1
  br i1 %cmp33, label %while.end62, label %while.body34

while.body34:                                     ; preds = %land.rhs
  %idxprom37 = sext i32 %12 to i64
  %arrayidx38 = getelementptr inbounds i32* %5, i64 %idxprom37
  %13 = load i32* %arrayidx38, align 4, !tbaa !3
  %idxprom39 = sext i32 %13 to i64
  %arrayidx40 = getelementptr inbounds i32* %6, i64 %idxprom39
  %14 = load i32* %arrayidx40, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %14, -1
  br i1 %cmp41, label %lor.lhs.false42, label %if.then50

lor.lhs.false42:                                  ; preds = %while.body34
  %arrayidx44 = getelementptr inbounds i32* %call14, i64 %idxprom37
  %15 = load i32* %arrayidx44, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds i32* %call15, i64 %idxprom37
  %16 = load i32* %arrayidx46, align 4, !tbaa !3
  %add = add nsw i32 %16, %15
  %arrayidx48 = getelementptr inbounds i32* %call15, i64 %idxprom39
  %17 = load i32* %arrayidx48, align 4, !tbaa !3
  %cmp49 = icmp eq i32 %add, %17
  br i1 %cmp49, label %if.else, label %if.then50

if.then50:                                        ; preds = %lor.lhs.false42, %while.body34
  %inc51 = add nsw i32 %nfs.1.ph112, 1
  %arrayidx53 = getelementptr inbounds i32* %call17, i64 %idxprom37
  store i32 %nfs.1.ph112, i32* %arrayidx53, align 4, !tbaa !3
  %arrayidx29100 = getelementptr inbounds i32* %6, i64 %idxprom37
  %18 = load i32* %arrayidx29100, align 4, !tbaa !3
  %cmp30101 = icmp eq i32 %18, -1
  br i1 %cmp30101, label %land.rhs.lr.ph, label %while.cond20.preheader

if.else:                                          ; preds = %lor.lhs.false42
  %arrayidx55 = getelementptr inbounds i32* %call17, i64 %idxprom39
  %19 = load i32* %arrayidx55, align 4, !tbaa !3
  %arrayidx57 = getelementptr inbounds i32* %call17, i64 %idxprom37
  store i32 %19, i32* %arrayidx57, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %6, i64 %idxprom37
  %20 = load i32* %arrayidx29, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %20, -1
  br i1 %cmp30, label %land.rhs, label %while.cond20.preheader

while.end62:                                      ; preds = %land.rhs, %if.end
  ret %struct._IV* %call16
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %frontmapIV) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  %cmp7 = icmp eq %struct._IV* %frontmapIV, null
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %frontmapIV) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %3 = load %struct._Tree** %tree, align 8, !tbaa !0
  %par10 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 2
  %4 = load i32** %par10, align 8, !tbaa !0
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %5 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call11 = tail call i32* @IV_entries(%struct._IV* %5) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %6 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call12 = tail call i32* @IV_entries(%struct._IV* %6) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %7 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call13 = tail call i32* @IV_entries(%struct._IV* %7) #4
  %call14 = tail call i32 @IV_max(%struct._IV* %frontmapIV) #4
  %add = add nsw i32 %call14, 1
  %call15 = tail call i32* @IV_entries(%struct._IV* %frontmapIV) #4
  %call16 = tail call %struct._ETree* @ETree_new() #4
  tail call void @ETree_init1(%struct._ETree* %call16, i32 %add, i32 %1) #4
  %tree17 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 2
  %8 = load %struct._Tree** %tree17, align 8, !tbaa !0
  %par18 = getelementptr inbounds %struct._Tree* %8, i64 0, i32 2
  %9 = load i32** %par18, align 8, !tbaa !0
  %nodwghtsIV19 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 3
  %10 = load %struct._IV** %nodwghtsIV19, align 8, !tbaa !0
  %call20 = tail call i32* @IV_entries(%struct._IV* %10) #4
  %bndwghtsIV21 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 4
  %11 = load %struct._IV** %bndwghtsIV21, align 8, !tbaa !0
  %call22 = tail call i32* @IV_entries(%struct._IV* %11) #4
  %vtxToFrontIV23 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 5
  %12 = load %struct._IV** %vtxToFrontIV23, align 8, !tbaa !0
  %call24 = tail call i32* @IV_entries(%struct._IV* %12) #4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv95 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next96, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %call15, i64 %indvars.iv95
  %13 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds i32* %4, i64 %indvars.iv95
  %14 = load i32* %arrayidx27, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %call11, i64 %indvars.iv95
  %15 = load i32* %arrayidx29, align 4, !tbaa !3
  %idxprom30 = sext i32 %13 to i64
  %arrayidx31 = getelementptr inbounds i32* %call20, i64 %idxprom30
  %16 = load i32* %arrayidx31, align 4, !tbaa !3
  %add32 = add nsw i32 %16, %15
  store i32 %add32, i32* %arrayidx31, align 4, !tbaa !3
  %cmp33 = icmp eq i32 %14, -1
  br i1 %cmp33, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %idxprom34 = sext i32 %14 to i64
  %arrayidx35 = getelementptr inbounds i32* %call15, i64 %idxprom34
  %17 = load i32* %arrayidx35, align 4, !tbaa !3
  %cmp36 = icmp eq i32 %17, %13
  br i1 %cmp36, label %for.inc, label %if.then37

if.then37:                                        ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds i32* %9, i64 %idxprom30
  store i32 %17, i32* %arrayidx39, align 4, !tbaa !3
  %arrayidx41 = getelementptr inbounds i32* %call12, i64 %indvars.iv95
  %18 = load i32* %arrayidx41, align 4, !tbaa !3
  %arrayidx43 = getelementptr inbounds i32* %call22, i64 %idxprom30
  store i32 %18, i32* %arrayidx43, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then37
  %indvars.iv.next96 = add i64 %indvars.iv95, 1
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %0
  br i1 %exitcond98, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %19 = load %struct._Tree** %tree17, align 8, !tbaa !0
  tail call void @Tree_setFchSibRoot(%struct._Tree* %19) #4
  %cmp4791 = icmp sgt i32 %1, 0
  br i1 %cmp4791, label %for.body48, label %for.end57

for.body48:                                       ; preds = %for.end, %for.body48
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body48 ], [ 0, %for.end ]
  %arrayidx50 = getelementptr inbounds i32* %call13, i64 %indvars.iv
  %20 = load i32* %arrayidx50, align 4, !tbaa !3
  %idxprom51 = sext i32 %20 to i64
  %arrayidx52 = getelementptr inbounds i32* %call15, i64 %idxprom51
  %21 = load i32* %arrayidx52, align 4, !tbaa !3
  %arrayidx54 = getelementptr inbounds i32* %call24, i64 %indvars.iv
  store i32 %21, i32* %arrayidx54, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end57, label %for.body48

for.end57:                                        ; preds = %for.body48, %for.end
  ret %struct._ETree* %call16
}

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

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

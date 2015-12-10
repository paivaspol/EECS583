; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SKBinTree.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.T_SKTREE = type { %struct.T_SKTREE*, %struct.T_SKTREE*, %struct.T_SKTREE*, %struct.T_SKTREE*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"KEY:   %s\0A\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"LEFT:  %s\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RIGHT: %s\0A\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"NEXT:  %s\0A\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/util/SKBinTree.c,v 1.10 2001/06/04 17:22:14 goodale Exp $\00", align 1
@str = private unnamed_addr constant [14 x i8] c"LEFT:  (none)\00"
@str8 = private unnamed_addr constant [14 x i8] c"RIGHT: (none)\00"
@str9 = private unnamed_addr constant [13 x i8] c"NEXT: (none)\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_SKBinTree_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE* %root, %struct.T_SKTREE* %subtree, i8* %key, i8* %data) #1 {
  %1 = icmp eq %struct.T_SKTREE* %subtree, null
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %0
  %root.tr.lcssa = phi %struct.T_SKTREE* [ %root, %0 ], [ %subtree.tr2, %tailrecurse.backedge ]
  %2 = tail call i8* @malloc(i64 48) #8
  %3 = bitcast i8* %2 to %struct.T_SKTREE*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %.loopexit, label %5

; <label>:5                                       ; preds = %tailrecurse._crit_edge
  %6 = getelementptr inbounds i8* %2, i64 16
  %7 = bitcast i8* %6 to %struct.T_SKTREE**
  %8 = getelementptr inbounds i8* %2, i64 24
  %9 = bitcast i8* %8 to %struct.T_SKTREE**
  %10 = getelementptr inbounds i8* %2, i64 40
  %11 = bitcast i8* %10 to i8**
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 32, i32 8, i1 false)
  store i8* %data, i8** %11, align 8, !tbaa !2
  %12 = tail call i64 @strlen(i8* %key) #8
  %13 = add i64 %12, 1
  %14 = tail call i8* @malloc(i64 %13) #8
  %15 = getelementptr inbounds i8* %2, i64 32
  %16 = bitcast i8* %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !7
  %17 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %14, i1 false)
  %18 = tail call i8* @__strcpy_chk(i8* %14, i8* %key, i64 %17) #8
  %19 = icmp eq %struct.T_SKTREE* %root.tr.lcssa, null
  br i1 %19, label %.loopexit, label %20

; <label>:20                                      ; preds = %5
  %21 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 4
  %22 = load i8** %21, align 8, !tbaa !7
  %23 = tail call i32 @STR_cmpi(i8* %key, i8* %22) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

; <label>:25                                      ; preds = %20
  %26 = bitcast %struct.T_SKTREE* %root.tr.lcssa to i8**
  store i8* %2, i8** %26, align 8, !tbaa !8
  store %struct.T_SKTREE* %root.tr.lcssa, %struct.T_SKTREE** %7, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 3
  %28 = load %struct.T_SKTREE** %27, align 8, !tbaa !10
  store %struct.T_SKTREE* %28, %struct.T_SKTREE** %9, align 8, !tbaa !10
  %29 = icmp eq %struct.T_SKTREE* %28, null
  br i1 %29, label %.loopexit, label %30

; <label>:30                                      ; preds = %25
  %31 = getelementptr inbounds %struct.T_SKTREE* %28, i64 0, i32 2
  %32 = bitcast %struct.T_SKTREE** %31 to i8**
  store i8* %2, i8** %32, align 8, !tbaa !9
  br label %.loopexit

; <label>:33                                      ; preds = %20
  %34 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 1
  %35 = bitcast %struct.T_SKTREE** %34 to i8**
  store i8* %2, i8** %35, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 2
  %37 = bitcast %struct.T_SKTREE** %36 to i64*
  %38 = load i64* %37, align 8, !tbaa !9
  %39 = bitcast i8* %6 to i64*
  store i64 %38, i64* %39, align 8, !tbaa !9
  store %struct.T_SKTREE* %root.tr.lcssa, %struct.T_SKTREE** %9, align 8, !tbaa !10
  %40 = bitcast %struct.T_SKTREE** %36 to i8**
  store i8* %2, i8** %40, align 8, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %0, %tailrecurse.backedge
  %subtree.tr2 = phi %struct.T_SKTREE* [ %subtree.tr.be, %tailrecurse.backedge ], [ %subtree, %0 ]
  %41 = getelementptr inbounds %struct.T_SKTREE* %subtree.tr2, i64 0, i32 4
  %42 = load i8** %41, align 8, !tbaa !7
  %43 = tail call i32 @STR_cmpi(i8* %key, i8* %42) #9
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

; <label>:45                                      ; preds = %.lr.ph
  %46 = getelementptr inbounds %struct.T_SKTREE* %subtree.tr2, i64 0, i32 0
  br label %tailrecurse.backedge

; <label>:47                                      ; preds = %.lr.ph
  %48 = icmp sgt i32 %43, 0
  br i1 %48, label %49, label %.loopexit

; <label>:49                                      ; preds = %47
  %50 = getelementptr inbounds %struct.T_SKTREE* %subtree.tr2, i64 0, i32 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %49, %45
  %subtree.tr.be.in = phi %struct.T_SKTREE** [ %50, %49 ], [ %46, %45 ]
  %subtree.tr.be = load %struct.T_SKTREE** %subtree.tr.be.in, align 8
  %51 = icmp eq %struct.T_SKTREE* %subtree.tr.be, null
  br i1 %51, label %tailrecurse._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %47, %25, %5, %tailrecurse._crit_edge, %33, %30
  %newsubtree.0 = phi %struct.T_SKTREE* [ %3, %30 ], [ %3, %25 ], [ %3, %33 ], [ %3, %5 ], [ %3, %tailrecurse._crit_edge ], [ null, %47 ]
  ret %struct.T_SKTREE* %newsubtree.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @STR_cmpi(i8* nocapture readonly %string1, i8* nocapture readonly %string2) #1 {
  %1 = load i8* %string1, align 1, !tbaa !12
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %.critedge.thread, label %.lr.ph

; <label>:3                                       ; preds = %10
  %4 = getelementptr inbounds i8* %string1, i64 %indvars.iv.next
  %5 = load i8* %4, align 1, !tbaa !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %3 ], [ 0, %0 ]
  %.in = phi i8 [ %5, %3 ], [ %1, %0 ]
  %retval.01 = phi i32 [ %16, %3 ], [ 0, %0 ]
  %7 = getelementptr inbounds i8* %string2, i64 %indvars.iv
  %8 = load i8* %7, align 1, !tbaa !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %.critedge, label %10

; <label>:10                                      ; preds = %.lr.ph
  %11 = sext i8 %.in to i32
  %12 = tail call i32 @__tolower(i32 %11) #8
  %13 = load i8* %7, align 1, !tbaa !12
  %14 = sext i8 %13 to i32
  %15 = tail call i32 @__tolower(i32 %14) #8
  %16 = sub nsw i32 %12, %15
  %17 = icmp eq i32 %12, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %17, label %3, label %.critedge

.critedge:                                        ; preds = %3, %.lr.ph, %10
  %retval.1 = phi i32 [ %16, %10 ], [ %retval.01, %.lr.ph ], [ %16, %3 ]
  %18 = icmp eq i32 %retval.1, 0
  br i1 %18, label %.critedge.thread, label %23

.critedge.thread:                                 ; preds = %0, %.critedge
  %19 = tail call i64 @strlen(i8* %string1) #8
  %20 = tail call i64 @strlen(i8* %string2) #8
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  br label %23

; <label>:23                                      ; preds = %.critedge, %.critedge.thread
  %retval.2 = phi i32 [ %retval.1, %.critedge ], [ %22, %.critedge.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SKTreeTraverseInorder(%struct.T_SKTREE* readonly %root, i32 (i8*, i8*, i8*)* %process, i8* %info) #1 {
  %1 = icmp eq %struct.T_SKTREE* %root, null
  br i1 %1, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_SKTREE* [ %14, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0
  %3 = load %struct.T_SKTREE** %2, align 8, !tbaa !8
  %4 = tail call i32 @SKTreeTraverseInorder(%struct.T_SKTREE* %3, i32 (i8*, i8*, i8*)* %process, i8* %info) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %.thread

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4
  %8 = load i8** %7, align 8, !tbaa !7
  %9 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 5
  %10 = load i8** %9, align 8, !tbaa !2
  %11 = tail call i32 %process(i8* %8, i8* %10, i8* %info) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %tailrecurse, label %.thread

tailrecurse:                                      ; preds = %6
  %13 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1
  %14 = load %struct.T_SKTREE** %13, align 8, !tbaa !11
  %15 = icmp eq %struct.T_SKTREE* %14, null
  br i1 %15, label %.thread, label %.lr.ph

.thread:                                          ; preds = %tailrecurse, %6, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %11, %6 ], [ %4, %.lr.ph ]
  ret i32 %terminate.1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SKTreeTraversePreorder(%struct.T_SKTREE* readonly %root, i32 (i8*, i8*, i8*)* %process, i8* %info) #1 {
  %1 = icmp eq %struct.T_SKTREE* %root, null
  br i1 %1, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_SKTREE* [ %14, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4
  %3 = load i8** %2, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 5
  %5 = load i8** %4, align 8, !tbaa !2
  %6 = tail call i32 %process(i8* %3, i8* %5, i8* %info) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %.thread

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0
  %10 = load %struct.T_SKTREE** %9, align 8, !tbaa !8
  %11 = tail call i32 @SKTreeTraversePreorder(%struct.T_SKTREE* %10, i32 (i8*, i8*, i8*)* %process, i8* %info) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %tailrecurse, label %.thread

tailrecurse:                                      ; preds = %8
  %13 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1
  %14 = load %struct.T_SKTREE** %13, align 8, !tbaa !11
  %15 = icmp eq %struct.T_SKTREE* %14, null
  br i1 %15, label %.thread, label %.lr.ph

.thread:                                          ; preds = %tailrecurse, %8, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %11, %8 ], [ %6, %.lr.ph ]
  ret i32 %terminate.1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SKTreeTraversePostorder(%struct.T_SKTREE* readonly %root, i32 (i8*, i8*, i8*)* %process, i8* %info) #1 {
  %1 = icmp eq %struct.T_SKTREE* %root, null
  br i1 %1, label %.thread, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 0
  %4 = load %struct.T_SKTREE** %3, align 8, !tbaa !8
  %5 = tail call i32 @SKTreeTraversePostorder(%struct.T_SKTREE* %4, i32 (i8*, i8*, i8*)* %process, i8* %info) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %.thread

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 1
  %9 = load %struct.T_SKTREE** %8, align 8, !tbaa !11
  %10 = tail call i32 @SKTreeTraversePostorder(%struct.T_SKTREE* %9, i32 (i8*, i8*, i8*)* %process, i8* %info) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %.thread

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 4
  %14 = load i8** %13, align 8, !tbaa !7
  %15 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 5
  %16 = load i8** %15, align 8, !tbaa !2
  %17 = tail call i32 %process(i8* %14, i8* %16, i8* %info) #8
  br label %.thread

.thread:                                          ; preds = %2, %7, %0, %12
  %terminate.1 = phi i32 [ %10, %7 ], [ %17, %12 ], [ 0, %0 ], [ %5, %2 ]
  ret i32 %terminate.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SKTreePrintNodes(%struct.T_SKTREE* readonly %root, i32 %depth, void (i8*, i8*, i32)* %print_node) #1 {
  %1 = icmp eq %struct.T_SKTREE* %root, null
  br i1 %1, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %0, %tailrecurse
  %depth.tr2 = phi i32 [ %4, %tailrecurse ], [ %depth, %0 ]
  %root.tr1 = phi %struct.T_SKTREE* [ %10, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0
  %3 = load %struct.T_SKTREE** %2, align 8, !tbaa !8
  %4 = add nsw i32 %depth.tr2, 1
  tail call void @SKTreePrintNodes(%struct.T_SKTREE* %3, i32 %4, void (i8*, i8*, i32)* %print_node) #9
  %5 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4
  %6 = load i8** %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 5
  %8 = load i8** %7, align 8, !tbaa !2
  tail call void %print_node(i8* %6, i8* %8, i32 %depth.tr2) #8
  %9 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1
  %10 = load %struct.T_SKTREE** %9, align 8, !tbaa !11
  %11 = icmp eq %struct.T_SKTREE* %10, null
  br i1 %11, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SKTreeDebugNodes(%struct.T_SKTREE* readonly %root, i32 %depth) #1 {
  %1 = icmp eq %struct.T_SKTREE* %root, null
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %tailrecurse
  %depth.tr4 = phi i32 [ %4, %tailrecurse ], [ %depth, %0 ]
  %root.tr3 = phi %struct.T_SKTREE* [ %33, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 0
  %3 = load %struct.T_SKTREE** %2, align 8, !tbaa !8
  %4 = add nsw i32 %depth.tr4, 1
  tail call void @SKTreeDebugNodes(%struct.T_SKTREE* %3, i32 %4) #9
  %5 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 4
  %6 = load i8** %5, align 8, !tbaa !7
  %7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i8* %6) #8
  %8 = load %struct.T_SKTREE** %2, align 8, !tbaa !8
  %9 = icmp eq %struct.T_SKTREE* %8, null
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %.lr.ph
  %11 = getelementptr inbounds %struct.T_SKTREE* %8, i64 0, i32 4
  %12 = load i8** %11, align 8, !tbaa !7
  %13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* %12) #8
  br label %15

; <label>:14                                      ; preds = %.lr.ph
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str, i64 0, i64 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 1
  %17 = load %struct.T_SKTREE** %16, align 8, !tbaa !11
  %18 = icmp eq %struct.T_SKTREE* %17, null
  br i1 %18, label %23, label %19

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.T_SKTREE* %17, i64 0, i32 4
  %21 = load i8** %20, align 8, !tbaa !7
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %21) #8
  br label %24

; <label>:23                                      ; preds = %15
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str8, i64 0, i64 0))
  br label %24

; <label>:24                                      ; preds = %23, %19
  %25 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 2
  %26 = load %struct.T_SKTREE** %25, align 8, !tbaa !9
  %27 = icmp eq %struct.T_SKTREE* %26, null
  br i1 %27, label %32, label %28

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds %struct.T_SKTREE* %26, i64 0, i32 4
  %30 = load i8** %29, align 8, !tbaa !7
  %31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i8* %30) #8
  br label %tailrecurse

; <label>:32                                      ; preds = %24
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str9, i64 0, i64 0))
  br label %tailrecurse

tailrecurse:                                      ; preds = %32, %28
  %33 = load %struct.T_SKTREE** %16, align 8, !tbaa !11
  %34 = icmp eq %struct.T_SKTREE* %33, null
  br i1 %34, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* readonly %root, i8* readonly %key) #1 {
  %1 = icmp eq %struct.T_SKTREE* %root, null
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %tailrecurse.backedge
  %root.tr1 = phi %struct.T_SKTREE* [ %root.tr.be, %tailrecurse.backedge ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4
  %3 = load i8** %2, align 8, !tbaa !7
  %4 = tail call i32 @STR_cmpi(i8* %key, i8* %3) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0
  br label %tailrecurse.backedge

; <label>:8                                       ; preds = %.lr.ph
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %tailrecurse._crit_edge

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %10, %6
  %root.tr.be.in = phi %struct.T_SKTREE** [ %11, %10 ], [ %7, %6 ]
  %root.tr.be = load %struct.T_SKTREE** %root.tr.be.in, align 8
  %12 = icmp eq %struct.T_SKTREE* %root.tr.be, null
  br i1 %12, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %8, %tailrecurse.backedge, %0
  %node.0 = phi %struct.T_SKTREE* [ null, %0 ], [ %root.tr1, %8 ], [ null, %tailrecurse.backedge ]
  ret %struct.T_SKTREE* %node.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* readonly %root) #5 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %.0 = phi %struct.T_SKTREE* [ %root, %0 ], [ %3, %1 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %.0, i64 0, i32 0
  %3 = load %struct.T_SKTREE** %2, align 8, !tbaa !8
  %4 = icmp eq %struct.T_SKTREE* %3, null
  br i1 %4, label %5, label %1

; <label>:5                                       ; preds = %1
  ret %struct.T_SKTREE* %.0
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 40}
!3 = !{!"T_SKTREE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 32}
!8 = !{!3, !4, i64 0}
!9 = !{!3, !4, i64 16}
!10 = !{!3, !4, i64 24}
!11 = !{!3, !4, i64 8}
!12 = !{!5, !5, i64 0}

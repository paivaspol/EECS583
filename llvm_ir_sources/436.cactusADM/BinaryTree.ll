; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/BinaryTree.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.T_TREE = type { %struct.T_TREE*, %struct.T_TREE*, %struct.T_TREE*, i8* }

@.str = private unnamed_addr constant [87 x i8] c"$Header: /cactus/Cactus/src/util/BinaryTree.c,v 1.10 2001/05/10 12:35:19 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_BinaryTree_c() #0 {
  ret i8* getelementptr inbounds ([87 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_TREE* @Util_BinTreeStoreData(%struct.T_TREE* %root, %struct.T_TREE* %subtree, i8* %data, i32 (i8*, i8*)* %compare) #1 {
  %1 = icmp eq %struct.T_TREE* %subtree, null
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %0
  %root.tr.lcssa = phi %struct.T_TREE* [ %root, %0 ], [ %subtree.tr3, %tailrecurse.backedge ]
  %2 = tail call i8* @malloc(i64 32) #4
  %3 = bitcast i8* %2 to %struct.T_TREE*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %.loopexit, label %5

; <label>:5                                       ; preds = %tailrecurse._crit_edge
  %6 = getelementptr inbounds i8* %2, i64 24
  %7 = bitcast i8* %6 to i8**
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  store i8* %data, i8** %7, align 8, !tbaa !2
  %8 = icmp eq %struct.T_TREE* %root.tr.lcssa, null
  br i1 %8, label %.loopexit, label %9

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct.T_TREE* %root.tr.lcssa, i64 0, i32 3
  %11 = load i8** %10, align 8, !tbaa !2
  %12 = tail call i32 %compare(i8* %data, i8* %11) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %9
  %15 = bitcast %struct.T_TREE* %root.tr.lcssa to i8**
  store i8* %2, i8** %15, align 8, !tbaa !7
  br label %.loopexit

; <label>:16                                      ; preds = %9
  %17 = getelementptr inbounds %struct.T_TREE* %root.tr.lcssa, i64 0, i32 1
  %18 = bitcast %struct.T_TREE** %17 to i8**
  store i8* %2, i8** %18, align 8, !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %0, %tailrecurse.backedge
  %subtree.tr3 = phi %struct.T_TREE* [ %subtree.tr.be, %tailrecurse.backedge ], [ %subtree, %0 ]
  %root.tr2 = phi %struct.T_TREE* [ %subtree.tr3, %tailrecurse.backedge ], [ %root, %0 ]
  %19 = getelementptr inbounds %struct.T_TREE* %root.tr2, i64 0, i32 3
  %20 = load i8** %19, align 8, !tbaa !2
  %21 = tail call i32 %compare(i8* %data, i8* %20) #4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %.lr.ph
  %24 = getelementptr inbounds %struct.T_TREE* %subtree.tr3, i64 0, i32 0
  br label %tailrecurse.backedge

; <label>:25                                      ; preds = %.lr.ph
  %26 = icmp sgt i32 %21, 0
  br i1 %26, label %27, label %.loopexit

; <label>:27                                      ; preds = %25
  %28 = getelementptr inbounds %struct.T_TREE* %subtree.tr3, i64 0, i32 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %27, %23
  %subtree.tr.be.in = phi %struct.T_TREE** [ %28, %27 ], [ %24, %23 ]
  %subtree.tr.be = load %struct.T_TREE** %subtree.tr.be.in, align 8
  %29 = icmp eq %struct.T_TREE* %subtree.tr.be, null
  br i1 %29, label %tailrecurse._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %25, %16, %14, %tailrecurse._crit_edge, %5
  %merge = phi %struct.T_TREE* [ %3, %5 ], [ %3, %tailrecurse._crit_edge ], [ %3, %14 ], [ %3, %16 ], [ null, %25 ]
  ret %struct.T_TREE* %merge
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreeTraverseInorder(%struct.T_TREE* readonly %root, i32 (i8*, i8*)* %process, i8* %info) #1 {
  %1 = icmp eq %struct.T_TREE* %root, null
  br i1 %1, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_TREE* [ %12, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 0
  %3 = load %struct.T_TREE** %2, align 8, !tbaa !7
  %4 = tail call i32 @Util_BinTreeTraverseInorder(%struct.T_TREE* %3, i32 (i8*, i8*)* %process, i8* %info) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %.thread

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 3
  %8 = load i8** %7, align 8, !tbaa !2
  %9 = tail call i32 %process(i8* %8, i8* %info) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %tailrecurse, label %.thread

tailrecurse:                                      ; preds = %6
  %11 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 1
  %12 = load %struct.T_TREE** %11, align 8, !tbaa !8
  %13 = icmp eq %struct.T_TREE* %12, null
  br i1 %13, label %.thread, label %.lr.ph

.thread:                                          ; preds = %tailrecurse, %6, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %9, %6 ], [ %4, %.lr.ph ]
  ret i32 %terminate.1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreeTraversePreorder(%struct.T_TREE* readonly %root, i32 (i8*, i8*)* %process, i8* %info) #1 {
  %1 = icmp eq %struct.T_TREE* %root, null
  br i1 %1, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_TREE* [ %12, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 3
  %3 = load i8** %2, align 8, !tbaa !2
  %4 = tail call i32 %process(i8* %3, i8* %info) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %.thread

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 0
  %8 = load %struct.T_TREE** %7, align 8, !tbaa !7
  %9 = tail call i32 @Util_BinTreeTraversePreorder(%struct.T_TREE* %8, i32 (i8*, i8*)* %process, i8* %info) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %tailrecurse, label %.thread

tailrecurse:                                      ; preds = %6
  %11 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 1
  %12 = load %struct.T_TREE** %11, align 8, !tbaa !8
  %13 = icmp eq %struct.T_TREE* %12, null
  br i1 %13, label %.thread, label %.lr.ph

.thread:                                          ; preds = %tailrecurse, %6, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %9, %6 ], [ %4, %.lr.ph ]
  ret i32 %terminate.1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreeTraversePostorder(%struct.T_TREE* readonly %root, i32 (i8*, i8*)* %process, i8* %info) #1 {
  %1 = icmp eq %struct.T_TREE* %root, null
  br i1 %1, label %.thread, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.T_TREE* %root, i64 0, i32 0
  %4 = load %struct.T_TREE** %3, align 8, !tbaa !7
  %5 = tail call i32 @Util_BinTreeTraversePostorder(%struct.T_TREE* %4, i32 (i8*, i8*)* %process, i8* %info) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %.thread

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.T_TREE* %root, i64 0, i32 1
  %9 = load %struct.T_TREE** %8, align 8, !tbaa !8
  %10 = tail call i32 @Util_BinTreeTraversePostorder(%struct.T_TREE* %9, i32 (i8*, i8*)* %process, i8* %info) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %.thread

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %struct.T_TREE* %root, i64 0, i32 3
  %14 = load i8** %13, align 8, !tbaa !2
  %15 = tail call i32 %process(i8* %14, i8* %info) #4
  br label %.thread

.thread:                                          ; preds = %2, %7, %0, %12
  %terminate.1 = phi i32 [ %10, %7 ], [ %15, %12 ], [ 0, %0 ], [ %5, %2 ]
  ret i32 %terminate.1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreePrintNodes(%struct.T_TREE* readonly %root, i32 %depth, void (i8*, i32)* %print_node) #1 {
  %1 = icmp eq %struct.T_TREE* %root, null
  br i1 %1, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %0, %tailrecurse
  %depth.tr2 = phi i32 [ %4, %tailrecurse ], [ %depth, %0 ]
  %root.tr1 = phi %struct.T_TREE* [ %9, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 0
  %3 = load %struct.T_TREE** %2, align 8, !tbaa !7
  %4 = add nsw i32 %depth.tr2, 1
  %5 = tail call i32 @Util_BinTreePrintNodes(%struct.T_TREE* %3, i32 %4, void (i8*, i32)* %print_node) #5
  %6 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 3
  %7 = load i8** %6, align 8, !tbaa !2
  tail call void %print_node(i8* %7, i32 %depth.tr2) #4
  %8 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 1
  %9 = load %struct.T_TREE** %8, align 8, !tbaa !8
  %10 = icmp eq %struct.T_TREE* %9, null
  br i1 %10, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %0
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_TREE* @Util_BinTreeFindNode(%struct.T_TREE* readonly %root, i8* %data, i32 (i8*, i8*)* %compare) #1 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %0
  %root.tr = phi %struct.T_TREE* [ %root, %0 ], [ %root.tr.be, %tailrecurse.backedge ]
  %1 = getelementptr inbounds %struct.T_TREE* %root.tr, i64 0, i32 3
  %2 = load i8** %1, align 8, !tbaa !2
  %3 = tail call i32 %compare(i8* %data, i8* %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %tailrecurse
  %6 = getelementptr inbounds %struct.T_TREE* %root.tr, i64 0, i32 0
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %5, %9
  %root.tr.be.in = phi %struct.T_TREE** [ %6, %5 ], [ %10, %9 ]
  %root.tr.be = load %struct.T_TREE** %root.tr.be.in, align 8
  br label %tailrecurse

; <label>:7                                       ; preds = %tailrecurse
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds %struct.T_TREE* %root.tr, i64 0, i32 1
  br label %tailrecurse.backedge

; <label>:11                                      ; preds = %7
  ret %struct.T_TREE* %root.tr
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 24}
!3 = !{!"T_TREE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 0}
!8 = !{!3, !4, i64 8}

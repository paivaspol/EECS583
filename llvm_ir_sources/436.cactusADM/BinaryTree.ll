; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/BinaryTree.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.T_TREE = type { %struct.T_TREE*, %struct.T_TREE*, %struct.T_TREE*, i8* }

@.str = private unnamed_addr constant [87 x i8] c"$Header: /cactus/Cactus/src/util/BinaryTree.c,v 1.10 2001/05/10 12:35:19 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_BinaryTree_c() #0 {
  ret i8* getelementptr inbounds ([87 x i8]* @.str, i64 0, i64 0), !dbg !85
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_TREE* @Util_BinTreeStoreData(%struct.T_TREE* %root, %struct.T_TREE* %subtree, i8* %data, i32 (i8*, i8*)* %compare) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %root, i64 0, metadata !32, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %subtree, i64 0, metadata !33, metadata !86), !dbg !88
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !34, metadata !86), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %compare, i64 0, metadata !35, metadata !86), !dbg !90
  %1 = icmp eq %struct.T_TREE* %subtree, null, !dbg !91
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !93

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %0
  %root.tr.lcssa = phi %struct.T_TREE* [ %root, %0 ], [ %subtree.tr3, %tailrecurse.backedge ]
  %2 = tail call i8* @malloc(i64 32) #5, !dbg !94
  %3 = bitcast i8* %2 to %struct.T_TREE*, !dbg !96
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %3, i64 0, metadata !33, metadata !86), !dbg !88
  %4 = icmp eq i8* %2, null, !dbg !97
  br i1 %4, label %.loopexit, label %5, !dbg !99

; <label>:5                                       ; preds = %tailrecurse._crit_edge
  %6 = getelementptr inbounds i8* %2, i64 24, !dbg !100
  %7 = bitcast i8* %6 to i8**, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false), !dbg !102
  store i8* %data, i8** %7, align 8, !dbg !103, !tbaa !104
  %8 = icmp eq %struct.T_TREE* %root.tr.lcssa, null, !dbg !109
  br i1 %8, label %.loopexit, label %9, !dbg !111

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct.T_TREE* %root.tr.lcssa, i64 0, i32 3, !dbg !112
  %11 = load i8** %10, align 8, !dbg !112, !tbaa !104
  %12 = tail call i32 %compare(i8* %data, i8* %11) #5, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !36, metadata !86), !dbg !116
  %13 = icmp slt i32 %12, 0, !dbg !117
  br i1 %13, label %14, label %16, !dbg !118

; <label>:14                                      ; preds = %9
  %15 = bitcast %struct.T_TREE* %root.tr.lcssa to i8**, !dbg !119
  store i8* %2, i8** %15, align 8, !dbg !119, !tbaa !121
  br label %.loopexit, !dbg !122

; <label>:16                                      ; preds = %9
  %17 = getelementptr inbounds %struct.T_TREE* %root.tr.lcssa, i64 0, i32 1, !dbg !123
  %18 = bitcast %struct.T_TREE** %17 to i8**, !dbg !125
  store i8* %2, i8** %18, align 8, !dbg !125, !tbaa !126
  br label %.loopexit

.lr.ph:                                           ; preds = %0, %tailrecurse.backedge
  %subtree.tr3 = phi %struct.T_TREE* [ %subtree.tr.be, %tailrecurse.backedge ], [ %subtree, %0 ]
  %root.tr2 = phi %struct.T_TREE* [ %subtree.tr3, %tailrecurse.backedge ], [ %root, %0 ]
  %19 = getelementptr inbounds %struct.T_TREE* %root.tr2, i64 0, i32 3, !dbg !127
  %20 = load i8** %19, align 8, !dbg !127, !tbaa !104
  %21 = tail call i32 %compare(i8* %data, i8* %20) #5, !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !36, metadata !86), !dbg !116
  %22 = icmp slt i32 %21, 0, !dbg !131
  br i1 %22, label %23, label %25, !dbg !132

; <label>:23                                      ; preds = %.lr.ph
  %24 = getelementptr inbounds %struct.T_TREE* %subtree.tr3, i64 0, i32 0, !dbg !133
  br label %tailrecurse.backedge, !dbg !135

; <label>:25                                      ; preds = %.lr.ph
  %26 = icmp sgt i32 %21, 0, !dbg !136
  br i1 %26, label %27, label %.loopexit, !dbg !138

; <label>:27                                      ; preds = %25
  %28 = getelementptr inbounds %struct.T_TREE* %subtree.tr3, i64 0, i32 1, !dbg !139
  br label %tailrecurse.backedge, !dbg !141

tailrecurse.backedge:                             ; preds = %27, %23
  %subtree.tr.be.in = phi %struct.T_TREE** [ %28, %27 ], [ %24, %23 ]
  %subtree.tr.be = load %struct.T_TREE** %subtree.tr.be.in, align 8, !dbg !139
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %subtree.tr3, i64 0, metadata !32, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %subtree.tr.be, i64 0, metadata !33, metadata !86), !dbg !88
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !34, metadata !86), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %compare, i64 0, metadata !35, metadata !86), !dbg !90
  %29 = icmp eq %struct.T_TREE* %subtree.tr.be, null, !dbg !91
  br i1 %29, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !93

.loopexit:                                        ; preds = %25, %16, %14, %tailrecurse._crit_edge, %5
  %merge = phi %struct.T_TREE* [ %3, %5 ], [ %3, %tailrecurse._crit_edge ], [ %3, %14 ], [ %3, %16 ], [ null, %25 ]
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* null, i64 0, metadata !33, metadata !86), !dbg !88
  ret %struct.T_TREE* %merge, !dbg !142
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreeTraverseInorder(%struct.T_TREE* readonly %root, i32 (i8*, i8*)* %process, i8* %info) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %root, i64 0, metadata !44, metadata !86), !dbg !143
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %process, i64 0, metadata !45, metadata !86), !dbg !144
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !46, metadata !86), !dbg !145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !86), !dbg !146
  %1 = icmp eq %struct.T_TREE* %root, null, !dbg !147
  br i1 %1, label %.thread, label %.lr.ph, !dbg !149

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_TREE* [ %12, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 0, !dbg !150
  %3 = load %struct.T_TREE** %2, align 8, !dbg !150, !tbaa !121
  %4 = tail call i32 @Util_BinTreeTraverseInorder(%struct.T_TREE* %3, i32 (i8*, i8*)* %process, i8* %info) #6, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !47, metadata !86), !dbg !146
  %5 = icmp eq i32 %4, 0, !dbg !153
  br i1 %5, label %6, label %.thread, !dbg !155

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 3, !dbg !156
  %8 = load i8** %7, align 8, !dbg !156, !tbaa !104
  %9 = tail call i32 %process(i8* %8, i8* %info) #5, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !47, metadata !86), !dbg !146
  %10 = icmp eq i32 %9, 0, !dbg !158
  br i1 %10, label %tailrecurse, label %.thread, !dbg !160

tailrecurse:                                      ; preds = %6
  %11 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 1, !dbg !161
  %12 = load %struct.T_TREE** %11, align 8, !dbg !161, !tbaa !126
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %12, i64 0, metadata !44, metadata !86), !dbg !143
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %process, i64 0, metadata !45, metadata !86), !dbg !144
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !46, metadata !86), !dbg !145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !86), !dbg !146
  %13 = icmp eq %struct.T_TREE* %12, null, !dbg !147
  br i1 %13, label %.thread, label %.lr.ph, !dbg !149

.thread:                                          ; preds = %tailrecurse, %6, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %9, %6 ], [ %4, %.lr.ph ]
  ret i32 %terminate.1, !dbg !162
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreeTraversePreorder(%struct.T_TREE* readonly %root, i32 (i8*, i8*)* %process, i8* %info) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %root, i64 0, metadata !50, metadata !86), !dbg !163
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %process, i64 0, metadata !51, metadata !86), !dbg !164
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !52, metadata !86), !dbg !165
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !53, metadata !86), !dbg !166
  %1 = icmp eq %struct.T_TREE* %root, null, !dbg !167
  br i1 %1, label %.thread, label %.lr.ph, !dbg !169

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_TREE* [ %12, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 3, !dbg !170
  %3 = load i8** %2, align 8, !dbg !170, !tbaa !104
  %4 = tail call i32 %process(i8* %3, i8* %info) #5, !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !53, metadata !86), !dbg !166
  %5 = icmp eq i32 %4, 0, !dbg !173
  br i1 %5, label %6, label %.thread, !dbg !175

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 0, !dbg !176
  %8 = load %struct.T_TREE** %7, align 8, !dbg !176, !tbaa !121
  %9 = tail call i32 @Util_BinTreeTraversePreorder(%struct.T_TREE* %8, i32 (i8*, i8*)* %process, i8* %info) #6, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !53, metadata !86), !dbg !166
  %10 = icmp eq i32 %9, 0, !dbg !178
  br i1 %10, label %tailrecurse, label %.thread, !dbg !180

tailrecurse:                                      ; preds = %6
  %11 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 1, !dbg !181
  %12 = load %struct.T_TREE** %11, align 8, !dbg !181, !tbaa !126
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %12, i64 0, metadata !50, metadata !86), !dbg !163
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %process, i64 0, metadata !51, metadata !86), !dbg !164
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !52, metadata !86), !dbg !165
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !53, metadata !86), !dbg !166
  %13 = icmp eq %struct.T_TREE* %12, null, !dbg !167
  br i1 %13, label %.thread, label %.lr.ph, !dbg !169

.thread:                                          ; preds = %tailrecurse, %6, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %9, %6 ], [ %4, %.lr.ph ]
  ret i32 %terminate.1, !dbg !182
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreeTraversePostorder(%struct.T_TREE* readonly %root, i32 (i8*, i8*)* %process, i8* %info) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %root, i64 0, metadata !56, metadata !86), !dbg !183
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %process, i64 0, metadata !57, metadata !86), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !58, metadata !86), !dbg !185
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !59, metadata !86), !dbg !186
  %1 = icmp eq %struct.T_TREE* %root, null, !dbg !187
  br i1 %1, label %.thread, label %2, !dbg !189

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.T_TREE* %root, i64 0, i32 0, !dbg !190
  %4 = load %struct.T_TREE** %3, align 8, !dbg !190, !tbaa !121
  %5 = tail call i32 @Util_BinTreeTraversePostorder(%struct.T_TREE* %4, i32 (i8*, i8*)* %process, i8* %info) #6, !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !59, metadata !86), !dbg !186
  %6 = icmp eq i32 %5, 0, !dbg !193
  br i1 %6, label %7, label %.thread, !dbg !195

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.T_TREE* %root, i64 0, i32 1, !dbg !196
  %9 = load %struct.T_TREE** %8, align 8, !dbg !196, !tbaa !126
  %10 = tail call i32 @Util_BinTreeTraversePostorder(%struct.T_TREE* %9, i32 (i8*, i8*)* %process, i8* %info) #6, !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !59, metadata !86), !dbg !186
  %11 = icmp eq i32 %10, 0, !dbg !198
  br i1 %11, label %12, label %.thread, !dbg !200

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %struct.T_TREE* %root, i64 0, i32 3, !dbg !201
  %14 = load i8** %13, align 8, !dbg !201, !tbaa !104
  %15 = tail call i32 %process(i8* %14, i8* %info) #5, !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !59, metadata !86), !dbg !186
  br label %.thread, !dbg !203

.thread:                                          ; preds = %2, %7, %0, %12
  %terminate.1 = phi i32 [ %10, %7 ], [ %15, %12 ], [ 0, %0 ], [ %5, %2 ]
  ret i32 %terminate.1, !dbg !204
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_BinTreePrintNodes(%struct.T_TREE* readonly %root, i32 %depth, void (i8*, i32)* %print_node) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %root, i64 0, metadata !67, metadata !86), !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %depth, i64 0, metadata !68, metadata !86), !dbg !206
  tail call void @llvm.dbg.value(metadata void (i8*, i32)* %print_node, i64 0, metadata !69, metadata !86), !dbg !207
  %1 = icmp eq %struct.T_TREE* %root, null, !dbg !208
  br i1 %1, label %tailrecurse._crit_edge, label %tailrecurse, !dbg !210

tailrecurse:                                      ; preds = %0, %tailrecurse
  %depth.tr2 = phi i32 [ %4, %tailrecurse ], [ %depth, %0 ]
  %root.tr1 = phi %struct.T_TREE* [ %9, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 0, !dbg !211
  %3 = load %struct.T_TREE** %2, align 8, !dbg !211, !tbaa !121
  %4 = add nsw i32 %depth.tr2, 1, !dbg !213
  %5 = tail call i32 @Util_BinTreePrintNodes(%struct.T_TREE* %3, i32 %4, void (i8*, i32)* %print_node) #6, !dbg !214
  %6 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 3, !dbg !215
  %7 = load i8** %6, align 8, !dbg !215, !tbaa !104
  tail call void %print_node(i8* %7, i32 %depth.tr2) #5, !dbg !216
  %8 = getelementptr inbounds %struct.T_TREE* %root.tr1, i64 0, i32 1, !dbg !217
  %9 = load %struct.T_TREE** %8, align 8, !dbg !217, !tbaa !126
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %9, i64 0, metadata !67, metadata !86), !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !68, metadata !86), !dbg !206
  tail call void @llvm.dbg.value(metadata void (i8*, i32)* %print_node, i64 0, metadata !69, metadata !86), !dbg !207
  %10 = icmp eq %struct.T_TREE* %9, null, !dbg !208
  br i1 %10, label %tailrecurse._crit_edge, label %tailrecurse, !dbg !210

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %0
  ret i32 0, !dbg !218
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_TREE* @Util_BinTreeFindNode(%struct.T_TREE* readonly %root, i8* %data, i32 (i8*, i8*)* %compare) #1 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %0
  %root.tr = phi %struct.T_TREE* [ %root, %0 ], [ %root.tr.be, %tailrecurse.backedge ]
  tail call void @llvm.dbg.value(metadata %struct.T_TREE* %root.tr, i64 0, metadata !74, metadata !86), !dbg !219
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !75, metadata !86), !dbg !220
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %compare, i64 0, metadata !76, metadata !86), !dbg !221
  %1 = getelementptr inbounds %struct.T_TREE* %root.tr, i64 0, i32 3, !dbg !222
  %2 = load i8** %1, align 8, !dbg !222, !tbaa !104
  %3 = tail call i32 %compare(i8* %data, i8* %2) #5, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !77, metadata !86), !dbg !225
  %4 = icmp slt i32 %3, 0, !dbg !226
  br i1 %4, label %5, label %7, !dbg !227

; <label>:5                                       ; preds = %tailrecurse
  %6 = getelementptr inbounds %struct.T_TREE* %root.tr, i64 0, i32 0, !dbg !228
  br label %tailrecurse.backedge, !dbg !230

tailrecurse.backedge:                             ; preds = %5, %9
  %root.tr.be.in = phi %struct.T_TREE** [ %6, %5 ], [ %10, %9 ]
  %root.tr.be = load %struct.T_TREE** %root.tr.be.in, align 8, !dbg !228
  br label %tailrecurse

; <label>:7                                       ; preds = %tailrecurse
  %8 = icmp sgt i32 %3, 0, !dbg !231
  br i1 %8, label %9, label %11, !dbg !233

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds %struct.T_TREE* %root.tr, i64 0, i32 1, !dbg !234
  br label %tailrecurse.backedge, !dbg !236

; <label>:11                                      ; preds = %7
  ret %struct.T_TREE* %root.tr, !dbg !237
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!81, !82, !83}
!llvm.ident = !{!84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !15, globals: !79, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/BinaryTree.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uBinTree", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/util_BinaryTree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "T_TREE", file: !6, line: 19, size: 256, align: 64, elements: !8)
!8 = !{!9, !11, !12, !13}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !7, file: !6, line: 21, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !7, file: !6, line: 22, baseType: !10, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !6, line: 23, baseType: !10, size: 64, align: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 25, baseType: !14, size: 64, align: 64, offset: 192)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !{!16, !22, !37, !48, !54, !60, !70}
!16 = !DISubprogram(name: "CCTKi_version_util_BinaryTree_c", scope: !1, file: !1, line: 23, type: !17, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_BinaryTree_c, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DISubprogram(name: "Util_BinTreeStoreData", scope: !1, file: !1, line: 82, type: !23, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: %struct.T_TREE* (%struct.T_TREE*, %struct.T_TREE*, i8*, i32 (i8*, i8*)*)* @Util_BinTreeStoreData, variables: !31)
!23 = !DISubroutineType(types: !24)
!24 = !{!4, !4, !4, !14, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !29, !29}
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!31 = !{!32, !33, !34, !35, !36}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !22, file: !1, line: 82, type: !4)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "subtree", arg: 2, scope: !22, file: !1, line: 83, type: !4)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !22, file: !1, line: 84, type: !14)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare", arg: 4, scope: !22, file: !1, line: 85, type: !25)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !22, file: !1, line: 87, type: !28)
!37 = !DISubprogram(name: "Util_BinTreeTraverseInorder", scope: !1, file: !1, line: 181, type: !38, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.T_TREE*, i32 (i8*, i8*)*, i8*)* @Util_BinTreeTraverseInorder, variables: !43)
!38 = !DISubroutineType(types: !39)
!39 = !{!28, !4, !40, !14}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!28, !14, !14}
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !37, file: !1, line: 181, type: !4)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "process", arg: 2, scope: !37, file: !1, line: 182, type: !40)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 3, scope: !37, file: !1, line: 183, type: !14)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !37, file: !1, line: 185, type: !28)
!48 = !DISubprogram(name: "Util_BinTreeTraversePreorder", scope: !1, file: !1, line: 241, type: !38, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.T_TREE*, i32 (i8*, i8*)*, i8*)* @Util_BinTreeTraversePreorder, variables: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !48, file: !1, line: 241, type: !4)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "process", arg: 2, scope: !48, file: !1, line: 242, type: !40)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 3, scope: !48, file: !1, line: 243, type: !14)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !48, file: !1, line: 245, type: !28)
!54 = !DISubprogram(name: "Util_BinTreeTraversePostorder", scope: !1, file: !1, line: 301, type: !38, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.T_TREE*, i32 (i8*, i8*)*, i8*)* @Util_BinTreeTraversePostorder, variables: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !54, file: !1, line: 301, type: !4)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "process", arg: 2, scope: !54, file: !1, line: 302, type: !40)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 3, scope: !54, file: !1, line: 303, type: !14)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !54, file: !1, line: 305, type: !28)
!60 = !DISubprogram(name: "Util_BinTreePrintNodes", scope: !1, file: !1, line: 358, type: !61, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.T_TREE*, i32, void (i8*, i32)*)* @Util_BinTreePrintNodes, variables: !66)
!61 = !DISubroutineType(types: !62)
!62 = !{!28, !4, !28, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !14, !28}
!66 = !{!67, !68, !69}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !60, file: !1, line: 358, type: !4)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "depth", arg: 2, scope: !60, file: !1, line: 359, type: !28)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "print_node", arg: 3, scope: !60, file: !1, line: 360, type: !63)
!70 = !DISubprogram(name: "Util_BinTreeFindNode", scope: !1, file: !1, line: 417, type: !71, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: %struct.T_TREE* (%struct.T_TREE*, i8*, i32 (i8*, i8*)*)* @Util_BinTreeFindNode, variables: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!4, !4, !14, !25}
!73 = !{!74, !75, !76, !77, !78}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !70, file: !1, line: 417, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !70, file: !1, line: 418, type: !14)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare", arg: 3, scope: !70, file: !1, line: 419, type: !25)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !70, file: !1, line: 421, type: !28)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !70, file: !1, line: 423, type: !4)
!79 = !{!80}
!80 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 21, type: !19, isLocal: true, isDefinition: true)
!81 = !{i32 2, !"Dwarf Version", i32 2}
!82 = !{i32 2, !"Debug Info Version", i32 700000003}
!83 = !{i32 1, !"PIC Level", i32 2}
!84 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!85 = !DILocation(line: 23, column: 1, scope: !16)
!86 = !DIExpression()
!87 = !DILocation(line: 82, column: 43, scope: !22)
!88 = !DILocation(line: 83, column: 43, scope: !22)
!89 = !DILocation(line: 84, column: 39, scope: !22)
!90 = !DILocation(line: 85, column: 39, scope: !22)
!91 = !DILocation(line: 89, column: 7, scope: !92)
!92 = distinct !DILexicalBlock(scope: !22, file: !1, line: 89, column: 6)
!93 = !DILocation(line: 89, column: 6, scope: !22)
!94 = !DILocation(line: 92, column: 27, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 90, column: 3)
!96 = !DILocation(line: 92, column: 15, scope: !95)
!97 = !DILocation(line: 93, column: 8, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 93, column: 8)
!99 = !DILocation(line: 93, column: 8, scope: !95)
!100 = !DILocation(line: 98, column: 16, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 94, column: 5)
!102 = !DILocation(line: 96, column: 21, scope: !101)
!103 = !DILocation(line: 98, column: 21, scope: !101)
!104 = !{!105, !106, i64 24}
!105 = !{!"T_TREE", !106, i64 0, !106, i64 8, !106, i64 16, !106, i64 24}
!106 = !{!"any pointer", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !DILocation(line: 100, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !1, line: 100, column: 10)
!111 = !DILocation(line: 100, column: 10, scope: !101)
!112 = !DILocation(line: 102, column: 41, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 102, column: 12)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 101, column: 7)
!115 = !DILocation(line: 102, column: 21, scope: !113)
!116 = !DILocation(line: 87, column: 7, scope: !22)
!117 = !DILocation(line: 102, column: 48, scope: !113)
!118 = !DILocation(line: 102, column: 12, scope: !114)
!119 = !DILocation(line: 104, column: 22, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !1, line: 103, column: 9)
!121 = !{!105, !106, i64 0}
!122 = !DILocation(line: 105, column: 9, scope: !120)
!123 = !DILocation(line: 108, column: 17, scope: !124)
!124 = distinct !DILexicalBlock(scope: !113, file: !1, line: 107, column: 9)
!125 = !DILocation(line: 108, column: 23, scope: !124)
!126 = !{!105, !106, i64 8}
!127 = !DILocation(line: 116, column: 37, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 116, column: 8)
!129 = distinct !DILexicalBlock(scope: !92, file: !1, line: 114, column: 3)
!130 = !DILocation(line: 116, column: 17, scope: !128)
!131 = !DILocation(line: 116, column: 44, scope: !128)
!132 = !DILocation(line: 116, column: 8, scope: !129)
!133 = !DILocation(line: 118, column: 57, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 117, column: 5)
!135 = !DILocation(line: 118, column: 17, scope: !134)
!136 = !DILocation(line: 120, column: 19, scope: !137)
!137 = distinct !DILexicalBlock(scope: !128, file: !1, line: 120, column: 13)
!138 = !DILocation(line: 120, column: 13, scope: !128)
!139 = !DILocation(line: 122, column: 57, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !1, line: 121, column: 5)
!141 = !DILocation(line: 122, column: 17, scope: !140)
!142 = !DILocation(line: 124, column: 13, scope: !137)
!143 = !DILocation(line: 181, column: 43, scope: !37)
!144 = !DILocation(line: 182, column: 39, scope: !37)
!145 = !DILocation(line: 183, column: 39, scope: !37)
!146 = !DILocation(line: 185, column: 7, scope: !37)
!147 = !DILocation(line: 189, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !37, file: !1, line: 189, column: 6)
!149 = !DILocation(line: 189, column: 6, scope: !37)
!150 = !DILocation(line: 191, column: 51, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 190, column: 3)
!152 = !DILocation(line: 191, column: 17, scope: !151)
!153 = !DILocation(line: 192, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 192, column: 8)
!155 = !DILocation(line: 192, column: 8, scope: !151)
!156 = !DILocation(line: 192, column: 46, scope: !154)
!157 = !DILocation(line: 192, column: 32, scope: !154)
!158 = !DILocation(line: 193, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 193, column: 8)
!160 = !DILocation(line: 193, column: 8, scope: !151)
!161 = !DILocation(line: 193, column: 66, scope: !159)
!162 = !DILocation(line: 196, column: 3, scope: !37)
!163 = !DILocation(line: 241, column: 44, scope: !48)
!164 = !DILocation(line: 242, column: 40, scope: !48)
!165 = !DILocation(line: 243, column: 40, scope: !48)
!166 = !DILocation(line: 245, column: 7, scope: !48)
!167 = !DILocation(line: 249, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !48, file: !1, line: 249, column: 6)
!169 = !DILocation(line: 249, column: 6, scope: !48)
!170 = !DILocation(line: 251, column: 31, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !1, line: 250, column: 3)
!172 = !DILocation(line: 251, column: 17, scope: !171)
!173 = !DILocation(line: 252, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 252, column: 8)
!175 = !DILocation(line: 252, column: 8, scope: !171)
!176 = !DILocation(line: 252, column: 67, scope: !174)
!177 = !DILocation(line: 252, column: 32, scope: !174)
!178 = !DILocation(line: 253, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !171, file: !1, line: 253, column: 8)
!180 = !DILocation(line: 253, column: 8, scope: !171)
!181 = !DILocation(line: 253, column: 67, scope: !179)
!182 = !DILocation(line: 256, column: 3, scope: !48)
!183 = !DILocation(line: 301, column: 45, scope: !54)
!184 = !DILocation(line: 302, column: 41, scope: !54)
!185 = !DILocation(line: 303, column: 41, scope: !54)
!186 = !DILocation(line: 305, column: 7, scope: !54)
!187 = !DILocation(line: 309, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !54, file: !1, line: 309, column: 6)
!189 = !DILocation(line: 309, column: 6, scope: !54)
!190 = !DILocation(line: 311, column: 53, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 310, column: 3)
!192 = !DILocation(line: 311, column: 17, scope: !191)
!193 = !DILocation(line: 312, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 312, column: 8)
!195 = !DILocation(line: 312, column: 8, scope: !191)
!196 = !DILocation(line: 312, column: 68, scope: !194)
!197 = !DILocation(line: 312, column: 32, scope: !194)
!198 = !DILocation(line: 313, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !1, line: 313, column: 8)
!200 = !DILocation(line: 313, column: 8, scope: !191)
!201 = !DILocation(line: 313, column: 46, scope: !199)
!202 = !DILocation(line: 313, column: 32, scope: !199)
!203 = !DILocation(line: 313, column: 20, scope: !199)
!204 = !DILocation(line: 316, column: 3, scope: !54)
!205 = !DILocation(line: 358, column: 38, scope: !60)
!206 = !DILocation(line: 359, column: 32, scope: !60)
!207 = !DILocation(line: 360, column: 35, scope: !60)
!208 = !DILocation(line: 362, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !60, file: !1, line: 362, column: 6)
!210 = !DILocation(line: 362, column: 6, scope: !60)
!211 = !DILocation(line: 364, column: 34, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 363, column: 3)
!213 = !DILocation(line: 364, column: 45, scope: !212)
!214 = !DILocation(line: 364, column: 5, scope: !212)
!215 = !DILocation(line: 365, column: 22, scope: !212)
!216 = !DILocation(line: 365, column: 5, scope: !212)
!217 = !DILocation(line: 366, column: 34, scope: !212)
!218 = !DILocation(line: 368, column: 3, scope: !60)
!219 = !DILocation(line: 417, column: 42, scope: !70)
!220 = !DILocation(line: 418, column: 38, scope: !70)
!221 = !DILocation(line: 419, column: 38, scope: !70)
!222 = !DILocation(line: 426, column: 35, scope: !223)
!223 = distinct !DILexicalBlock(scope: !70, file: !1, line: 426, column: 6)
!224 = !DILocation(line: 426, column: 15, scope: !223)
!225 = !DILocation(line: 421, column: 7, scope: !70)
!226 = !DILocation(line: 426, column: 42, scope: !223)
!227 = !DILocation(line: 426, column: 6, scope: !70)
!228 = !DILocation(line: 428, column: 39, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !1, line: 427, column: 3)
!230 = !DILocation(line: 428, column: 12, scope: !229)
!231 = !DILocation(line: 430, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !223, file: !1, line: 430, column: 11)
!233 = !DILocation(line: 430, column: 11, scope: !223)
!234 = !DILocation(line: 432, column: 39, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 431, column: 3)
!236 = !DILocation(line: 432, column: 12, scope: !235)
!237 = !DILocation(line: 444, column: 3, scope: !70)

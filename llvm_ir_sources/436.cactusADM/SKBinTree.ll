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
  ret i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), !dbg !108
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE* %root, %struct.T_SKTREE* %subtree, i8* %key, i8* %data) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !29, metadata !109), !dbg !110
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %subtree, i64 0, metadata !30, metadata !109), !dbg !111
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !31, metadata !109), !dbg !112
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !32, metadata !109), !dbg !113
  %1 = icmp eq %struct.T_SKTREE* %subtree, null, !dbg !114
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !116

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %0
  %root.tr.lcssa = phi %struct.T_SKTREE* [ %root, %0 ], [ %subtree.tr2, %tailrecurse.backedge ]
  %2 = tail call i8* @malloc(i64 48) #8, !dbg !117
  %3 = bitcast i8* %2 to %struct.T_SKTREE*, !dbg !119
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %3, i64 0, metadata !35, metadata !109), !dbg !120
  %4 = icmp eq i8* %2, null, !dbg !121
  br i1 %4, label %.loopexit, label %5, !dbg !123

; <label>:5                                       ; preds = %tailrecurse._crit_edge
  %6 = getelementptr inbounds i8* %2, i64 16, !dbg !124
  %7 = bitcast i8* %6 to %struct.T_SKTREE**, !dbg !124
  %8 = getelementptr inbounds i8* %2, i64 24, !dbg !126
  %9 = bitcast i8* %8 to %struct.T_SKTREE**, !dbg !126
  %10 = getelementptr inbounds i8* %2, i64 40, !dbg !127
  %11 = bitcast i8* %10 to i8**, !dbg !127
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 32, i32 8, i1 false), !dbg !128
  store i8* %data, i8** %11, align 8, !dbg !129, !tbaa !130
  %12 = tail call i64 @strlen(i8* %key) #8, !dbg !135
  %13 = add i64 %12, 1, !dbg !136
  %14 = tail call i8* @malloc(i64 %13) #8, !dbg !137
  %15 = getelementptr inbounds i8* %2, i64 32, !dbg !138
  %16 = bitcast i8* %15 to i8**, !dbg !138
  store i8* %14, i8** %16, align 8, !dbg !139, !tbaa !140
  %17 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %14, i1 false), !dbg !141
  %18 = tail call i8* @__strcpy_chk(i8* %14, i8* %key, i64 %17) #8, !dbg !141
  %19 = icmp eq %struct.T_SKTREE* %root.tr.lcssa, null, !dbg !142
  br i1 %19, label %.loopexit, label %20, !dbg !144

; <label>:20                                      ; preds = %5
  %21 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 4, !dbg !145
  %22 = load i8** %21, align 8, !dbg !145, !tbaa !140
  %23 = tail call i32 @STR_cmpi(i8* %key, i8* %22) #9, !dbg !145
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !33, metadata !109), !dbg !148
  %24 = icmp slt i32 %23, 0, !dbg !149
  br i1 %24, label %25, label %33, !dbg !150

; <label>:25                                      ; preds = %20
  %26 = bitcast %struct.T_SKTREE* %root.tr.lcssa to i8**, !dbg !151
  store i8* %2, i8** %26, align 8, !dbg !151, !tbaa !153
  store %struct.T_SKTREE* %root.tr.lcssa, %struct.T_SKTREE** %7, align 8, !dbg !154, !tbaa !155
  %27 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 3, !dbg !156
  %28 = load %struct.T_SKTREE** %27, align 8, !dbg !156, !tbaa !157
  store %struct.T_SKTREE* %28, %struct.T_SKTREE** %9, align 8, !dbg !158, !tbaa !157
  %29 = icmp eq %struct.T_SKTREE* %28, null, !dbg !159
  br i1 %29, label %.loopexit, label %30, !dbg !161

; <label>:30                                      ; preds = %25
  %31 = getelementptr inbounds %struct.T_SKTREE* %28, i64 0, i32 2, !dbg !162
  %32 = bitcast %struct.T_SKTREE** %31 to i8**, !dbg !164
  store i8* %2, i8** %32, align 8, !dbg !164, !tbaa !155
  br label %.loopexit, !dbg !165

; <label>:33                                      ; preds = %20
  %34 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 1, !dbg !166
  %35 = bitcast %struct.T_SKTREE** %34 to i8**, !dbg !168
  store i8* %2, i8** %35, align 8, !dbg !168, !tbaa !169
  %36 = getelementptr inbounds %struct.T_SKTREE* %root.tr.lcssa, i64 0, i32 2, !dbg !170
  %37 = bitcast %struct.T_SKTREE** %36 to i64*, !dbg !170
  %38 = load i64* %37, align 8, !dbg !170, !tbaa !155
  %39 = bitcast i8* %6 to i64*, !dbg !171
  store i64 %38, i64* %39, align 8, !dbg !171, !tbaa !155
  store %struct.T_SKTREE* %root.tr.lcssa, %struct.T_SKTREE** %9, align 8, !dbg !172, !tbaa !157
  %40 = bitcast %struct.T_SKTREE** %36 to i8**, !dbg !173
  store i8* %2, i8** %40, align 8, !dbg !173, !tbaa !155
  br label %.loopexit

.lr.ph:                                           ; preds = %0, %tailrecurse.backedge
  %subtree.tr2 = phi %struct.T_SKTREE* [ %subtree.tr.be, %tailrecurse.backedge ], [ %subtree, %0 ]
  %41 = getelementptr inbounds %struct.T_SKTREE* %subtree.tr2, i64 0, i32 4, !dbg !174
  %42 = load i8** %41, align 8, !dbg !174, !tbaa !140
  %43 = tail call i32 @STR_cmpi(i8* %key, i8* %42) #9, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !33, metadata !109), !dbg !148
  %44 = icmp slt i32 %43, 0, !dbg !177
  br i1 %44, label %45, label %47, !dbg !178

; <label>:45                                      ; preds = %.lr.ph
  %46 = getelementptr inbounds %struct.T_SKTREE* %subtree.tr2, i64 0, i32 0, !dbg !179
  br label %tailrecurse.backedge, !dbg !181

; <label>:47                                      ; preds = %.lr.ph
  %48 = icmp sgt i32 %43, 0, !dbg !182
  br i1 %48, label %49, label %.loopexit, !dbg !184

; <label>:49                                      ; preds = %47
  %50 = getelementptr inbounds %struct.T_SKTREE* %subtree.tr2, i64 0, i32 1, !dbg !185
  br label %tailrecurse.backedge, !dbg !187

tailrecurse.backedge:                             ; preds = %49, %45
  %subtree.tr.be.in = phi %struct.T_SKTREE** [ %50, %49 ], [ %46, %45 ]
  %subtree.tr.be = load %struct.T_SKTREE** %subtree.tr.be.in, align 8, !dbg !185
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %subtree.tr2, i64 0, metadata !29, metadata !109), !dbg !110
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %subtree.tr.be, i64 0, metadata !30, metadata !109), !dbg !111
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !31, metadata !109), !dbg !112
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !32, metadata !109), !dbg !113
  %51 = icmp eq %struct.T_SKTREE* %subtree.tr.be, null, !dbg !114
  br i1 %51, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !116

.loopexit:                                        ; preds = %47, %25, %5, %tailrecurse._crit_edge, %33, %30
  %newsubtree.0 = phi %struct.T_SKTREE* [ %3, %30 ], [ %3, %25 ], [ %3, %33 ], [ %3, %5 ], [ %3, %tailrecurse._crit_edge ], [ null, %47 ]
  ret %struct.T_SKTREE* %newsubtree.0, !dbg !188
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
  tail call void @llvm.dbg.value(metadata i8* %string1, i64 0, metadata !92, metadata !109), !dbg !189
  tail call void @llvm.dbg.value(metadata i8* %string2, i64 0, metadata !93, metadata !109), !dbg !190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !109), !dbg !191
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !95, metadata !109), !dbg !192
  %1 = load i8* %string1, align 1, !dbg !193, !tbaa !198
  %2 = icmp eq i8 %1, 0, !dbg !193
  br i1 %2, label %.critedge.thread, label %.lr.ph, !dbg !199

; <label>:3                                       ; preds = %10
  %4 = getelementptr inbounds i8* %string1, i64 %indvars.iv.next, !dbg !193
  %5 = load i8* %4, align 1, !dbg !193, !tbaa !198
  %6 = icmp eq i8 %5, 0, !dbg !193
  br i1 %6, label %.critedge, label %.lr.ph, !dbg !199

.lr.ph:                                           ; preds = %0, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %3 ], [ 0, %0 ]
  %.in = phi i8 [ %5, %3 ], [ %1, %0 ]
  %retval.01 = phi i32 [ %16, %3 ], [ 0, %0 ]
  %7 = getelementptr inbounds i8* %string2, i64 %indvars.iv, !dbg !200
  %8 = load i8* %7, align 1, !dbg !200, !tbaa !198
  %9 = icmp eq i8 %8, 0, !dbg !199
  br i1 %9, label %.critedge, label %10, !dbg !201

; <label>:10                                      ; preds = %.lr.ph
  %11 = sext i8 %.in to i32, !dbg !193
  %12 = tail call i32 @__tolower(i32 %11) #8, !dbg !202
  %13 = load i8* %7, align 1, !dbg !206, !tbaa !198
  %14 = sext i8 %13 to i32, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !101, metadata !109) #7, !dbg !207
  %15 = tail call i32 @__tolower(i32 %14) #8, !dbg !209
  %16 = sub nsw i32 %12, %15, !dbg !210
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !94, metadata !109), !dbg !191
  %17 = icmp eq i32 %12, %15, !dbg !211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !199
  br i1 %17, label %3, label %.critedge, !dbg !212

.critedge:                                        ; preds = %3, %.lr.ph, %10
  %retval.1 = phi i32 [ %16, %10 ], [ %retval.01, %.lr.ph ], [ %16, %3 ]
  %18 = icmp eq i32 %retval.1, 0, !dbg !213
  br i1 %18, label %.critedge.thread, label %23, !dbg !215

.critedge.thread:                                 ; preds = %0, %.critedge
  %19 = tail call i64 @strlen(i8* %string1) #8, !dbg !216
  %20 = tail call i64 @strlen(i8* %string2) #8, !dbg !218
  %21 = sub i64 %19, %20, !dbg !219
  %22 = trunc i64 %21 to i32, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !94, metadata !109), !dbg !191
  br label %23, !dbg !220

; <label>:23                                      ; preds = %.critedge, %.critedge.thread
  %retval.2 = phi i32 [ %retval.1, %.critedge ], [ %22, %.critedge.thread ]
  ret i32 %retval.2, !dbg !221
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SKTreeTraverseInorder(%struct.T_SKTREE* readonly %root, i32 (i8*, i8*, i8*)* %process, i8* %info) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !43, metadata !109), !dbg !222
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %process, i64 0, metadata !44, metadata !109), !dbg !223
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !45, metadata !109), !dbg !224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !109), !dbg !225
  %1 = icmp eq %struct.T_SKTREE* %root, null, !dbg !226
  br i1 %1, label %.thread, label %.lr.ph, !dbg !228

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_SKTREE* [ %14, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0, !dbg !229
  %3 = load %struct.T_SKTREE** %2, align 8, !dbg !229, !tbaa !153
  %4 = tail call i32 @SKTreeTraverseInorder(%struct.T_SKTREE* %3, i32 (i8*, i8*, i8*)* %process, i8* %info) #9, !dbg !231
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !46, metadata !109), !dbg !225
  %5 = icmp eq i32 %4, 0, !dbg !232
  br i1 %5, label %6, label %.thread, !dbg !234

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4, !dbg !235
  %8 = load i8** %7, align 8, !dbg !235, !tbaa !140
  %9 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 5, !dbg !236
  %10 = load i8** %9, align 8, !dbg !236, !tbaa !130
  %11 = tail call i32 %process(i8* %8, i8* %10, i8* %info) #8, !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !46, metadata !109), !dbg !225
  %12 = icmp eq i32 %11, 0, !dbg !238
  br i1 %12, label %tailrecurse, label %.thread, !dbg !240

tailrecurse:                                      ; preds = %6
  %13 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1, !dbg !241
  %14 = load %struct.T_SKTREE** %13, align 8, !dbg !241, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %14, i64 0, metadata !43, metadata !109), !dbg !222
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %process, i64 0, metadata !44, metadata !109), !dbg !223
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !45, metadata !109), !dbg !224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !109), !dbg !225
  %15 = icmp eq %struct.T_SKTREE* %14, null, !dbg !226
  br i1 %15, label %.thread, label %.lr.ph, !dbg !228

.thread:                                          ; preds = %tailrecurse, %6, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %11, %6 ], [ %4, %.lr.ph ]
  ret i32 %terminate.1, !dbg !242
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SKTreeTraversePreorder(%struct.T_SKTREE* readonly %root, i32 (i8*, i8*, i8*)* %process, i8* %info) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !49, metadata !109), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %process, i64 0, metadata !50, metadata !109), !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !51, metadata !109), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !52, metadata !109), !dbg !246
  %1 = icmp eq %struct.T_SKTREE* %root, null, !dbg !247
  br i1 %1, label %.thread, label %.lr.ph, !dbg !249

.lr.ph:                                           ; preds = %0, %tailrecurse
  %root.tr1 = phi %struct.T_SKTREE* [ %14, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4, !dbg !250
  %3 = load i8** %2, align 8, !dbg !250, !tbaa !140
  %4 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 5, !dbg !252
  %5 = load i8** %4, align 8, !dbg !252, !tbaa !130
  %6 = tail call i32 %process(i8* %3, i8* %5, i8* %info) #8, !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !52, metadata !109), !dbg !246
  %7 = icmp eq i32 %6, 0, !dbg !254
  br i1 %7, label %8, label %.thread, !dbg !256

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0, !dbg !257
  %10 = load %struct.T_SKTREE** %9, align 8, !dbg !257, !tbaa !153
  %11 = tail call i32 @SKTreeTraversePreorder(%struct.T_SKTREE* %10, i32 (i8*, i8*, i8*)* %process, i8* %info) #9, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !52, metadata !109), !dbg !246
  %12 = icmp eq i32 %11, 0, !dbg !259
  br i1 %12, label %tailrecurse, label %.thread, !dbg !261

tailrecurse:                                      ; preds = %8
  %13 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1, !dbg !262
  %14 = load %struct.T_SKTREE** %13, align 8, !dbg !262, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %14, i64 0, metadata !49, metadata !109), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %process, i64 0, metadata !50, metadata !109), !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !51, metadata !109), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !52, metadata !109), !dbg !246
  %15 = icmp eq %struct.T_SKTREE* %14, null, !dbg !247
  br i1 %15, label %.thread, label %.lr.ph, !dbg !249

.thread:                                          ; preds = %tailrecurse, %8, %.lr.ph, %0
  %terminate.1 = phi i32 [ 0, %0 ], [ 0, %tailrecurse ], [ %11, %8 ], [ %6, %.lr.ph ]
  ret i32 %terminate.1, !dbg !263
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SKTreeTraversePostorder(%struct.T_SKTREE* readonly %root, i32 (i8*, i8*, i8*)* %process, i8* %info) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !55, metadata !109), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %process, i64 0, metadata !56, metadata !109), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* %info, i64 0, metadata !57, metadata !109), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !109), !dbg !267
  %1 = icmp eq %struct.T_SKTREE* %root, null, !dbg !268
  br i1 %1, label %.thread, label %2, !dbg !270

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 0, !dbg !271
  %4 = load %struct.T_SKTREE** %3, align 8, !dbg !271, !tbaa !153
  %5 = tail call i32 @SKTreeTraversePostorder(%struct.T_SKTREE* %4, i32 (i8*, i8*, i8*)* %process, i8* %info) #9, !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !58, metadata !109), !dbg !267
  %6 = icmp eq i32 %5, 0, !dbg !274
  br i1 %6, label %7, label %.thread, !dbg !276

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 1, !dbg !277
  %9 = load %struct.T_SKTREE** %8, align 8, !dbg !277, !tbaa !169
  %10 = tail call i32 @SKTreeTraversePostorder(%struct.T_SKTREE* %9, i32 (i8*, i8*, i8*)* %process, i8* %info) #9, !dbg !278
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !58, metadata !109), !dbg !267
  %11 = icmp eq i32 %10, 0, !dbg !279
  br i1 %11, label %12, label %.thread, !dbg !281

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 4, !dbg !282
  %14 = load i8** %13, align 8, !dbg !282, !tbaa !140
  %15 = getelementptr inbounds %struct.T_SKTREE* %root, i64 0, i32 5, !dbg !283
  %16 = load i8** %15, align 8, !dbg !283, !tbaa !130
  %17 = tail call i32 %process(i8* %14, i8* %16, i8* %info) #8, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !58, metadata !109), !dbg !267
  br label %.thread, !dbg !285

.thread:                                          ; preds = %2, %7, %0, %12
  %terminate.1 = phi i32 [ %10, %7 ], [ %17, %12 ], [ 0, %0 ], [ %5, %2 ]
  ret i32 %terminate.1, !dbg !286
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SKTreePrintNodes(%struct.T_SKTREE* readonly %root, i32 %depth, void (i8*, i8*, i32)* %print_node) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !66, metadata !109), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %depth, i64 0, metadata !67, metadata !109), !dbg !288
  tail call void @llvm.dbg.value(metadata void (i8*, i8*, i32)* %print_node, i64 0, metadata !68, metadata !109), !dbg !289
  %1 = icmp eq %struct.T_SKTREE* %root, null, !dbg !290
  br i1 %1, label %tailrecurse._crit_edge, label %tailrecurse, !dbg !292

tailrecurse:                                      ; preds = %0, %tailrecurse
  %depth.tr2 = phi i32 [ %4, %tailrecurse ], [ %depth, %0 ]
  %root.tr1 = phi %struct.T_SKTREE* [ %10, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0, !dbg !293
  %3 = load %struct.T_SKTREE** %2, align 8, !dbg !293, !tbaa !153
  %4 = add nsw i32 %depth.tr2, 1, !dbg !295
  tail call void @SKTreePrintNodes(%struct.T_SKTREE* %3, i32 %4, void (i8*, i8*, i32)* %print_node) #9, !dbg !296
  %5 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4, !dbg !297
  %6 = load i8** %5, align 8, !dbg !297, !tbaa !140
  %7 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 5, !dbg !298
  %8 = load i8** %7, align 8, !dbg !298, !tbaa !130
  tail call void %print_node(i8* %6, i8* %8, i32 %depth.tr2) #8, !dbg !299
  %9 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1, !dbg !300
  %10 = load %struct.T_SKTREE** %9, align 8, !dbg !300, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %10, i64 0, metadata !66, metadata !109), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !67, metadata !109), !dbg !288
  tail call void @llvm.dbg.value(metadata void (i8*, i8*, i32)* %print_node, i64 0, metadata !68, metadata !109), !dbg !289
  %11 = icmp eq %struct.T_SKTREE* %10, null, !dbg !290
  br i1 %11, label %tailrecurse._crit_edge, label %tailrecurse, !dbg !292

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %0
  ret void, !dbg !301
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SKTreeDebugNodes(%struct.T_SKTREE* readonly %root, i32 %depth) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !73, metadata !109), !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %depth, i64 0, metadata !74, metadata !109), !dbg !303
  %1 = icmp eq %struct.T_SKTREE* %root, null, !dbg !304
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !306

.lr.ph:                                           ; preds = %0, %tailrecurse
  %depth.tr4 = phi i32 [ %4, %tailrecurse ], [ %depth, %0 ]
  %root.tr3 = phi %struct.T_SKTREE* [ %33, %tailrecurse ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 0, !dbg !307
  %3 = load %struct.T_SKTREE** %2, align 8, !dbg !307, !tbaa !153
  %4 = add nsw i32 %depth.tr4, 1, !dbg !309
  tail call void @SKTreeDebugNodes(%struct.T_SKTREE* %3, i32 %4) #9, !dbg !310
  %5 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 4, !dbg !311
  %6 = load i8** %5, align 8, !dbg !311, !tbaa !140
  %7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i8* %6) #8, !dbg !312
  %8 = load %struct.T_SKTREE** %2, align 8, !dbg !313, !tbaa !153
  %9 = icmp eq %struct.T_SKTREE* %8, null, !dbg !314
  br i1 %9, label %14, label %10, !dbg !314

; <label>:10                                      ; preds = %.lr.ph
  %11 = getelementptr inbounds %struct.T_SKTREE* %8, i64 0, i32 4, !dbg !315
  %12 = load i8** %11, align 8, !dbg !315, !tbaa !140
  %13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* %12) #8, !dbg !316
  br label %15, !dbg !314

; <label>:14                                      ; preds = %.lr.ph
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str, i64 0, i64 0)), !dbg !317
  br label %15, !dbg !314

; <label>:15                                      ; preds = %14, %10
  %16 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 1, !dbg !318
  %17 = load %struct.T_SKTREE** %16, align 8, !dbg !318, !tbaa !169
  %18 = icmp eq %struct.T_SKTREE* %17, null, !dbg !319
  br i1 %18, label %23, label %19, !dbg !319

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.T_SKTREE* %17, i64 0, i32 4, !dbg !320
  %21 = load i8** %20, align 8, !dbg !320, !tbaa !140
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %21) #8, !dbg !321
  br label %24, !dbg !319

; <label>:23                                      ; preds = %15
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str8, i64 0, i64 0)), !dbg !322
  br label %24, !dbg !319

; <label>:24                                      ; preds = %23, %19
  %25 = getelementptr inbounds %struct.T_SKTREE* %root.tr3, i64 0, i32 2, !dbg !323
  %26 = load %struct.T_SKTREE** %25, align 8, !dbg !323, !tbaa !155
  %27 = icmp eq %struct.T_SKTREE* %26, null, !dbg !324
  br i1 %27, label %32, label %28, !dbg !324

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds %struct.T_SKTREE* %26, i64 0, i32 4, !dbg !325
  %30 = load i8** %29, align 8, !dbg !325, !tbaa !140
  %31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i8* %30) #8, !dbg !326
  br label %tailrecurse, !dbg !324

; <label>:32                                      ; preds = %24
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str9, i64 0, i64 0)), !dbg !327
  br label %tailrecurse, !dbg !324

tailrecurse:                                      ; preds = %32, %28
  %33 = load %struct.T_SKTREE** %16, align 8, !dbg !328, !tbaa !169
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %33, i64 0, metadata !73, metadata !109), !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !74, metadata !109), !dbg !303
  %34 = icmp eq %struct.T_SKTREE* %33, null, !dbg !304
  br i1 %34, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !306

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %0
  ret void, !dbg !329
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* readonly %root, i8* readonly %key) #1 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !79, metadata !109), !dbg !330
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !80, metadata !109), !dbg !331
  %1 = icmp eq %struct.T_SKTREE* %root, null, !dbg !332
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !334

.lr.ph:                                           ; preds = %0, %tailrecurse.backedge
  %root.tr1 = phi %struct.T_SKTREE* [ %root.tr.be, %tailrecurse.backedge ], [ %root, %0 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 4, !dbg !335
  %3 = load i8** %2, align 8, !dbg !335, !tbaa !140
  %4 = tail call i32 @STR_cmpi(i8* %key, i8* %3) #9, !dbg !335
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !81, metadata !109), !dbg !338
  %5 = icmp slt i32 %4, 0, !dbg !339
  br i1 %5, label %6, label %8, !dbg !340

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 0, !dbg !341
  br label %tailrecurse.backedge, !dbg !343

; <label>:8                                       ; preds = %.lr.ph
  %9 = icmp sgt i32 %4, 0, !dbg !344
  br i1 %9, label %10, label %tailrecurse._crit_edge, !dbg !346

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %struct.T_SKTREE* %root.tr1, i64 0, i32 1, !dbg !347
  br label %tailrecurse.backedge, !dbg !349

tailrecurse.backedge:                             ; preds = %10, %6
  %root.tr.be.in = phi %struct.T_SKTREE** [ %11, %10 ], [ %7, %6 ]
  %root.tr.be = load %struct.T_SKTREE** %root.tr.be.in, align 8, !dbg !347
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root.tr.be, i64 0, metadata !79, metadata !109), !dbg !330
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !80, metadata !109), !dbg !331
  %12 = icmp eq %struct.T_SKTREE* %root.tr.be, null, !dbg !332
  br i1 %12, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !334

tailrecurse._crit_edge:                           ; preds = %8, %tailrecurse.backedge, %0
  %node.0 = phi %struct.T_SKTREE* [ null, %0 ], [ %root.tr1, %8 ], [ null, %tailrecurse.backedge ]
  ret %struct.T_SKTREE* %node.0, !dbg !350
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* readonly %root) #5 {
  tail call void @llvm.dbg.value(metadata %struct.T_SKTREE* %root, i64 0, metadata !87, metadata !109), !dbg !351
  br label %1, !dbg !352

; <label>:1                                       ; preds = %1, %0
  %.0 = phi %struct.T_SKTREE* [ %root, %0 ], [ %3, %1 ]
  %2 = getelementptr inbounds %struct.T_SKTREE* %.0, i64 0, i32 0, !dbg !353
  %3 = load %struct.T_SKTREE** %2, align 8, !dbg !353, !tbaa !153
  %4 = icmp eq %struct.T_SKTREE* %3, null, !dbg !356
  br i1 %4, label %5, label %1, !dbg !356

; <label>:5                                       ; preds = %1
  ret %struct.T_SKTREE* %.0, !dbg !357
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!104, !105, !106}
!llvm.ident = !{!107}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !19, globals: !102, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SKBinTree.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_sktree", file: !6, line: 23, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/SKBinTree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "T_SKTREE", file: !6, line: 14, size: 384, align: 64, elements: !8)
!8 = !{!9, !11, !12, !13, !14, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !7, file: !6, line: 16, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !7, file: !6, line: 17, baseType: !10, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !6, line: 18, baseType: !10, size: 64, align: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !7, file: !6, line: 19, baseType: !10, size: 64, align: 64, offset: 192)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !7, file: !6, line: 20, baseType: !15, size: 64, align: 64, offset: 256)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 22, baseType: !18, size: 64, align: 64, offset: 320)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !{!20, !25, !36, !47, !53, !59, !69, !75, !83, !88, !96}
!20 = !DISubprogram(name: "CCTKi_version_util_SKBinTree_c", scope: !1, file: !1, line: 29, type: !21, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_SKBinTree_c, variables: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!25 = !DISubprogram(name: "SKTreeStoreData", scope: !1, file: !1, line: 45, type: !26, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: %struct.T_SKTREE* (%struct.T_SKTREE*, %struct.T_SKTREE*, i8*, i8*)* @SKTreeStoreData, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!4, !4, !4, !23, !18}
!28 = !{!29, !30, !31, !32, !33, !35}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !25, file: !1, line: 45, type: !4)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "subtree", arg: 2, scope: !25, file: !1, line: 45, type: !4)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 3, scope: !25, file: !1, line: 46, type: !23)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !25, file: !1, line: 46, type: !18)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !25, file: !1, line: 48, type: !34)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newsubtree", scope: !25, file: !1, line: 49, type: !4)
!36 = !DISubprogram(name: "SKTreeTraverseInorder", scope: !1, file: !1, line: 135, type: !37, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.T_SKTREE*, i32 (i8*, i8*, i8*)*, i8*)* @SKTreeTraverseInorder, variables: !42)
!37 = !DISubroutineType(types: !38)
!38 = !{!34, !4, !39, !18}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!34, !23, !18, !18}
!42 = !{!43, !44, !45, !46}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !36, file: !1, line: 135, type: !4)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "process", arg: 2, scope: !36, file: !1, line: 135, type: !39)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 3, scope: !36, file: !1, line: 135, type: !18)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !36, file: !1, line: 137, type: !34)
!47 = !DISubprogram(name: "SKTreeTraversePreorder", scope: !1, file: !1, line: 165, type: !37, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.T_SKTREE*, i32 (i8*, i8*, i8*)*, i8*)* @SKTreeTraversePreorder, variables: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !47, file: !1, line: 165, type: !4)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "process", arg: 2, scope: !47, file: !1, line: 165, type: !39)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 3, scope: !47, file: !1, line: 165, type: !18)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !47, file: !1, line: 167, type: !34)
!53 = !DISubprogram(name: "SKTreeTraversePostorder", scope: !1, file: !1, line: 195, type: !37, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.T_SKTREE*, i32 (i8*, i8*, i8*)*, i8*)* @SKTreeTraversePostorder, variables: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !53, file: !1, line: 195, type: !4)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "process", arg: 2, scope: !53, file: !1, line: 195, type: !39)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 3, scope: !53, file: !1, line: 195, type: !18)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !53, file: !1, line: 197, type: !34)
!59 = !DISubprogram(name: "SKTreePrintNodes", scope: !1, file: !1, line: 225, type: !60, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.T_SKTREE*, i32, void (i8*, i8*, i32)*)* @SKTreePrintNodes, variables: !65)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !4, !34, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !23, !18, !34}
!65 = !{!66, !67, !68}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !59, file: !1, line: 225, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "depth", arg: 2, scope: !59, file: !1, line: 225, type: !34)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "print_node", arg: 3, scope: !59, file: !1, line: 225, type: !62)
!69 = !DISubprogram(name: "SKTreeDebugNodes", scope: !1, file: !1, line: 235, type: !70, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.T_SKTREE*, i32)* @SKTreeDebugNodes, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !4, !34}
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !69, file: !1, line: 235, type: !4)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "depth", arg: 2, scope: !69, file: !1, line: 235, type: !34)
!75 = !DISubprogram(name: "SKTreeFindNode", scope: !1, file: !1, line: 265, type: !76, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: %struct.T_SKTREE* (%struct.T_SKTREE*, i8*)* @SKTreeFindNode, variables: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{!4, !4, !23}
!78 = !{!79, !80, !81, !82}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !75, file: !1, line: 265, type: !4)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !75, file: !1, line: 265, type: !23)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !75, file: !1, line: 267, type: !34)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !75, file: !1, line: 269, type: !4)
!83 = !DISubprogram(name: "SKTreeFindFirst", scope: !1, file: !1, line: 310, type: !84, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct.T_SKTREE* (%struct.T_SKTREE*)* @SKTreeFindFirst, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!4, !4}
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !83, file: !1, line: 310, type: !4)
!88 = !DISubprogram(name: "STR_cmpi", scope: !1, file: !1, line: 335, type: !89, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @STR_cmpi, variables: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{!34, !23, !23}
!91 = !{!92, !93, !94, !95}
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string1", arg: 1, scope: !88, file: !1, line: 335, type: !23)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string2", arg: 2, scope: !88, file: !1, line: 335, type: !23)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !88, file: !1, line: 337, type: !34)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position", scope: !88, file: !1, line: 338, type: !34)
!96 = !DISubprogram(name: "tolower", scope: !97, file: !97, line: 292, type: !98, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, variables: !100)
!97 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!98 = !DISubroutineType(types: !99)
!99 = !{!34, !34}
!100 = !{!101}
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !96, file: !97, line: 292, type: !34)
!102 = !{!103}
!103 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 27, type: !23, isLocal: true, isDefinition: true)
!104 = !{i32 2, !"Dwarf Version", i32 2}
!105 = !{i32 2, !"Debug Info Version", i32 700000003}
!106 = !{i32 1, !"PIC Level", i32 2}
!107 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!108 = !DILocation(line: 29, column: 1, scope: !20)
!109 = !DIExpression()
!110 = !DILocation(line: 45, column: 37, scope: !25)
!111 = !DILocation(line: 45, column: 53, scope: !25)
!112 = !DILocation(line: 46, column: 39, scope: !25)
!113 = !DILocation(line: 46, column: 50, scope: !25)
!114 = !DILocation(line: 51, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !25, file: !1, line: 51, column: 6)
!116 = !DILocation(line: 51, column: 6, scope: !25)
!117 = !DILocation(line: 54, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 52, column: 3)
!119 = !DILocation(line: 54, column: 18, scope: !118)
!120 = !DILocation(line: 49, column: 13, scope: !25)
!121 = !DILocation(line: 55, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 55, column: 8)
!123 = !DILocation(line: 55, column: 8, scope: !118)
!124 = !DILocation(line: 59, column: 19, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 56, column: 5)
!126 = !DILocation(line: 60, column: 19, scope: !125)
!127 = !DILocation(line: 62, column: 19, scope: !125)
!128 = !DILocation(line: 58, column: 24, scope: !125)
!129 = !DILocation(line: 62, column: 24, scope: !125)
!130 = !{!131, !132, i64 40}
!131 = !{!"T_SKTREE", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40}
!132 = !{!"any pointer", !133, i64 0}
!133 = !{!"omnipotent char", !134, i64 0}
!134 = !{!"Simple C/C++ TBAA"}
!135 = !DILocation(line: 64, column: 53, scope: !125)
!136 = !DILocation(line: 64, column: 64, scope: !125)
!137 = !DILocation(line: 64, column: 32, scope: !125)
!138 = !DILocation(line: 64, column: 19, scope: !125)
!139 = !DILocation(line: 64, column: 22, scope: !125)
!140 = !{!131, !132, i64 32}
!141 = !DILocation(line: 65, column: 7, scope: !125)
!142 = !DILocation(line: 66, column: 10, scope: !143)
!143 = distinct !DILexicalBlock(scope: !125, file: !1, line: 66, column: 10)
!144 = !DILocation(line: 66, column: 10, scope: !125)
!145 = !DILocation(line: 68, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 68, column: 12)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 67, column: 7)
!148 = !DILocation(line: 48, column: 7, scope: !25)
!149 = !DILocation(line: 68, column: 46, scope: !146)
!150 = !DILocation(line: 68, column: 12, scope: !147)
!151 = !DILocation(line: 70, column: 22, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 69, column: 9)
!153 = !{!131, !132, i64 0}
!154 = !DILocation(line: 71, column: 28, scope: !152)
!155 = !{!131, !132, i64 16}
!156 = !DILocation(line: 72, column: 36, scope: !152)
!157 = !{!131, !132, i64 24}
!158 = !DILocation(line: 72, column: 28, scope: !152)
!159 = !DILocation(line: 73, column: 14, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !1, line: 73, column: 14)
!161 = !DILocation(line: 73, column: 14, scope: !152)
!162 = !DILocation(line: 75, column: 31, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 74, column: 11)
!164 = !DILocation(line: 75, column: 36, scope: !163)
!165 = !DILocation(line: 76, column: 11, scope: !163)
!166 = !DILocation(line: 82, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !146, file: !1, line: 81, column: 9)
!168 = !DILocation(line: 82, column: 23, scope: !167)
!169 = !{!131, !132, i64 8}
!170 = !DILocation(line: 83, column: 36, scope: !167)
!171 = !DILocation(line: 83, column: 28, scope: !167)
!172 = !DILocation(line: 84, column: 28, scope: !167)
!173 = !DILocation(line: 85, column: 22, scope: !167)
!174 = !DILocation(line: 97, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 97, column: 8)
!176 = distinct !DILexicalBlock(scope: !115, file: !1, line: 95, column: 3)
!177 = !DILocation(line: 97, column: 45, scope: !175)
!178 = !DILocation(line: 97, column: 8, scope: !176)
!179 = !DILocation(line: 99, column: 54, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 98, column: 5)
!181 = !DILocation(line: 99, column: 20, scope: !180)
!182 = !DILocation(line: 101, column: 19, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !1, line: 101, column: 13)
!184 = !DILocation(line: 101, column: 13, scope: !175)
!185 = !DILocation(line: 103, column: 54, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !1, line: 102, column: 5)
!187 = !DILocation(line: 103, column: 20, scope: !186)
!188 = !DILocation(line: 117, column: 3, scope: !25)
!189 = !DILocation(line: 335, column: 26, scope: !88)
!190 = !DILocation(line: 335, column: 47, scope: !88)
!191 = !DILocation(line: 337, column: 7, scope: !88)
!192 = !DILocation(line: 338, column: 7, scope: !88)
!193 = !DILocation(line: 345, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 344, column: 5)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 344, column: 5)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 343, column: 3)
!197 = distinct !DILexicalBlock(scope: !88, file: !1, line: 342, column: 6)
!198 = !{!133, !133, i64 0}
!199 = !DILocation(line: 345, column: 27, scope: !194)
!200 = !DILocation(line: 345, column: 30, scope: !194)
!201 = !DILocation(line: 344, column: 5, scope: !195)
!202 = !DILocation(line: 294, column: 17, scope: !96, inlinedAt: !203)
!203 = distinct !DILocation(line: 348, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 348, column: 10)
!205 = distinct !DILexicalBlock(scope: !194, file: !1, line: 347, column: 5)
!206 = !DILocation(line: 348, column: 58, scope: !204)
!207 = !DILocation(line: 292, column: 13, scope: !96, inlinedAt: !208)
!208 = distinct !DILocation(line: 348, column: 50, scope: !204)
!209 = !DILocation(line: 294, column: 17, scope: !96, inlinedAt: !208)
!210 = !DILocation(line: 348, column: 48, scope: !204)
!211 = !DILocation(line: 348, column: 18, scope: !204)
!212 = !DILocation(line: 348, column: 10, scope: !205)
!213 = !DILocation(line: 355, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !88, file: !1, line: 355, column: 6)
!215 = !DILocation(line: 355, column: 6, scope: !88)
!216 = !DILocation(line: 357, column: 14, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 356, column: 3)
!218 = !DILocation(line: 357, column: 32, scope: !217)
!219 = !DILocation(line: 357, column: 30, scope: !217)
!220 = !DILocation(line: 358, column: 3, scope: !217)
!221 = !DILocation(line: 361, column: 3, scope: !88)
!222 = !DILocation(line: 135, column: 37, scope: !36)
!223 = !DILocation(line: 135, column: 49, scope: !36)
!224 = !DILocation(line: 135, column: 95, scope: !36)
!225 = !DILocation(line: 137, column: 7, scope: !36)
!226 = !DILocation(line: 141, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !36, file: !1, line: 141, column: 6)
!228 = !DILocation(line: 141, column: 6, scope: !36)
!229 = !DILocation(line: 143, column: 45, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 142, column: 3)
!231 = !DILocation(line: 143, column: 17, scope: !230)
!232 = !DILocation(line: 144, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 144, column: 8)
!234 = !DILocation(line: 144, column: 8, scope: !230)
!235 = !DILocation(line: 144, column: 46, scope: !233)
!236 = !DILocation(line: 144, column: 56, scope: !233)
!237 = !DILocation(line: 144, column: 32, scope: !233)
!238 = !DILocation(line: 145, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !230, file: !1, line: 145, column: 8)
!240 = !DILocation(line: 145, column: 8, scope: !230)
!241 = !DILocation(line: 145, column: 60, scope: !239)
!242 = !DILocation(line: 148, column: 3, scope: !36)
!243 = !DILocation(line: 165, column: 38, scope: !47)
!244 = !DILocation(line: 165, column: 50, scope: !47)
!245 = !DILocation(line: 165, column: 95, scope: !47)
!246 = !DILocation(line: 167, column: 7, scope: !47)
!247 = !DILocation(line: 171, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !47, file: !1, line: 171, column: 6)
!249 = !DILocation(line: 171, column: 6, scope: !47)
!250 = !DILocation(line: 173, column: 31, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 172, column: 3)
!252 = !DILocation(line: 173, column: 41, scope: !251)
!253 = !DILocation(line: 173, column: 17, scope: !251)
!254 = !DILocation(line: 174, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 174, column: 8)
!256 = !DILocation(line: 174, column: 8, scope: !251)
!257 = !DILocation(line: 174, column: 61, scope: !255)
!258 = !DILocation(line: 174, column: 32, scope: !255)
!259 = !DILocation(line: 175, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !251, file: !1, line: 175, column: 8)
!261 = !DILocation(line: 175, column: 8, scope: !251)
!262 = !DILocation(line: 175, column: 61, scope: !260)
!263 = !DILocation(line: 178, column: 3, scope: !47)
!264 = !DILocation(line: 195, column: 39, scope: !53)
!265 = !DILocation(line: 195, column: 51, scope: !53)
!266 = !DILocation(line: 195, column: 97, scope: !53)
!267 = !DILocation(line: 197, column: 7, scope: !53)
!268 = !DILocation(line: 201, column: 6, scope: !269)
!269 = distinct !DILexicalBlock(scope: !53, file: !1, line: 201, column: 6)
!270 = !DILocation(line: 201, column: 6, scope: !53)
!271 = !DILocation(line: 203, column: 47, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !1, line: 202, column: 3)
!273 = !DILocation(line: 203, column: 17, scope: !272)
!274 = !DILocation(line: 204, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !1, line: 204, column: 8)
!276 = !DILocation(line: 204, column: 8, scope: !272)
!277 = !DILocation(line: 204, column: 62, scope: !275)
!278 = !DILocation(line: 204, column: 32, scope: !275)
!279 = !DILocation(line: 205, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !1, line: 205, column: 8)
!281 = !DILocation(line: 205, column: 8, scope: !272)
!282 = !DILocation(line: 205, column: 46, scope: !280)
!283 = !DILocation(line: 205, column: 56, scope: !280)
!284 = !DILocation(line: 205, column: 32, scope: !280)
!285 = !DILocation(line: 205, column: 20, scope: !280)
!286 = !DILocation(line: 208, column: 3, scope: !53)
!287 = !DILocation(line: 225, column: 33, scope: !59)
!288 = !DILocation(line: 225, column: 43, scope: !59)
!289 = !DILocation(line: 225, column: 57, scope: !59)
!290 = !DILocation(line: 227, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !59, file: !1, line: 227, column: 6)
!292 = !DILocation(line: 227, column: 6, scope: !59)
!293 = !DILocation(line: 229, column: 28, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 228, column: 3)
!295 = !DILocation(line: 229, column: 39, scope: !294)
!296 = !DILocation(line: 229, column: 5, scope: !294)
!297 = !DILocation(line: 230, column: 22, scope: !294)
!298 = !DILocation(line: 230, column: 32, scope: !294)
!299 = !DILocation(line: 230, column: 5, scope: !294)
!300 = !DILocation(line: 231, column: 28, scope: !294)
!301 = !DILocation(line: 233, column: 1, scope: !59)
!302 = !DILocation(line: 235, column: 33, scope: !69)
!303 = !DILocation(line: 235, column: 43, scope: !69)
!304 = !DILocation(line: 237, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !69, file: !1, line: 237, column: 6)
!306 = !DILocation(line: 237, column: 6, scope: !69)
!307 = !DILocation(line: 239, column: 28, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 238, column: 3)
!309 = !DILocation(line: 239, column: 39, scope: !308)
!310 = !DILocation(line: 239, column: 5, scope: !308)
!311 = !DILocation(line: 241, column: 33, scope: !308)
!312 = !DILocation(line: 241, column: 5, scope: !308)
!313 = !DILocation(line: 242, column: 11, scope: !308)
!314 = !DILocation(line: 242, column: 5, scope: !308)
!315 = !DILocation(line: 242, column: 53, scope: !308)
!316 = !DILocation(line: 242, column: 19, scope: !308)
!317 = !DILocation(line: 242, column: 61, scope: !308)
!318 = !DILocation(line: 243, column: 11, scope: !308)
!319 = !DILocation(line: 243, column: 5, scope: !308)
!320 = !DILocation(line: 243, column: 54, scope: !308)
!321 = !DILocation(line: 243, column: 19, scope: !308)
!322 = !DILocation(line: 243, column: 61, scope: !308)
!323 = !DILocation(line: 244, column: 11, scope: !308)
!324 = !DILocation(line: 244, column: 5, scope: !308)
!325 = !DILocation(line: 244, column: 53, scope: !308)
!326 = !DILocation(line: 244, column: 19, scope: !308)
!327 = !DILocation(line: 244, column: 61, scope: !308)
!328 = !DILocation(line: 246, column: 28, scope: !308)
!329 = !DILocation(line: 248, column: 1, scope: !69)
!330 = !DILocation(line: 265, column: 36, scope: !75)
!331 = !DILocation(line: 265, column: 54, scope: !75)
!332 = !DILocation(line: 271, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !75, file: !1, line: 271, column: 6)
!334 = !DILocation(line: 271, column: 6, scope: !75)
!335 = !DILocation(line: 274, column: 17, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 274, column: 8)
!337 = distinct !DILexicalBlock(scope: !333, file: !1, line: 272, column: 3)
!338 = !DILocation(line: 267, column: 7, scope: !75)
!339 = !DILocation(line: 274, column: 42, scope: !336)
!340 = !DILocation(line: 274, column: 8, scope: !337)
!341 = !DILocation(line: 276, column: 35, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !1, line: 275, column: 5)
!343 = !DILocation(line: 276, column: 14, scope: !342)
!344 = !DILocation(line: 278, column: 19, scope: !345)
!345 = distinct !DILexicalBlock(scope: !336, file: !1, line: 278, column: 13)
!346 = !DILocation(line: 278, column: 13, scope: !336)
!347 = !DILocation(line: 280, column: 35, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !1, line: 279, column: 5)
!349 = !DILocation(line: 280, column: 14, scope: !348)
!350 = !DILocation(line: 293, column: 3, scope: !75)
!351 = !DILocation(line: 310, column: 37, scope: !83)
!352 = !DILocation(line: 312, column: 3, scope: !83)
!353 = !DILocation(line: 312, column: 15, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 312, column: 3)
!355 = distinct !DILexicalBlock(scope: !83, file: !1, line: 312, column: 3)
!356 = !DILocation(line: 312, column: 3, scope: !355)
!357 = !DILocation(line: 314, column: 3, scope: !83)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [61 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.c\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Total keys:        %d\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"Hash table size:   %d\0A\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"Average occupancy: %.1f\0A\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"Unoccupied slots:  %d\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"Most in one slot:  %d\0A\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"Least in one slot: %d\0A\00", align 1
@.str7 = private unnamed_addr constant [30 x i8] c"bad primelevel in gki_alloc()\00", align 1
@gki_primes = internal unnamed_addr constant [4 x i32] [i32 101, i32 1009, i32 10007, i32 100003], align 16

; Function Attrs: nounwind optsize ssp uwtable
define %struct.GKI* @GKIInit() #0 {
  %1 = tail call fastcc %struct.GKI* @gki_alloc(i32 0) #6, !dbg !92
  tail call void @llvm.dbg.value(metadata %struct.GKI* %1, i64 0, metadata !30, metadata !93), !dbg !94
  ret %struct.GKI* %1, !dbg !95
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.GKI* @gki_alloc(i32 %primelevel) #0 {
  tail call void @llvm.dbg.value(metadata i32 %primelevel, i64 0, metadata !65, metadata !93), !dbg !96
  %1 = icmp ugt i32 %primelevel, 3, !dbg !97
  br i1 %1, label %2, label %3, !dbg !97

; <label>:2                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !99
  br label %3, !dbg !99

; <label>:3                                       ; preds = %0, %2
  %4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 294, i64 24) #7, !dbg !100
  %5 = bitcast i8* %4 to %struct.GKI*, !dbg !100
  tail call void @llvm.dbg.value(metadata %struct.GKI* %5, i64 0, metadata !66, metadata !93), !dbg !101
  %6 = getelementptr inbounds i8* %4, i64 8, !dbg !102
  %7 = bitcast i8* %6 to i32*, !dbg !102
  store i32 %primelevel, i32* %7, align 4, !dbg !103, !tbaa !104
  %8 = sext i32 %primelevel to i64, !dbg !110
  %9 = getelementptr inbounds [4 x i32]* @gki_primes, i64 0, i64 %8, !dbg !110
  %10 = load i32* %9, align 4, !dbg !110, !tbaa !111
  %11 = getelementptr inbounds i8* %4, i64 12, !dbg !112
  %12 = bitcast i8* %11 to i32*, !dbg !112
  store i32 %10, i32* %12, align 4, !dbg !113, !tbaa !114
  %13 = sext i32 %10 to i64, !dbg !115
  %14 = mul nsw i64 %13, 24, !dbg !115
  %15 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 298, i64 %14) #7, !dbg !115
  %16 = bitcast i8* %4 to %struct.gki_elem***, !dbg !116
  %17 = bitcast i8* %4 to i8**, !dbg !117
  store i8* %15, i8** %17, align 8, !dbg !117, !tbaa !118
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !93), !dbg !119
  %18 = load i32* %12, align 4, !dbg !120, !tbaa !114
  %19 = icmp sgt i32 %18, 0, !dbg !123
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !124

.lr.ph:                                           ; preds = %3
  %20 = bitcast i8* %15 to %struct.gki_elem**
  %21 = sext i32 %18 to i64, !dbg !124
  store %struct.gki_elem* null, %struct.gki_elem** %20, align 8, !dbg !125, !tbaa !126
  %22 = icmp sgt i32 %18, 1, !dbg !123
  br i1 %22, label %._crit_edge3, label %._crit_edge, !dbg !124

._crit_edge3:                                     ; preds = %.lr.ph, %._crit_edge3
  %indvars.iv.next4 = phi i64 [ %indvars.iv.next, %._crit_edge3 ], [ 1, %.lr.ph ]
  %.pre = load %struct.gki_elem*** %16, align 8, !dbg !127, !tbaa !118
  %23 = getelementptr inbounds %struct.gki_elem** %.pre, i64 %indvars.iv.next4, !dbg !128
  store %struct.gki_elem* null, %struct.gki_elem** %23, align 8, !dbg !125, !tbaa !126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next4, 1, !dbg !124
  %24 = icmp slt i64 %indvars.iv.next, %21, !dbg !123
  br i1 %24, label %._crit_edge3, label %._crit_edge, !dbg !124

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge3, %3
  %25 = getelementptr inbounds i8* %4, i64 16, !dbg !129
  %26 = bitcast i8* %25 to i32*, !dbg !129
  store i32 0, i32* %26, align 4, !dbg !130, !tbaa !131
  ret %struct.GKI* %5, !dbg !132
}

; Function Attrs: nounwind optsize ssp uwtable
define void @GKIFree(%struct.GKI* %hash) #0 {
  tail call void @llvm.dbg.value(metadata %struct.GKI* %hash, i64 0, metadata !35, metadata !93), !dbg !133
  %1 = icmp eq %struct.GKI* %hash, null, !dbg !134
  br i1 %1, label %43, label %.preheader1, !dbg !136

.preheader1:                                      ; preds = %0
  %2 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !137
  %3 = load i32* %2, align 4, !dbg !137, !tbaa !114
  %4 = icmp sgt i32 %3, 0, !dbg !140
  br i1 %4, label %.preheader.lr.ph, label %.preheader1._crit_edge, !dbg !141

.preheader1._crit_edge:                           ; preds = %.preheader1
  %.phi.trans.insert = bitcast %struct.GKI* %hash to i8**
  %.pre6 = load i8** %.phi.trans.insert, align 8, !dbg !142, !tbaa !118
  br label %._crit_edge3, !dbg !141

.preheader.lr.ph:                                 ; preds = %.preheader1
  %5 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !143
  %.pre = load %struct.gki_elem*** %5, align 8, !dbg !143, !tbaa !118
  %6 = bitcast %struct.gki_elem** %.pre to i8*
  br label %.preheader, !dbg !141

.preheader:                                       ; preds = %.preheader.lr.ph, %35
  %7 = phi i8* [ %6, %.preheader.lr.ph ], [ %36, %35 ]
  %8 = phi i32 [ %3, %.preheader.lr.ph ], [ %37, %35 ]
  %9 = phi %struct.gki_elem** [ %.pre, %.preheader.lr.ph ], [ %38, %35 ], !dbg !143
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %35 ]
  %10 = getelementptr inbounds %struct.gki_elem** %9, i64 %indvars.iv, !dbg !144
  %11 = load %struct.gki_elem** %10, align 8, !dbg !144, !tbaa !126
  %12 = icmp eq %struct.gki_elem* %11, null, !dbg !145
  br i1 %12, label %35, label %.lr.ph, !dbg !146

.lr.ph:                                           ; preds = %.preheader, %22
  %13 = phi %struct.gki_elem** [ %30, %22 ], [ %9, %.preheader ]
  %14 = phi %struct.gki_elem* [ %32, %22 ], [ %11, %.preheader ]
  %15 = getelementptr inbounds %struct.gki_elem* %14, i64 0, i32 2, !dbg !147
  %16 = bitcast %struct.gki_elem** %15 to i64*, !dbg !147
  %17 = load i64* %16, align 8, !dbg !147, !tbaa !149
  %18 = getelementptr inbounds %struct.gki_elem* %14, i64 0, i32 0, !dbg !151
  %19 = load i8** %18, align 8, !dbg !151, !tbaa !153
  %20 = icmp eq i8* %19, null, !dbg !154
  br i1 %20, label %22, label %21, !dbg !155

; <label>:21                                      ; preds = %.lr.ph
  tail call void @free(i8* %19) #6, !dbg !156
  %.pre4 = load %struct.gki_elem*** %5, align 8, !dbg !157, !tbaa !118
  br label %22, !dbg !156

; <label>:22                                      ; preds = %.lr.ph, %21
  %23 = phi %struct.gki_elem** [ %13, %.lr.ph ], [ %.pre4, %21 ], !dbg !157
  %24 = getelementptr inbounds %struct.gki_elem** %23, i64 %indvars.iv, !dbg !158
  %25 = bitcast %struct.gki_elem** %24 to i8**, !dbg !158
  %26 = load i8** %25, align 8, !dbg !158, !tbaa !126
  tail call void @free(i8* %26) #6, !dbg !159
  %27 = load %struct.gki_elem*** %5, align 8, !dbg !160, !tbaa !118
  %28 = getelementptr inbounds %struct.gki_elem** %27, i64 %indvars.iv, !dbg !161
  %29 = bitcast %struct.gki_elem** %28 to i64*, !dbg !162
  store i64 %17, i64* %29, align 8, !dbg !162, !tbaa !126
  %30 = load %struct.gki_elem*** %5, align 8, !dbg !143, !tbaa !118
  %31 = getelementptr inbounds %struct.gki_elem** %30, i64 %indvars.iv, !dbg !144
  %32 = load %struct.gki_elem** %31, align 8, !dbg !144, !tbaa !126
  %33 = icmp eq %struct.gki_elem* %32, null, !dbg !145
  br i1 %33, label %._crit_edge, label %.lr.ph, !dbg !146

._crit_edge:                                      ; preds = %22
  %34 = bitcast %struct.gki_elem** %30 to i8*
  %.pre5 = load i32* %2, align 4, !dbg !137, !tbaa !114
  br label %35, !dbg !146

; <label>:35                                      ; preds = %._crit_edge, %.preheader
  %36 = phi i8* [ %34, %._crit_edge ], [ %7, %.preheader ]
  %37 = phi i32 [ %.pre5, %._crit_edge ], [ %8, %.preheader ], !dbg !141
  %38 = phi %struct.gki_elem** [ %30, %._crit_edge ], [ %9, %.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !141
  %39 = sext i32 %37 to i64, !dbg !140
  %40 = icmp slt i64 %indvars.iv.next, %39, !dbg !140
  br i1 %40, label %.preheader, label %._crit_edge3, !dbg !141

._crit_edge3:                                     ; preds = %35, %.preheader1._crit_edge
  %41 = phi i8* [ %.pre6, %.preheader1._crit_edge ], [ %36, %35 ]
  tail call void @free(i8* %41) #6, !dbg !163
  %42 = bitcast %struct.GKI* %hash to i8*, !dbg !164
  tail call void @free(i8* %42) #6, !dbg !165
  br label %43, !dbg !166

; <label>:43                                      ; preds = %0, %._crit_edge3
  ret void, !dbg !166
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @GKIStoreKey(%struct.GKI* nocapture %hash, i8* %key) #0 {
  tail call void @llvm.dbg.value(metadata %struct.GKI* %hash, i64 0, metadata !42, metadata !93), !dbg !167
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !43, metadata !93), !dbg !168
  %1 = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %hash, i8* %key) #6, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !44, metadata !93), !dbg !170
  %2 = sext i32 %1 to i64, !dbg !171
  %3 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !172
  %4 = load %struct.gki_elem*** %3, align 8, !dbg !172, !tbaa !118
  %5 = getelementptr inbounds %struct.gki_elem** %4, i64 %2, !dbg !171
  %6 = bitcast %struct.gki_elem** %5 to i64*, !dbg !171
  %7 = load i64* %6, align 8, !dbg !171, !tbaa !126
  %8 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 189, i64 24) #7, !dbg !173
  %9 = load %struct.gki_elem*** %3, align 8, !dbg !174, !tbaa !118
  %10 = getelementptr inbounds %struct.gki_elem** %9, i64 %2, !dbg !175
  %11 = bitcast %struct.gki_elem** %10 to i8**, !dbg !176
  store i8* %8, i8** %11, align 8, !dbg !176, !tbaa !126
  %12 = tail call i64 @strlen(i8* %key) #7, !dbg !177
  %13 = add i64 %12, 1, !dbg !177
  %14 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 190, i64 %13) #7, !dbg !177
  %15 = load %struct.gki_elem*** %3, align 8, !dbg !178, !tbaa !118
  %16 = getelementptr inbounds %struct.gki_elem** %15, i64 %2, !dbg !179
  %17 = load %struct.gki_elem** %16, align 8, !dbg !179, !tbaa !126
  %18 = getelementptr inbounds %struct.gki_elem* %17, i64 0, i32 0, !dbg !180
  store i8* %14, i8** %18, align 8, !dbg !181, !tbaa !153
  %19 = load %struct.gki_elem** %16, align 8, !dbg !182, !tbaa !126
  %20 = getelementptr inbounds %struct.gki_elem* %19, i64 0, i32 0, !dbg !182
  %21 = load i8** %20, align 8, !dbg !182, !tbaa !153
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %21, i1 false), !dbg !182
  %23 = tail call i8* @__strcpy_chk(i8* %21, i8* %key, i64 %22) #7, !dbg !182
  %24 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 3, !dbg !183
  %25 = load i32* %24, align 4, !dbg !183, !tbaa !131
  %26 = load %struct.gki_elem*** %3, align 8, !dbg !184, !tbaa !118
  %27 = getelementptr inbounds %struct.gki_elem** %26, i64 %2, !dbg !185
  %28 = load %struct.gki_elem** %27, align 8, !dbg !185, !tbaa !126
  %29 = getelementptr inbounds %struct.gki_elem* %28, i64 0, i32 1, !dbg !186
  store i32 %25, i32* %29, align 4, !dbg !187, !tbaa !188
  %30 = getelementptr inbounds %struct.gki_elem* %28, i64 0, i32 2, !dbg !189
  %31 = bitcast %struct.gki_elem** %30 to i64*, !dbg !190
  store i64 %7, i64* %31, align 8, !dbg !190, !tbaa !149
  %32 = add nsw i32 %25, 1, !dbg !191
  store i32 %32, i32* %24, align 4, !dbg !191, !tbaa !131
  %33 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !192
  %34 = load i32* %33, align 4, !dbg !192, !tbaa !114
  %35 = mul nsw i32 %34, 3, !dbg !194
  %36 = icmp slt i32 %25, %35, !dbg !195
  br i1 %36, label %81, label %37, !dbg !196

; <label>:37                                      ; preds = %0
  %38 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 1, !dbg !197
  %39 = load i32* %38, align 4, !dbg !197, !tbaa !104
  %40 = icmp slt i32 %39, 3, !dbg !198
  br i1 %40, label %41, label %81, !dbg !199

; <label>:41                                      ; preds = %37
  %42 = add nsw i32 %39, 1, !dbg !200
  %43 = tail call fastcc %struct.GKI* @gki_alloc(i32 %42) #7, !dbg !202
  tail call void @llvm.dbg.value(metadata %struct.GKI* %43, i64 0, metadata !78, metadata !93) #8, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !79, metadata !93) #8, !dbg !204
  %44 = load i32* %33, align 4, !dbg !205, !tbaa !114
  %45 = icmp sgt i32 %44, 0, !dbg !208
  br i1 %45, label %.lr.ph4.i, label %gki_upsize.exit, !dbg !209

.lr.ph4.i:                                        ; preds = %41
  %46 = getelementptr inbounds %struct.GKI* %43, i64 0, i32 0, !dbg !210
  %47 = sext i32 %44 to i64
  %48 = add nsw i64 %47, -1, !dbg !209
  br label %49, !dbg !209

; <label>:49                                      ; preds = %._crit_edge.i, %.lr.ph4.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next.i, %._crit_edge.i ], !dbg !213
  %50 = load %struct.gki_elem*** %3, align 8, !dbg !214, !tbaa !118
  %51 = getelementptr inbounds %struct.gki_elem** %50, i64 %indvars.iv.i, !dbg !215
  %52 = load %struct.gki_elem** %51, align 8, !dbg !215, !tbaa !126
  tail call void @llvm.dbg.value(metadata %struct.gki_elem* %52, i64 0, metadata !80, metadata !93) #8, !dbg !216
  %53 = icmp eq %struct.gki_elem* %52, null, !dbg !217
  br i1 %53, label %._crit_edge.i, label %.lr.ph.i, !dbg !218

.lr.ph.i:                                         ; preds = %49
  %.pre.i = load %struct.gki_elem*** %46, align 8, !dbg !210, !tbaa !118
  br label %54, !dbg !218

; <label>:54                                      ; preds = %54, %.lr.ph.i
  %55 = phi %struct.gki_elem** [ %.pre.i, %.lr.ph.i ], [ %65, %54 ], !dbg !219
  %optr.01.i = phi %struct.gki_elem* [ %52, %.lr.ph.i ], [ %64, %54 ], !dbg !213
  %56 = getelementptr inbounds %struct.gki_elem* %optr.01.i, i64 0, i32 0, !dbg !219
  %57 = load i8** %56, align 8, !dbg !219, !tbaa !153
  %58 = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %43, i8* %57) #7, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !82, metadata !93) #8, !dbg !221
  %59 = sext i32 %58 to i64, !dbg !222
  %60 = getelementptr inbounds %struct.gki_elem** %55, i64 %59, !dbg !222
  %61 = bitcast %struct.gki_elem** %60 to i64*, !dbg !222
  %62 = load i64* %61, align 8, !dbg !222, !tbaa !126
  store %struct.gki_elem* %optr.01.i, %struct.gki_elem** %60, align 8, !dbg !223, !tbaa !126
  %63 = getelementptr inbounds %struct.gki_elem* %optr.01.i, i64 0, i32 2, !dbg !224
  %64 = load %struct.gki_elem** %63, align 8, !dbg !224, !tbaa !149
  tail call void @llvm.dbg.value(metadata %struct.gki_elem* %64, i64 0, metadata !80, metadata !93) #8, !dbg !216
  %65 = load %struct.gki_elem*** %46, align 8, !dbg !225, !tbaa !118
  %66 = getelementptr inbounds %struct.gki_elem** %65, i64 %59, !dbg !226
  %67 = load %struct.gki_elem** %66, align 8, !dbg !226, !tbaa !126
  %68 = getelementptr inbounds %struct.gki_elem* %67, i64 0, i32 2, !dbg !227
  %69 = bitcast %struct.gki_elem** %68 to i64*, !dbg !228
  store i64 %62, i64* %69, align 8, !dbg !228, !tbaa !149
  %70 = icmp eq %struct.gki_elem* %64, null, !dbg !217
  br i1 %70, label %._crit_edge.i, label %54, !dbg !218

._crit_edge.i:                                    ; preds = %54, %49
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !209
  %exitcond = icmp eq i64 %indvars.iv.i, %48, !dbg !209
  br i1 %exitcond, label %gki_upsize.exit, label %49, !dbg !209

gki_upsize.exit:                                  ; preds = %._crit_edge.i, %41
  %71 = bitcast %struct.GKI* %hash to i8**, !dbg !229
  %72 = load i8** %71, align 8, !dbg !229, !tbaa !118
  tail call void @free(i8* %72) #7, !dbg !230
  %73 = getelementptr inbounds %struct.GKI* %43, i64 0, i32 1, !dbg !231
  %74 = load i32* %73, align 4, !dbg !231, !tbaa !104
  store i32 %74, i32* %38, align 4, !dbg !232, !tbaa !104
  %75 = getelementptr inbounds %struct.GKI* %43, i64 0, i32 2, !dbg !233
  %76 = load i32* %75, align 4, !dbg !233, !tbaa !114
  store i32 %76, i32* %33, align 4, !dbg !234, !tbaa !114
  %77 = bitcast %struct.GKI* %43 to i64*, !dbg !235
  %78 = load i64* %77, align 8, !dbg !235, !tbaa !118
  %79 = bitcast %struct.GKI* %hash to i64*, !dbg !236
  store i64 %78, i64* %79, align 8, !dbg !236, !tbaa !118
  %80 = bitcast %struct.GKI* %43 to i8*, !dbg !237
  tail call void @free(i8* %80) #7, !dbg !238
  %.pre = load i32* %24, align 4, !dbg !239, !tbaa !131
  br label %81, !dbg !213

; <label>:81                                      ; preds = %0, %gki_upsize.exit, %37
  %82 = phi i32 [ %32, %0 ], [ %.pre, %gki_upsize.exit ], [ %32, %37 ]
  %83 = add nsw i32 %82, -1, !dbg !240
  ret i32 %83, !dbg !241
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @gki_hashvalue(%struct.GKI* nocapture readonly %hash, i8* nocapture readonly %key) #2 {
  tail call void @llvm.dbg.value(metadata %struct.GKI* %hash, i64 0, metadata !70, metadata !93), !dbg !242
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !71, metadata !93), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !93), !dbg !244
  %1 = load i8* %key, align 1, !dbg !245, !tbaa !248
  %2 = icmp eq i8 %1, 0, !dbg !249
  br i1 %2, label %.loopexit, label %.lr.ph, !dbg !250

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !251
  br label %4, !dbg !250

; <label>:4                                       ; preds = %.lr.ph, %15
  %5 = phi i8 [ %1, %.lr.ph ], [ %22, %15 ]
  %val.03 = phi i32 [ 0, %.lr.ph ], [ %20, %15 ]
  %.02 = phi i8* [ %key, %.lr.ph ], [ %21, %15 ]
  %6 = sext i8 %5 to i32, !dbg !245
  %7 = shl nsw i32 %val.03, 7, !dbg !253
  %8 = add nsw i32 %6, %7, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !72, metadata !93), !dbg !244
  %9 = getelementptr inbounds i8* %.02, i64 1, !dbg !255
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !71, metadata !93), !dbg !243
  %10 = load i8* %9, align 1, !dbg !257, !tbaa !248
  %11 = icmp eq i8 %10, 0, !dbg !258
  br i1 %11, label %12, label %15, !dbg !259

; <label>:12                                      ; preds = %4
  %13 = load i32* %3, align 4, !dbg !260, !tbaa !114
  %14 = srem i32 %8, %13, !dbg !262
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !72, metadata !93), !dbg !244
  br label %.loopexit, !dbg !263

; <label>:15                                      ; preds = %4
  %16 = sext i8 %10 to i32, !dbg !257
  %17 = shl i32 %8, 7, !dbg !264
  %18 = add nsw i32 %16, %17, !dbg !265
  %19 = load i32* %3, align 4, !dbg !251, !tbaa !114
  %20 = srem i32 %18, %19, !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !72, metadata !93), !dbg !244
  %21 = getelementptr inbounds i8* %.02, i64 2, !dbg !267
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !71, metadata !93), !dbg !243
  %22 = load i8* %21, align 1, !dbg !245, !tbaa !248
  %23 = icmp eq i8 %22, 0, !dbg !249
  br i1 %23, label %.loopexit, label %4, !dbg !250

.loopexit:                                        ; preds = %15, %0, %12
  %val.1 = phi i32 [ %14, %12 ], [ 0, %0 ], [ %20, %15 ]
  ret i32 %val.1, !dbg !268
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @GKIKeyIndex(%struct.GKI* nocapture readonly %hash, i8* nocapture readonly %key) #2 {
  tail call void @llvm.dbg.value(metadata %struct.GKI* %hash, i64 0, metadata !48, metadata !93), !dbg !269
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !49, metadata !93), !dbg !270
  %1 = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %hash, i8* %key) #6, !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !51, metadata !93), !dbg !272
  %2 = sext i32 %1 to i64, !dbg !273
  %3 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !275
  %4 = load %struct.gki_elem*** %3, align 8, !dbg !275, !tbaa !118
  %5 = getelementptr inbounds %struct.gki_elem** %4, i64 %2, !dbg !273
  %ptr.02 = load %struct.gki_elem** %5, align 8, !dbg !273
  %6 = icmp eq %struct.gki_elem* %ptr.02, null, !dbg !276
  br i1 %6, label %.loopexit, label %.lr.ph, !dbg !278

.lr.ph:                                           ; preds = %0, %14
  %ptr.03 = phi %struct.gki_elem* [ %ptr.0, %14 ], [ %ptr.02, %0 ]
  %7 = getelementptr inbounds %struct.gki_elem* %ptr.03, i64 0, i32 0, !dbg !279
  %8 = load i8** %7, align 8, !dbg !279, !tbaa !153
  %9 = tail call i32 @strcmp(i8* %key, i8* %8) #7, !dbg !281
  %10 = icmp eq i32 %9, 0, !dbg !282
  br i1 %10, label %11, label %14, !dbg !283

; <label>:11                                      ; preds = %.lr.ph
  %12 = getelementptr inbounds %struct.gki_elem* %ptr.03, i64 0, i32 1, !dbg !284
  %13 = load i32* %12, align 4, !dbg !284, !tbaa !188
  br label %.loopexit, !dbg !285

; <label>:14                                      ; preds = %.lr.ph
  %15 = getelementptr inbounds %struct.gki_elem* %ptr.03, i64 0, i32 2, !dbg !286
  %ptr.0 = load %struct.gki_elem** %15, align 8, !dbg !273
  %16 = icmp eq %struct.gki_elem* %ptr.0, null, !dbg !276
  br i1 %16, label %.loopexit, label %.lr.ph, !dbg !278

.loopexit:                                        ; preds = %14, %0, %11
  %.0 = phi i32 [ %13, %11 ], [ -1, %0 ], [ -1, %14 ]
  ret i32 %.0, !dbg !287
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @GKIStatus(%struct.GKI* nocapture readonly %hash) #0 {
  tail call void @llvm.dbg.value(metadata %struct.GKI* %hash, i64 0, metadata !54, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !93), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !59, metadata !93), !dbg !290
  tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !60, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !93), !dbg !292
  %1 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !293
  %2 = load i32* %1, align 4, !dbg !293, !tbaa !114
  %3 = icmp sgt i32 %2, 0, !dbg !296
  br i1 %3, label %.lr.ph9, label %._crit_edge10, !dbg !297

.lr.ph9:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !298
  %5 = load %struct.gki_elem*** %4, align 8, !dbg !298, !tbaa !118
  %6 = sext i32 %2 to i64, !dbg !297
  br label %7, !dbg !297

; <label>:7                                       ; preds = %.lr.ph9, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next, %._crit_edge ]
  %minkeys.07 = phi i32 [ 2147483647, %.lr.ph9 ], [ %nkeys.0.minkeys.0, %._crit_edge ]
  %maxkeys.06 = phi i32 [ -1, %.lr.ph9 ], [ %maxkeys.1, %._crit_edge ]
  %nempty.05 = phi i32 [ 0, %.lr.ph9 ], [ %.nempty.0, %._crit_edge ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !93), !dbg !301
  %8 = getelementptr inbounds %struct.gki_elem** %5, i64 %indvars.iv, !dbg !302
  %ptr.01 = load %struct.gki_elem** %8, align 8, !dbg !302
  %9 = icmp eq %struct.gki_elem* %ptr.01, null, !dbg !303
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !305

.lr.ph:                                           ; preds = %7, %.lr.ph
  %ptr.03 = phi %struct.gki_elem* [ %ptr.0, %.lr.ph ], [ %ptr.01, %7 ]
  %nkeys.02 = phi i32 [ %10, %.lr.ph ], [ 0, %7 ]
  %10 = add nuw nsw i32 %nkeys.02, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !57, metadata !93), !dbg !301
  %11 = getelementptr inbounds %struct.gki_elem* %ptr.03, i64 0, i32 2, !dbg !307
  %ptr.0 = load %struct.gki_elem** %11, align 8, !dbg !302
  %12 = icmp eq %struct.gki_elem* %ptr.0, null, !dbg !303
  br i1 %12, label %._crit_edge, label %.lr.ph, !dbg !305

._crit_edge:                                      ; preds = %.lr.ph, %7
  %nkeys.0.lcssa = phi i32 [ 0, %7 ], [ %10, %.lr.ph ]
  %13 = icmp eq i32 %nkeys.0.lcssa, 0, !dbg !308
  %14 = zext i1 %13 to i32, !dbg !310
  %.nempty.0 = add nsw i32 %14, %nempty.05, !dbg !310
  %15 = icmp sgt i32 %nkeys.0.lcssa, %maxkeys.06, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !59, metadata !93), !dbg !290
  %maxkeys.1 = select i1 %15, i32 %nkeys.0.lcssa, i32 %maxkeys.06, !dbg !313
  %16 = icmp slt i32 %nkeys.0.lcssa, %minkeys.07, !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !60, metadata !93), !dbg !291
  %nkeys.0.minkeys.0 = select i1 %16, i32 %nkeys.0.lcssa, i32 %minkeys.07, !dbg !316
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !297
  %17 = icmp slt i64 %indvars.iv.next, %6, !dbg !296
  br i1 %17, label %7, label %._crit_edge10, !dbg !297

._crit_edge10:                                    ; preds = %._crit_edge, %0
  %minkeys.0.lcssa = phi i32 [ 2147483647, %0 ], [ %nkeys.0.minkeys.0, %._crit_edge ]
  %maxkeys.0.lcssa = phi i32 [ -1, %0 ], [ %maxkeys.1, %._crit_edge ]
  %nempty.0.lcssa = phi i32 [ 0, %0 ], [ %.nempty.0, %._crit_edge ]
  %18 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 3, !dbg !317
  %19 = load i32* %18, align 4, !dbg !317, !tbaa !131
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), i32 %19) #7, !dbg !318
  %21 = load i32* %1, align 4, !dbg !319, !tbaa !114
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %21) #7, !dbg !320
  %23 = load i32* %18, align 4, !dbg !321, !tbaa !131
  %24 = sitofp i32 %23 to float, !dbg !322
  %25 = load i32* %1, align 4, !dbg !323, !tbaa !114
  %26 = sitofp i32 %25 to float, !dbg !324
  %27 = fdiv float %24, %26, !dbg !325
  %28 = fpext float %27 to double, !dbg !322
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0), double %28) #7, !dbg !326
  %30 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %nempty.0.lcssa) #7, !dbg !327
  %31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i32 %maxkeys.0.lcssa) #7, !dbg !328
  %32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i32 %minkeys.0.lcssa) #7, !dbg !329
  ret void, !dbg !330
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89, !90}
!llvm.ident = !{!91}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !83, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!6 = !{!7, !31, !38, !46, !52, !61, !68, !73}
!7 = !DISubprogram(name: "GKIInit", scope: !1, file: !1, line: 117, type: !8, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: %struct.GKI* ()* @GKIInit, variables: !29)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !12, line: 42, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 36, size: 192, align: 64, elements: !14)
!14 = !{!15, !26, !27, !28}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !13, file: !12, line: 37, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !12, line: 26, size: 192, align: 64, elements: !19)
!19 = !{!20, !23, !25}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !18, file: !12, line: 27, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !18, file: !12, line: 28, baseType: !24, size: 32, align: 32, offset: 64)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !18, file: !12, line: 29, baseType: !17, size: 64, align: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !13, file: !12, line: 39, baseType: !24, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !13, file: !12, line: 40, baseType: !24, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !13, file: !12, line: 41, baseType: !24, size: 32, align: 32, offset: 128)
!29 = !{!30}
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hash", scope: !7, file: !1, line: 119, type: !10)
!31 = !DISubprogram(name: "GKIFree", scope: !1, file: !1, line: 135, type: !32, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.GKI*)* @GKIFree, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !10}
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash", arg: 1, scope: !31, file: !1, line: 135, type: !10)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !31, file: !1, line: 137, type: !17)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !31, file: !1, line: 138, type: !24)
!38 = !DISubprogram(name: "GKIStoreKey", scope: !1, file: !1, line: 181, type: !39, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.GKI*, i8*)* @GKIStoreKey, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!24, !10, !21}
!41 = !{!42, !43, !44, !45}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash", arg: 1, scope: !38, file: !1, line: 181, type: !10)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !38, file: !1, line: 181, type: !21)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !38, file: !1, line: 183, type: !24)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !38, file: !1, line: 184, type: !17)
!46 = !DISubprogram(name: "GKIKeyIndex", scope: !1, file: !1, line: 219, type: !39, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.GKI*, i8*)* @GKIKeyIndex, variables: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash", arg: 1, scope: !46, file: !1, line: 219, type: !10)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !46, file: !1, line: 219, type: !21)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !46, file: !1, line: 221, type: !17)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !46, file: !1, line: 222, type: !24)
!52 = !DISubprogram(name: "GKIStatus", scope: !1, file: !1, line: 243, type: !32, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.GKI*)* @GKIStatus, variables: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !60}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash", arg: 1, scope: !52, file: !1, line: 243, type: !10)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !52, file: !1, line: 245, type: !17)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !52, file: !1, line: 246, type: !24)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nkeys", scope: !52, file: !1, line: 247, type: !24)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nempty", scope: !52, file: !1, line: 248, type: !24)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxkeys", scope: !52, file: !1, line: 249, type: !24)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minkeys", scope: !52, file: !1, line: 250, type: !24)
!61 = !DISubprogram(name: "gki_alloc", scope: !1, file: !1, line: 287, type: !62, isLocal: true, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, function: %struct.GKI* (i32)* @gki_alloc, variables: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{!10, !24}
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "primelevel", arg: 1, scope: !61, file: !1, line: 287, type: !24)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hash", scope: !61, file: !1, line: 289, type: !10)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !61, file: !1, line: 290, type: !24)
!68 = !DISubprogram(name: "gki_hashvalue", scope: !1, file: !1, line: 325, type: !39, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.GKI*, i8*)* @gki_hashvalue, variables: !69)
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hash", arg: 1, scope: !68, file: !1, line: 325, type: !10)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !68, file: !1, line: 325, type: !21)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !68, file: !1, line: 327, type: !24)
!73 = !DISubprogram(name: "gki_upsize", scope: !1, file: !1, line: 350, type: !74, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, variables: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{!24, !10}
!76 = !{!77, !78, !79, !80, !81, !82}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "old", arg: 1, scope: !73, file: !1, line: 350, type: !10)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !73, file: !1, line: 352, type: !10)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !73, file: !1, line: 353, type: !24)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "optr", scope: !73, file: !1, line: 354, type: !17)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nptr", scope: !73, file: !1, line: 355, type: !17)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !73, file: !1, line: 356, type: !24)
!83 = !{!84}
!84 = !DIGlobalVariable(name: "gki_primes", scope: !0, file: !1, line: 96, type: !85, isLocal: true, isDefinition: true, variable: [4 x i32]* @gki_primes)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, align: 32, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 4)
!88 = !{i32 2, !"Dwarf Version", i32 2}
!89 = !{i32 2, !"Debug Info Version", i32 700000003}
!90 = !{i32 1, !"PIC Level", i32 2}
!91 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!92 = !DILocation(line: 120, column: 10, scope: !7)
!93 = !DIExpression()
!94 = !DILocation(line: 119, column: 8, scope: !7)
!95 = !DILocation(line: 121, column: 3, scope: !7)
!96 = !DILocation(line: 287, column: 15, scope: !61)
!97 = !DILocation(line: 292, column: 22, scope: !98)
!98 = distinct !DILexicalBlock(scope: !61, file: !1, line: 292, column: 7)
!99 = !DILocation(line: 293, column: 5, scope: !98)
!100 = !DILocation(line: 294, column: 10, scope: !61)
!101 = !DILocation(line: 289, column: 8, scope: !61)
!102 = !DILocation(line: 296, column: 9, scope: !61)
!103 = !DILocation(line: 296, column: 20, scope: !61)
!104 = !{!105, !109, i64 8}
!105 = !{!"", !106, i64 0, !109, i64 8, !109, i64 12, !109, i64 16}
!106 = !{!"any pointer", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!"int", !107, i64 0}
!110 = !DILocation(line: 297, column: 22, scope: !61)
!111 = !{!109, !109, i64 0}
!112 = !DILocation(line: 297, column: 9, scope: !61)
!113 = !DILocation(line: 297, column: 20, scope: !61)
!114 = !{!105, !109, i64 12}
!115 = !DILocation(line: 298, column: 22, scope: !61)
!116 = !DILocation(line: 298, column: 9, scope: !61)
!117 = !DILocation(line: 298, column: 20, scope: !61)
!118 = !{!105, !106, i64 0}
!119 = !DILocation(line: 290, column: 8, scope: !61)
!120 = !DILocation(line: 299, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 299, column: 3)
!122 = distinct !DILexicalBlock(scope: !61, file: !1, line: 299, column: 3)
!123 = !DILocation(line: 299, column: 17, scope: !121)
!124 = !DILocation(line: 299, column: 3, scope: !122)
!125 = !DILocation(line: 300, column: 20, scope: !121)
!126 = !{!106, !106, i64 0}
!127 = !DILocation(line: 300, column: 11, scope: !121)
!128 = !DILocation(line: 300, column: 5, scope: !121)
!129 = !DILocation(line: 301, column: 9, scope: !61)
!130 = !DILocation(line: 301, column: 15, scope: !61)
!131 = !{!105, !109, i64 16}
!132 = !DILocation(line: 302, column: 3, scope: !61)
!133 = !DILocation(line: 135, column: 14, scope: !31)
!134 = !DILocation(line: 140, column: 12, scope: !135)
!135 = distinct !DILexicalBlock(scope: !31, file: !1, line: 140, column: 7)
!136 = !DILocation(line: 140, column: 7, scope: !31)
!137 = !DILocation(line: 142, column: 25, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 142, column: 3)
!139 = distinct !DILexicalBlock(scope: !31, file: !1, line: 142, column: 3)
!140 = !DILocation(line: 142, column: 17, scope: !138)
!141 = !DILocation(line: 142, column: 3, scope: !139)
!142 = !DILocation(line: 151, column: 14, scope: !31)
!143 = !DILocation(line: 143, column: 18, scope: !138)
!144 = !DILocation(line: 143, column: 12, scope: !138)
!145 = !DILocation(line: 143, column: 27, scope: !138)
!146 = !DILocation(line: 143, column: 5, scope: !138)
!147 = !DILocation(line: 145, column: 24, scope: !148)
!148 = distinct !DILexicalBlock(scope: !138, file: !1, line: 144, column: 7)
!149 = !{!150, !106, i64 16}
!150 = !{!"gki_elem", !106, i64 0, !109, i64 8, !106, i64 16}
!151 = !DILocation(line: 147, column: 22, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 147, column: 6)
!153 = !{!150, !106, i64 0}
!154 = !DILocation(line: 147, column: 26, scope: !152)
!155 = !DILocation(line: 147, column: 6, scope: !148)
!156 = !DILocation(line: 147, column: 35, scope: !152)
!157 = !DILocation(line: 148, column: 13, scope: !148)
!158 = !DILocation(line: 148, column: 7, scope: !148)
!159 = !DILocation(line: 148, column: 2, scope: !148)
!160 = !DILocation(line: 149, column: 8, scope: !148)
!161 = !DILocation(line: 149, column: 2, scope: !148)
!162 = !DILocation(line: 149, column: 17, scope: !148)
!163 = !DILocation(line: 151, column: 3, scope: !31)
!164 = !DILocation(line: 152, column: 8, scope: !31)
!165 = !DILocation(line: 152, column: 3, scope: !31)
!166 = !DILocation(line: 153, column: 1, scope: !31)
!167 = !DILocation(line: 181, column: 18, scope: !38)
!168 = !DILocation(line: 181, column: 30, scope: !38)
!169 = !DILocation(line: 186, column: 9, scope: !38)
!170 = !DILocation(line: 183, column: 7, scope: !38)
!171 = !DILocation(line: 188, column: 9, scope: !38)
!172 = !DILocation(line: 188, column: 15, scope: !38)
!173 = !DILocation(line: 189, column: 27, scope: !38)
!174 = !DILocation(line: 189, column: 9, scope: !38)
!175 = !DILocation(line: 189, column: 3, scope: !38)
!176 = !DILocation(line: 189, column: 25, scope: !38)
!177 = !DILocation(line: 190, column: 27, scope: !38)
!178 = !DILocation(line: 190, column: 9, scope: !38)
!179 = !DILocation(line: 190, column: 3, scope: !38)
!180 = !DILocation(line: 190, column: 21, scope: !38)
!181 = !DILocation(line: 190, column: 25, scope: !38)
!182 = !DILocation(line: 191, column: 3, scope: !38)
!183 = !DILocation(line: 193, column: 33, scope: !38)
!184 = !DILocation(line: 193, column: 9, scope: !38)
!185 = !DILocation(line: 193, column: 3, scope: !38)
!186 = !DILocation(line: 193, column: 21, scope: !38)
!187 = !DILocation(line: 193, column: 25, scope: !38)
!188 = !{!150, !109, i64 8}
!189 = !DILocation(line: 194, column: 21, scope: !38)
!190 = !DILocation(line: 194, column: 25, scope: !38)
!191 = !DILocation(line: 196, column: 14, scope: !38)
!192 = !DILocation(line: 198, column: 29, scope: !193)
!193 = distinct !DILexicalBlock(scope: !38, file: !1, line: 198, column: 7)
!194 = !DILocation(line: 198, column: 22, scope: !193)
!195 = !DILocation(line: 198, column: 19, scope: !193)
!196 = !DILocation(line: 198, column: 35, scope: !193)
!197 = !DILocation(line: 198, column: 44, scope: !193)
!198 = !DILocation(line: 198, column: 55, scope: !193)
!199 = !DILocation(line: 198, column: 7, scope: !38)
!200 = !DILocation(line: 359, column: 34, scope: !73, inlinedAt: !201)
!201 = distinct !DILocation(line: 199, column: 5, scope: !193)
!202 = !DILocation(line: 359, column: 9, scope: !73, inlinedAt: !201)
!203 = !DILocation(line: 352, column: 13, scope: !73, inlinedAt: !201)
!204 = !DILocation(line: 353, column: 13, scope: !73, inlinedAt: !201)
!205 = !DILocation(line: 366, column: 24, scope: !206, inlinedAt: !201)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 366, column: 3)
!207 = distinct !DILexicalBlock(scope: !73, file: !1, line: 366, column: 3)
!208 = !DILocation(line: 366, column: 17, scope: !206, inlinedAt: !201)
!209 = !DILocation(line: 366, column: 3, scope: !207, inlinedAt: !201)
!210 = !DILocation(line: 373, column: 16, scope: !211, inlinedAt: !201)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 370, column: 2)
!212 = distinct !DILexicalBlock(scope: !206, file: !1, line: 367, column: 5)
!213 = !DILocation(line: 199, column: 5, scope: !193)
!214 = !DILocation(line: 368, column: 19, scope: !212, inlinedAt: !201)
!215 = !DILocation(line: 368, column: 14, scope: !212, inlinedAt: !201)
!216 = !DILocation(line: 354, column: 20, scope: !73, inlinedAt: !201)
!217 = !DILocation(line: 369, column: 19, scope: !212, inlinedAt: !201)
!218 = !DILocation(line: 369, column: 7, scope: !212, inlinedAt: !201)
!219 = !DILocation(line: 371, column: 35, scope: !211, inlinedAt: !201)
!220 = !DILocation(line: 371, column: 10, scope: !211, inlinedAt: !201)
!221 = !DILocation(line: 356, column: 13, scope: !73, inlinedAt: !201)
!222 = !DILocation(line: 373, column: 11, scope: !211, inlinedAt: !201)
!223 = !DILocation(line: 374, column: 25, scope: !211, inlinedAt: !201)
!224 = !DILocation(line: 375, column: 33, scope: !211, inlinedAt: !201)
!225 = !DILocation(line: 376, column: 9, scope: !211, inlinedAt: !201)
!226 = !DILocation(line: 376, column: 4, scope: !211, inlinedAt: !201)
!227 = !DILocation(line: 376, column: 21, scope: !211, inlinedAt: !201)
!228 = !DILocation(line: 376, column: 25, scope: !211, inlinedAt: !201)
!229 = !DILocation(line: 379, column: 13, scope: !73, inlinedAt: !201)
!230 = !DILocation(line: 379, column: 3, scope: !73, inlinedAt: !201)
!231 = !DILocation(line: 385, column: 26, scope: !73, inlinedAt: !201)
!232 = !DILocation(line: 385, column: 19, scope: !73, inlinedAt: !201)
!233 = !DILocation(line: 386, column: 26, scope: !73, inlinedAt: !201)
!234 = !DILocation(line: 386, column: 19, scope: !73, inlinedAt: !201)
!235 = !DILocation(line: 387, column: 26, scope: !73, inlinedAt: !201)
!236 = !DILocation(line: 387, column: 19, scope: !73, inlinedAt: !201)
!237 = !DILocation(line: 388, column: 8, scope: !73, inlinedAt: !201)
!238 = !DILocation(line: 388, column: 3, scope: !73, inlinedAt: !201)
!239 = !DILocation(line: 201, column: 16, scope: !38)
!240 = !DILocation(line: 201, column: 21, scope: !38)
!241 = !DILocation(line: 201, column: 3, scope: !38)
!242 = !DILocation(line: 325, column: 20, scope: !68)
!243 = !DILocation(line: 325, column: 32, scope: !68)
!244 = !DILocation(line: 327, column: 7, scope: !68)
!245 = !DILocation(line: 329, column: 10, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 329, column: 3)
!247 = distinct !DILexicalBlock(scope: !68, file: !1, line: 329, column: 3)
!248 = !{!107, !107, i64 0}
!249 = !DILocation(line: 329, column: 15, scope: !246)
!250 = !DILocation(line: 329, column: 3, scope: !247)
!251 = !DILocation(line: 333, column: 51, scope: !252)
!252 = distinct !DILexicalBlock(scope: !246, file: !1, line: 330, column: 5)
!253 = !DILocation(line: 331, column: 29, scope: !252)
!254 = !DILocation(line: 331, column: 34, scope: !252)
!255 = !DILocation(line: 332, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !1, line: 332, column: 11)
!257 = !DILocation(line: 332, column: 11, scope: !256)
!258 = !DILocation(line: 332, column: 20, scope: !256)
!259 = !DILocation(line: 332, column: 11, scope: !252)
!260 = !DILocation(line: 332, column: 49, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 332, column: 29)
!262 = !DILocation(line: 332, column: 41, scope: !261)
!263 = !DILocation(line: 332, column: 56, scope: !261)
!264 = !DILocation(line: 333, column: 30, scope: !252)
!265 = !DILocation(line: 333, column: 35, scope: !252)
!266 = !DILocation(line: 333, column: 43, scope: !252)
!267 = !DILocation(line: 329, column: 27, scope: !246)
!268 = !DILocation(line: 335, column: 3, scope: !68)
!269 = !DILocation(line: 219, column: 18, scope: !46)
!270 = !DILocation(line: 219, column: 30, scope: !46)
!271 = !DILocation(line: 224, column: 9, scope: !46)
!272 = !DILocation(line: 222, column: 7, scope: !46)
!273 = !DILocation(line: 225, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !46, file: !1, line: 225, column: 3)
!275 = !DILocation(line: 225, column: 20, scope: !274)
!276 = !DILocation(line: 225, column: 36, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !1, line: 225, column: 3)
!278 = !DILocation(line: 225, column: 3, scope: !274)
!279 = !DILocation(line: 226, column: 26, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !1, line: 226, column: 9)
!281 = !DILocation(line: 226, column: 9, scope: !280)
!282 = !DILocation(line: 226, column: 31, scope: !280)
!283 = !DILocation(line: 226, column: 9, scope: !277)
!284 = !DILocation(line: 226, column: 49, scope: !280)
!285 = !DILocation(line: 226, column: 37, scope: !280)
!286 = !DILocation(line: 225, column: 56, scope: !277)
!287 = !DILocation(line: 228, column: 1, scope: !46)
!288 = !DILocation(line: 243, column: 16, scope: !52)
!289 = !DILocation(line: 248, column: 7, scope: !52)
!290 = !DILocation(line: 249, column: 7, scope: !52)
!291 = !DILocation(line: 250, column: 7, scope: !52)
!292 = !DILocation(line: 246, column: 7, scope: !52)
!293 = !DILocation(line: 252, column: 25, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 252, column: 3)
!295 = distinct !DILexicalBlock(scope: !52, file: !1, line: 252, column: 3)
!296 = !DILocation(line: 252, column: 17, scope: !294)
!297 = !DILocation(line: 252, column: 3, scope: !295)
!298 = !DILocation(line: 255, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 255, column: 7)
!300 = distinct !DILexicalBlock(scope: !294, file: !1, line: 253, column: 5)
!301 = !DILocation(line: 247, column: 7, scope: !52)
!302 = !DILocation(line: 255, column: 18, scope: !299)
!303 = !DILocation(line: 255, column: 38, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !1, line: 255, column: 7)
!305 = !DILocation(line: 255, column: 7, scope: !299)
!306 = !DILocation(line: 256, column: 7, scope: !304)
!307 = !DILocation(line: 255, column: 58, scope: !304)
!308 = !DILocation(line: 258, column: 17, scope: !309)
!309 = distinct !DILexicalBlock(scope: !300, file: !1, line: 258, column: 11)
!310 = !DILocation(line: 258, column: 11, scope: !300)
!311 = !DILocation(line: 259, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !300, file: !1, line: 259, column: 11)
!313 = !DILocation(line: 259, column: 11, scope: !300)
!314 = !DILocation(line: 260, column: 17, scope: !315)
!315 = distinct !DILexicalBlock(scope: !300, file: !1, line: 260, column: 11)
!316 = !DILocation(line: 260, column: 11, scope: !300)
!317 = !DILocation(line: 263, column: 43, scope: !52)
!318 = !DILocation(line: 263, column: 3, scope: !52)
!319 = !DILocation(line: 264, column: 43, scope: !52)
!320 = !DILocation(line: 264, column: 3, scope: !52)
!321 = !DILocation(line: 265, column: 53, scope: !52)
!322 = !DILocation(line: 265, column: 39, scope: !52)
!323 = !DILocation(line: 265, column: 75, scope: !52)
!324 = !DILocation(line: 265, column: 61, scope: !52)
!325 = !DILocation(line: 265, column: 59, scope: !52)
!326 = !DILocation(line: 265, column: 3, scope: !52)
!327 = !DILocation(line: 266, column: 3, scope: !52)
!328 = !DILocation(line: 267, column: 3, scope: !52)
!329 = !DILocation(line: 268, column: 3, scope: !52)
!330 = !DILocation(line: 270, column: 1, scope: !52)

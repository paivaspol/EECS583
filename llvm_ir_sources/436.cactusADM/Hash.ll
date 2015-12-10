; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.T_HASH = type { i32, i32, i32, %struct.T_HASH_ENTRY** }
%struct.T_HASH_ENTRY = type { %struct.T_HASH_ENTRY*, %struct.T_HASH_ENTRY*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/util/Hash.c,v 1.10 2001/06/25 20:36:46 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Hash_c() #0 {
  ret i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.T_HASH* @Util_HashCreate(i32 %initial_size) #1 {
  %1 = tail call i8* @malloc(i64 24) #5
  %2 = bitcast i8* %1 to %struct.T_HASH*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %18, label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %storemerge = phi i32 [ %5, %.preheader ], [ 2, %0 ]
  %4 = icmp ult i32 %storemerge, %initial_size
  %5 = shl i32 %storemerge, 1
  br i1 %4, label %.preheader, label %6

; <label>:6                                       ; preds = %.preheader
  %7 = bitcast i8* %1 to i32*
  store i32 %storemerge, i32* %7, align 4, !tbaa !2
  %8 = getelementptr inbounds i8* %1, i64 4
  %9 = bitcast i8* %8 to i32*
  store i32 0, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds i8* %1, i64 8
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 4, !tbaa !9
  %12 = zext i32 %storemerge to i64
  %13 = tail call i8* @calloc(i64 8, i64 %12) #5
  %14 = getelementptr inbounds i8* %1, i64 16
  %15 = bitcast i8* %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !10
  %16 = icmp eq i8* %13, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %6
  tail call void @free(i8* %1) #6
  br label %18

; <label>:18                                      ; preds = %6, %0, %17
  %retval.0 = phi %struct.T_HASH* [ %2, %6 ], [ null, %17 ], [ %2, %0 ]
  ret %struct.T_HASH* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_HashDestroy(%struct.T_HASH* nocapture readonly %hash, void (i8*)* %delete_entry) #1 {
  %1 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3
  %4 = load %struct.T_HASH_ENTRY*** %3, align 8, !tbaa !10
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %._crit_edge6, label %.lr.ph4

._crit_edge6:                                     ; preds = %0
  %6 = bitcast %struct.T_HASH_ENTRY** %4 to i8*
  br label %23

.lr.ph4:                                          ; preds = %0
  %7 = icmp eq void (i8*)* %delete_entry, null
  %8 = add i32 %2, -1
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next, %._crit_edge ]
  %10 = getelementptr inbounds %struct.T_HASH_ENTRY** %4, i64 %indvars.iv
  %11 = load %struct.T_HASH_ENTRY** %10, align 8, !tbaa !11
  %12 = icmp eq %struct.T_HASH_ENTRY* %11, null
  br i1 %12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %9, %20
  %entry.01 = phi %struct.T_HASH_ENTRY* [ %14, %20 ], [ %11, %9 ]
  %13 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.01, i64 0, i32 1
  %14 = load %struct.T_HASH_ENTRY** %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.01, i64 0, i32 4
  %16 = load i8** %15, align 8, !tbaa !14
  tail call void @free(i8* %16) #6
  br i1 %7, label %20, label %17

; <label>:17                                      ; preds = %.lr.ph
  %18 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.01, i64 0, i32 5
  %19 = load i8** %18, align 8, !tbaa !15
  tail call void %delete_entry(i8* %19) #5
  br label %20

; <label>:20                                      ; preds = %.lr.ph, %17
  %21 = bitcast %struct.T_HASH_ENTRY* %entry.01 to i8*
  tail call void @free(i8* %21) #6
  %22 = icmp eq %struct.T_HASH_ENTRY* %14, null
  br i1 %22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %20, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond, label %._crit_edge5, label %9

._crit_edge5:                                     ; preds = %._crit_edge
  %.phi.trans.insert = bitcast %struct.T_HASH_ENTRY*** %3 to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !10
  br label %23

; <label>:23                                      ; preds = %._crit_edge6, %._crit_edge5
  %24 = phi i8* [ %6, %._crit_edge6 ], [ %.pre, %._crit_edge5 ]
  tail call void @free(i8* %24) #6
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_HashStore(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture readonly %key, i32 %hashval, i8* %data) #1 {
  %1 = tail call fastcc %struct.T_HASH_ENTRY* @HashFind(%struct.T_HASH* %hash, i32 %klen, i8* %key, i32 %hashval) #6
  %2 = icmp eq %struct.T_HASH_ENTRY* %1, null
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.T_HASH_ENTRY* %1, i64 0, i32 5
  store i8* %data, i8** %4, align 8, !tbaa !15
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @Util_HashAdd(%struct.T_HASH* %hash, i32 %klen, i8* %key, i32 %hashval, i8* %data) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ 0, %3 ], [ %6, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.T_HASH_ENTRY* @HashFind(%struct.T_HASH* nocapture readonly %hash, i32 %klen, i8* nocapture readonly %key, i32 %hashval) #1 {
  %location = alloca i32, align 4
  %1 = icmp eq i32 %hashval, 0
  br i1 %1, label %2, label %Util_HashHash.exit

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32 %klen, 0
  br i1 %3, label %Util_HashHash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %2, %.lr.ph.i
  %pos.03.i = phi i8* [ %6, %.lr.ph.i ], [ %key, %2 ]
  %i.02.i = phi i32 [ %4, %.lr.ph.i ], [ %klen, %2 ]
  %hash.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %2 ]
  %4 = add nsw i32 %i.02.i, -1
  %5 = mul i32 %hash.01.i, 33
  %6 = getelementptr inbounds i8* %pos.03.i, i64 1
  %7 = load i8* %pos.03.i, align 1, !tbaa !16
  %8 = sext i8 %7 to i32
  %9 = add i32 %8, %5
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %Util_HashHash.exit, label %.lr.ph.i

Util_HashHash.exit:                               ; preds = %.lr.ph.i, %2, %0
  %.0 = phi i32 [ %hashval, %0 ], [ 0, %2 ], [ %9, %.lr.ph.i ]
  %11 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0
  %12 = load i32* %11, align 4, !tbaa !2
  %13 = urem i32 %.0, %12
  store volatile i32 %13, i32* %location, align 4
  %14 = load volatile i32* %location, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3
  %17 = load %struct.T_HASH_ENTRY*** %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.T_HASH_ENTRY** %17, i64 %15
  %entry.01 = load %struct.T_HASH_ENTRY** %18, align 8
  %19 = icmp eq %struct.T_HASH_ENTRY* %entry.01, null
  br i1 %19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Util_HashHash.exit, %23
  %entry.02 = phi %struct.T_HASH_ENTRY* [ %entry.0, %23 ], [ %entry.01, %Util_HashHash.exit ]
  %20 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.02, i64 0, i32 2
  %21 = load i32* %20, align 4, !tbaa !17
  %22 = icmp eq i32 %.0, %21
  br i1 %22, label %._crit_edge, label %23

; <label>:23                                      ; preds = %.lr.ph
  %24 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.02, i64 0, i32 1
  %entry.0 = load %struct.T_HASH_ENTRY** %24, align 8
  %25 = icmp eq %struct.T_HASH_ENTRY* %entry.0, null
  br i1 %25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %23, %Util_HashHash.exit
  %entry.0.lcssa = phi %struct.T_HASH_ENTRY* [ null, %Util_HashHash.exit ], [ %entry.02, %.lr.ph ], [ null, %23 ]
  ret %struct.T_HASH_ENTRY* %entry.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_HashAdd(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture readonly %key, i32 %hashval, i8* %data) #1 {
  %location.i = alloca i32, align 4
  %location = alloca i32, align 4
  %1 = icmp eq i32 %hashval, 0
  br i1 %1, label %2, label %Util_HashHash.exit

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32 %klen, 0
  br i1 %3, label %Util_HashHash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %2, %.lr.ph.i
  %pos.03.i = phi i8* [ %6, %.lr.ph.i ], [ %key, %2 ]
  %i.02.i = phi i32 [ %4, %.lr.ph.i ], [ %klen, %2 ]
  %hash.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %2 ]
  %4 = add nsw i32 %i.02.i, -1
  %5 = mul i32 %hash.01.i, 33
  %6 = getelementptr inbounds i8* %pos.03.i, i64 1
  %7 = load i8* %pos.03.i, align 1, !tbaa !16
  %8 = sext i8 %7 to i32
  %9 = add i32 %8, %5
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %Util_HashHash.exit, label %.lr.ph.i

Util_HashHash.exit:                               ; preds = %.lr.ph.i, %2, %0
  %.0 = phi i32 [ %hashval, %0 ], [ 0, %2 ], [ %9, %.lr.ph.i ]
  %11 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0
  %12 = load i32* %11, align 4, !tbaa !2
  %13 = urem i32 %.0, %12
  store volatile i32 %13, i32* %location, align 4
  %14 = load volatile i32* %location, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3
  %17 = load %struct.T_HASH_ENTRY*** %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.T_HASH_ENTRY** %17, i64 %15
  %entry.08 = load %struct.T_HASH_ENTRY** %18, align 8
  %19 = icmp eq %struct.T_HASH_ENTRY* %entry.08, null
  br i1 %19, label %._crit_edge11, label %.lr.ph10

; <label>:20                                      ; preds = %.lr.ph10
  %21 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.09, i64 0, i32 1
  %entry.0 = load %struct.T_HASH_ENTRY** %21, align 8
  %22 = icmp eq %struct.T_HASH_ENTRY* %entry.0, null
  br i1 %22, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %Util_HashHash.exit, %20
  %entry.09 = phi %struct.T_HASH_ENTRY* [ %entry.0, %20 ], [ %entry.08, %Util_HashHash.exit ]
  %23 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.09, i64 0, i32 2
  %24 = load i32* %23, align 4, !tbaa !17
  %25 = icmp eq i32 %.0, %24
  br i1 %25, label %.loopexit, label %20

._crit_edge11:                                    ; preds = %20, %Util_HashHash.exit
  %lastentry.0.lcssa = phi %struct.T_HASH_ENTRY* [ null, %Util_HashHash.exit ], [ %entry.09, %20 ]
  %26 = tail call i8* @malloc(i64 40) #5
  %27 = bitcast i8* %26 to %struct.T_HASH_ENTRY*
  %28 = icmp eq i8* %26, null
  br i1 %28, label %68, label %29

; <label>:29                                      ; preds = %._crit_edge11
  %30 = getelementptr inbounds i8* %26, i64 16
  %31 = bitcast i8* %30 to i32*
  store i32 %.0, i32* %31, align 4, !tbaa !17
  %32 = getelementptr inbounds i8* %26, i64 20
  %33 = bitcast i8* %32 to i32*
  store i32 %klen, i32* %33, align 4, !tbaa !18
  %34 = zext i32 %klen to i64
  %35 = tail call i8* @malloc(i64 %34) #5
  %36 = getelementptr inbounds i8* %26, i64 24
  %37 = bitcast i8* %36 to i8**
  store i8* %35, i8** %37, align 8, !tbaa !14
  %38 = getelementptr inbounds i8* %26, i64 32
  %39 = bitcast i8* %38 to i8**
  store i8* %data, i8** %39, align 8, !tbaa !15
  %40 = getelementptr inbounds i8* %26, i64 8
  %41 = bitcast i8* %40 to %struct.T_HASH_ENTRY**
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %41, align 8, !tbaa !12
  %42 = icmp eq i8* %35, null
  br i1 %42, label %67, label %.preheader

.preheader:                                       ; preds = %29
  %43 = icmp eq i32 %klen, 0
  br i1 %43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %44 = add i32 %klen, -1
  %45 = load i8* %key, align 1, !tbaa !16
  store i8 %45, i8* %35, align 1, !tbaa !16
  %exitcond1519 = icmp eq i32 %44, 0
  br i1 %exitcond1519, label %._crit_edge, label %._crit_edge16

._crit_edge16:                                    ; preds = %.lr.ph, %._crit_edge16
  %indvars.iv20 = phi i64 [ %indvars.iv.next, %._crit_edge16 ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv20, 1
  %.pre = load i8** %37, align 8, !tbaa !14
  %46 = getelementptr inbounds i8* %key, i64 %indvars.iv.next
  %47 = load i8* %46, align 1, !tbaa !16
  %48 = getelementptr inbounds i8* %.pre, i64 %indvars.iv.next
  store i8 %47, i8* %48, align 1, !tbaa !16
  %lftr.wideiv14 = trunc i64 %indvars.iv.next to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %44
  br i1 %exitcond15, label %._crit_edge, label %._crit_edge16

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge16, %.preheader
  %49 = icmp eq %struct.T_HASH_ENTRY* %lastentry.0.lcssa, null
  br i1 %49, label %53, label %50

; <label>:50                                      ; preds = %._crit_edge
  %51 = getelementptr inbounds %struct.T_HASH_ENTRY* %lastentry.0.lcssa, i64 0, i32 1
  %52 = bitcast %struct.T_HASH_ENTRY** %51 to i8**
  store i8* %26, i8** %52, align 8, !tbaa !12
  br label %62

; <label>:53                                      ; preds = %._crit_edge
  %54 = load volatile i32* %location, align 4
  %55 = zext i32 %54 to i64
  %56 = load %struct.T_HASH_ENTRY*** %16, align 8, !tbaa !10
  %57 = getelementptr inbounds %struct.T_HASH_ENTRY** %56, i64 %55
  %58 = bitcast %struct.T_HASH_ENTRY** %57 to i8**
  store i8* %26, i8** %58, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 1
  %60 = load i32* %59, align 4, !tbaa !8
  %61 = add i32 %60, 1
  store i32 %61, i32* %59, align 4, !tbaa !8
  br label %62

; <label>:62                                      ; preds = %53, %50
  %63 = bitcast i8* %26 to %struct.T_HASH_ENTRY**
  store %struct.T_HASH_ENTRY* %lastentry.0.lcssa, %struct.T_HASH_ENTRY** %63, align 8, !tbaa !19
  %64 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 2
  %65 = load i32* %64, align 4, !tbaa !9
  %66 = add i32 %65, 1
  store i32 %66, i32* %64, align 4, !tbaa !9
  br label %68

; <label>:67                                      ; preds = %29
  tail call void @free(i8* %26) #6
  br label %68

; <label>:68                                      ; preds = %62, %67, %._crit_edge11
  %entry.1.ph = phi %struct.T_HASH_ENTRY* [ %27, %._crit_edge11 ], [ null, %67 ], [ %27, %62 ]
  %69 = icmp eq %struct.T_HASH_ENTRY* %entry.1.ph, null
  %. = select i1 %69, i32 -2, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph10, %68
  %retval.0 = phi i32 [ %., %68 ], [ -1, %.lr.ph10 ]
  %70 = bitcast i32* %location.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70)
  %71 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 2
  %72 = load i32* %71, align 4, !tbaa !9
  %73 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 1
  %74 = load i32* %73, align 4, !tbaa !8
  %75 = icmp ugt i32 %72, %74
  br i1 %75, label %76, label %HashRehash.exit

; <label>:76                                      ; preds = %.loopexit
  %77 = load i32* %11, align 4, !tbaa !2
  %78 = shl i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = tail call i8* @calloc(i64 8, i64 %79) #5
  %81 = bitcast i8* %80 to %struct.T_HASH_ENTRY**
  %82 = load %struct.T_HASH_ENTRY*** %16, align 8, !tbaa !10
  %83 = icmp eq i8* %80, null
  %84 = bitcast %struct.T_HASH_ENTRY** %82 to i8*
  br i1 %83, label %HashRehash.exit, label %.preheader.i

.preheader.i:                                     ; preds = %76
  %85 = icmp eq i32 %77, 0
  br i1 %85, label %.preheader._crit_edge.i, label %.lr.ph5.i

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.pre8.i = bitcast %struct.T_HASH_ENTRY*** %16 to i8**
  br label %120

.lr.ph5.i:                                        ; preds = %.preheader.i
  %86 = add i32 %77, -1
  br label %87

; <label>:87                                      ; preds = %._crit_edge.i, %.lr.ph5.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next.i, %._crit_edge.i ]
  %new_fill.03.i = phi i32 [ 0, %.lr.ph5.i ], [ %new_fill.1.lcssa.i, %._crit_edge.i ]
  %88 = getelementptr inbounds %struct.T_HASH_ENTRY** %82, i64 %indvars.iv.i
  %89 = load %struct.T_HASH_ENTRY** %88, align 8, !tbaa !11
  %90 = icmp eq %struct.T_HASH_ENTRY* %89, null
  br i1 %90, label %._crit_edge.i, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %87, %118
  %entry.02.i = phi %struct.T_HASH_ENTRY* [ %92, %118 ], [ %89, %87 ]
  %new_fill.11.i = phi i32 [ %new_fill.2.i, %118 ], [ %new_fill.03.i, %87 ]
  %91 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.02.i, i64 0, i32 1
  %92 = load %struct.T_HASH_ENTRY** %91, align 8, !tbaa !12
  %93 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.02.i, i64 0, i32 2
  %94 = load i32* %93, align 4, !tbaa !17
  %95 = urem i32 %94, %78
  store volatile i32 %95, i32* %location.i, align 4
  %96 = load volatile i32* %location.i, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.T_HASH_ENTRY** %81, i64 %97
  %99 = load %struct.T_HASH_ENTRY** %98, align 8, !tbaa !11
  %100 = icmp eq %struct.T_HASH_ENTRY* %99, null
  br i1 %100, label %101, label %107

; <label>:101                                     ; preds = %.lr.ph.i1
  %102 = add i32 %new_fill.11.i, 1
  %103 = load volatile i32* %location.i, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.T_HASH_ENTRY** %81, i64 %104
  store %struct.T_HASH_ENTRY* %entry.02.i, %struct.T_HASH_ENTRY** %105, align 8, !tbaa !11
  %106 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.02.i, i64 0, i32 0
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %106, align 8, !tbaa !19
  br label %118

; <label>:107                                     ; preds = %.lr.ph.i1
  %108 = load volatile i32* %location.i, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.T_HASH_ENTRY** %81, i64 %109
  %111 = load %struct.T_HASH_ENTRY** %110, align 8, !tbaa !11
  br label %112

; <label>:112                                     ; preds = %112, %107
  %entry2.0.i = phi %struct.T_HASH_ENTRY* [ %111, %107 ], [ %114, %112 ]
  %113 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry2.0.i, i64 0, i32 1
  %114 = load %struct.T_HASH_ENTRY** %113, align 8, !tbaa !12
  %115 = icmp eq %struct.T_HASH_ENTRY* %114, null
  br i1 %115, label %116, label %112

; <label>:116                                     ; preds = %112
  store %struct.T_HASH_ENTRY* %entry.02.i, %struct.T_HASH_ENTRY** %113, align 8, !tbaa !12
  %117 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.02.i, i64 0, i32 0
  store %struct.T_HASH_ENTRY* %entry2.0.i, %struct.T_HASH_ENTRY** %117, align 8, !tbaa !19
  br label %118

; <label>:118                                     ; preds = %116, %101
  %new_fill.2.i = phi i32 [ %new_fill.11.i, %116 ], [ %102, %101 ]
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %91, align 8, !tbaa !12
  %119 = icmp eq %struct.T_HASH_ENTRY* %92, null
  br i1 %119, label %._crit_edge.i, label %.lr.ph.i1

._crit_edge.i:                                    ; preds = %118, %87
  %new_fill.1.lcssa.i = phi i32 [ %new_fill.03.i, %87 ], [ %new_fill.2.i, %118 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %86
  br i1 %exitcond, label %._crit_edge6.i, label %87

._crit_edge6.i:                                   ; preds = %._crit_edge.i
  %.phi.trans.insert.i = bitcast %struct.T_HASH_ENTRY*** %16 to i8**
  %.pre.i = load i8** %.phi.trans.insert.i, align 8, !tbaa !10
  br label %120

; <label>:120                                     ; preds = %._crit_edge6.i, %.preheader._crit_edge.i
  %.pre-phi.i = phi i8** [ %.pre8.i, %.preheader._crit_edge.i ], [ %.phi.trans.insert.i, %._crit_edge6.i ]
  %121 = phi i8* [ %84, %.preheader._crit_edge.i ], [ %.pre.i, %._crit_edge6.i ]
  %new_fill.0.lcssa.i = phi i32 [ 0, %.preheader._crit_edge.i ], [ %new_fill.1.lcssa.i, %._crit_edge6.i ]
  tail call void @free(i8* %121) #5
  store i8* %80, i8** %.pre-phi.i, align 8, !tbaa !10
  store i32 %new_fill.0.lcssa.i, i32* %73, align 4, !tbaa !8
  store i32 %78, i32* %11, align 4, !tbaa !2
  br label %HashRehash.exit

HashRehash.exit:                                  ; preds = %.loopexit, %76, %120
  call void @llvm.lifetime.end(i64 4, i8* %70)
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Util_HashHash(i32 %klen, i8* nocapture readonly %key) #3 {
  %1 = icmp eq i32 %klen, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %.lr.ph
  %pos.03 = phi i8* [ %4, %.lr.ph ], [ %key, %0 ]
  %i.02 = phi i32 [ %2, %.lr.ph ], [ %klen, %0 ]
  %hash.01 = phi i32 [ %7, %.lr.ph ], [ 0, %0 ]
  %2 = add nsw i32 %i.02, -1
  %3 = mul i32 %hash.01, 33
  %4 = getelementptr inbounds i8* %pos.03, i64 1
  %5 = load i8* %pos.03, align 1, !tbaa !16
  %6 = sext i8 %5 to i32
  %7 = add i32 %6, %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  %hash.0.lcssa = phi i32 [ 0, %0 ], [ %7, %.lr.ph ]
  ret i32 %hash.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_HashDelete(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture readonly %key, i32 %hashval) #1 {
  %location = alloca i32, align 4
  %1 = icmp eq i32 %hashval, 0
  br i1 %1, label %2, label %Util_HashHash.exit

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32 %klen, 0
  br i1 %3, label %Util_HashHash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %2, %.lr.ph.i
  %pos.03.i = phi i8* [ %6, %.lr.ph.i ], [ %key, %2 ]
  %i.02.i = phi i32 [ %4, %.lr.ph.i ], [ %klen, %2 ]
  %hash.01.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %2 ]
  %4 = add nsw i32 %i.02.i, -1
  %5 = mul i32 %hash.01.i, 33
  %6 = getelementptr inbounds i8* %pos.03.i, i64 1
  %7 = load i8* %pos.03.i, align 1, !tbaa !16
  %8 = sext i8 %7 to i32
  %9 = add i32 %8, %5
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %Util_HashHash.exit, label %.lr.ph.i

Util_HashHash.exit:                               ; preds = %.lr.ph.i, %2, %0
  %.0 = phi i32 [ %hashval, %0 ], [ 0, %2 ], [ %9, %.lr.ph.i ]
  %11 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0
  %12 = load i32* %11, align 4, !tbaa !2
  %13 = urem i32 %.0, %12
  store volatile i32 %13, i32* %location, align 4
  %14 = load volatile i32* %location, align 4
  %15 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3
  %16 = load volatile i32* %location, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.T_HASH_ENTRY*** %15, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.T_HASH_ENTRY** %18, i64 %17
  br label %20

; <label>:20                                      ; preds = %22, %Util_HashHash.exit
  %entry.0.in = phi %struct.T_HASH_ENTRY** [ %19, %Util_HashHash.exit ], [ %26, %22 ]
  %entry.0 = load %struct.T_HASH_ENTRY** %entry.0.in, align 8
  %21 = icmp eq %struct.T_HASH_ENTRY* %entry.0, null
  br i1 %21, label %.critedge, label %22

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.0, i64 0, i32 2
  %24 = load i32* %23, align 4, !tbaa !17
  %25 = icmp eq i32 %.0, %24
  %26 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.0, i64 0, i32 1
  br i1 %25, label %27, label %20

; <label>:27                                      ; preds = %22
  %28 = load %struct.T_HASH_ENTRY** %26, align 8, !tbaa !12
  %29 = icmp eq %struct.T_HASH_ENTRY* %28, null
  %30 = ptrtoint %struct.T_HASH_ENTRY* %28 to i64
  %.phi.trans.insert = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.0, i64 0, i32 0
  %.pre = load %struct.T_HASH_ENTRY** %.phi.trans.insert, align 8, !tbaa !19
  %31 = icmp eq %struct.T_HASH_ENTRY* %.pre, null
  br i1 %29, label %38, label %32

; <label>:32                                      ; preds = %27
  %33 = getelementptr inbounds %struct.T_HASH_ENTRY* %28, i64 0, i32 0
  br i1 %31, label %41, label %34

; <label>:34                                      ; preds = %32
  store %struct.T_HASH_ENTRY* %.pre, %struct.T_HASH_ENTRY** %33, align 8, !tbaa !19
  %35 = load %struct.T_HASH_ENTRY** %.phi.trans.insert, align 8, !tbaa !19
  %36 = getelementptr inbounds %struct.T_HASH_ENTRY* %35, i64 0, i32 1
  %37 = bitcast %struct.T_HASH_ENTRY** %36 to i64*
  store i64 %30, i64* %37, align 8, !tbaa !12
  br label %53

; <label>:38                                      ; preds = %27
  br i1 %31, label %46, label %39

; <label>:39                                      ; preds = %38
  %40 = getelementptr inbounds %struct.T_HASH_ENTRY* %.pre, i64 0, i32 1
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %40, align 8, !tbaa !12
  br label %53

; <label>:41                                      ; preds = %32
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %33, align 8, !tbaa !19
  %42 = load volatile i32* %location, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.T_HASH_ENTRY** %18, i64 %43
  %45 = bitcast %struct.T_HASH_ENTRY** %44 to i64*
  store i64 %30, i64* %45, align 8, !tbaa !11
  br label %53

; <label>:46                                      ; preds = %38
  %47 = load volatile i32* %location, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.T_HASH_ENTRY** %18, i64 %48
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %49, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 1
  %51 = load i32* %50, align 4, !tbaa !8
  %52 = add i32 %51, -1
  store i32 %52, i32* %50, align 4, !tbaa !8
  br label %53

; <label>:53                                      ; preds = %39, %46, %41, %34
  %54 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry.0, i64 0, i32 4
  %55 = load i8** %54, align 8, !tbaa !14
  tail call void @free(i8* %55) #6
  %56 = bitcast %struct.T_HASH_ENTRY* %entry.0 to i8*
  tail call void @free(i8* %56) #6
  %57 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 2
  %58 = load i32* %57, align 4, !tbaa !9
  %59 = add i32 %58, -1
  store i32 %59, i32* %57, align 4, !tbaa !9
  br label %.critedge

.critedge:                                        ; preds = %20, %53
  %60 = phi i32 [ 1, %53 ], [ 0, %20 ]
  ret i32 %60
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Util_HashData(%struct.T_HASH* nocapture readonly %hash, i32 %klen, i8* nocapture readonly %key, i32 %hashval) #1 {
  %1 = tail call fastcc %struct.T_HASH_ENTRY* @HashFind(%struct.T_HASH* %hash, i32 %klen, i8* %key, i32 %hashval) #6
  %2 = icmp eq %struct.T_HASH_ENTRY* %1, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.T_HASH_ENTRY* %1, i64 0, i32 5
  %5 = load i8** %4, align 8, !tbaa !15
  br label %6

; <label>:6                                       ; preds = %0, %3
  %retval.0 = phi i8* [ %5, %3 ], [ null, %0 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"T_HASH", !4, i64 0, !4, i64 4, !4, i64 8, !7, i64 16}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!3, !4, i64 4}
!9 = !{!3, !4, i64 8}
!10 = !{!3, !7, i64 16}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !7, i64 8}
!13 = !{!"T_HASH_ENTRY", !7, i64 0, !7, i64 8, !4, i64 16, !4, i64 20, !7, i64 24, !7, i64 32}
!14 = !{!13, !7, i64 24}
!15 = !{!13, !7, i64 32}
!16 = !{!5, !5, i64 0}
!17 = !{!13, !4, i64 16}
!18 = !{!13, !4, i64 20}
!19 = !{!13, !7, i64 0}

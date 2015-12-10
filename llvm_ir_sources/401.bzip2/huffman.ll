; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/huffman.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_hbMakeCodeLengths(i8* nocapture %len, i32* nocapture readonly %freq, i32 %alphaSize, i32 %maxLen) #0 {
  %heap = alloca [260 x i32], align 16
  %weight = alloca [516 x i32], align 16
  %parent = alloca [516 x i32], align 16
  tail call void @llvm.dbg.value(metadata i8* %len, i64 0, metadata !17, metadata !88), !dbg !89
  tail call void @llvm.dbg.value(metadata i32* %freq, i64 0, metadata !18, metadata !88), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %alphaSize, i64 0, metadata !19, metadata !88), !dbg !91
  tail call void @llvm.dbg.value(metadata i32 %maxLen, i64 0, metadata !20, metadata !88), !dbg !92
  %1 = bitcast [260 x i32]* %heap to i8*, !dbg !93
  call void @llvm.lifetime.start(i64 1040, i8* %1) #2, !dbg !93
  tail call void @llvm.dbg.declare(metadata [260 x i32]* %heap, metadata !29, metadata !88), !dbg !94
  %2 = bitcast [516 x i32]* %weight to i8*, !dbg !95
  call void @llvm.lifetime.start(i64 2064, i8* %2) #2, !dbg !95
  tail call void @llvm.dbg.declare(metadata [516 x i32]* %weight, metadata !33, metadata !88), !dbg !96
  %3 = bitcast [516 x i32]* %parent to i8*, !dbg !97
  call void @llvm.lifetime.start(i64 2064, i8* %3) #2, !dbg !97
  tail call void @llvm.dbg.declare(metadata [516 x i32]* %parent, metadata !37, metadata !88), !dbg !98
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !88), !dbg !99
  %4 = icmp sgt i32 %alphaSize, 0, !dbg !100
  %5 = add i32 %alphaSize, -1, !dbg !103
  br i1 %4, label %.lr.ph53, label %.preheader14, !dbg !103

.preheader14:                                     ; preds = %.lr.ph53, %0
  %6 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 0, !dbg !104
  %7 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 0, !dbg !105
  %8 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 0, !dbg !106
  %9 = icmp slt i32 %alphaSize, 1, !dbg !107
  %10 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 1, !dbg !108
  %11 = sext i32 %alphaSize to i64
  tail call void @llvm.dbg.value(metadata i32 %alphaSize, i64 0, metadata !21, metadata !88), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !88), !dbg !110
  store i32 0, i32* %6, align 16, !dbg !111, !tbaa !112
  store i32 0, i32* %7, align 16, !dbg !116, !tbaa !112
  store i32 -2, i32* %8, align 16, !dbg !117, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !25, metadata !88), !dbg !99
  br i1 %9, label %._crit_edge47.thread, label %.lr.ph19, !dbg !118

.lr.ph53:                                         ; preds = %0, %.lr.ph53
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph53 ], [ 0, %0 ]
  %12 = getelementptr inbounds i32* %freq, i64 %indvars.iv78, !dbg !119
  %13 = load i32* %12, align 4, !dbg !119, !tbaa !112
  %14 = icmp eq i32 %13, 0, !dbg !120
  %.op = shl i32 %13, 8, !dbg !121
  %15 = select i1 %14, i32 256, i32 %.op, !dbg !121
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !103
  %16 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next79, !dbg !122
  store i32 %15, i32* %16, align 4, !dbg !123, !tbaa !112
  %lftr.wideiv80 = trunc i64 %indvars.iv78 to i32, !dbg !103
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %5, !dbg !103
  br i1 %exitcond81, label %.preheader14, label %.lr.ph53, !dbg !103

.loopexit.loopexit:                               ; preds = %.lr.ph50
  tail call void @llvm.dbg.value(metadata i32 %alphaSize, i64 0, metadata !21, metadata !88), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !88), !dbg !110
  store i32 0, i32* %6, align 16, !dbg !111, !tbaa !112
  store i32 0, i32* %7, align 16, !dbg !116, !tbaa !112
  store i32 -2, i32* %8, align 16, !dbg !117, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !25, metadata !88), !dbg !99
  br i1 %9, label %._crit_edge47.thread, label %.lr.ph19, !dbg !118

.lr.ph19:                                         ; preds = %.loopexit.loopexit, %.preheader14, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 1, %.preheader14 ], [ 1, %.loopexit.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader14 ], [ 0, %.loopexit.loopexit ]
  %17 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv62, !dbg !124
  store i32 -1, i32* %17, align 4, !dbg !125, !tbaa !112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !118
  %18 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next, !dbg !126
  %19 = trunc i64 %indvars.iv62 to i32, !dbg !127
  store i32 %19, i32* %18, align 4, !dbg !127, !tbaa !112
  %20 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv62, !dbg !128
  %21 = load i32* %20, align 4, !dbg !128, !tbaa !112
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !128
  %23 = ashr i32 %22, 1, !dbg !128
  %24 = sext i32 %23 to i64, !dbg !128
  %25 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %24, !dbg !128
  %26 = load i32* %25, align 4, !dbg !128, !tbaa !112
  %27 = sext i32 %26 to i64, !dbg !128
  %28 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %27, !dbg !128
  %29 = load i32* %28, align 4, !dbg !128, !tbaa !112
  %30 = icmp slt i32 %21, %29, !dbg !128
  br i1 %30, label %.lr.ph, label %._crit_edge, !dbg !128

.lr.ph:                                           ; preds = %.lr.ph19, %.lr.ph
  %31 = phi i32* [ %43, %.lr.ph ], [ %18, %.lr.ph19 ]
  %32 = phi i32 [ %37, %.lr.ph ], [ %26, %.lr.ph19 ]
  %33 = phi i32 [ %34, %.lr.ph ], [ %23, %.lr.ph19 ]
  store i32 %32, i32* %31, align 4, !dbg !129, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !38, metadata !88), !dbg !128
  %34 = ashr i32 %33, 1, !dbg !128
  %35 = sext i32 %34 to i64, !dbg !128
  %36 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %35, !dbg !128
  %37 = load i32* %36, align 4, !dbg !128, !tbaa !112
  %38 = sext i32 %37 to i64, !dbg !128
  %39 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %38, !dbg !128
  %40 = load i32* %39, align 4, !dbg !128, !tbaa !112
  %41 = icmp slt i32 %21, %40, !dbg !128
  %42 = sext i32 %33 to i64, !dbg !129
  %43 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %42, !dbg !129
  br i1 %41, label %.lr.ph, label %._crit_edge, !dbg !128

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph19
  %.lcssa = phi i32* [ %18, %.lr.ph19 ], [ %43, %.lr.ph ]
  store i32 %19, i32* %.lcssa, align 4, !dbg !128, !tbaa !112
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1, !dbg !118
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !118
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !118
  br i1 %exitcond, label %._crit_edge20, label %.lr.ph19, !dbg !118

._crit_edge20:                                    ; preds = %._crit_edge
  %44 = icmp slt i32 %alphaSize, 260, !dbg !131
  br i1 %44, label %.preheader13, label %.preheader13.thread, !dbg !134

.preheader13.thread:                              ; preds = %._crit_edge20
  tail call void @BZ2_bz__AssertH__fail(i32 2001) #4, !dbg !131
  br label %.lr.ph42, !dbg !135

.preheader13:                                     ; preds = %._crit_edge20
  %45 = icmp sgt i32 %alphaSize, 1, !dbg !136
  br i1 %45, label %.lr.ph42, label %176, !dbg !135

.lr.ph42:                                         ; preds = %.preheader13.thread, %.preheader13
  %46 = sext i32 %alphaSize to i64
  br label %47, !dbg !135

; <label>:47                                      ; preds = %.lr.ph42, %._crit_edge38
  %indvars.iv67 = phi i64 [ %46, %.lr.ph42 ], [ %indvars.iv.next68, %._crit_edge38 ]
  %indvars.iv65 = phi i64 [ %11, %.lr.ph42 ], [ %indvars.iv.next66, %._crit_edge38 ]
  %48 = load i32* %10, align 4, !dbg !108, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !23, metadata !88), !dbg !137
  %49 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv67, !dbg !138
  %50 = load i32* %49, align 4, !dbg !138, !tbaa !112
  store i32 %50, i32* %10, align 4, !dbg !139, !tbaa !112
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, -1, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !45, metadata !88), !dbg !140
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !49, metadata !88), !dbg !140
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !48, metadata !88), !dbg !140
  %51 = icmp slt i64 %indvars.iv67, 3, !dbg !141
  br i1 %51, label %._crit_edge25, label %.lr.ph24, !dbg !144

.lr.ph24:                                         ; preds = %47
  %52 = sext i32 %50 to i64, !dbg !145
  %53 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %52, !dbg !145
  %54 = load i32* %53, align 4, !dbg !145, !tbaa !112
  br label %55, !dbg !144

; <label>:55                                      ; preds = %.lr.ph24, %81
  %56 = phi i32 [ 2, %.lr.ph24 ], [ %84, %81 ]
  %zz1.022 = phi i32 [ 1, %.lr.ph24 ], [ %yy.0, %81 ]
  %57 = sext i32 %56 to i64, !dbg !147
  %58 = icmp slt i64 %57, %indvars.iv.next68, !dbg !147
  br i1 %58, label %59, label %73, !dbg !147

; <label>:59                                      ; preds = %55
  %60 = or i32 %56, 1, !dbg !147
  %61 = sext i32 %60 to i64, !dbg !147
  %62 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %61, !dbg !147
  %63 = load i32* %62, align 4, !dbg !147, !tbaa !112
  %64 = sext i32 %63 to i64, !dbg !147
  %65 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %64, !dbg !147
  %66 = load i32* %65, align 4, !dbg !147, !tbaa !112
  %67 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %57, !dbg !147
  %68 = load i32* %67, align 8, !dbg !147, !tbaa !112
  %69 = sext i32 %68 to i64, !dbg !147
  %70 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %69, !dbg !147
  %71 = load i32* %70, align 4, !dbg !147, !tbaa !112
  %72 = icmp slt i32 %66, %71, !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !48, metadata !88), !dbg !140
  %.8 = select i1 %72, i32 %60, i32 %56, !dbg !144
  br label %73, !dbg !144

; <label>:73                                      ; preds = %59, %55
  %yy.0 = phi i32 [ %56, %55 ], [ %.8, %59 ]
  %74 = sext i32 %yy.0 to i64, !dbg !145
  %75 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %74, !dbg !145
  %76 = load i32* %75, align 4, !dbg !145, !tbaa !112
  %77 = sext i32 %76 to i64, !dbg !145
  %78 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %77, !dbg !145
  %79 = load i32* %78, align 4, !dbg !145, !tbaa !112
  %80 = icmp slt i32 %54, %79, !dbg !145
  br i1 %80, label %._crit_edge25, label %81, !dbg !144

; <label>:81                                      ; preds = %73
  %82 = sext i32 %zz1.022 to i64, !dbg !144
  %83 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %82, !dbg !144
  store i32 %76, i32* %83, align 4, !dbg !144, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 %yy.0, i64 0, metadata !45, metadata !88), !dbg !140
  %84 = shl i32 %yy.0, 1, !dbg !144
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !48, metadata !88), !dbg !140
  %85 = sext i32 %84 to i64, !dbg !141
  %86 = icmp sgt i64 %85, %indvars.iv.next68, !dbg !141
  br i1 %86, label %._crit_edge25, label %55, !dbg !144

._crit_edge25:                                    ; preds = %81, %73, %47
  %zz1.0.lcssa = phi i32 [ 1, %47 ], [ %yy.0, %81 ], [ %zz1.022, %73 ]
  %87 = sext i32 %zz1.0.lcssa to i64, !dbg !140
  %88 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %87, !dbg !140
  store i32 %50, i32* %88, align 4, !dbg !140, !tbaa !112
  %89 = load i32* %10, align 4, !dbg !149, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !24, metadata !88), !dbg !150
  %90 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next68, !dbg !151
  %91 = load i32* %90, align 4, !dbg !151, !tbaa !112
  store i32 %91, i32* %10, align 4, !dbg !152, !tbaa !112
  %92 = add nsw i64 %indvars.iv67, -2, !dbg !153
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !50, metadata !88), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !53, metadata !88), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !52, metadata !88), !dbg !154
  %93 = icmp slt i64 %92, 2, !dbg !155
  br i1 %93, label %._crit_edge32, label %.lr.ph31, !dbg !158

.lr.ph31:                                         ; preds = %._crit_edge25
  %94 = sext i32 %91 to i64, !dbg !159
  %95 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %94, !dbg !159
  %96 = load i32* %95, align 4, !dbg !159, !tbaa !112
  br label %97, !dbg !158

; <label>:97                                      ; preds = %.lr.ph31, %123
  %98 = phi i32 [ 2, %.lr.ph31 ], [ %126, %123 ]
  %zz3.029 = phi i32 [ 1, %.lr.ph31 ], [ %yy4.0, %123 ]
  %99 = sext i32 %98 to i64, !dbg !161
  %100 = icmp slt i64 %99, %92, !dbg !161
  br i1 %100, label %101, label %115, !dbg !161

; <label>:101                                     ; preds = %97
  %102 = or i32 %98, 1, !dbg !161
  %103 = sext i32 %102 to i64, !dbg !161
  %104 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %103, !dbg !161
  %105 = load i32* %104, align 4, !dbg !161, !tbaa !112
  %106 = sext i32 %105 to i64, !dbg !161
  %107 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %106, !dbg !161
  %108 = load i32* %107, align 4, !dbg !161, !tbaa !112
  %109 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %99, !dbg !161
  %110 = load i32* %109, align 8, !dbg !161, !tbaa !112
  %111 = sext i32 %110 to i64, !dbg !161
  %112 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %111, !dbg !161
  %113 = load i32* %112, align 4, !dbg !161, !tbaa !112
  %114 = icmp slt i32 %108, %113, !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !52, metadata !88), !dbg !154
  %.9 = select i1 %114, i32 %102, i32 %98, !dbg !158
  br label %115, !dbg !158

; <label>:115                                     ; preds = %101, %97
  %yy4.0 = phi i32 [ %98, %97 ], [ %.9, %101 ]
  %116 = sext i32 %yy4.0 to i64, !dbg !159
  %117 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %116, !dbg !159
  %118 = load i32* %117, align 4, !dbg !159, !tbaa !112
  %119 = sext i32 %118 to i64, !dbg !159
  %120 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %119, !dbg !159
  %121 = load i32* %120, align 4, !dbg !159, !tbaa !112
  %122 = icmp slt i32 %96, %121, !dbg !159
  br i1 %122, label %._crit_edge32, label %123, !dbg !158

; <label>:123                                     ; preds = %115
  %124 = sext i32 %zz3.029 to i64, !dbg !158
  %125 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %124, !dbg !158
  store i32 %118, i32* %125, align 4, !dbg !158, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 %yy4.0, i64 0, metadata !50, metadata !88), !dbg !154
  %126 = shl i32 %yy4.0, 1, !dbg !158
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !52, metadata !88), !dbg !154
  %127 = sext i32 %126 to i64, !dbg !155
  %128 = icmp sgt i64 %127, %92, !dbg !155
  br i1 %128, label %._crit_edge32, label %97, !dbg !158

._crit_edge32:                                    ; preds = %123, %115, %._crit_edge25
  %zz3.0.lcssa = phi i32 [ 1, %._crit_edge25 ], [ %yy4.0, %123 ], [ %zz3.029, %115 ]
  %129 = sext i32 %zz3.0.lcssa to i64, !dbg !154
  %130 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %129, !dbg !154
  store i32 %91, i32* %130, align 4, !dbg !154, !tbaa !112
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1, !dbg !135
  %131 = sext i32 %89 to i64, !dbg !163
  %132 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %131, !dbg !163
  %133 = trunc i64 %indvars.iv.next66 to i32, !dbg !164
  store i32 %133, i32* %132, align 4, !dbg !164, !tbaa !112
  %134 = sext i32 %48 to i64, !dbg !165
  %135 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %134, !dbg !165
  store i32 %133, i32* %135, align 4, !dbg !166, !tbaa !112
  %136 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %134, !dbg !167
  %137 = load i32* %136, align 4, !dbg !167, !tbaa !112
  %138 = and i32 %137, -256, !dbg !167
  %139 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %131, !dbg !167
  %140 = load i32* %139, align 4, !dbg !167, !tbaa !112
  %141 = and i32 %140, -256, !dbg !167
  %142 = add i32 %141, %138, !dbg !167
  %143 = and i32 %137, 255, !dbg !167
  %144 = and i32 %140, 255, !dbg !167
  %145 = icmp ugt i32 %143, %144, !dbg !167
  %.10 = select i1 %145, i32 %137, i32 %140, !dbg !167
  %146 = and i32 %.10, 255, !dbg !167
  %147 = add nuw nsw i32 %146, 1, !dbg !167
  %148 = or i32 %147, %142, !dbg !167
  %149 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next66, !dbg !168
  store i32 %148, i32* %149, align 4, !dbg !169, !tbaa !112
  %150 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv.next66, !dbg !170
  store i32 -1, i32* %150, align 4, !dbg !171, !tbaa !112
  store i32 %133, i32* %90, align 4, !dbg !172, !tbaa !112
  %151 = trunc i64 %indvars.iv.next68 to i32, !dbg !173
  %152 = ashr i32 %151, 1, !dbg !173
  %153 = sext i32 %152 to i64, !dbg !173
  %154 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %153, !dbg !173
  %155 = load i32* %154, align 4, !dbg !173, !tbaa !112
  %156 = sext i32 %155 to i64, !dbg !173
  %157 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %156, !dbg !173
  %158 = load i32* %157, align 4, !dbg !173, !tbaa !112
  %159 = icmp slt i32 %148, %158, !dbg !173
  br i1 %159, label %.lr.ph37, label %._crit_edge38, !dbg !173

.lr.ph37:                                         ; preds = %._crit_edge32, %.lr.ph37
  %160 = phi i32* [ %172, %.lr.ph37 ], [ %90, %._crit_edge32 ]
  %161 = phi i32 [ %166, %.lr.ph37 ], [ %155, %._crit_edge32 ]
  %162 = phi i32 [ %163, %.lr.ph37 ], [ %152, %._crit_edge32 ]
  store i32 %161, i32* %160, align 4, !dbg !174, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !54, metadata !88), !dbg !173
  %163 = ashr i32 %162, 1, !dbg !173
  %164 = sext i32 %163 to i64, !dbg !173
  %165 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %164, !dbg !173
  %166 = load i32* %165, align 4, !dbg !173, !tbaa !112
  %167 = sext i32 %166 to i64, !dbg !173
  %168 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %167, !dbg !173
  %169 = load i32* %168, align 4, !dbg !173, !tbaa !112
  %170 = icmp slt i32 %148, %169, !dbg !173
  %171 = sext i32 %162 to i64, !dbg !174
  %172 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %171, !dbg !174
  br i1 %170, label %.lr.ph37, label %._crit_edge38, !dbg !173

._crit_edge38:                                    ; preds = %.lr.ph37, %._crit_edge32
  %.lcssa15 = phi i32* [ %90, %._crit_edge32 ], [ %172, %.lr.ph37 ]
  store i32 %133, i32* %.lcssa15, align 4, !dbg !173, !tbaa !112
  %173 = icmp sgt i64 %indvars.iv.next68, 1, !dbg !136
  br i1 %173, label %47, label %._crit_edge43, !dbg !135

._crit_edge43:                                    ; preds = %._crit_edge38
  %174 = shl i32 %alphaSize, 1, !dbg !135
  %175 = add i32 %174, -1, !dbg !135
  br label %176, !dbg !135

; <label>:176                                     ; preds = %._crit_edge43, %.preheader13
  %nNodes.0.lcssa = phi i32 [ %175, %._crit_edge43 ], [ %alphaSize, %.preheader13 ]
  %177 = icmp slt i32 %nNodes.0.lcssa, 516, !dbg !176
  br i1 %177, label %.preheader12, label %178, !dbg !179

; <label>:178                                     ; preds = %176
  tail call void @BZ2_bz__AssertH__fail(i32 2002) #4, !dbg !176
  br label %.preheader12, !dbg !176

.preheader12:                                     ; preds = %178, %176
  br i1 %9, label %._crit_edge47.thread, label %.preheader, !dbg !180

.preheader:                                       ; preds = %.preheader12, %186
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %186 ], [ 1, %.preheader12 ]
  %tooLong.045 = phi i8 [ %.tooLong.0, %186 ], [ 0, %.preheader12 ]
  %179 = trunc i64 %indvars.iv70 to i32, !dbg !182
  br label %180, !dbg !182

; <label>:180                                     ; preds = %180, %.preheader
  %k.0 = phi i32 [ %183, %180 ], [ %179, %.preheader ]
  %j.0 = phi i32 [ %185, %180 ], [ 0, %.preheader ]
  %181 = sext i32 %k.0 to i64, !dbg !182
  %182 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %181, !dbg !182
  %183 = load i32* %182, align 4, !dbg !182, !tbaa !112
  %184 = icmp sgt i32 %183, -1, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %183, i64 0, metadata !27, metadata !88), !dbg !186
  %185 = add nuw nsw i32 %j.0, 1, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %185, i64 0, metadata !26, metadata !88), !dbg !189
  br i1 %184, label %180, label %186, !dbg !190

; <label>:186                                     ; preds = %180
  %187 = trunc i32 %j.0 to i8, !dbg !191
  %188 = add nsw i64 %indvars.iv70, -1, !dbg !192
  %189 = getelementptr inbounds i8* %len, i64 %188, !dbg !193
  store i8 %187, i8* %189, align 1, !dbg !194, !tbaa !195
  %190 = icmp sgt i32 %j.0, %maxLen, !dbg !196
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !28, metadata !88), !dbg !198
  %.tooLong.0 = select i1 %190, i8 1, i8 %tooLong.045, !dbg !199
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1, !dbg !180
  %exitcond73 = icmp eq i32 %179, %alphaSize, !dbg !180
  br i1 %exitcond73, label %._crit_edge47, label %.preheader, !dbg !180

._crit_edge47:                                    ; preds = %186
  %191 = icmp eq i8 %.tooLong.0, 0, !dbg !200
  br i1 %191, label %._crit_edge47.thread, label %.preheader11, !dbg !202

.preheader11:                                     ; preds = %._crit_edge47
  br i1 %9, label %._crit_edge47.thread.critedge, label %.lr.ph50, !dbg !203

.lr.ph50:                                         ; preds = %.preheader11, %.lr.ph50
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.lr.ph50 ], [ 1, %.preheader11 ]
  %192 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv74, !dbg !205
  %193 = load i32* %192, align 4, !dbg !205, !tbaa !112
  %194 = ashr i32 %193, 8, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %194, i64 0, metadata !26, metadata !88), !dbg !189
  %195 = sdiv i32 %194, 2, !dbg !209
  %196 = shl nsw i32 %195, 8, !dbg !210
  %197 = add nsw i32 %196, 256, !dbg !210
  store i32 %197, i32* %192, align 4, !dbg !211, !tbaa !112
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1, !dbg !203
  %lftr.wideiv76 = trunc i64 %indvars.iv74 to i32, !dbg !203
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %alphaSize, !dbg !203
  br i1 %exitcond77, label %.loopexit.loopexit, label %.lr.ph50, !dbg !203

._crit_edge47.thread.critedge:                    ; preds = %.preheader11
  tail call void @llvm.dbg.value(metadata i32 %alphaSize, i64 0, metadata !21, metadata !88), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !88), !dbg !110
  store i32 0, i32* %6, align 16, !dbg !111, !tbaa !112
  store i32 0, i32* %7, align 16, !dbg !116, !tbaa !112
  store i32 -2, i32* %8, align 16, !dbg !117, !tbaa !112
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !25, metadata !88), !dbg !99
  br label %._crit_edge47.thread

._crit_edge47.thread:                             ; preds = %.preheader14, %._crit_edge47, %.preheader12, %.loopexit.loopexit, %._crit_edge47.thread.critedge
  call void @llvm.lifetime.end(i64 2064, i8* %3) #2, !dbg !212
  call void @llvm.lifetime.end(i64 2064, i8* %2) #2, !dbg !212
  call void @llvm.lifetime.end(i64 1040, i8* %1) #2, !dbg !212
  ret void, !dbg !212
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_hbAssignCodes(i32* nocapture %code, i8* nocapture readonly %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
  tail call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !61, metadata !88), !dbg !213
  tail call void @llvm.dbg.value(metadata i8* %length, i64 0, metadata !62, metadata !88), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %minLen, i64 0, metadata !63, metadata !88), !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %maxLen, i64 0, metadata !64, metadata !88), !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %alphaSize, i64 0, metadata !65, metadata !88), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !88), !dbg !218
  tail call void @llvm.dbg.value(metadata i32 %minLen, i64 0, metadata !66, metadata !88), !dbg !219
  %1 = icmp sgt i32 %minLen, %maxLen, !dbg !220
  br i1 %1, label %._crit_edge5, label %.preheader.lr.ph, !dbg !223

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %alphaSize, 0, !dbg !224
  %3 = add i32 %alphaSize, -1, !dbg !223
  br label %.preheader, !dbg !223

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %vec.04 = phi i32 [ 0, %.preheader.lr.ph ], [ %12, %._crit_edge ]
  %n.03 = phi i32 [ %minLen, %.preheader.lr.ph ], [ %13, %._crit_edge ]
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !228

.lr.ph:                                           ; preds = %.preheader, %11
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %.preheader ]
  %vec.11 = phi i32 [ %vec.2, %11 ], [ %vec.04, %.preheader ]
  %4 = getelementptr inbounds i8* %length, i64 %indvars.iv, !dbg !229
  %5 = load i8* %4, align 1, !dbg !229, !tbaa !195
  %6 = zext i8 %5 to i32, !dbg !229
  %7 = icmp eq i32 %6, %n.03, !dbg !231
  br i1 %7, label %8, label %11, !dbg !232

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds i32* %code, i64 %indvars.iv, !dbg !233
  store i32 %vec.11, i32* %9, align 4, !dbg !235, !tbaa !112
  %10 = add nsw i32 %vec.11, 1, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !67, metadata !88), !dbg !218
  br label %11, !dbg !237

; <label>:11                                      ; preds = %.lr.ph, %8
  %vec.2 = phi i32 [ %10, %8 ], [ %vec.11, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !228
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !228
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !228
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !228

._crit_edge:                                      ; preds = %11, %.preheader
  %vec.1.lcssa = phi i32 [ %vec.04, %.preheader ], [ %vec.2, %11 ]
  %12 = shl i32 %vec.1.lcssa, 1, !dbg !238
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !67, metadata !88), !dbg !218
  %13 = add nsw i32 %n.03, 1, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !66, metadata !88), !dbg !219
  %14 = icmp slt i32 %n.03, %maxLen, !dbg !220
  br i1 %14, label %.preheader, label %._crit_edge5, !dbg !223

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret void, !dbg !240
}

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_hbCreateDecodeTables(i32* nocapture %limit, i32* nocapture %base, i32* nocapture %perm, i8* nocapture readonly %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
  tail call void @llvm.dbg.value(metadata i32* %limit, i64 0, metadata !73, metadata !88), !dbg !241
  tail call void @llvm.dbg.value(metadata i32* %base, i64 0, metadata !74, metadata !88), !dbg !242
  tail call void @llvm.dbg.value(metadata i32* %perm, i64 0, metadata !75, metadata !88), !dbg !243
  tail call void @llvm.dbg.value(metadata i8* %length, i64 0, metadata !76, metadata !88), !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %minLen, i64 0, metadata !77, metadata !88), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %maxLen, i64 0, metadata !78, metadata !88), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %alphaSize, i64 0, metadata !79, metadata !88), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !80, metadata !88), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %minLen, i64 0, metadata !81, metadata !88), !dbg !249
  %limit29 = bitcast i32* %limit to i8*
  %base40 = bitcast i32* %base to i8*
  %1 = icmp sgt i32 %minLen, %maxLen, !dbg !250
  br i1 %1, label %.preheader5, label %.preheader6.lr.ph, !dbg !253

.preheader6.lr.ph:                                ; preds = %0
  %2 = icmp sgt i32 %alphaSize, 0, !dbg !254
  %3 = add i32 %alphaSize, -1, !dbg !253
  br label %.preheader6, !dbg !253

.preheader6:                                      ; preds = %._crit_edge21, %.preheader6.lr.ph
  %i.023 = phi i32 [ %minLen, %.preheader6.lr.ph ], [ %15, %._crit_edge21 ]
  %pp.022 = phi i32 [ 0, %.preheader6.lr.ph ], [ %pp.1.lcssa, %._crit_edge21 ]
  br i1 %2, label %.lr.ph20, label %._crit_edge21, !dbg !257

.preheader5:                                      ; preds = %._crit_edge21, %0
  call void @llvm.memset.p0i8.i64(i8* %base40, i8 0, i64 92, i32 4, i1 false), !dbg !258
  %4 = icmp sgt i32 %alphaSize, 0, !dbg !261
  br i1 %4, label %.lr.ph16, label %.preheader3, !dbg !264

.lr.ph20:                                         ; preds = %.preheader6, %14
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %14 ], [ 0, %.preheader6 ]
  %pp.118 = phi i32 [ %pp.2, %14 ], [ %pp.022, %.preheader6 ]
  %5 = getelementptr inbounds i8* %length, i64 %indvars.iv41, !dbg !265
  %6 = load i8* %5, align 1, !dbg !265, !tbaa !195
  %7 = zext i8 %6 to i32, !dbg !265
  %8 = icmp eq i32 %7, %i.023, !dbg !267
  br i1 %8, label %9, label %._crit_edge45, !dbg !268

._crit_edge45:                                    ; preds = %.lr.ph20
  %.pre = trunc i64 %indvars.iv41 to i32, !dbg !257
  br label %14, !dbg !268

; <label>:9                                       ; preds = %.lr.ph20
  %10 = sext i32 %pp.118 to i64, !dbg !269
  %11 = getelementptr inbounds i32* %perm, i64 %10, !dbg !269
  %12 = trunc i64 %indvars.iv41 to i32, !dbg !271
  store i32 %12, i32* %11, align 4, !dbg !271, !tbaa !112
  %13 = add nsw i32 %pp.118, 1, !dbg !272
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !80, metadata !88), !dbg !248
  br label %14, !dbg !273

; <label>:14                                      ; preds = %._crit_edge45, %9
  %lftr.wideiv43.pre-phi = phi i32 [ %.pre, %._crit_edge45 ], [ %12, %9 ], !dbg !257
  %pp.2 = phi i32 [ %pp.118, %._crit_edge45 ], [ %13, %9 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !257
  %exitcond44 = icmp eq i32 %lftr.wideiv43.pre-phi, %3, !dbg !257
  br i1 %exitcond44, label %._crit_edge21, label %.lr.ph20, !dbg !257

._crit_edge21:                                    ; preds = %14, %.preheader6
  %pp.1.lcssa = phi i32 [ %pp.022, %.preheader6 ], [ %pp.2, %14 ]
  %15 = add nsw i32 %i.023, 1, !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !81, metadata !88), !dbg !249
  %16 = icmp slt i32 %i.023, %maxLen, !dbg !250
  br i1 %16, label %.preheader6, label %.preheader5, !dbg !253

.lr.ph16:                                         ; preds = %.preheader5
  %17 = add i32 %alphaSize, -1, !dbg !264
  br label %18, !dbg !264

; <label>:18                                      ; preds = %18, %.lr.ph16
  %indvars.iv33 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next34, %18 ]
  %19 = getelementptr inbounds i8* %length, i64 %indvars.iv33, !dbg !275
  %20 = load i8* %19, align 1, !dbg !275, !tbaa !195
  %21 = zext i8 %20 to i64, !dbg !275
  %22 = add nuw nsw i64 %21, 1, !dbg !276
  %23 = getelementptr inbounds i32* %base, i64 %22, !dbg !277
  %24 = load i32* %23, align 4, !dbg !278, !tbaa !112
  %25 = add nsw i32 %24, 1, !dbg !278
  store i32 %25, i32* %23, align 4, !dbg !278, !tbaa !112
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !dbg !264
  %lftr.wideiv35 = trunc i64 %indvars.iv33 to i32, !dbg !264
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %17, !dbg !264
  br i1 %exitcond36, label %.preheader3, label %18, !dbg !264

.preheader2:                                      ; preds = %.preheader3
  call void @llvm.memset.p0i8.i64(i8* %limit29, i8 0, i64 92, i32 4, i1 false), !dbg !279
  br i1 %1, label %.preheader, label %.lr.ph12, !dbg !282

.preheader3:                                      ; preds = %.preheader5, %18, %.preheader3
  %26 = phi i32 [ %29, %.preheader3 ], [ 0, %18 ], [ 0, %.preheader5 ], !dbg !284
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.preheader3 ], [ 1, %18 ], [ 1, %.preheader5 ]
  %27 = getelementptr inbounds i32* %base, i64 %indvars.iv30, !dbg !287
  %28 = load i32* %27, align 4, !dbg !288, !tbaa !112
  %29 = add nsw i32 %28, %26, !dbg !288
  store i32 %29, i32* %27, align 4, !dbg !288, !tbaa !112
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !289
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 23, !dbg !289
  br i1 %exitcond32, label %.preheader2, label %.preheader3, !dbg !289

.lr.ph12:                                         ; preds = %.preheader2
  %30 = sext i32 %minLen to i64
  %31 = sext i32 %maxLen to i64, !dbg !282
  br label %35, !dbg !282

.preheader:                                       ; preds = %35, %.preheader2
  %32 = icmp slt i32 %minLen, %maxLen, !dbg !290
  br i1 %32, label %.lr.ph, label %._crit_edge, !dbg !293

.lr.ph:                                           ; preds = %.preheader
  %33 = sext i32 %minLen to i64
  %34 = add i32 %maxLen, -1, !dbg !293
  br label %46, !dbg !293

; <label>:35                                      ; preds = %35, %.lr.ph12
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %35 ], [ %30, %.lr.ph12 ]
  %vec.011 = phi i32 [ %44, %35 ], [ 0, %.lr.ph12 ]
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1, !dbg !282
  %36 = getelementptr inbounds i32* %base, i64 %indvars.iv.next25, !dbg !294
  %37 = load i32* %36, align 4, !dbg !294, !tbaa !112
  %38 = getelementptr inbounds i32* %base, i64 %indvars.iv24, !dbg !297
  %39 = load i32* %38, align 4, !dbg !297, !tbaa !112
  %40 = sub nsw i32 %37, %39, !dbg !298
  %41 = add nsw i32 %40, %vec.011, !dbg !299
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !83, metadata !88), !dbg !300
  %42 = add nsw i32 %41, -1, !dbg !301
  %43 = getelementptr inbounds i32* %limit, i64 %indvars.iv24, !dbg !302
  store i32 %42, i32* %43, align 4, !dbg !303, !tbaa !112
  %44 = shl i32 %41, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !83, metadata !88), !dbg !300
  %45 = icmp slt i64 %indvars.iv24, %31, !dbg !305
  br i1 %45, label %35, label %.preheader, !dbg !282

; <label>:46                                      ; preds = %46, %.lr.ph
  %indvars.iv = phi i64 [ %33, %.lr.ph ], [ %indvars.iv.next, %46 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !293
  %47 = getelementptr inbounds i32* %limit, i64 %indvars.iv, !dbg !306
  %48 = load i32* %47, align 4, !dbg !306, !tbaa !112
  %49 = shl i32 %48, 1, !dbg !307
  %50 = add i32 %49, 2, !dbg !307
  %51 = getelementptr inbounds i32* %base, i64 %indvars.iv.next, !dbg !308
  %52 = load i32* %51, align 4, !dbg !308, !tbaa !112
  %53 = sub i32 %50, %52, !dbg !309
  store i32 %53, i32* %51, align 4, !dbg !310, !tbaa !112
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !293
  %exitcond = icmp eq i32 %lftr.wideiv, %34, !dbg !293
  br i1 %exitcond, label %._crit_edge, label %46, !dbg !293

._crit_edge:                                      ; preds = %46, %.preheader
  ret void, !dbg !311
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!84, !85, !86}
!llvm.ident = !{!87}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/huffman.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !5, line: 82, baseType: !6)
!5 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/bzlib_private.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!7 = !{!8, !57, !69}
!8 = !DISubprogram(name: "BZ2_hbMakeCodeLengths", scope: !1, file: !1, line: 103, type: !9, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32*, i32, i32)* @BZ2_hbMakeCodeLengths, variables: !16)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !13, !14, !14}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !5, line: 83, baseType: !6)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !5, line: 84, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !33, !37, !38, !44, !45, !48, !49, !50, !52, !53, !54, !56}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 1, scope: !8, file: !1, line: 103, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "freq", arg: 2, scope: !8, file: !1, line: 104, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alphaSize", arg: 3, scope: !8, file: !1, line: 105, type: !14)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxLen", arg: 4, scope: !8, file: !1, line: 106, type: !14)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nNodes", scope: !8, file: !1, line: 112, type: !14)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nHeap", scope: !8, file: !1, line: 112, type: !14)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n1", scope: !8, file: !1, line: 112, type: !14)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n2", scope: !8, file: !1, line: 112, type: !14)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 112, type: !14)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 112, type: !14)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !8, file: !1, line: 112, type: !14)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tooLong", scope: !8, file: !1, line: 113, type: !4)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "heap", scope: !8, file: !1, line: 115, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8320, align: 32, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 260)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weight", scope: !8, file: !1, line: 116, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 16512, align: 32, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 516)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parent", scope: !8, file: !1, line: 117, type: !34)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zz", scope: !39, file: !1, line: 135, type: !14)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 135, column: 10)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 131, column: 40)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 131, column: 7)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 131, column: 7)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 122, column: 17)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !39, file: !1, line: 135, type: !14)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zz", scope: !46, file: !1, line: 141, type: !14)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 141, column: 56)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 140, column: 25)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yy", scope: !46, file: !1, line: 141, type: !14)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !46, file: !1, line: 141, type: !14)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zz", scope: !51, file: !1, line: 142, type: !14)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 142, column: 56)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yy", scope: !51, file: !1, line: 142, type: !14)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !51, file: !1, line: 142, type: !14)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zz", scope: !55, file: !1, line: 149, type: !14)
!55 = distinct !DILexicalBlock(scope: !47, file: !1, line: 149, column: 10)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !55, file: !1, line: 149, type: !14)
!57 = !DISubprogram(name: "BZ2_hbAssignCodes", scope: !1, file: !1, line: 192, type: !58, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32, i32, i32)* @BZ2_hbAssignCodes, variables: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !13, !11, !14, !14, !14}
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !57, file: !1, line: 192, type: !13)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !57, file: !1, line: 193, type: !11)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "minLen", arg: 3, scope: !57, file: !1, line: 194, type: !14)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxLen", arg: 4, scope: !57, file: !1, line: 195, type: !14)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alphaSize", arg: 5, scope: !57, file: !1, line: 196, type: !14)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !57, file: !1, line: 198, type: !14)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vec", scope: !57, file: !1, line: 198, type: !14)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !57, file: !1, line: 198, type: !14)
!69 = !DISubprogram(name: "BZ2_hbCreateDecodeTables", scope: !1, file: !1, line: 210, type: !70, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, i8*, i32, i32, i32)* @BZ2_hbCreateDecodeTables, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !13, !13, !13, !11, !14, !14, !14}
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "limit", arg: 1, scope: !69, file: !1, line: 210, type: !13)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 2, scope: !69, file: !1, line: 211, type: !13)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "perm", arg: 3, scope: !69, file: !1, line: 212, type: !13)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 4, scope: !69, file: !1, line: 213, type: !11)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "minLen", arg: 5, scope: !69, file: !1, line: 214, type: !14)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxLen", arg: 6, scope: !69, file: !1, line: 215, type: !14)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alphaSize", arg: 7, scope: !69, file: !1, line: 216, type: !14)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !69, file: !1, line: 218, type: !14)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !69, file: !1, line: 218, type: !14)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !69, file: !1, line: 218, type: !14)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vec", scope: !69, file: !1, line: 218, type: !14)
!84 = !{i32 2, !"Dwarf Version", i32 2}
!85 = !{i32 2, !"Debug Info Version", i32 700000003}
!86 = !{i32 1, !"PIC Level", i32 2}
!87 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!88 = !DIExpression()
!89 = !DILocation(line: 103, column: 37, scope: !8)
!90 = !DILocation(line: 104, column: 37, scope: !8)
!91 = !DILocation(line: 105, column: 36, scope: !8)
!92 = !DILocation(line: 106, column: 36, scope: !8)
!93 = !DILocation(line: 115, column: 4, scope: !8)
!94 = !DILocation(line: 115, column: 10, scope: !8)
!95 = !DILocation(line: 116, column: 4, scope: !8)
!96 = !DILocation(line: 116, column: 10, scope: !8)
!97 = !DILocation(line: 117, column: 4, scope: !8)
!98 = !DILocation(line: 117, column: 10, scope: !8)
!99 = !DILocation(line: 112, column: 33, scope: !8)
!100 = !DILocation(line: 119, column: 18, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 119, column: 4)
!102 = distinct !DILexicalBlock(scope: !8, file: !1, line: 119, column: 4)
!103 = !DILocation(line: 119, column: 4, scope: !102)
!104 = !DILocation(line: 127, column: 7, scope: !43)
!105 = !DILocation(line: 128, column: 7, scope: !43)
!106 = !DILocation(line: 129, column: 7, scope: !43)
!107 = !DILocation(line: 131, column: 21, scope: !41)
!108 = !DILocation(line: 141, column: 15, scope: !47)
!109 = !DILocation(line: 112, column: 10, scope: !8)
!110 = !DILocation(line: 112, column: 18, scope: !8)
!111 = !DILocation(line: 127, column: 15, scope: !43)
!112 = !{!113, !113, i64 0}
!113 = !{!"int", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DILocation(line: 128, column: 17, scope: !43)
!117 = !DILocation(line: 129, column: 17, scope: !43)
!118 = !DILocation(line: 131, column: 7, scope: !42)
!119 = !DILocation(line: 120, column: 22, scope: !101)
!120 = !DILocation(line: 120, column: 30, scope: !101)
!121 = !DILocation(line: 120, column: 50, scope: !101)
!122 = !DILocation(line: 120, column: 7, scope: !101)
!123 = !DILocation(line: 120, column: 19, scope: !101)
!124 = !DILocation(line: 132, column: 10, scope: !40)
!125 = !DILocation(line: 132, column: 20, scope: !40)
!126 = !DILocation(line: 134, column: 10, scope: !40)
!127 = !DILocation(line: 134, column: 22, scope: !40)
!128 = !DILocation(line: 135, column: 10, scope: !39)
!129 = !DILocation(line: 135, column: 10, scope: !130)
!130 = distinct !DILexicalBlock(scope: !39, file: !1, line: 135, column: 10)
!131 = !DILocation(line: 138, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 138, column: 7)
!133 = distinct !DILexicalBlock(scope: !43, file: !1, line: 138, column: 7)
!134 = !DILocation(line: 138, column: 7, scope: !133)
!135 = !DILocation(line: 140, column: 7, scope: !43)
!136 = !DILocation(line: 140, column: 20, scope: !43)
!137 = !DILocation(line: 112, column: 25, scope: !8)
!138 = !DILocation(line: 141, column: 34, scope: !47)
!139 = !DILocation(line: 141, column: 32, scope: !47)
!140 = !DILocation(line: 141, column: 56, scope: !46)
!141 = !DILocation(line: 141, column: 56, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 141, column: 56)
!143 = distinct !DILexicalBlock(scope: !46, file: !1, line: 141, column: 56)
!144 = !DILocation(line: 141, column: 56, scope: !143)
!145 = !DILocation(line: 141, column: 56, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 141, column: 56)
!147 = !DILocation(line: 141, column: 56, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 141, column: 56)
!149 = !DILocation(line: 142, column: 15, scope: !47)
!150 = !DILocation(line: 112, column: 29, scope: !8)
!151 = !DILocation(line: 142, column: 34, scope: !47)
!152 = !DILocation(line: 142, column: 32, scope: !47)
!153 = !DILocation(line: 142, column: 52, scope: !47)
!154 = !DILocation(line: 142, column: 56, scope: !51)
!155 = !DILocation(line: 142, column: 56, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 142, column: 56)
!157 = distinct !DILexicalBlock(scope: !51, file: !1, line: 142, column: 56)
!158 = !DILocation(line: 142, column: 56, scope: !157)
!159 = !DILocation(line: 142, column: 56, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 142, column: 56)
!161 = !DILocation(line: 142, column: 56, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 142, column: 56)
!163 = !DILocation(line: 144, column: 23, scope: !47)
!164 = !DILocation(line: 144, column: 34, scope: !47)
!165 = !DILocation(line: 144, column: 10, scope: !47)
!166 = !DILocation(line: 144, column: 21, scope: !47)
!167 = !DILocation(line: 145, column: 27, scope: !47)
!168 = !DILocation(line: 145, column: 10, scope: !47)
!169 = !DILocation(line: 145, column: 25, scope: !47)
!170 = !DILocation(line: 146, column: 10, scope: !47)
!171 = !DILocation(line: 146, column: 25, scope: !47)
!172 = !DILocation(line: 148, column: 22, scope: !47)
!173 = !DILocation(line: 149, column: 10, scope: !55)
!174 = !DILocation(line: 149, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !55, file: !1, line: 149, column: 10)
!176 = !DILocation(line: 152, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 152, column: 7)
!178 = distinct !DILexicalBlock(scope: !43, file: !1, line: 152, column: 7)
!179 = !DILocation(line: 152, column: 7, scope: !178)
!180 = !DILocation(line: 155, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !43, file: !1, line: 155, column: 7)
!182 = !DILocation(line: 158, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 155, column: 40)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 155, column: 7)
!185 = !DILocation(line: 158, column: 27, scope: !183)
!186 = !DILocation(line: 112, column: 39, scope: !8)
!187 = !DILocation(line: 158, column: 51, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !1, line: 158, column: 33)
!189 = !DILocation(line: 112, column: 36, scope: !8)
!190 = !DILocation(line: 158, column: 10, scope: !183)
!191 = !DILocation(line: 159, column: 21, scope: !183)
!192 = !DILocation(line: 159, column: 15, scope: !183)
!193 = !DILocation(line: 159, column: 10, scope: !183)
!194 = !DILocation(line: 159, column: 19, scope: !183)
!195 = !{!114, !114, i64 0}
!196 = !DILocation(line: 160, column: 16, scope: !197)
!197 = distinct !DILexicalBlock(scope: !183, file: !1, line: 160, column: 14)
!198 = !DILocation(line: 113, column: 10, scope: !8)
!199 = !DILocation(line: 160, column: 14, scope: !183)
!200 = !DILocation(line: 163, column: 13, scope: !201)
!201 = distinct !DILexicalBlock(scope: !43, file: !1, line: 163, column: 11)
!202 = !DILocation(line: 163, column: 11, scope: !43)
!203 = !DILocation(line: 182, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !43, file: !1, line: 182, column: 7)
!205 = !DILocation(line: 183, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 182, column: 40)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 182, column: 7)
!208 = !DILocation(line: 183, column: 24, scope: !206)
!209 = !DILocation(line: 184, column: 21, scope: !206)
!210 = !DILocation(line: 185, column: 24, scope: !206)
!211 = !DILocation(line: 185, column: 20, scope: !206)
!212 = !DILocation(line: 188, column: 1, scope: !8)
!213 = !DILocation(line: 192, column: 33, scope: !57)
!214 = !DILocation(line: 193, column: 33, scope: !57)
!215 = !DILocation(line: 194, column: 32, scope: !57)
!216 = !DILocation(line: 195, column: 32, scope: !57)
!217 = !DILocation(line: 196, column: 32, scope: !57)
!218 = !DILocation(line: 198, column: 13, scope: !57)
!219 = !DILocation(line: 198, column: 10, scope: !57)
!220 = !DILocation(line: 201, column: 23, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 201, column: 4)
!222 = distinct !DILexicalBlock(scope: !57, file: !1, line: 201, column: 4)
!223 = !DILocation(line: 201, column: 4, scope: !222)
!224 = !DILocation(line: 202, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 202, column: 7)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 202, column: 7)
!227 = distinct !DILexicalBlock(scope: !221, file: !1, line: 201, column: 39)
!228 = !DILocation(line: 202, column: 7, scope: !226)
!229 = !DILocation(line: 203, column: 14, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !1, line: 203, column: 14)
!231 = !DILocation(line: 203, column: 24, scope: !230)
!232 = !DILocation(line: 203, column: 14, scope: !225)
!233 = !DILocation(line: 203, column: 32, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !1, line: 203, column: 30)
!235 = !DILocation(line: 203, column: 40, scope: !234)
!236 = !DILocation(line: 203, column: 50, scope: !234)
!237 = !DILocation(line: 203, column: 54, scope: !234)
!238 = !DILocation(line: 204, column: 11, scope: !227)
!239 = !DILocation(line: 201, column: 35, scope: !221)
!240 = !DILocation(line: 206, column: 1, scope: !57)
!241 = !DILocation(line: 210, column: 40, scope: !69)
!242 = !DILocation(line: 211, column: 40, scope: !69)
!243 = !DILocation(line: 212, column: 40, scope: !69)
!244 = !DILocation(line: 213, column: 40, scope: !69)
!245 = !DILocation(line: 214, column: 39, scope: !69)
!246 = !DILocation(line: 215, column: 39, scope: !69)
!247 = !DILocation(line: 216, column: 39, scope: !69)
!248 = !DILocation(line: 218, column: 10, scope: !69)
!249 = !DILocation(line: 218, column: 14, scope: !69)
!250 = !DILocation(line: 221, column: 23, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 221, column: 4)
!252 = distinct !DILexicalBlock(scope: !69, file: !1, line: 221, column: 4)
!253 = !DILocation(line: 221, column: 4, scope: !252)
!254 = !DILocation(line: 222, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 222, column: 7)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 222, column: 7)
!257 = !DILocation(line: 222, column: 7, scope: !256)
!258 = !DILocation(line: 225, column: 50, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 225, column: 4)
!260 = distinct !DILexicalBlock(scope: !69, file: !1, line: 225, column: 4)
!261 = !DILocation(line: 226, column: 18, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 226, column: 4)
!263 = distinct !DILexicalBlock(scope: !69, file: !1, line: 226, column: 4)
!264 = !DILocation(line: 226, column: 4, scope: !263)
!265 = !DILocation(line: 223, column: 14, scope: !266)
!266 = distinct !DILexicalBlock(scope: !255, file: !1, line: 223, column: 14)
!267 = !DILocation(line: 223, column: 24, scope: !266)
!268 = !DILocation(line: 223, column: 14, scope: !255)
!269 = !DILocation(line: 223, column: 32, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 223, column: 30)
!271 = !DILocation(line: 223, column: 41, scope: !270)
!272 = !DILocation(line: 223, column: 48, scope: !270)
!273 = !DILocation(line: 223, column: 52, scope: !270)
!274 = !DILocation(line: 221, column: 35, scope: !251)
!275 = !DILocation(line: 226, column: 41, scope: !262)
!276 = !DILocation(line: 226, column: 50, scope: !262)
!277 = !DILocation(line: 226, column: 36, scope: !262)
!278 = !DILocation(line: 226, column: 53, scope: !262)
!279 = !DILocation(line: 230, column: 51, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 230, column: 4)
!281 = distinct !DILexicalBlock(scope: !69, file: !1, line: 230, column: 4)
!282 = !DILocation(line: 233, column: 4, scope: !283)
!283 = distinct !DILexicalBlock(scope: !69, file: !1, line: 233, column: 4)
!284 = !DILocation(line: 228, column: 59, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 228, column: 4)
!286 = distinct !DILexicalBlock(scope: !69, file: !1, line: 228, column: 4)
!287 = !DILocation(line: 228, column: 42, scope: !285)
!288 = !DILocation(line: 228, column: 50, scope: !285)
!289 = !DILocation(line: 228, column: 4, scope: !286)
!290 = !DILocation(line: 238, column: 27, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 238, column: 4)
!292 = distinct !DILexicalBlock(scope: !69, file: !1, line: 238, column: 4)
!293 = !DILocation(line: 238, column: 4, scope: !292)
!294 = !DILocation(line: 234, column: 15, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 233, column: 39)
!296 = distinct !DILexicalBlock(scope: !283, file: !1, line: 233, column: 4)
!297 = !DILocation(line: 234, column: 27, scope: !295)
!298 = !DILocation(line: 234, column: 25, scope: !295)
!299 = !DILocation(line: 234, column: 11, scope: !295)
!300 = !DILocation(line: 218, column: 20, scope: !69)
!301 = !DILocation(line: 235, column: 21, scope: !295)
!302 = !DILocation(line: 235, column: 7, scope: !295)
!303 = !DILocation(line: 235, column: 16, scope: !295)
!304 = !DILocation(line: 236, column: 11, scope: !295)
!305 = !DILocation(line: 233, column: 23, scope: !296)
!306 = !DILocation(line: 239, column: 19, scope: !291)
!307 = !DILocation(line: 239, column: 35, scope: !291)
!308 = !DILocation(line: 239, column: 43, scope: !291)
!309 = !DILocation(line: 239, column: 41, scope: !291)
!310 = !DILocation(line: 239, column: 15, scope: !291)
!311 = !DILocation(line: 240, column: 1, scope: !69)

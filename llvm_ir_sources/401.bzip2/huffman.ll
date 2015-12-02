; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/huffman.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_hbMakeCodeLengths(i8* nocapture %len, i32* nocapture readonly %freq, i32 %alphaSize, i32 %maxLen) #0 {
  %heap = alloca [260 x i32], align 16
  %weight = alloca [516 x i32], align 16
  %parent = alloca [516 x i32], align 16
  %1 = bitcast [260 x i32]* %heap to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %1) #1
  %2 = bitcast [516 x i32]* %weight to i8*
  call void @llvm.lifetime.start(i64 2064, i8* %2) #1
  %3 = bitcast [516 x i32]* %parent to i8*
  call void @llvm.lifetime.start(i64 2064, i8* %3) #1
  %4 = icmp sgt i32 %alphaSize, 0
  %5 = add i32 %alphaSize, -1
  br i1 %4, label %.lr.ph53, label %.preheader14

.preheader14:                                     ; preds = %.lr.ph53, %0
  %6 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 0
  %7 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 0
  %8 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 0
  %9 = icmp slt i32 %alphaSize, 1
  %10 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 1
  %11 = sext i32 %alphaSize to i64
  store i32 0, i32* %6, align 16, !tbaa !2
  store i32 0, i32* %7, align 16, !tbaa !2
  store i32 -2, i32* %8, align 16, !tbaa !2
  br i1 %9, label %._crit_edge47.thread, label %.lr.ph19

.lr.ph53:                                         ; preds = %0, %.lr.ph53
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph53 ], [ 0, %0 ]
  %12 = getelementptr inbounds i32* %freq, i64 %indvars.iv78
  %13 = load i32* %12, align 4, !tbaa !2
  %14 = icmp eq i32 %13, 0
  %.op = shl i32 %13, 8
  %15 = select i1 %14, i32 256, i32 %.op
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %16 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next79
  store i32 %15, i32* %16, align 4, !tbaa !2
  %lftr.wideiv80 = trunc i64 %indvars.iv78 to i32
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %5
  br i1 %exitcond81, label %.preheader14, label %.lr.ph53

.loopexit.loopexit:                               ; preds = %.lr.ph50
  store i32 0, i32* %6, align 16, !tbaa !2
  store i32 0, i32* %7, align 16, !tbaa !2
  store i32 -2, i32* %8, align 16, !tbaa !2
  br i1 %9, label %._crit_edge47.thread, label %.lr.ph19

.lr.ph19:                                         ; preds = %.loopexit.loopexit, %.preheader14, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 1, %.preheader14 ], [ 1, %.loopexit.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader14 ], [ 0, %.loopexit.loopexit ]
  %17 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv62
  store i32 -1, i32* %17, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next
  %19 = trunc i64 %indvars.iv62 to i32
  store i32 %19, i32* %18, align 4, !tbaa !2
  %20 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv62
  %21 = load i32* %20, align 4, !tbaa !2
  %22 = trunc i64 %indvars.iv.next to i32
  %23 = ashr i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %24
  %26 = load i32* %25, align 4, !tbaa !2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %27
  %29 = load i32* %28, align 4, !tbaa !2
  %30 = icmp slt i32 %21, %29
  br i1 %30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph19, %.lr.ph
  %31 = phi i32* [ %43, %.lr.ph ], [ %18, %.lr.ph19 ]
  %32 = phi i32 [ %37, %.lr.ph ], [ %26, %.lr.ph19 ]
  %33 = phi i32 [ %34, %.lr.ph ], [ %23, %.lr.ph19 ]
  store i32 %32, i32* %31, align 4, !tbaa !2
  %34 = ashr i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %35
  %37 = load i32* %36, align 4, !tbaa !2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %38
  %40 = load i32* %39, align 4, !tbaa !2
  %41 = icmp slt i32 %21, %40
  %42 = sext i32 %33 to i64
  %43 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %42
  br i1 %41, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph19
  %.lcssa = phi i32* [ %18, %.lr.ph19 ], [ %43, %.lr.ph ]
  store i32 %19, i32* %.lcssa, align 4, !tbaa !2
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge20, label %.lr.ph19

._crit_edge20:                                    ; preds = %._crit_edge
  %44 = icmp slt i32 %alphaSize, 260
  br i1 %44, label %.preheader13, label %.preheader13.thread

.preheader13.thread:                              ; preds = %._crit_edge20
  tail call void @BZ2_bz__AssertH__fail(i32 2001) #3
  br label %.lr.ph42

.preheader13:                                     ; preds = %._crit_edge20
  %45 = icmp sgt i32 %alphaSize, 1
  br i1 %45, label %.lr.ph42, label %176

.lr.ph42:                                         ; preds = %.preheader13.thread, %.preheader13
  %46 = sext i32 %alphaSize to i64
  br label %47

; <label>:47                                      ; preds = %.lr.ph42, %._crit_edge38
  %indvars.iv67 = phi i64 [ %46, %.lr.ph42 ], [ %indvars.iv.next68, %._crit_edge38 ]
  %indvars.iv65 = phi i64 [ %11, %.lr.ph42 ], [ %indvars.iv.next66, %._crit_edge38 ]
  %48 = load i32* %10, align 4, !tbaa !2
  %49 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv67
  %50 = load i32* %49, align 4, !tbaa !2
  store i32 %50, i32* %10, align 4, !tbaa !2
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, -1
  %51 = icmp slt i64 %indvars.iv67, 3
  br i1 %51, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %47
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %52
  %54 = load i32* %53, align 4, !tbaa !2
  br label %55

; <label>:55                                      ; preds = %.lr.ph24, %81
  %56 = phi i32 [ 2, %.lr.ph24 ], [ %84, %81 ]
  %zz1.022 = phi i32 [ 1, %.lr.ph24 ], [ %yy.0, %81 ]
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %57, %indvars.iv.next68
  br i1 %58, label %59, label %73

; <label>:59                                      ; preds = %55
  %60 = or i32 %56, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %61
  %63 = load i32* %62, align 4, !tbaa !2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %64
  %66 = load i32* %65, align 4, !tbaa !2
  %67 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %57
  %68 = load i32* %67, align 8, !tbaa !2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %69
  %71 = load i32* %70, align 4, !tbaa !2
  %72 = icmp slt i32 %66, %71
  %.8 = select i1 %72, i32 %60, i32 %56
  br label %73

; <label>:73                                      ; preds = %59, %55
  %yy.0 = phi i32 [ %56, %55 ], [ %.8, %59 ]
  %74 = sext i32 %yy.0 to i64
  %75 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %74
  %76 = load i32* %75, align 4, !tbaa !2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %77
  %79 = load i32* %78, align 4, !tbaa !2
  %80 = icmp slt i32 %54, %79
  br i1 %80, label %._crit_edge25, label %81

; <label>:81                                      ; preds = %73
  %82 = sext i32 %zz1.022 to i64
  %83 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %82
  store i32 %76, i32* %83, align 4, !tbaa !2
  %84 = shl i32 %yy.0, 1
  %85 = sext i32 %84 to i64
  %86 = icmp sgt i64 %85, %indvars.iv.next68
  br i1 %86, label %._crit_edge25, label %55

._crit_edge25:                                    ; preds = %81, %73, %47
  %zz1.0.lcssa = phi i32 [ 1, %47 ], [ %yy.0, %81 ], [ %zz1.022, %73 ]
  %87 = sext i32 %zz1.0.lcssa to i64
  %88 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %87
  store i32 %50, i32* %88, align 4, !tbaa !2
  %89 = load i32* %10, align 4, !tbaa !2
  %90 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %indvars.iv.next68
  %91 = load i32* %90, align 4, !tbaa !2
  store i32 %91, i32* %10, align 4, !tbaa !2
  %92 = add nsw i64 %indvars.iv67, -2
  %93 = icmp slt i64 %92, 2
  br i1 %93, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %._crit_edge25
  %94 = sext i32 %91 to i64
  %95 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %94
  %96 = load i32* %95, align 4, !tbaa !2
  br label %97

; <label>:97                                      ; preds = %.lr.ph31, %123
  %98 = phi i32 [ 2, %.lr.ph31 ], [ %126, %123 ]
  %zz3.029 = phi i32 [ 1, %.lr.ph31 ], [ %yy4.0, %123 ]
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %99, %92
  br i1 %100, label %101, label %115

; <label>:101                                     ; preds = %97
  %102 = or i32 %98, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %103
  %105 = load i32* %104, align 4, !tbaa !2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %106
  %108 = load i32* %107, align 4, !tbaa !2
  %109 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %99
  %110 = load i32* %109, align 8, !tbaa !2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %111
  %113 = load i32* %112, align 4, !tbaa !2
  %114 = icmp slt i32 %108, %113
  %.9 = select i1 %114, i32 %102, i32 %98
  br label %115

; <label>:115                                     ; preds = %101, %97
  %yy4.0 = phi i32 [ %98, %97 ], [ %.9, %101 ]
  %116 = sext i32 %yy4.0 to i64
  %117 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %116
  %118 = load i32* %117, align 4, !tbaa !2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %119
  %121 = load i32* %120, align 4, !tbaa !2
  %122 = icmp slt i32 %96, %121
  br i1 %122, label %._crit_edge32, label %123

; <label>:123                                     ; preds = %115
  %124 = sext i32 %zz3.029 to i64
  %125 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %124
  store i32 %118, i32* %125, align 4, !tbaa !2
  %126 = shl i32 %yy4.0, 1
  %127 = sext i32 %126 to i64
  %128 = icmp sgt i64 %127, %92
  br i1 %128, label %._crit_edge32, label %97

._crit_edge32:                                    ; preds = %123, %115, %._crit_edge25
  %zz3.0.lcssa = phi i32 [ 1, %._crit_edge25 ], [ %yy4.0, %123 ], [ %zz3.029, %115 ]
  %129 = sext i32 %zz3.0.lcssa to i64
  %130 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %129
  store i32 %91, i32* %130, align 4, !tbaa !2
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1
  %131 = sext i32 %89 to i64
  %132 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %131
  %133 = trunc i64 %indvars.iv.next66 to i32
  store i32 %133, i32* %132, align 4, !tbaa !2
  %134 = sext i32 %48 to i64
  %135 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %134
  store i32 %133, i32* %135, align 4, !tbaa !2
  %136 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %134
  %137 = load i32* %136, align 4, !tbaa !2
  %138 = and i32 %137, -256
  %139 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %131
  %140 = load i32* %139, align 4, !tbaa !2
  %141 = and i32 %140, -256
  %142 = add i32 %141, %138
  %143 = and i32 %137, 255
  %144 = and i32 %140, 255
  %145 = icmp ugt i32 %143, %144
  %.10 = select i1 %145, i32 %137, i32 %140
  %146 = and i32 %.10, 255
  %147 = add nuw nsw i32 %146, 1
  %148 = or i32 %147, %142
  %149 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv.next66
  store i32 %148, i32* %149, align 4, !tbaa !2
  %150 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %indvars.iv.next66
  store i32 -1, i32* %150, align 4, !tbaa !2
  store i32 %133, i32* %90, align 4, !tbaa !2
  %151 = trunc i64 %indvars.iv.next68 to i32
  %152 = ashr i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %153
  %155 = load i32* %154, align 4, !tbaa !2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %156
  %158 = load i32* %157, align 4, !tbaa !2
  %159 = icmp slt i32 %148, %158
  br i1 %159, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %._crit_edge32, %.lr.ph37
  %160 = phi i32* [ %172, %.lr.ph37 ], [ %90, %._crit_edge32 ]
  %161 = phi i32 [ %166, %.lr.ph37 ], [ %155, %._crit_edge32 ]
  %162 = phi i32 [ %163, %.lr.ph37 ], [ %152, %._crit_edge32 ]
  store i32 %161, i32* %160, align 4, !tbaa !2
  %163 = ashr i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %164
  %166 = load i32* %165, align 4, !tbaa !2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %167
  %169 = load i32* %168, align 4, !tbaa !2
  %170 = icmp slt i32 %148, %169
  %171 = sext i32 %162 to i64
  %172 = getelementptr inbounds [260 x i32]* %heap, i64 0, i64 %171
  br i1 %170, label %.lr.ph37, label %._crit_edge38

._crit_edge38:                                    ; preds = %.lr.ph37, %._crit_edge32
  %.lcssa15 = phi i32* [ %90, %._crit_edge32 ], [ %172, %.lr.ph37 ]
  store i32 %133, i32* %.lcssa15, align 4, !tbaa !2
  %173 = icmp sgt i64 %indvars.iv.next68, 1
  br i1 %173, label %47, label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge38
  %174 = shl i32 %alphaSize, 1
  %175 = add i32 %174, -1
  br label %176

; <label>:176                                     ; preds = %._crit_edge43, %.preheader13
  %nNodes.0.lcssa = phi i32 [ %175, %._crit_edge43 ], [ %alphaSize, %.preheader13 ]
  %177 = icmp slt i32 %nNodes.0.lcssa, 516
  br i1 %177, label %.preheader12, label %178

; <label>:178                                     ; preds = %176
  tail call void @BZ2_bz__AssertH__fail(i32 2002) #3
  br label %.preheader12

.preheader12:                                     ; preds = %178, %176
  br i1 %9, label %._crit_edge47.thread, label %.preheader

.preheader:                                       ; preds = %.preheader12, %186
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %186 ], [ 1, %.preheader12 ]
  %tooLong.045 = phi i8 [ %.tooLong.0, %186 ], [ 0, %.preheader12 ]
  %179 = trunc i64 %indvars.iv70 to i32
  br label %180

; <label>:180                                     ; preds = %180, %.preheader
  %k.0 = phi i32 [ %183, %180 ], [ %179, %.preheader ]
  %j.0 = phi i32 [ %185, %180 ], [ 0, %.preheader ]
  %181 = sext i32 %k.0 to i64
  %182 = getelementptr inbounds [516 x i32]* %parent, i64 0, i64 %181
  %183 = load i32* %182, align 4, !tbaa !2
  %184 = icmp sgt i32 %183, -1
  %185 = add nuw nsw i32 %j.0, 1
  br i1 %184, label %180, label %186

; <label>:186                                     ; preds = %180
  %187 = trunc i32 %j.0 to i8
  %188 = add nsw i64 %indvars.iv70, -1
  %189 = getelementptr inbounds i8* %len, i64 %188
  store i8 %187, i8* %189, align 1, !tbaa !6
  %190 = icmp sgt i32 %j.0, %maxLen
  %.tooLong.0 = select i1 %190, i8 1, i8 %tooLong.045
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond73 = icmp eq i32 %179, %alphaSize
  br i1 %exitcond73, label %._crit_edge47, label %.preheader

._crit_edge47:                                    ; preds = %186
  %191 = icmp eq i8 %.tooLong.0, 0
  br i1 %191, label %._crit_edge47.thread, label %.preheader11

.preheader11:                                     ; preds = %._crit_edge47
  br i1 %9, label %._crit_edge47.thread.critedge, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader11, %.lr.ph50
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.lr.ph50 ], [ 1, %.preheader11 ]
  %192 = getelementptr inbounds [516 x i32]* %weight, i64 0, i64 %indvars.iv74
  %193 = load i32* %192, align 4, !tbaa !2
  %194 = ashr i32 %193, 8
  %195 = sdiv i32 %194, 2
  %196 = shl nsw i32 %195, 8
  %197 = add nsw i32 %196, 256
  store i32 %197, i32* %192, align 4, !tbaa !2
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv74 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %alphaSize
  br i1 %exitcond77, label %.loopexit.loopexit, label %.lr.ph50

._crit_edge47.thread.critedge:                    ; preds = %.preheader11
  store i32 0, i32* %6, align 16, !tbaa !2
  store i32 0, i32* %7, align 16, !tbaa !2
  store i32 -2, i32* %8, align 16, !tbaa !2
  br label %._crit_edge47.thread

._crit_edge47.thread:                             ; preds = %.preheader14, %._crit_edge47, %.preheader12, %.loopexit.loopexit, %._crit_edge47.thread.critedge
  call void @llvm.lifetime.end(i64 2064, i8* %3) #1
  call void @llvm.lifetime.end(i64 2064, i8* %2) #1
  call void @llvm.lifetime.end(i64 1040, i8* %1) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_hbAssignCodes(i32* nocapture %code, i8* nocapture readonly %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
  %1 = icmp sgt i32 %minLen, %maxLen
  br i1 %1, label %._crit_edge5, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %alphaSize, 0
  %3 = add i32 %alphaSize, -1
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %vec.04 = phi i32 [ 0, %.preheader.lr.ph ], [ %12, %._crit_edge ]
  %n.03 = phi i32 [ %minLen, %.preheader.lr.ph ], [ %13, %._crit_edge ]
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %11
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %.preheader ]
  %vec.11 = phi i32 [ %vec.2, %11 ], [ %vec.04, %.preheader ]
  %4 = getelementptr inbounds i8* %length, i64 %indvars.iv
  %5 = load i8* %4, align 1, !tbaa !6
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, %n.03
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds i32* %code, i64 %indvars.iv
  store i32 %vec.11, i32* %9, align 4, !tbaa !2
  %10 = add nsw i32 %vec.11, 1
  br label %11

; <label>:11                                      ; preds = %.lr.ph, %8
  %vec.2 = phi i32 [ %10, %8 ], [ %vec.11, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %11, %.preheader
  %vec.1.lcssa = phi i32 [ %vec.04, %.preheader ], [ %vec.2, %11 ]
  %12 = shl i32 %vec.1.lcssa, 1
  %13 = add nsw i32 %n.03, 1
  %14 = icmp slt i32 %n.03, %maxLen
  br i1 %14, label %.preheader, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_hbCreateDecodeTables(i32* nocapture %limit, i32* nocapture %base, i32* nocapture %perm, i8* nocapture readonly %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
  %limit29 = bitcast i32* %limit to i8*
  %base40 = bitcast i32* %base to i8*
  %1 = icmp sgt i32 %minLen, %maxLen
  br i1 %1, label %.preheader5, label %.preheader6.lr.ph

.preheader6.lr.ph:                                ; preds = %0
  %2 = icmp sgt i32 %alphaSize, 0
  %3 = add i32 %alphaSize, -1
  br label %.preheader6

.preheader6:                                      ; preds = %._crit_edge21, %.preheader6.lr.ph
  %i.023 = phi i32 [ %minLen, %.preheader6.lr.ph ], [ %15, %._crit_edge21 ]
  %pp.022 = phi i32 [ 0, %.preheader6.lr.ph ], [ %pp.1.lcssa, %._crit_edge21 ]
  br i1 %2, label %.lr.ph20, label %._crit_edge21

.preheader5:                                      ; preds = %._crit_edge21, %0
  call void @llvm.memset.p0i8.i64(i8* %base40, i8 0, i64 92, i32 4, i1 false)
  %4 = icmp sgt i32 %alphaSize, 0
  br i1 %4, label %.lr.ph16, label %.preheader3

.lr.ph20:                                         ; preds = %.preheader6, %14
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %14 ], [ 0, %.preheader6 ]
  %pp.118 = phi i32 [ %pp.2, %14 ], [ %pp.022, %.preheader6 ]
  %5 = getelementptr inbounds i8* %length, i64 %indvars.iv41
  %6 = load i8* %5, align 1, !tbaa !6
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, %i.023
  br i1 %8, label %9, label %._crit_edge45

._crit_edge45:                                    ; preds = %.lr.ph20
  %.pre = trunc i64 %indvars.iv41 to i32
  br label %14

; <label>:9                                       ; preds = %.lr.ph20
  %10 = sext i32 %pp.118 to i64
  %11 = getelementptr inbounds i32* %perm, i64 %10
  %12 = trunc i64 %indvars.iv41 to i32
  store i32 %12, i32* %11, align 4, !tbaa !2
  %13 = add nsw i32 %pp.118, 1
  br label %14

; <label>:14                                      ; preds = %._crit_edge45, %9
  %lftr.wideiv43.pre-phi = phi i32 [ %.pre, %._crit_edge45 ], [ %12, %9 ]
  %pp.2 = phi i32 [ %pp.118, %._crit_edge45 ], [ %13, %9 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44 = icmp eq i32 %lftr.wideiv43.pre-phi, %3
  br i1 %exitcond44, label %._crit_edge21, label %.lr.ph20

._crit_edge21:                                    ; preds = %14, %.preheader6
  %pp.1.lcssa = phi i32 [ %pp.022, %.preheader6 ], [ %pp.2, %14 ]
  %15 = add nsw i32 %i.023, 1
  %16 = icmp slt i32 %i.023, %maxLen
  br i1 %16, label %.preheader6, label %.preheader5

.lr.ph16:                                         ; preds = %.preheader5
  %17 = add i32 %alphaSize, -1
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph16
  %indvars.iv33 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next34, %18 ]
  %19 = getelementptr inbounds i8* %length, i64 %indvars.iv33
  %20 = load i8* %19, align 1, !tbaa !6
  %21 = zext i8 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = getelementptr inbounds i32* %base, i64 %22
  %24 = load i32* %23, align 4, !tbaa !2
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4, !tbaa !2
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv33 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %17
  br i1 %exitcond36, label %.preheader3, label %18

.preheader2:                                      ; preds = %.preheader3
  call void @llvm.memset.p0i8.i64(i8* %limit29, i8 0, i64 92, i32 4, i1 false)
  br i1 %1, label %.preheader, label %.lr.ph12

.preheader3:                                      ; preds = %.preheader5, %18, %.preheader3
  %26 = phi i32 [ %29, %.preheader3 ], [ 0, %18 ], [ 0, %.preheader5 ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.preheader3 ], [ 1, %18 ], [ 1, %.preheader5 ]
  %27 = getelementptr inbounds i32* %base, i64 %indvars.iv30
  %28 = load i32* %27, align 4, !tbaa !2
  %29 = add nsw i32 %28, %26
  store i32 %29, i32* %27, align 4, !tbaa !2
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 23
  br i1 %exitcond32, label %.preheader2, label %.preheader3

.lr.ph12:                                         ; preds = %.preheader2
  %30 = sext i32 %minLen to i64
  %31 = sext i32 %maxLen to i64
  br label %35

.preheader:                                       ; preds = %35, %.preheader2
  %32 = icmp slt i32 %minLen, %maxLen
  br i1 %32, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %33 = sext i32 %minLen to i64
  %34 = add i32 %maxLen, -1
  br label %46

; <label>:35                                      ; preds = %35, %.lr.ph12
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %35 ], [ %30, %.lr.ph12 ]
  %vec.011 = phi i32 [ %44, %35 ], [ 0, %.lr.ph12 ]
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1
  %36 = getelementptr inbounds i32* %base, i64 %indvars.iv.next25
  %37 = load i32* %36, align 4, !tbaa !2
  %38 = getelementptr inbounds i32* %base, i64 %indvars.iv24
  %39 = load i32* %38, align 4, !tbaa !2
  %40 = sub nsw i32 %37, %39
  %41 = add nsw i32 %40, %vec.011
  %42 = add nsw i32 %41, -1
  %43 = getelementptr inbounds i32* %limit, i64 %indvars.iv24
  store i32 %42, i32* %43, align 4, !tbaa !2
  %44 = shl i32 %41, 1
  %45 = icmp slt i64 %indvars.iv24, %31
  br i1 %45, label %35, label %.preheader

; <label>:46                                      ; preds = %46, %.lr.ph
  %indvars.iv = phi i64 [ %33, %.lr.ph ], [ %indvars.iv.next, %46 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %47 = getelementptr inbounds i32* %limit, i64 %indvars.iv
  %48 = load i32* %47, align 4, !tbaa !2
  %49 = shl i32 %48, 1
  %50 = add i32 %49, 2
  %51 = getelementptr inbounds i32* %base, i64 %indvars.iv.next
  %52 = load i32* %51, align 4, !tbaa !2
  %53 = sub i32 %50, %52
  store i32 %53, i32* %51, align 4, !tbaa !2
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %34
  br i1 %exitcond, label %._crit_edge, label %46

._crit_edge:                                      ; preds = %46, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
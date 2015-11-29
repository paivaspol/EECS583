; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/blocksort.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [38 x i8] c"      %d work, %d block, ratio %5.2f\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"    too repetitive; using fallback sorting algorithm\0A\00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"        bucket sorting ...\0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"        depth %6d has \00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"%6d unresolved strings\0A\00", align 1
@.str5 = private unnamed_addr constant [34 x i8] c"        reconstructing block ...\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"        main sort initialise ...\0A\00", align 1
@.str7 = private unnamed_addr constant [48 x i8] c"        qsort [0x%x, 0x%x]   done %d   this %d\0A\00", align 1
@.str8 = private unnamed_addr constant [44 x i8] c"        %d pointers, %d sorted, %d scanned\0A\00", align 1
@incs = internal unnamed_addr constant [14 x i32] [i32 1, i32 4, i32 13, i32 40, i32 121, i32 364, i32 1093, i32 3280, i32 9841, i32 29524, i32 88573, i32 265720, i32 797161, i32 2391484], align 16

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_blockSort(%struct.EState* nocapture %s) #0 {
  %stackLo.i.i = alloca [100 x i32], align 16
  %stackHi.i.i = alloca [100 x i32], align 16
  %stackD.i.i = alloca [100 x i32], align 16
  %runningOrder.i = alloca [256 x i32], align 16
  %bigDone.i = alloca [256 x i8], align 16
  %copyStart.i = alloca [256 x i32], align 16
  %copyEnd.i = alloca [256 x i32], align 16
  %budget = alloca i32, align 4
  %1 = getelementptr inbounds %struct.EState* %s, i64 0, i32 8
  %2 = load i32** %1, align 8, !tbaa !2
  %3 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %4 = load i8** %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.EState* %s, i64 0, i32 6
  %6 = load i32** %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %8 = load i32* %7, align 4, !tbaa !10
  %9 = getelementptr inbounds %struct.EState* %s, i64 0, i32 28
  %10 = load i32* %9, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.EState* %s, i64 0, i32 12
  %12 = load i32* %11, align 4, !tbaa !12
  %13 = icmp slt i32 %8, 10000
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %struct.EState* %s, i64 0, i32 4
  %16 = load i32** %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.EState* %s, i64 0, i32 5
  %18 = load i32** %17, align 8, !tbaa !14
  tail call fastcc void @fallbackSort(i32* %16, i32* %18, i32* %6, i32 %8, i32 %10) #5
  br label %714

; <label>:19                                      ; preds = %0
  %20 = add nsw i32 %8, 34
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = add nsw i32 %8, 35
  %. = select i1 %22, i32 %20, i32 %23
  %24 = sext i32 %. to i64
  %25 = getelementptr inbounds i8* %4, i64 %24
  %26 = bitcast i8* %25 to i16*
  %27 = icmp slt i32 %12, 1
  %wfact.0 = select i1 %27, i32 1, i32 %12
  %28 = icmp sgt i32 %wfact.0, 100
  %wfact.0.op = add i32 %wfact.0, -1
  %wfact.0.op.op = sdiv i32 %wfact.0.op, 3
  %29 = select i1 %28, i32 33, i32 %wfact.0.op.op
  %30 = mul nsw i32 %29, %8
  store i32 %30, i32* %budget, align 4, !tbaa !15
  %bigDone177.i = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 0
  %31 = bitcast [256 x i32]* %runningOrder.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %31) #3
  call void @llvm.lifetime.start(i64 256, i8* %bigDone177.i) #3
  %32 = bitcast [256 x i32]* %copyStart.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %32) #3
  %33 = bitcast [256 x i32]* %copyEnd.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %33) #3
  %34 = icmp sgt i32 %10, 3
  br i1 %34, label %35, label %.preheader13.i

; <label>:35                                      ; preds = %19
  %36 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i64 33, i64 1, %struct.__sFILE* %36) #3
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %35, %19, %.preheader13.i
  %indvars.iv193.i = phi i64 [ %indvars.iv.next194.i, %.preheader13.i ], [ 65536, %19 ], [ 65536, %35 ]
  %38 = getelementptr inbounds i32* %6, i64 %indvars.iv193.i
  store i32 0, i32* %38, align 4, !tbaa !15
  %indvars.iv.next194.i = add nsw i64 %indvars.iv193.i, -1
  %39 = icmp sgt i64 %indvars.iv193.i, 0
  br i1 %39, label %.preheader13.i, label %40

; <label>:40                                      ; preds = %.preheader13.i
  %41 = load i8* %4, align 1, !tbaa !17
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = add i32 %8, -1
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %.lr.ph102.i, label %.preheader12.i

.lr.ph102.i:                                      ; preds = %40
  %46 = sext i32 %44 to i64
  %47 = add i32 %8, -4
  br label %53

..preheader12_crit_edge.i:                        ; preds = %53
  %48 = and i32 %47, -4
  %49 = add i32 %8, -5
  %50 = sub i32 %49, %48
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %..preheader12_crit_edge.i, %40
  %i.1.lcssa.i = phi i32 [ %50, %..preheader12_crit_edge.i ], [ %44, %40 ]
  %j.0.lcssa.i = phi i32 [ %96, %..preheader12_crit_edge.i ], [ %43, %40 ]
  %51 = icmp sgt i32 %i.1.lcssa.i, -1
  br i1 %51, label %.lr.ph98.i, label %.preheader11.i

.lr.ph98.i:                                       ; preds = %.preheader12.i
  %52 = sext i32 %i.1.lcssa.i to i64
  br label %104

; <label>:53                                      ; preds = %53, %.lr.ph102.i
  %indvars.iv191.i = phi i64 [ %46, %.lr.ph102.i ], [ %indvars.iv.next192.i, %53 ]
  %i.1100.i = phi i32 [ %44, %.lr.ph102.i ], [ %101, %53 ]
  %j.099.i = phi i32 [ %43, %.lr.ph102.i ], [ %96, %53 ]
  %54 = getelementptr inbounds i16* %26, i64 %indvars.iv191.i
  store i16 0, i16* %54, align 2, !tbaa !18
  %55 = ashr i32 %j.099.i, 8
  %56 = getelementptr inbounds i8* %4, i64 %indvars.iv191.i
  %57 = load i8* %56, align 1, !tbaa !17
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = or i32 %59, %55
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32* %6, i64 %61
  %63 = load i32* %62, align 4, !tbaa !15
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4, !tbaa !15
  %65 = add nsw i64 %indvars.iv191.i, -1
  %66 = getelementptr inbounds i16* %26, i64 %65
  store i16 0, i16* %66, align 2, !tbaa !18
  %67 = ashr i32 %60, 8
  %68 = getelementptr inbounds i8* %4, i64 %65
  %69 = load i8* %68, align 1, !tbaa !17
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = or i32 %67, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32* %6, i64 %73
  %75 = load i32* %74, align 4, !tbaa !15
  %76 = add i32 %75, 1
  store i32 %76, i32* %74, align 4, !tbaa !15
  %77 = add nsw i64 %indvars.iv191.i, -2
  %78 = getelementptr inbounds i16* %26, i64 %77
  store i16 0, i16* %78, align 2, !tbaa !18
  %79 = ashr i32 %72, 8
  %80 = getelementptr inbounds i8* %4, i64 %77
  %81 = load i8* %80, align 1, !tbaa !17
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = or i32 %79, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32* %6, i64 %85
  %87 = load i32* %86, align 4, !tbaa !15
  %88 = add i32 %87, 1
  store i32 %88, i32* %86, align 4, !tbaa !15
  %89 = add nsw i64 %indvars.iv191.i, -3
  %90 = getelementptr inbounds i16* %26, i64 %89
  store i16 0, i16* %90, align 2, !tbaa !18
  %91 = ashr i32 %84, 8
  %92 = getelementptr inbounds i8* %4, i64 %89
  %93 = load i8* %92, align 1, !tbaa !17
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = or i32 %91, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32* %6, i64 %97
  %99 = load i32* %98, align 4, !tbaa !15
  %100 = add i32 %99, 1
  store i32 %100, i32* %98, align 4, !tbaa !15
  %101 = add nsw i32 %i.1100.i, -4
  %102 = icmp sgt i32 %101, 2
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, -4
  br i1 %102, label %53, label %..preheader12_crit_edge.i

.preheader11.i:                                   ; preds = %104, %.preheader12.i
  %103 = sext i32 %8 to i64
  br label %117

; <label>:104                                     ; preds = %104, %.lr.ph98.i
  %indvars.iv189.i = phi i64 [ %52, %.lr.ph98.i ], [ %indvars.iv.next190.i, %104 ]
  %j.196.i = phi i32 [ %j.0.lcssa.i, %.lr.ph98.i ], [ %111, %104 ]
  %105 = getelementptr inbounds i16* %26, i64 %indvars.iv189.i
  store i16 0, i16* %105, align 2, !tbaa !18
  %106 = ashr i32 %j.196.i, 8
  %107 = getelementptr inbounds i8* %4, i64 %indvars.iv189.i
  %108 = load i8* %107, align 1, !tbaa !17
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or i32 %110, %106
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32* %6, i64 %112
  %114 = load i32* %113, align 4, !tbaa !15
  %115 = add i32 %114, 1
  store i32 %115, i32* %113, align 4, !tbaa !15
  %indvars.iv.next190.i = add nsw i64 %indvars.iv189.i, -1
  %116 = icmp sgt i64 %indvars.iv189.i, 0
  br i1 %116, label %104, label %.preheader11.i

; <label>:117                                     ; preds = %117, %.preheader11.i
  %indvars.iv185.i = phi i64 [ 0, %.preheader11.i ], [ %indvars.iv.next186.i, %117 ]
  %118 = getelementptr inbounds i8* %4, i64 %indvars.iv185.i
  %119 = load i8* %118, align 1, !tbaa !17
  %120 = add nsw i64 %indvars.iv185.i, %103
  %121 = getelementptr inbounds i8* %4, i64 %120
  store i8 %119, i8* %121, align 1, !tbaa !17
  %122 = getelementptr inbounds i16* %26, i64 %120
  store i16 0, i16* %122, align 2, !tbaa !18
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1
  %exitcond187.i = icmp eq i64 %indvars.iv.next186.i, 34
  br i1 %exitcond187.i, label %123, label %117

; <label>:123                                     ; preds = %117
  br i1 %34, label %124, label %.preheader10.i

; <label>:124                                     ; preds = %123
  %125 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %126 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %125) #3
  br label %.preheader10.i

.preheader10.i:                                   ; preds = %124, %123
  %.pre.i = load i32* %6, align 4, !tbaa !15
  br label %127

; <label>:127                                     ; preds = %127, %.preheader10.i
  %128 = phi i32 [ %.pre.i, %.preheader10.i ], [ %131, %127 ]
  %indvars.iv182.i = phi i64 [ 1, %.preheader10.i ], [ %indvars.iv.next183.i, %127 ]
  %129 = getelementptr inbounds i32* %6, i64 %indvars.iv182.i
  %130 = load i32* %129, align 4, !tbaa !15
  %131 = add i32 %130, %128
  store i32 %131, i32* %129, align 4, !tbaa !15
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 1
  %exitcond184.i = icmp eq i64 %indvars.iv.next183.i, 65537
  br i1 %exitcond184.i, label %132, label %127

; <label>:132                                     ; preds = %127
  %133 = load i8* %4, align 1, !tbaa !17
  %134 = zext i8 %133 to i16
  %135 = shl nuw i16 %134, 8
  br i1 %45, label %.lr.ph91.i, label %.preheader9.i

.lr.ph91.i:                                       ; preds = %132
  %136 = sext i32 %44 to i64
  %137 = add i32 %8, -4
  br label %143

..preheader9_crit_edge.i:                         ; preds = %143
  %138 = and i32 %137, -4
  %139 = add i32 %8, -5
  %140 = sub i32 %139, %138
  br label %.preheader9.i

.preheader9.i:                                    ; preds = %..preheader9_crit_edge.i, %132
  %i.5.lcssa.i = phi i32 [ %140, %..preheader9_crit_edge.i ], [ %44, %132 ]
  %s.0.lcssa.i = phi i16 [ %188, %..preheader9_crit_edge.i ], [ %135, %132 ]
  %141 = icmp sgt i32 %i.5.lcssa.i, -1
  br i1 %141, label %.lr.ph87.i, label %.preheader8.i

.lr.ph87.i:                                       ; preds = %.preheader9.i
  %142 = sext i32 %i.5.lcssa.i to i64
  br label %202

; <label>:143                                     ; preds = %143, %.lr.ph91.i
  %indvars.iv180.i = phi i64 [ %136, %.lr.ph91.i ], [ %indvars.iv.next181.i, %143 ]
  %i.589.i = phi i32 [ %44, %.lr.ph91.i ], [ %196, %143 ]
  %s.088.i = phi i16 [ %135, %.lr.ph91.i ], [ %188, %143 ]
  %144 = lshr i16 %s.088.i, 8
  %145 = getelementptr inbounds i8* %4, i64 %indvars.iv180.i
  %146 = load i8* %145, align 1, !tbaa !17
  %147 = zext i8 %146 to i16
  %148 = shl nuw i16 %147, 8
  %149 = or i16 %148, %144
  %150 = zext i16 %149 to i64
  %151 = getelementptr inbounds i32* %6, i64 %150
  %152 = load i32* %151, align 4, !tbaa !15
  %153 = add i32 %152, -1
  store i32 %153, i32* %151, align 4, !tbaa !15
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32* %2, i64 %154
  %156 = trunc i64 %indvars.iv180.i to i32
  store i32 %156, i32* %155, align 4, !tbaa !15
  %157 = add nsw i64 %indvars.iv180.i, -1
  %158 = getelementptr inbounds i8* %4, i64 %157
  %159 = load i8* %158, align 1, !tbaa !17
  %160 = zext i8 %159 to i16
  %161 = shl nuw i16 %160, 8
  %162 = or i16 %161, %147
  %163 = zext i16 %162 to i64
  %164 = getelementptr inbounds i32* %6, i64 %163
  %165 = load i32* %164, align 4, !tbaa !15
  %166 = add i32 %165, -1
  store i32 %166, i32* %164, align 4, !tbaa !15
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32* %2, i64 %167
  %169 = trunc i64 %157 to i32
  store i32 %169, i32* %168, align 4, !tbaa !15
  %170 = add nsw i64 %indvars.iv180.i, -2
  %171 = getelementptr inbounds i8* %4, i64 %170
  %172 = load i8* %171, align 1, !tbaa !17
  %173 = zext i8 %172 to i16
  %174 = shl nuw i16 %173, 8
  %175 = or i16 %174, %160
  %176 = zext i16 %175 to i64
  %177 = getelementptr inbounds i32* %6, i64 %176
  %178 = load i32* %177, align 4, !tbaa !15
  %179 = add i32 %178, -1
  store i32 %179, i32* %177, align 4, !tbaa !15
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32* %2, i64 %180
  %182 = trunc i64 %170 to i32
  store i32 %182, i32* %181, align 4, !tbaa !15
  %183 = add nsw i64 %indvars.iv180.i, -3
  %184 = getelementptr inbounds i8* %4, i64 %183
  %185 = load i8* %184, align 1, !tbaa !17
  %186 = zext i8 %185 to i16
  %187 = shl nuw i16 %186, 8
  %188 = or i16 %187, %173
  %189 = zext i16 %188 to i64
  %190 = getelementptr inbounds i32* %6, i64 %189
  %191 = load i32* %190, align 4, !tbaa !15
  %192 = add i32 %191, -1
  store i32 %192, i32* %190, align 4, !tbaa !15
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32* %2, i64 %193
  %195 = trunc i64 %183 to i32
  store i32 %195, i32* %194, align 4, !tbaa !15
  %196 = add nsw i32 %i.589.i, -4
  %197 = icmp sgt i32 %196, 2
  %indvars.iv.next181.i = add nsw i64 %indvars.iv180.i, -4
  br i1 %197, label %143, label %..preheader9_crit_edge.i

.preheader8.i:                                    ; preds = %202, %.preheader9.i
  call void @llvm.memset.p0i8.i64(i8* %bigDone177.i, i8 0, i64 256, i32 16, i1 false) #3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader8.i
  %index = phi i64 [ 0, %.preheader8.i ], [ %index.next, %vector.body ]
  %198 = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %index
  %199 = trunc i64 %index to i32
  %broadcast.splatinsert177 = insertelement <4 x i32> undef, i32 %199, i32 0
  %broadcast.splat178 = shufflevector <4 x i32> %broadcast.splatinsert177, <4 x i32> undef, <4 x i32> zeroinitializer
  %induction179 = add <4 x i32> %broadcast.splat178, <i32 0, i32 1, i32 2, i32 3>
  %200 = bitcast i32* %198 to <4 x i32>*
  store <4 x i32> %induction179, <4 x i32>* %200, align 16, !tbaa !15
  %index.next = add i64 %index, 4
  %201 = icmp eq i64 %index.next, 256
  br i1 %201, label %.preheader7.i, label %vector.body, !llvm.loop !20

; <label>:202                                     ; preds = %202, %.lr.ph87.i
  %indvars.iv178.i = phi i64 [ %142, %.lr.ph87.i ], [ %indvars.iv.next179.i, %202 ]
  %s.185.i = phi i16 [ %s.0.lcssa.i, %.lr.ph87.i ], [ %208, %202 ]
  %203 = lshr i16 %s.185.i, 8
  %204 = getelementptr inbounds i8* %4, i64 %indvars.iv178.i
  %205 = load i8* %204, align 1, !tbaa !17
  %206 = zext i8 %205 to i16
  %207 = shl nuw i16 %206, 8
  %208 = or i16 %207, %203
  %209 = zext i16 %208 to i64
  %210 = getelementptr inbounds i32* %6, i64 %209
  %211 = load i32* %210, align 4, !tbaa !15
  %212 = add i32 %211, -1
  store i32 %212, i32* %210, align 4, !tbaa !15
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32* %2, i64 %213
  %215 = trunc i64 %indvars.iv178.i to i32
  store i32 %215, i32* %214, align 4, !tbaa !15
  %indvars.iv.next179.i = add nsw i64 %indvars.iv178.i, -1
  %216 = icmp sgt i64 %indvars.iv178.i, 0
  br i1 %216, label %202, label %.preheader8.i

.preheader7.i:                                    ; preds = %vector.body, %._crit_edge83.i
  %h.1.i = phi i32 [ %217, %._crit_edge83.i ], [ 364, %vector.body ]
  %217 = sdiv i32 %h.1.i, 3
  %218 = icmp slt i32 %h.1.i, 768
  br i1 %218, label %.lr.ph82.i, label %._crit_edge83.i

.lr.ph82.i:                                       ; preds = %.preheader7.i
  %219 = add nsw i32 %217, -1
  %220 = sext i32 %217 to i64
  br label %221

; <label>:221                                     ; preds = %253, %.lr.ph82.i
  %indvars.iv172.i = phi i64 [ %220, %.lr.ph82.i ], [ %indvars.iv.next173.i, %253 ]
  %222 = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %indvars.iv172.i
  %223 = load i32* %222, align 4, !tbaa !15
  %224 = shl i32 %223, 8
  %225 = add i32 %224, 256
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32* %6, i64 %226
  %228 = load i32* %227, align 4, !tbaa !15
  %229 = sext i32 %224 to i64
  %230 = getelementptr inbounds i32* %6, i64 %229
  %231 = load i32* %230, align 4, !tbaa !15
  %232 = sub i32 %228, %231
  %233 = trunc i64 %indvars.iv172.i to i32
  br label %234

; <label>:234                                     ; preds = %249, %221
  %j.2.i = phi i32 [ %233, %221 ], [ %235, %249 ]
  %235 = sub nsw i32 %j.2.i, %217
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %236
  %238 = load i32* %237, align 4, !tbaa !15
  %239 = shl i32 %238, 8
  %240 = add i32 %239, 256
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32* %6, i64 %241
  %243 = load i32* %242, align 4, !tbaa !15
  %244 = sext i32 %239 to i64
  %245 = getelementptr inbounds i32* %6, i64 %244
  %246 = load i32* %245, align 4, !tbaa !15
  %247 = sub i32 %243, %246
  %248 = icmp ugt i32 %247, %232
  br i1 %248, label %249, label %253

; <label>:249                                     ; preds = %234
  %250 = sext i32 %j.2.i to i64
  %251 = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %250
  store i32 %238, i32* %251, align 4, !tbaa !15
  %252 = icmp sgt i32 %235, %219
  br i1 %252, label %234, label %253

; <label>:253                                     ; preds = %249, %234
  %j.3.i = phi i32 [ %235, %249 ], [ %j.2.i, %234 ]
  %254 = sext i32 %j.3.i to i64
  %255 = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %254
  store i32 %223, i32* %255, align 4, !tbaa !15
  %indvars.iv.next173.i = add nsw i64 %indvars.iv172.i, 1
  %256 = icmp slt i64 %indvars.iv.next173.i, 256
  br i1 %256, label %221, label %._crit_edge83.i

._crit_edge83.i:                                  ; preds = %253, %.preheader7.i
  %h.1.off.i = add nsw i32 %h.1.i, -3
  %257 = icmp ugt i32 %h.1.off.i, 2
  br i1 %257, label %.preheader7.i, label %.preheader5.i

.preheader5.i:                                    ; preds = %._crit_edge83.i
  %258 = bitcast [100 x i32]* %stackLo.i.i to i8*
  %259 = bitcast [100 x i32]* %stackHi.i.i to i8*
  %260 = bitcast [100 x i32]* %stackD.i.i to i8*
  %261 = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 0
  %262 = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 0
  %263 = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 0
  br label %264

; <label>:264                                     ; preds = %683, %.preheader5.i
  %.pr.i.i119 = phi i32 [ %30, %.preheader5.i ], [ %.pr.i.i121, %683 ]
  %indvars.iv170.i = phi i64 [ 0, %.preheader5.i ], [ %indvars.iv.next171.i, %683 ]
  %numQSorted.078.i = phi i32 [ 0, %.preheader5.i ], [ %numQSorted.3.i, %683 ]
  %265 = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %indvars.iv170.i
  %266 = load i32* %265, align 4, !tbaa !15
  %267 = shl i32 %266, 8
  %268 = sext i32 %267 to i64
  br label %269

; <label>:269                                     ; preds = %553, %264
  %.pr.i.i120 = phi i32 [ %.pr.i.i119, %264 ], [ %.pr.i.i121, %553 ]
  %indvars.iv.i = phi i64 [ 0, %264 ], [ %indvars.iv.next.i, %553 ]
  %numQSorted.163.i = phi i32 [ %numQSorted.078.i, %264 ], [ %numQSorted.3.i, %553 ]
  %270 = trunc i64 %indvars.iv.i to i32
  %271 = icmp eq i32 %270, %266
  br i1 %271, label %553, label %272

; <label>:272                                     ; preds = %269
  %273 = add nsw i64 %indvars.iv.i, %268
  %274 = getelementptr inbounds i32* %6, i64 %273
  %275 = load i32* %274, align 4, !tbaa !15
  %276 = and i32 %275, 2097152
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %550

; <label>:278                                     ; preds = %272
  %279 = and i32 %275, -2097153
  %280 = add nsw i64 %273, 1
  %281 = getelementptr inbounds i32* %6, i64 %280
  %282 = load i32* %281, align 4, !tbaa !15
  %283 = and i32 %282, -2097153
  %284 = add i32 %283, -1
  %285 = icmp sgt i32 %284, %279
  br i1 %285, label %286, label %550

; <label>:286                                     ; preds = %278
  br i1 %34, label %287, label %292

; <label>:287                                     ; preds = %286
  %288 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %289 = sub i32 1, %279
  %290 = add i32 %289, %284
  %291 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %288, i8* getelementptr inbounds ([48 x i8]* @.str7, i64 0, i64 0), i32 %266, i32 %270, i32 %numQSorted.163.i, i32 %290) #6
  br label %292

; <label>:292                                     ; preds = %287, %286
  call void @llvm.lifetime.start(i64 400, i8* %258) #3
  call void @llvm.lifetime.start(i64 400, i8* %259) #3
  call void @llvm.lifetime.start(i64 400, i8* %260) #3
  store i32 %279, i32* %261, align 16, !tbaa !15
  store i32 %284, i32* %262, align 16, !tbaa !15
  store i32 2, i32* %263, align 16, !tbaa !15
  br label %.lr.ph72.i.i

.lr.ph72.i.i:                                     ; preds = %.outer14.backedge.i.i, %292
  %.pr.i.i117 = phi i32 [ %.pr.i.i120, %292 ], [ %.pre195.pre.i, %.outer14.backedge.i.i ]
  %sp.0.ph84.i.i = phi i32 [ 1, %292 ], [ %sp.0.ph.be.i.i, %.outer14.backedge.i.i ]
  %293 = icmp slt i32 %sp.0.ph84.i.i, 100
  %294 = add nsw i32 %sp.0.ph84.i.i, -1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 %295
  %297 = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 %295
  %298 = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 %295
  br label %299

; <label>:299                                     ; preds = %485, %.lr.ph72.i.i
  br i1 %293, label %301, label %300

; <label>:300                                     ; preds = %299
  tail call void @BZ2_bz__AssertH__fail(i32 1001) #6
  br label %301

; <label>:301                                     ; preds = %300, %299
  %302 = load i32* %296, align 4, !tbaa !15
  %303 = load i32* %297, align 4, !tbaa !15
  %304 = load i32* %298, align 4, !tbaa !15
  %305 = sub nsw i32 %303, %302
  %306 = icmp slt i32 %305, 20
  %307 = icmp sgt i32 %304, 14
  %or.cond.i.i = or i1 %306, %307
  br i1 %or.cond.i.i, label %308, label %398

; <label>:308                                     ; preds = %301
  %309 = add nsw i32 %305, 1
  %310 = icmp slt i32 %309, 2
  br i1 %310, label %mainSimpleSort.exit.i.i, label %.preheader3.i.i.i

.preheader3.i.i.i:                                ; preds = %308, %.preheader3.i.i.i
  %indvars.iv8.i.i.i = phi i64 [ %indvars.iv.next9.i.i.i, %.preheader3.i.i.i ], [ 0, %308 ]
  %311 = getelementptr inbounds [14 x i32]* @incs, i64 0, i64 %indvars.iv8.i.i.i
  %312 = load i32* %311, align 4, !tbaa !15
  %313 = icmp slt i32 %312, %309
  %indvars.iv.next9.i.i.i = add nuw i64 %indvars.iv8.i.i.i, 1
  br i1 %313, label %.preheader3.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader3.i.i.i
  %314 = trunc i64 %indvars.iv8.i.i.i to i32
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %.lr.ph.i.i.i, label %mainSimpleSort.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %316 = sext i32 %303 to i64
  %sext.i.i.i = shl i64 %indvars.iv8.i.i.i, 32
  %317 = ashr exact i64 %sext.i.i.i, 32
  br label %319

.loopexit.i.i.i:                                  ; preds = %368, %345, %325
  %318 = icmp sgt i64 %indvars.iv6.i.i.i, 1
  br i1 %318, label %319, label %mainSimpleSort.exit.i.i.loopexit

; <label>:319                                     ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv6.i.i.i = phi i64 [ %317, %.lr.ph.i.i.i ], [ %indvars.iv.next7.i.i.i, %.loopexit.i.i.i ]
  %indvars.iv.next7.i.i.i = add nsw i64 %indvars.iv6.i.i.i, -1
  %320 = getelementptr inbounds [14 x i32]* @incs, i64 0, i64 %indvars.iv.next7.i.i.i
  %321 = load i32* %320, align 4, !tbaa !15
  %322 = add i32 %321, %302
  %323 = add nsw i32 %322, -1
  %324 = sext i32 %322 to i64
  br label %325

; <label>:325                                     ; preds = %391, %319
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %391 ], [ %324, %319 ]
  %326 = icmp sgt i64 %indvars.iv.i.i.i, %316
  br i1 %326, label %.loopexit.i.i.i, label %327

; <label>:327                                     ; preds = %325
  %328 = getelementptr inbounds i32* %2, i64 %indvars.iv.i.i.i
  %329 = load i32* %328, align 4, !tbaa !15
  %330 = add i32 %329, %304
  %331 = trunc i64 %indvars.iv.i.i.i to i32
  br label %332

; <label>:332                                     ; preds = %340, %327
  %j.0.i.i.i = phi i32 [ %331, %327 ], [ %333, %340 ]
  %333 = sub nsw i32 %j.0.i.i.i, %321
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32* %2, i64 %334
  %336 = load i32* %335, align 4, !tbaa !15
  %337 = add i32 %336, %304
  %338 = call fastcc zeroext i8 @mainGtU(i32 %337, i32 %330, i8* %4, i16* %26, i32 %8, i32* %budget) #6
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %345, label %340

; <label>:340                                     ; preds = %332
  %341 = load i32* %335, align 4, !tbaa !15
  %342 = sext i32 %j.0.i.i.i to i64
  %343 = getelementptr inbounds i32* %2, i64 %342
  store i32 %341, i32* %343, align 4, !tbaa !15
  %344 = icmp sgt i32 %333, %323
  br i1 %344, label %332, label %345

; <label>:345                                     ; preds = %340, %332
  %j.1.i.i.i = phi i32 [ %333, %340 ], [ %j.0.i.i.i, %332 ]
  %346 = sext i32 %j.1.i.i.i to i64
  %347 = getelementptr inbounds i32* %2, i64 %346
  store i32 %329, i32* %347, align 4, !tbaa !15
  %348 = add nsw i64 %indvars.iv.i.i.i, 1
  %349 = icmp slt i64 %indvars.iv.i.i.i, %316
  br i1 %349, label %350, label %.loopexit.i.i.i

; <label>:350                                     ; preds = %345
  %351 = getelementptr inbounds i32* %2, i64 %348
  %352 = load i32* %351, align 4, !tbaa !15
  %353 = add i32 %352, %304
  %354 = trunc i64 %348 to i32
  br label %355

; <label>:355                                     ; preds = %363, %350
  %j.2.i.i.i = phi i32 [ %354, %350 ], [ %356, %363 ]
  %356 = sub nsw i32 %j.2.i.i.i, %321
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32* %2, i64 %357
  %359 = load i32* %358, align 4, !tbaa !15
  %360 = add i32 %359, %304
  %361 = call fastcc zeroext i8 @mainGtU(i32 %360, i32 %353, i8* %4, i16* %26, i32 %8, i32* %budget) #6
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %368, label %363

; <label>:363                                     ; preds = %355
  %364 = load i32* %358, align 4, !tbaa !15
  %365 = sext i32 %j.2.i.i.i to i64
  %366 = getelementptr inbounds i32* %2, i64 %365
  store i32 %364, i32* %366, align 4, !tbaa !15
  %367 = icmp sgt i32 %356, %323
  br i1 %367, label %355, label %368

; <label>:368                                     ; preds = %363, %355
  %j.3.i.i.i = phi i32 [ %356, %363 ], [ %j.2.i.i.i, %355 ]
  %369 = sext i32 %j.3.i.i.i to i64
  %370 = getelementptr inbounds i32* %2, i64 %369
  store i32 %352, i32* %370, align 4, !tbaa !15
  %371 = add nsw i64 %indvars.iv.i.i.i, 2
  %372 = icmp sgt i64 %371, %316
  br i1 %372, label %.loopexit.i.i.i, label %373

; <label>:373                                     ; preds = %368
  %374 = getelementptr inbounds i32* %2, i64 %371
  %375 = load i32* %374, align 4, !tbaa !15
  %376 = add i32 %375, %304
  %377 = trunc i64 %371 to i32
  br label %378

; <label>:378                                     ; preds = %386, %373
  %j.4.i.i.i = phi i32 [ %377, %373 ], [ %379, %386 ]
  %379 = sub nsw i32 %j.4.i.i.i, %321
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32* %2, i64 %380
  %382 = load i32* %381, align 4, !tbaa !15
  %383 = add i32 %382, %304
  %384 = call fastcc zeroext i8 @mainGtU(i32 %383, i32 %376, i8* %4, i16* %26, i32 %8, i32* %budget) #6
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %391, label %386

; <label>:386                                     ; preds = %378
  %387 = load i32* %381, align 4, !tbaa !15
  %388 = sext i32 %j.4.i.i.i to i64
  %389 = getelementptr inbounds i32* %2, i64 %388
  store i32 %387, i32* %389, align 4, !tbaa !15
  %390 = icmp sgt i32 %379, %323
  br i1 %390, label %378, label %391

; <label>:391                                     ; preds = %386, %378
  %j.5.i.i.i = phi i32 [ %379, %386 ], [ %j.4.i.i.i, %378 ]
  %392 = sext i32 %j.5.i.i.i to i64
  %393 = getelementptr inbounds i32* %2, i64 %392
  store i32 %375, i32* %393, align 4, !tbaa !15
  %394 = load i32* %budget, align 4, !tbaa !15
  %395 = icmp slt i32 %394, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 3
  br i1 %395, label %mainQSort3.exit.i, label %325

mainSimpleSort.exit.i.i.loopexit:                 ; preds = %.loopexit.i.i.i
  %.pr.i.i.pre = load i32* %budget, align 4, !tbaa !15
  br label %mainSimpleSort.exit.i.i

mainSimpleSort.exit.i.i:                          ; preds = %mainSimpleSort.exit.i.i.loopexit, %.preheader.i.i.i, %308
  %.pr.i.i = phi i32 [ %.pr.i.i.pre, %mainSimpleSort.exit.i.i.loopexit ], [ %.pr.i.i117, %.preheader.i.i.i ], [ %.pr.i.i117, %308 ]
  %396 = icmp slt i32 %.pr.i.i, 0
  br i1 %396, label %mainQSort3.exit.i, label %.outer14.backedge.i.i

.outer14.backedge.i.i:                            ; preds = %._crit_edge83.i.i, %mainSimpleSort.exit.i.i
  %.pre195.pre.i = phi i32 [ %.pr.i.i117, %._crit_edge83.i.i ], [ %.pr.i.i, %mainSimpleSort.exit.i.i ]
  %sp.0.ph.be.i.i = phi i32 [ %545, %._crit_edge83.i.i ], [ %294, %mainSimpleSort.exit.i.i ]
  %397 = icmp sgt i32 %sp.0.ph.be.i.i, 0
  br i1 %397, label %.lr.ph72.i.i, label %mainQSort3.exit.i

; <label>:398                                     ; preds = %301
  %399 = sext i32 %302 to i64
  %400 = getelementptr inbounds i32* %2, i64 %399
  %401 = load i32* %400, align 4, !tbaa !15
  %402 = add i32 %401, %304
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i8* %4, i64 %403
  %405 = load i8* %404, align 1, !tbaa !17
  %406 = sext i32 %303 to i64
  %407 = getelementptr inbounds i32* %2, i64 %406
  %408 = load i32* %407, align 4, !tbaa !15
  %409 = add i32 %408, %304
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i8* %4, i64 %410
  %412 = load i8* %411, align 1, !tbaa !17
  %413 = add nsw i32 %303, %302
  %414 = ashr i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32* %2, i64 %415
  %417 = load i32* %416, align 4, !tbaa !15
  %418 = add i32 %417, %304
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i8* %4, i64 %419
  %421 = load i8* %420, align 1, !tbaa !17
  %422 = icmp ugt i8 %405, %412
  %a.b.i.i.i = select i1 %422, i8 %405, i8 %412
  %b.a.i.i.i = select i1 %422, i8 %412, i8 %405
  %423 = icmp ugt i8 %a.b.i.i.i, %421
  br i1 %423, label %424, label %mmed3.exit.i.i

; <label>:424                                     ; preds = %398
  %425 = icmp ugt i8 %b.a.i.i.i, %421
  %b.a.c.i.i.i = select i1 %425, i8 %b.a.i.i.i, i8 %421
  br label %mmed3.exit.i.i

mmed3.exit.i.i:                                   ; preds = %424, %398
  %426 = phi i8 [ %b.a.c.i.i.i, %424 ], [ %a.b.i.i.i, %398 ]
  br label %.outer8.i.i

.outer8.i.i:                                      ; preds = %475, %mmed3.exit.i.i
  %gtHi.0.ph.i.i = phi i32 [ %476, %475 ], [ %303, %mmed3.exit.i.i ]
  %ltLo.0.ph.i.i = phi i32 [ %ltLo.0.ph10.lcssa.i.i, %475 ], [ %302, %mmed3.exit.i.i ]
  %unHi.0.ph.i.i = phi i32 [ %482, %475 ], [ %303, %mmed3.exit.i.i ]
  %unLo.0.ph.i.i = phi i32 [ %481, %475 ], [ %302, %mmed3.exit.i.i ]
  %427 = icmp sgt i32 %unLo.0.ph.i.i, %unHi.0.ph.i.i
  br i1 %427, label %.preheader.i.i, label %.lr.ph.lr.ph.i.i

.lr.ph.lr.ph.i.i:                                 ; preds = %.outer8.i.i
  %428 = sext i32 %unHi.0.ph.i.i to i64
  %429 = sext i32 %ltLo.0.ph.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.outer9.i.i, %.lr.ph.lr.ph.i.i
  %indvars.iv138.i.i = phi i64 [ %indvars.iv.next139.i.i, %.outer9.i.i ], [ %429, %.lr.ph.lr.ph.i.i ]
  %unLo.0.ph1249.i.i = phi i32 [ %443, %.outer9.i.i ], [ %unLo.0.ph.i.i, %.lr.ph.lr.ph.i.i ]
  %ltLo.0.ph1048.i.i = phi i32 [ %442, %.outer9.i.i ], [ %ltLo.0.ph.i.i, %.lr.ph.lr.ph.i.i ]
  %430 = sext i32 %unLo.0.ph1249.i.i to i64
  br label %431

; <label>:431                                     ; preds = %452, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %452 ], [ %430, %.lr.ph.i.i ]
  %unLo.041.i.i = phi i32 [ %453, %452 ], [ %unLo.0.ph1249.i.i, %.lr.ph.i.i ]
  %432 = getelementptr inbounds i32* %2, i64 %indvars.iv.i.i
  %433 = load i32* %432, align 4, !tbaa !15
  %434 = add i32 %433, %304
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds i8* %4, i64 %435
  %437 = load i8* %436, align 1, !tbaa !17
  %438 = icmp eq i8 %437, %426
  br i1 %438, label %.outer9.i.i, label %445

.outer9.i.i:                                      ; preds = %431
  %439 = trunc i64 %indvars.iv.i.i to i32
  %440 = getelementptr inbounds i32* %2, i64 %indvars.iv138.i.i
  %441 = load i32* %440, align 4, !tbaa !15
  store i32 %441, i32* %432, align 4, !tbaa !15
  store i32 %433, i32* %440, align 4, !tbaa !15
  %442 = add nsw i32 %ltLo.0.ph1048.i.i, 1
  %443 = add nsw i32 %439, 1
  %444 = icmp slt i32 %439, %unHi.0.ph.i.i
  %indvars.iv.next139.i.i = add i64 %indvars.iv138.i.i, 1
  br i1 %444, label %.lr.ph.i.i, label %.preheader.i.i

; <label>:445                                     ; preds = %431
  %446 = icmp ugt i8 %437, %426
  br i1 %446, label %..preheader_crit_edge45.i.i, label %452

..preheader_crit_edge.i.i:                        ; preds = %452
  %447 = trunc i64 %indvars.iv138.i.i to i32
  br label %.preheader.i.i

..preheader_crit_edge45.i.i:                      ; preds = %445
  %448 = trunc i64 %indvars.iv138.i.i to i32
  %449 = trunc i64 %indvars.iv.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.outer9.i.i, %..preheader_crit_edge45.i.i, %..preheader_crit_edge.i.i, %.outer8.i.i
  %ltLo.0.ph10.lcssa.i.i = phi i32 [ %447, %..preheader_crit_edge.i.i ], [ %448, %..preheader_crit_edge45.i.i ], [ %ltLo.0.ph.i.i, %.outer8.i.i ], [ %442, %.outer9.i.i ]
  %unLo.0.lcssa.i.i = phi i32 [ %453, %..preheader_crit_edge.i.i ], [ %449, %..preheader_crit_edge45.i.i ], [ %unLo.0.ph.i.i, %.outer8.i.i ], [ %443, %.outer9.i.i ]
  %450 = icmp sgt i32 %unLo.0.lcssa.i.i, %unHi.0.ph.i.i
  br i1 %450, label %.critedge.i.i, label %.lr.ph53.lr.ph.i.i

.lr.ph53.lr.ph.i.i:                               ; preds = %.preheader.i.i
  %451 = sext i32 %gtHi.0.ph.i.i to i64
  br label %.lr.ph53.i.i

; <label>:452                                     ; preds = %445
  %453 = add nsw i32 %unLo.041.i.i, 1
  %454 = icmp slt i64 %indvars.iv.i.i, %428
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  br i1 %454, label %431, label %..preheader_crit_edge.i.i

; <label>:455                                     ; preds = %472, %.lr.ph53.i.i
  %indvars.iv140.i.i = phi i64 [ %469, %.lr.ph53.i.i ], [ %indvars.iv.next141.i.i, %472 ]
  %unHi.152.i.i = phi i32 [ %unHi.1.ph63.i.i, %.lr.ph53.i.i ], [ %473, %472 ]
  %456 = getelementptr inbounds i32* %2, i64 %indvars.iv140.i.i
  %457 = load i32* %456, align 4, !tbaa !15
  %458 = add i32 %457, %304
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds i8* %4, i64 %459
  %461 = load i8* %460, align 1, !tbaa !17
  %462 = icmp eq i8 %461, %426
  br i1 %462, label %.outer.i.i, label %470

.outer.i.i:                                       ; preds = %455
  %463 = trunc i64 %indvars.iv140.i.i to i32
  %464 = getelementptr inbounds i32* %2, i64 %indvars.iv142.i.i
  %465 = load i32* %464, align 4, !tbaa !15
  store i32 %465, i32* %456, align 4, !tbaa !15
  store i32 %457, i32* %464, align 4, !tbaa !15
  %466 = add nsw i32 %gtHi.1.ph62.i.i, -1
  %467 = add nsw i32 %463, -1
  %468 = icmp sgt i32 %unLo.0.lcssa.i.i, %467
  %indvars.iv.next143.i.i = add i64 %indvars.iv142.i.i, -1
  br i1 %468, label %.critedge.i.i, label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %.outer.i.i, %.lr.ph53.lr.ph.i.i
  %indvars.iv142.i.i = phi i64 [ %451, %.lr.ph53.lr.ph.i.i ], [ %indvars.iv.next143.i.i, %.outer.i.i ]
  %unHi.1.ph63.i.i = phi i32 [ %unHi.0.ph.i.i, %.lr.ph53.lr.ph.i.i ], [ %467, %.outer.i.i ]
  %gtHi.1.ph62.i.i = phi i32 [ %gtHi.0.ph.i.i, %.lr.ph53.lr.ph.i.i ], [ %466, %.outer.i.i ]
  %469 = sext i32 %unHi.1.ph63.i.i to i64
  br label %455

; <label>:470                                     ; preds = %455
  %471 = icmp ult i8 %461, %426
  br i1 %471, label %475, label %472

; <label>:472                                     ; preds = %470
  %473 = add nsw i32 %unHi.152.i.i, -1
  %474 = icmp sgt i32 %unLo.0.lcssa.i.i, %473
  %indvars.iv.next141.i.i = add i64 %indvars.iv140.i.i, -1
  br i1 %474, label %..critedge_crit_edge.i.i, label %455

; <label>:475                                     ; preds = %470
  %476 = trunc i64 %indvars.iv142.i.i to i32
  %477 = trunc i64 %indvars.iv140.i.i to i32
  %478 = sext i32 %unLo.0.lcssa.i.i to i64
  %479 = getelementptr inbounds i32* %2, i64 %478
  %480 = load i32* %479, align 4, !tbaa !15
  store i32 %457, i32* %479, align 4, !tbaa !15
  store i32 %480, i32* %456, align 4, !tbaa !15
  %481 = add nsw i32 %unLo.0.lcssa.i.i, 1
  %482 = add nsw i32 %477, -1
  br label %.outer8.i.i

..critedge_crit_edge.i.i:                         ; preds = %472
  %483 = trunc i64 %indvars.iv142.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.outer.i.i, %..critedge_crit_edge.i.i
  %gtHi.1.ph.lcssa24.i.i = phi i32 [ %483, %..critedge_crit_edge.i.i ], [ %466, %.outer.i.i ], [ %gtHi.0.ph.i.i, %.preheader.i.i ]
  %unHi.1.lcssa.i.i = phi i32 [ %473, %..critedge_crit_edge.i.i ], [ %467, %.outer.i.i ], [ %unHi.0.ph.i.i, %.preheader.i.i ]
  %484 = icmp slt i32 %gtHi.1.ph.lcssa24.i.i, %ltLo.0.ph10.lcssa.i.i
  br i1 %484, label %485, label %487

; <label>:485                                     ; preds = %.critedge.i.i
  store i32 %302, i32* %296, align 4, !tbaa !15
  store i32 %303, i32* %297, align 4, !tbaa !15
  %486 = add nsw i32 %304, 1
  store i32 %486, i32* %298, align 4, !tbaa !15
  br label %299

; <label>:487                                     ; preds = %.critedge.i.i
  %488 = sub nsw i32 %ltLo.0.ph10.lcssa.i.i, %302
  %489 = sub nsw i32 %unLo.0.lcssa.i.i, %ltLo.0.ph10.lcssa.i.i
  %490 = icmp slt i32 %488, %489
  %..i.i = select i1 %490, i32 %488, i32 %489
  %491 = icmp sgt i32 %..i.i, 0
  br i1 %491, label %.lr.ph76.i.i, label %._crit_edge.i.i

.lr.ph76.i.i:                                     ; preds = %487
  %492 = add i32 %unLo.0.lcssa.i.i, 1
  %493 = add i32 %302, -1
  %494 = sub i32 %493, %ltLo.0.ph10.lcssa.i.i
  %495 = add i32 %ltLo.0.ph10.lcssa.i.i, -1
  %496 = sub i32 %495, %unLo.0.lcssa.i.i
  %497 = icmp sgt i32 %494, %496
  %smax.i.i = select i1 %497, i32 %494, i32 %496
  %498 = add i32 %492, %smax.i.i
  %499 = sext i32 %498 to i64
  br label %500

; <label>:500                                     ; preds = %500, %.lr.ph76.i.i
  %indvars.iv146.i.i = phi i64 [ %399, %.lr.ph76.i.i ], [ %indvars.iv.next147.i.i, %500 ]
  %indvars.iv144.i.i = phi i64 [ %499, %.lr.ph76.i.i ], [ %indvars.iv.next145.i.i, %500 ]
  %yyn.075.i.i = phi i32 [ %..i.i, %.lr.ph76.i.i ], [ %505, %500 ]
  %501 = getelementptr inbounds i32* %2, i64 %indvars.iv146.i.i
  %502 = load i32* %501, align 4, !tbaa !15
  %503 = getelementptr inbounds i32* %2, i64 %indvars.iv144.i.i
  %504 = load i32* %503, align 4, !tbaa !15
  store i32 %504, i32* %501, align 4, !tbaa !15
  store i32 %502, i32* %503, align 4, !tbaa !15
  %indvars.iv.next147.i.i = add nsw i64 %indvars.iv146.i.i, 1
  %505 = add nsw i32 %yyn.075.i.i, -1
  %506 = icmp sgt i32 %yyn.075.i.i, 1
  %indvars.iv.next145.i.i = add nsw i64 %indvars.iv144.i.i, 1
  br i1 %506, label %500, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %500, %487
  %507 = sub nsw i32 %303, %gtHi.1.ph.lcssa24.i.i
  %508 = sub nsw i32 %gtHi.1.ph.lcssa24.i.i, %unHi.1.lcssa.i.i
  %509 = icmp slt i32 %507, %508
  %.1.i.i = select i1 %509, i32 %507, i32 %508
  %510 = icmp sgt i32 %.1.i.i, 0
  br i1 %510, label %.lr.ph82.i.i, label %._crit_edge83.i.i

.lr.ph82.i.i:                                     ; preds = %._crit_edge.i.i
  %511 = sub nsw i32 %303, %.1.i.i
  %512 = sext i32 %unLo.0.lcssa.i.i to i64
  br label %513

; <label>:513                                     ; preds = %513, %.lr.ph82.i.i
  %indvars.iv155.i.i = phi i64 [ %512, %.lr.ph82.i.i ], [ %indvars.iv.next156.i.i, %513 ]
  %yyp25.080.in.i.i = phi i32 [ %511, %.lr.ph82.i.i ], [ %yyp25.080.i.i, %513 ]
  %yyn6.079.i.i = phi i32 [ %.1.i.i, %.lr.ph82.i.i ], [ %519, %513 ]
  %yyp25.080.i.i = add nsw i32 %yyp25.080.in.i.i, 1
  %514 = getelementptr inbounds i32* %2, i64 %indvars.iv155.i.i
  %515 = load i32* %514, align 4, !tbaa !15
  %516 = sext i32 %yyp25.080.i.i to i64
  %517 = getelementptr inbounds i32* %2, i64 %516
  %518 = load i32* %517, align 4, !tbaa !15
  store i32 %518, i32* %514, align 4, !tbaa !15
  store i32 %515, i32* %517, align 4, !tbaa !15
  %indvars.iv.next156.i.i = add nsw i64 %indvars.iv155.i.i, 1
  %519 = add nsw i32 %yyn6.079.i.i, -1
  %520 = icmp sgt i32 %yyn6.079.i.i, 1
  br i1 %520, label %513, label %._crit_edge83.i.i

._crit_edge83.i.i:                                ; preds = %513, %._crit_edge.i.i
  %521 = sub i32 %302, %ltLo.0.ph10.lcssa.i.i
  %522 = add i32 %521, %unLo.0.lcssa.i.i
  %523 = add nsw i32 %522, -1
  %524 = sub nsw i32 %303, %508
  %525 = add nsw i32 %524, 1
  %526 = add nsw i32 %304, 1
  %527 = sub nsw i32 %523, %302
  %528 = sub nsw i32 %303, %525
  %529 = icmp slt i32 %527, %528
  %.2.i.i = select i1 %529, i32 %302, i32 %525
  %.3.i.i = select i1 %529, i32 %525, i32 %302
  %.4.i.i = select i1 %529, i32 %523, i32 %303
  %.5.i.i = select i1 %529, i32 %303, i32 %523
  %530 = sub nsw i32 %.4.i.i, %.2.i.i
  %531 = sub nsw i32 %524, %522
  %532 = icmp slt i32 %530, %531
  %..2.i.i = select i1 %532, i32 %522, i32 %.2.i.i
  %.4..i.i = select i1 %532, i32 %.4.i.i, i32 %524
  %..4.i.i = select i1 %532, i32 %524, i32 %.4.i.i
  %.6.i.i = select i1 %532, i32 %304, i32 %526
  %.7.i.i = select i1 %532, i32 %526, i32 %304
  %.2..i.i = select i1 %532, i32 %.2.i.i, i32 %522
  %533 = sub nsw i32 %.5.i.i, %.3.i.i
  %534 = sub nsw i32 %..4.i.i, %..2.i.i
  %535 = icmp slt i32 %533, %534
  %.3.nextLo.sroa.8.1.i.i = select i1 %535, i32 %.3.i.i, i32 %..2.i.i
  %nextLo.sroa.8.1..3.i.i = select i1 %535, i32 %..2.i.i, i32 %.3.i.i
  %.5.nextHi.sroa.8.1.i.i = select i1 %535, i32 %.5.i.i, i32 %..4.i.i
  %nextHi.sroa.8.1..5.i.i = select i1 %535, i32 %..4.i.i, i32 %.5.i.i
  %.nextD.sroa.6.1.i.i = select i1 %535, i32 %304, i32 %.7.i.i
  %nextD.sroa.6.1..i.i = select i1 %535, i32 %.7.i.i, i32 %304
  store i32 %nextLo.sroa.8.1..3.i.i, i32* %296, align 4, !tbaa !15
  store i32 %nextHi.sroa.8.1..5.i.i, i32* %297, align 4, !tbaa !15
  store i32 %nextD.sroa.6.1..i.i, i32* %298, align 4, !tbaa !15
  %536 = sext i32 %sp.0.ph84.i.i to i64
  %537 = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 %536
  store i32 %.3.nextLo.sroa.8.1.i.i, i32* %537, align 4, !tbaa !15
  %538 = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 %536
  store i32 %.5.nextHi.sroa.8.1.i.i, i32* %538, align 4, !tbaa !15
  %539 = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 %536
  store i32 %.nextD.sroa.6.1.i.i, i32* %539, align 4, !tbaa !15
  %540 = add nsw i32 %sp.0.ph84.i.i, 1
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 %541
  store i32 %.2..i.i, i32* %542, align 4, !tbaa !15
  %543 = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 %541
  store i32 %.4..i.i, i32* %543, align 4, !tbaa !15
  %544 = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 %541
  store i32 %.6.i.i, i32* %544, align 4, !tbaa !15
  %545 = add nsw i32 %sp.0.ph84.i.i, 2
  br label %.outer14.backedge.i.i

mainQSort3.exit.i:                                ; preds = %mainSimpleSort.exit.i.i, %.outer14.backedge.i.i, %391
  %.pr.i.i123 = phi i32 [ %394, %391 ], [ %.pr.i.i, %mainSimpleSort.exit.i.i ], [ %.pre195.pre.i, %.outer14.backedge.i.i ]
  call void @llvm.lifetime.end(i64 400, i8* %260) #3
  call void @llvm.lifetime.end(i64 400, i8* %259) #3
  call void @llvm.lifetime.end(i64 400, i8* %258) #3
  %546 = icmp slt i32 %.pr.i.i123, 0
  br i1 %546, label %mainSort.exit, label %mainQSort3.exit._crit_edge.i

mainQSort3.exit._crit_edge.i:                     ; preds = %mainQSort3.exit.i
  %547 = add i32 %numQSorted.163.i, 1
  %548 = sub i32 %547, %279
  %549 = add i32 %548, %284
  %.pre196.i = load i32* %274, align 4, !tbaa !15
  br label %550

; <label>:550                                     ; preds = %mainQSort3.exit._crit_edge.i, %278, %272
  %.pr.i.i122 = phi i32 [ %.pr.i.i120, %272 ], [ %.pr.i.i123, %mainQSort3.exit._crit_edge.i ], [ %.pr.i.i120, %278 ]
  %551 = phi i32 [ %275, %272 ], [ %.pre196.i, %mainQSort3.exit._crit_edge.i ], [ %275, %278 ]
  %numQSorted.2.i = phi i32 [ %numQSorted.163.i, %272 ], [ %549, %mainQSort3.exit._crit_edge.i ], [ %numQSorted.163.i, %278 ]
  %552 = or i32 %551, 2097152
  store i32 %552, i32* %274, align 4, !tbaa !15
  br label %553

; <label>:553                                     ; preds = %550, %269
  %.pr.i.i121 = phi i32 [ %.pr.i.i122, %550 ], [ %.pr.i.i120, %269 ]
  %numQSorted.3.i = phi i32 [ %numQSorted.2.i, %550 ], [ %numQSorted.163.i, %269 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %554 = icmp slt i64 %indvars.iv.next.i, 256
  br i1 %554, label %269, label %555

; <label>:555                                     ; preds = %553
  %556 = sext i32 %266 to i64
  %557 = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 %556
  %558 = load i8* %557, align 1, !tbaa !17
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %.preheader4.i, label %560

; <label>:560                                     ; preds = %555
  tail call void @BZ2_bz__AssertH__fail(i32 1006) #6
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %560, %555, %.preheader4.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %.preheader4.i ], [ 0, %555 ], [ 0, %560 ]
  %561 = shl i64 %indvars.iv161.i, 8
  %562 = add nsw i64 %561, %556
  %563 = getelementptr inbounds i32* %6, i64 %562
  %564 = load i32* %563, align 4, !tbaa !15
  %565 = and i32 %564, -2097153
  %566 = getelementptr inbounds [256 x i32]* %copyStart.i, i64 0, i64 %indvars.iv161.i
  store i32 %565, i32* %566, align 4, !tbaa !15
  %567 = add nsw i64 %562, 1
  %568 = getelementptr inbounds i32* %6, i64 %567
  %569 = load i32* %568, align 4, !tbaa !15
  %570 = and i32 %569, -2097153
  %571 = add i32 %570, -1
  %572 = getelementptr inbounds [256 x i32]* %copyEnd.i, i64 0, i64 %indvars.iv161.i
  store i32 %571, i32* %572, align 4, !tbaa !15
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next162.i, 256
  br i1 %exitcond.i, label %573, label %.preheader4.i

; <label>:573                                     ; preds = %.preheader4.i
  %574 = getelementptr inbounds i32* %6, i64 %268
  %575 = load i32* %574, align 4, !tbaa !15
  %576 = and i32 %575, -2097153
  %577 = getelementptr inbounds [256 x i32]* %copyStart.i, i64 0, i64 %556
  %578 = load i32* %577, align 4, !tbaa !15
  %579 = icmp slt i32 %576, %578
  br i1 %579, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %573
  %580 = sext i32 %576 to i64
  br label %581

; <label>:581                                     ; preds = %601, %.lr.ph.i
  %582 = phi i32 [ %578, %.lr.ph.i ], [ %602, %601 ]
  %indvars.iv163.i = phi i64 [ %580, %.lr.ph.i ], [ %indvars.iv.next164.i, %601 ]
  %583 = getelementptr inbounds i32* %2, i64 %indvars.iv163.i
  %584 = load i32* %583, align 4, !tbaa !15
  %585 = add i32 %584, -1
  %586 = icmp slt i32 %585, 0
  %587 = select i1 %586, i32 %8, i32 0
  %..i = add nsw i32 %587, %585
  %588 = sext i32 %..i to i64
  %589 = getelementptr inbounds i8* %4, i64 %588
  %590 = load i8* %589, align 1, !tbaa !17
  %591 = zext i8 %590 to i64
  %592 = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 %591
  %593 = load i8* %592, align 1, !tbaa !17
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %595, label %601

; <label>:595                                     ; preds = %581
  %596 = getelementptr inbounds [256 x i32]* %copyStart.i, i64 0, i64 %591
  %597 = load i32* %596, align 4, !tbaa !15
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %596, align 4, !tbaa !15
  %599 = sext i32 %597 to i64
  %600 = getelementptr inbounds i32* %2, i64 %599
  store i32 %..i, i32* %600, align 4, !tbaa !15
  %.pre197.i = load i32* %577, align 4, !tbaa !15
  br label %601

; <label>:601                                     ; preds = %595, %581
  %602 = phi i32 [ %582, %581 ], [ %.pre197.i, %595 ]
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, 1
  %603 = sext i32 %602 to i64
  %604 = icmp slt i64 %indvars.iv.next164.i, %603
  br i1 %604, label %581, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %601, %573
  %605 = phi i32 [ %578, %573 ], [ %602, %601 ]
  %606 = add i32 %267, 256
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32* %6, i64 %607
  %609 = load i32* %608, align 4, !tbaa !15
  %610 = and i32 %609, -2097153
  %j.767.i = add i32 %610, -1
  %611 = getelementptr inbounds [256 x i32]* %copyEnd.i, i64 0, i64 %556
  %612 = load i32* %611, align 4, !tbaa !15
  %613 = icmp sgt i32 %j.767.i, %612
  br i1 %613, label %.lr.ph70.i.preheader, label %._crit_edge71.i

.lr.ph70.i.preheader:                             ; preds = %._crit_edge.i
  %614 = sext i32 %j.767.i to i64
  br label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader, %.backedge.i
  %indvars.iv114 = phi i64 [ %614, %.lr.ph70.i.preheader ], [ %indvars.iv.next115, %.backedge.i ]
  %615 = phi i32 [ %612, %.lr.ph70.i.preheader ], [ %628, %.backedge.i ]
  %j.768.i = phi i32 [ %j.767.i, %.lr.ph70.i.preheader ], [ %j.7.i, %.backedge.i ]
  %616 = getelementptr inbounds i32* %2, i64 %indvars.iv114
  %617 = load i32* %616, align 4, !tbaa !15
  %618 = add i32 %617, -1
  %619 = icmp slt i32 %618, 0
  %620 = select i1 %619, i32 %8, i32 0
  %.1.i = add nsw i32 %620, %618
  %621 = sext i32 %.1.i to i64
  %622 = getelementptr inbounds i8* %4, i64 %621
  %623 = load i8* %622, align 1, !tbaa !17
  %624 = zext i8 %623 to i64
  %625 = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 %624
  %626 = load i8* %625, align 1, !tbaa !17
  %627 = icmp eq i8 %626, 0
  br i1 %627, label %630, label %.backedge.i

.backedge.i:                                      ; preds = %630, %.lr.ph70.i
  %628 = phi i32 [ %615, %.lr.ph70.i ], [ %.pre198.i, %630 ]
  %j.7.i = add nsw i32 %j.768.i, -1
  %629 = icmp sgt i32 %j.7.i, %628
  %indvars.iv.next115 = add i64 %indvars.iv114, -1
  br i1 %629, label %.lr.ph70.i, label %._crit_edge71.i

; <label>:630                                     ; preds = %.lr.ph70.i
  %631 = getelementptr inbounds [256 x i32]* %copyEnd.i, i64 0, i64 %624
  %632 = load i32* %631, align 4, !tbaa !15
  %633 = add nsw i32 %632, -1
  store i32 %633, i32* %631, align 4, !tbaa !15
  %634 = sext i32 %632 to i64
  %635 = getelementptr inbounds i32* %2, i64 %634
  store i32 %.1.i, i32* %635, align 4, !tbaa !15
  %.pre198.i = load i32* %611, align 4, !tbaa !15
  br label %.backedge.i

._crit_edge71.i:                                  ; preds = %.backedge.i, %._crit_edge.i
  %.lcssa60.i = phi i32 [ %612, %._crit_edge.i ], [ %628, %.backedge.i ]
  %636 = add nsw i32 %605, -1
  %637 = icmp eq i32 %636, %.lcssa60.i
  br i1 %637, label %.preheader.i, label %638

; <label>:638                                     ; preds = %._crit_edge71.i
  %639 = icmp eq i32 %605, 0
  %640 = icmp eq i32 %.lcssa60.i, %44
  %or.cond.i = and i1 %639, %640
  br i1 %or.cond.i, label %.preheader.i, label %641

; <label>:641                                     ; preds = %638
  tail call void @BZ2_bz__AssertH__fail(i32 1007) #6
  br label %.preheader.i

.preheader.i:                                     ; preds = %641, %638, %._crit_edge71.i, %.preheader.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %.preheader.i ], [ 0, %._crit_edge71.i ], [ 0, %638 ], [ 0, %641 ]
  %642 = shl i64 %indvars.iv165.i, 8
  %643 = add nsw i64 %642, %556
  %644 = getelementptr inbounds i32* %6, i64 %643
  %645 = load i32* %644, align 4, !tbaa !15
  %646 = or i32 %645, 2097152
  store i32 %646, i32* %644, align 4, !tbaa !15
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1
  %exitcond167.i = icmp eq i64 %indvars.iv.next166.i, 256
  br i1 %exitcond167.i, label %647, label %.preheader.i

; <label>:647                                     ; preds = %.preheader.i
  store i8 1, i8* %557, align 1, !tbaa !17
  %648 = icmp slt i64 %indvars.iv170.i, 255
  br i1 %648, label %649, label %683

; <label>:649                                     ; preds = %647
  %650 = load i32* %574, align 4, !tbaa !15
  %651 = and i32 %650, -2097153
  %652 = load i32* %608, align 4, !tbaa !15
  %653 = and i32 %652, -2097153
  %654 = sub i32 %653, %651
  br label %655

; <label>:655                                     ; preds = %655, %649
  %shifts.0.i = phi i32 [ 0, %649 ], [ %658, %655 ]
  %656 = ashr i32 %654, %shifts.0.i
  %657 = icmp sgt i32 %656, 65534
  %658 = add nuw nsw i32 %shifts.0.i, 1
  br i1 %657, label %655, label %659

; <label>:659                                     ; preds = %655
  %660 = add nsw i32 %654, -1
  %661 = icmp sgt i32 %654, 0
  br i1 %661, label %.lr.ph76.i, label %._crit_edge77.i

.lr.ph76.i:                                       ; preds = %659
  %662 = sext i32 %654 to i64
  %663 = sext i32 %651 to i64
  br label %664

; <label>:664                                     ; preds = %678, %.lr.ph76.i
  %indvars.iv168.in.i = phi i64 [ %662, %.lr.ph76.i ], [ %indvars.iv168.i, %678 ]
  %indvars.iv168.i = add nsw i64 %indvars.iv168.in.i, -1
  %665 = add nsw i64 %indvars.iv168.i, %663
  %666 = getelementptr inbounds i32* %2, i64 %665
  %667 = load i32* %666, align 4, !tbaa !15
  %668 = trunc i64 %indvars.iv168.i to i32
  %669 = ashr i32 %668, %shifts.0.i
  %670 = trunc i32 %669 to i16
  %671 = sext i32 %667 to i64
  %672 = getelementptr inbounds i16* %26, i64 %671
  store i16 %670, i16* %672, align 2, !tbaa !18
  %673 = icmp slt i32 %667, 34
  br i1 %673, label %674, label %678

; <label>:674                                     ; preds = %664
  %675 = add nsw i32 %667, %8
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i16* %26, i64 %676
  store i16 %670, i16* %677, align 2, !tbaa !18
  br label %678

; <label>:678                                     ; preds = %674, %664
  %679 = icmp sgt i64 %indvars.iv168.in.i, 1
  br i1 %679, label %664, label %._crit_edge77.i

._crit_edge77.i:                                  ; preds = %678, %659
  %680 = ashr i32 %660, %shifts.0.i
  %681 = icmp slt i32 %680, 65536
  br i1 %681, label %683, label %682

; <label>:682                                     ; preds = %._crit_edge77.i
  tail call void @BZ2_bz__AssertH__fail(i32 1002) #6
  br label %683

; <label>:683                                     ; preds = %682, %._crit_edge77.i, %647
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1
  %684 = icmp slt i64 %indvars.iv.next171.i, 256
  br i1 %684, label %264, label %685

; <label>:685                                     ; preds = %683
  br i1 %34, label %686, label %mainSort.exit

; <label>:686                                     ; preds = %685
  %687 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %688 = sub nsw i32 %8, %numQSorted.3.i
  %689 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %687, i8* getelementptr inbounds ([44 x i8]* @.str8, i64 0, i64 0), i32 %8, i32 %numQSorted.3.i, i32 %688) #6
  br label %mainSort.exit

mainSort.exit:                                    ; preds = %mainQSort3.exit.i, %685, %686
  %690 = phi i32 [ %.pr.i.i121, %685 ], [ %.pr.i.i121, %686 ], [ %.pr.i.i123, %mainQSort3.exit.i ]
  call void @llvm.lifetime.end(i64 1024, i8* %33) #3
  call void @llvm.lifetime.end(i64 1024, i8* %32) #3
  call void @llvm.lifetime.end(i64 256, i8* %bigDone177.i) #3
  call void @llvm.lifetime.end(i64 1024, i8* %31) #3
  %691 = icmp sgt i32 %10, 2
  br i1 %691, label %692, label %702

; <label>:692                                     ; preds = %mainSort.exit
  %693 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %694 = sub nsw i32 %30, %690
  %695 = sitofp i32 %694 to float
  %696 = icmp eq i32 %8, 0
  %697 = sitofp i32 %8 to float
  %698 = select i1 %696, float 1.000000e+00, float %697
  %699 = fdiv float %695, %698
  %700 = fpext float %699 to double
  %701 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %693, i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %694, i32 %8, double %700) #6
  br label %702

; <label>:702                                     ; preds = %692, %mainSort.exit
  %703 = icmp slt i32 %690, 0
  br i1 %703, label %704, label %714

; <label>:704                                     ; preds = %702
  %705 = icmp sgt i32 %10, 1
  br i1 %705, label %706, label %709

; <label>:706                                     ; preds = %704
  %707 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %708 = tail call i64 @fwrite(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i64 53, i64 1, %struct.__sFILE* %707)
  br label %709

; <label>:709                                     ; preds = %706, %704
  %710 = getelementptr inbounds %struct.EState* %s, i64 0, i32 4
  %711 = load i32** %710, align 8, !tbaa !13
  %712 = getelementptr inbounds %struct.EState* %s, i64 0, i32 5
  %713 = load i32** %712, align 8, !tbaa !14
  tail call fastcc void @fallbackSort(i32* %711, i32* %713, i32* %6, i32 %8, i32 %10) #5
  br label %714

; <label>:714                                     ; preds = %702, %709, %14
  %715 = getelementptr inbounds %struct.EState* %s, i64 0, i32 7
  store i32 -1, i32* %715, align 4, !tbaa !23
  %716 = load i32* %7, align 4, !tbaa !10
  %717 = icmp sgt i32 %716, 0
  br i1 %717, label %.lr.ph, label %thread-pre-split.thread

.lr.ph:                                           ; preds = %714, %721
  %indvars.iv = phi i64 [ %indvars.iv.next, %721 ], [ 0, %714 ]
  %718 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %719 = load i32* %718, align 4, !tbaa !15
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %thread-pre-split, label %721

; <label>:721                                     ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %722 = sext i32 %716 to i64
  %723 = icmp slt i64 %indvars.iv.next, %722
  br i1 %723, label %.lr.ph, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.lr.ph
  %724 = trunc i64 %indvars.iv to i32
  store i32 %724, i32* %715, align 4, !tbaa !23
  %phitmp = icmp eq i32 %724, -1
  br i1 %phitmp, label %thread-pre-split.thread, label %725

thread-pre-split.thread:                          ; preds = %721, %714, %thread-pre-split
  tail call void @BZ2_bz__AssertH__fail(i32 1003) #6
  br label %725

; <label>:725                                     ; preds = %thread-pre-split, %thread-pre-split.thread
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @fallbackSort(i32* %fmap, i32* nocapture %eclass, i32* nocapture %bhtab, i32 %nblock, i32 %verb) #0 {
  %bhtab185 = bitcast i32* %bhtab to i8*
  %stackLo.i = alloca [100 x i32], align 16
  %stackHi.i = alloca [100 x i32], align 16
  %ftab = alloca [257 x i32], align 16
  %1 = bitcast [257 x i32]* %ftab to i8*
  %ftabCopy = alloca [256 x i32], align 16
  %2 = bitcast [256 x i32]* %ftabCopy to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %1) #3
  call void @llvm.lifetime.start(i64 1024, i8* %2) #3
  %3 = bitcast i32* %eclass to i8*
  %4 = icmp sgt i32 %verb, 3
  br i1 %4, label %5, label %.preheader22

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %6)
  br label %.preheader22

.preheader22:                                     ; preds = %5, %0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 1028, i32 16, i1 false)
  %8 = icmp sgt i32 %nblock, 0
  br i1 %8, label %.lr.ph104, label %.preheader20

.lr.ph104:                                        ; preds = %.preheader22
  %9 = add i32 %nblock, -1
  br label %10

..preheader20_crit_edge:                          ; preds = %10
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 0
  %.pre.pre = load i32* %.phi.trans.insert.phi.trans.insert, align 16, !tbaa !15
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader22, %..preheader20_crit_edge
  %.pre = phi i32 [ %.pre.pre, %..preheader20_crit_edge ], [ 0, %.preheader22 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 1024, i32 16, i1 false)
  br label %18

; <label>:10                                      ; preds = %10, %.lr.ph104
  %indvars.iv196 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next197, %10 ]
  %11 = getelementptr inbounds i8* %3, i64 %indvars.iv196
  %12 = load i8* %11, align 1, !tbaa !17
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %13
  %15 = load i32* %14, align 4, !tbaa !15
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4, !tbaa !15
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %lftr.wideiv198 = trunc i64 %indvars.iv196 to i32
  %exitcond199 = icmp eq i32 %lftr.wideiv198, %9
  br i1 %exitcond199, label %..preheader20_crit_edge, label %10

.preheader18:                                     ; preds = %18
  br i1 %8, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader18
  %17 = add i32 %nblock, -1
  br label %23

; <label>:18                                      ; preds = %18, %.preheader20
  %19 = phi i32 [ %.pre, %.preheader20 ], [ %22, %18 ]
  %indvars.iv190 = phi i64 [ 1, %.preheader20 ], [ %indvars.iv.next191, %18 ]
  %20 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %indvars.iv190
  %21 = load i32* %20, align 4, !tbaa !15
  %22 = add nsw i32 %21, %19
  store i32 %22, i32* %20, align 4, !tbaa !15
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1
  %exitcond192 = icmp eq i64 %indvars.iv.next191, 257
  br i1 %exitcond192, label %.preheader18, label %18

; <label>:23                                      ; preds = %23, %.lr.ph99
  %indvars.iv186 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next187, %23 ]
  %24 = getelementptr inbounds i8* %3, i64 %indvars.iv186
  %25 = load i8* %24, align 1, !tbaa !17
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %26
  %28 = load i32* %27, align 4, !tbaa !15
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4, !tbaa !15
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32* %fmap, i64 %30
  %32 = trunc i64 %indvars.iv186 to i32
  store i32 %32, i32* %31, align 4, !tbaa !15
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %exitcond189 = icmp eq i32 %32, %17
  br i1 %exitcond189, label %._crit_edge100, label %23

._crit_edge100:                                   ; preds = %23, %.preheader18
  %33 = icmp sgt i32 %nblock, -64
  br i1 %33, label %.lr.ph97, label %.preheader17

.lr.ph97:                                         ; preds = %._crit_edge100
  %34 = sdiv i32 %nblock, 32
  %35 = add nsw i32 %34, 1
  %36 = icmp sgt i32 %nblock, -32
  %37 = zext i32 %35 to i64
  %.op = shl nuw nsw i64 %37, 2
  %.op.op = add nuw nsw i64 %.op, 4
  %38 = select i1 %36, i64 %.op.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %bhtab185, i8 0, i64 %38, i32 4, i1 false)
  br label %.preheader17

.preheader17:                                     ; preds = %._crit_edge100, %.lr.ph97, %.preheader17
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %.preheader17 ], [ 0, %.lr.ph97 ], [ 0, %._crit_edge100 ]
  %39 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %indvars.iv180
  %40 = load i32* %39, align 4, !tbaa !15
  %41 = and i32 %40, 31
  %42 = shl i32 1, %41
  %43 = ashr i32 %40, 5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32* %bhtab, i64 %44
  %46 = load i32* %45, align 4, !tbaa !15
  %47 = or i32 %42, %46
  store i32 %47, i32* %45, align 4, !tbaa !15
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond182 = icmp eq i64 %indvars.iv.next181, 256
  br i1 %exitcond182, label %.preheader16, label %.preheader17

.preheader15:                                     ; preds = %.preheader16
  %48 = bitcast [100 x i32]* %stackLo.i to i8*
  %49 = bitcast [100 x i32]* %stackHi.i to i8*
  %50 = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 0
  %51 = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 0
  %52 = add i32 %nblock, -1
  br label %72

.preheader16:                                     ; preds = %.preheader17, %.preheader16
  %i.793 = phi i32 [ %71, %.preheader16 ], [ 0, %.preheader17 ]
  %53 = shl nsw i32 %i.793, 1
  %54 = add nsw i32 %53, %nblock
  %55 = and i32 %54, 31
  %56 = shl i32 1, %55
  %57 = ashr i32 %54, 5
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32* %bhtab, i64 %58
  %60 = load i32* %59, align 4, !tbaa !15
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4, !tbaa !15
  %62 = add nsw i32 %54, 1
  %63 = and i32 %62, 31
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = ashr i32 %62, 5
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32* %bhtab, i64 %67
  %69 = load i32* %68, align 4, !tbaa !15
  %70 = and i32 %69, %65
  store i32 %70, i32* %68, align 4, !tbaa !15
  %71 = add nuw nsw i32 %i.793, 1
  %exitcond179 = icmp eq i32 %71, 32
  br i1 %exitcond179, label %.preheader15, label %.preheader16

; <label>:72                                      ; preds = %.preheader15, %391
  %H.0 = phi i32 [ %392, %391 ], [ 1, %.preheader15 ]
  br i1 %4, label %73, label %.preheader14

; <label>:73                                      ; preds = %72
  %74 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %75 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %74, i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), i32 %H.0) #6
  br label %.preheader14

.preheader14:                                     ; preds = %73, %72
  br i1 %8, label %.lr.ph, label %.outer

.lr.ph:                                           ; preds = %.preheader14, %.lr.ph
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.lr.ph ], [ 0, %.preheader14 ]
  %j.083 = phi i32 [ %j.0.i.8, %.lr.ph ], [ 0, %.preheader14 ]
  %76 = trunc i64 %indvars.iv164 to i32
  %77 = ashr i32 %76, 5
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32* %bhtab, i64 %78
  %80 = load i32* %79, align 4, !tbaa !15
  %81 = and i32 %76, 31
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp eq i32 %83, 0
  %j.0.i.8 = select i1 %84, i32 %j.083, i32 %76
  %85 = getelementptr inbounds i32* %fmap, i64 %indvars.iv164
  %86 = load i32* %85, align 4, !tbaa !15
  %87 = sub i32 %86, %H.0
  %88 = icmp slt i32 %87, 0
  %89 = select i1 %88, i32 %nblock, i32 0
  %k.0 = add nsw i32 %89, %87
  %90 = sext i32 %k.0 to i64
  %91 = getelementptr inbounds i32* %eclass, i64 %90
  store i32 %j.0.i.8, i32* %91, align 4, !tbaa !15
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond167 = icmp eq i32 %76, %52
  br i1 %exitcond167, label %.outer, label %.lr.ph

.outer:                                           ; preds = %fallbackQSort3.exit, %385, %.preheader14, %.lr.ph
  %r.0.ph = phi i32 [ -1, %.lr.ph ], [ -1, %.preheader14 ], [ %145, %385 ], [ %145, %fallbackQSort3.exit ]
  %nNotDone.0.ph = phi i32 [ 0, %.lr.ph ], [ 0, %.preheader14 ], [ %152, %385 ], [ %152, %fallbackQSort3.exit ]
  br label %.backedge

.backedge:                                        ; preds = %147, %.backedge, %.outer
  %k.1.in = phi i32 [ %r.0.ph, %.outer ], [ %k.1, %.backedge ], [ %145, %147 ]
  %k.1 = add nsw i32 %k.1.in, 1
  %92 = ashr i32 %k.1, 5
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32* %bhtab, i64 %93
  %95 = load i32* %94, align 4, !tbaa !15
  %96 = and i32 %k.1, 31
  %97 = shl i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  %100 = icmp ne i32 %96, 0
  %not. = xor i1 %99, true
  %. = and i1 %100, %not.
  br i1 %., label %.backedge, label %101

; <label>:101                                     ; preds = %.backedge
  br i1 %99, label %.loopexit11, label %.preheader12

.preheader12:                                     ; preds = %101, %.preheader12
  %k.2 = phi i32 [ %107, %.preheader12 ], [ %k.1, %101 ]
  %102 = ashr i32 %k.2, 5
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32* %bhtab, i64 %103
  %105 = load i32* %104, align 4, !tbaa !15
  %106 = icmp eq i32 %105, -1
  %107 = add nsw i32 %k.2, 32
  br i1 %106, label %.preheader12, label %.preheader10

.preheader10:                                     ; preds = %.preheader12, %.preheader10
  %k.3 = phi i32 [ %116, %.preheader10 ], [ %k.2, %.preheader12 ]
  %108 = ashr i32 %k.3, 5
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32* %bhtab, i64 %109
  %111 = load i32* %110, align 4, !tbaa !15
  %112 = and i32 %k.3, 31
  %113 = shl i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  %116 = add nsw i32 %k.3, 1
  br i1 %115, label %.loopexit11, label %.preheader10

.loopexit11:                                      ; preds = %.preheader10, %101
  %k.4 = phi i32 [ %k.1, %101 ], [ %k.3, %.preheader10 ]
  %117 = add nsw i32 %k.4, -1
  %118 = icmp sgt i32 %k.4, %nblock
  br i1 %118, label %387, label %.preheader9

.preheader9:                                      ; preds = %.loopexit11, %.preheader9
  %k.5 = phi i32 [ %128, %.preheader9 ], [ %k.4, %.loopexit11 ]
  %119 = ashr i32 %k.5, 5
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32* %bhtab, i64 %120
  %122 = load i32* %121, align 4, !tbaa !15
  %123 = and i32 %k.5, 31
  %124 = shl i32 1, %123
  %125 = and i32 %124, %122
  %126 = icmp eq i32 %125, 0
  %127 = icmp ne i32 %123, 0
  %.2 = and i1 %127, %126
  %128 = add nsw i32 %k.5, 1
  br i1 %.2, label %.preheader9, label %129

; <label>:129                                     ; preds = %.preheader9
  br i1 %126, label %.preheader8, label %.loopexit7

.preheader8:                                      ; preds = %129, %.preheader8
  %k.6 = phi i32 [ %135, %.preheader8 ], [ %k.5, %129 ]
  %130 = ashr i32 %k.6, 5
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32* %bhtab, i64 %131
  %133 = load i32* %132, align 4, !tbaa !15
  %134 = icmp eq i32 %133, 0
  %135 = add nsw i32 %k.6, 32
  br i1 %134, label %.preheader8, label %.preheader6

.preheader6:                                      ; preds = %.preheader8, %.preheader6
  %k.7 = phi i32 [ %144, %.preheader6 ], [ %k.6, %.preheader8 ]
  %136 = ashr i32 %k.7, 5
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32* %bhtab, i64 %137
  %139 = load i32* %138, align 4, !tbaa !15
  %140 = and i32 %k.7, 31
  %141 = shl i32 1, %140
  %142 = and i32 %141, %139
  %143 = icmp eq i32 %142, 0
  %144 = add nsw i32 %k.7, 1
  br i1 %143, label %.preheader6, label %.loopexit7

.loopexit7:                                       ; preds = %.preheader6, %129
  %k.8 = phi i32 [ %k.5, %129 ], [ %k.7, %.preheader6 ]
  %145 = add nsw i32 %k.8, -1
  %146 = icmp sgt i32 %k.8, %nblock
  br i1 %146, label %387, label %147

; <label>:147                                     ; preds = %.loopexit7
  %148 = icmp sgt i32 %145, %117
  br i1 %148, label %149, label %.backedge

; <label>:149                                     ; preds = %147
  %.neg = sub i32 1, %k.4
  %150 = add i32 %nNotDone.0.ph, 1
  %151 = add i32 %150, %.neg
  %152 = add i32 %151, %145
  call void @llvm.lifetime.start(i64 400, i8* %48) #3
  call void @llvm.lifetime.start(i64 400, i8* %49) #3
  store i32 %117, i32* %50, align 16, !tbaa !15
  store i32 %145, i32* %51, align 16, !tbaa !15
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %fallbackSimpleSort.exit.outer.backedge.i, %149
  %r.0.ph76.i = phi i32 [ 0, %149 ], [ %233, %fallbackSimpleSort.exit.outer.backedge.i ]
  %sp.0.ph75.i = phi i32 [ 1, %149 ], [ %sp.0.ph.be.i, %fallbackSimpleSort.exit.outer.backedge.i ]
  %153 = sext i32 %sp.0.ph75.i to i64
  br label %154

; <label>:154                                     ; preds = %fallbackSimpleSort.exit.backedge.i, %.lr.ph.i
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %fallbackSimpleSort.exit.backedge.i ], [ %153, %.lr.ph.i ]
  %sp.031.i = phi i32 [ %158, %fallbackSimpleSort.exit.backedge.i ], [ %sp.0.ph75.i, %.lr.ph.i ]
  %155 = icmp slt i64 %indvars.iv168, 100
  br i1 %155, label %157, label %156

; <label>:156                                     ; preds = %154
  tail call void @BZ2_bz__AssertH__fail(i32 1004) #6
  br label %157

; <label>:157                                     ; preds = %156, %154
  %158 = add nsw i32 %sp.031.i, -1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 %159
  %161 = load i32* %160, align 4, !tbaa !15
  %162 = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 %159
  %163 = load i32* %162, align 4, !tbaa !15
  %164 = sub nsw i32 %163, %161
  %165 = icmp slt i32 %164, 10
  br i1 %165, label %166, label %229

; <label>:166                                     ; preds = %157
  %167 = icmp eq i32 %163, %161
  br i1 %167, label %fallbackSimpleSort.exit.backedge.i, label %169

fallbackSimpleSort.exit.backedge.i:               ; preds = %.critedge1.i.i, %.preheader.i.i, %166
  %168 = icmp sgt i64 %indvars.iv168, 1
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, -1
  br i1 %168, label %154, label %fallbackQSort3.exit

; <label>:169                                     ; preds = %166
  %170 = icmp sgt i32 %164, 3
  br i1 %170, label %174, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %174, %169
  %171 = icmp sgt i32 %163, %161
  br i1 %171, label %.lr.ph8.i.i, label %fallbackSimpleSort.exit.backedge.i

.lr.ph8.i.i:                                      ; preds = %.preheader.i.i
  %172 = sext i32 %163 to i64
  %173 = sext i32 %161 to i64
  br label %206

; <label>:174                                     ; preds = %169
  %175 = add i32 %163, -4
  %176 = icmp slt i32 %175, %161
  br i1 %176, label %.preheader.i.i, label %.lr.ph17.i.i

.lr.ph17.i.i:                                     ; preds = %174
  %177 = sext i32 %175 to i64
  %178 = sext i32 %163 to i64
  %179 = sext i32 %161 to i64
  br label %180

; <label>:180                                     ; preds = %.critedge.i.i, %.lr.ph17.i.i
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i, %.critedge.i.i ], [ %177, %.lr.ph17.i.i ]
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ %163, %.lr.ph17.i.i ]
  %181 = getelementptr inbounds i32* %fmap, i64 %indvars.iv28.i.i
  %182 = load i32* %181, align 4, !tbaa !15
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32* %eclass, i64 %183
  %185 = load i32* %184, align 4, !tbaa !15
  %186 = add nsw i64 %indvars.iv28.i.i, 4
  %187 = icmp sgt i64 %186, %178
  %188 = trunc i64 %indvars.iv28.i.i to i32
  br i1 %187, label %.critedge.i.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %180
  %189 = sext i32 %indvars.iv.i.i to i64
  %190 = trunc i64 %186 to i32
  br label %191

; <label>:191                                     ; preds = %198, %.lr.ph12.i.i
  %indvars.iv25.i.i = phi i64 [ %189, %.lr.ph12.i.i ], [ %indvars.iv.next26.i.i, %198 ]
  %j.011.i.i = phi i32 [ %190, %.lr.ph12.i.i ], [ %j.0.i.i, %198 ]
  %j.0.in10.i.i = phi i32 [ %188, %.lr.ph12.i.i ], [ %202, %198 ]
  %192 = getelementptr inbounds i32* %fmap, i64 %indvars.iv25.i.i
  %193 = load i32* %192, align 4, !tbaa !15
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32* %eclass, i64 %194
  %196 = load i32* %195, align 4, !tbaa !15
  %197 = icmp ugt i32 %185, %196
  br i1 %197, label %198, label %.critedge.i.i

; <label>:198                                     ; preds = %191
  %199 = sext i32 %j.0.in10.i.i to i64
  %200 = getelementptr inbounds i32* %fmap, i64 %199
  store i32 %193, i32* %200, align 4, !tbaa !15
  %j.0.i.i = add nsw i32 %j.011.i.i, 4
  %201 = icmp sgt i32 %j.0.i.i, %163
  %indvars.iv.next26.i.i = add i64 %indvars.iv25.i.i, 4
  %202 = trunc i64 %indvars.iv25.i.i to i32
  br i1 %201, label %.critedge.i.i, label %191

.critedge.i.i:                                    ; preds = %198, %191, %180
  %j.0.in.lcssa.i.i = phi i32 [ %188, %180 ], [ %j.0.in10.i.i, %191 ], [ %202, %198 ]
  %203 = sext i32 %j.0.in.lcssa.i.i to i64
  %204 = getelementptr inbounds i32* %fmap, i64 %203
  store i32 %182, i32* %204, align 4, !tbaa !15
  %205 = icmp sgt i64 %indvars.iv28.i.i, %179
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, -1
  %indvars.iv.next29.i.i = add nsw i64 %indvars.iv28.i.i, -1
  br i1 %205, label %180, label %.preheader.i.i

; <label>:206                                     ; preds = %.critedge1.i.i, %.lr.ph8.i.i
  %indvars.iv23.i.i = phi i64 [ %172, %.lr.ph8.i.i ], [ %indvars.iv.next24.i.i, %.critedge1.i.i ]
  %i.17.in.i.i = phi i32 [ %163, %.lr.ph8.i.i ], [ %i.17.i.i, %.critedge1.i.i ]
  %indvars.iv.next24.i.i = add nsw i64 %indvars.iv23.i.i, -1
  %i.17.i.i = add nsw i32 %i.17.in.i.i, -1
  %207 = getelementptr inbounds i32* %fmap, i64 %indvars.iv.next24.i.i
  %208 = load i32* %207, align 4, !tbaa !15
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32* %eclass, i64 %209
  %211 = load i32* %210, align 4, !tbaa !15
  %212 = icmp sgt i32 %i.17.in.i.i, %163
  br i1 %212, label %.critedge1.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %206, %219
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %219 ], [ %indvars.iv23.i.i, %206 ]
  %j.12.i.i = phi i32 [ %222, %219 ], [ %i.17.in.i.i, %206 ]
  %213 = getelementptr inbounds i32* %fmap, i64 %indvars.iv21.i.i
  %214 = load i32* %213, align 4, !tbaa !15
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32* %eclass, i64 %215
  %217 = load i32* %216, align 4, !tbaa !15
  %218 = icmp ugt i32 %211, %217
  br i1 %218, label %219, label %..critedge1_crit_edge3.i.i

; <label>:219                                     ; preds = %.lr.ph.i.i
  %220 = add nsw i64 %indvars.iv21.i.i, -1
  %221 = getelementptr inbounds i32* %fmap, i64 %220
  store i32 %214, i32* %221, align 4, !tbaa !15
  %222 = add nsw i32 %j.12.i.i, 1
  %223 = icmp slt i64 %indvars.iv21.i.i, %172
  %indvars.iv.next22.i.i = add nsw i64 %indvars.iv21.i.i, 1
  br i1 %223, label %.lr.ph.i.i, label %.critedge1.i.i

..critedge1_crit_edge3.i.i:                       ; preds = %.lr.ph.i.i
  %224 = trunc i64 %indvars.iv21.i.i to i32
  br label %.critedge1.i.i

.critedge1.i.i:                                   ; preds = %219, %..critedge1_crit_edge3.i.i, %206
  %j.1.lcssa.i.i = phi i32 [ %224, %..critedge1_crit_edge3.i.i ], [ %i.17.in.i.i, %206 ], [ %222, %219 ]
  %225 = add nsw i32 %j.1.lcssa.i.i, -1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32* %fmap, i64 %226
  store i32 %208, i32* %227, align 4, !tbaa !15
  %228 = icmp sgt i64 %indvars.iv.next24.i.i, %173
  br i1 %228, label %206, label %fallbackSimpleSort.exit.backedge.i

; <label>:229                                     ; preds = %157
  %230 = trunc i64 %indvars.iv168 to i32
  %231 = mul nuw nsw i32 %r.0.ph76.i, 7621
  %232 = add nuw nsw i32 %231, 1
  %233 = and i32 %232, 32767
  %234 = urem i32 %233, 3
  switch i32 %234, label %249 [
    i32 0, label %235
    i32 1, label %241
  ]

; <label>:235                                     ; preds = %229
  %236 = sext i32 %161 to i64
  %237 = getelementptr inbounds i32* %fmap, i64 %236
  %238 = load i32* %237, align 4, !tbaa !15
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32* %eclass, i64 %239
  br label %255

; <label>:241                                     ; preds = %229
  %242 = add nsw i32 %163, %161
  %243 = ashr i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32* %fmap, i64 %244
  %246 = load i32* %245, align 4, !tbaa !15
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32* %eclass, i64 %247
  br label %255

; <label>:249                                     ; preds = %229
  %250 = sext i32 %163 to i64
  %251 = getelementptr inbounds i32* %fmap, i64 %250
  %252 = load i32* %251, align 4, !tbaa !15
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i32* %eclass, i64 %253
  br label %255

; <label>:255                                     ; preds = %249, %241, %235
  %med.0.in.i = phi i32* [ %240, %235 ], [ %248, %241 ], [ %254, %249 ]
  %med.0.i = load i32* %med.0.in.i, align 4
  br label %.outer9.i

.outer9.i:                                        ; preds = %302, %255
  %gtHi.0.ph.i = phi i32 [ %303, %302 ], [ %163, %255 ]
  %ltLo.0.ph.i = phi i32 [ %ltLo.0.ph11.lcssa.i, %302 ], [ %161, %255 ]
  %unHi.0.ph.i = phi i32 [ %309, %302 ], [ %163, %255 ]
  %unLo.0.ph.i = phi i32 [ %308, %302 ], [ %161, %255 ]
  %256 = icmp sgt i32 %unLo.0.ph.i, %unHi.0.ph.i
  br i1 %256, label %.preheader.i, label %.lr.ph33.lr.ph.i

.lr.ph33.lr.ph.i:                                 ; preds = %.outer9.i
  %257 = sext i32 %unHi.0.ph.i to i64
  %258 = sext i32 %ltLo.0.ph.i to i64
  br label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.outer10.i, %.lr.ph33.lr.ph.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %.outer10.i ], [ %258, %.lr.ph33.lr.ph.i ]
  %unLo.0.ph1341.i = phi i32 [ %271, %.outer10.i ], [ %unLo.0.ph.i, %.lr.ph33.lr.ph.i ]
  %ltLo.0.ph1140.i = phi i32 [ %270, %.outer10.i ], [ %ltLo.0.ph.i, %.lr.ph33.lr.ph.i ]
  %259 = sext i32 %unLo.0.ph1341.i to i64
  br label %260

; <label>:260                                     ; preds = %280, %.lr.ph33.i
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %280 ], [ %259, %.lr.ph33.i ]
  %unLo.032.i = phi i32 [ %281, %280 ], [ %unLo.0.ph1341.i, %.lr.ph33.i ]
  %261 = getelementptr inbounds i32* %fmap, i64 %indvars.iv127.i
  %262 = load i32* %261, align 4, !tbaa !15
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32* %eclass, i64 %263
  %265 = load i32* %264, align 4, !tbaa !15
  %266 = icmp eq i32 %265, %med.0.i
  br i1 %266, label %.outer10.i, label %273

.outer10.i:                                       ; preds = %260
  %267 = trunc i64 %indvars.iv127.i to i32
  %268 = getelementptr inbounds i32* %fmap, i64 %indvars.iv129.i
  %269 = load i32* %268, align 4, !tbaa !15
  store i32 %269, i32* %261, align 4, !tbaa !15
  store i32 %262, i32* %268, align 4, !tbaa !15
  %270 = add nsw i32 %ltLo.0.ph1140.i, 1
  %271 = add nsw i32 %267, 1
  %272 = icmp slt i32 %267, %unHi.0.ph.i
  %indvars.iv.next130.i = add i64 %indvars.iv129.i, 1
  br i1 %272, label %.lr.ph33.i, label %.preheader.i

; <label>:273                                     ; preds = %260
  %274 = icmp sgt i32 %265, %med.0.i
  br i1 %274, label %..preheader_crit_edge37.i, label %280

..preheader_crit_edge.i:                          ; preds = %280
  %275 = trunc i64 %indvars.iv129.i to i32
  br label %.preheader.i

..preheader_crit_edge37.i:                        ; preds = %273
  %276 = trunc i64 %indvars.iv129.i to i32
  %277 = trunc i64 %indvars.iv127.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.outer10.i, %..preheader_crit_edge37.i, %..preheader_crit_edge.i, %.outer9.i
  %ltLo.0.ph11.lcssa.i = phi i32 [ %275, %..preheader_crit_edge.i ], [ %276, %..preheader_crit_edge37.i ], [ %ltLo.0.ph.i, %.outer9.i ], [ %270, %.outer10.i ]
  %unLo.0.lcssa.i = phi i32 [ %281, %..preheader_crit_edge.i ], [ %277, %..preheader_crit_edge37.i ], [ %unLo.0.ph.i, %.outer9.i ], [ %271, %.outer10.i ]
  %278 = icmp sgt i32 %unLo.0.lcssa.i, %unHi.0.ph.i
  br i1 %278, label %.critedge.i, label %.lr.ph45.lr.ph.i

.lr.ph45.lr.ph.i:                                 ; preds = %.preheader.i
  %279 = sext i32 %gtHi.0.ph.i to i64
  br label %.lr.ph45.i

; <label>:280                                     ; preds = %273
  %281 = add nsw i32 %unLo.032.i, 1
  %282 = icmp slt i64 %indvars.iv127.i, %257
  %indvars.iv.next128.i = add nsw i64 %indvars.iv127.i, 1
  br i1 %282, label %260, label %..preheader_crit_edge.i

; <label>:283                                     ; preds = %299, %.lr.ph45.i
  %indvars.iv131.i = phi i64 [ %296, %.lr.ph45.i ], [ %indvars.iv.next132.i, %299 ]
  %unHi.144.i = phi i32 [ %unHi.1.ph55.i, %.lr.ph45.i ], [ %300, %299 ]
  %284 = getelementptr inbounds i32* %fmap, i64 %indvars.iv131.i
  %285 = load i32* %284, align 4, !tbaa !15
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32* %eclass, i64 %286
  %288 = load i32* %287, align 4, !tbaa !15
  %289 = icmp eq i32 %288, %med.0.i
  br i1 %289, label %.outer.i, label %297

.outer.i:                                         ; preds = %283
  %290 = trunc i64 %indvars.iv131.i to i32
  %291 = getelementptr inbounds i32* %fmap, i64 %indvars.iv133.i
  %292 = load i32* %291, align 4, !tbaa !15
  store i32 %292, i32* %284, align 4, !tbaa !15
  store i32 %285, i32* %291, align 4, !tbaa !15
  %293 = add nsw i32 %gtHi.1.ph54.i, -1
  %294 = add nsw i32 %290, -1
  %295 = icmp sgt i32 %unLo.0.lcssa.i, %294
  %indvars.iv.next134.i = add i64 %indvars.iv133.i, -1
  br i1 %295, label %.critedge.i, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.outer.i, %.lr.ph45.lr.ph.i
  %indvars.iv133.i = phi i64 [ %279, %.lr.ph45.lr.ph.i ], [ %indvars.iv.next134.i, %.outer.i ]
  %unHi.1.ph55.i = phi i32 [ %unHi.0.ph.i, %.lr.ph45.lr.ph.i ], [ %294, %.outer.i ]
  %gtHi.1.ph54.i = phi i32 [ %gtHi.0.ph.i, %.lr.ph45.lr.ph.i ], [ %293, %.outer.i ]
  %296 = sext i32 %unHi.1.ph55.i to i64
  br label %283

; <label>:297                                     ; preds = %283
  %298 = icmp slt i32 %288, %med.0.i
  br i1 %298, label %302, label %299

; <label>:299                                     ; preds = %297
  %300 = add nsw i32 %unHi.144.i, -1
  %301 = icmp sgt i32 %unLo.0.lcssa.i, %300
  %indvars.iv.next132.i = add i64 %indvars.iv131.i, -1
  br i1 %301, label %..critedge_crit_edge.i, label %283

; <label>:302                                     ; preds = %297
  %303 = trunc i64 %indvars.iv133.i to i32
  %304 = trunc i64 %indvars.iv131.i to i32
  %305 = sext i32 %unLo.0.lcssa.i to i64
  %306 = getelementptr inbounds i32* %fmap, i64 %305
  %307 = load i32* %306, align 4, !tbaa !15
  store i32 %285, i32* %306, align 4, !tbaa !15
  store i32 %307, i32* %284, align 4, !tbaa !15
  %308 = add nsw i32 %unLo.0.lcssa.i, 1
  %309 = add nsw i32 %304, -1
  br label %.outer9.i

..critedge_crit_edge.i:                           ; preds = %299
  %310 = trunc i64 %indvars.iv133.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.preheader.i, %.outer.i, %..critedge_crit_edge.i
  %gtHi.1.ph.lcssa30.i = phi i32 [ %310, %..critedge_crit_edge.i ], [ %293, %.outer.i ], [ %gtHi.0.ph.i, %.preheader.i ]
  %unHi.1.lcssa.i = phi i32 [ %300, %..critedge_crit_edge.i ], [ %294, %.outer.i ], [ %unHi.0.ph.i, %.preheader.i ]
  %311 = icmp slt i32 %gtHi.1.ph.lcssa30.i, %ltLo.0.ph11.lcssa.i
  br i1 %311, label %fallbackSimpleSort.exit.outer.backedge.i, label %313

fallbackSimpleSort.exit.outer.backedge.i:         ; preds = %361, %356, %.critedge.i
  %sp.0.ph.be.i = phi i32 [ %365, %361 ], [ %360, %356 ], [ %158, %.critedge.i ]
  %312 = icmp sgt i32 %sp.0.ph.be.i, 0
  br i1 %312, label %.lr.ph.i, label %fallbackQSort3.exit

; <label>:313                                     ; preds = %.critedge.i
  %314 = sub nsw i32 %ltLo.0.ph11.lcssa.i, %161
  %315 = sub nsw i32 %unLo.0.lcssa.i, %ltLo.0.ph11.lcssa.i
  %316 = icmp slt i32 %314, %315
  %..i = select i1 %316, i32 %314, i32 %315
  %317 = icmp sgt i32 %..i, 0
  br i1 %317, label %.lr.ph67.i, label %._crit_edge.i

.lr.ph67.i:                                       ; preds = %313
  %318 = add i32 %unLo.0.lcssa.i, 1
  %319 = add i32 %ltLo.0.ph11.lcssa.i, -1
  %320 = sub i32 %319, %unLo.0.lcssa.i
  %321 = add i32 %161, -1
  %322 = sub i32 %321, %ltLo.0.ph11.lcssa.i
  %323 = icmp sgt i32 %320, %322
  %smax.i = select i1 %323, i32 %320, i32 %322
  %324 = add i32 %318, %smax.i
  %325 = sext i32 %324 to i64
  %326 = sext i32 %161 to i64
  br label %327

; <label>:327                                     ; preds = %327, %.lr.ph67.i
  %indvars.iv137.i = phi i64 [ %326, %.lr.ph67.i ], [ %indvars.iv.next138.i, %327 ]
  %indvars.iv135.i = phi i64 [ %325, %.lr.ph67.i ], [ %indvars.iv.next136.i, %327 ]
  %yyn.066.i = phi i32 [ %..i, %.lr.ph67.i ], [ %332, %327 ]
  %328 = getelementptr inbounds i32* %fmap, i64 %indvars.iv137.i
  %329 = load i32* %328, align 4, !tbaa !15
  %330 = getelementptr inbounds i32* %fmap, i64 %indvars.iv135.i
  %331 = load i32* %330, align 4, !tbaa !15
  store i32 %331, i32* %328, align 4, !tbaa !15
  store i32 %329, i32* %330, align 4, !tbaa !15
  %indvars.iv.next138.i = add nsw i64 %indvars.iv137.i, 1
  %332 = add nsw i32 %yyn.066.i, -1
  %333 = icmp sgt i32 %yyn.066.i, 1
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, 1
  br i1 %333, label %327, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %327, %313
  %334 = sub nsw i32 %163, %gtHi.1.ph.lcssa30.i
  %335 = sub nsw i32 %gtHi.1.ph.lcssa30.i, %unHi.1.lcssa.i
  %336 = icmp slt i32 %334, %335
  %.8.i = select i1 %336, i32 %334, i32 %335
  %337 = icmp sgt i32 %.8.i, 0
  br i1 %337, label %.lr.ph73.i, label %._crit_edge74.i

.lr.ph73.i:                                       ; preds = %._crit_edge.i
  %338 = sub nsw i32 %163, %.8.i
  %339 = sext i32 %unLo.0.lcssa.i to i64
  br label %340

; <label>:340                                     ; preds = %340, %.lr.ph73.i
  %indvars.iv146.i = phi i64 [ %339, %.lr.ph73.i ], [ %indvars.iv.next147.i, %340 ]
  %yyp25.071.in.i = phi i32 [ %338, %.lr.ph73.i ], [ %yyp25.071.i, %340 ]
  %yyn6.070.i = phi i32 [ %.8.i, %.lr.ph73.i ], [ %346, %340 ]
  %yyp25.071.i = add nsw i32 %yyp25.071.in.i, 1
  %341 = getelementptr inbounds i32* %fmap, i64 %indvars.iv146.i
  %342 = load i32* %341, align 4, !tbaa !15
  %343 = sext i32 %yyp25.071.i to i64
  %344 = getelementptr inbounds i32* %fmap, i64 %343
  %345 = load i32* %344, align 4, !tbaa !15
  store i32 %345, i32* %341, align 4, !tbaa !15
  store i32 %342, i32* %344, align 4, !tbaa !15
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, 1
  %346 = add nsw i32 %yyn6.070.i, -1
  %347 = icmp sgt i32 %yyn6.070.i, 1
  br i1 %347, label %340, label %._crit_edge74.i

._crit_edge74.i:                                  ; preds = %340, %._crit_edge.i
  %348 = add i32 %161, -1
  %349 = sub i32 %348, %ltLo.0.ph11.lcssa.i
  %350 = add i32 %349, %unLo.0.lcssa.i
  %351 = sub nsw i32 %163, %335
  %352 = add nsw i32 %351, 1
  %353 = sub nsw i32 %350, %161
  %354 = sub nsw i32 %163, %352
  %355 = icmp sgt i32 %353, %354
  br i1 %355, label %356, label %361

; <label>:356                                     ; preds = %._crit_edge74.i
  store i32 %161, i32* %160, align 4, !tbaa !15
  store i32 %350, i32* %162, align 4, !tbaa !15
  %sext151.i = shl i64 %indvars.iv168, 32
  %357 = ashr exact i64 %sext151.i, 32
  %358 = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 %357
  store i32 %352, i32* %358, align 4, !tbaa !15
  %359 = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 %357
  store i32 %163, i32* %359, align 4, !tbaa !15
  %360 = add nsw i32 %230, 1
  br label %fallbackSimpleSort.exit.outer.backedge.i

; <label>:361                                     ; preds = %._crit_edge74.i
  store i32 %352, i32* %160, align 4, !tbaa !15
  store i32 %163, i32* %162, align 4, !tbaa !15
  %sext.i = shl i64 %indvars.iv168, 32
  %362 = ashr exact i64 %sext.i, 32
  %363 = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 %362
  store i32 %161, i32* %363, align 4, !tbaa !15
  %364 = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 %362
  store i32 %350, i32* %364, align 4, !tbaa !15
  %365 = add nsw i32 %230, 1
  br label %fallbackSimpleSort.exit.outer.backedge.i

fallbackQSort3.exit:                              ; preds = %fallbackSimpleSort.exit.outer.backedge.i, %fallbackSimpleSort.exit.backedge.i
  call void @llvm.lifetime.end(i64 400, i8* %49) #3
  call void @llvm.lifetime.end(i64 400, i8* %48) #3
  %366 = icmp sgt i32 %117, %145
  br i1 %366, label %.outer, label %.lr.ph92

.lr.ph92:                                         ; preds = %fallbackQSort3.exit
  %367 = sext i32 %117 to i64
  %368 = sext i32 %145 to i64
  br label %369

; <label>:369                                     ; preds = %385, %.lr.ph92
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %385 ], [ %367, %.lr.ph92 ]
  %cc.090 = phi i32 [ %cc.1, %385 ], [ -1, %.lr.ph92 ]
  %370 = getelementptr inbounds i32* %fmap, i64 %indvars.iv177
  %371 = load i32* %370, align 4, !tbaa !15
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i32* %eclass, i64 %372
  %374 = load i32* %373, align 4, !tbaa !15
  %375 = icmp eq i32 %cc.090, %374
  br i1 %375, label %385, label %376

; <label>:376                                     ; preds = %369
  %377 = trunc i64 %indvars.iv177 to i32
  %378 = and i32 %377, 31
  %379 = shl i32 1, %378
  %380 = ashr i32 %377, 5
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32* %bhtab, i64 %381
  %383 = load i32* %382, align 4, !tbaa !15
  %384 = or i32 %383, %379
  store i32 %384, i32* %382, align 4, !tbaa !15
  br label %385

; <label>:385                                     ; preds = %369, %376
  %cc.1 = phi i32 [ %374, %376 ], [ %cc.090, %369 ]
  %indvars.iv.next178 = add nsw i64 %indvars.iv177, 1
  %386 = icmp slt i64 %indvars.iv177, %368
  br i1 %386, label %369, label %.outer

; <label>:387                                     ; preds = %.loopexit7, %.loopexit11
  br i1 %4, label %388, label %391

; <label>:388                                     ; preds = %387
  %389 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %390 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %389, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %nNotDone.0.ph) #6
  br label %391

; <label>:391                                     ; preds = %388, %387
  %392 = shl nsw i32 %H.0, 1
  %393 = icmp sgt i32 %392, %nblock
  %394 = icmp eq i32 %nNotDone.0.ph, 0
  %or.cond = or i1 %393, %394
  br i1 %or.cond, label %395, label %72

; <label>:395                                     ; preds = %391
  br i1 %4, label %396, label %.preheader3

; <label>:396                                     ; preds = %395
  %397 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %398 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str5, i64 0, i64 0), i64 33, i64 1, %struct.__sFILE* %397)
  br label %.preheader3

.preheader3:                                      ; preds = %396, %395
  br i1 %8, label %.preheader, label %.thread

.preheader:                                       ; preds = %.preheader3, %404
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %404 ], [ 0, %.preheader3 ]
  %j.281 = phi i64 [ %indvars.iv, %404 ], [ 0, %.preheader3 ]
  %sext = shl i64 %j.281, 32
  %399 = ashr exact i64 %sext, 32
  br label %400

; <label>:400                                     ; preds = %400, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %400 ], [ %399, %.preheader ]
  %401 = getelementptr inbounds [256 x i32]* %ftabCopy, i64 0, i64 %indvars.iv
  %402 = load i32* %401, align 4, !tbaa !15
  %403 = icmp eq i32 %402, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %403, label %400, label %404

; <label>:404                                     ; preds = %400
  %405 = add nsw i32 %402, -1
  store i32 %405, i32* %401, align 4, !tbaa !15
  %406 = trunc i64 %indvars.iv to i8
  %407 = getelementptr inbounds i32* %fmap, i64 %indvars.iv162
  %408 = load i32* %407, align 4, !tbaa !15
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i8* %3, i64 %409
  store i8 %406, i8* %410, align 1, !tbaa !17
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  %lftr.wideiv = trunc i64 %indvars.iv162 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %52
  br i1 %exitcond, label %411, label %.preheader

; <label>:411                                     ; preds = %404
  %412 = trunc i64 %indvars.iv to i32
  %phitmp = icmp slt i32 %412, 256
  br i1 %phitmp, label %.thread, label %413

; <label>:413                                     ; preds = %411
  tail call void @BZ2_bz__AssertH__fail(i32 1005) #6
  br label %.thread

.thread:                                          ; preds = %.preheader3, %413, %411
  call void @llvm.lifetime.end(i64 1024, i8* %2) #3
  call void @llvm.lifetime.end(i64 1028, i8* %1) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: inlinehint nounwind optsize ssp uwtable
define internal fastcc zeroext i8 @mainGtU(i32 %i1, i32 %i2, i8* %block, i16* nocapture readonly %quadrant, i32 %nblock, i32* nocapture %budget) #4 {
  %1 = zext i32 %i1 to i64
  %2 = getelementptr inbounds i8* %block, i64 %1
  %3 = load i8* %2, align 1, !tbaa !17
  %4 = zext i32 %i2 to i64
  %5 = getelementptr inbounds i8* %block, i64 %4
  %6 = load i8* %5, align 1, !tbaa !17
  %7 = icmp eq i8 %3, %6
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = icmp ugt i8 %3, %6
  %10 = zext i1 %9 to i8
  br label %.loopexit

; <label>:11                                      ; preds = %0
  %12 = add i32 %i1, 1
  %13 = add i32 %i2, 1
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i8* %block, i64 %14
  %16 = load i8* %15, align 1, !tbaa !17
  %17 = zext i32 %13 to i64
  %18 = getelementptr inbounds i8* %block, i64 %17
  %19 = load i8* %18, align 1, !tbaa !17
  %20 = icmp eq i8 %16, %19
  br i1 %20, label %24, label %21

; <label>:21                                      ; preds = %11
  %22 = icmp ugt i8 %16, %19
  %23 = zext i1 %22 to i8
  br label %.loopexit

; <label>:24                                      ; preds = %11
  %25 = add i32 %i1, 2
  %26 = add i32 %i2, 2
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i8* %block, i64 %27
  %29 = load i8* %28, align 1, !tbaa !17
  %30 = zext i32 %26 to i64
  %31 = getelementptr inbounds i8* %block, i64 %30
  %32 = load i8* %31, align 1, !tbaa !17
  %33 = icmp eq i8 %29, %32
  br i1 %33, label %37, label %34

; <label>:34                                      ; preds = %24
  %35 = icmp ugt i8 %29, %32
  %36 = zext i1 %35 to i8
  br label %.loopexit

; <label>:37                                      ; preds = %24
  %38 = add i32 %i1, 3
  %39 = add i32 %i2, 3
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i8* %block, i64 %40
  %42 = load i8* %41, align 1, !tbaa !17
  %43 = zext i32 %39 to i64
  %44 = getelementptr inbounds i8* %block, i64 %43
  %45 = load i8* %44, align 1, !tbaa !17
  %46 = icmp eq i8 %42, %45
  br i1 %46, label %50, label %47

; <label>:47                                      ; preds = %37
  %48 = icmp ugt i8 %42, %45
  %49 = zext i1 %48 to i8
  br label %.loopexit

; <label>:50                                      ; preds = %37
  %51 = add i32 %i1, 4
  %52 = add i32 %i2, 4
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8* %block, i64 %53
  %55 = load i8* %54, align 1, !tbaa !17
  %56 = zext i32 %52 to i64
  %57 = getelementptr inbounds i8* %block, i64 %56
  %58 = load i8* %57, align 1, !tbaa !17
  %59 = icmp eq i8 %55, %58
  br i1 %59, label %63, label %60

; <label>:60                                      ; preds = %50
  %61 = icmp ugt i8 %55, %58
  %62 = zext i1 %61 to i8
  br label %.loopexit

; <label>:63                                      ; preds = %50
  %64 = add i32 %i1, 5
  %65 = add i32 %i2, 5
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8* %block, i64 %66
  %68 = load i8* %67, align 1, !tbaa !17
  %69 = zext i32 %65 to i64
  %70 = getelementptr inbounds i8* %block, i64 %69
  %71 = load i8* %70, align 1, !tbaa !17
  %72 = icmp eq i8 %68, %71
  br i1 %72, label %76, label %73

; <label>:73                                      ; preds = %63
  %74 = icmp ugt i8 %68, %71
  %75 = zext i1 %74 to i8
  br label %.loopexit

; <label>:76                                      ; preds = %63
  %77 = add i32 %i1, 6
  %78 = add i32 %i2, 6
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8* %block, i64 %79
  %81 = load i8* %80, align 1, !tbaa !17
  %82 = zext i32 %78 to i64
  %83 = getelementptr inbounds i8* %block, i64 %82
  %84 = load i8* %83, align 1, !tbaa !17
  %85 = icmp eq i8 %81, %84
  br i1 %85, label %89, label %86

; <label>:86                                      ; preds = %76
  %87 = icmp ugt i8 %81, %84
  %88 = zext i1 %87 to i8
  br label %.loopexit

; <label>:89                                      ; preds = %76
  %90 = add i32 %i1, 7
  %91 = add i32 %i2, 7
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i8* %block, i64 %92
  %94 = load i8* %93, align 1, !tbaa !17
  %95 = zext i32 %91 to i64
  %96 = getelementptr inbounds i8* %block, i64 %95
  %97 = load i8* %96, align 1, !tbaa !17
  %98 = icmp eq i8 %94, %97
  br i1 %98, label %102, label %99

; <label>:99                                      ; preds = %89
  %100 = icmp ugt i8 %94, %97
  %101 = zext i1 %100 to i8
  br label %.loopexit

; <label>:102                                     ; preds = %89
  %103 = add i32 %i1, 8
  %104 = add i32 %i2, 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i8* %block, i64 %105
  %107 = load i8* %106, align 1, !tbaa !17
  %108 = zext i32 %104 to i64
  %109 = getelementptr inbounds i8* %block, i64 %108
  %110 = load i8* %109, align 1, !tbaa !17
  %111 = icmp eq i8 %107, %110
  br i1 %111, label %115, label %112

; <label>:112                                     ; preds = %102
  %113 = icmp ugt i8 %107, %110
  %114 = zext i1 %113 to i8
  br label %.loopexit

; <label>:115                                     ; preds = %102
  %116 = add i32 %i1, 9
  %117 = add i32 %i2, 9
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds i8* %block, i64 %118
  %120 = load i8* %119, align 1, !tbaa !17
  %121 = zext i32 %117 to i64
  %122 = getelementptr inbounds i8* %block, i64 %121
  %123 = load i8* %122, align 1, !tbaa !17
  %124 = icmp eq i8 %120, %123
  br i1 %124, label %128, label %125

; <label>:125                                     ; preds = %115
  %126 = icmp ugt i8 %120, %123
  %127 = zext i1 %126 to i8
  br label %.loopexit

; <label>:128                                     ; preds = %115
  %129 = add i32 %i1, 10
  %130 = add i32 %i2, 10
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i8* %block, i64 %131
  %133 = load i8* %132, align 1, !tbaa !17
  %134 = zext i32 %130 to i64
  %135 = getelementptr inbounds i8* %block, i64 %134
  %136 = load i8* %135, align 1, !tbaa !17
  %137 = icmp eq i8 %133, %136
  br i1 %137, label %141, label %138

; <label>:138                                     ; preds = %128
  %139 = icmp ugt i8 %133, %136
  %140 = zext i1 %139 to i8
  br label %.loopexit

; <label>:141                                     ; preds = %128
  %142 = add i32 %i1, 11
  %143 = add i32 %i2, 11
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds i8* %block, i64 %144
  %146 = load i8* %145, align 1, !tbaa !17
  %147 = zext i32 %143 to i64
  %148 = getelementptr inbounds i8* %block, i64 %147
  %149 = load i8* %148, align 1, !tbaa !17
  %150 = icmp eq i8 %146, %149
  br i1 %150, label %154, label %151

; <label>:151                                     ; preds = %141
  %152 = icmp ugt i8 %146, %149
  %153 = zext i1 %152 to i8
  br label %.loopexit

; <label>:154                                     ; preds = %141
  %155 = add i32 %i1, 12
  %156 = add i32 %i2, 12
  %157 = add i32 %nblock, 8
  br label %158

; <label>:158                                     ; preds = %332, %154
  %.02 = phi i32 [ %156, %154 ], [ %.13, %332 ]
  %.01 = phi i32 [ %155, %154 ], [ %., %332 ]
  %k.0 = phi i32 [ %157, %154 ], [ %339, %332 ]
  %159 = zext i32 %.01 to i64
  %160 = getelementptr inbounds i8* %block, i64 %159
  %161 = load i8* %160, align 1, !tbaa !17
  %162 = zext i32 %.02 to i64
  %163 = getelementptr inbounds i8* %block, i64 %162
  %164 = load i8* %163, align 1, !tbaa !17
  %165 = icmp eq i8 %161, %164
  br i1 %165, label %169, label %166

; <label>:166                                     ; preds = %158
  %167 = icmp ugt i8 %161, %164
  %168 = zext i1 %167 to i8
  br label %.loopexit

; <label>:169                                     ; preds = %158
  %170 = getelementptr inbounds i16* %quadrant, i64 %159
  %171 = load i16* %170, align 2, !tbaa !18
  %172 = getelementptr inbounds i16* %quadrant, i64 %162
  %173 = load i16* %172, align 2, !tbaa !18
  %174 = icmp eq i16 %171, %173
  br i1 %174, label %178, label %175

; <label>:175                                     ; preds = %169
  %176 = icmp ugt i16 %171, %173
  %177 = zext i1 %176 to i8
  br label %.loopexit

; <label>:178                                     ; preds = %169
  %179 = add i32 %.01, 1
  %180 = add i32 %.02, 1
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds i8* %block, i64 %181
  %183 = load i8* %182, align 1, !tbaa !17
  %184 = zext i32 %180 to i64
  %185 = getelementptr inbounds i8* %block, i64 %184
  %186 = load i8* %185, align 1, !tbaa !17
  %187 = icmp eq i8 %183, %186
  br i1 %187, label %191, label %188

; <label>:188                                     ; preds = %178
  %189 = icmp ugt i8 %183, %186
  %190 = zext i1 %189 to i8
  br label %.loopexit

; <label>:191                                     ; preds = %178
  %192 = getelementptr inbounds i16* %quadrant, i64 %181
  %193 = load i16* %192, align 2, !tbaa !18
  %194 = getelementptr inbounds i16* %quadrant, i64 %184
  %195 = load i16* %194, align 2, !tbaa !18
  %196 = icmp eq i16 %193, %195
  br i1 %196, label %200, label %197

; <label>:197                                     ; preds = %191
  %198 = icmp ugt i16 %193, %195
  %199 = zext i1 %198 to i8
  br label %.loopexit

; <label>:200                                     ; preds = %191
  %201 = add i32 %.01, 2
  %202 = add i32 %.02, 2
  %203 = zext i32 %201 to i64
  %204 = getelementptr inbounds i8* %block, i64 %203
  %205 = load i8* %204, align 1, !tbaa !17
  %206 = zext i32 %202 to i64
  %207 = getelementptr inbounds i8* %block, i64 %206
  %208 = load i8* %207, align 1, !tbaa !17
  %209 = icmp eq i8 %205, %208
  br i1 %209, label %213, label %210

; <label>:210                                     ; preds = %200
  %211 = icmp ugt i8 %205, %208
  %212 = zext i1 %211 to i8
  br label %.loopexit

; <label>:213                                     ; preds = %200
  %214 = getelementptr inbounds i16* %quadrant, i64 %203
  %215 = load i16* %214, align 2, !tbaa !18
  %216 = getelementptr inbounds i16* %quadrant, i64 %206
  %217 = load i16* %216, align 2, !tbaa !18
  %218 = icmp eq i16 %215, %217
  br i1 %218, label %222, label %219

; <label>:219                                     ; preds = %213
  %220 = icmp ugt i16 %215, %217
  %221 = zext i1 %220 to i8
  br label %.loopexit

; <label>:222                                     ; preds = %213
  %223 = add i32 %.01, 3
  %224 = add i32 %.02, 3
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds i8* %block, i64 %225
  %227 = load i8* %226, align 1, !tbaa !17
  %228 = zext i32 %224 to i64
  %229 = getelementptr inbounds i8* %block, i64 %228
  %230 = load i8* %229, align 1, !tbaa !17
  %231 = icmp eq i8 %227, %230
  br i1 %231, label %235, label %232

; <label>:232                                     ; preds = %222
  %233 = icmp ugt i8 %227, %230
  %234 = zext i1 %233 to i8
  br label %.loopexit

; <label>:235                                     ; preds = %222
  %236 = getelementptr inbounds i16* %quadrant, i64 %225
  %237 = load i16* %236, align 2, !tbaa !18
  %238 = getelementptr inbounds i16* %quadrant, i64 %228
  %239 = load i16* %238, align 2, !tbaa !18
  %240 = icmp eq i16 %237, %239
  br i1 %240, label %244, label %241

; <label>:241                                     ; preds = %235
  %242 = icmp ugt i16 %237, %239
  %243 = zext i1 %242 to i8
  br label %.loopexit

; <label>:244                                     ; preds = %235
  %245 = add i32 %.01, 4
  %246 = add i32 %.02, 4
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds i8* %block, i64 %247
  %249 = load i8* %248, align 1, !tbaa !17
  %250 = zext i32 %246 to i64
  %251 = getelementptr inbounds i8* %block, i64 %250
  %252 = load i8* %251, align 1, !tbaa !17
  %253 = icmp eq i8 %249, %252
  br i1 %253, label %257, label %254

; <label>:254                                     ; preds = %244
  %255 = icmp ugt i8 %249, %252
  %256 = zext i1 %255 to i8
  br label %.loopexit

; <label>:257                                     ; preds = %244
  %258 = getelementptr inbounds i16* %quadrant, i64 %247
  %259 = load i16* %258, align 2, !tbaa !18
  %260 = getelementptr inbounds i16* %quadrant, i64 %250
  %261 = load i16* %260, align 2, !tbaa !18
  %262 = icmp eq i16 %259, %261
  br i1 %262, label %266, label %263

; <label>:263                                     ; preds = %257
  %264 = icmp ugt i16 %259, %261
  %265 = zext i1 %264 to i8
  br label %.loopexit

; <label>:266                                     ; preds = %257
  %267 = add i32 %.01, 5
  %268 = add i32 %.02, 5
  %269 = zext i32 %267 to i64
  %270 = getelementptr inbounds i8* %block, i64 %269
  %271 = load i8* %270, align 1, !tbaa !17
  %272 = zext i32 %268 to i64
  %273 = getelementptr inbounds i8* %block, i64 %272
  %274 = load i8* %273, align 1, !tbaa !17
  %275 = icmp eq i8 %271, %274
  br i1 %275, label %279, label %276

; <label>:276                                     ; preds = %266
  %277 = icmp ugt i8 %271, %274
  %278 = zext i1 %277 to i8
  br label %.loopexit

; <label>:279                                     ; preds = %266
  %280 = getelementptr inbounds i16* %quadrant, i64 %269
  %281 = load i16* %280, align 2, !tbaa !18
  %282 = getelementptr inbounds i16* %quadrant, i64 %272
  %283 = load i16* %282, align 2, !tbaa !18
  %284 = icmp eq i16 %281, %283
  br i1 %284, label %288, label %285

; <label>:285                                     ; preds = %279
  %286 = icmp ugt i16 %281, %283
  %287 = zext i1 %286 to i8
  br label %.loopexit

; <label>:288                                     ; preds = %279
  %289 = add i32 %.01, 6
  %290 = add i32 %.02, 6
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds i8* %block, i64 %291
  %293 = load i8* %292, align 1, !tbaa !17
  %294 = zext i32 %290 to i64
  %295 = getelementptr inbounds i8* %block, i64 %294
  %296 = load i8* %295, align 1, !tbaa !17
  %297 = icmp eq i8 %293, %296
  br i1 %297, label %301, label %298

; <label>:298                                     ; preds = %288
  %299 = icmp ugt i8 %293, %296
  %300 = zext i1 %299 to i8
  br label %.loopexit

; <label>:301                                     ; preds = %288
  %302 = getelementptr inbounds i16* %quadrant, i64 %291
  %303 = load i16* %302, align 2, !tbaa !18
  %304 = getelementptr inbounds i16* %quadrant, i64 %294
  %305 = load i16* %304, align 2, !tbaa !18
  %306 = icmp eq i16 %303, %305
  br i1 %306, label %310, label %307

; <label>:307                                     ; preds = %301
  %308 = icmp ugt i16 %303, %305
  %309 = zext i1 %308 to i8
  br label %.loopexit

; <label>:310                                     ; preds = %301
  %311 = add i32 %.01, 7
  %312 = add i32 %.02, 7
  %313 = zext i32 %311 to i64
  %314 = getelementptr inbounds i8* %block, i64 %313
  %315 = load i8* %314, align 1, !tbaa !17
  %316 = zext i32 %312 to i64
  %317 = getelementptr inbounds i8* %block, i64 %316
  %318 = load i8* %317, align 1, !tbaa !17
  %319 = icmp eq i8 %315, %318
  br i1 %319, label %323, label %320

; <label>:320                                     ; preds = %310
  %321 = icmp ugt i8 %315, %318
  %322 = zext i1 %321 to i8
  br label %.loopexit

; <label>:323                                     ; preds = %310
  %324 = getelementptr inbounds i16* %quadrant, i64 %313
  %325 = load i16* %324, align 2, !tbaa !18
  %326 = getelementptr inbounds i16* %quadrant, i64 %316
  %327 = load i16* %326, align 2, !tbaa !18
  %328 = icmp eq i16 %325, %327
  br i1 %328, label %332, label %329

; <label>:329                                     ; preds = %323
  %330 = icmp ugt i16 %325, %327
  %331 = zext i1 %330 to i8
  br label %.loopexit

; <label>:332                                     ; preds = %323
  %333 = add i32 %.01, 8
  %334 = add i32 %.02, 8
  %335 = icmp ult i32 %333, %nblock
  %336 = select i1 %335, i32 0, i32 %nblock
  %. = sub i32 %333, %336
  %337 = icmp ult i32 %334, %nblock
  %338 = select i1 %337, i32 0, i32 %nblock
  %.13 = sub i32 %334, %338
  %339 = add nsw i32 %k.0, -8
  %340 = load i32* %budget, align 4, !tbaa !15
  %341 = add nsw i32 %340, -1
  store i32 %341, i32* %budget, align 4, !tbaa !15
  %342 = icmp sgt i32 %339, -1
  br i1 %342, label %158, label %.loopexit

.loopexit:                                        ; preds = %332, %329, %320, %307, %298, %285, %276, %263, %254, %241, %232, %219, %210, %197, %188, %175, %166, %151, %138, %125, %112, %99, %86, %73, %60, %47, %34, %21, %8
  %.0 = phi i8 [ %10, %8 ], [ %23, %21 ], [ %36, %34 ], [ %49, %47 ], [ %62, %60 ], [ %75, %73 ], [ %88, %86 ], [ %101, %99 ], [ %114, %112 ], [ %127, %125 ], [ %140, %138 ], [ %153, %151 ], [ %168, %166 ], [ %177, %175 ], [ %190, %188 ], [ %199, %197 ], [ %212, %210 ], [ %221, %219 ], [ %234, %232 ], [ %243, %241 ], [ %256, %254 ], [ %265, %263 ], [ %278, %276 ], [ %287, %285 ], [ %300, %298 ], [ %309, %307 ], [ %322, %320 ], [ %331, %329 ], [ 0, %332 ]
  ret i8 %.0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 56}
!3 = !{!"", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !7, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !5, i64 128, !5, i64 384, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !5, i64 672, !5, i64 1704, !5, i64 19706, !5, i64 37708, !5, i64 39256, !5, i64 45448, !5, i64 51640}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 64}
!9 = !{!3, !4, i64 40}
!10 = !{!3, !7, i64 108}
!11 = !{!3, !7, i64 656}
!12 = !{!3, !7, i64 88}
!13 = !{!3, !4, i64 24}
!14 = !{!3, !4, i64 32}
!15 = !{!7, !7, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.vectorize.width", i32 1}
!22 = !{!"llvm.loop.interleave.count", i32 1}
!23 = !{!3, !7, i64 48}

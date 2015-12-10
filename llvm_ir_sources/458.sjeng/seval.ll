; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/seval.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@white_to_move = external global i32
@Material = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@__func__.suicide_mid_eval = private unnamed_addr constant [17 x i8] c"suicide_mid_eval\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/seval.c\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"(i > 0) && (i < 145)\00", align 1
@Xfile = external constant [144 x i32]
@Xrank = external constant [144 x i32]
@board = external global [144 x i32]
@scentral = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = external constant [144 x i32]
@knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@king_o = internal unnamed_addr constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 7, i32 7, i32 7, i32 7], align 16
@.memset_pattern2 = internal unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 2], align 16

; Function Attrs: nounwind optsize ssp uwtable
define i32 @suicide_eval() #0 {
  %1 = tail call i32 @suicide_mid_eval() #6, !dbg !97
  ret i32 %1, !dbg !98
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @suicide_mid_eval() #0 {
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*
  %black_back_pawn = alloca [11 x i32], align 16
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  %3 = bitcast [2 x [11 x i32]]* %pawns to i8*, !dbg !99
  call void @llvm.lifetime.start(i64 88, i8* %3) #2, !dbg !99
  tail call void @llvm.dbg.declare(metadata [2 x [11 x i32]]* %pawns, metadata !20, metadata !100), !dbg !101
  call void @llvm.lifetime.start(i64 44, i8* %1) #2, !dbg !99
  tail call void @llvm.dbg.declare(metadata [11 x i32]* %white_back_pawn, metadata !25, metadata !100), !dbg !102
  call void @llvm.lifetime.start(i64 44, i8* %2) #2, !dbg !99
  tail call void @llvm.dbg.declare(metadata [11 x i32]* %black_back_pawn, metadata !28, metadata !100), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 0, i32* %score, align 4, !dbg !104, !tbaa !105
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !100), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !100), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !38, metadata !100), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !39, metadata !100), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !40, metadata !100), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !41, metadata !100), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !42, metadata !100), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !43, metadata !100), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !44, metadata !100), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !100), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !100), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !100), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !35, metadata !100), !dbg !121
  store i32 0, i32* %in_cache, align 4, !dbg !122, !tbaa !105
  tail call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  tail call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !35, metadata !100), !dbg !121
  call void @checkECache(i32* %score, i32* %in_cache) #7, !dbg !123
  call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !35, metadata !100), !dbg !121
  %4 = load i32* %in_cache, align 4, !dbg !124, !tbaa !105
  %5 = icmp eq i32 %4, 0, !dbg !124
  br i1 %5, label %.preheader34, label %6, !dbg !126

; <label>:6                                       ; preds = %0
  %7 = load i32* @white_to_move, align 4, !dbg !127, !tbaa !105
  %8 = icmp eq i32 %7, 1, !dbg !130
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %9 = load i32* %score, align 4, !dbg !131, !tbaa !105
  %10 = sub nsw i32 0, %9, !dbg !132
  %.4 = select i1 %8, i32 %9, i32 %10, !dbg !133
  br label %483, !dbg !133

.preheader34:                                     ; preds = %0
  %11 = load i32* @Material, align 4, !dbg !134, !tbaa !105
  call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %11, i32* %score, align 4, !dbg !135, !tbaa !105
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 88, i32 16, i1 false), !dbg !136
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !31, metadata !100), !dbg !137
  call void @memset_pattern16(i8* %1, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 44) #2, !dbg !138
  call void @memset_pattern16(i8* %2, i8* bitcast ([4 x i32]* @.memset_pattern2 to i8*), i64 44) #2, !dbg !142
  %12 = load i32* @piece_count, align 4, !dbg !143, !tbaa !105
  %13 = icmp slt i32 %12, 1, !dbg !146
  br i1 %13, label %._crit_edge, label %.lr.ph55, !dbg !147

.preheader:                                       ; preds = %48
  br i1 %13, label %._crit_edge, label %.lr.ph, !dbg !148

.lr.ph55:                                         ; preds = %.preheader34, %48
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %48 ], [ 1, %.preheader34 ]
  %a.053 = phi i32 [ %a.1, %48 ], [ 1, %.preheader34 ]
  %14 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv58, !dbg !150
  %15 = load i32* %14, align 4, !dbg !150, !tbaa !105
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !31, metadata !100), !dbg !137
  %16 = icmp eq i32 %15, 0, !dbg !152
  br i1 %16, label %48, label %17, !dbg !154

; <label>:17                                      ; preds = %.lr.ph55
  %18 = add nsw i32 %a.053, 1, !dbg !155
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !32, metadata !100), !dbg !156
  %.off = add i32 %15, -1, !dbg !157
  %19 = icmp ult i32 %.off, 144, !dbg !157
  br i1 %19, label %21, label %20, !dbg !157, !prof !158

; <label>:20                                      ; preds = %17
  call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.suicide_mid_eval, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !157
  unreachable, !dbg !157

; <label>:21                                      ; preds = %17
  %22 = sext i32 %15 to i64, !dbg !159
  %23 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %22, !dbg !159
  %24 = load i32* %23, align 4, !dbg !159, !tbaa !105
  %25 = add nsw i32 %24, 1, !dbg !160
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !19, metadata !100), !dbg !161
  %26 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %22, !dbg !162
  %27 = load i32* %26, align 4, !dbg !162, !tbaa !105
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !18, metadata !100), !dbg !163
  %28 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %22, !dbg !164
  %29 = load i32* %28, align 4, !dbg !164, !tbaa !105
  switch i32 %29, label %48 [
    i32 1, label %30
    i32 2, label %39
  ], !dbg !166

; <label>:30                                      ; preds = %21
  %31 = sext i32 %25 to i64, !dbg !167
  %32 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %31, !dbg !167
  %33 = load i32* %32, align 4, !dbg !169, !tbaa !105
  %34 = add nsw i32 %33, 1, !dbg !169
  store i32 %34, i32* %32, align 4, !dbg !169, !tbaa !105
  %35 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %31, !dbg !170
  %36 = load i32* %35, align 4, !dbg !170, !tbaa !105
  %37 = icmp slt i32 %27, %36, !dbg !172
  br i1 %37, label %38, label %48, !dbg !173

; <label>:38                                      ; preds = %30
  store i32 %27, i32* %35, align 4, !dbg !174, !tbaa !105
  br label %48, !dbg !176

; <label>:39                                      ; preds = %21
  %40 = sext i32 %25 to i64, !dbg !177
  %41 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %40, !dbg !177
  %42 = load i32* %41, align 4, !dbg !180, !tbaa !105
  %43 = add nsw i32 %42, 1, !dbg !180
  store i32 %43, i32* %41, align 4, !dbg !180, !tbaa !105
  %44 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %40, !dbg !181
  %45 = load i32* %44, align 4, !dbg !181, !tbaa !105
  %46 = icmp sgt i32 %27, %45, !dbg !183
  br i1 %46, label %47, label %48, !dbg !184

; <label>:47                                      ; preds = %39
  store i32 %27, i32* %44, align 4, !dbg !185, !tbaa !105
  br label %48, !dbg !187

; <label>:48                                      ; preds = %21, %.lr.ph55, %38, %30, %39, %47
  %a.1 = phi i32 [ %18, %38 ], [ %18, %30 ], [ %18, %47 ], [ %18, %39 ], [ %a.053, %.lr.ph55 ], [ %18, %21 ]
  %indvars.iv.next59 = add nuw i64 %indvars.iv58, 1, !dbg !147
  %49 = icmp sgt i32 %a.1, %12, !dbg !146
  br i1 %49, label %.preheader, label %.lr.ph55, !dbg !147

.lr.ph:                                           ; preds = %.preheader, %461
  %50 = phi i32 [ %462, %461 ], [ %11, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %461 ], [ 1, %.preheader ]
  %bbc.040 = phi i32 [ %bbc.1, %461 ], [ 0, %.preheader ]
  %wbc.039 = phi i32 [ %wbc.1, %461 ], [ 0, %.preheader ]
  %bb.038 = phi i32 [ %bb.2, %461 ], [ 0, %.preheader ]
  %wb.037 = phi i32 [ %wb.2, %461 ], [ 0, %.preheader ]
  %a.235 = phi i32 [ %a.3, %461 ], [ 1, %.preheader ]
  %51 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !188
  %52 = load i32* %51, align 4, !dbg !188, !tbaa !105
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !31, metadata !100), !dbg !137
  %53 = icmp eq i32 %52, 0, !dbg !191
  br i1 %53, label %461, label %54, !dbg !193

; <label>:54                                      ; preds = %.lr.ph
  %55 = add nsw i32 %a.235, 1, !dbg !194
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !32, metadata !100), !dbg !156
  %56 = sext i32 %52 to i64, !dbg !195
  %57 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %56, !dbg !195
  %58 = load i32* %57, align 4, !dbg !195, !tbaa !105
  %59 = add nsw i32 %58, 1, !dbg !196
  call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !19, metadata !100), !dbg !161
  %60 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %56, !dbg !197
  %61 = load i32* %60, align 4, !dbg !197, !tbaa !105
  call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !18, metadata !100), !dbg !163
  %62 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %56, !dbg !198
  %63 = load i32* %62, align 4, !dbg !198, !tbaa !105
  switch i32 %63, label %461 [
    i32 1, label %64
    i32 2, label %207
    i32 7, label %351
    i32 8, label %357
    i32 11, label %363
    i32 12, label %373
    i32 3, label %383
    i32 4, label %398
    i32 9, label %413
    i32 10, label %421
    i32 5, label %429
    i32 6, label %445
  ], !dbg !199

; <label>:64                                      ; preds = %54
  %65 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !200
  %66 = load i32* %65, align 4, !dbg !200, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %67 = add nsw i32 %50, %66, !dbg !202
  call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %67, i32* %score, align 4, !dbg !202, !tbaa !105
  %68 = call fastcc i32 @s_pawn_mobility(i32 %52) #6, !dbg !203
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %69 = add nsw i32 %67, %68, !dbg !204
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %69, i32* %score, align 4, !dbg !204, !tbaa !105
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !56, metadata !100) #2, !dbg !205
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !100) #2, !dbg !207
  %70 = add nsw i32 %52, 24, !dbg !208
  %71 = sext i32 %70 to i64, !dbg !210
  %72 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %71, !dbg !210
  %73 = load i32* %72, align 4, !dbg !210, !tbaa !105
  %74 = icmp eq i32 %73, 2, !dbg !211
  br i1 %74, label %black_saccers.exit, label %75, !dbg !212

; <label>:75                                      ; preds = %64
  %76 = add nsw i32 %52, 22, !dbg !213
  %77 = sext i32 %76 to i64, !dbg !214
  %78 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %77, !dbg !214
  %79 = load i32* %78, align 4, !dbg !214, !tbaa !105
  %80 = icmp eq i32 %79, 2, !dbg !215
  br i1 %80, label %black_saccers.exit, label %81, !dbg !216

; <label>:81                                      ; preds = %75
  %82 = add nsw i32 %52, 26, !dbg !217
  %83 = sext i32 %82 to i64, !dbg !218
  %84 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %83, !dbg !218
  %85 = load i32* %84, align 4, !dbg !218, !tbaa !105
  %86 = icmp eq i32 %85, 2, !dbg !219
  br i1 %86, label %black_saccers.exit, label %87, !dbg !220

; <label>:87                                      ; preds = %81
  %88 = icmp slt i32 %61, 6, !dbg !221
  br i1 %88, label %89, label %.thread.i, !dbg !223

; <label>:89                                      ; preds = %87
  %90 = add nsw i32 %52, 25, !dbg !224
  %91 = sext i32 %90 to i64, !dbg !225
  %92 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %91, !dbg !225
  %93 = load i32* %92, align 4, !dbg !225, !tbaa !105
  %94 = icmp eq i32 %93, 2, !dbg !226
  br i1 %94, label %.thread6.i, label %95, !dbg !227

; <label>:95                                      ; preds = %89
  %96 = add nsw i32 %52, 23, !dbg !228
  %97 = sext i32 %96 to i64, !dbg !229
  %98 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %97, !dbg !229
  %99 = load i32* %98, align 4, !dbg !229, !tbaa !105
  %100 = icmp eq i32 %99, 2, !dbg !230
  br i1 %100, label %.thread6.i, label %101, !dbg !231

; <label>:101                                     ; preds = %95
  %102 = icmp eq i32 %61, 4, !dbg !232
  br i1 %102, label %103, label %.thread.i, !dbg !234

; <label>:103                                     ; preds = %101
  %104 = add nsw i32 %52, 35, !dbg !235
  %105 = sext i32 %104 to i64, !dbg !236
  %106 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %105, !dbg !236
  %107 = load i32* %106, align 4, !dbg !236, !tbaa !105
  %108 = icmp eq i32 %107, 2, !dbg !237
  br i1 %108, label %.thread6.i, label %109, !dbg !238

; <label>:109                                     ; preds = %103
  %110 = add nsw i32 %52, 37, !dbg !239
  %111 = sext i32 %110 to i64, !dbg !240
  %112 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %111, !dbg !240
  %113 = load i32* %112, align 4, !dbg !240, !tbaa !105
  %114 = icmp eq i32 %113, 2, !dbg !241
  br i1 %114, label %.thread6.i, label %.thread.i, !dbg !242

.thread.i:                                        ; preds = %109, %101, %87
  %115 = add nsw i32 %52, 11, !dbg !243
  %116 = call i32 @is_attacked(i32 %115, i32 0) #7, !dbg !246
  %117 = icmp ne i32 %116, 0, !dbg !246
  %118 = zext i1 %117 to i32, !dbg !246
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !57, metadata !100) #2, !dbg !207
  br i1 %117, label %124, label %119, !dbg !247

; <label>:119                                     ; preds = %.thread.i
  %120 = add nsw i32 %52, 13, !dbg !248
  %121 = call i32 @is_attacked(i32 %120, i32 0) #7, !dbg !251
  %122 = icmp ne i32 %121, 0, !dbg !251
  %123 = select i1 %122, i32 2, i32 0, !dbg !251
  call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !57, metadata !100) #2, !dbg !207
  br label %124, !dbg !252

; <label>:124                                     ; preds = %119, %.thread.i
  %f.2.i = phi i32 [ %118, %.thread.i ], [ %123, %119 ], !dbg !253
  switch i32 %f.2.i, label %128 [
    i32 0, label %black_saccers.exit
    i32 1, label %.thread6.i
  ], !dbg !254

.thread6.i:                                       ; preds = %124, %109, %103, %95, %89
  %125 = add nsw i32 %52, 11, !dbg !255
  %126 = call i32 @calc_attackers(i32 %125, i32 0) #7, !dbg !261
  %127 = icmp sgt i32 %126, 1, !dbg !262
  %..i = select i1 %127, i32 0, i32 30, !dbg !263
  br label %black_saccers.exit, !dbg !263

; <label>:128                                     ; preds = %124
  %129 = add nsw i32 %52, 13, !dbg !265
  %130 = call i32 @calc_attackers(i32 %129, i32 0) #7, !dbg !268
  %131 = icmp sgt i32 %130, 1, !dbg !269
  %.1.i = select i1 %131, i32 0, i32 30, !dbg !270
  br label %black_saccers.exit, !dbg !270

black_saccers.exit:                               ; preds = %64, %75, %81, %124, %.thread6.i, %128
  %.0.i = phi i32 [ 0, %81 ], [ 0, %75 ], [ 0, %64 ], [ 0, %124 ], [ %..i, %.thread6.i ], [ %.1.i, %128 ], !dbg !253
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %132 = load i32* %score, align 4, !dbg !272, !tbaa !105
  %133 = sub nsw i32 %132, %.0.i, !dbg !272
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %133, i32* %score, align 4, !dbg !272, !tbaa !105
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !29, metadata !100), !dbg !273
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !30, metadata !100), !dbg !274
  %134 = add nsw i32 %58, 2, !dbg !275
  %135 = sext i32 %134 to i64, !dbg !277
  %136 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %135, !dbg !277
  %137 = load i32* %136, align 4, !dbg !277, !tbaa !105
  %138 = icmp sgt i32 %137, %61, !dbg !278
  br i1 %138, label %139, label %155, !dbg !279

; <label>:139                                     ; preds = %black_saccers.exit
  %140 = sext i32 %58 to i64, !dbg !280
  %141 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %140, !dbg !280
  %142 = load i32* %141, align 4, !dbg !280, !tbaa !105
  %143 = icmp sgt i32 %142, %61, !dbg !281
  br i1 %143, label %144, label %155, !dbg !282

; <label>:144                                     ; preds = %139
  %145 = add nsw i32 %133, -8, !dbg !283
  call void @llvm.dbg.value(metadata i32 %145, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %145, i32* %score, align 4, !dbg !283, !tbaa !105
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !30, metadata !100), !dbg !274
  %146 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %135, !dbg !285
  %147 = load i32* %146, align 4, !dbg !285, !tbaa !105
  %148 = icmp eq i32 %147, 0, !dbg !285
  br i1 %148, label %149, label %155, !dbg !287

; <label>:149                                     ; preds = %144
  %150 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %140, !dbg !288
  %151 = load i32* %150, align 4, !dbg !288, !tbaa !105
  %152 = icmp eq i32 %151, 0, !dbg !288
  br i1 %152, label %153, label %155, !dbg !289

; <label>:153                                     ; preds = %149
  %154 = add nsw i32 %133, -20, !dbg !290
  call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %154, i32* %score, align 4, !dbg !290, !tbaa !105
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !29, metadata !100), !dbg !273
  br label %155, !dbg !292

; <label>:155                                     ; preds = %149, %144, %153, %139, %black_saccers.exit
  %156 = phi i32 [ %145, %144 ], [ %145, %149 ], [ %154, %153 ], [ %133, %139 ], [ %133, %black_saccers.exit ]
  %isolated.0 = phi i32 [ 0, %144 ], [ 0, %149 ], [ 1, %153 ], [ 0, %139 ], [ 0, %black_saccers.exit ]
  %backwards.0 = phi i32 [ 1, %144 ], [ 1, %149 ], [ 1, %153 ], [ 0, %139 ], [ 0, %black_saccers.exit ]
  %157 = sext i32 %59 to i64, !dbg !293
  %158 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %157, !dbg !293
  %159 = load i32* %158, align 4, !dbg !293, !tbaa !105
  %160 = icmp eq i32 %159, 0, !dbg !293
  br i1 %160, label %161, label %170, !dbg !295

; <label>:161                                     ; preds = %155
  %162 = icmp eq i32 %backwards.0, 0, !dbg !296
  br i1 %162, label %165, label %163, !dbg !299

; <label>:163                                     ; preds = %161
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %164 = add nsw i32 %156, -5, !dbg !300
  call void @llvm.dbg.value(metadata i32 %164, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %164, i32* %score, align 4, !dbg !300, !tbaa !105
  br label %165, !dbg !301

; <label>:165                                     ; preds = %161, %163
  %166 = phi i32 [ %156, %161 ], [ %164, %163 ]
  %167 = icmp eq i32 %isolated.0, 0, !dbg !302
  br i1 %167, label %170, label %168, !dbg !304

; <label>:168                                     ; preds = %165
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %169 = add nsw i32 %166, -8, !dbg !305
  call void @llvm.dbg.value(metadata i32 %169, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %169, i32* %score, align 4, !dbg !305, !tbaa !105
  br label %170, !dbg !306

; <label>:170                                     ; preds = %165, %155, %168
  %171 = phi i32 [ %166, %165 ], [ %156, %155 ], [ %169, %168 ]
  %172 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %157, !dbg !307
  %173 = load i32* %172, align 4, !dbg !307, !tbaa !105
  %174 = icmp sgt i32 %173, 1, !dbg !309
  br i1 %174, label %175, label %178, !dbg !310

; <label>:175                                     ; preds = %170
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %176 = mul i32 %173, -15
  %.neg29 = add i32 %176, 15, !dbg !311
  %177 = add i32 %.neg29, %171, !dbg !312
  call void @llvm.dbg.value(metadata i32 %177, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %177, i32* %score, align 4, !dbg !312, !tbaa !105
  br label %178, !dbg !313

; <label>:178                                     ; preds = %175, %170
  %179 = phi i32 [ %177, %175 ], [ %171, %170 ]
  %180 = sext i32 %58 to i64, !dbg !314
  br i1 %160, label %181, label %._crit_edge68, !dbg !316

; <label>:181                                     ; preds = %178
  %182 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %180, !dbg !314
  %183 = load i32* %182, align 4, !dbg !314, !tbaa !105
  %184 = icmp slt i32 %61, %183, !dbg !317
  br i1 %184, label %._crit_edge68, label %185, !dbg !318

; <label>:185                                     ; preds = %181
  %186 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %135, !dbg !319
  %187 = load i32* %186, align 4, !dbg !319, !tbaa !105
  %188 = icmp slt i32 %61, %187, !dbg !320
  br i1 %188, label %._crit_edge68, label %189, !dbg !321

; <label>:189                                     ; preds = %185
  %190 = mul i32 %61, 3, !dbg !322
  %191 = add i32 %190, 24, !dbg !324
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %192 = add nsw i32 %191, %179, !dbg !325
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %192, i32* %score, align 4, !dbg !325, !tbaa !105
  switch i32 %58, label %196 [
    i32 1, label %193
    i32 8, label %193
  ], !dbg !326

; <label>:193                                     ; preds = %189, %189
  %194 = shl i32 %61, 1, !dbg !328
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %195 = add nsw i32 %192, %194, !dbg !329
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %195, i32* %score, align 4, !dbg !329, !tbaa !105
  br label %196, !dbg !330

; <label>:196                                     ; preds = %189, %193
  %197 = phi i32 [ %192, %189 ], [ %195, %193 ]
  %198 = icmp eq i32 %isolated.0, 0, !dbg !331
  br i1 %198, label %199, label %._crit_edge68, !dbg !333

; <label>:199                                     ; preds = %196
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %200 = add nsw i32 %197, 6, !dbg !334
  call void @llvm.dbg.value(metadata i32 %200, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %200, i32* %score, align 4, !dbg !334, !tbaa !105
  br label %._crit_edge68, !dbg !336

._crit_edge68:                                    ; preds = %178, %196, %185, %181, %199
  %201 = phi i32 [ %197, %196 ], [ %179, %185 ], [ %179, %181 ], [ %200, %199 ], [ %179, %178 ]
  %202 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %180, !dbg !337
  %203 = load i32* %202, align 4, !dbg !337, !tbaa !105
  %204 = icmp eq i32 %203, 0, !dbg !337
  br i1 %204, label %205, label %461, !dbg !339

; <label>:205                                     ; preds = %._crit_edge68
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %206 = add nsw i32 %201, -20, !dbg !340
  call void @llvm.dbg.value(metadata i32 %206, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %206, i32* %score, align 4, !dbg !340, !tbaa !105
  br label %461, !dbg !341

; <label>:207                                     ; preds = %54
  %208 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !342
  %209 = load i32* %208, align 4, !dbg !342, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %210 = sub nsw i32 %50, %209, !dbg !343
  call void @llvm.dbg.value(metadata i32 %210, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %210, i32* %score, align 4, !dbg !343, !tbaa !105
  %211 = call fastcc i32 @s_pawn_mobility(i32 %52) #6, !dbg !344
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %212 = sub nsw i32 %210, %211, !dbg !345
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %212, i32* %score, align 4, !dbg !345, !tbaa !105
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !60, metadata !100) #2, !dbg !346
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !100) #2, !dbg !348
  %213 = add nsw i32 %52, -24, !dbg !349
  %214 = sext i32 %213 to i64, !dbg !351
  %215 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %214, !dbg !351
  %216 = load i32* %215, align 4, !dbg !351, !tbaa !105
  %217 = icmp eq i32 %216, 1, !dbg !352
  br i1 %217, label %white_saccers.exit, label %218, !dbg !353

; <label>:218                                     ; preds = %207
  %219 = add nsw i32 %52, -22, !dbg !354
  %220 = sext i32 %219 to i64, !dbg !355
  %221 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %220, !dbg !355
  %222 = load i32* %221, align 4, !dbg !355, !tbaa !105
  %223 = icmp eq i32 %222, 1, !dbg !356
  br i1 %223, label %white_saccers.exit, label %224, !dbg !357

; <label>:224                                     ; preds = %218
  %225 = add nsw i32 %52, -26, !dbg !358
  %226 = sext i32 %225 to i64, !dbg !359
  %227 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %226, !dbg !359
  %228 = load i32* %227, align 4, !dbg !359, !tbaa !105
  %229 = icmp eq i32 %228, 1, !dbg !360
  br i1 %229, label %white_saccers.exit, label %230, !dbg !361

; <label>:230                                     ; preds = %224
  %231 = icmp sgt i32 %61, 3, !dbg !362
  br i1 %231, label %232, label %.thread.i6, !dbg !364

; <label>:232                                     ; preds = %230
  %233 = add nsw i32 %52, -25, !dbg !365
  %234 = sext i32 %233 to i64, !dbg !366
  %235 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %234, !dbg !366
  %236 = load i32* %235, align 4, !dbg !366, !tbaa !105
  %237 = icmp eq i32 %236, 1, !dbg !367
  br i1 %237, label %.thread6.i9, label %238, !dbg !368

; <label>:238                                     ; preds = %232
  %239 = add nsw i32 %52, -23, !dbg !369
  %240 = sext i32 %239 to i64, !dbg !370
  %241 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %240, !dbg !370
  %242 = load i32* %241, align 4, !dbg !370, !tbaa !105
  %243 = icmp eq i32 %242, 1, !dbg !371
  br i1 %243, label %.thread6.i9, label %244, !dbg !372

; <label>:244                                     ; preds = %238
  %245 = icmp eq i32 %61, 5, !dbg !373
  br i1 %245, label %246, label %.thread.i6, !dbg !375

; <label>:246                                     ; preds = %244
  %247 = add nsw i32 %52, -35, !dbg !376
  %248 = sext i32 %247 to i64, !dbg !377
  %249 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %248, !dbg !377
  %250 = load i32* %249, align 4, !dbg !377, !tbaa !105
  %251 = icmp eq i32 %250, 1, !dbg !378
  br i1 %251, label %.thread6.i9, label %252, !dbg !379

; <label>:252                                     ; preds = %246
  %253 = add nsw i32 %52, -37, !dbg !380
  %254 = sext i32 %253 to i64, !dbg !381
  %255 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %254, !dbg !381
  %256 = load i32* %255, align 4, !dbg !381, !tbaa !105
  %257 = icmp eq i32 %256, 1, !dbg !382
  br i1 %257, label %.thread6.i9, label %.thread.i6, !dbg !383

.thread.i6:                                       ; preds = %252, %244, %230
  %258 = add nsw i32 %52, -11, !dbg !384
  %259 = call i32 @is_attacked(i32 %258, i32 1) #7, !dbg !387
  %260 = icmp ne i32 %259, 0, !dbg !387
  %261 = zext i1 %260 to i32, !dbg !387
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !61, metadata !100) #2, !dbg !348
  br i1 %260, label %267, label %262, !dbg !388

; <label>:262                                     ; preds = %.thread.i6
  %263 = add nsw i32 %52, -13, !dbg !389
  %264 = call i32 @is_attacked(i32 %263, i32 1) #7, !dbg !392
  %265 = icmp ne i32 %264, 0, !dbg !392
  %266 = select i1 %265, i32 2, i32 0, !dbg !392
  call void @llvm.dbg.value(metadata i32 %266, i64 0, metadata !61, metadata !100) #2, !dbg !348
  br label %267, !dbg !393

; <label>:267                                     ; preds = %262, %.thread.i6
  %f.2.i7 = phi i32 [ %261, %.thread.i6 ], [ %266, %262 ], !dbg !394
  switch i32 %f.2.i7, label %271 [
    i32 0, label %white_saccers.exit
    i32 1, label %.thread6.i9
  ], !dbg !395

.thread6.i9:                                      ; preds = %267, %252, %246, %238, %232
  %268 = add nsw i32 %52, -11, !dbg !396
  %269 = call i32 @calc_attackers(i32 %268, i32 1) #7, !dbg !402
  %270 = icmp sgt i32 %269, 1, !dbg !403
  %..i8 = select i1 %270, i32 0, i32 30, !dbg !404
  br label %white_saccers.exit, !dbg !404

; <label>:271                                     ; preds = %267
  %272 = add nsw i32 %52, -13, !dbg !406
  %273 = call i32 @calc_attackers(i32 %272, i32 1) #7, !dbg !409
  %274 = icmp sgt i32 %273, 1, !dbg !410
  %.1.i10 = select i1 %274, i32 0, i32 30, !dbg !411
  br label %white_saccers.exit, !dbg !411

white_saccers.exit:                               ; preds = %207, %218, %224, %267, %.thread6.i9, %271
  %.0.i11 = phi i32 [ 0, %224 ], [ 0, %218 ], [ 0, %207 ], [ 0, %267 ], [ %..i8, %.thread6.i9 ], [ %.1.i10, %271 ], !dbg !394
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %275 = load i32* %score, align 4, !dbg !413, !tbaa !105
  %276 = add nsw i32 %275, %.0.i11, !dbg !413
  call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %276, i32* %score, align 4, !dbg !413, !tbaa !105
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !29, metadata !100), !dbg !273
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !30, metadata !100), !dbg !274
  %277 = add nsw i32 %58, 2, !dbg !414
  %278 = sext i32 %277 to i64, !dbg !416
  %279 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %278, !dbg !416
  %280 = load i32* %279, align 4, !dbg !416, !tbaa !105
  %281 = icmp slt i32 %280, %61, !dbg !417
  br i1 %281, label %282, label %298, !dbg !418

; <label>:282                                     ; preds = %white_saccers.exit
  %283 = sext i32 %58 to i64, !dbg !419
  %284 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %283, !dbg !419
  %285 = load i32* %284, align 4, !dbg !419, !tbaa !105
  %286 = icmp slt i32 %285, %61, !dbg !420
  br i1 %286, label %287, label %298, !dbg !421

; <label>:287                                     ; preds = %282
  %288 = add nsw i32 %276, 8, !dbg !422
  call void @llvm.dbg.value(metadata i32 %288, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %288, i32* %score, align 4, !dbg !422, !tbaa !105
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !30, metadata !100), !dbg !274
  %289 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %278, !dbg !424
  %290 = load i32* %289, align 4, !dbg !424, !tbaa !105
  %291 = icmp eq i32 %290, 0, !dbg !424
  br i1 %291, label %292, label %298, !dbg !426

; <label>:292                                     ; preds = %287
  %293 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %283, !dbg !427
  %294 = load i32* %293, align 4, !dbg !427, !tbaa !105
  %295 = icmp eq i32 %294, 0, !dbg !427
  br i1 %295, label %296, label %298, !dbg !428

; <label>:296                                     ; preds = %292
  %297 = add nsw i32 %276, 20, !dbg !429
  call void @llvm.dbg.value(metadata i32 %297, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %297, i32* %score, align 4, !dbg !429, !tbaa !105
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !29, metadata !100), !dbg !273
  br label %298, !dbg !431

; <label>:298                                     ; preds = %292, %287, %296, %282, %white_saccers.exit
  %299 = phi i32 [ %288, %287 ], [ %288, %292 ], [ %297, %296 ], [ %276, %282 ], [ %276, %white_saccers.exit ]
  %isolated.1 = phi i32 [ 0, %287 ], [ 0, %292 ], [ 1, %296 ], [ 0, %282 ], [ 0, %white_saccers.exit ]
  %backwards.1 = phi i32 [ 1, %287 ], [ 1, %292 ], [ 1, %296 ], [ 0, %282 ], [ 0, %white_saccers.exit ]
  %300 = sext i32 %59 to i64, !dbg !432
  %301 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %300, !dbg !432
  %302 = load i32* %301, align 4, !dbg !432, !tbaa !105
  %303 = icmp eq i32 %302, 0, !dbg !432
  br i1 %303, label %304, label %313, !dbg !434

; <label>:304                                     ; preds = %298
  %305 = icmp eq i32 %backwards.1, 0, !dbg !435
  br i1 %305, label %308, label %306, !dbg !438

; <label>:306                                     ; preds = %304
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %307 = add nsw i32 %299, 5, !dbg !439
  call void @llvm.dbg.value(metadata i32 %307, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %307, i32* %score, align 4, !dbg !439, !tbaa !105
  br label %308, !dbg !440

; <label>:308                                     ; preds = %304, %306
  %309 = phi i32 [ %299, %304 ], [ %307, %306 ]
  %310 = icmp eq i32 %isolated.1, 0, !dbg !441
  br i1 %310, label %313, label %311, !dbg !443

; <label>:311                                     ; preds = %308
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %312 = add nsw i32 %309, 8, !dbg !444
  call void @llvm.dbg.value(metadata i32 %312, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %312, i32* %score, align 4, !dbg !444, !tbaa !105
  br label %313, !dbg !445

; <label>:313                                     ; preds = %308, %298, %311
  %314 = phi i32 [ %309, %308 ], [ %299, %298 ], [ %312, %311 ]
  %315 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %300, !dbg !446
  %316 = load i32* %315, align 4, !dbg !446, !tbaa !105
  %317 = icmp sgt i32 %316, 1, !dbg !448
  br i1 %317, label %318, label %322, !dbg !449

; <label>:318                                     ; preds = %313
  %319 = mul i32 %316, 15, !dbg !450
  %320 = add i32 %319, -15, !dbg !450
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %321 = add nsw i32 %320, %314, !dbg !451
  call void @llvm.dbg.value(metadata i32 %321, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %321, i32* %score, align 4, !dbg !451, !tbaa !105
  br label %322, !dbg !452

; <label>:322                                     ; preds = %318, %313
  %323 = phi i32 [ %321, %318 ], [ %314, %313 ]
  %324 = sext i32 %58 to i64, !dbg !453
  br i1 %303, label %325, label %._crit_edge67, !dbg !455

; <label>:325                                     ; preds = %322
  %326 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %324, !dbg !453
  %327 = load i32* %326, align 4, !dbg !453, !tbaa !105
  %328 = icmp sgt i32 %61, %327, !dbg !456
  br i1 %328, label %._crit_edge67, label %329, !dbg !457

; <label>:329                                     ; preds = %325
  %330 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %278, !dbg !458
  %331 = load i32* %330, align 4, !dbg !458, !tbaa !105
  %332 = icmp sgt i32 %61, %331, !dbg !459
  br i1 %332, label %._crit_edge67, label %333, !dbg !460

; <label>:333                                     ; preds = %329
  %334 = sub nsw i32 7, %61, !dbg !461
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %335 = mul i32 %334, -3
  %.neg31 = add i32 %323, -30, !dbg !463
  %336 = add i32 %.neg31, %335, !dbg !464
  call void @llvm.dbg.value(metadata i32 %336, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %336, i32* %score, align 4, !dbg !464, !tbaa !105
  switch i32 %58, label %340 [
    i32 1, label %337
    i32 8, label %337
  ], !dbg !465

; <label>:337                                     ; preds = %333, %333
  %338 = shl i32 %334, 1, !dbg !467
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %.neg33 = add i32 %336, -4, !dbg !468
  %339 = sub i32 %.neg33, %338, !dbg !469
  call void @llvm.dbg.value(metadata i32 %339, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %339, i32* %score, align 4, !dbg !469, !tbaa !105
  br label %340, !dbg !470

; <label>:340                                     ; preds = %333, %337
  %341 = phi i32 [ %336, %333 ], [ %339, %337 ]
  %342 = icmp eq i32 %isolated.1, 0, !dbg !471
  br i1 %342, label %343, label %._crit_edge67, !dbg !473

; <label>:343                                     ; preds = %340
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %344 = add nsw i32 %341, -6, !dbg !474
  call void @llvm.dbg.value(metadata i32 %344, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %344, i32* %score, align 4, !dbg !474, !tbaa !105
  br label %._crit_edge67, !dbg !476

._crit_edge67:                                    ; preds = %322, %340, %329, %325, %343
  %345 = phi i32 [ %341, %340 ], [ %323, %329 ], [ %323, %325 ], [ %344, %343 ], [ %323, %322 ]
  %346 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %324, !dbg !477
  %347 = load i32* %346, align 4, !dbg !477, !tbaa !105
  %348 = icmp eq i32 %347, 0, !dbg !477
  br i1 %348, label %349, label %461, !dbg !479

; <label>:349                                     ; preds = %._crit_edge67
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %350 = add nsw i32 %345, 20, !dbg !480
  call void @llvm.dbg.value(metadata i32 %350, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %350, i32* %score, align 4, !dbg !480, !tbaa !105
  br label %461, !dbg !481

; <label>:351                                     ; preds = %54
  %352 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !482
  %353 = load i32* %352, align 4, !dbg !482, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %354 = add nsw i32 %50, %353, !dbg !483
  call void @llvm.dbg.value(metadata i32 %354, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %354, i32* %score, align 4, !dbg !483, !tbaa !105
  %355 = call fastcc i32 @s_rook_mobility(i32 %52) #6, !dbg !484
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %356 = add nsw i32 %354, %355, !dbg !485
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %356, i32* %score, align 4, !dbg !485, !tbaa !105
  br label %461, !dbg !486

; <label>:357                                     ; preds = %54
  %358 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !487
  %359 = load i32* %358, align 4, !dbg !487, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %360 = sub nsw i32 %50, %359, !dbg !488
  call void @llvm.dbg.value(metadata i32 %360, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %360, i32* %score, align 4, !dbg !488, !tbaa !105
  %361 = call fastcc i32 @s_rook_mobility(i32 %52) #6, !dbg !489
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %362 = sub nsw i32 %360, %361, !dbg !490
  call void @llvm.dbg.value(metadata i32 %362, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %362, i32* %score, align 4, !dbg !490, !tbaa !105
  br label %461, !dbg !491

; <label>:363                                     ; preds = %54
  %364 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !492
  %365 = load i32* %364, align 4, !dbg !492, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %366 = add nsw i32 %50, %365, !dbg !493
  call void @llvm.dbg.value(metadata i32 %366, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %366, i32* %score, align 4, !dbg !493, !tbaa !105
  %367 = call fastcc i32 @s_bishop_mobility(i32 %52) #6, !dbg !494
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %368 = add nsw i32 %366, %367, !dbg !495
  call void @llvm.dbg.value(metadata i32 %368, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %368, i32* %score, align 4, !dbg !495, !tbaa !105
  %369 = icmp eq i32 %wb.037, 0, !dbg !496
  %.phi.trans.insert64 = getelementptr inbounds [144 x i32]* @sqcolor, i64 0, i64 %56
  %.pre65 = load i32* %.phi.trans.insert64, align 4, !dbg !498, !tbaa !105
  br i1 %369, label %._crit_edge63, label %370, !dbg !499

; <label>:370                                     ; preds = %363
  %371 = icmp eq i32 %.pre65, %wbc.039, !dbg !500
  call void @llvm.dbg.value(metadata i32 99, i64 0, metadata !36, metadata !100), !dbg !109
  %wb.0. = select i1 %371, i32 %wb.037, i32 99, !dbg !503
  br label %._crit_edge63, !dbg !503

._crit_edge63:                                    ; preds = %363, %370
  %wb.1 = phi i32 [ %wb.0., %370 ], [ 0, %363 ]
  %372 = add nsw i32 %wb.1, 1, !dbg !504
  call void @llvm.dbg.value(metadata i32 %372, i64 0, metadata !36, metadata !100), !dbg !109
  call void @llvm.dbg.value(metadata i32 %.pre65, i64 0, metadata !38, metadata !100), !dbg !111
  br label %461, !dbg !505

; <label>:373                                     ; preds = %54
  %374 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !506
  %375 = load i32* %374, align 4, !dbg !506, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %376 = sub nsw i32 %50, %375, !dbg !507
  call void @llvm.dbg.value(metadata i32 %376, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %376, i32* %score, align 4, !dbg !507, !tbaa !105
  %377 = call fastcc i32 @s_bishop_mobility(i32 %52) #6, !dbg !508
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %378 = sub nsw i32 %376, %377, !dbg !509
  call void @llvm.dbg.value(metadata i32 %378, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %378, i32* %score, align 4, !dbg !509, !tbaa !105
  %379 = icmp eq i32 %bb.038, 0, !dbg !510
  %.phi.trans.insert = getelementptr inbounds [144 x i32]* @sqcolor, i64 0, i64 %56
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !512, !tbaa !105
  br i1 %379, label %._crit_edge62, label %380, !dbg !513

; <label>:380                                     ; preds = %373
  %381 = icmp eq i32 %.pre, %bbc.040, !dbg !514
  call void @llvm.dbg.value(metadata i32 99, i64 0, metadata !37, metadata !100), !dbg !110
  %bb.0. = select i1 %381, i32 %bb.038, i32 99, !dbg !517
  br label %._crit_edge62, !dbg !517

._crit_edge62:                                    ; preds = %373, %380
  %bb.1 = phi i32 [ %bb.0., %380 ], [ 0, %373 ]
  %382 = add nsw i32 %bb.1, 1, !dbg !518
  call void @llvm.dbg.value(metadata i32 %382, i64 0, metadata !37, metadata !100), !dbg !110
  call void @llvm.dbg.value(metadata i32 %.pre, i64 0, metadata !39, metadata !100), !dbg !112
  br label %461, !dbg !519

; <label>:383                                     ; preds = %54
  %384 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !520
  %385 = load i32* %384, align 4, !dbg !520, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %386 = add nsw i32 %50, %385, !dbg !521
  call void @llvm.dbg.value(metadata i32 %386, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %386, i32* %score, align 4, !dbg !521, !tbaa !105
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !74, metadata !100), !dbg !522
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !76, metadata !100), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !75, metadata !100), !dbg !525
  br label %387, !dbg !526

; <label>:387                                     ; preds = %387, %383
  %indvars.iv.i = phi i64 [ 0, %383 ], [ %indvars.iv.next.i, %387 ], !dbg !528
  %m.02.i = phi i32 [ 0, %383 ], [ %.m.0.i, %387 ], !dbg !528
  %388 = getelementptr inbounds [8 x i32]* @knight_o, i64 0, i64 %indvars.iv.i, !dbg !529
  %389 = load i32* %388, align 4, !dbg !529, !tbaa !105
  %390 = add nsw i32 %389, %52, !dbg !533
  %391 = sext i32 %390 to i64, !dbg !534
  %392 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %391, !dbg !534
  %393 = load i32* %392, align 4, !dbg !534, !tbaa !105
  %394 = icmp eq i32 %393, 13, !dbg !535
  %395 = zext i1 %394 to i32, !dbg !536
  %.m.0.i = add nsw i32 %395, %m.02.i, !dbg !536
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !526
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !526
  br i1 %exitcond.i, label %s_knight_mobility.exit, label %387, !dbg !526

s_knight_mobility.exit:                           ; preds = %387
  %396 = shl i32 %.m.0.i, 2, !dbg !537
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %397 = add nsw i32 %386, %396, !dbg !538
  call void @llvm.dbg.value(metadata i32 %397, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %397, i32* %score, align 4, !dbg !538, !tbaa !105
  br label %461, !dbg !539

; <label>:398                                     ; preds = %54
  %399 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !540
  %400 = load i32* %399, align 4, !dbg !540, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %401 = sub nsw i32 %50, %400, !dbg !541
  call void @llvm.dbg.value(metadata i32 %401, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %401, i32* %score, align 4, !dbg !541, !tbaa !105
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !74, metadata !100), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !76, metadata !100), !dbg !544
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !75, metadata !100), !dbg !545
  br label %402, !dbg !546

; <label>:402                                     ; preds = %402, %398
  %indvars.iv.i12 = phi i64 [ 0, %398 ], [ %indvars.iv.next.i15, %402 ], !dbg !547
  %m.02.i13 = phi i32 [ 0, %398 ], [ %.m.0.i14, %402 ], !dbg !547
  %403 = getelementptr inbounds [8 x i32]* @knight_o, i64 0, i64 %indvars.iv.i12, !dbg !548
  %404 = load i32* %403, align 4, !dbg !548, !tbaa !105
  %405 = add nsw i32 %404, %52, !dbg !549
  %406 = sext i32 %405 to i64, !dbg !550
  %407 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %406, !dbg !550
  %408 = load i32* %407, align 4, !dbg !550, !tbaa !105
  %409 = icmp eq i32 %408, 13, !dbg !551
  %410 = zext i1 %409 to i32, !dbg !552
  %.m.0.i14 = add nsw i32 %410, %m.02.i13, !dbg !552
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i12, 1, !dbg !546
  %exitcond.i16 = icmp eq i64 %indvars.iv.next.i15, 8, !dbg !546
  br i1 %exitcond.i16, label %s_knight_mobility.exit17, label %402, !dbg !546

s_knight_mobility.exit17:                         ; preds = %402
  %411 = shl i32 %.m.0.i14, 2, !dbg !553
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %412 = sub nsw i32 %401, %411, !dbg !554
  call void @llvm.dbg.value(metadata i32 %412, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %412, i32* %score, align 4, !dbg !554, !tbaa !105
  br label %461, !dbg !555

; <label>:413                                     ; preds = %54
  %414 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !556
  %415 = load i32* %414, align 4, !dbg !556, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %416 = add nsw i32 %50, %415, !dbg !557
  call void @llvm.dbg.value(metadata i32 %416, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %416, i32* %score, align 4, !dbg !557, !tbaa !105
  %417 = call fastcc i32 @s_rook_mobility(i32 %52) #6, !dbg !558
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %418 = add nsw i32 %416, %417, !dbg !559
  call void @llvm.dbg.value(metadata i32 %418, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %418, i32* %score, align 4, !dbg !559, !tbaa !105
  %419 = call fastcc i32 @s_bishop_mobility(i32 %52) #6, !dbg !560
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %420 = add nsw i32 %418, %419, !dbg !561
  call void @llvm.dbg.value(metadata i32 %420, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %420, i32* %score, align 4, !dbg !561, !tbaa !105
  br label %461, !dbg !562

; <label>:421                                     ; preds = %54
  %422 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !563
  %423 = load i32* %422, align 4, !dbg !563, !tbaa !105
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %424 = sub nsw i32 %50, %423, !dbg !564
  call void @llvm.dbg.value(metadata i32 %424, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %424, i32* %score, align 4, !dbg !564, !tbaa !105
  %425 = call fastcc i32 @s_rook_mobility(i32 %52) #6, !dbg !565
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %426 = sub nsw i32 %424, %425, !dbg !566
  call void @llvm.dbg.value(metadata i32 %426, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %426, i32* %score, align 4, !dbg !566, !tbaa !105
  %427 = call fastcc i32 @s_bishop_mobility(i32 %52) #6, !dbg !567
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %428 = sub nsw i32 %426, %427, !dbg !568
  call void @llvm.dbg.value(metadata i32 %428, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %428, i32* %score, align 4, !dbg !568, !tbaa !105
  br label %461, !dbg !569

; <label>:429                                     ; preds = %54
  %430 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !570
  %431 = load i32* %430, align 4, !dbg !570, !tbaa !105
  %432 = ashr i32 %431, 1, !dbg !571
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %433 = add nsw i32 %50, %432, !dbg !572
  call void @llvm.dbg.value(metadata i32 %433, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %433, i32* %score, align 4, !dbg !572, !tbaa !105
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !79, metadata !100), !dbg !573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !81, metadata !100), !dbg !575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !80, metadata !100), !dbg !576
  br label %434, !dbg !577

; <label>:434                                     ; preds = %434, %429
  %indvars.iv.i18 = phi i64 [ 0, %429 ], [ %indvars.iv.next.i21, %434 ], !dbg !579
  %m.02.i19 = phi i32 [ 0, %429 ], [ %.m.0.i20, %434 ], !dbg !579
  %435 = getelementptr inbounds [8 x i32]* @king_o, i64 0, i64 %indvars.iv.i18, !dbg !580
  %436 = load i32* %435, align 4, !dbg !580, !tbaa !105
  %437 = add nsw i32 %436, %52, !dbg !584
  %438 = sext i32 %437 to i64, !dbg !585
  %439 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %438, !dbg !585
  %440 = load i32* %439, align 4, !dbg !585, !tbaa !105
  %441 = icmp eq i32 %440, 13, !dbg !586
  %442 = zext i1 %441 to i32, !dbg !587
  %.m.0.i20 = add nsw i32 %442, %m.02.i19, !dbg !587
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i18, 1, !dbg !577
  %exitcond.i22 = icmp eq i64 %indvars.iv.next.i21, 8, !dbg !577
  br i1 %exitcond.i22, label %s_king_mobility.exit, label %434, !dbg !577

s_king_mobility.exit:                             ; preds = %434
  %443 = shl i32 %.m.0.i20, 2, !dbg !588
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %444 = add nsw i32 %433, %443, !dbg !589
  call void @llvm.dbg.value(metadata i32 %444, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %444, i32* %score, align 4, !dbg !589, !tbaa !105
  br label %461, !dbg !590

; <label>:445                                     ; preds = %54
  %446 = getelementptr inbounds [144 x i32]* @scentral, i64 0, i64 %56, !dbg !591
  %447 = load i32* %446, align 4, !dbg !591, !tbaa !105
  %448 = ashr i32 %447, 1, !dbg !592
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %449 = sub nsw i32 %50, %448, !dbg !593
  call void @llvm.dbg.value(metadata i32 %449, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %449, i32* %score, align 4, !dbg !593, !tbaa !105
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !79, metadata !100), !dbg !594
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !81, metadata !100), !dbg !596
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !80, metadata !100), !dbg !597
  br label %450, !dbg !598

; <label>:450                                     ; preds = %450, %445
  %indvars.iv.i23 = phi i64 [ 0, %445 ], [ %indvars.iv.next.i26, %450 ], !dbg !599
  %m.02.i24 = phi i32 [ 0, %445 ], [ %.m.0.i25, %450 ], !dbg !599
  %451 = getelementptr inbounds [8 x i32]* @king_o, i64 0, i64 %indvars.iv.i23, !dbg !600
  %452 = load i32* %451, align 4, !dbg !600, !tbaa !105
  %453 = add nsw i32 %452, %52, !dbg !601
  %454 = sext i32 %453 to i64, !dbg !602
  %455 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %454, !dbg !602
  %456 = load i32* %455, align 4, !dbg !602, !tbaa !105
  %457 = icmp eq i32 %456, 13, !dbg !603
  %458 = zext i1 %457 to i32, !dbg !604
  %.m.0.i25 = add nsw i32 %458, %m.02.i24, !dbg !604
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i23, 1, !dbg !598
  %exitcond.i27 = icmp eq i64 %indvars.iv.next.i26, 8, !dbg !598
  br i1 %exitcond.i27, label %s_king_mobility.exit28, label %450, !dbg !598

s_king_mobility.exit28:                           ; preds = %450
  %459 = shl i32 %.m.0.i25, 2, !dbg !605
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %460 = sub nsw i32 %449, %459, !dbg !606
  call void @llvm.dbg.value(metadata i32 %460, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %460, i32* %score, align 4, !dbg !606, !tbaa !105
  br label %461, !dbg !607

; <label>:461                                     ; preds = %._crit_edge68, %._crit_edge67, %.lr.ph, %351, %357, %._crit_edge63, %._crit_edge62, %s_knight_mobility.exit, %s_knight_mobility.exit17, %413, %421, %s_king_mobility.exit, %s_king_mobility.exit28, %54, %205, %349
  %462 = phi i32 [ %50, %54 ], [ %460, %s_king_mobility.exit28 ], [ %444, %s_king_mobility.exit ], [ %428, %421 ], [ %420, %413 ], [ %412, %s_knight_mobility.exit17 ], [ %397, %s_knight_mobility.exit ], [ %378, %._crit_edge62 ], [ %368, %._crit_edge63 ], [ %362, %357 ], [ %356, %351 ], [ %345, %._crit_edge67 ], [ %350, %349 ], [ %201, %._crit_edge68 ], [ %206, %205 ], [ %50, %.lr.ph ]
  %a.3 = phi i32 [ %55, %54 ], [ %55, %s_king_mobility.exit28 ], [ %55, %s_king_mobility.exit ], [ %55, %421 ], [ %55, %413 ], [ %55, %s_knight_mobility.exit17 ], [ %55, %s_knight_mobility.exit ], [ %55, %._crit_edge62 ], [ %55, %._crit_edge63 ], [ %55, %357 ], [ %55, %351 ], [ %55, %._crit_edge67 ], [ %55, %349 ], [ %55, %._crit_edge68 ], [ %55, %205 ], [ %a.235, %.lr.ph ]
  %wb.2 = phi i32 [ %wb.037, %54 ], [ %wb.037, %s_king_mobility.exit28 ], [ %wb.037, %s_king_mobility.exit ], [ %wb.037, %421 ], [ %wb.037, %413 ], [ %wb.037, %s_knight_mobility.exit17 ], [ %wb.037, %s_knight_mobility.exit ], [ %wb.037, %._crit_edge62 ], [ %372, %._crit_edge63 ], [ %wb.037, %357 ], [ %wb.037, %351 ], [ %wb.037, %._crit_edge67 ], [ %wb.037, %349 ], [ %wb.037, %._crit_edge68 ], [ %wb.037, %205 ], [ %wb.037, %.lr.ph ]
  %bb.2 = phi i32 [ %bb.038, %54 ], [ %bb.038, %s_king_mobility.exit28 ], [ %bb.038, %s_king_mobility.exit ], [ %bb.038, %421 ], [ %bb.038, %413 ], [ %bb.038, %s_knight_mobility.exit17 ], [ %bb.038, %s_knight_mobility.exit ], [ %382, %._crit_edge62 ], [ %bb.038, %._crit_edge63 ], [ %bb.038, %357 ], [ %bb.038, %351 ], [ %bb.038, %._crit_edge67 ], [ %bb.038, %349 ], [ %bb.038, %._crit_edge68 ], [ %bb.038, %205 ], [ %bb.038, %.lr.ph ]
  %wbc.1 = phi i32 [ %wbc.039, %54 ], [ %wbc.039, %s_king_mobility.exit28 ], [ %wbc.039, %s_king_mobility.exit ], [ %wbc.039, %421 ], [ %wbc.039, %413 ], [ %wbc.039, %s_knight_mobility.exit17 ], [ %wbc.039, %s_knight_mobility.exit ], [ %wbc.039, %._crit_edge62 ], [ %.pre65, %._crit_edge63 ], [ %wbc.039, %357 ], [ %wbc.039, %351 ], [ %wbc.039, %._crit_edge67 ], [ %wbc.039, %349 ], [ %wbc.039, %._crit_edge68 ], [ %wbc.039, %205 ], [ %wbc.039, %.lr.ph ]
  %bbc.1 = phi i32 [ %bbc.040, %54 ], [ %bbc.040, %s_king_mobility.exit28 ], [ %bbc.040, %s_king_mobility.exit ], [ %bbc.040, %421 ], [ %bbc.040, %413 ], [ %bbc.040, %s_knight_mobility.exit17 ], [ %bbc.040, %s_knight_mobility.exit ], [ %.pre, %._crit_edge62 ], [ %bbc.040, %._crit_edge63 ], [ %bbc.040, %357 ], [ %bbc.040, %351 ], [ %bbc.040, %._crit_edge67 ], [ %bbc.040, %349 ], [ %bbc.040, %._crit_edge68 ], [ %bbc.040, %205 ], [ %bbc.040, %.lr.ph ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !148
  %463 = load i32* @piece_count, align 4, !dbg !608, !tbaa !105
  %464 = icmp sgt i32 %a.3, %463, !dbg !609
  br i1 %464, label %._crit_edge, label %.lr.ph, !dbg !148

._crit_edge:                                      ; preds = %461, %.preheader34, %.preheader
  %465 = phi i32 [ %11, %.preheader ], [ %11, %.preheader34 ], [ %462, %461 ]
  %.lcssa = phi i32 [ %12, %.preheader ], [ %12, %.preheader34 ], [ %463, %461 ]
  %bbc.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %bbc.1, %461 ]
  %wbc.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %wbc.1, %461 ]
  %bb.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %bb.2, %461 ]
  %wb.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %wb.2, %461 ]
  %466 = icmp slt i32 %wb.0.lcssa, 99, !dbg !610
  %467 = icmp slt i32 %bb.0.lcssa, 99, !dbg !612
  %or.cond = and i1 %466, %467, !dbg !613
  br i1 %or.cond, label %468, label %477, !dbg !613

; <label>:468                                     ; preds = %._crit_edge
  %469 = icmp ne i32 %wbc.0.lcssa, %bbc.0.lcssa, !dbg !614
  %470 = icmp slt i32 %.lcssa, 32, !dbg !615
  %or.cond3 = and i1 %469, %470, !dbg !616
  br i1 %or.cond3, label %471, label %477, !dbg !616

; <label>:471                                     ; preds = %468
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %472 = sitofp i32 %465 to float, !dbg !617
  %473 = sitofp i32 %.lcssa to float, !dbg !619
  %474 = fmul float %473, 3.125000e-02, !dbg !620
  %475 = fmul float %474, %472, !dbg !621
  %476 = fptosi float %475 to i32, !dbg !622
  call void @llvm.dbg.value(metadata i32 %476, i64 0, metadata !34, metadata !100), !dbg !104
  store i32 %476, i32* %score, align 4, !dbg !623, !tbaa !105
  br label %477, !dbg !624

; <label>:477                                     ; preds = %471, %468, %._crit_edge
  %478 = phi i32 [ %476, %471 ], [ %465, %468 ], [ %465, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  call void @storeECache(i32 %478) #7, !dbg !625
  %479 = load i32* @white_to_move, align 4, !dbg !626, !tbaa !105
  %480 = icmp eq i32 %479, 1, !dbg !628
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !34, metadata !100), !dbg !104
  %481 = load i32* %score, align 4, !dbg !629, !tbaa !105
  %482 = sub nsw i32 0, %481, !dbg !631
  %.5 = select i1 %480, i32 %481, i32 %482, !dbg !633
  br label %483, !dbg !633

; <label>:483                                     ; preds = %477, %6
  %.0 = phi i32 [ %.4, %6 ], [ %.5, %477 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #2, !dbg !634
  call void @llvm.lifetime.end(i64 44, i8* %1) #2, !dbg !634
  call void @llvm.lifetime.end(i64 88, i8* %3) #2, !dbg !634
  ret i32 %.0, !dbg !634
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @s_pawn_mobility(i32 %square) #5 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !52, metadata !100), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !53, metadata !100), !dbg !636
  %1 = sext i32 %square to i64, !dbg !637
  %2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %1, !dbg !637
  %3 = load i32* %2, align 4, !dbg !637, !tbaa !105
  %4 = icmp eq i32 %3, 1, !dbg !639
  br i1 %4, label %5, label %11, !dbg !640

; <label>:5                                       ; preds = %0
  %6 = add nsw i32 %square, 12, !dbg !641
  %7 = sext i32 %6 to i64, !dbg !644
  %8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %7, !dbg !644
  %9 = load i32* %8, align 4, !dbg !644, !tbaa !105
  %10 = icmp eq i32 %9, 13, !dbg !645
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !53, metadata !100), !dbg !636
  %. = select i1 %10, i32 8, i32 0, !dbg !646
  ret i32 %., !dbg !646

; <label>:11                                      ; preds = %0
  %12 = add nsw i32 %square, -12, !dbg !647
  %13 = sext i32 %12 to i64, !dbg !650
  %14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %13, !dbg !650
  %15 = load i32* %14, align 4, !dbg !650, !tbaa !105
  %16 = icmp eq i32 %15, 13, !dbg !651
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !53, metadata !100), !dbg !636
  %.1 = select i1 %16, i32 8, i32 0, !dbg !652
  ret i32 %.1, !dbg !653
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @s_rook_mobility(i32 %square) #5 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !64, metadata !100), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !66, metadata !100), !dbg !655
  %1 = sext i32 %square to i64
  br label %2, !dbg !656

; <label>:2                                       ; preds = %2, %0
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %2 ], [ %1, %0 ]
  %m.0 = phi i32 [ %6, %2 ], [ 0, %0 ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -12, !dbg !658
  %3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next8, !dbg !659
  %4 = load i32* %3, align 4, !dbg !659, !tbaa !105
  %5 = icmp eq i32 %4, 13, !dbg !661
  %6 = add nuw nsw i32 %m.0, 1, !dbg !662
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !66, metadata !100), !dbg !655
  br i1 %5, label %2, label %.preheader2, !dbg !658

.preheader2:                                      ; preds = %2, %.preheader2
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %.preheader2 ], [ %1, %2 ]
  %m.1 = phi i32 [ %10, %.preheader2 ], [ %m.0, %2 ]
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1, !dbg !663
  %7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next6, !dbg !665
  %8 = load i32* %7, align 4, !dbg !665, !tbaa !105
  %9 = icmp eq i32 %8, 13, !dbg !667
  %10 = add nsw i32 %m.1, 1, !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !66, metadata !100), !dbg !655
  br i1 %9, label %.preheader2, label %.preheader1, !dbg !663

.preheader1:                                      ; preds = %.preheader2, %.preheader1
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %.preheader1 ], [ %1, %.preheader2 ]
  %m.2 = phi i32 [ %14, %.preheader1 ], [ %m.1, %.preheader2 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1, !dbg !669
  %11 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next4, !dbg !671
  %12 = load i32* %11, align 4, !dbg !671, !tbaa !105
  %13 = icmp eq i32 %12, 13, !dbg !673
  %14 = add nsw i32 %m.2, 1, !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !66, metadata !100), !dbg !655
  br i1 %13, label %.preheader1, label %.preheader, !dbg !669

.preheader:                                       ; preds = %.preheader1, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %1, %.preheader1 ]
  %m.3 = phi i32 [ %18, %.preheader ], [ %m.2, %.preheader1 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 12, !dbg !675
  %15 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !677
  %16 = load i32* %15, align 4, !dbg !677, !tbaa !105
  %17 = icmp eq i32 %16, 13, !dbg !679
  %18 = add nsw i32 %m.3, 1, !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !66, metadata !100), !dbg !655
  br i1 %17, label %.preheader, label %19, !dbg !675

; <label>:19                                      ; preds = %.preheader
  %20 = shl i32 %m.3, 2, !dbg !681
  ret i32 %20, !dbg !682
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @s_bishop_mobility(i32 %square) #5 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !69, metadata !100), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !71, metadata !100), !dbg !684
  %1 = sext i32 %square to i64
  br label %2, !dbg !685

; <label>:2                                       ; preds = %2, %0
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %2 ], [ %1, %0 ]
  %m.0 = phi i32 [ %6, %2 ], [ 0, %0 ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -13, !dbg !687
  %3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next8, !dbg !688
  %4 = load i32* %3, align 4, !dbg !688, !tbaa !105
  %5 = icmp eq i32 %4, 13, !dbg !690
  %6 = add nuw nsw i32 %m.0, 1, !dbg !691
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !71, metadata !100), !dbg !684
  br i1 %5, label %2, label %.preheader2, !dbg !687

.preheader2:                                      ; preds = %2, %.preheader2
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %.preheader2 ], [ %1, %2 ]
  %m.1 = phi i32 [ %10, %.preheader2 ], [ %m.0, %2 ]
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -11, !dbg !692
  %7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next6, !dbg !694
  %8 = load i32* %7, align 4, !dbg !694, !tbaa !105
  %9 = icmp eq i32 %8, 13, !dbg !696
  %10 = add nsw i32 %m.1, 1, !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !71, metadata !100), !dbg !684
  br i1 %9, label %.preheader2, label %.preheader1, !dbg !692

.preheader1:                                      ; preds = %.preheader2, %.preheader1
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %.preheader1 ], [ %1, %.preheader2 ]
  %m.2 = phi i32 [ %14, %.preheader1 ], [ %m.1, %.preheader2 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 11, !dbg !698
  %11 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next4, !dbg !700
  %12 = load i32* %11, align 4, !dbg !700, !tbaa !105
  %13 = icmp eq i32 %12, 13, !dbg !702
  %14 = add nsw i32 %m.2, 1, !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !71, metadata !100), !dbg !684
  br i1 %13, label %.preheader1, label %.preheader, !dbg !698

.preheader:                                       ; preds = %.preheader1, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %1, %.preheader1 ]
  %m.3 = phi i32 [ %18, %.preheader ], [ %m.2, %.preheader1 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 13, !dbg !704
  %15 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !706
  %16 = load i32* %15, align 4, !dbg !706, !tbaa !105
  %17 = icmp eq i32 %16, 13, !dbg !708
  %18 = add nsw i32 %m.3, 1, !dbg !709
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !71, metadata !100), !dbg !684
  br i1 %17, label %.preheader, label %19, !dbg !704

; <label>:19                                      ; preds = %.preheader
  %20 = shl i32 %m.3, 2, !dbg !710
  ret i32 %20, !dbg !711
}

; Function Attrs: optsize
declare void @storeECache(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #3

; Function Attrs: optsize
declare i32 @calc_attackers(i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!93, !94, !95}
!llvm.ident = !{!96}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !11, globals: !82, imports: !15)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/seval.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!11 = !{!12, !16, !48, !54, !58, !62, !67, !72, !77}
!12 = !DISubprogram(name: "suicide_eval", scope: !1, file: !1, line: 268, type: !13, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @suicide_eval, variables: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!9}
!15 = !{}
!16 = !DISubprogram(name: "suicide_mid_eval", scope: !1, file: !1, line: 274, type: !13, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @suicide_mid_eval, variables: !17)
!17 = !{!18, !19, !20, !25, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srank", scope: !16, file: !1, line: 278, type: !9)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawn_file", scope: !16, file: !1, line: 278, type: !9)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawns", scope: !16, file: !1, line: 278, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 704, align: 32, elements: !22)
!22 = !{!23, !24}
!23 = !DISubrange(count: 2)
!24 = !DISubrange(count: 11)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "white_back_pawn", scope: !16, file: !1, line: 278, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 352, align: 32, elements: !27)
!27 = !{!24}
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "black_back_pawn", scope: !16, file: !1, line: 278, type: !26)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isolated", scope: !16, file: !1, line: 279, type: !9)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "backwards", scope: !16, file: !1, line: 279, type: !9)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !16, file: !1, line: 279, type: !9)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !16, file: !1, line: 279, type: !9)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !16, file: !1, line: 279, type: !9)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !16, file: !1, line: 280, type: !9)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_cache", scope: !16, file: !1, line: 281, type: !9)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wb", scope: !16, file: !1, line: 282, type: !9)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bb", scope: !16, file: !1, line: 282, type: !9)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wbc", scope: !16, file: !1, line: 282, type: !9)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bbc", scope: !16, file: !1, line: 282, type: !9)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wk", scope: !16, file: !1, line: 283, type: !9)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bk", scope: !16, file: !1, line: 283, type: !9)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !16, file: !1, line: 283, type: !9)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "br", scope: !16, file: !1, line: 283, type: !9)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wn", scope: !16, file: !1, line: 284, type: !9)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bn", scope: !16, file: !1, line: 284, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wp", scope: !16, file: !1, line: 284, type: !9)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bp", scope: !16, file: !1, line: 284, type: !9)
!48 = !DISubprogram(name: "s_pawn_mobility", scope: !1, file: !1, line: 79, type: !49, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @s_pawn_mobility, variables: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{!9, !9}
!51 = !{!52, !53}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !48, file: !1, line: 79, type: !9)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !48, file: !1, line: 81, type: !9)
!54 = !DISubprogram(name: "black_saccers", scope: !1, file: !1, line: 107, type: !49, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, variables: !55)
!55 = !{!56, !57}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !54, file: !1, line: 107, type: !9)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !54, file: !1, line: 109, type: !9)
!58 = !DISubprogram(name: "white_saccers", scope: !1, file: !1, line: 186, type: !49, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, variables: !59)
!59 = !{!60, !61}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !58, file: !1, line: 186, type: !9)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !58, file: !1, line: 191, type: !9)
!62 = !DISubprogram(name: "s_rook_mobility", scope: !1, file: !1, line: 50, type: !49, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @s_rook_mobility, variables: !63)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !62, file: !1, line: 50, type: !9)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !62, file: !1, line: 52, type: !9)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !62, file: !1, line: 53, type: !9)
!67 = !DISubprogram(name: "s_bishop_mobility", scope: !1, file: !1, line: 33, type: !49, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @s_bishop_mobility, variables: !68)
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !67, file: !1, line: 33, type: !9)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !67, file: !1, line: 35, type: !9)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !67, file: !1, line: 36, type: !9)
!72 = !DISubprogram(name: "s_knight_mobility", scope: !1, file: !1, line: 67, type: !49, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, variables: !73)
!73 = !{!74, !75, !76}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !72, file: !1, line: 67, type: !9)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !72, file: !1, line: 69, type: !9)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !72, file: !1, line: 69, type: !9)
!77 = !DISubprogram(name: "s_king_mobility", scope: !1, file: !1, line: 95, type: !49, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, variables: !78)
!78 = !{!79, !80, !81}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !77, file: !1, line: 95, type: !9)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !77, file: !1, line: 97, type: !9)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !77, file: !1, line: 97, type: !9)
!82 = !{!83, !87, !92}
!83 = !DIGlobalVariable(name: "scentral", scope: !0, file: !1, line: 14, type: !84, isLocal: true, isDefinition: true, variable: [144 x i32]* @scentral)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 4608, align: 32, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 144)
!87 = !DIGlobalVariable(name: "knight_o", scope: !0, file: !1, line: 30, type: !88, isLocal: true, isDefinition: true, variable: [8 x i32]* @knight_o)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, align: 32, elements: !90)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!90 = !{!91}
!91 = !DISubrange(count: 8)
!92 = !DIGlobalVariable(name: "king_o", scope: !0, file: !1, line: 31, type: !88, isLocal: true, isDefinition: true, variable: [8 x i32]* @king_o)
!93 = !{i32 2, !"Dwarf Version", i32 2}
!94 = !{i32 2, !"Debug Info Version", i32 700000003}
!95 = !{i32 1, !"PIC Level", i32 2}
!96 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!97 = !DILocation(line: 271, column: 11, scope: !12)
!98 = !DILocation(line: 271, column: 3, scope: !12)
!99 = !DILocation(line: 278, column: 3, scope: !16)
!100 = !DIExpression()
!101 = !DILocation(line: 278, column: 25, scope: !16)
!102 = !DILocation(line: 278, column: 39, scope: !16)
!103 = !DILocation(line: 278, column: 60, scope: !16)
!104 = !DILocation(line: 280, column: 7, scope: !16)
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !DILocation(line: 282, column: 7, scope: !16)
!110 = !DILocation(line: 282, column: 15, scope: !16)
!111 = !DILocation(line: 282, column: 23, scope: !16)
!112 = !DILocation(line: 282, column: 32, scope: !16)
!113 = !DILocation(line: 283, column: 7, scope: !16)
!114 = !DILocation(line: 283, column: 15, scope: !16)
!115 = !DILocation(line: 283, column: 23, scope: !16)
!116 = !DILocation(line: 283, column: 31, scope: !16)
!117 = !DILocation(line: 284, column: 7, scope: !16)
!118 = !DILocation(line: 284, column: 15, scope: !16)
!119 = !DILocation(line: 284, column: 23, scope: !16)
!120 = !DILocation(line: 284, column: 31, scope: !16)
!121 = !DILocation(line: 281, column: 7, scope: !16)
!122 = !DILocation(line: 286, column: 12, scope: !16)
!123 = !DILocation(line: 288, column: 3, scope: !16)
!124 = !DILocation(line: 290, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !16, file: !1, line: 290, column: 6)
!126 = !DILocation(line: 290, column: 6, scope: !16)
!127 = !DILocation(line: 292, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 292, column: 11)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 291, column: 5)
!130 = !DILocation(line: 292, column: 25, scope: !128)
!131 = !DILocation(line: 292, column: 38, scope: !128)
!132 = !DILocation(line: 293, column: 14, scope: !129)
!133 = !DILocation(line: 292, column: 11, scope: !129)
!134 = !DILocation(line: 296, column: 11, scope: !16)
!135 = !DILocation(line: 296, column: 9, scope: !16)
!136 = !DILocation(line: 301, column: 3, scope: !16)
!137 = !DILocation(line: 279, column: 28, scope: !16)
!138 = !DILocation(line: 303, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 302, column: 28)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 302, column: 3)
!141 = distinct !DILexicalBlock(scope: !16, file: !1, line: 302, column: 3)
!142 = !DILocation(line: 304, column: 24, scope: !139)
!143 = !DILocation(line: 306, column: 28, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 306, column: 3)
!145 = distinct !DILexicalBlock(scope: !16, file: !1, line: 306, column: 3)
!146 = !DILocation(line: 306, column: 25, scope: !144)
!147 = !DILocation(line: 306, column: 3, scope: !145)
!148 = !DILocation(line: 334, column: 3, scope: !149)
!149 = distinct !DILexicalBlock(scope: !16, file: !1, line: 334, column: 3)
!150 = !DILocation(line: 307, column: 10, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !1, line: 306, column: 47)
!152 = !DILocation(line: 309, column: 10, scope: !153)
!153 = distinct !DILexicalBlock(scope: !151, file: !1, line: 309, column: 9)
!154 = !DILocation(line: 309, column: 9, scope: !151)
!155 = !DILocation(line: 312, column: 8, scope: !153)
!156 = !DILocation(line: 279, column: 31, scope: !16)
!157 = !DILocation(line: 314, column: 5, scope: !151)
!158 = !{!"branch_weights", i32 64, i32 4}
!159 = !DILocation(line: 316, column: 17, scope: !151)
!160 = !DILocation(line: 316, column: 25, scope: !151)
!161 = !DILocation(line: 278, column: 14, scope: !16)
!162 = !DILocation(line: 317, column: 13, scope: !151)
!163 = !DILocation(line: 278, column: 7, scope: !16)
!164 = !DILocation(line: 318, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !151, file: !1, line: 318, column: 9)
!166 = !DILocation(line: 318, column: 9, scope: !151)
!167 = !DILocation(line: 319, column: 7, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 318, column: 28)
!169 = !DILocation(line: 319, column: 26, scope: !168)
!170 = !DILocation(line: 320, column: 19, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !1, line: 320, column: 11)
!172 = !DILocation(line: 320, column: 17, scope: !171)
!173 = !DILocation(line: 320, column: 11, scope: !168)
!174 = !DILocation(line: 321, column: 29, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 320, column: 47)
!176 = !DILocation(line: 322, column: 7, scope: !175)
!177 = !DILocation(line: 325, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 324, column: 33)
!179 = distinct !DILexicalBlock(scope: !165, file: !1, line: 324, column: 14)
!180 = !DILocation(line: 325, column: 26, scope: !178)
!181 = !DILocation(line: 326, column: 19, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 326, column: 11)
!183 = !DILocation(line: 326, column: 17, scope: !182)
!184 = !DILocation(line: 326, column: 11, scope: !178)
!185 = !DILocation(line: 327, column: 29, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 326, column: 47)
!187 = !DILocation(line: 328, column: 7, scope: !186)
!188 = !DILocation(line: 335, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 334, column: 47)
!190 = distinct !DILexicalBlock(scope: !149, file: !1, line: 334, column: 3)
!191 = !DILocation(line: 337, column: 10, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 337, column: 9)
!193 = !DILocation(line: 337, column: 9, scope: !189)
!194 = !DILocation(line: 340, column: 8, scope: !192)
!195 = !DILocation(line: 342, column: 17, scope: !189)
!196 = !DILocation(line: 342, column: 25, scope: !189)
!197 = !DILocation(line: 343, column: 13, scope: !189)
!198 = !DILocation(line: 344, column: 13, scope: !189)
!199 = !DILocation(line: 344, column: 5, scope: !189)
!200 = !DILocation(line: 346, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !189, file: !1, line: 344, column: 23)
!202 = !DILocation(line: 346, column: 8, scope: !201)
!203 = !DILocation(line: 347, column: 11, scope: !201)
!204 = !DILocation(line: 347, column: 8, scope: !201)
!205 = !DILocation(line: 107, column: 30, scope: !54, inlinedAt: !206)
!206 = distinct !DILocation(line: 348, column: 18, scope: !201)
!207 = !DILocation(line: 109, column: 16, scope: !54, inlinedAt: !206)
!208 = !DILocation(line: 117, column: 20, scope: !209, inlinedAt: !206)
!209 = distinct !DILexicalBlock(scope: !54, file: !1, line: 117, column: 7)
!210 = !DILocation(line: 117, column: 7, scope: !209, inlinedAt: !206)
!211 = !DILocation(line: 117, column: 26, scope: !209, inlinedAt: !206)
!212 = !DILocation(line: 117, column: 35, scope: !209, inlinedAt: !206)
!213 = !DILocation(line: 118, column: 20, scope: !209, inlinedAt: !206)
!214 = !DILocation(line: 118, column: 7, scope: !209, inlinedAt: !206)
!215 = !DILocation(line: 118, column: 26, scope: !209, inlinedAt: !206)
!216 = !DILocation(line: 118, column: 35, scope: !209, inlinedAt: !206)
!217 = !DILocation(line: 119, column: 20, scope: !209, inlinedAt: !206)
!218 = !DILocation(line: 119, column: 7, scope: !209, inlinedAt: !206)
!219 = !DILocation(line: 119, column: 26, scope: !209, inlinedAt: !206)
!220 = !DILocation(line: 117, column: 7, scope: !54, inlinedAt: !206)
!221 = !DILocation(line: 126, column: 21, scope: !222, inlinedAt: !206)
!222 = distinct !DILexicalBlock(scope: !54, file: !1, line: 126, column: 7)
!223 = !DILocation(line: 127, column: 7, scope: !222, inlinedAt: !206)
!224 = !DILocation(line: 127, column: 24, scope: !222, inlinedAt: !206)
!225 = !DILocation(line: 127, column: 11, scope: !222, inlinedAt: !206)
!226 = !DILocation(line: 127, column: 30, scope: !222, inlinedAt: !206)
!227 = !DILocation(line: 128, column: 4, scope: !222, inlinedAt: !206)
!228 = !DILocation(line: 129, column: 17, scope: !222, inlinedAt: !206)
!229 = !DILocation(line: 129, column: 4, scope: !222, inlinedAt: !206)
!230 = !DILocation(line: 129, column: 23, scope: !222, inlinedAt: !206)
!231 = !DILocation(line: 126, column: 7, scope: !54, inlinedAt: !206)
!232 = !DILocation(line: 133, column: 25, scope: !233, inlinedAt: !206)
!233 = distinct !DILexicalBlock(scope: !222, file: !1, line: 133, column: 12)
!234 = !DILocation(line: 133, column: 30, scope: !233, inlinedAt: !206)
!235 = !DILocation(line: 134, column: 19, scope: !233, inlinedAt: !206)
!236 = !DILocation(line: 134, column: 6, scope: !233, inlinedAt: !206)
!237 = !DILocation(line: 134, column: 25, scope: !233, inlinedAt: !206)
!238 = !DILocation(line: 134, column: 34, scope: !233, inlinedAt: !206)
!239 = !DILocation(line: 135, column: 19, scope: !233, inlinedAt: !206)
!240 = !DILocation(line: 135, column: 6, scope: !233, inlinedAt: !206)
!241 = !DILocation(line: 135, column: 25, scope: !233, inlinedAt: !206)
!242 = !DILocation(line: 133, column: 12, scope: !222, inlinedAt: !206)
!243 = !DILocation(line: 142, column: 31, scope: !244, inlinedAt: !206)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 141, column: 5)
!245 = distinct !DILexicalBlock(scope: !54, file: !1, line: 140, column: 7)
!246 = !DILocation(line: 142, column: 12, scope: !244, inlinedAt: !206)
!247 = !DILocation(line: 144, column: 7, scope: !54, inlinedAt: !206)
!248 = !DILocation(line: 146, column: 31, scope: !249, inlinedAt: !206)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 145, column: 5)
!250 = distinct !DILexicalBlock(scope: !54, file: !1, line: 144, column: 7)
!251 = !DILocation(line: 146, column: 12, scope: !249, inlinedAt: !206)
!252 = !DILocation(line: 147, column: 5, scope: !249, inlinedAt: !206)
!253 = !DILocation(line: 348, column: 18, scope: !201)
!254 = !DILocation(line: 149, column: 7, scope: !54, inlinedAt: !206)
!255 = !DILocation(line: 159, column: 30, scope: !256, inlinedAt: !206)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 159, column: 8)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 158, column: 2)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 157, column: 11)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 154, column: 5)
!260 = distinct !DILexicalBlock(scope: !54, file: !1, line: 149, column: 7)
!261 = !DILocation(line: 159, column: 8, scope: !256, inlinedAt: !206)
!262 = !DILocation(line: 159, column: 39, scope: !256, inlinedAt: !206)
!263 = !DILocation(line: 162, column: 8, scope: !264, inlinedAt: !206)
!264 = distinct !DILexicalBlock(scope: !256, file: !1, line: 160, column: 6)
!265 = !DILocation(line: 172, column: 30, scope: !266, inlinedAt: !206)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 172, column: 8)
!267 = distinct !DILexicalBlock(scope: !258, file: !1, line: 171, column: 2)
!268 = !DILocation(line: 172, column: 8, scope: !266, inlinedAt: !206)
!269 = !DILocation(line: 172, column: 39, scope: !266, inlinedAt: !206)
!270 = !DILocation(line: 174, column: 8, scope: !271, inlinedAt: !206)
!271 = distinct !DILexicalBlock(scope: !266, file: !1, line: 173, column: 6)
!272 = !DILocation(line: 348, column: 15, scope: !201)
!273 = !DILocation(line: 279, column: 7, scope: !16)
!274 = !DILocation(line: 279, column: 17, scope: !16)
!275 = !DILocation(line: 354, column: 31, scope: !276)
!276 = distinct !DILexicalBlock(scope: !201, file: !1, line: 354, column: 6)
!277 = !DILocation(line: 354, column: 6, scope: !276)
!278 = !DILocation(line: 354, column: 35, scope: !276)
!279 = !DILocation(line: 355, column: 6, scope: !276)
!280 = !DILocation(line: 355, column: 9, scope: !276)
!281 = !DILocation(line: 355, column: 38, scope: !276)
!282 = !DILocation(line: 354, column: 6, scope: !201)
!283 = !DILocation(line: 356, column: 10, scope: !284)
!284 = distinct !DILexicalBlock(scope: !276, file: !1, line: 355, column: 47)
!285 = !DILocation(line: 359, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !284, file: !1, line: 359, column: 8)
!287 = !DILocation(line: 359, column: 31, scope: !286)
!288 = !DILocation(line: 359, column: 35, scope: !286)
!289 = !DILocation(line: 359, column: 8, scope: !284)
!290 = !DILocation(line: 360, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !1, line: 359, column: 58)
!292 = !DILocation(line: 362, column: 4, scope: !291)
!293 = !DILocation(line: 365, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !201, file: !1, line: 365, column: 6)
!295 = !DILocation(line: 365, column: 6, scope: !201)
!296 = !DILocation(line: 366, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 366, column: 8)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 365, column: 28)
!299 = !DILocation(line: 366, column: 8, scope: !298)
!300 = !DILocation(line: 366, column: 25, scope: !297)
!301 = !DILocation(line: 366, column: 19, scope: !297)
!302 = !DILocation(line: 367, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !1, line: 367, column: 8)
!304 = !DILocation(line: 367, column: 8, scope: !298)
!305 = !DILocation(line: 367, column: 24, scope: !303)
!306 = !DILocation(line: 367, column: 18, scope: !303)
!307 = !DILocation(line: 370, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !201, file: !1, line: 370, column: 6)
!309 = !DILocation(line: 370, column: 26, scope: !308)
!310 = !DILocation(line: 370, column: 6, scope: !201)
!311 = !DILocation(line: 371, column: 15, scope: !308)
!312 = !DILocation(line: 371, column: 10, scope: !308)
!313 = !DILocation(line: 371, column: 4, scope: !308)
!314 = !DILocation(line: 373, column: 39, scope: !315)
!315 = distinct !DILexicalBlock(scope: !201, file: !1, line: 373, column: 6)
!316 = !DILocation(line: 373, column: 27, scope: !315)
!317 = !DILocation(line: 373, column: 36, scope: !315)
!318 = !DILocation(line: 373, column: 68, scope: !315)
!319 = !DILocation(line: 374, column: 15, scope: !315)
!320 = !DILocation(line: 374, column: 12, scope: !315)
!321 = !DILocation(line: 373, column: 6, scope: !201)
!322 = !DILocation(line: 375, column: 19, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !1, line: 374, column: 45)
!324 = !DILocation(line: 375, column: 16, scope: !323)
!325 = !DILocation(line: 375, column: 10, scope: !323)
!326 = !DILocation(line: 378, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !1, line: 378, column: 8)
!328 = !DILocation(line: 379, column: 20, scope: !327)
!329 = !DILocation(line: 379, column: 12, scope: !327)
!330 = !DILocation(line: 379, column: 6, scope: !327)
!331 = !DILocation(line: 382, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !323, file: !1, line: 382, column: 8)
!333 = !DILocation(line: 382, column: 8, scope: !323)
!334 = !DILocation(line: 384, column: 14, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 383, column: 6)
!336 = !DILocation(line: 385, column: 6, scope: !335)
!337 = !DILocation(line: 389, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !201, file: !1, line: 389, column: 6)
!339 = !DILocation(line: 389, column: 6, scope: !201)
!340 = !DILocation(line: 390, column: 10, scope: !338)
!341 = !DILocation(line: 390, column: 4, scope: !338)
!342 = !DILocation(line: 395, column: 11, scope: !201)
!343 = !DILocation(line: 395, column: 8, scope: !201)
!344 = !DILocation(line: 396, column: 11, scope: !201)
!345 = !DILocation(line: 396, column: 8, scope: !201)
!346 = !DILocation(line: 186, column: 30, scope: !58, inlinedAt: !347)
!347 = distinct !DILocation(line: 397, column: 11, scope: !201)
!348 = !DILocation(line: 191, column: 16, scope: !58, inlinedAt: !347)
!349 = !DILocation(line: 199, column: 20, scope: !350, inlinedAt: !347)
!350 = distinct !DILexicalBlock(scope: !58, file: !1, line: 199, column: 7)
!351 = !DILocation(line: 199, column: 7, scope: !350, inlinedAt: !347)
!352 = !DILocation(line: 199, column: 26, scope: !350, inlinedAt: !347)
!353 = !DILocation(line: 199, column: 35, scope: !350, inlinedAt: !347)
!354 = !DILocation(line: 200, column: 20, scope: !350, inlinedAt: !347)
!355 = !DILocation(line: 200, column: 7, scope: !350, inlinedAt: !347)
!356 = !DILocation(line: 200, column: 26, scope: !350, inlinedAt: !347)
!357 = !DILocation(line: 200, column: 35, scope: !350, inlinedAt: !347)
!358 = !DILocation(line: 201, column: 20, scope: !350, inlinedAt: !347)
!359 = !DILocation(line: 201, column: 7, scope: !350, inlinedAt: !347)
!360 = !DILocation(line: 201, column: 26, scope: !350, inlinedAt: !347)
!361 = !DILocation(line: 199, column: 7, scope: !58, inlinedAt: !347)
!362 = !DILocation(line: 208, column: 21, scope: !363, inlinedAt: !347)
!363 = distinct !DILexicalBlock(scope: !58, file: !1, line: 208, column: 7)
!364 = !DILocation(line: 209, column: 7, scope: !363, inlinedAt: !347)
!365 = !DILocation(line: 209, column: 24, scope: !363, inlinedAt: !347)
!366 = !DILocation(line: 209, column: 11, scope: !363, inlinedAt: !347)
!367 = !DILocation(line: 209, column: 30, scope: !363, inlinedAt: !347)
!368 = !DILocation(line: 210, column: 4, scope: !363, inlinedAt: !347)
!369 = !DILocation(line: 211, column: 17, scope: !363, inlinedAt: !347)
!370 = !DILocation(line: 211, column: 4, scope: !363, inlinedAt: !347)
!371 = !DILocation(line: 211, column: 23, scope: !363, inlinedAt: !347)
!372 = !DILocation(line: 208, column: 7, scope: !58, inlinedAt: !347)
!373 = !DILocation(line: 215, column: 25, scope: !374, inlinedAt: !347)
!374 = distinct !DILexicalBlock(scope: !363, file: !1, line: 215, column: 12)
!375 = !DILocation(line: 215, column: 30, scope: !374, inlinedAt: !347)
!376 = !DILocation(line: 216, column: 19, scope: !374, inlinedAt: !347)
!377 = !DILocation(line: 216, column: 6, scope: !374, inlinedAt: !347)
!378 = !DILocation(line: 216, column: 25, scope: !374, inlinedAt: !347)
!379 = !DILocation(line: 216, column: 34, scope: !374, inlinedAt: !347)
!380 = !DILocation(line: 217, column: 19, scope: !374, inlinedAt: !347)
!381 = !DILocation(line: 217, column: 6, scope: !374, inlinedAt: !347)
!382 = !DILocation(line: 217, column: 25, scope: !374, inlinedAt: !347)
!383 = !DILocation(line: 215, column: 12, scope: !363, inlinedAt: !347)
!384 = !DILocation(line: 224, column: 31, scope: !385, inlinedAt: !347)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 223, column: 5)
!386 = distinct !DILexicalBlock(scope: !58, file: !1, line: 222, column: 7)
!387 = !DILocation(line: 224, column: 12, scope: !385, inlinedAt: !347)
!388 = !DILocation(line: 226, column: 7, scope: !58, inlinedAt: !347)
!389 = !DILocation(line: 228, column: 31, scope: !390, inlinedAt: !347)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 227, column: 5)
!391 = distinct !DILexicalBlock(scope: !58, file: !1, line: 226, column: 7)
!392 = !DILocation(line: 228, column: 12, scope: !390, inlinedAt: !347)
!393 = !DILocation(line: 229, column: 5, scope: !390, inlinedAt: !347)
!394 = !DILocation(line: 397, column: 11, scope: !201)
!395 = !DILocation(line: 231, column: 7, scope: !58, inlinedAt: !347)
!396 = !DILocation(line: 241, column: 30, scope: !397, inlinedAt: !347)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 241, column: 8)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 240, column: 2)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 239, column: 11)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 236, column: 5)
!401 = distinct !DILexicalBlock(scope: !58, file: !1, line: 231, column: 7)
!402 = !DILocation(line: 241, column: 8, scope: !397, inlinedAt: !347)
!403 = !DILocation(line: 241, column: 39, scope: !397, inlinedAt: !347)
!404 = !DILocation(line: 244, column: 8, scope: !405, inlinedAt: !347)
!405 = distinct !DILexicalBlock(scope: !397, file: !1, line: 242, column: 6)
!406 = !DILocation(line: 254, column: 30, scope: !407, inlinedAt: !347)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 254, column: 8)
!408 = distinct !DILexicalBlock(scope: !399, file: !1, line: 253, column: 2)
!409 = !DILocation(line: 254, column: 8, scope: !407, inlinedAt: !347)
!410 = !DILocation(line: 254, column: 39, scope: !407, inlinedAt: !347)
!411 = !DILocation(line: 256, column: 8, scope: !412, inlinedAt: !347)
!412 = distinct !DILexicalBlock(scope: !407, file: !1, line: 255, column: 6)
!413 = !DILocation(line: 397, column: 8, scope: !201)
!414 = !DILocation(line: 402, column: 31, scope: !415)
!415 = distinct !DILexicalBlock(scope: !201, file: !1, line: 402, column: 6)
!416 = !DILocation(line: 402, column: 6, scope: !415)
!417 = !DILocation(line: 402, column: 35, scope: !415)
!418 = !DILocation(line: 403, column: 6, scope: !415)
!419 = !DILocation(line: 403, column: 9, scope: !415)
!420 = !DILocation(line: 403, column: 38, scope: !415)
!421 = !DILocation(line: 402, column: 6, scope: !201)
!422 = !DILocation(line: 404, column: 10, scope: !423)
!423 = distinct !DILexicalBlock(scope: !415, file: !1, line: 403, column: 47)
!424 = !DILocation(line: 407, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !423, file: !1, line: 407, column: 8)
!426 = !DILocation(line: 407, column: 31, scope: !425)
!427 = !DILocation(line: 407, column: 35, scope: !425)
!428 = !DILocation(line: 407, column: 8, scope: !423)
!429 = !DILocation(line: 408, column: 12, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !1, line: 407, column: 58)
!431 = !DILocation(line: 410, column: 4, scope: !430)
!432 = !DILocation(line: 413, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !201, file: !1, line: 413, column: 6)
!434 = !DILocation(line: 413, column: 6, scope: !201)
!435 = !DILocation(line: 414, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 414, column: 8)
!437 = distinct !DILexicalBlock(scope: !433, file: !1, line: 413, column: 28)
!438 = !DILocation(line: 414, column: 8, scope: !437)
!439 = !DILocation(line: 414, column: 25, scope: !436)
!440 = !DILocation(line: 414, column: 19, scope: !436)
!441 = !DILocation(line: 415, column: 8, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !1, line: 415, column: 8)
!443 = !DILocation(line: 415, column: 8, scope: !437)
!444 = !DILocation(line: 415, column: 24, scope: !442)
!445 = !DILocation(line: 415, column: 18, scope: !442)
!446 = !DILocation(line: 418, column: 13, scope: !447)
!447 = distinct !DILexicalBlock(scope: !201, file: !1, line: 418, column: 13)
!448 = !DILocation(line: 418, column: 33, scope: !447)
!449 = !DILocation(line: 418, column: 13, scope: !201)
!450 = !DILocation(line: 419, column: 15, scope: !447)
!451 = !DILocation(line: 419, column: 10, scope: !447)
!452 = !DILocation(line: 419, column: 4, scope: !447)
!453 = !DILocation(line: 421, column: 39, scope: !454)
!454 = distinct !DILexicalBlock(scope: !201, file: !1, line: 421, column: 6)
!455 = !DILocation(line: 421, column: 27, scope: !454)
!456 = !DILocation(line: 421, column: 36, scope: !454)
!457 = !DILocation(line: 421, column: 68, scope: !454)
!458 = !DILocation(line: 422, column: 15, scope: !454)
!459 = !DILocation(line: 422, column: 12, scope: !454)
!460 = !DILocation(line: 421, column: 6, scope: !201)
!461 = !DILocation(line: 423, column: 22, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !1, line: 422, column: 45)
!463 = !DILocation(line: 423, column: 16, scope: !462)
!464 = !DILocation(line: 423, column: 10, scope: !462)
!465 = !DILocation(line: 426, column: 21, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !1, line: 426, column: 8)
!467 = !DILocation(line: 427, column: 20, scope: !466)
!468 = !DILocation(line: 427, column: 17, scope: !466)
!469 = !DILocation(line: 427, column: 12, scope: !466)
!470 = !DILocation(line: 427, column: 6, scope: !466)
!471 = !DILocation(line: 430, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !462, file: !1, line: 430, column: 8)
!473 = !DILocation(line: 430, column: 8, scope: !462)
!474 = !DILocation(line: 432, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !1, line: 431, column: 6)
!476 = !DILocation(line: 433, column: 6, scope: !475)
!477 = !DILocation(line: 436, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !201, file: !1, line: 436, column: 6)
!479 = !DILocation(line: 436, column: 6, scope: !201)
!480 = !DILocation(line: 437, column: 10, scope: !478)
!481 = !DILocation(line: 437, column: 4, scope: !478)
!482 = !DILocation(line: 442, column: 11, scope: !201)
!483 = !DILocation(line: 442, column: 8, scope: !201)
!484 = !DILocation(line: 443, column: 11, scope: !201)
!485 = !DILocation(line: 443, column: 8, scope: !201)
!486 = !DILocation(line: 445, column: 2, scope: !201)
!487 = !DILocation(line: 448, column: 11, scope: !201)
!488 = !DILocation(line: 448, column: 8, scope: !201)
!489 = !DILocation(line: 449, column: 11, scope: !201)
!490 = !DILocation(line: 449, column: 8, scope: !201)
!491 = !DILocation(line: 451, column: 2, scope: !201)
!492 = !DILocation(line: 454, column: 11, scope: !201)
!493 = !DILocation(line: 454, column: 8, scope: !201)
!494 = !DILocation(line: 455, column: 11, scope: !201)
!495 = !DILocation(line: 455, column: 8, scope: !201)
!496 = !DILocation(line: 456, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !201, file: !1, line: 456, column: 6)
!498 = !DILocation(line: 462, column: 8, scope: !201)
!499 = !DILocation(line: 456, column: 6, scope: !201)
!500 = !DILocation(line: 458, column: 19, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 458, column: 8)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 457, column: 2)
!503 = !DILocation(line: 458, column: 8, scope: !502)
!504 = !DILocation(line: 461, column: 4, scope: !201)
!505 = !DILocation(line: 463, column: 2, scope: !201)
!506 = !DILocation(line: 466, column: 11, scope: !201)
!507 = !DILocation(line: 466, column: 8, scope: !201)
!508 = !DILocation(line: 467, column: 11, scope: !201)
!509 = !DILocation(line: 467, column: 8, scope: !201)
!510 = !DILocation(line: 468, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !201, file: !1, line: 468, column: 6)
!512 = !DILocation(line: 475, column: 8, scope: !201)
!513 = !DILocation(line: 468, column: 6, scope: !201)
!514 = !DILocation(line: 471, column: 26, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 471, column: 15)
!516 = distinct !DILexicalBlock(scope: !511, file: !1, line: 469, column: 2)
!517 = !DILocation(line: 471, column: 15, scope: !516)
!518 = !DILocation(line: 474, column: 4, scope: !201)
!519 = !DILocation(line: 476, column: 2, scope: !201)
!520 = !DILocation(line: 479, column: 11, scope: !201)
!521 = !DILocation(line: 479, column: 8, scope: !201)
!522 = !DILocation(line: 67, column: 34, scope: !72, inlinedAt: !523)
!523 = distinct !DILocation(line: 480, column: 11, scope: !201)
!524 = !DILocation(line: 69, column: 19, scope: !72, inlinedAt: !523)
!525 = !DILocation(line: 69, column: 16, scope: !72, inlinedAt: !523)
!526 = !DILocation(line: 71, column: 3, scope: !527, inlinedAt: !523)
!527 = distinct !DILexicalBlock(scope: !72, file: !1, line: 71, column: 3)
!528 = !DILocation(line: 480, column: 11, scope: !201)
!529 = !DILocation(line: 73, column: 26, scope: !530, inlinedAt: !523)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 73, column: 11)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 72, column: 5)
!532 = distinct !DILexicalBlock(scope: !527, file: !1, line: 71, column: 3)
!533 = !DILocation(line: 73, column: 24, scope: !530, inlinedAt: !523)
!534 = !DILocation(line: 73, column: 11, scope: !530, inlinedAt: !523)
!535 = !DILocation(line: 73, column: 39, scope: !530, inlinedAt: !523)
!536 = !DILocation(line: 73, column: 11, scope: !531, inlinedAt: !523)
!537 = !DILocation(line: 76, column: 12, scope: !72, inlinedAt: !523)
!538 = !DILocation(line: 480, column: 8, scope: !201)
!539 = !DILocation(line: 482, column: 2, scope: !201)
!540 = !DILocation(line: 485, column: 11, scope: !201)
!541 = !DILocation(line: 485, column: 8, scope: !201)
!542 = !DILocation(line: 67, column: 34, scope: !72, inlinedAt: !543)
!543 = distinct !DILocation(line: 486, column: 11, scope: !201)
!544 = !DILocation(line: 69, column: 19, scope: !72, inlinedAt: !543)
!545 = !DILocation(line: 69, column: 16, scope: !72, inlinedAt: !543)
!546 = !DILocation(line: 71, column: 3, scope: !527, inlinedAt: !543)
!547 = !DILocation(line: 486, column: 11, scope: !201)
!548 = !DILocation(line: 73, column: 26, scope: !530, inlinedAt: !543)
!549 = !DILocation(line: 73, column: 24, scope: !530, inlinedAt: !543)
!550 = !DILocation(line: 73, column: 11, scope: !530, inlinedAt: !543)
!551 = !DILocation(line: 73, column: 39, scope: !530, inlinedAt: !543)
!552 = !DILocation(line: 73, column: 11, scope: !531, inlinedAt: !543)
!553 = !DILocation(line: 76, column: 12, scope: !72, inlinedAt: !543)
!554 = !DILocation(line: 486, column: 8, scope: !201)
!555 = !DILocation(line: 488, column: 2, scope: !201)
!556 = !DILocation(line: 491, column: 11, scope: !201)
!557 = !DILocation(line: 491, column: 8, scope: !201)
!558 = !DILocation(line: 492, column: 11, scope: !201)
!559 = !DILocation(line: 492, column: 8, scope: !201)
!560 = !DILocation(line: 493, column: 11, scope: !201)
!561 = !DILocation(line: 493, column: 8, scope: !201)
!562 = !DILocation(line: 494, column: 2, scope: !201)
!563 = !DILocation(line: 497, column: 11, scope: !201)
!564 = !DILocation(line: 497, column: 8, scope: !201)
!565 = !DILocation(line: 498, column: 11, scope: !201)
!566 = !DILocation(line: 498, column: 8, scope: !201)
!567 = !DILocation(line: 499, column: 11, scope: !201)
!568 = !DILocation(line: 499, column: 8, scope: !201)
!569 = !DILocation(line: 500, column: 2, scope: !201)
!570 = !DILocation(line: 503, column: 11, scope: !201)
!571 = !DILocation(line: 503, column: 23, scope: !201)
!572 = !DILocation(line: 503, column: 8, scope: !201)
!573 = !DILocation(line: 95, column: 32, scope: !77, inlinedAt: !574)
!574 = distinct !DILocation(line: 504, column: 11, scope: !201)
!575 = !DILocation(line: 97, column: 19, scope: !77, inlinedAt: !574)
!576 = !DILocation(line: 97, column: 16, scope: !77, inlinedAt: !574)
!577 = !DILocation(line: 99, column: 3, scope: !578, inlinedAt: !574)
!578 = distinct !DILexicalBlock(scope: !77, file: !1, line: 99, column: 3)
!579 = !DILocation(line: 504, column: 11, scope: !201)
!580 = !DILocation(line: 101, column: 26, scope: !581, inlinedAt: !574)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 101, column: 11)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 100, column: 5)
!583 = distinct !DILexicalBlock(scope: !578, file: !1, line: 99, column: 3)
!584 = !DILocation(line: 101, column: 24, scope: !581, inlinedAt: !574)
!585 = !DILocation(line: 101, column: 11, scope: !581, inlinedAt: !574)
!586 = !DILocation(line: 101, column: 37, scope: !581, inlinedAt: !574)
!587 = !DILocation(line: 101, column: 11, scope: !582, inlinedAt: !574)
!588 = !DILocation(line: 104, column: 12, scope: !77, inlinedAt: !574)
!589 = !DILocation(line: 504, column: 8, scope: !201)
!590 = !DILocation(line: 506, column: 2, scope: !201)
!591 = !DILocation(line: 509, column: 11, scope: !201)
!592 = !DILocation(line: 509, column: 23, scope: !201)
!593 = !DILocation(line: 509, column: 8, scope: !201)
!594 = !DILocation(line: 95, column: 32, scope: !77, inlinedAt: !595)
!595 = distinct !DILocation(line: 510, column: 11, scope: !201)
!596 = !DILocation(line: 97, column: 19, scope: !77, inlinedAt: !595)
!597 = !DILocation(line: 97, column: 16, scope: !77, inlinedAt: !595)
!598 = !DILocation(line: 99, column: 3, scope: !578, inlinedAt: !595)
!599 = !DILocation(line: 510, column: 11, scope: !201)
!600 = !DILocation(line: 101, column: 26, scope: !581, inlinedAt: !595)
!601 = !DILocation(line: 101, column: 24, scope: !581, inlinedAt: !595)
!602 = !DILocation(line: 101, column: 11, scope: !581, inlinedAt: !595)
!603 = !DILocation(line: 101, column: 37, scope: !581, inlinedAt: !595)
!604 = !DILocation(line: 101, column: 11, scope: !582, inlinedAt: !595)
!605 = !DILocation(line: 104, column: 12, scope: !77, inlinedAt: !595)
!606 = !DILocation(line: 510, column: 8, scope: !201)
!607 = !DILocation(line: 512, column: 2, scope: !201)
!608 = !DILocation(line: 334, column: 28, scope: !190)
!609 = !DILocation(line: 334, column: 25, scope: !190)
!610 = !DILocation(line: 517, column: 11, scope: !611)
!611 = distinct !DILexicalBlock(scope: !16, file: !1, line: 517, column: 7)
!612 = !DILocation(line: 517, column: 24, scope: !611)
!613 = !DILocation(line: 517, column: 17, scope: !611)
!614 = !DILocation(line: 517, column: 38, scope: !611)
!615 = !DILocation(line: 517, column: 62, scope: !611)
!616 = !DILocation(line: 517, column: 46, scope: !611)
!617 = !DILocation(line: 519, column: 16, scope: !618)
!618 = distinct !DILexicalBlock(scope: !611, file: !1, line: 518, column: 5)
!619 = !DILocation(line: 519, column: 39, scope: !618)
!620 = !DILocation(line: 519, column: 31, scope: !618)
!621 = !DILocation(line: 519, column: 29, scope: !618)
!622 = !DILocation(line: 519, column: 10, scope: !618)
!623 = !DILocation(line: 519, column: 8, scope: !618)
!624 = !DILocation(line: 520, column: 5, scope: !618)
!625 = !DILocation(line: 522, column: 3, scope: !16)
!626 = !DILocation(line: 525, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !16, file: !1, line: 525, column: 7)
!628 = !DILocation(line: 525, column: 21, scope: !627)
!629 = !DILocation(line: 526, column: 12, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !1, line: 525, column: 27)
!631 = !DILocation(line: 529, column: 12, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !1, line: 528, column: 8)
!633 = !DILocation(line: 525, column: 7, scope: !16)
!634 = !DILocation(line: 532, column: 1, scope: !16)
!635 = !DILocation(line: 79, column: 32, scope: !48)
!636 = !DILocation(line: 81, column: 16, scope: !48)
!637 = !DILocation(line: 83, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !48, file: !1, line: 83, column: 7)
!639 = !DILocation(line: 83, column: 21, scope: !638)
!640 = !DILocation(line: 83, column: 7, scope: !48)
!641 = !DILocation(line: 85, column: 24, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 85, column: 11)
!643 = distinct !DILexicalBlock(scope: !638, file: !1, line: 84, column: 5)
!644 = !DILocation(line: 85, column: 11, scope: !642)
!645 = !DILocation(line: 85, column: 30, scope: !642)
!646 = !DILocation(line: 85, column: 11, scope: !643)
!647 = !DILocation(line: 89, column: 24, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 89, column: 11)
!649 = distinct !DILexicalBlock(scope: !638, file: !1, line: 88, column: 5)
!650 = !DILocation(line: 89, column: 11, scope: !648)
!651 = !DILocation(line: 89, column: 30, scope: !648)
!652 = !DILocation(line: 89, column: 11, scope: !649)
!653 = !DILocation(line: 92, column: 3, scope: !48)
!654 = !DILocation(line: 50, column: 32, scope: !62)
!655 = !DILocation(line: 53, column: 16, scope: !62)
!656 = !DILocation(line: 55, column: 8, scope: !657)
!657 = distinct !DILexicalBlock(scope: !62, file: !1, line: 55, column: 3)
!658 = !DILocation(line: 55, column: 3, scope: !657)
!659 = !DILocation(line: 55, column: 23, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !1, line: 55, column: 3)
!661 = !DILocation(line: 55, column: 32, scope: !660)
!662 = !DILocation(line: 56, column: 6, scope: !660)
!663 = !DILocation(line: 57, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !62, file: !1, line: 57, column: 3)
!665 = !DILocation(line: 57, column: 22, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !1, line: 57, column: 3)
!667 = !DILocation(line: 57, column: 31, scope: !666)
!668 = !DILocation(line: 58, column: 6, scope: !666)
!669 = !DILocation(line: 59, column: 3, scope: !670)
!670 = distinct !DILexicalBlock(scope: !62, file: !1, line: 59, column: 3)
!671 = !DILocation(line: 59, column: 22, scope: !672)
!672 = distinct !DILexicalBlock(scope: !670, file: !1, line: 59, column: 3)
!673 = !DILocation(line: 59, column: 31, scope: !672)
!674 = !DILocation(line: 60, column: 6, scope: !672)
!675 = !DILocation(line: 61, column: 3, scope: !676)
!676 = distinct !DILexicalBlock(scope: !62, file: !1, line: 61, column: 3)
!677 = !DILocation(line: 61, column: 23, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !1, line: 61, column: 3)
!679 = !DILocation(line: 61, column: 32, scope: !678)
!680 = !DILocation(line: 62, column: 6, scope: !678)
!681 = !DILocation(line: 64, column: 12, scope: !62)
!682 = !DILocation(line: 64, column: 3, scope: !62)
!683 = !DILocation(line: 33, column: 34, scope: !67)
!684 = !DILocation(line: 36, column: 16, scope: !67)
!685 = !DILocation(line: 38, column: 8, scope: !686)
!686 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 3)
!687 = !DILocation(line: 38, column: 3, scope: !686)
!688 = !DILocation(line: 38, column: 23, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !1, line: 38, column: 3)
!690 = !DILocation(line: 38, column: 32, scope: !689)
!691 = !DILocation(line: 39, column: 6, scope: !689)
!692 = !DILocation(line: 40, column: 3, scope: !693)
!693 = distinct !DILexicalBlock(scope: !67, file: !1, line: 40, column: 3)
!694 = !DILocation(line: 40, column: 23, scope: !695)
!695 = distinct !DILexicalBlock(scope: !693, file: !1, line: 40, column: 3)
!696 = !DILocation(line: 40, column: 32, scope: !695)
!697 = !DILocation(line: 41, column: 6, scope: !695)
!698 = !DILocation(line: 42, column: 3, scope: !699)
!699 = distinct !DILexicalBlock(scope: !67, file: !1, line: 42, column: 3)
!700 = !DILocation(line: 42, column: 23, scope: !701)
!701 = distinct !DILexicalBlock(scope: !699, file: !1, line: 42, column: 3)
!702 = !DILocation(line: 42, column: 32, scope: !701)
!703 = !DILocation(line: 43, column: 6, scope: !701)
!704 = !DILocation(line: 44, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !67, file: !1, line: 44, column: 3)
!706 = !DILocation(line: 44, column: 23, scope: !707)
!707 = distinct !DILexicalBlock(scope: !705, file: !1, line: 44, column: 3)
!708 = !DILocation(line: 44, column: 32, scope: !707)
!709 = !DILocation(line: 45, column: 6, scope: !707)
!710 = !DILocation(line: 47, column: 12, scope: !67)
!711 = !DILocation(line: 47, column: 3, scope: !67)

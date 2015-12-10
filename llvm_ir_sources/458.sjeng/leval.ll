; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/leval.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@white_to_move = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@__func__.losers_eval = private unnamed_addr constant [12 x i8] c"losers_eval\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/leval.c\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"(i > 0) && (i < 145)\00", align 1
@Xfile = external constant [144 x i32]
@Xrank = external constant [144 x i32]
@board = external global [144 x i32]
@lcentral = internal unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Material = external global i32
@comp_color = external global i32
@l_knight_mobility.knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@l_king_mobility.king_o = internal unnamed_addr constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 7, i32 7, i32 7, i32 7], align 16
@.memset_pattern2 = internal unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 2], align 16

; Function Attrs: nounwind optsize ssp uwtable
define i32 @losers_eval() #0 {
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %1 = bitcast [11 x i32]* %white_back_pawn to i8*
  %black_back_pawn = alloca [11 x i32], align 16
  %2 = bitcast [11 x i32]* %black_back_pawn to i8*
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !15, metadata !82), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !16, metadata !82), !dbg !84
  %3 = bitcast [2 x [11 x i32]]* %pawns to i8*, !dbg !85
  call void @llvm.lifetime.start(i64 88, i8* %3) #2, !dbg !85
  tail call void @llvm.dbg.declare(metadata [2 x [11 x i32]]* %pawns, metadata !17, metadata !82), !dbg !86
  call void @llvm.lifetime.start(i64 44, i8* %1) #2, !dbg !85
  tail call void @llvm.dbg.declare(metadata [11 x i32]* %white_back_pawn, metadata !22, metadata !82), !dbg !87
  call void @llvm.lifetime.start(i64 44, i8* %2) #2, !dbg !85
  tail call void @llvm.dbg.declare(metadata [11 x i32]* %black_back_pawn, metadata !25, metadata !82), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 0, i32* %score, align 4, !dbg !89, !tbaa !90
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !33, metadata !82), !dbg !94
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !82), !dbg !95
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !35, metadata !82), !dbg !96
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !82), !dbg !98
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !38, metadata !82), !dbg !99
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !39, metadata !82), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !40, metadata !82), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !82), !dbg !102
  store i32 0, i32* %in_cache, align 4, !dbg !103, !tbaa !90
  tail call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  tail call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !32, metadata !82), !dbg !102
  call void @checkECache(i32* %score, i32* %in_cache) #6, !dbg !104
  call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !32, metadata !82), !dbg !102
  %4 = load i32* %in_cache, align 4, !dbg !105, !tbaa !90
  %5 = icmp eq i32 %4, 0, !dbg !105
  br i1 %5, label %.preheader34, label %6, !dbg !107

; <label>:6                                       ; preds = %0
  %7 = load i32* @white_to_move, align 4, !dbg !108, !tbaa !90
  %8 = icmp eq i32 %7, 1, !dbg !111
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %9 = load i32* %score, align 4, !dbg !112, !tbaa !90
  %10 = sub nsw i32 0, %9, !dbg !113
  %.10 = select i1 %8, i32 %9, i32 %10, !dbg !114
  br label %414, !dbg !114

.preheader34:                                     ; preds = %0
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 88, i32 16, i1 false), !dbg !115
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !28, metadata !82), !dbg !116
  call void @memset_pattern16(i8* %1, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 44) #2, !dbg !117
  call void @memset_pattern16(i8* %2, i8* bitcast ([4 x i32]* @.memset_pattern2 to i8*), i64 44) #2, !dbg !121
  %11 = load i32* @piece_count, align 4, !dbg !122, !tbaa !90
  %12 = icmp slt i32 %11, 1, !dbg !125
  br i1 %12, label %._crit_edge, label %.lr.ph58, !dbg !126

.preheader:                                       ; preds = %62
  br i1 %12, label %._crit_edge, label %.lr.ph, !dbg !127

.lr.ph:                                           ; preds = %.preheader
  %13 = add nsw i32 %pawn_file.1, 1, !dbg !129
  %14 = sext i32 %13 to i64, !dbg !134
  %15 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %14, !dbg !134
  %16 = add nsw i32 %pawn_file.1, -1, !dbg !135
  %17 = sext i32 %16 to i64, !dbg !136
  %18 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %17, !dbg !136
  %19 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %14, !dbg !137
  %20 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %17, !dbg !140
  %21 = sext i32 %pawn_file.1 to i64, !dbg !141
  %22 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %21, !dbg !141
  %23 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %21, !dbg !143
  %24 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %17, !dbg !145
  %25 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %14, !dbg !147
  %26 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %14, !dbg !148
  %27 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %17, !dbg !152
  br label %64, !dbg !127

.lr.ph58:                                         ; preds = %.preheader34, %62
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %62 ], [ 1, %.preheader34 ]
  %a.056 = phi i32 [ %a.1, %62 ], [ 1, %.preheader34 ]
  %pawn_file.055 = phi i32 [ %pawn_file.1, %62 ], [ 0, %.preheader34 ]
  %srank.054 = phi i32 [ %srank.1, %62 ], [ 0, %.preheader34 ]
  %28 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv62, !dbg !153
  %29 = load i32* %28, align 4, !dbg !153, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !28, metadata !82), !dbg !116
  %30 = icmp eq i32 %29, 0, !dbg !155
  br i1 %30, label %62, label %31, !dbg !157

; <label>:31                                      ; preds = %.lr.ph58
  %32 = add nsw i32 %a.056, 1, !dbg !158
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !29, metadata !82), !dbg !159
  %.off = add i32 %29, -1, !dbg !160
  %33 = icmp ult i32 %.off, 144, !dbg !160
  br i1 %33, label %35, label %34, !dbg !160, !prof !161

; <label>:34                                      ; preds = %31
  call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.losers_eval, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 145, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !160
  unreachable, !dbg !160

; <label>:35                                      ; preds = %31
  %36 = sext i32 %29 to i64, !dbg !162
  %37 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %36, !dbg !162
  %38 = load i32* %37, align 4, !dbg !162, !tbaa !90
  %39 = add nsw i32 %38, 1, !dbg !163
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !16, metadata !82), !dbg !84
  %40 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %36, !dbg !164
  %41 = load i32* %40, align 4, !dbg !164, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !15, metadata !82), !dbg !83
  %42 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %36, !dbg !165
  %43 = load i32* %42, align 4, !dbg !165, !tbaa !90
  switch i32 %43, label %62 [
    i32 1, label %44
    i32 2, label %53
  ], !dbg !167

; <label>:44                                      ; preds = %35
  %45 = sext i32 %39 to i64, !dbg !168
  %46 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 1, i64 %45, !dbg !168
  %47 = load i32* %46, align 4, !dbg !170, !tbaa !90
  %48 = add nsw i32 %47, 1, !dbg !170
  store i32 %48, i32* %46, align 4, !dbg !170, !tbaa !90
  %49 = getelementptr inbounds [11 x i32]* %white_back_pawn, i64 0, i64 %45, !dbg !171
  %50 = load i32* %49, align 4, !dbg !171, !tbaa !90
  %51 = icmp slt i32 %41, %50, !dbg !173
  br i1 %51, label %52, label %62, !dbg !174

; <label>:52                                      ; preds = %44
  store i32 %41, i32* %49, align 4, !dbg !175, !tbaa !90
  br label %62, !dbg !177

; <label>:53                                      ; preds = %35
  %54 = sext i32 %39 to i64, !dbg !178
  %55 = getelementptr inbounds [2 x [11 x i32]]* %pawns, i64 0, i64 0, i64 %54, !dbg !178
  %56 = load i32* %55, align 4, !dbg !181, !tbaa !90
  %57 = add nsw i32 %56, 1, !dbg !181
  store i32 %57, i32* %55, align 4, !dbg !181, !tbaa !90
  %58 = getelementptr inbounds [11 x i32]* %black_back_pawn, i64 0, i64 %54, !dbg !182
  %59 = load i32* %58, align 4, !dbg !182, !tbaa !90
  %60 = icmp sgt i32 %41, %59, !dbg !184
  br i1 %60, label %61, label %62, !dbg !185

; <label>:61                                      ; preds = %53
  store i32 %41, i32* %58, align 4, !dbg !186, !tbaa !90
  br label %62, !dbg !188

; <label>:62                                      ; preds = %35, %.lr.ph58, %52, %44, %53, %61
  %srank.1 = phi i32 [ %41, %52 ], [ %41, %44 ], [ %41, %61 ], [ %41, %53 ], [ %srank.054, %.lr.ph58 ], [ %41, %35 ]
  %pawn_file.1 = phi i32 [ %39, %52 ], [ %39, %44 ], [ %39, %61 ], [ %39, %53 ], [ %pawn_file.055, %.lr.ph58 ], [ %39, %35 ]
  %a.1 = phi i32 [ %32, %52 ], [ %32, %44 ], [ %32, %61 ], [ %32, %53 ], [ %a.056, %.lr.ph58 ], [ %32, %35 ]
  %indvars.iv.next63 = add nuw i64 %indvars.iv62, 1, !dbg !126
  %63 = icmp sgt i32 %a.1, %11, !dbg !125
  br i1 %63, label %.preheader, label %.lr.ph58, !dbg !126

; <label>:64                                      ; preds = %.lr.ph, %359
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %359 ]
  %bpawns.046 = phi i32 [ 0, %.lr.ph ], [ %bpawns.1, %359 ]
  %wpawns.045 = phi i32 [ 0, %.lr.ph ], [ %wpawns.1, %359 ]
  %bpassp.044 = phi i32 [ 0, %.lr.ph ], [ %bpassp.2, %359 ]
  %wpassp.043 = phi i32 [ 0, %.lr.ph ], [ %wpassp.2, %359 ]
  %bks.042 = phi i32 [ 0, %.lr.ph ], [ %bks.1, %359 ]
  %wks.041 = phi i32 [ 0, %.lr.ph ], [ %wks.1, %359 ]
  %bp.040 = phi i32 [ 0, %.lr.ph ], [ %bp.1, %359 ]
  %wp.039 = phi i32 [ 0, %.lr.ph ], [ %wp.1, %359 ]
  %a.237 = phi i32 [ 1, %.lr.ph ], [ %a.3, %359 ]
  %65 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !189
  %66 = load i32* %65, align 4, !dbg !189, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !28, metadata !82), !dbg !116
  %67 = icmp eq i32 %66, 0, !dbg !190
  br i1 %67, label %359, label %68, !dbg !192

; <label>:68                                      ; preds = %64
  %69 = add nsw i32 %a.237, 1, !dbg !193
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !29, metadata !82), !dbg !159
  %70 = sext i32 %66 to i64, !dbg !194
  %71 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %70, !dbg !194
  %72 = load i32* %71, align 4, !dbg !194, !tbaa !90
  switch i32 %72, label %359 [
    i32 1, label %73
    i32 2, label %153
    i32 7, label %233
    i32 8, label %242
    i32 11, label %251
    i32 12, label %260
    i32 3, label %269
    i32 4, label %287
    i32 9, label %305
    i32 10, label %317
    i32 5, label %329
    i32 6, label %344
  ], !dbg !195

; <label>:73                                      ; preds = %68
  %74 = add nsw i32 %wp.039, 1, !dbg !196
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !33, metadata !82), !dbg !94
  %75 = add nsw i32 %wpawns.045, 1, !dbg !197
  call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !39, metadata !82), !dbg !100
  %76 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !198
  %77 = load i32* %76, align 4, !dbg !198, !tbaa !90
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %78 = load i32* %score, align 4, !dbg !199, !tbaa !90
  %79 = add nsw i32 %78, %77, !dbg !199
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %79, i32* %score, align 4, !dbg !199, !tbaa !90
  %80 = call fastcc i32 @l_pawn_mobility(i32 %66) #8, !dbg !200
  %81 = shl i32 %80, 2, !dbg !201
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %82 = add nsw i32 %81, %79, !dbg !202
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !31, metadata !82), !dbg !89
  %83 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %70, !dbg !203
  %84 = load i32* %83, align 4, !dbg !203, !tbaa !90
  %85 = shl i32 %84, 3, !dbg !204
  %86 = add i32 %85, -16, !dbg !204
  %87 = add nsw i32 %86, %82, !dbg !205
  call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %87, i32* %score, align 4, !dbg !205, !tbaa !90
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !82), !dbg !206
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !82), !dbg !207
  %88 = load i32* %15, align 4, !dbg !134, !tbaa !90
  %89 = icmp sgt i32 %88, %srank.1, !dbg !208
  br i1 %89, label %90, label %102, !dbg !209

; <label>:90                                      ; preds = %73
  %91 = load i32* %18, align 4, !dbg !136, !tbaa !90
  %92 = icmp sgt i32 %91, %srank.1, !dbg !210
  br i1 %92, label %93, label %102, !dbg !211

; <label>:93                                      ; preds = %90
  %94 = add nsw i32 %87, -8, !dbg !212
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %94, i32* %score, align 4, !dbg !212, !tbaa !90
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !27, metadata !82), !dbg !207
  %95 = load i32* %19, align 4, !dbg !137, !tbaa !90
  %96 = icmp eq i32 %95, 0, !dbg !137
  br i1 %96, label %97, label %102, !dbg !213

; <label>:97                                      ; preds = %93
  %98 = load i32* %20, align 4, !dbg !140, !tbaa !90
  %99 = icmp eq i32 %98, 0, !dbg !140
  br i1 %99, label %100, label %102, !dbg !214

; <label>:100                                     ; preds = %97
  %101 = add nsw i32 %87, -20, !dbg !215
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %101, i32* %score, align 4, !dbg !215, !tbaa !90
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !26, metadata !82), !dbg !206
  br label %102, !dbg !217

; <label>:102                                     ; preds = %97, %93, %100, %90, %73
  %103 = phi i32 [ %94, %93 ], [ %94, %97 ], [ %101, %100 ], [ %87, %90 ], [ %87, %73 ]
  %isolated.0 = phi i32 [ 0, %93 ], [ 0, %97 ], [ 1, %100 ], [ 0, %90 ], [ 0, %73 ]
  %backwards.0 = phi i32 [ 1, %93 ], [ 1, %97 ], [ 1, %100 ], [ 0, %90 ], [ 0, %73 ]
  %104 = load i32* %22, align 4, !dbg !141, !tbaa !90
  %105 = icmp eq i32 %104, 0, !dbg !141
  br i1 %105, label %106, label %115, !dbg !218

; <label>:106                                     ; preds = %102
  %107 = icmp eq i32 %backwards.0, 0, !dbg !219
  br i1 %107, label %110, label %108, !dbg !222

; <label>:108                                     ; preds = %106
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %109 = add nsw i32 %103, -5, !dbg !223
  call void @llvm.dbg.value(metadata i32 %109, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %109, i32* %score, align 4, !dbg !223, !tbaa !90
  br label %110, !dbg !224

; <label>:110                                     ; preds = %106, %108
  %111 = phi i32 [ %103, %106 ], [ %109, %108 ]
  %112 = icmp eq i32 %isolated.0, 0, !dbg !225
  br i1 %112, label %115, label %113, !dbg !227

; <label>:113                                     ; preds = %110
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %114 = add nsw i32 %111, -8, !dbg !228
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %114, i32* %score, align 4, !dbg !228, !tbaa !90
  br label %115, !dbg !229

; <label>:115                                     ; preds = %110, %102, %113
  %116 = phi i32 [ %111, %110 ], [ %103, %102 ], [ %114, %113 ]
  %117 = load i32* %23, align 4, !dbg !143, !tbaa !90
  %118 = icmp sgt i32 %117, 1, !dbg !230
  br i1 %118, label %119, label %122, !dbg !231

; <label>:119                                     ; preds = %115
  %120 = shl i32 %117, 3, !dbg !232
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %.neg29 = sub i32 8, %120, !dbg !232
  %121 = add i32 %.neg29, %116, !dbg !233
  call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %121, i32* %score, align 4, !dbg !233, !tbaa !90
  br label %122, !dbg !234

; <label>:122                                     ; preds = %119, %115
  %123 = phi i32 [ %121, %119 ], [ %116, %115 ]
  br i1 %105, label %124, label %147, !dbg !235

; <label>:124                                     ; preds = %122
  %125 = load i32* %24, align 4, !dbg !145, !tbaa !90
  %126 = icmp slt i32 %srank.1, %125, !dbg !236
  br i1 %126, label %147, label %127, !dbg !237

; <label>:127                                     ; preds = %124
  %128 = load i32* %25, align 4, !dbg !147, !tbaa !90
  %129 = icmp slt i32 %srank.1, %128, !dbg !238
  br i1 %129, label %147, label %130, !dbg !239

; <label>:130                                     ; preds = %127
  %131 = mul i32 %84, 10, !dbg !240
  %132 = add i32 %131, 5, !dbg !242
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %133 = add nsw i32 %132, %123, !dbg !243
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !31, metadata !82), !dbg !89
  %134 = icmp eq i32 %84, 7, !dbg !244
  %135 = add nsw i32 %133, 50, !dbg !246
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !31, metadata !82), !dbg !89
  %. = select i1 %134, i32 %135, i32 %133, !dbg !247
  %.67 = select i1 %134, i32 %135, i32 %133, !dbg !247
  store i32 %., i32* %score, align 4, !dbg !243, !tbaa !90
  %136 = add nsw i32 %wpassp.043, 1, !dbg !248
  call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !37, metadata !82), !dbg !98
  %137 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %70, !dbg !249
  %138 = load i32* %137, align 4, !dbg !249, !tbaa !90
  switch i32 %138, label %142 [
    i32 1, label %139
    i32 8, label %139
  ], !dbg !251

; <label>:139                                     ; preds = %130, %130
  %140 = shl i32 %84, 1, !dbg !252
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %141 = add nsw i32 %.67, %140, !dbg !253
  call void @llvm.dbg.value(metadata i32 %141, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %141, i32* %score, align 4, !dbg !253, !tbaa !90
  br label %142, !dbg !254

; <label>:142                                     ; preds = %130, %139
  %143 = phi i32 [ %.67, %130 ], [ %141, %139 ]
  %144 = icmp eq i32 %isolated.0, 0, !dbg !255
  br i1 %144, label %145, label %147, !dbg !257

; <label>:145                                     ; preds = %142
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %146 = add nsw i32 %143, 24, !dbg !258
  call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %146, i32* %score, align 4, !dbg !258, !tbaa !90
  br label %147, !dbg !260

; <label>:147                                     ; preds = %142, %127, %124, %122, %145
  %148 = phi i32 [ %123, %122 ], [ %143, %142 ], [ %146, %145 ], [ %123, %127 ], [ %123, %124 ]
  %wpassp.1 = phi i32 [ %wpassp.043, %122 ], [ %136, %142 ], [ %136, %145 ], [ %wpassp.043, %127 ], [ %wpassp.043, %124 ]
  %149 = load i32* %20, align 4, !dbg !261, !tbaa !90
  %150 = icmp eq i32 %149, 0, !dbg !261
  br i1 %150, label %151, label %359, !dbg !263

; <label>:151                                     ; preds = %147
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %152 = add nsw i32 %148, -5, !dbg !264
  call void @llvm.dbg.value(metadata i32 %152, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %152, i32* %score, align 4, !dbg !264, !tbaa !90
  br label %359, !dbg !265

; <label>:153                                     ; preds = %68
  %154 = add nsw i32 %bp.040, 1, !dbg !266
  call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !34, metadata !82), !dbg !95
  %155 = add nsw i32 %bpawns.046, 1, !dbg !267
  call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !40, metadata !82), !dbg !101
  %156 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !268
  %157 = load i32* %156, align 4, !dbg !268, !tbaa !90
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %158 = load i32* %score, align 4, !dbg !269, !tbaa !90
  %159 = sub nsw i32 %158, %157, !dbg !269
  call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %159, i32* %score, align 4, !dbg !269, !tbaa !90
  %160 = call fastcc i32 @l_pawn_mobility(i32 %66) #8, !dbg !270
  %161 = shl i32 %160, 2, !dbg !271
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %162 = sub nsw i32 %159, %161, !dbg !272
  call void @llvm.dbg.value(metadata i32 %162, i64 0, metadata !31, metadata !82), !dbg !89
  %163 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %70, !dbg !273
  %164 = load i32* %163, align 4, !dbg !273, !tbaa !90
  %165 = sub nsw i32 7, %164, !dbg !274
  %166 = shl nsw i32 %165, 3, !dbg !275
  %167 = sub nsw i32 %162, %166, !dbg !276
  call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %167, i32* %score, align 4, !dbg !276, !tbaa !90
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !82), !dbg !206
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !82), !dbg !207
  %168 = load i32* %25, align 4, !dbg !277, !tbaa !90
  %169 = icmp slt i32 %168, %srank.1, !dbg !278
  br i1 %169, label %170, label %182, !dbg !279

; <label>:170                                     ; preds = %153
  %171 = load i32* %24, align 4, !dbg !280, !tbaa !90
  %172 = icmp slt i32 %171, %srank.1, !dbg !281
  br i1 %172, label %173, label %182, !dbg !282

; <label>:173                                     ; preds = %170
  %174 = add nsw i32 %167, 8, !dbg !283
  call void @llvm.dbg.value(metadata i32 %174, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %174, i32* %score, align 4, !dbg !283, !tbaa !90
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !27, metadata !82), !dbg !207
  %175 = load i32* %26, align 4, !dbg !148, !tbaa !90
  %176 = icmp eq i32 %175, 0, !dbg !148
  br i1 %176, label %177, label %182, !dbg !284

; <label>:177                                     ; preds = %173
  %178 = load i32* %27, align 4, !dbg !152, !tbaa !90
  %179 = icmp eq i32 %178, 0, !dbg !152
  br i1 %179, label %180, label %182, !dbg !285

; <label>:180                                     ; preds = %177
  %181 = add nsw i32 %167, 20, !dbg !286
  call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %181, i32* %score, align 4, !dbg !286, !tbaa !90
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !26, metadata !82), !dbg !206
  br label %182, !dbg !288

; <label>:182                                     ; preds = %177, %173, %180, %170, %153
  %183 = phi i32 [ %174, %173 ], [ %174, %177 ], [ %181, %180 ], [ %167, %170 ], [ %167, %153 ]
  %isolated.1 = phi i32 [ 0, %173 ], [ 0, %177 ], [ 1, %180 ], [ 0, %170 ], [ 0, %153 ]
  %backwards.1 = phi i32 [ 1, %173 ], [ 1, %177 ], [ 1, %180 ], [ 0, %170 ], [ 0, %153 ]
  %184 = load i32* %23, align 4, !dbg !289, !tbaa !90
  %185 = icmp eq i32 %184, 0, !dbg !289
  br i1 %185, label %186, label %195, !dbg !291

; <label>:186                                     ; preds = %182
  %187 = icmp eq i32 %backwards.1, 0, !dbg !292
  br i1 %187, label %190, label %188, !dbg !295

; <label>:188                                     ; preds = %186
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %189 = add nsw i32 %183, 5, !dbg !296
  call void @llvm.dbg.value(metadata i32 %189, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %189, i32* %score, align 4, !dbg !296, !tbaa !90
  br label %190, !dbg !297

; <label>:190                                     ; preds = %186, %188
  %191 = phi i32 [ %183, %186 ], [ %189, %188 ]
  %192 = icmp eq i32 %isolated.1, 0, !dbg !298
  br i1 %192, label %195, label %193, !dbg !300

; <label>:193                                     ; preds = %190
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %194 = add nsw i32 %191, 8, !dbg !301
  call void @llvm.dbg.value(metadata i32 %194, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %194, i32* %score, align 4, !dbg !301, !tbaa !90
  br label %195, !dbg !302

; <label>:195                                     ; preds = %190, %182, %193
  %196 = phi i32 [ %191, %190 ], [ %183, %182 ], [ %194, %193 ]
  %197 = load i32* %22, align 4, !dbg !303, !tbaa !90
  %198 = icmp sgt i32 %197, 1, !dbg !305
  br i1 %198, label %199, label %203, !dbg !306

; <label>:199                                     ; preds = %195
  %200 = shl i32 %197, 3, !dbg !307
  %201 = add i32 %200, -8, !dbg !307
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %202 = add nsw i32 %201, %196, !dbg !308
  call void @llvm.dbg.value(metadata i32 %202, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %202, i32* %score, align 4, !dbg !308, !tbaa !90
  br label %203, !dbg !309

; <label>:203                                     ; preds = %199, %195
  %204 = phi i32 [ %202, %199 ], [ %196, %195 ]
  br i1 %185, label %205, label %227, !dbg !310

; <label>:205                                     ; preds = %203
  %206 = load i32* %18, align 4, !dbg !312, !tbaa !90
  %207 = icmp sgt i32 %srank.1, %206, !dbg !313
  br i1 %207, label %227, label %208, !dbg !314

; <label>:208                                     ; preds = %205
  %209 = load i32* %15, align 4, !dbg !315, !tbaa !90
  %210 = icmp sgt i32 %srank.1, %209, !dbg !316
  br i1 %210, label %227, label %211, !dbg !317

; <label>:211                                     ; preds = %208
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %212 = mul i32 %165, -10
  %.neg31 = add i32 %204, -25, !dbg !318
  %213 = add i32 %.neg31, %212, !dbg !320
  call void @llvm.dbg.value(metadata i32 %213, i64 0, metadata !31, metadata !82), !dbg !89
  %214 = icmp eq i32 %164, 2, !dbg !321
  %215 = add nsw i32 %213, -50, !dbg !323
  call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !31, metadata !82), !dbg !89
  %.68 = select i1 %214, i32 %215, i32 %213, !dbg !324
  %.69 = select i1 %214, i32 %215, i32 %213, !dbg !324
  store i32 %.68, i32* %score, align 4, !dbg !320, !tbaa !90
  %216 = add nsw i32 %bpassp.044, 1, !dbg !325
  call void @llvm.dbg.value(metadata i32 %216, i64 0, metadata !38, metadata !82), !dbg !99
  %217 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %70, !dbg !326
  %218 = load i32* %217, align 4, !dbg !326, !tbaa !90
  switch i32 %218, label %222 [
    i32 1, label %219
    i32 8, label %219
  ], !dbg !328

; <label>:219                                     ; preds = %211, %211
  %220 = shl i32 %165, 1, !dbg !329
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %.neg33 = add i32 %.69, -4, !dbg !330
  %221 = sub i32 %.neg33, %220, !dbg !331
  call void @llvm.dbg.value(metadata i32 %221, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %221, i32* %score, align 4, !dbg !331, !tbaa !90
  br label %222, !dbg !332

; <label>:222                                     ; preds = %211, %219
  %223 = phi i32 [ %.69, %211 ], [ %221, %219 ]
  %224 = icmp eq i32 %isolated.1, 0, !dbg !333
  br i1 %224, label %225, label %227, !dbg !335

; <label>:225                                     ; preds = %222
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %226 = add nsw i32 %223, -24, !dbg !336
  call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %226, i32* %score, align 4, !dbg !336, !tbaa !90
  br label %227, !dbg !338

; <label>:227                                     ; preds = %222, %208, %205, %203, %225
  %228 = phi i32 [ %204, %203 ], [ %223, %222 ], [ %226, %225 ], [ %204, %208 ], [ %204, %205 ]
  %bpassp.1 = phi i32 [ %bpassp.044, %203 ], [ %216, %222 ], [ %216, %225 ], [ %bpassp.044, %208 ], [ %bpassp.044, %205 ]
  %229 = load i32* %27, align 4, !dbg !339, !tbaa !90
  %230 = icmp eq i32 %229, 0, !dbg !339
  br i1 %230, label %231, label %359, !dbg !341

; <label>:231                                     ; preds = %227
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %232 = add nsw i32 %228, 5, !dbg !342
  call void @llvm.dbg.value(metadata i32 %232, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %232, i32* %score, align 4, !dbg !342, !tbaa !90
  br label %359, !dbg !343

; <label>:233                                     ; preds = %68
  %234 = add nsw i32 %wp.039, 1, !dbg !344
  call void @llvm.dbg.value(metadata i32 %234, i64 0, metadata !33, metadata !82), !dbg !94
  %235 = call fastcc i32 @l_rook_mobility(i32 %66) #8, !dbg !345
  %236 = shl i32 %235, 2, !dbg !346
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %237 = load i32* %score, align 4, !dbg !347, !tbaa !90
  %238 = add nsw i32 %237, %236, !dbg !347
  call void @llvm.dbg.value(metadata i32 %238, i64 0, metadata !31, metadata !82), !dbg !89
  %239 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !348
  %240 = load i32* %239, align 4, !dbg !348, !tbaa !90
  %241 = add nsw i32 %238, %240, !dbg !349
  call void @llvm.dbg.value(metadata i32 %241, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %241, i32* %score, align 4, !dbg !349, !tbaa !90
  br label %359, !dbg !350

; <label>:242                                     ; preds = %68
  %243 = add nsw i32 %bp.040, 1, !dbg !351
  call void @llvm.dbg.value(metadata i32 %243, i64 0, metadata !34, metadata !82), !dbg !95
  %244 = call fastcc i32 @l_rook_mobility(i32 %66) #8, !dbg !352
  %245 = shl i32 %244, 2, !dbg !353
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %246 = load i32* %score, align 4, !dbg !354, !tbaa !90
  %247 = sub nsw i32 %246, %245, !dbg !354
  call void @llvm.dbg.value(metadata i32 %247, i64 0, metadata !31, metadata !82), !dbg !89
  %248 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !355
  %249 = load i32* %248, align 4, !dbg !355, !tbaa !90
  %250 = sub nsw i32 %247, %249, !dbg !356
  call void @llvm.dbg.value(metadata i32 %250, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %250, i32* %score, align 4, !dbg !356, !tbaa !90
  br label %359, !dbg !357

; <label>:251                                     ; preds = %68
  %252 = add nsw i32 %wp.039, 1, !dbg !358
  call void @llvm.dbg.value(metadata i32 %252, i64 0, metadata !33, metadata !82), !dbg !94
  %253 = call fastcc i32 @l_bishop_mobility(i32 %66) #8, !dbg !359
  %254 = shl i32 %253, 2, !dbg !360
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %255 = load i32* %score, align 4, !dbg !361, !tbaa !90
  %256 = add nsw i32 %255, %254, !dbg !361
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !31, metadata !82), !dbg !89
  %257 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !362
  %258 = load i32* %257, align 4, !dbg !362, !tbaa !90
  %259 = add nsw i32 %256, %258, !dbg !363
  call void @llvm.dbg.value(metadata i32 %259, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %259, i32* %score, align 4, !dbg !363, !tbaa !90
  br label %359, !dbg !364

; <label>:260                                     ; preds = %68
  %261 = add nsw i32 %bp.040, 1, !dbg !365
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !34, metadata !82), !dbg !95
  %262 = call fastcc i32 @l_bishop_mobility(i32 %66) #8, !dbg !366
  %263 = shl i32 %262, 2, !dbg !367
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %264 = load i32* %score, align 4, !dbg !368, !tbaa !90
  %265 = sub nsw i32 %264, %263, !dbg !368
  call void @llvm.dbg.value(metadata i32 %265, i64 0, metadata !31, metadata !82), !dbg !89
  %266 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !369
  %267 = load i32* %266, align 4, !dbg !369, !tbaa !90
  %268 = sub nsw i32 %265, %267, !dbg !370
  call void @llvm.dbg.value(metadata i32 %268, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %268, i32* %score, align 4, !dbg !370, !tbaa !90
  br label %359, !dbg !371

; <label>:269                                     ; preds = %68
  call void @llvm.dbg.value(metadata i32 %284, i64 0, metadata !33, metadata !82), !dbg !94
  %270 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !372
  %271 = load i32* %270, align 4, !dbg !372, !tbaa !90
  %272 = shl i32 %271, 1, !dbg !373
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %273 = load i32* %score, align 4, !dbg !374, !tbaa !90
  %274 = add nsw i32 %273, %272, !dbg !374
  call void @llvm.dbg.value(metadata i32 %274, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %274, i32* %score, align 4, !dbg !374, !tbaa !90
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !59, metadata !82), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !82), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !82), !dbg !378
  br label %275, !dbg !379

; <label>:275                                     ; preds = %275, %269
  %indvars.iv.i = phi i64 [ 0, %269 ], [ %indvars.iv.next.i, %275 ], !dbg !381
  %m.02.i = phi i32 [ 0, %269 ], [ %.m.0.i, %275 ], !dbg !381
  %276 = getelementptr inbounds [8 x i32]* @l_knight_mobility.knight_o, i64 0, i64 %indvars.iv.i, !dbg !382
  %277 = load i32* %276, align 4, !dbg !382, !tbaa !90
  %278 = add nsw i32 %277, %66, !dbg !386
  %279 = sext i32 %278 to i64, !dbg !387
  %280 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %279, !dbg !387
  %281 = load i32* %280, align 4, !dbg !387, !tbaa !90
  %282 = icmp eq i32 %281, 13, !dbg !388
  %283 = zext i1 %282 to i32, !dbg !389
  %.m.0.i = add nsw i32 %283, %m.02.i, !dbg !389
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !379
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !379
  br i1 %exitcond.i, label %l_knight_mobility.exit, label %275, !dbg !379

l_knight_mobility.exit:                           ; preds = %275
  %284 = add nsw i32 %wp.039, 1, !dbg !390
  %285 = shl i32 %.m.0.i, 2, !dbg !391
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %286 = add nsw i32 %274, %285, !dbg !392
  call void @llvm.dbg.value(metadata i32 %286, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %286, i32* %score, align 4, !dbg !392, !tbaa !90
  br label %359, !dbg !393

; <label>:287                                     ; preds = %68
  call void @llvm.dbg.value(metadata i32 %302, i64 0, metadata !34, metadata !82), !dbg !95
  %288 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !394
  %289 = load i32* %288, align 4, !dbg !394, !tbaa !90
  %290 = shl i32 %289, 1, !dbg !395
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %291 = load i32* %score, align 4, !dbg !396, !tbaa !90
  %292 = sub nsw i32 %291, %290, !dbg !396
  call void @llvm.dbg.value(metadata i32 %292, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %292, i32* %score, align 4, !dbg !396, !tbaa !90
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !59, metadata !82), !dbg !397
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !82), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !82), !dbg !400
  br label %293, !dbg !401

; <label>:293                                     ; preds = %293, %287
  %indvars.iv.i23 = phi i64 [ 0, %287 ], [ %indvars.iv.next.i26, %293 ], !dbg !402
  %m.02.i24 = phi i32 [ 0, %287 ], [ %.m.0.i25, %293 ], !dbg !402
  %294 = getelementptr inbounds [8 x i32]* @l_knight_mobility.knight_o, i64 0, i64 %indvars.iv.i23, !dbg !403
  %295 = load i32* %294, align 4, !dbg !403, !tbaa !90
  %296 = add nsw i32 %295, %66, !dbg !404
  %297 = sext i32 %296 to i64, !dbg !405
  %298 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %297, !dbg !405
  %299 = load i32* %298, align 4, !dbg !405, !tbaa !90
  %300 = icmp eq i32 %299, 13, !dbg !406
  %301 = zext i1 %300 to i32, !dbg !407
  %.m.0.i25 = add nsw i32 %301, %m.02.i24, !dbg !407
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i23, 1, !dbg !401
  %exitcond.i27 = icmp eq i64 %indvars.iv.next.i26, 8, !dbg !401
  br i1 %exitcond.i27, label %l_knight_mobility.exit28, label %293, !dbg !401

l_knight_mobility.exit28:                         ; preds = %293
  %302 = add nsw i32 %bp.040, 1, !dbg !408
  %303 = shl i32 %.m.0.i25, 2, !dbg !409
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %304 = sub nsw i32 %292, %303, !dbg !410
  call void @llvm.dbg.value(metadata i32 %304, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %304, i32* %score, align 4, !dbg !410, !tbaa !90
  br label %359, !dbg !411

; <label>:305                                     ; preds = %68
  %306 = add nsw i32 %wp.039, 1, !dbg !412
  call void @llvm.dbg.value(metadata i32 %306, i64 0, metadata !33, metadata !82), !dbg !94
  %307 = call fastcc i32 @l_bishop_mobility(i32 %66) #8, !dbg !413
  %308 = shl i32 %307, 1, !dbg !414
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %309 = load i32* %score, align 4, !dbg !415, !tbaa !90
  %310 = add nsw i32 %309, %308, !dbg !415
  call void @llvm.dbg.value(metadata i32 %310, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %310, i32* %score, align 4, !dbg !415, !tbaa !90
  %311 = call fastcc i32 @l_rook_mobility(i32 %66) #8, !dbg !416
  %312 = shl i32 %311, 1, !dbg !417
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %313 = add nsw i32 %312, %310, !dbg !418
  call void @llvm.dbg.value(metadata i32 %313, i64 0, metadata !31, metadata !82), !dbg !89
  %314 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !419
  %315 = load i32* %314, align 4, !dbg !419, !tbaa !90
  %316 = add nsw i32 %313, %315, !dbg !420
  call void @llvm.dbg.value(metadata i32 %316, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %316, i32* %score, align 4, !dbg !420, !tbaa !90
  br label %359, !dbg !421

; <label>:317                                     ; preds = %68
  %318 = add nsw i32 %bp.040, 1, !dbg !422
  call void @llvm.dbg.value(metadata i32 %318, i64 0, metadata !34, metadata !82), !dbg !95
  %319 = call fastcc i32 @l_bishop_mobility(i32 %66) #8, !dbg !423
  %320 = shl i32 %319, 1, !dbg !424
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %321 = load i32* %score, align 4, !dbg !425, !tbaa !90
  %322 = sub nsw i32 %321, %320, !dbg !425
  call void @llvm.dbg.value(metadata i32 %322, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %322, i32* %score, align 4, !dbg !425, !tbaa !90
  %323 = call fastcc i32 @l_rook_mobility(i32 %66) #8, !dbg !426
  %324 = shl i32 %323, 1, !dbg !427
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %325 = sub nsw i32 %322, %324, !dbg !428
  call void @llvm.dbg.value(metadata i32 %325, i64 0, metadata !31, metadata !82), !dbg !89
  %326 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !429
  %327 = load i32* %326, align 4, !dbg !429, !tbaa !90
  %328 = sub nsw i32 %325, %327, !dbg !430
  call void @llvm.dbg.value(metadata i32 %328, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %328, i32* %score, align 4, !dbg !430, !tbaa !90
  br label %359, !dbg !431

; <label>:329                                     ; preds = %68
  %330 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !432
  %331 = load i32* %330, align 4, !dbg !432, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %341, i64 0, metadata !35, metadata !82), !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !64, metadata !82), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !66, metadata !82), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !65, metadata !82), !dbg !436
  br label %332, !dbg !437

; <label>:332                                     ; preds = %332, %329
  %indvars.iv.i17 = phi i64 [ 0, %329 ], [ %indvars.iv.next.i20, %332 ], !dbg !439
  %m.02.i18 = phi i32 [ 0, %329 ], [ %.m.0.i19, %332 ], !dbg !439
  %333 = getelementptr inbounds [8 x i32]* @l_king_mobility.king_o, i64 0, i64 %indvars.iv.i17, !dbg !440
  %334 = load i32* %333, align 4, !dbg !440, !tbaa !90
  %335 = add nsw i32 %334, %66, !dbg !444
  %336 = sext i32 %335 to i64, !dbg !445
  %337 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %336, !dbg !445
  %338 = load i32* %337, align 4, !dbg !445, !tbaa !90
  %339 = icmp eq i32 %338, 13, !dbg !446
  %340 = zext i1 %339 to i32, !dbg !447
  %.m.0.i19 = add nsw i32 %340, %m.02.i18, !dbg !447
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i17, 1, !dbg !437
  %exitcond.i21 = icmp eq i64 %indvars.iv.next.i20, 8, !dbg !437
  br i1 %exitcond.i21, label %l_king_mobility.exit22, label %332, !dbg !437

l_king_mobility.exit22:                           ; preds = %332
  %341 = shl i32 %331, 1, !dbg !448
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %342 = load i32* %score, align 4, !dbg !449, !tbaa !90
  %343 = add nsw i32 %342, %.m.0.i19, !dbg !449
  call void @llvm.dbg.value(metadata i32 %343, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %343, i32* %score, align 4, !dbg !449, !tbaa !90
  br label %359, !dbg !450

; <label>:344                                     ; preds = %68
  %345 = getelementptr inbounds [144 x i32]* @lcentral, i64 0, i64 %70, !dbg !451
  %346 = load i32* %345, align 4, !dbg !451, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !36, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !64, metadata !82), !dbg !452
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !66, metadata !82), !dbg !454
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !65, metadata !82), !dbg !455
  br label %347, !dbg !456

; <label>:347                                     ; preds = %347, %344
  %indvars.iv.i12 = phi i64 [ 0, %344 ], [ %indvars.iv.next.i15, %347 ], !dbg !457
  %m.02.i13 = phi i32 [ 0, %344 ], [ %.m.0.i14, %347 ], !dbg !457
  %348 = getelementptr inbounds [8 x i32]* @l_king_mobility.king_o, i64 0, i64 %indvars.iv.i12, !dbg !458
  %349 = load i32* %348, align 4, !dbg !458, !tbaa !90
  %350 = add nsw i32 %349, %66, !dbg !459
  %351 = sext i32 %350 to i64, !dbg !460
  %352 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %351, !dbg !460
  %353 = load i32* %352, align 4, !dbg !460, !tbaa !90
  %354 = icmp eq i32 %353, 13, !dbg !461
  %355 = zext i1 %354 to i32, !dbg !462
  %.m.0.i14 = add nsw i32 %355, %m.02.i13, !dbg !462
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i12, 1, !dbg !456
  %exitcond.i16 = icmp eq i64 %indvars.iv.next.i15, 8, !dbg !456
  br i1 %exitcond.i16, label %l_king_mobility.exit, label %347, !dbg !456

l_king_mobility.exit:                             ; preds = %347
  %356 = shl i32 %346, 1, !dbg !463
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %357 = load i32* %score, align 4, !dbg !464, !tbaa !90
  %358 = sub nsw i32 %357, %.m.0.i14, !dbg !464
  call void @llvm.dbg.value(metadata i32 %358, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %358, i32* %score, align 4, !dbg !464, !tbaa !90
  br label %359, !dbg !465

; <label>:359                                     ; preds = %147, %227, %64, %233, %242, %251, %260, %l_knight_mobility.exit, %l_knight_mobility.exit28, %305, %317, %l_king_mobility.exit22, %l_king_mobility.exit, %68, %151, %231
  %a.3 = phi i32 [ %69, %68 ], [ %69, %l_king_mobility.exit ], [ %69, %l_king_mobility.exit22 ], [ %69, %317 ], [ %69, %305 ], [ %69, %l_knight_mobility.exit28 ], [ %69, %l_knight_mobility.exit ], [ %69, %260 ], [ %69, %251 ], [ %69, %242 ], [ %69, %233 ], [ %69, %227 ], [ %69, %231 ], [ %69, %147 ], [ %69, %151 ], [ %a.237, %64 ]
  %wp.1 = phi i32 [ %wp.039, %68 ], [ %wp.039, %l_king_mobility.exit ], [ %wp.039, %l_king_mobility.exit22 ], [ %wp.039, %317 ], [ %306, %305 ], [ %wp.039, %l_knight_mobility.exit28 ], [ %284, %l_knight_mobility.exit ], [ %wp.039, %260 ], [ %252, %251 ], [ %wp.039, %242 ], [ %234, %233 ], [ %wp.039, %227 ], [ %wp.039, %231 ], [ %74, %147 ], [ %74, %151 ], [ %wp.039, %64 ]
  %bp.1 = phi i32 [ %bp.040, %68 ], [ %bp.040, %l_king_mobility.exit ], [ %bp.040, %l_king_mobility.exit22 ], [ %318, %317 ], [ %bp.040, %305 ], [ %302, %l_knight_mobility.exit28 ], [ %bp.040, %l_knight_mobility.exit ], [ %261, %260 ], [ %bp.040, %251 ], [ %243, %242 ], [ %bp.040, %233 ], [ %154, %227 ], [ %154, %231 ], [ %bp.040, %147 ], [ %bp.040, %151 ], [ %bp.040, %64 ]
  %wks.1 = phi i32 [ %wks.041, %68 ], [ %wks.041, %l_king_mobility.exit ], [ %341, %l_king_mobility.exit22 ], [ %wks.041, %317 ], [ %wks.041, %305 ], [ %wks.041, %l_knight_mobility.exit28 ], [ %wks.041, %l_knight_mobility.exit ], [ %wks.041, %260 ], [ %wks.041, %251 ], [ %wks.041, %242 ], [ %wks.041, %233 ], [ %wks.041, %227 ], [ %wks.041, %231 ], [ %wks.041, %147 ], [ %wks.041, %151 ], [ %wks.041, %64 ]
  %bks.1 = phi i32 [ %bks.042, %68 ], [ %356, %l_king_mobility.exit ], [ %bks.042, %l_king_mobility.exit22 ], [ %bks.042, %317 ], [ %bks.042, %305 ], [ %bks.042, %l_knight_mobility.exit28 ], [ %bks.042, %l_knight_mobility.exit ], [ %bks.042, %260 ], [ %bks.042, %251 ], [ %bks.042, %242 ], [ %bks.042, %233 ], [ %bks.042, %227 ], [ %bks.042, %231 ], [ %bks.042, %147 ], [ %bks.042, %151 ], [ %bks.042, %64 ]
  %wpassp.2 = phi i32 [ %wpassp.043, %68 ], [ %wpassp.043, %l_king_mobility.exit ], [ %wpassp.043, %l_king_mobility.exit22 ], [ %wpassp.043, %317 ], [ %wpassp.043, %305 ], [ %wpassp.043, %l_knight_mobility.exit28 ], [ %wpassp.043, %l_knight_mobility.exit ], [ %wpassp.043, %260 ], [ %wpassp.043, %251 ], [ %wpassp.043, %242 ], [ %wpassp.043, %233 ], [ %wpassp.043, %227 ], [ %wpassp.043, %231 ], [ %wpassp.1, %147 ], [ %wpassp.1, %151 ], [ %wpassp.043, %64 ]
  %bpassp.2 = phi i32 [ %bpassp.044, %68 ], [ %bpassp.044, %l_king_mobility.exit ], [ %bpassp.044, %l_king_mobility.exit22 ], [ %bpassp.044, %317 ], [ %bpassp.044, %305 ], [ %bpassp.044, %l_knight_mobility.exit28 ], [ %bpassp.044, %l_knight_mobility.exit ], [ %bpassp.044, %260 ], [ %bpassp.044, %251 ], [ %bpassp.044, %242 ], [ %bpassp.044, %233 ], [ %bpassp.1, %227 ], [ %bpassp.1, %231 ], [ %bpassp.044, %147 ], [ %bpassp.044, %151 ], [ %bpassp.044, %64 ]
  %wpawns.1 = phi i32 [ %wpawns.045, %68 ], [ %wpawns.045, %l_king_mobility.exit ], [ %wpawns.045, %l_king_mobility.exit22 ], [ %wpawns.045, %317 ], [ %wpawns.045, %305 ], [ %wpawns.045, %l_knight_mobility.exit28 ], [ %wpawns.045, %l_knight_mobility.exit ], [ %wpawns.045, %260 ], [ %wpawns.045, %251 ], [ %wpawns.045, %242 ], [ %wpawns.045, %233 ], [ %wpawns.045, %227 ], [ %wpawns.045, %231 ], [ %75, %147 ], [ %75, %151 ], [ %wpawns.045, %64 ]
  %bpawns.1 = phi i32 [ %bpawns.046, %68 ], [ %bpawns.046, %l_king_mobility.exit ], [ %bpawns.046, %l_king_mobility.exit22 ], [ %bpawns.046, %317 ], [ %bpawns.046, %305 ], [ %bpawns.046, %l_knight_mobility.exit28 ], [ %bpawns.046, %l_knight_mobility.exit ], [ %bpawns.046, %260 ], [ %bpawns.046, %251 ], [ %bpawns.046, %242 ], [ %bpawns.046, %233 ], [ %155, %227 ], [ %155, %231 ], [ %bpawns.046, %147 ], [ %bpawns.046, %151 ], [ %bpawns.046, %64 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !127
  %360 = icmp sgt i32 %a.3, %11, !dbg !466
  br i1 %360, label %._crit_edge, label %64, !dbg !127

._crit_edge:                                      ; preds = %359, %.preheader34, %.preheader
  %bpawns.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %bpawns.1, %359 ]
  %wpawns.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %wpawns.1, %359 ]
  %bpassp.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %bpassp.2, %359 ]
  %wpassp.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %wpassp.2, %359 ]
  %bks.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %bks.1, %359 ]
  %wks.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %wks.1, %359 ]
  %bp.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %bp.1, %359 ]
  %wp.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader34 ], [ %wp.1, %359 ]
  %361 = add nsw i32 %bp.0.lcssa, %wp.0.lcssa, !dbg !467
  %362 = icmp sgt i32 %361, 10, !dbg !469
  br i1 %362, label %363, label %367, !dbg !470

; <label>:363                                     ; preds = %._crit_edge
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %364 = load i32* %score, align 4, !dbg !471, !tbaa !90
  %365 = sub i32 %bks.0.lcssa, %wks.0.lcssa, !dbg !471
  %366 = add i32 %365, %364, !dbg !471
  call void @llvm.dbg.value(metadata i32 %366, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %366, i32* %score, align 4, !dbg !471, !tbaa !90
  br label %367, !dbg !473

; <label>:367                                     ; preds = %363, %._crit_edge
  %368 = load i32* @Material, align 4, !dbg !474, !tbaa !90
  %neg = sub i32 0, %368, !dbg !476
  %ispos = icmp sgt i32 %368, -1, !dbg !476
  %369 = select i1 %ispos, i32 %368, i32 %neg, !dbg !476
  %370 = icmp slt i32 %369, 901, !dbg !477
  br i1 %370, label %371, label %374, !dbg !478

; <label>:371                                     ; preds = %367
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %372 = load i32* %score, align 4, !dbg !479, !tbaa !90
  %373 = add nsw i32 %372, %368, !dbg !479
  call void @llvm.dbg.value(metadata i32 %373, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %373, i32* %score, align 4, !dbg !479, !tbaa !90
  br label %392, !dbg !481

; <label>:374                                     ; preds = %367
  %375 = load i32* @comp_color, align 4
  %notlhs = icmp slt i32 %368, 1, !dbg !482
  %notrhs = icmp ne i32 %375, 1, !dbg !482
  %or.cond.not = or i1 %notlhs, %notrhs, !dbg !482
  %376 = icmp ne i32 %wpassp.0.lcssa, 0, !dbg !485
  %or.cond3 = or i1 %376, %or.cond.not, !dbg !482
  br i1 %or.cond3, label %381, label %377, !dbg !482

; <label>:377                                     ; preds = %374
  %378 = sub i32 1800, %368, !dbg !486
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %379 = load i32* %score, align 4, !dbg !488, !tbaa !90
  %380 = add nsw i32 %378, %379, !dbg !488
  call void @llvm.dbg.value(metadata i32 %380, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %380, i32* %score, align 4, !dbg !488, !tbaa !90
  br label %392, !dbg !489

; <label>:381                                     ; preds = %374
  %382 = or i32 %375, %bpassp.0.lcssa, !dbg !490
  %383 = icmp ne i32 %382, 0, !dbg !490
  %384 = or i1 %ispos, %383, !dbg !490
  br i1 %384, label %389, label %385, !dbg !490

; <label>:385                                     ; preds = %381
  %386 = sub i32 -1800, %368, !dbg !492
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %387 = load i32* %score, align 4, !dbg !494, !tbaa !90
  %388 = add nsw i32 %386, %387, !dbg !494
  call void @llvm.dbg.value(metadata i32 %388, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %388, i32* %score, align 4, !dbg !494, !tbaa !90
  br label %392, !dbg !495

; <label>:389                                     ; preds = %381
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %390 = load i32* %score, align 4, !dbg !496, !tbaa !90
  %391 = add nsw i32 %390, %368, !dbg !496
  call void @llvm.dbg.value(metadata i32 %391, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %391, i32* %score, align 4, !dbg !496, !tbaa !90
  br label %392

; <label>:392                                     ; preds = %377, %389, %385, %371
  %393 = phi i32 [ %380, %377 ], [ %391, %389 ], [ %388, %385 ], [ %373, %371 ]
  %394 = icmp eq i32 %wpawns.0.lcssa, 0, !dbg !498
  br i1 %394, label %395, label %397, !dbg !500

; <label>:395                                     ; preds = %392
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %396 = add nsw i32 %393, 200, !dbg !501
  call void @llvm.dbg.value(metadata i32 %396, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %396, i32* %score, align 4, !dbg !501, !tbaa !90
  br label %401, !dbg !502

; <label>:397                                     ; preds = %392
  %398 = icmp eq i32 %bpawns.0.lcssa, 0, !dbg !503
  br i1 %398, label %399, label %401, !dbg !505

; <label>:399                                     ; preds = %397
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %400 = add nsw i32 %393, -200, !dbg !506
  call void @llvm.dbg.value(metadata i32 %400, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 %400, i32* %score, align 4, !dbg !506, !tbaa !90
  br label %401, !dbg !507

; <label>:401                                     ; preds = %397, %399, %395
  %402 = phi i32 [ %393, %397 ], [ %400, %399 ], [ %396, %395 ]
  %403 = icmp eq i32 %wp.0.lcssa, 0, !dbg !508
  br i1 %403, label %404, label %405, !dbg !510

; <label>:404                                     ; preds = %401
  call void @llvm.dbg.value(metadata i32 1000000, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 1000000, i32* %score, align 4, !dbg !511, !tbaa !90
  br label %408, !dbg !512

; <label>:405                                     ; preds = %401
  %406 = icmp eq i32 %bp.0.lcssa, 0, !dbg !513
  br i1 %406, label %407, label %408, !dbg !515

; <label>:407                                     ; preds = %405
  call void @llvm.dbg.value(metadata i32 -1000000, i64 0, metadata !31, metadata !82), !dbg !89
  store i32 -1000000, i32* %score, align 4, !dbg !516, !tbaa !90
  br label %408, !dbg !517

; <label>:408                                     ; preds = %405, %407, %404
  %409 = phi i32 [ %402, %405 ], [ -1000000, %407 ], [ 1000000, %404 ]
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  call void @storeECache(i32 %409) #6, !dbg !518
  %410 = load i32* @white_to_move, align 4, !dbg !519, !tbaa !90
  %411 = icmp eq i32 %410, 1, !dbg !521
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !31, metadata !82), !dbg !89
  %412 = load i32* %score, align 4, !dbg !522, !tbaa !90
  %413 = sub nsw i32 0, %412, !dbg !524
  %.11 = select i1 %411, i32 %412, i32 %413, !dbg !526
  br label %414, !dbg !526

; <label>:414                                     ; preds = %408, %6
  %.0 = phi i32 [ %.10, %6 ], [ %.11, %408 ]
  call void @llvm.lifetime.end(i64 44, i8* %2) #2, !dbg !527
  call void @llvm.lifetime.end(i64 44, i8* %1) #2, !dbg !527
  call void @llvm.lifetime.end(i64 88, i8* %3) #2, !dbg !527
  ret i32 %.0, !dbg !527
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
define internal fastcc i32 @l_pawn_mobility(i32 %square) #5 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !45, metadata !82), !dbg !528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !82), !dbg !529
  %1 = sext i32 %square to i64, !dbg !530
  %2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %1, !dbg !530
  %3 = load i32* %2, align 4, !dbg !530, !tbaa !90
  %4 = icmp eq i32 %3, 1, !dbg !532
  br i1 %4, label %5, label %11, !dbg !533

; <label>:5                                       ; preds = %0
  %6 = add nsw i32 %square, 12, !dbg !534
  %7 = sext i32 %6 to i64, !dbg !537
  %8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %7, !dbg !537
  %9 = load i32* %8, align 4, !dbg !537, !tbaa !90
  %10 = icmp eq i32 %9, 13, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !46, metadata !82), !dbg !529
  %. = zext i1 %10 to i32, !dbg !539
  ret i32 %., !dbg !539

; <label>:11                                      ; preds = %0
  %12 = add nsw i32 %square, -12, !dbg !540
  %13 = sext i32 %12 to i64, !dbg !543
  %14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %13, !dbg !543
  %15 = load i32* %14, align 4, !dbg !543, !tbaa !90
  %16 = icmp eq i32 %15, 13, !dbg !544
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !46, metadata !82), !dbg !529
  %.1 = zext i1 %16 to i32, !dbg !545
  ret i32 %.1, !dbg !546
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @l_rook_mobility(i32 %square) #5 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !49, metadata !82), !dbg !547
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !51, metadata !82), !dbg !548
  %1 = sext i32 %square to i64
  br label %2, !dbg !549

; <label>:2                                       ; preds = %2, %0
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %2 ], [ %1, %0 ]
  %m.0 = phi i32 [ %6, %2 ], [ 0, %0 ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -12, !dbg !551
  %3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next8, !dbg !552
  %4 = load i32* %3, align 4, !dbg !552, !tbaa !90
  %5 = icmp eq i32 %4, 13, !dbg !554
  %6 = add nuw nsw i32 %m.0, 1, !dbg !555
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !51, metadata !82), !dbg !548
  br i1 %5, label %2, label %.preheader2, !dbg !551

.preheader2:                                      ; preds = %2, %.preheader2
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %.preheader2 ], [ %1, %2 ]
  %m.1 = phi i32 [ %10, %.preheader2 ], [ %m.0, %2 ]
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1, !dbg !556
  %7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next6, !dbg !558
  %8 = load i32* %7, align 4, !dbg !558, !tbaa !90
  %9 = icmp eq i32 %8, 13, !dbg !560
  %10 = add nsw i32 %m.1, 1, !dbg !561
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !51, metadata !82), !dbg !548
  br i1 %9, label %.preheader2, label %.preheader1, !dbg !556

.preheader1:                                      ; preds = %.preheader2, %.preheader1
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %.preheader1 ], [ %1, %.preheader2 ]
  %m.2 = phi i32 [ %14, %.preheader1 ], [ %m.1, %.preheader2 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1, !dbg !562
  %11 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next4, !dbg !564
  %12 = load i32* %11, align 4, !dbg !564, !tbaa !90
  %13 = icmp eq i32 %12, 13, !dbg !566
  %14 = add nsw i32 %m.2, 1, !dbg !567
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !51, metadata !82), !dbg !548
  br i1 %13, label %.preheader1, label %.preheader, !dbg !562

.preheader:                                       ; preds = %.preheader1, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %1, %.preheader1 ]
  %m.3 = phi i32 [ %18, %.preheader ], [ %m.2, %.preheader1 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 12, !dbg !568
  %15 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !570
  %16 = load i32* %15, align 4, !dbg !570, !tbaa !90
  %17 = icmp eq i32 %16, 13, !dbg !572
  %18 = add nsw i32 %m.3, 1, !dbg !573
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !51, metadata !82), !dbg !548
  br i1 %17, label %.preheader, label %19, !dbg !568

; <label>:19                                      ; preds = %.preheader
  ret i32 %m.3, !dbg !574
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @l_bishop_mobility(i32 %square) #5 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !54, metadata !82), !dbg !575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !82), !dbg !576
  %1 = sext i32 %square to i64
  br label %2, !dbg !577

; <label>:2                                       ; preds = %2, %0
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %2 ], [ %1, %0 ]
  %m.0 = phi i32 [ %6, %2 ], [ 0, %0 ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -13, !dbg !579
  %3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next8, !dbg !580
  %4 = load i32* %3, align 4, !dbg !580, !tbaa !90
  %5 = icmp eq i32 %4, 13, !dbg !582
  %6 = add nuw nsw i32 %m.0, 1, !dbg !583
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !56, metadata !82), !dbg !576
  br i1 %5, label %2, label %.preheader2, !dbg !579

.preheader2:                                      ; preds = %2, %.preheader2
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %.preheader2 ], [ %1, %2 ]
  %m.1 = phi i32 [ %10, %.preheader2 ], [ %m.0, %2 ]
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -11, !dbg !584
  %7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next6, !dbg !586
  %8 = load i32* %7, align 4, !dbg !586, !tbaa !90
  %9 = icmp eq i32 %8, 13, !dbg !588
  %10 = add nsw i32 %m.1, 1, !dbg !589
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !56, metadata !82), !dbg !576
  br i1 %9, label %.preheader2, label %.preheader1, !dbg !584

.preheader1:                                      ; preds = %.preheader2, %.preheader1
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %.preheader1 ], [ %1, %.preheader2 ]
  %m.2 = phi i32 [ %14, %.preheader1 ], [ %m.1, %.preheader2 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 11, !dbg !590
  %11 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next4, !dbg !592
  %12 = load i32* %11, align 4, !dbg !592, !tbaa !90
  %13 = icmp eq i32 %12, 13, !dbg !594
  %14 = add nsw i32 %m.2, 1, !dbg !595
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !56, metadata !82), !dbg !576
  br i1 %13, label %.preheader1, label %.preheader, !dbg !590

.preheader:                                       ; preds = %.preheader1, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %1, %.preheader1 ]
  %m.3 = phi i32 [ %18, %.preheader ], [ %m.2, %.preheader1 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 13, !dbg !596
  %15 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !598
  %16 = load i32* %15, align 4, !dbg !598, !tbaa !90
  %17 = icmp eq i32 %16, 13, !dbg !600
  %18 = add nsw i32 %m.3, 1, !dbg !601
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !56, metadata !82), !dbg !576
  br i1 %17, label %.preheader, label %19, !dbg !596

; <label>:19                                      ; preds = %.preheader
  ret i32 %m.3, !dbg !602
}

; Function Attrs: optsize
declare void @storeECache(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !9, globals: !67, imports: !8)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/leval.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{}
!9 = !{!10, !41, !47, !52, !57, !62}
!10 = !DISubprogram(name: "losers_eval", scope: !1, file: !1, line: 106, type: !11, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @losers_eval, variables: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !22, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "srank", scope: !10, file: !1, line: 109, type: !13)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawn_file", scope: !10, file: !1, line: 109, type: !13)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawns", scope: !10, file: !1, line: 109, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 704, align: 32, elements: !19)
!19 = !{!20, !21}
!20 = !DISubrange(count: 2)
!21 = !DISubrange(count: 11)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "white_back_pawn", scope: !10, file: !1, line: 109, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 352, align: 32, elements: !24)
!24 = !{!21}
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "black_back_pawn", scope: !10, file: !1, line: 109, type: !23)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isolated", scope: !10, file: !1, line: 110, type: !13)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "backwards", scope: !10, file: !1, line: 110, type: !13)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !10, file: !1, line: 111, type: !13)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !10, file: !1, line: 111, type: !13)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !10, file: !1, line: 111, type: !13)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !10, file: !1, line: 112, type: !13)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_cache", scope: !10, file: !1, line: 113, type: !13)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wp", scope: !10, file: !1, line: 114, type: !13)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bp", scope: !10, file: !1, line: 114, type: !13)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wks", scope: !10, file: !1, line: 115, type: !13)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bks", scope: !10, file: !1, line: 115, type: !13)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wpassp", scope: !10, file: !1, line: 116, type: !13)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bpassp", scope: !10, file: !1, line: 116, type: !13)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wpawns", scope: !10, file: !1, line: 117, type: !13)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bpawns", scope: !10, file: !1, line: 117, type: !13)
!41 = !DISubprogram(name: "l_pawn_mobility", scope: !1, file: !1, line: 76, type: !42, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @l_pawn_mobility, variables: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{!13, !13}
!44 = !{!45, !46}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !41, file: !1, line: 76, type: !13)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !41, file: !1, line: 78, type: !13)
!47 = !DISubprogram(name: "l_rook_mobility", scope: !1, file: !1, line: 45, type: !42, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @l_rook_mobility, variables: !48)
!48 = !{!49, !50, !51}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !47, file: !1, line: 45, type: !13)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !47, file: !1, line: 47, type: !13)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !47, file: !1, line: 48, type: !13)
!52 = !DISubprogram(name: "l_bishop_mobility", scope: !1, file: !1, line: 28, type: !42, isLocal: true, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @l_bishop_mobility, variables: !53)
!53 = !{!54, !55, !56}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !52, file: !1, line: 28, type: !13)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !52, file: !1, line: 30, type: !13)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !52, file: !1, line: 31, type: !13)
!57 = !DISubprogram(name: "l_knight_mobility", scope: !1, file: !1, line: 63, type: !42, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, variables: !58)
!58 = !{!59, !60, !61}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !57, file: !1, line: 63, type: !13)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !57, file: !1, line: 66, type: !13)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !57, file: !1, line: 66, type: !13)
!62 = !DISubprogram(name: "l_king_mobility", scope: !1, file: !1, line: 92, type: !42, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, variables: !63)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !62, file: !1, line: 92, type: !13)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !62, file: !1, line: 95, type: !13)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !62, file: !1, line: 95, type: !13)
!67 = !{!68, !72, !77}
!68 = !DIGlobalVariable(name: "lcentral", scope: !0, file: !1, line: 14, type: !69, isLocal: true, isDefinition: true, variable: [144 x i32]* @lcentral)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 4608, align: 32, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 144)
!72 = !DIGlobalVariable(name: "knight_o", scope: !57, file: !1, line: 65, type: !73, isLocal: true, isDefinition: true, variable: [8 x i32]* @l_knight_mobility.knight_o)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, align: 32, elements: !75)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!75 = !{!76}
!76 = !DISubrange(count: 8)
!77 = !DIGlobalVariable(name: "king_o", scope: !62, file: !1, line: 94, type: !73, isLocal: true, isDefinition: true, variable: [8 x i32]* @l_king_mobility.king_o)
!78 = !{i32 2, !"Dwarf Version", i32 2}
!79 = !{i32 2, !"Debug Info Version", i32 700000003}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!82 = !DIExpression()
!83 = !DILocation(line: 109, column: 7, scope: !10)
!84 = !DILocation(line: 109, column: 18, scope: !10)
!85 = !DILocation(line: 109, column: 3, scope: !10)
!86 = !DILocation(line: 109, column: 33, scope: !10)
!87 = !DILocation(line: 109, column: 47, scope: !10)
!88 = !DILocation(line: 109, column: 68, scope: !10)
!89 = !DILocation(line: 112, column: 7, scope: !10)
!90 = !{!91, !91, i64 0}
!91 = !{!"int", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 114, column: 7, scope: !10)
!95 = !DILocation(line: 114, column: 15, scope: !10)
!96 = !DILocation(line: 115, column: 7, scope: !10)
!97 = !DILocation(line: 115, column: 16, scope: !10)
!98 = !DILocation(line: 116, column: 7, scope: !10)
!99 = !DILocation(line: 116, column: 19, scope: !10)
!100 = !DILocation(line: 117, column: 7, scope: !10)
!101 = !DILocation(line: 117, column: 19, scope: !10)
!102 = !DILocation(line: 113, column: 7, scope: !10)
!103 = !DILocation(line: 119, column: 12, scope: !10)
!104 = !DILocation(line: 121, column: 3, scope: !10)
!105 = !DILocation(line: 123, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !10, file: !1, line: 123, column: 6)
!107 = !DILocation(line: 123, column: 6, scope: !10)
!108 = !DILocation(line: 125, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 125, column: 11)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 124, column: 5)
!111 = !DILocation(line: 125, column: 25, scope: !109)
!112 = !DILocation(line: 125, column: 38, scope: !109)
!113 = !DILocation(line: 126, column: 14, scope: !110)
!114 = !DILocation(line: 125, column: 11, scope: !110)
!115 = !DILocation(line: 132, column: 3, scope: !10)
!116 = !DILocation(line: 111, column: 7, scope: !10)
!117 = !DILocation(line: 134, column: 24, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 133, column: 28)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 133, column: 3)
!120 = distinct !DILexicalBlock(scope: !10, file: !1, line: 133, column: 3)
!121 = !DILocation(line: 135, column: 24, scope: !118)
!122 = !DILocation(line: 137, column: 28, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 137, column: 3)
!124 = distinct !DILexicalBlock(scope: !10, file: !1, line: 137, column: 3)
!125 = !DILocation(line: 137, column: 25, scope: !123)
!126 = !DILocation(line: 137, column: 3, scope: !124)
!127 = !DILocation(line: 165, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !10, file: !1, line: 165, column: 3)
!129 = !DILocation(line: 184, column: 31, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 184, column: 6)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 173, column: 23)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 165, column: 47)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 165, column: 3)
!134 = !DILocation(line: 184, column: 6, scope: !130)
!135 = !DILocation(line: 185, column: 34, scope: !130)
!136 = !DILocation(line: 185, column: 9, scope: !130)
!137 = !DILocation(line: 189, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 189, column: 8)
!139 = distinct !DILexicalBlock(scope: !130, file: !1, line: 185, column: 47)
!140 = !DILocation(line: 189, column: 35, scope: !138)
!141 = !DILocation(line: 195, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !131, file: !1, line: 195, column: 6)
!143 = !DILocation(line: 200, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !131, file: !1, line: 200, column: 6)
!145 = !DILocation(line: 203, column: 39, scope: !146)
!146 = distinct !DILexicalBlock(scope: !131, file: !1, line: 203, column: 6)
!147 = !DILocation(line: 204, column: 15, scope: !146)
!148 = !DILocation(line: 247, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 247, column: 8)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 243, column: 47)
!151 = distinct !DILexicalBlock(scope: !131, file: !1, line: 242, column: 6)
!152 = !DILocation(line: 247, column: 35, scope: !149)
!153 = !DILocation(line: 138, column: 10, scope: !154)
!154 = distinct !DILexicalBlock(scope: !123, file: !1, line: 137, column: 47)
!155 = !DILocation(line: 140, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !154, file: !1, line: 140, column: 9)
!157 = !DILocation(line: 140, column: 9, scope: !154)
!158 = !DILocation(line: 143, column: 8, scope: !156)
!159 = !DILocation(line: 111, column: 10, scope: !10)
!160 = !DILocation(line: 145, column: 5, scope: !154)
!161 = !{!"branch_weights", i32 64, i32 4}
!162 = !DILocation(line: 147, column: 17, scope: !154)
!163 = !DILocation(line: 147, column: 25, scope: !154)
!164 = !DILocation(line: 148, column: 13, scope: !154)
!165 = !DILocation(line: 149, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !1, line: 149, column: 9)
!167 = !DILocation(line: 149, column: 9, scope: !154)
!168 = !DILocation(line: 150, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 149, column: 28)
!170 = !DILocation(line: 150, column: 26, scope: !169)
!171 = !DILocation(line: 151, column: 19, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !1, line: 151, column: 11)
!173 = !DILocation(line: 151, column: 17, scope: !172)
!174 = !DILocation(line: 151, column: 11, scope: !169)
!175 = !DILocation(line: 152, column: 29, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 151, column: 47)
!177 = !DILocation(line: 153, column: 7, scope: !176)
!178 = !DILocation(line: 156, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 155, column: 33)
!180 = distinct !DILexicalBlock(scope: !166, file: !1, line: 155, column: 14)
!181 = !DILocation(line: 156, column: 26, scope: !179)
!182 = !DILocation(line: 157, column: 19, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 157, column: 11)
!184 = !DILocation(line: 157, column: 17, scope: !183)
!185 = !DILocation(line: 157, column: 11, scope: !179)
!186 = !DILocation(line: 158, column: 29, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 157, column: 47)
!188 = !DILocation(line: 159, column: 7, scope: !187)
!189 = !DILocation(line: 166, column: 9, scope: !132)
!190 = !DILocation(line: 168, column: 10, scope: !191)
!191 = distinct !DILexicalBlock(scope: !132, file: !1, line: 168, column: 9)
!192 = !DILocation(line: 168, column: 9, scope: !132)
!193 = !DILocation(line: 171, column: 8, scope: !191)
!194 = !DILocation(line: 173, column: 13, scope: !132)
!195 = !DILocation(line: 173, column: 5, scope: !132)
!196 = !DILocation(line: 175, column: 4, scope: !131)
!197 = !DILocation(line: 176, column: 8, scope: !131)
!198 = !DILocation(line: 177, column: 11, scope: !131)
!199 = !DILocation(line: 177, column: 8, scope: !131)
!200 = !DILocation(line: 178, column: 11, scope: !131)
!201 = !DILocation(line: 178, column: 30, scope: !131)
!202 = !DILocation(line: 178, column: 8, scope: !131)
!203 = !DILocation(line: 179, column: 12, scope: !131)
!204 = !DILocation(line: 179, column: 25, scope: !131)
!205 = !DILocation(line: 179, column: 8, scope: !131)
!206 = !DILocation(line: 110, column: 7, scope: !10)
!207 = !DILocation(line: 110, column: 17, scope: !10)
!208 = !DILocation(line: 184, column: 35, scope: !130)
!209 = !DILocation(line: 185, column: 6, scope: !130)
!210 = !DILocation(line: 185, column: 38, scope: !130)
!211 = !DILocation(line: 184, column: 6, scope: !131)
!212 = !DILocation(line: 186, column: 10, scope: !139)
!213 = !DILocation(line: 189, column: 31, scope: !138)
!214 = !DILocation(line: 189, column: 8, scope: !139)
!215 = !DILocation(line: 190, column: 12, scope: !216)
!216 = distinct !DILexicalBlock(scope: !138, file: !1, line: 189, column: 58)
!217 = !DILocation(line: 192, column: 4, scope: !216)
!218 = !DILocation(line: 195, column: 6, scope: !131)
!219 = !DILocation(line: 196, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 196, column: 8)
!221 = distinct !DILexicalBlock(scope: !142, file: !1, line: 195, column: 28)
!222 = !DILocation(line: 196, column: 8, scope: !221)
!223 = !DILocation(line: 196, column: 25, scope: !220)
!224 = !DILocation(line: 196, column: 19, scope: !220)
!225 = !DILocation(line: 197, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !1, line: 197, column: 8)
!227 = !DILocation(line: 197, column: 8, scope: !221)
!228 = !DILocation(line: 197, column: 24, scope: !226)
!229 = !DILocation(line: 197, column: 18, scope: !226)
!230 = !DILocation(line: 200, column: 26, scope: !144)
!231 = !DILocation(line: 200, column: 6, scope: !131)
!232 = !DILocation(line: 201, column: 14, scope: !144)
!233 = !DILocation(line: 201, column: 10, scope: !144)
!234 = !DILocation(line: 201, column: 4, scope: !144)
!235 = !DILocation(line: 203, column: 27, scope: !146)
!236 = !DILocation(line: 203, column: 36, scope: !146)
!237 = !DILocation(line: 203, column: 68, scope: !146)
!238 = !DILocation(line: 204, column: 12, scope: !146)
!239 = !DILocation(line: 203, column: 6, scope: !131)
!240 = !DILocation(line: 205, column: 20, scope: !241)
!241 = distinct !DILexicalBlock(scope: !146, file: !1, line: 204, column: 45)
!242 = !DILocation(line: 205, column: 16, scope: !241)
!243 = !DILocation(line: 205, column: 10, scope: !241)
!244 = !DILocation(line: 207, column: 16, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 207, column: 8)
!246 = !DILocation(line: 207, column: 28, scope: !245)
!247 = !DILocation(line: 207, column: 8, scope: !241)
!248 = !DILocation(line: 209, column: 10, scope: !241)
!249 = !DILocation(line: 212, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !241, file: !1, line: 212, column: 8)
!251 = !DILocation(line: 212, column: 21, scope: !250)
!252 = !DILocation(line: 213, column: 20, scope: !250)
!253 = !DILocation(line: 213, column: 12, scope: !250)
!254 = !DILocation(line: 213, column: 6, scope: !250)
!255 = !DILocation(line: 216, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !241, file: !1, line: 216, column: 8)
!257 = !DILocation(line: 216, column: 8, scope: !241)
!258 = !DILocation(line: 218, column: 14, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !1, line: 217, column: 6)
!260 = !DILocation(line: 219, column: 6, scope: !259)
!261 = !DILocation(line: 223, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !131, file: !1, line: 223, column: 6)
!263 = !DILocation(line: 223, column: 6, scope: !131)
!264 = !DILocation(line: 224, column: 10, scope: !262)
!265 = !DILocation(line: 224, column: 4, scope: !262)
!266 = !DILocation(line: 229, column: 4, scope: !131)
!267 = !DILocation(line: 230, column: 8, scope: !131)
!268 = !DILocation(line: 231, column: 11, scope: !131)
!269 = !DILocation(line: 231, column: 8, scope: !131)
!270 = !DILocation(line: 232, column: 11, scope: !131)
!271 = !DILocation(line: 232, column: 30, scope: !131)
!272 = !DILocation(line: 232, column: 8, scope: !131)
!273 = !DILocation(line: 233, column: 16, scope: !131)
!274 = !DILocation(line: 233, column: 14, scope: !131)
!275 = !DILocation(line: 233, column: 25, scope: !131)
!276 = !DILocation(line: 233, column: 8, scope: !131)
!277 = !DILocation(line: 242, column: 6, scope: !151)
!278 = !DILocation(line: 242, column: 35, scope: !151)
!279 = !DILocation(line: 243, column: 6, scope: !151)
!280 = !DILocation(line: 243, column: 9, scope: !151)
!281 = !DILocation(line: 243, column: 38, scope: !151)
!282 = !DILocation(line: 242, column: 6, scope: !131)
!283 = !DILocation(line: 244, column: 10, scope: !150)
!284 = !DILocation(line: 247, column: 31, scope: !149)
!285 = !DILocation(line: 247, column: 8, scope: !150)
!286 = !DILocation(line: 248, column: 12, scope: !287)
!287 = distinct !DILexicalBlock(scope: !149, file: !1, line: 247, column: 58)
!288 = !DILocation(line: 250, column: 4, scope: !287)
!289 = !DILocation(line: 253, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !131, file: !1, line: 253, column: 6)
!291 = !DILocation(line: 253, column: 6, scope: !131)
!292 = !DILocation(line: 254, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 254, column: 8)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 253, column: 28)
!295 = !DILocation(line: 254, column: 8, scope: !294)
!296 = !DILocation(line: 254, column: 25, scope: !293)
!297 = !DILocation(line: 254, column: 19, scope: !293)
!298 = !DILocation(line: 255, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !1, line: 255, column: 8)
!300 = !DILocation(line: 255, column: 8, scope: !294)
!301 = !DILocation(line: 255, column: 24, scope: !299)
!302 = !DILocation(line: 255, column: 18, scope: !299)
!303 = !DILocation(line: 258, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !131, file: !1, line: 258, column: 6)
!305 = !DILocation(line: 258, column: 26, scope: !304)
!306 = !DILocation(line: 258, column: 6, scope: !131)
!307 = !DILocation(line: 259, column: 14, scope: !304)
!308 = !DILocation(line: 259, column: 10, scope: !304)
!309 = !DILocation(line: 259, column: 4, scope: !304)
!310 = !DILocation(line: 261, column: 27, scope: !311)
!311 = distinct !DILexicalBlock(scope: !131, file: !1, line: 261, column: 6)
!312 = !DILocation(line: 261, column: 39, scope: !311)
!313 = !DILocation(line: 261, column: 36, scope: !311)
!314 = !DILocation(line: 261, column: 68, scope: !311)
!315 = !DILocation(line: 262, column: 15, scope: !311)
!316 = !DILocation(line: 262, column: 12, scope: !311)
!317 = !DILocation(line: 261, column: 6, scope: !131)
!318 = !DILocation(line: 263, column: 16, scope: !319)
!319 = distinct !DILexicalBlock(scope: !311, file: !1, line: 262, column: 45)
!320 = !DILocation(line: 263, column: 10, scope: !319)
!321 = !DILocation(line: 265, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !1, line: 265, column: 8)
!323 = !DILocation(line: 265, column: 28, scope: !322)
!324 = !DILocation(line: 265, column: 8, scope: !319)
!325 = !DILocation(line: 267, column: 10, scope: !319)
!326 = !DILocation(line: 270, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !319, file: !1, line: 270, column: 8)
!328 = !DILocation(line: 270, column: 21, scope: !327)
!329 = !DILocation(line: 271, column: 20, scope: !327)
!330 = !DILocation(line: 271, column: 17, scope: !327)
!331 = !DILocation(line: 271, column: 12, scope: !327)
!332 = !DILocation(line: 271, column: 6, scope: !327)
!333 = !DILocation(line: 274, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !319, file: !1, line: 274, column: 8)
!335 = !DILocation(line: 274, column: 8, scope: !319)
!336 = !DILocation(line: 276, column: 14, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !1, line: 275, column: 6)
!338 = !DILocation(line: 277, column: 6, scope: !337)
!339 = !DILocation(line: 280, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !131, file: !1, line: 280, column: 6)
!341 = !DILocation(line: 280, column: 6, scope: !131)
!342 = !DILocation(line: 281, column: 10, scope: !340)
!343 = !DILocation(line: 281, column: 4, scope: !340)
!344 = !DILocation(line: 286, column: 4, scope: !131)
!345 = !DILocation(line: 287, column: 11, scope: !131)
!346 = !DILocation(line: 287, column: 30, scope: !131)
!347 = !DILocation(line: 287, column: 8, scope: !131)
!348 = !DILocation(line: 288, column: 11, scope: !131)
!349 = !DILocation(line: 288, column: 8, scope: !131)
!350 = !DILocation(line: 289, column: 2, scope: !131)
!351 = !DILocation(line: 292, column: 4, scope: !131)
!352 = !DILocation(line: 293, column: 11, scope: !131)
!353 = !DILocation(line: 293, column: 30, scope: !131)
!354 = !DILocation(line: 293, column: 8, scope: !131)
!355 = !DILocation(line: 294, column: 11, scope: !131)
!356 = !DILocation(line: 294, column: 8, scope: !131)
!357 = !DILocation(line: 295, column: 2, scope: !131)
!358 = !DILocation(line: 298, column: 4, scope: !131)
!359 = !DILocation(line: 299, column: 11, scope: !131)
!360 = !DILocation(line: 299, column: 32, scope: !131)
!361 = !DILocation(line: 299, column: 8, scope: !131)
!362 = !DILocation(line: 300, column: 11, scope: !131)
!363 = !DILocation(line: 300, column: 8, scope: !131)
!364 = !DILocation(line: 301, column: 2, scope: !131)
!365 = !DILocation(line: 304, column: 4, scope: !131)
!366 = !DILocation(line: 305, column: 11, scope: !131)
!367 = !DILocation(line: 305, column: 32, scope: !131)
!368 = !DILocation(line: 305, column: 8, scope: !131)
!369 = !DILocation(line: 306, column: 11, scope: !131)
!370 = !DILocation(line: 306, column: 8, scope: !131)
!371 = !DILocation(line: 307, column: 2, scope: !131)
!372 = !DILocation(line: 311, column: 11, scope: !131)
!373 = !DILocation(line: 311, column: 23, scope: !131)
!374 = !DILocation(line: 311, column: 8, scope: !131)
!375 = !DILocation(line: 63, column: 34, scope: !57, inlinedAt: !376)
!376 = distinct !DILocation(line: 312, column: 11, scope: !131)
!377 = !DILocation(line: 66, column: 19, scope: !57, inlinedAt: !376)
!378 = !DILocation(line: 66, column: 16, scope: !57, inlinedAt: !376)
!379 = !DILocation(line: 68, column: 3, scope: !380, inlinedAt: !376)
!380 = distinct !DILexicalBlock(scope: !57, file: !1, line: 68, column: 3)
!381 = !DILocation(line: 312, column: 11, scope: !131)
!382 = !DILocation(line: 70, column: 26, scope: !383, inlinedAt: !376)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 70, column: 11)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 69, column: 5)
!385 = distinct !DILexicalBlock(scope: !380, file: !1, line: 68, column: 3)
!386 = !DILocation(line: 70, column: 24, scope: !383, inlinedAt: !376)
!387 = !DILocation(line: 70, column: 11, scope: !383, inlinedAt: !376)
!388 = !DILocation(line: 70, column: 39, scope: !383, inlinedAt: !376)
!389 = !DILocation(line: 70, column: 11, scope: !384, inlinedAt: !376)
!390 = !DILocation(line: 310, column: 4, scope: !131)
!391 = !DILocation(line: 312, column: 32, scope: !131)
!392 = !DILocation(line: 312, column: 8, scope: !131)
!393 = !DILocation(line: 313, column: 2, scope: !131)
!394 = !DILocation(line: 317, column: 11, scope: !131)
!395 = !DILocation(line: 317, column: 23, scope: !131)
!396 = !DILocation(line: 317, column: 8, scope: !131)
!397 = !DILocation(line: 63, column: 34, scope: !57, inlinedAt: !398)
!398 = distinct !DILocation(line: 318, column: 11, scope: !131)
!399 = !DILocation(line: 66, column: 19, scope: !57, inlinedAt: !398)
!400 = !DILocation(line: 66, column: 16, scope: !57, inlinedAt: !398)
!401 = !DILocation(line: 68, column: 3, scope: !380, inlinedAt: !398)
!402 = !DILocation(line: 318, column: 11, scope: !131)
!403 = !DILocation(line: 70, column: 26, scope: !383, inlinedAt: !398)
!404 = !DILocation(line: 70, column: 24, scope: !383, inlinedAt: !398)
!405 = !DILocation(line: 70, column: 11, scope: !383, inlinedAt: !398)
!406 = !DILocation(line: 70, column: 39, scope: !383, inlinedAt: !398)
!407 = !DILocation(line: 70, column: 11, scope: !384, inlinedAt: !398)
!408 = !DILocation(line: 316, column: 4, scope: !131)
!409 = !DILocation(line: 318, column: 32, scope: !131)
!410 = !DILocation(line: 318, column: 8, scope: !131)
!411 = !DILocation(line: 319, column: 2, scope: !131)
!412 = !DILocation(line: 322, column: 4, scope: !131)
!413 = !DILocation(line: 323, column: 11, scope: !131)
!414 = !DILocation(line: 323, column: 32, scope: !131)
!415 = !DILocation(line: 323, column: 8, scope: !131)
!416 = !DILocation(line: 324, column: 11, scope: !131)
!417 = !DILocation(line: 324, column: 30, scope: !131)
!418 = !DILocation(line: 324, column: 8, scope: !131)
!419 = !DILocation(line: 325, column: 11, scope: !131)
!420 = !DILocation(line: 325, column: 8, scope: !131)
!421 = !DILocation(line: 326, column: 2, scope: !131)
!422 = !DILocation(line: 329, column: 4, scope: !131)
!423 = !DILocation(line: 330, column: 11, scope: !131)
!424 = !DILocation(line: 330, column: 32, scope: !131)
!425 = !DILocation(line: 330, column: 8, scope: !131)
!426 = !DILocation(line: 331, column: 11, scope: !131)
!427 = !DILocation(line: 331, column: 30, scope: !131)
!428 = !DILocation(line: 331, column: 8, scope: !131)
!429 = !DILocation(line: 332, column: 11, scope: !131)
!430 = !DILocation(line: 332, column: 8, scope: !131)
!431 = !DILocation(line: 333, column: 2, scope: !131)
!432 = !DILocation(line: 337, column: 8, scope: !131)
!433 = !DILocation(line: 92, column: 32, scope: !62, inlinedAt: !434)
!434 = distinct !DILocation(line: 338, column: 11, scope: !131)
!435 = !DILocation(line: 95, column: 19, scope: !62, inlinedAt: !434)
!436 = !DILocation(line: 95, column: 16, scope: !62, inlinedAt: !434)
!437 = !DILocation(line: 97, column: 3, scope: !438, inlinedAt: !434)
!438 = distinct !DILexicalBlock(scope: !62, file: !1, line: 97, column: 3)
!439 = !DILocation(line: 338, column: 11, scope: !131)
!440 = !DILocation(line: 99, column: 26, scope: !441, inlinedAt: !434)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 99, column: 11)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 98, column: 5)
!443 = distinct !DILexicalBlock(scope: !438, file: !1, line: 97, column: 3)
!444 = !DILocation(line: 99, column: 24, scope: !441, inlinedAt: !434)
!445 = !DILocation(line: 99, column: 11, scope: !441, inlinedAt: !434)
!446 = !DILocation(line: 99, column: 37, scope: !441, inlinedAt: !434)
!447 = !DILocation(line: 99, column: 11, scope: !442, inlinedAt: !434)
!448 = !DILocation(line: 337, column: 20, scope: !131)
!449 = !DILocation(line: 338, column: 8, scope: !131)
!450 = !DILocation(line: 339, column: 2, scope: !131)
!451 = !DILocation(line: 343, column: 8, scope: !131)
!452 = !DILocation(line: 92, column: 32, scope: !62, inlinedAt: !453)
!453 = distinct !DILocation(line: 344, column: 11, scope: !131)
!454 = !DILocation(line: 95, column: 19, scope: !62, inlinedAt: !453)
!455 = !DILocation(line: 95, column: 16, scope: !62, inlinedAt: !453)
!456 = !DILocation(line: 97, column: 3, scope: !438, inlinedAt: !453)
!457 = !DILocation(line: 344, column: 11, scope: !131)
!458 = !DILocation(line: 99, column: 26, scope: !441, inlinedAt: !453)
!459 = !DILocation(line: 99, column: 24, scope: !441, inlinedAt: !453)
!460 = !DILocation(line: 99, column: 11, scope: !441, inlinedAt: !453)
!461 = !DILocation(line: 99, column: 37, scope: !441, inlinedAt: !453)
!462 = !DILocation(line: 99, column: 11, scope: !442, inlinedAt: !453)
!463 = !DILocation(line: 343, column: 20, scope: !131)
!464 = !DILocation(line: 344, column: 8, scope: !131)
!465 = !DILocation(line: 345, column: 2, scope: !131)
!466 = !DILocation(line: 165, column: 25, scope: !133)
!467 = !DILocation(line: 349, column: 10, scope: !468)
!468 = distinct !DILexicalBlock(scope: !10, file: !1, line: 349, column: 7)
!469 = !DILocation(line: 349, column: 15, scope: !468)
!470 = !DILocation(line: 349, column: 7, scope: !10)
!471 = !DILocation(line: 351, column: 12, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !1, line: 350, column: 3)
!473 = !DILocation(line: 352, column: 3, scope: !472)
!474 = !DILocation(line: 354, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !10, file: !1, line: 354, column: 7)
!476 = !DILocation(line: 354, column: 7, scope: !475)
!477 = !DILocation(line: 354, column: 21, scope: !475)
!478 = !DILocation(line: 354, column: 7, scope: !10)
!479 = !DILocation(line: 356, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !475, file: !1, line: 355, column: 3)
!481 = !DILocation(line: 357, column: 3, scope: !480)
!482 = !DILocation(line: 371, column: 22, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 371, column: 9)
!484 = distinct !DILexicalBlock(scope: !475, file: !1, line: 359, column: 3)
!485 = !DILocation(line: 371, column: 50, scope: !483)
!486 = !DILocation(line: 373, column: 22, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !1, line: 372, column: 5)
!488 = !DILocation(line: 373, column: 14, scope: !487)
!489 = !DILocation(line: 374, column: 5, scope: !487)
!490 = !DILocation(line: 375, column: 27, scope: !491)
!491 = distinct !DILexicalBlock(scope: !483, file: !1, line: 375, column: 14)
!492 = !DILocation(line: 377, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !491, file: !1, line: 376, column: 5)
!494 = !DILocation(line: 377, column: 14, scope: !493)
!495 = !DILocation(line: 378, column: 5, scope: !493)
!496 = !DILocation(line: 381, column: 12, scope: !497)
!497 = distinct !DILexicalBlock(scope: !491, file: !1, line: 380, column: 5)
!498 = !DILocation(line: 385, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !10, file: !1, line: 385, column: 7)
!500 = !DILocation(line: 385, column: 7, scope: !10)
!501 = !DILocation(line: 385, column: 22, scope: !499)
!502 = !DILocation(line: 385, column: 16, scope: !499)
!503 = !DILocation(line: 386, column: 13, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !1, line: 386, column: 12)
!505 = !DILocation(line: 386, column: 12, scope: !499)
!506 = !DILocation(line: 386, column: 27, scope: !504)
!507 = !DILocation(line: 386, column: 21, scope: !504)
!508 = !DILocation(line: 388, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !10, file: !1, line: 388, column: 7)
!510 = !DILocation(line: 388, column: 7, scope: !10)
!511 = !DILocation(line: 388, column: 18, scope: !509)
!512 = !DILocation(line: 388, column: 12, scope: !509)
!513 = !DILocation(line: 389, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !1, line: 389, column: 12)
!515 = !DILocation(line: 389, column: 12, scope: !509)
!516 = !DILocation(line: 389, column: 23, scope: !514)
!517 = !DILocation(line: 389, column: 17, scope: !514)
!518 = !DILocation(line: 391, column: 3, scope: !10)
!519 = !DILocation(line: 394, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !10, file: !1, line: 394, column: 7)
!521 = !DILocation(line: 394, column: 21, scope: !520)
!522 = !DILocation(line: 395, column: 12, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !1, line: 394, column: 27)
!524 = !DILocation(line: 398, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !1, line: 397, column: 8)
!526 = !DILocation(line: 394, column: 7, scope: !10)
!527 = !DILocation(line: 401, column: 1, scope: !10)
!528 = !DILocation(line: 76, column: 32, scope: !41)
!529 = !DILocation(line: 78, column: 16, scope: !41)
!530 = !DILocation(line: 80, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !41, file: !1, line: 80, column: 7)
!532 = !DILocation(line: 80, column: 21, scope: !531)
!533 = !DILocation(line: 80, column: 7, scope: !41)
!534 = !DILocation(line: 82, column: 24, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 82, column: 11)
!536 = distinct !DILexicalBlock(scope: !531, file: !1, line: 81, column: 5)
!537 = !DILocation(line: 82, column: 11, scope: !535)
!538 = !DILocation(line: 82, column: 30, scope: !535)
!539 = !DILocation(line: 82, column: 11, scope: !536)
!540 = !DILocation(line: 86, column: 24, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 86, column: 11)
!542 = distinct !DILexicalBlock(scope: !531, file: !1, line: 85, column: 5)
!543 = !DILocation(line: 86, column: 11, scope: !541)
!544 = !DILocation(line: 86, column: 30, scope: !541)
!545 = !DILocation(line: 86, column: 11, scope: !542)
!546 = !DILocation(line: 89, column: 3, scope: !41)
!547 = !DILocation(line: 45, column: 32, scope: !47)
!548 = !DILocation(line: 48, column: 16, scope: !47)
!549 = !DILocation(line: 50, column: 8, scope: !550)
!550 = distinct !DILexicalBlock(scope: !47, file: !1, line: 50, column: 3)
!551 = !DILocation(line: 50, column: 3, scope: !550)
!552 = !DILocation(line: 50, column: 23, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !1, line: 50, column: 3)
!554 = !DILocation(line: 50, column: 32, scope: !553)
!555 = !DILocation(line: 51, column: 6, scope: !553)
!556 = !DILocation(line: 52, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !47, file: !1, line: 52, column: 3)
!558 = !DILocation(line: 52, column: 22, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !1, line: 52, column: 3)
!560 = !DILocation(line: 52, column: 31, scope: !559)
!561 = !DILocation(line: 53, column: 6, scope: !559)
!562 = !DILocation(line: 54, column: 3, scope: !563)
!563 = distinct !DILexicalBlock(scope: !47, file: !1, line: 54, column: 3)
!564 = !DILocation(line: 54, column: 22, scope: !565)
!565 = distinct !DILexicalBlock(scope: !563, file: !1, line: 54, column: 3)
!566 = !DILocation(line: 54, column: 31, scope: !565)
!567 = !DILocation(line: 55, column: 6, scope: !565)
!568 = !DILocation(line: 56, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !47, file: !1, line: 56, column: 3)
!570 = !DILocation(line: 56, column: 23, scope: !571)
!571 = distinct !DILexicalBlock(scope: !569, file: !1, line: 56, column: 3)
!572 = !DILocation(line: 56, column: 32, scope: !571)
!573 = !DILocation(line: 57, column: 6, scope: !571)
!574 = !DILocation(line: 59, column: 3, scope: !47)
!575 = !DILocation(line: 28, column: 34, scope: !52)
!576 = !DILocation(line: 31, column: 16, scope: !52)
!577 = !DILocation(line: 33, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !52, file: !1, line: 33, column: 3)
!579 = !DILocation(line: 33, column: 3, scope: !578)
!580 = !DILocation(line: 33, column: 23, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !1, line: 33, column: 3)
!582 = !DILocation(line: 33, column: 32, scope: !581)
!583 = !DILocation(line: 34, column: 6, scope: !581)
!584 = !DILocation(line: 35, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !52, file: !1, line: 35, column: 3)
!586 = !DILocation(line: 35, column: 23, scope: !587)
!587 = distinct !DILexicalBlock(scope: !585, file: !1, line: 35, column: 3)
!588 = !DILocation(line: 35, column: 32, scope: !587)
!589 = !DILocation(line: 36, column: 6, scope: !587)
!590 = !DILocation(line: 37, column: 3, scope: !591)
!591 = distinct !DILexicalBlock(scope: !52, file: !1, line: 37, column: 3)
!592 = !DILocation(line: 37, column: 23, scope: !593)
!593 = distinct !DILexicalBlock(scope: !591, file: !1, line: 37, column: 3)
!594 = !DILocation(line: 37, column: 32, scope: !593)
!595 = !DILocation(line: 38, column: 6, scope: !593)
!596 = !DILocation(line: 39, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !52, file: !1, line: 39, column: 3)
!598 = !DILocation(line: 39, column: 23, scope: !599)
!599 = distinct !DILexicalBlock(scope: !597, file: !1, line: 39, column: 3)
!600 = !DILocation(line: 39, column: 32, scope: !599)
!601 = !DILocation(line: 40, column: 6, scope: !599)
!602 = !DILocation(line: 42, column: 3, scope: !52)

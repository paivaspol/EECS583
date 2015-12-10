; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/see.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.see_data = type { i32, i32 }

@setup_attackers.rook_o = internal unnamed_addr constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@setup_attackers.bishop_o = internal unnamed_addr constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@setup_attackers.knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@see_num_attackers = common global [2 x i32] zeroinitializer, align 4
@board = external global [144 x i32]
@see_attackers = common global [2 x [16 x %struct.see_data]] zeroinitializer, align 16
@material = external global [14 x i32]

; Function Attrs: nounwind optsize ssp uwtable
define void @setup_attackers(i32 %square) #0 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !9, metadata !66), !dbg !67
  %1 = load i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !dbg !68, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !13, metadata !66), !dbg !73
  %2 = load i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !dbg !74, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !14, metadata !66), !dbg !75
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !12, metadata !66), !dbg !76
  br label %3, !dbg !77

; <label>:3                                       ; preds = %0, %.loopexit14
  %indvars.iv97 = phi i64 [ 0, %0 ], [ %indvars.iv.next98, %.loopexit14 ]
  %numb.057 = phi i32 [ %2, %0 ], [ %numb.1, %.loopexit14 ]
  %numw.056 = phi i32 [ %1, %0 ], [ %numw.1, %.loopexit14 ]
  %4 = getelementptr inbounds [4 x i32]* @setup_attackers.rook_o, i64 0, i64 %indvars.iv97, !dbg !79
  %5 = load i32* %4, align 4, !dbg !79, !tbaa !69
  %6 = add nsw i32 %5, %square, !dbg !82
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !10, metadata !66), !dbg !83
  %7 = sext i32 %6 to i64, !dbg !84
  %8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %7, !dbg !84
  %9 = load i32* %8, align 4, !dbg !84, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !11, metadata !66), !dbg !85
  switch i32 %9, label %.preheader13 [
    i32 5, label %10
    i32 6, label %15
  ], !dbg !86

; <label>:10                                      ; preds = %3
  %11 = sext i32 %numw.056 to i64, !dbg !87
  %12 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %11, i32 0, !dbg !90
  store i32 5, i32* %12, align 8, !dbg !91, !tbaa !92
  %13 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %11, i32 1, !dbg !94
  store i32 %6, i32* %13, align 4, !dbg !95, !tbaa !96
  %14 = add nsw i32 %numw.056, 1, !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !13, metadata !66), !dbg !73
  br label %.preheader12, !dbg !98

; <label>:15                                      ; preds = %3
  %16 = sext i32 %numb.057 to i64, !dbg !99
  %17 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %16, i32 0, !dbg !102
  store i32 6, i32* %17, align 8, !dbg !103, !tbaa !92
  %18 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %16, i32 1, !dbg !104
  store i32 %6, i32* %18, align 4, !dbg !105, !tbaa !96
  %19 = add nsw i32 %numb.057, 1, !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !14, metadata !66), !dbg !75
  br label %.preheader12, !dbg !107

.preheader13:                                     ; preds = %3, %35
  %a_sq.0 = phi i32 [ %36, %35 ], [ %6, %3 ]
  %b_sq.0 = phi i32 [ %39, %35 ], [ %9, %3 ]
  switch i32 %b_sq.0, label %25 [
    i32 0, label %.loopexit14
    i32 9, label %20
    i32 7, label %20
  ], !dbg !108

; <label>:20                                      ; preds = %.preheader13, %.preheader13
  %21 = sext i32 %numw.056 to i64, !dbg !110
  %22 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %21, i32 0, !dbg !114
  store i32 %b_sq.0, i32* %22, align 8, !dbg !115, !tbaa !92
  %23 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %21, i32 1, !dbg !116
  store i32 %a_sq.0, i32* %23, align 4, !dbg !117, !tbaa !96
  %24 = add nsw i32 %numw.056, 1, !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !13, metadata !66), !dbg !73
  br label %.loopexit14, !dbg !119

; <label>:25                                      ; preds = %.preheader13
  %26 = and i32 %b_sq.0, -3, !dbg !120
  %27 = icmp eq i32 %26, 8, !dbg !120
  br i1 %27, label %28, label %33, !dbg !120

; <label>:28                                      ; preds = %25
  %29 = sext i32 %numb.057 to i64, !dbg !122
  %30 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %29, i32 0, !dbg !124
  store i32 %b_sq.0, i32* %30, align 8, !dbg !125, !tbaa !92
  %31 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %29, i32 1, !dbg !126
  store i32 %a_sq.0, i32* %31, align 4, !dbg !127, !tbaa !96
  %32 = add nsw i32 %numb.057, 1, !dbg !128
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !14, metadata !66), !dbg !75
  br label %.loopexit14, !dbg !129

; <label>:33                                      ; preds = %25
  %34 = icmp eq i32 %b_sq.0, 13, !dbg !130
  br i1 %34, label %35, label %.loopexit14, !dbg !132

; <label>:35                                      ; preds = %33
  %36 = add nsw i32 %5, %a_sq.0, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !10, metadata !66), !dbg !83
  %37 = sext i32 %36 to i64, !dbg !134
  %38 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %37, !dbg !134
  %39 = load i32* %38, align 4, !dbg !134, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !11, metadata !66), !dbg !85
  br label %.preheader13, !dbg !108

.loopexit14:                                      ; preds = %.preheader13, %33, %20, %28
  %numw.1 = phi i32 [ %24, %20 ], [ %numw.056, %28 ], [ %numw.056, %33 ], [ %numw.056, %.preheader13 ]
  %numb.1 = phi i32 [ %numb.057, %20 ], [ %32, %28 ], [ %numb.057, %33 ], [ %numb.057, %.preheader13 ]
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1, !dbg !77
  %40 = icmp slt i64 %indvars.iv.next98, 4, !dbg !135
  br i1 %40, label %3, label %.preheader12, !dbg !77

.preheader12:                                     ; preds = %10, %15, %.loopexit14, %.loopexit
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.loopexit ], [ 0, %.loopexit14 ], [ 0, %15 ], [ 0, %10 ]
  %numb.354 = phi i32 [ %numb.4, %.loopexit ], [ %numb.1, %.loopexit14 ], [ %19, %15 ], [ %numb.057, %10 ]
  %numw.353 = phi i32 [ %numw.4, %.loopexit ], [ %numw.1, %.loopexit14 ], [ %numw.056, %15 ], [ %14, %10 ]
  %41 = getelementptr inbounds [4 x i32]* @setup_attackers.bishop_o, i64 0, i64 %indvars.iv95, !dbg !136
  %42 = load i32* %41, align 4, !dbg !136, !tbaa !69
  %43 = add nsw i32 %42, %square, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !10, metadata !66), !dbg !83
  %44 = sext i32 %43 to i64, !dbg !141
  %45 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %44, !dbg !141
  %46 = load i32* %45, align 4, !dbg !141, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !11, metadata !66), !dbg !85
  %47 = icmp ne i32 %46, 1, !dbg !142
  %48 = and i64 %indvars.iv95, 1, !dbg !144
  %49 = icmp eq i64 %48, 0, !dbg !144
  %or.cond = or i1 %49, %47, !dbg !145
  br i1 %or.cond, label %55, label %50, !dbg !145

; <label>:50                                      ; preds = %.preheader12
  %51 = sext i32 %numw.353 to i64, !dbg !146
  %52 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %51, i32 0, !dbg !148
  store i32 1, i32* %52, align 8, !dbg !149, !tbaa !92
  %53 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %51, i32 1, !dbg !150
  store i32 %43, i32* %53, align 4, !dbg !151, !tbaa !96
  %54 = add nsw i32 %numw.353, 1, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !13, metadata !66), !dbg !73
  br label %.preheader, !dbg !153

; <label>:55                                      ; preds = %.preheader12
  %56 = icmp eq i32 %46, 2, !dbg !154
  %or.cond10 = and i1 %49, %56, !dbg !156
  br i1 %or.cond10, label %57, label %62, !dbg !156

; <label>:57                                      ; preds = %55
  %58 = sext i32 %numb.354 to i64, !dbg !157
  %59 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %58, i32 0, !dbg !159
  store i32 2, i32* %59, align 8, !dbg !160, !tbaa !92
  %60 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %58, i32 1, !dbg !161
  store i32 %43, i32* %60, align 4, !dbg !162, !tbaa !96
  %61 = add nsw i32 %numb.354, 1, !dbg !163
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !14, metadata !66), !dbg !75
  br label %.preheader, !dbg !164

; <label>:62                                      ; preds = %55
  switch i32 %46, label %.lr.ph [
    i32 5, label %63
    i32 6, label %68
    i32 0, label %.loopexit
  ], !dbg !165

; <label>:63                                      ; preds = %62
  %64 = sext i32 %numw.353 to i64, !dbg !166
  %65 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %64, i32 0, !dbg !169
  store i32 5, i32* %65, align 8, !dbg !170, !tbaa !92
  %66 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %64, i32 1, !dbg !171
  store i32 %43, i32* %66, align 4, !dbg !172, !tbaa !96
  %67 = add nsw i32 %numw.353, 1, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !13, metadata !66), !dbg !73
  br label %.preheader, !dbg !174

; <label>:68                                      ; preds = %62
  %69 = sext i32 %numb.354 to i64, !dbg !175
  %70 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %69, i32 0, !dbg !178
  store i32 6, i32* %70, align 8, !dbg !179, !tbaa !92
  %71 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %69, i32 1, !dbg !180
  store i32 %43, i32* %71, align 4, !dbg !181, !tbaa !96
  %72 = add nsw i32 %numb.354, 1, !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !14, metadata !66), !dbg !75
  br label %.preheader, !dbg !183

.lr.ph:                                           ; preds = %62, %86
  %b_sq.150 = phi i32 [ %90, %86 ], [ %46, %62 ]
  %a_sq.149 = phi i32 [ %87, %86 ], [ %43, %62 ]
  %73 = and i32 %b_sq.150, -3, !dbg !184
  %74 = icmp eq i32 %73, 9, !dbg !184
  br i1 %74, label %75, label %80, !dbg !184

; <label>:75                                      ; preds = %.lr.ph
  %76 = sext i32 %numw.353 to i64, !dbg !188
  %77 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %76, i32 0, !dbg !190
  store i32 %b_sq.150, i32* %77, align 8, !dbg !191, !tbaa !92
  %78 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %76, i32 1, !dbg !192
  store i32 %a_sq.149, i32* %78, align 4, !dbg !193, !tbaa !96
  %79 = add nsw i32 %numw.353, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !13, metadata !66), !dbg !73
  br label %.loopexit, !dbg !195

; <label>:80                                      ; preds = %.lr.ph
  switch i32 %b_sq.150, label %.loopexit [
    i32 12, label %81
    i32 10, label %81
    i32 13, label %86
  ], !dbg !196

; <label>:81                                      ; preds = %80, %80
  %82 = sext i32 %numb.354 to i64, !dbg !198
  %83 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %82, i32 0, !dbg !200
  store i32 %b_sq.150, i32* %83, align 8, !dbg !201, !tbaa !92
  %84 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %82, i32 1, !dbg !202
  store i32 %a_sq.149, i32* %84, align 4, !dbg !203, !tbaa !96
  %85 = add nsw i32 %numb.354, 1, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !14, metadata !66), !dbg !75
  br label %.loopexit, !dbg !205

; <label>:86                                      ; preds = %80
  %87 = add nsw i32 %42, %a_sq.149, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !10, metadata !66), !dbg !83
  %88 = sext i32 %87 to i64, !dbg !207
  %89 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %88, !dbg !207
  %90 = load i32* %89, align 4, !dbg !207, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !11, metadata !66), !dbg !85
  %91 = icmp eq i32 %90, 0, !dbg !208
  br i1 %91, label %.loopexit, label %.lr.ph, !dbg !209

.loopexit:                                        ; preds = %86, %80, %62, %75, %81
  %numw.4 = phi i32 [ %79, %75 ], [ %numw.353, %81 ], [ %numw.353, %62 ], [ %numw.353, %80 ], [ %numw.353, %86 ]
  %numb.4 = phi i32 [ %numb.354, %75 ], [ %85, %81 ], [ %numb.354, %62 ], [ %numb.354, %80 ], [ %numb.354, %86 ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1, !dbg !210
  %92 = icmp slt i64 %indvars.iv.next96, 4, !dbg !211
  br i1 %92, label %.preheader12, label %.preheader, !dbg !210

.preheader:                                       ; preds = %50, %57, %63, %68, %.loopexit, %109
  %indvars.iv = phi i64 [ %indvars.iv.next, %109 ], [ 0, %.loopexit ], [ 0, %68 ], [ 0, %63 ], [ 0, %57 ], [ 0, %50 ]
  %numb.648 = phi i32 [ %numb.7, %109 ], [ %numb.4, %.loopexit ], [ %72, %68 ], [ %numb.354, %63 ], [ %61, %57 ], [ %numb.354, %50 ]
  %numw.647 = phi i32 [ %numw.7, %109 ], [ %numw.4, %.loopexit ], [ %numw.353, %68 ], [ %67, %63 ], [ %numw.353, %57 ], [ %54, %50 ]
  %93 = getelementptr inbounds [8 x i32]* @setup_attackers.knight_o, i64 0, i64 %indvars.iv, !dbg !212
  %94 = load i32* %93, align 4, !dbg !212, !tbaa !69
  %95 = add nsw i32 %94, %square, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !10, metadata !66), !dbg !83
  %96 = sext i32 %95 to i64, !dbg !217
  %97 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %96, !dbg !217
  %98 = load i32* %97, align 4, !dbg !217, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !11, metadata !66), !dbg !85
  switch i32 %98, label %109 [
    i32 3, label %99
    i32 4, label %104
  ], !dbg !218

; <label>:99                                      ; preds = %.preheader
  %100 = sext i32 %numw.647 to i64, !dbg !219
  %101 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %100, i32 0, !dbg !222
  store i32 3, i32* %101, align 8, !dbg !223, !tbaa !92
  %102 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 0, i64 %100, i32 1, !dbg !224
  store i32 %95, i32* %102, align 4, !dbg !225, !tbaa !96
  %103 = add nsw i32 %numw.647, 1, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !13, metadata !66), !dbg !73
  br label %109, !dbg !227

; <label>:104                                     ; preds = %.preheader
  %105 = sext i32 %numb.648 to i64, !dbg !228
  %106 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %105, i32 0, !dbg !231
  store i32 4, i32* %106, align 8, !dbg !232, !tbaa !92
  %107 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 1, i64 %105, i32 1, !dbg !233
  store i32 %95, i32* %107, align 4, !dbg !234, !tbaa !96
  %108 = add nsw i32 %numb.648, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !14, metadata !66), !dbg !75
  br label %109, !dbg !236

; <label>:109                                     ; preds = %.preheader, %99, %104
  %numw.7 = phi i32 [ %103, %99 ], [ %numw.647, %104 ], [ %numw.647, %.preheader ]
  %numb.7 = phi i32 [ %numb.648, %99 ], [ %108, %104 ], [ %numb.648, %.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !237
  %exitcond = icmp eq i64 %indvars.iv.next, 8, !dbg !237
  br i1 %exitcond, label %110, label %.preheader, !dbg !237

; <label>:110                                     ; preds = %109
  store i32 %numw.7, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !dbg !238, !tbaa !69
  store i32 %numb.7, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !dbg !239, !tbaa !69
  ret void, !dbg !240
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @findlowest(i32 %color, i32 %next) #0 {
  tail call void @llvm.dbg.value(metadata i32 %color, i64 0, metadata !19, metadata !66), !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %next, i64 0, metadata !20, metadata !66), !dbg !242
  tail call void @llvm.dbg.value(metadata i32 %next, i64 0, metadata !21, metadata !66), !dbg !243
  %1 = sext i32 %next to i64, !dbg !244
  %2 = sext i32 %color to i64, !dbg !244
  %3 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %2, i64 %1, !dbg !244
  %4 = getelementptr inbounds %struct.see_data* %3, i64 0, i32 0, !dbg !245
  %5 = load i32* %4, align 8, !dbg !245, !tbaa !92
  %6 = sext i32 %5 to i64, !dbg !246
  %7 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %6, !dbg !246
  %8 = load i32* %7, align 4, !dbg !246, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !22, metadata !66), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %next, i64 0, metadata !29, metadata !66), !dbg !248
  %9 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %2, !dbg !249
  %10 = load i32* %9, align 4, !dbg !249, !tbaa !69
  %11 = icmp sgt i32 %10, %next, !dbg !252
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !253

.lr.ph:                                           ; preds = %0
  %ispos = icmp sgt i32 %8, -1, !dbg !254
  %neg = sub i32 0, %8, !dbg !254
  %12 = select i1 %ispos, i32 %8, i32 %neg, !dbg !254
  %13 = sext i32 %10 to i64, !dbg !253
  br label %14, !dbg !253

; <label>:14                                      ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ %1, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %lowestv.04 = phi i32 [ %12, %.lr.ph ], [ %.lowestv.0, %14 ]
  %lowestp.03 = phi i32 [ %next, %.lr.ph ], [ %i.0.lowestp.0, %14 ]
  %15 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %2, i64 %indvars.iv, i32 0, !dbg !255
  %16 = load i32* %15, align 8, !dbg !255, !tbaa !92
  %17 = sext i32 %16 to i64, !dbg !258
  %18 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %17, !dbg !258
  %19 = load i32* %18, align 4, !dbg !258, !tbaa !69
  %ispos1 = icmp sgt i32 %19, -1, !dbg !259
  %neg2 = sub i32 0, %19, !dbg !259
  %20 = select i1 %ispos1, i32 %19, i32 %neg2, !dbg !259
  %21 = icmp slt i32 %20, %lowestv.04, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !22, metadata !66), !dbg !247
  %22 = trunc i64 %indvars.iv to i32, !dbg !261
  %i.0.lowestp.0 = select i1 %21, i32 %22, i32 %lowestp.03, !dbg !261
  %.lowestv.0 = select i1 %21, i32 %20, i32 %lowestv.04, !dbg !261
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !253
  %23 = icmp slt i64 %indvars.iv.next, %13, !dbg !252
  br i1 %23, label %14, label %._crit_edge, !dbg !253

._crit_edge:                                      ; preds = %14, %0
  %lowestp.0.lcssa = phi i32 [ %next, %0 ], [ %i.0.lowestp.0, %14 ]
  %24 = bitcast %struct.see_data* %3 to i64*, !dbg !262
  %25 = load i64* %24, align 8, !dbg !262
  %26 = sext i32 %lowestp.0.lcssa to i64, !dbg !263
  %27 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %2, i64 %26, !dbg !263
  %28 = bitcast %struct.see_data* %27 to i64*, !dbg !263
  %29 = load i64* %28, align 8, !dbg !263
  store i64 %29, i64* %24, align 8, !dbg !263
  store i64 %25, i64* %28, align 8, !dbg !264
  ret void, !dbg !265
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @see(i32 %color, i32 %square, i32 %from) #0 {
  %caps = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata i32 %color, i64 0, metadata !34, metadata !66), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !35, metadata !66), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %from, i64 0, metadata !36, metadata !66), !dbg !268
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %caps, metadata !38, metadata !66), !dbg !269
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 0), align 4, !dbg !270, !tbaa !69
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @see_num_attackers, i64 0, i64 1), align 4, !dbg !271, !tbaa !69
  %1 = sext i32 %from to i64, !dbg !272
  %2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %1, !dbg !272
  %3 = load i32* %2, align 4, !dbg !272, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !43, metadata !66), !dbg !273
  store i32 13, i32* %2, align 4, !dbg !274, !tbaa !69
  %4 = sext i32 %color to i64, !dbg !275
  %5 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %4, !dbg !275
  %6 = load i32* %5, align 4, !dbg !276, !tbaa !69
  %7 = add nsw i32 %6, 1, !dbg !276
  store i32 %7, i32* %5, align 4, !dbg !276, !tbaa !69
  %8 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %4, i64 0, i32 0, !dbg !277
  store i32 %3, i32* %8, align 16, !dbg !278, !tbaa !92
  %9 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %4, i64 0, i32 1, !dbg !279
  store i32 %from, i32* %9, align 4, !dbg !280, !tbaa !96
  tail call void @setup_attackers(i32 %square) #2, !dbg !281
  %10 = sext i32 %square to i64, !dbg !282
  %11 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %10, !dbg !282
  %12 = load i32* %11, align 4, !dbg !282, !tbaa !69
  %13 = sext i32 %12 to i64, !dbg !283
  %14 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %13, !dbg !283
  %15 = load i32* %14, align 4, !dbg !283, !tbaa !69
  %ispos = icmp sgt i32 %15, -1, !dbg !284
  %neg = sub i32 0, %15, !dbg !284
  %16 = select i1 %ispos, i32 %15, i32 %neg, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !42, metadata !66), !dbg !285
  %17 = icmp eq i32 %color, 0, !dbg !286
  %18 = zext i1 %17 to i64, !dbg !288
  %19 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %18, !dbg !288
  %20 = load i32* %19, align 4, !dbg !288, !tbaa !69
  %21 = icmp eq i32 %20, 0, !dbg !288
  br i1 %21, label %22, label %23, !dbg !289

; <label>:22                                      ; preds = %0
  store i32 %3, i32* %2, align 4, !dbg !290, !tbaa !69
  br label %68, !dbg !292

; <label>:23                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !45, metadata !66), !dbg !293
  tail call void @llvm.dbg.value(metadata i32 -1000000, i64 0, metadata !44, metadata !66), !dbg !294
  %24 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %4, !dbg !295
  store i32 1, i32* %24, align 4, !dbg !296, !tbaa !69
  %25 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %18, !dbg !297
  store i32 0, i32* %25, align 4, !dbg !298, !tbaa !69
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !37, metadata !66), !dbg !299
  %26 = icmp sgt i32 %20, 0, !dbg !300
  br i1 %26, label %.lr.ph, label %._crit_edge, !dbg !301

.lr.ph:                                           ; preds = %23
  %27 = zext i1 %17 to i32, !dbg !286
  br label %28, !dbg !301

; <label>:28                                      ; preds = %.lr.ph, %56
  %29 = phi i32 [ 0, %.lr.ph ], [ %62, %56 ]
  %30 = phi i32* [ %25, %.lr.ph ], [ %61, %56 ]
  %hisbestvalue.08 = phi i32 [ %16, %.lr.ph ], [ %hisbestvalue.1, %56 ]
  %ourbestvalue.07 = phi i32 [ -1000000, %.lr.ph ], [ %ourbestvalue.3, %56 ]
  %value.06 = phi i32 [ %16, %.lr.ph ], [ %value.1, %56 ]
  %sside.05 = phi i32 [ %27, %.lr.ph ], [ %59, %56 ]
  tail call void @findlowest(i32 %sside.05, i32 %29) #2, !dbg !302
  %31 = icmp eq i32 %sside.05, %color, !dbg !304
  %32 = icmp eq i32 %sside.05, 0, !dbg !306
  %33 = zext i1 %32 to i64, !dbg !308
  %34 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %33, !dbg !308
  %35 = load i32* %34, align 4, !dbg !308, !tbaa !69
  %36 = add nsw i32 %35, -1, !dbg !309
  %37 = sext i32 %36 to i64, !dbg !310
  %38 = getelementptr inbounds [2 x [16 x %struct.see_data]]* @see_attackers, i64 0, i64 %33, i64 %37, i32 0, !dbg !311
  %39 = load i32* %38, align 8, !dbg !311, !tbaa !92
  %40 = sext i32 %39 to i64, !dbg !312
  %41 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %40, !dbg !312
  %42 = load i32* %41, align 4, !dbg !312, !tbaa !69
  %ispos1 = icmp sgt i32 %42, -1, !dbg !313
  %neg2 = sub i32 0, %42, !dbg !313
  %43 = select i1 %ispos1, i32 %42, i32 %neg2, !dbg !313
  %44 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %33
  %45 = load i32* %44, align 4
  br i1 %31, label %46, label %51, !dbg !314

; <label>:46                                      ; preds = %28
  %47 = add nsw i32 %43, %value.06, !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !42, metadata !66), !dbg !285
  %48 = icmp sle i32 %45, %35, !dbg !316
  %49 = icmp sgt i32 %47, %ourbestvalue.07, !dbg !318
  %or.cond = and i1 %49, %48, !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !44, metadata !66), !dbg !294
  %ourbestvalue.1 = select i1 %or.cond, i32 %47, i32 %ourbestvalue.07, !dbg !319
  %50 = icmp slt i32 %47, %hisbestvalue.08, !dbg !320
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !45, metadata !66), !dbg !293
  %.hisbestvalue.0 = select i1 %50, i32 %47, i32 %hisbestvalue.08, !dbg !322
  br label %56, !dbg !322

; <label>:51                                      ; preds = %28
  %52 = sub nsw i32 %value.06, %43, !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !42, metadata !66), !dbg !285
  %53 = icmp sgt i32 %52, %ourbestvalue.07, !dbg !325
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !44, metadata !66), !dbg !294
  %.ourbestvalue.0 = select i1 %53, i32 %52, i32 %ourbestvalue.07, !dbg !327
  %54 = icmp sle i32 %45, %35, !dbg !328
  %55 = icmp slt i32 %52, %hisbestvalue.08, !dbg !330
  %or.cond3 = and i1 %55, %54, !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !45, metadata !66), !dbg !293
  %.hisbestvalue.04 = select i1 %or.cond3, i32 %52, i32 %hisbestvalue.08, !dbg !331
  br label %56, !dbg !331

; <label>:56                                      ; preds = %51, %46
  %value.1 = phi i32 [ %47, %46 ], [ %52, %51 ]
  %ourbestvalue.3 = phi i32 [ %ourbestvalue.1, %46 ], [ %.ourbestvalue.0, %51 ]
  %hisbestvalue.1 = phi i32 [ %.hisbestvalue.0, %46 ], [ %.hisbestvalue.04, %51 ]
  %57 = load i32* %30, align 4, !dbg !332, !tbaa !69
  %58 = add nsw i32 %57, 1, !dbg !332
  store i32 %58, i32* %30, align 4, !dbg !332, !tbaa !69
  %59 = xor i32 %sside.05, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !37, metadata !66), !dbg !299
  %60 = sext i32 %59 to i64, !dbg !334
  %61 = getelementptr inbounds [2 x i32]* %caps, i64 0, i64 %60, !dbg !334
  %62 = load i32* %61, align 4, !dbg !334, !tbaa !69
  %63 = getelementptr inbounds [2 x i32]* @see_num_attackers, i64 0, i64 %60, !dbg !335
  %64 = load i32* %63, align 4, !dbg !335, !tbaa !69
  %65 = icmp slt i32 %62, %64, !dbg !300
  br i1 %65, label %28, label %._crit_edge, !dbg !301

._crit_edge:                                      ; preds = %56, %23
  %hisbestvalue.0.lcssa = phi i32 [ %16, %23 ], [ %hisbestvalue.1, %56 ]
  %ourbestvalue.0.lcssa = phi i32 [ -1000000, %23 ], [ %ourbestvalue.3, %56 ]
  store i32 %3, i32* %2, align 4, !dbg !336, !tbaa !69
  %66 = icmp sgt i32 %ourbestvalue.0.lcssa, %hisbestvalue.0.lcssa, !dbg !337
  %67 = select i1 %66, i32 %hisbestvalue.0.lcssa, i32 %ourbestvalue.0.lcssa, !dbg !338
  br label %68, !dbg !339

; <label>:68                                      ; preds = %._crit_edge, %22
  %.0 = phi i32 [ %67, %._crit_edge ], [ %16, %22 ]
  ret i32 %.0, !dbg !340
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !46, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/see.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15, !30}
!4 = !DISubprogram(name: "setup_attackers", scope: !1, file: !1, line: 22, type: !5, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @setup_attackers, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !4, file: !1, line: 22, type: !7)
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a_sq", scope: !4, file: !1, line: 29, type: !7)
!11 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b_sq", scope: !4, file: !1, line: 29, type: !7)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 29, type: !7)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numw", scope: !4, file: !1, line: 30, type: !7)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numb", scope: !4, file: !1, line: 30, type: !7)
!15 = !DISubprogram(name: "findlowest", scope: !1, file: !1, line: 161, type: !16, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32)* @findlowest, variables: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !7, !7}
!18 = !{!19, !20, !21, !22, !23, !29}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "color", arg: 1, scope: !15, file: !1, line: 161, type: !7)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "next", arg: 2, scope: !15, file: !1, line: 161, type: !7)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lowestp", scope: !15, file: !1, line: 163, type: !7)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lowestv", scope: !15, file: !1, line: 164, type: !7)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "swap", scope: !15, file: !1, line: 165, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "see_data", file: !1, line: 17, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 64, align: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "piece", scope: !25, file: !1, line: 15, baseType: !7, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "square", scope: !25, file: !1, line: 16, baseType: !7, size: 32, align: 32, offset: 32)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !15, file: !1, line: 166, type: !7)
!30 = !DISubprogram(name: "see", scope: !1, file: !1, line: 187, type: !31, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32)* @see, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!7, !7, !7, !7}
!33 = !{!34, !35, !36, !37, !38, !42, !43, !44, !45}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "color", arg: 1, scope: !30, file: !1, line: 187, type: !7)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 2, scope: !30, file: !1, line: 187, type: !7)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "from", arg: 3, scope: !30, file: !1, line: 187, type: !7)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sside", scope: !30, file: !1, line: 189, type: !7)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "caps", scope: !30, file: !1, line: 190, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, align: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 2)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !30, file: !1, line: 191, type: !7)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "origpiece", scope: !30, file: !1, line: 192, type: !7)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ourbestvalue", scope: !30, file: !1, line: 193, type: !7)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hisbestvalue", scope: !30, file: !1, line: 194, type: !7)
!46 = !{!47, !52, !53, !57, !61}
!47 = !DIGlobalVariable(name: "rook_o", scope: !4, file: !1, line: 26, type: !48, isLocal: true, isDefinition: true, variable: [4 x i32]* @setup_attackers.rook_o)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, align: 32, elements: !50)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!50 = !{!51}
!51 = !DISubrange(count: 4)
!52 = !DIGlobalVariable(name: "bishop_o", scope: !4, file: !1, line: 27, type: !48, isLocal: true, isDefinition: true, variable: [4 x i32]* @setup_attackers.bishop_o)
!53 = !DIGlobalVariable(name: "knight_o", scope: !4, file: !1, line: 28, type: !54, isLocal: true, isDefinition: true, variable: [8 x i32]* @setup_attackers.knight_o)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 256, align: 32, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 8)
!57 = !DIGlobalVariable(name: "see_attackers", scope: !0, file: !1, line: 19, type: !58, isLocal: false, isDefinition: true, variable: [2 x [16 x %struct.see_data]]* @see_attackers)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, align: 32, elements: !59)
!59 = !{!41, !60}
!60 = !DISubrange(count: 16)
!61 = !DIGlobalVariable(name: "see_num_attackers", scope: !0, file: !1, line: 20, type: !39, isLocal: false, isDefinition: true, variable: [2 x i32]* @see_num_attackers)
!62 = !{i32 2, !"Dwarf Version", i32 2}
!63 = !{i32 2, !"Debug Info Version", i32 700000003}
!64 = !{i32 1, !"PIC Level", i32 2}
!65 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!66 = !DIExpression()
!67 = !DILocation(line: 22, column: 27, scope: !4)
!68 = !DILocation(line: 30, column: 14, scope: !4)
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !DILocation(line: 30, column: 7, scope: !4)
!74 = !DILocation(line: 30, column: 47, scope: !4)
!75 = !DILocation(line: 30, column: 40, scope: !4)
!76 = !DILocation(line: 29, column: 28, scope: !4)
!77 = !DILocation(line: 33, column: 3, scope: !78)
!78 = distinct !DILexicalBlock(scope: !4, file: !1, line: 33, column: 3)
!79 = !DILocation(line: 35, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 34, column: 5)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 33, column: 3)
!82 = !DILocation(line: 35, column: 21, scope: !80)
!83 = !DILocation(line: 29, column: 16, scope: !4)
!84 = !DILocation(line: 36, column: 14, scope: !80)
!85 = !DILocation(line: 29, column: 22, scope: !4)
!86 = !DILocation(line: 39, column: 11, scope: !80)
!87 = !DILocation(line: 41, column: 4, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 40, column: 2)
!89 = distinct !DILexicalBlock(scope: !80, file: !1, line: 39, column: 11)
!90 = !DILocation(line: 41, column: 31, scope: !88)
!91 = !DILocation(line: 41, column: 37, scope: !88)
!92 = !{!93, !70, i64 0}
!93 = !{!"", !70, i64 0, !70, i64 4}
!94 = !DILocation(line: 42, column: 31, scope: !88)
!95 = !DILocation(line: 42, column: 38, scope: !88)
!96 = !{!93, !70, i64 4}
!97 = !DILocation(line: 43, column: 8, scope: !88)
!98 = !DILocation(line: 44, column: 4, scope: !88)
!99 = !DILocation(line: 48, column: 4, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 47, column: 2)
!101 = distinct !DILexicalBlock(scope: !89, file: !1, line: 46, column: 16)
!102 = !DILocation(line: 48, column: 31, scope: !100)
!103 = !DILocation(line: 48, column: 37, scope: !100)
!104 = !DILocation(line: 49, column: 31, scope: !100)
!105 = !DILocation(line: 49, column: 38, scope: !100)
!106 = !DILocation(line: 50, column: 8, scope: !100)
!107 = !DILocation(line: 51, column: 4, scope: !100)
!108 = !DILocation(line: 56, column: 4, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !1, line: 54, column: 2)
!110 = !DILocation(line: 60, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 59, column: 3)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 58, column: 12)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 57, column: 6)
!114 = !DILocation(line: 60, column: 32, scope: !111)
!115 = !DILocation(line: 60, column: 38, scope: !111)
!116 = !DILocation(line: 61, column: 32, scope: !111)
!117 = !DILocation(line: 61, column: 39, scope: !111)
!118 = !DILocation(line: 62, column: 9, scope: !111)
!119 = !DILocation(line: 63, column: 5, scope: !111)
!120 = !DILocation(line: 65, column: 31, scope: !121)
!121 = distinct !DILexicalBlock(scope: !112, file: !1, line: 65, column: 17)
!122 = !DILocation(line: 67, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !121, file: !1, line: 66, column: 3)
!124 = !DILocation(line: 67, column: 32, scope: !123)
!125 = !DILocation(line: 67, column: 38, scope: !123)
!126 = !DILocation(line: 68, column: 32, scope: !123)
!127 = !DILocation(line: 68, column: 39, scope: !123)
!128 = !DILocation(line: 69, column: 9, scope: !123)
!129 = !DILocation(line: 70, column: 5, scope: !123)
!130 = !DILocation(line: 72, column: 22, scope: !131)
!131 = distinct !DILexicalBlock(scope: !121, file: !1, line: 72, column: 17)
!132 = !DILocation(line: 72, column: 17, scope: !121)
!133 = !DILocation(line: 73, column: 13, scope: !113)
!134 = !DILocation(line: 74, column: 15, scope: !113)
!135 = !DILocation(line: 33, column: 17, scope: !81)
!136 = !DILocation(line: 82, column: 23, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 81, column: 5)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 80, column: 3)
!139 = distinct !DILexicalBlock(scope: !4, file: !1, line: 80, column: 3)
!140 = !DILocation(line: 82, column: 21, scope: !137)
!141 = !DILocation(line: 83, column: 14, scope: !137)
!142 = !DILocation(line: 85, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 85, column: 11)
!144 = !DILocation(line: 85, column: 29, scope: !143)
!145 = !DILocation(line: 85, column: 25, scope: !143)
!146 = !DILocation(line: 87, column: 4, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 86, column: 2)
!148 = !DILocation(line: 87, column: 31, scope: !147)
!149 = !DILocation(line: 87, column: 37, scope: !147)
!150 = !DILocation(line: 88, column: 31, scope: !147)
!151 = !DILocation(line: 88, column: 38, scope: !147)
!152 = !DILocation(line: 89, column: 8, scope: !147)
!153 = !DILocation(line: 90, column: 4, scope: !147)
!154 = !DILocation(line: 92, column: 21, scope: !155)
!155 = distinct !DILexicalBlock(scope: !143, file: !1, line: 92, column: 16)
!156 = !DILocation(line: 92, column: 30, scope: !155)
!157 = !DILocation(line: 94, column: 4, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 93, column: 2)
!159 = !DILocation(line: 94, column: 31, scope: !158)
!160 = !DILocation(line: 94, column: 37, scope: !158)
!161 = !DILocation(line: 95, column: 31, scope: !158)
!162 = !DILocation(line: 95, column: 38, scope: !158)
!163 = !DILocation(line: 96, column: 8, scope: !158)
!164 = !DILocation(line: 97, column: 4, scope: !158)
!165 = !DILocation(line: 100, column: 16, scope: !155)
!166 = !DILocation(line: 102, column: 4, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 101, column: 2)
!168 = distinct !DILexicalBlock(scope: !155, file: !1, line: 100, column: 16)
!169 = !DILocation(line: 102, column: 31, scope: !167)
!170 = !DILocation(line: 102, column: 37, scope: !167)
!171 = !DILocation(line: 103, column: 31, scope: !167)
!172 = !DILocation(line: 103, column: 38, scope: !167)
!173 = !DILocation(line: 104, column: 8, scope: !167)
!174 = !DILocation(line: 105, column: 4, scope: !167)
!175 = !DILocation(line: 109, column: 4, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 108, column: 2)
!177 = distinct !DILexicalBlock(scope: !168, file: !1, line: 107, column: 16)
!178 = !DILocation(line: 109, column: 31, scope: !176)
!179 = !DILocation(line: 109, column: 37, scope: !176)
!180 = !DILocation(line: 110, column: 31, scope: !176)
!181 = !DILocation(line: 110, column: 38, scope: !176)
!182 = !DILocation(line: 111, column: 8, scope: !176)
!183 = !DILocation(line: 112, column: 4, scope: !176)
!184 = !DILocation(line: 117, column: 26, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 117, column: 10)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 116, column: 26)
!187 = distinct !DILexicalBlock(scope: !177, file: !1, line: 115, column: 2)
!188 = !DILocation(line: 119, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 118, column: 8)
!190 = !DILocation(line: 119, column: 37, scope: !189)
!191 = !DILocation(line: 119, column: 43, scope: !189)
!192 = !DILocation(line: 120, column: 37, scope: !189)
!193 = !DILocation(line: 120, column: 44, scope: !189)
!194 = !DILocation(line: 121, column: 7, scope: !189)
!195 = !DILocation(line: 122, column: 3, scope: !189)
!196 = !DILocation(line: 124, column: 31, scope: !197)
!197 = distinct !DILexicalBlock(scope: !185, file: !1, line: 124, column: 15)
!198 = !DILocation(line: 126, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !1, line: 125, column: 8)
!200 = !DILocation(line: 126, column: 37, scope: !199)
!201 = !DILocation(line: 126, column: 43, scope: !199)
!202 = !DILocation(line: 127, column: 30, scope: !199)
!203 = !DILocation(line: 127, column: 37, scope: !199)
!204 = !DILocation(line: 128, column: 7, scope: !199)
!205 = !DILocation(line: 129, column: 3, scope: !199)
!206 = !DILocation(line: 132, column: 11, scope: !186)
!207 = !DILocation(line: 133, column: 13, scope: !186)
!208 = !DILocation(line: 116, column: 16, scope: !187)
!209 = !DILocation(line: 116, column: 4, scope: !187)
!210 = !DILocation(line: 80, column: 3, scope: !139)
!211 = !DILocation(line: 80, column: 17, scope: !138)
!212 = !DILocation(line: 141, column: 23, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 140, column: 5)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 139, column: 3)
!215 = distinct !DILexicalBlock(scope: !4, file: !1, line: 139, column: 3)
!216 = !DILocation(line: 141, column: 21, scope: !213)
!217 = !DILocation(line: 142, column: 14, scope: !213)
!218 = !DILocation(line: 143, column: 11, scope: !213)
!219 = !DILocation(line: 145, column: 4, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 144, column: 2)
!221 = distinct !DILexicalBlock(scope: !213, file: !1, line: 143, column: 11)
!222 = !DILocation(line: 145, column: 31, scope: !220)
!223 = !DILocation(line: 145, column: 37, scope: !220)
!224 = !DILocation(line: 146, column: 31, scope: !220)
!225 = !DILocation(line: 146, column: 38, scope: !220)
!226 = !DILocation(line: 147, column: 8, scope: !220)
!227 = !DILocation(line: 148, column: 2, scope: !220)
!228 = !DILocation(line: 151, column: 4, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 150, column: 2)
!230 = distinct !DILexicalBlock(scope: !221, file: !1, line: 149, column: 16)
!231 = !DILocation(line: 151, column: 31, scope: !229)
!232 = !DILocation(line: 151, column: 37, scope: !229)
!233 = !DILocation(line: 152, column: 31, scope: !229)
!234 = !DILocation(line: 152, column: 38, scope: !229)
!235 = !DILocation(line: 153, column: 8, scope: !229)
!236 = !DILocation(line: 154, column: 2, scope: !229)
!237 = !DILocation(line: 139, column: 3, scope: !215)
!238 = !DILocation(line: 157, column: 28, scope: !4)
!239 = !DILocation(line: 158, column: 28, scope: !4)
!240 = !DILocation(line: 159, column: 1, scope: !4)
!241 = !DILocation(line: 161, column: 21, scope: !15)
!242 = !DILocation(line: 161, column: 32, scope: !15)
!243 = !DILocation(line: 163, column: 7, scope: !15)
!244 = !DILocation(line: 169, column: 26, scope: !15)
!245 = !DILocation(line: 169, column: 53, scope: !15)
!246 = !DILocation(line: 169, column: 17, scope: !15)
!247 = !DILocation(line: 164, column: 7, scope: !15)
!248 = !DILocation(line: 166, column: 7, scope: !15)
!249 = !DILocation(line: 171, column: 22, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 171, column: 3)
!251 = distinct !DILexicalBlock(scope: !15, file: !1, line: 171, column: 3)
!252 = !DILocation(line: 171, column: 20, scope: !250)
!253 = !DILocation(line: 171, column: 3, scope: !251)
!254 = !DILocation(line: 169, column: 13, scope: !15)
!255 = !DILocation(line: 173, column: 48, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 173, column: 11)
!257 = distinct !DILexicalBlock(scope: !250, file: !1, line: 172, column: 5)
!258 = !DILocation(line: 173, column: 15, scope: !256)
!259 = !DILocation(line: 173, column: 11, scope: !256)
!260 = !DILocation(line: 173, column: 56, scope: !256)
!261 = !DILocation(line: 173, column: 11, scope: !257)
!262 = !DILocation(line: 181, column: 10, scope: !15)
!263 = !DILocation(line: 182, column: 32, scope: !15)
!264 = !DILocation(line: 183, column: 35, scope: !15)
!265 = !DILocation(line: 184, column: 1, scope: !15)
!266 = !DILocation(line: 187, column: 13, scope: !30)
!267 = !DILocation(line: 187, column: 24, scope: !30)
!268 = !DILocation(line: 187, column: 36, scope: !30)
!269 = !DILocation(line: 190, column: 7, scope: !30)
!270 = !DILocation(line: 197, column: 28, scope: !30)
!271 = !DILocation(line: 198, column: 28, scope: !30)
!272 = !DILocation(line: 201, column: 15, scope: !30)
!273 = !DILocation(line: 192, column: 7, scope: !30)
!274 = !DILocation(line: 202, column: 15, scope: !30)
!275 = !DILocation(line: 204, column: 3, scope: !30)
!276 = !DILocation(line: 204, column: 27, scope: !30)
!277 = !DILocation(line: 205, column: 27, scope: !30)
!278 = !DILocation(line: 205, column: 33, scope: !30)
!279 = !DILocation(line: 206, column: 27, scope: !30)
!280 = !DILocation(line: 206, column: 34, scope: !30)
!281 = !DILocation(line: 209, column: 3, scope: !30)
!282 = !DILocation(line: 212, column: 24, scope: !30)
!283 = !DILocation(line: 212, column: 15, scope: !30)
!284 = !DILocation(line: 212, column: 11, scope: !30)
!285 = !DILocation(line: 191, column: 7, scope: !30)
!286 = !DILocation(line: 215, column: 26, scope: !287)
!287 = distinct !DILexicalBlock(scope: !30, file: !1, line: 215, column: 7)
!288 = !DILocation(line: 215, column: 8, scope: !287)
!289 = !DILocation(line: 215, column: 7, scope: !30)
!290 = !DILocation(line: 217, column: 19, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 216, column: 5)
!292 = !DILocation(line: 218, column: 7, scope: !291)
!293 = !DILocation(line: 194, column: 7, scope: !30)
!294 = !DILocation(line: 193, column: 7, scope: !30)
!295 = !DILocation(line: 229, column: 3, scope: !30)
!296 = !DILocation(line: 229, column: 15, scope: !30)
!297 = !DILocation(line: 230, column: 3, scope: !30)
!298 = !DILocation(line: 230, column: 16, scope: !30)
!299 = !DILocation(line: 189, column: 7, scope: !30)
!300 = !DILocation(line: 236, column: 22, scope: !30)
!301 = !DILocation(line: 236, column: 3, scope: !30)
!302 = !DILocation(line: 239, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !30, file: !1, line: 237, column: 5)
!304 = !DILocation(line: 241, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !1, line: 241, column: 11)
!306 = !DILocation(line: 245, column: 53, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !1, line: 242, column: 2)
!308 = !DILocation(line: 245, column: 48, scope: !307)
!309 = !DILocation(line: 245, column: 60, scope: !307)
!310 = !DILocation(line: 245, column: 26, scope: !307)
!311 = !DILocation(line: 245, column: 64, scope: !307)
!312 = !DILocation(line: 245, column: 17, scope: !307)
!313 = !DILocation(line: 245, column: 13, scope: !307)
!314 = !DILocation(line: 241, column: 11, scope: !303)
!315 = !DILocation(line: 245, column: 10, scope: !307)
!316 = !DILocation(line: 248, column: 35, scope: !317)
!317 = distinct !DILexicalBlock(scope: !307, file: !1, line: 248, column: 9)
!318 = !DILocation(line: 248, column: 60, scope: !317)
!319 = !DILocation(line: 248, column: 51, scope: !317)
!320 = !DILocation(line: 252, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !307, file: !1, line: 252, column: 8)
!322 = !DILocation(line: 252, column: 8, scope: !307)
!323 = !DILocation(line: 258, column: 10, scope: !324)
!324 = distinct !DILexicalBlock(scope: !305, file: !1, line: 255, column: 2)
!325 = !DILocation(line: 263, column: 14, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !1, line: 263, column: 8)
!327 = !DILocation(line: 263, column: 8, scope: !324)
!328 = !DILocation(line: 268, column: 34, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !1, line: 268, column: 8)
!330 = !DILocation(line: 268, column: 59, scope: !329)
!331 = !DILocation(line: 268, column: 50, scope: !329)
!332 = !DILocation(line: 273, column: 18, scope: !303)
!333 = !DILocation(line: 276, column: 13, scope: !303)
!334 = !DILocation(line: 236, column: 10, scope: !30)
!335 = !DILocation(line: 236, column: 24, scope: !30)
!336 = !DILocation(line: 281, column: 15, scope: !30)
!337 = !DILocation(line: 285, column: 24, scope: !30)
!338 = !DILocation(line: 285, column: 10, scope: !30)
!339 = !DILocation(line: 285, column: 3, scope: !30)
!340 = !DILocation(line: 286, column: 1, scope: !30)

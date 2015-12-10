; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/attacks.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@board = external global [144 x i32]
@nk_attacked.rook_o = internal unnamed_addr constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@nk_attacked.bishop_o = internal unnamed_addr constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@nk_attacked.knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @calc_attackers(i32 %square, i32 %color) #0 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !15, metadata !60), !dbg !61
  tail call void @llvm.dbg.value(metadata i32 %color, i64 0, metadata !16, metadata !60), !dbg !62
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !19, metadata !60), !dbg !63
  %1 = sext i32 %square to i64, !dbg !64
  %2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %1, !dbg !64
  %3 = load i32* %2, align 4, !dbg !64, !tbaa !66
  %4 = icmp eq i32 %3, 0, !dbg !70
  br i1 %4, label %.loopexit, label %5, !dbg !71

; <label>:5                                       ; preds = %0
  %6 = and i32 %color, 1, !dbg !72
  %7 = icmp eq i32 %6, 0, !dbg !72
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !60), !dbg !74
  br i1 %7, label %.preheader9, label %.preheader17, !dbg !75

.preheader17:                                     ; preds = %5, %.loopexit16
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.loopexit16 ], [ 0, %5 ]
  %attackers.035 = phi i32 [ %attackers.1, %.loopexit16 ], [ 0, %5 ]
  %8 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv51, !dbg !76
  %9 = load i32* %8, align 4, !dbg !76, !tbaa !66
  %10 = add nsw i32 %9, %square, !dbg !81
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !17, metadata !60), !dbg !82
  %11 = sext i32 %10 to i64, !dbg !83
  %12 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %11, !dbg !83
  %13 = load i32* %12, align 4, !dbg !83, !tbaa !66
  %14 = icmp eq i32 %13, 5, !dbg !85
  br i1 %14, label %15, label %.preheader15, !dbg !86

; <label>:15                                      ; preds = %.preheader17
  %16 = add nsw i32 %attackers.035, 1, !dbg !87
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.preheader14, !dbg !89

.preheader15:                                     ; preds = %.preheader17, %20
  %17 = phi i32 [ %.pre, %20 ], [ %13, %.preheader17 ]
  %a_sq.0 = phi i32 [ %21, %20 ], [ %10, %.preheader17 ]
  switch i32 %17, label %.loopexit16 [
    i32 13, label %20
    i32 7, label %18
    i32 9, label %18
  ], !dbg !90

; <label>:18                                      ; preds = %.preheader15, %.preheader15
  %19 = add nsw i32 %attackers.035, 1, !dbg !92
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.loopexit16, !dbg !96

; <label>:20                                      ; preds = %.preheader15
  %21 = add nsw i32 %9, %a_sq.0, !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !17, metadata !60), !dbg !82
  %.phi.trans.insert = sext i32 %21 to i64
  %.phi.trans.insert53 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %.phi.trans.insert
  %.pre = load i32* %.phi.trans.insert53, align 4, !dbg !98, !tbaa !66
  br label %.preheader15, !dbg !90

.loopexit16:                                      ; preds = %.preheader15, %18
  %attackers.1 = phi i32 [ %19, %18 ], [ %attackers.035, %.preheader15 ]
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1, !dbg !99
  %22 = icmp slt i64 %indvars.iv.next52, 4, !dbg !100
  br i1 %22, label %.preheader17, label %.preheader14, !dbg !99

.preheader14:                                     ; preds = %15, %.loopexit16, %.loopexit13
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.loopexit13 ], [ 0, %.loopexit16 ], [ 0, %15 ]
  %attackers.333 = phi i32 [ %attackers.4, %.loopexit13 ], [ %attackers.1, %.loopexit16 ], [ %16, %15 ]
  %23 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv49, !dbg !101
  %24 = load i32* %23, align 4, !dbg !101, !tbaa !66
  %25 = add nsw i32 %24, %square, !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !17, metadata !60), !dbg !82
  %26 = sext i32 %25 to i64, !dbg !106
  %27 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %26, !dbg !106
  %28 = load i32* %27, align 4, !dbg !106, !tbaa !66
  %29 = icmp ne i32 %28, 1, !dbg !108
  %30 = and i64 %indvars.iv49, 1, !dbg !109
  %31 = icmp eq i64 %30, 0, !dbg !109
  %or.cond = or i1 %31, %29, !dbg !110
  br i1 %or.cond, label %34, label %32, !dbg !110

; <label>:32                                      ; preds = %.preheader14
  %33 = add nsw i32 %attackers.333, 1, !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.preheader10, !dbg !113

; <label>:34                                      ; preds = %.preheader14
  %35 = icmp eq i32 %28, 5, !dbg !114
  br i1 %35, label %36, label %.preheader12, !dbg !116

; <label>:36                                      ; preds = %34
  %37 = add nsw i32 %attackers.333, 1, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.preheader10, !dbg !119

.preheader12:                                     ; preds = %34, %41
  %38 = phi i32 [ %.pre56, %41 ], [ %28, %34 ]
  %a_sq.1 = phi i32 [ %42, %41 ], [ %25, %34 ]
  switch i32 %38, label %.loopexit13 [
    i32 13, label %41
    i32 11, label %39
    i32 9, label %39
  ], !dbg !120

; <label>:39                                      ; preds = %.preheader12, %.preheader12
  %40 = add nsw i32 %attackers.333, 1, !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.loopexit13, !dbg !126

; <label>:41                                      ; preds = %.preheader12
  %42 = add nsw i32 %24, %a_sq.1, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !17, metadata !60), !dbg !82
  %.phi.trans.insert54 = sext i32 %42 to i64
  %.phi.trans.insert55 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %.phi.trans.insert54
  %.pre56 = load i32* %.phi.trans.insert55, align 4, !dbg !128, !tbaa !66
  br label %.preheader12, !dbg !120

.loopexit13:                                      ; preds = %.preheader12, %39
  %attackers.4 = phi i32 [ %40, %39 ], [ %attackers.333, %.preheader12 ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !129
  %43 = icmp slt i64 %indvars.iv.next50, 4, !dbg !130
  br i1 %43, label %.preheader14, label %.preheader10, !dbg !129

.preheader10:                                     ; preds = %32, %36, %.loopexit13, %.preheader10
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.preheader10 ], [ 0, %.loopexit13 ], [ 0, %36 ], [ 0, %32 ]
  %attackers.631 = phi i32 [ %.attackers.6, %.preheader10 ], [ %attackers.4, %.loopexit13 ], [ %37, %36 ], [ %33, %32 ]
  %44 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv46, !dbg !131
  %45 = load i32* %44, align 4, !dbg !131, !tbaa !66
  %46 = add nsw i32 %45, %square, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !17, metadata !60), !dbg !82
  %47 = sext i32 %46 to i64, !dbg !136
  %48 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %47, !dbg !136
  %49 = load i32* %48, align 4, !dbg !136, !tbaa !66
  %50 = icmp eq i32 %49, 3, !dbg !138
  %51 = zext i1 %50 to i32, !dbg !139
  %.attackers.6 = add nsw i32 %51, %attackers.631, !dbg !139
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !140
  %exitcond48 = icmp eq i64 %indvars.iv.next47, 8, !dbg !140
  br i1 %exitcond48, label %.loopexit, label %.preheader10, !dbg !140

.preheader9:                                      ; preds = %5, %.loopexit8
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.loopexit8 ], [ 0, %5 ]
  %attackers.829 = phi i32 [ %attackers.9, %.loopexit8 ], [ 0, %5 ]
  %52 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv44, !dbg !141
  %53 = load i32* %52, align 4, !dbg !141, !tbaa !66
  %54 = add nsw i32 %53, %square, !dbg !146
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !17, metadata !60), !dbg !82
  %55 = sext i32 %54 to i64, !dbg !147
  %56 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %55, !dbg !147
  %57 = load i32* %56, align 4, !dbg !147, !tbaa !66
  %58 = icmp eq i32 %57, 6, !dbg !149
  br i1 %58, label %59, label %.preheader7, !dbg !150

; <label>:59                                      ; preds = %.preheader9
  %60 = add nsw i32 %attackers.829, 1, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.preheader6, !dbg !153

.preheader7:                                      ; preds = %.preheader9, %64
  %61 = phi i32 [ %.pre59, %64 ], [ %57, %.preheader9 ]
  %a_sq.2 = phi i32 [ %65, %64 ], [ %54, %.preheader9 ]
  switch i32 %61, label %.loopexit8 [
    i32 13, label %64
    i32 8, label %62
    i32 10, label %62
  ], !dbg !154

; <label>:62                                      ; preds = %.preheader7, %.preheader7
  %63 = add nsw i32 %attackers.829, 1, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.loopexit8, !dbg !160

; <label>:64                                      ; preds = %.preheader7
  %65 = add nsw i32 %53, %a_sq.2, !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !17, metadata !60), !dbg !82
  %.phi.trans.insert57 = sext i32 %65 to i64
  %.phi.trans.insert58 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %.phi.trans.insert57
  %.pre59 = load i32* %.phi.trans.insert58, align 4, !dbg !162, !tbaa !66
  br label %.preheader7, !dbg !154

.loopexit8:                                       ; preds = %.preheader7, %62
  %attackers.9 = phi i32 [ %63, %62 ], [ %attackers.829, %.preheader7 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !163
  %66 = icmp slt i64 %indvars.iv.next45, 4, !dbg !164
  br i1 %66, label %.preheader9, label %.preheader6, !dbg !163

.preheader6:                                      ; preds = %59, %.loopexit8, %.loopexit5
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.loopexit5 ], [ 0, %.loopexit8 ], [ 0, %59 ]
  %attackers.1127 = phi i32 [ %attackers.12, %.loopexit5 ], [ %attackers.9, %.loopexit8 ], [ %60, %59 ]
  %67 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv42, !dbg !165
  %68 = load i32* %67, align 4, !dbg !165, !tbaa !66
  %69 = add nsw i32 %68, %square, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !17, metadata !60), !dbg !82
  %70 = sext i32 %69 to i64, !dbg !170
  %71 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %70, !dbg !170
  %72 = load i32* %71, align 4, !dbg !170, !tbaa !66
  %73 = icmp eq i32 %72, 2, !dbg !172
  %74 = and i64 %indvars.iv42, 1, !dbg !173
  %75 = icmp eq i64 %74, 0, !dbg !173
  %or.cond3 = and i1 %75, %73, !dbg !174
  br i1 %or.cond3, label %76, label %78, !dbg !174

; <label>:76                                      ; preds = %.preheader6
  %77 = add nsw i32 %attackers.1127, 1, !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.preheader, !dbg !177

; <label>:78                                      ; preds = %.preheader6
  %79 = icmp eq i32 %72, 6, !dbg !178
  br i1 %79, label %80, label %.preheader4, !dbg !180

; <label>:80                                      ; preds = %78
  %81 = add nsw i32 %attackers.1127, 1, !dbg !181
  tail call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.preheader, !dbg !183

.preheader4:                                      ; preds = %78, %85
  %82 = phi i32 [ %.pre62, %85 ], [ %72, %78 ]
  %a_sq.3 = phi i32 [ %86, %85 ], [ %69, %78 ]
  switch i32 %82, label %.loopexit5 [
    i32 13, label %85
    i32 12, label %83
    i32 10, label %83
  ], !dbg !184

; <label>:83                                      ; preds = %.preheader4, %.preheader4
  %84 = add nsw i32 %attackers.1127, 1, !dbg !186
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !19, metadata !60), !dbg !63
  br label %.loopexit5, !dbg !190

; <label>:85                                      ; preds = %.preheader4
  %86 = add nsw i32 %68, %a_sq.3, !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !17, metadata !60), !dbg !82
  %.phi.trans.insert60 = sext i32 %86 to i64
  %.phi.trans.insert61 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %.phi.trans.insert60
  %.pre62 = load i32* %.phi.trans.insert61, align 4, !dbg !192, !tbaa !66
  br label %.preheader4, !dbg !184

.loopexit5:                                       ; preds = %.preheader4, %83
  %attackers.12 = phi i32 [ %84, %83 ], [ %attackers.1127, %.preheader4 ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !dbg !193
  %87 = icmp slt i64 %indvars.iv.next43, 4, !dbg !194
  br i1 %87, label %.preheader6, label %.preheader, !dbg !193

.preheader:                                       ; preds = %76, %80, %.loopexit5, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.loopexit5 ], [ 0, %80 ], [ 0, %76 ]
  %attackers.1425 = phi i32 [ %.attackers.14, %.preheader ], [ %attackers.12, %.loopexit5 ], [ %81, %80 ], [ %77, %76 ]
  %88 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv, !dbg !195
  %89 = load i32* %88, align 4, !dbg !195, !tbaa !66
  %90 = add nsw i32 %89, %square, !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !17, metadata !60), !dbg !82
  %91 = sext i32 %90 to i64, !dbg !200
  %92 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %91, !dbg !200
  %93 = load i32* %92, align 4, !dbg !200, !tbaa !66
  %94 = icmp eq i32 %93, 4, !dbg !202
  %95 = zext i1 %94 to i32, !dbg !203
  %.attackers.14 = add nsw i32 %95, %attackers.1425, !dbg !203
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !204
  %exitcond = icmp eq i64 %indvars.iv.next, 8, !dbg !204
  br i1 %exitcond, label %.loopexit, label %.preheader, !dbg !204

.loopexit:                                        ; preds = %.preheader10, %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ %.attackers.14, %.preheader ], [ %.attackers.6, %.preheader10 ]
  ret i32 %.0, !dbg !205
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_attacked(i32 %square, i32 %color) #0 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !25, metadata !60), !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %color, i64 0, metadata !26, metadata !60), !dbg !207
  %1 = and i32 %color, 1, !dbg !208
  %2 = icmp eq i32 %1, 0, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !30, metadata !60), !dbg !210
  br i1 %2, label %.preheader19, label %.preheader30, !dbg !211

.preheader30:                                     ; preds = %0, %._crit_edge43
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %._crit_edge43 ], [ 0, %0 ]
  %3 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv60, !dbg !212
  %4 = load i32* %3, align 4, !dbg !212, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !27, metadata !60), !dbg !217
  %5 = add nsw i32 %4, %square, !dbg !218
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !28, metadata !60), !dbg !219
  %6 = sext i32 %5 to i64, !dbg !220
  %7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %6, !dbg !220
  %8 = load i32* %7, align 4, !dbg !220, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !29, metadata !60), !dbg !221
  %notlhs = icmp eq i32 %8, 1, !dbg !222
  %9 = and i64 %indvars.iv60, 1, !dbg !222
  %notrhs = icmp ne i64 %9, 0, !dbg !222
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !222
  %10 = icmp eq i32 %8, 5, !dbg !224
  %or.cond11 = or i1 %10, %or.cond.not, !dbg !222
  br i1 %or.cond11, label %.loopexit, label %.preheader28, !dbg !222

.preheader28:                                     ; preds = %.preheader30
  %11 = icmp eq i32 %8, 0, !dbg !226
  br i1 %11, label %._crit_edge43, label %.lr.ph42, !dbg !227

.lr.ph42:                                         ; preds = %.preheader28, %16
  %basq.041 = phi i32 [ %20, %16 ], [ %8, %.preheader28 ]
  %a_sq.040 = phi i32 [ %17, %16 ], [ %5, %.preheader28 ]
  %12 = and i32 %basq.041, -3, !dbg !228
  %13 = icmp eq i32 %12, 9, !dbg !228
  br i1 %13, label %.loopexit, label %14, !dbg !228

; <label>:14                                      ; preds = %.lr.ph42
  %15 = icmp eq i32 %basq.041, 13, !dbg !231
  br i1 %15, label %16, label %._crit_edge43, !dbg !233

; <label>:16                                      ; preds = %14
  %17 = add nsw i32 %a_sq.040, %4, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !28, metadata !60), !dbg !219
  %18 = sext i32 %17 to i64, !dbg !235
  %19 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %18, !dbg !235
  %20 = load i32* %19, align 4, !dbg !235, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !29, metadata !60), !dbg !221
  %21 = icmp eq i32 %20, 0, !dbg !226
  br i1 %21, label %._crit_edge43, label %.lr.ph42, !dbg !227

._crit_edge43:                                    ; preds = %16, %14, %.preheader28
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1, !dbg !236
  %22 = icmp slt i64 %indvars.iv.next61, 4, !dbg !237
  br i1 %22, label %.preheader30, label %.preheader26, !dbg !236

; <label>:23                                      ; preds = %.preheader26
  %24 = icmp slt i64 %indvars.iv.next57, 8, !dbg !238
  br i1 %24, label %.preheader26, label %.preheader23, !dbg !241

.preheader26:                                     ; preds = %._crit_edge43, %23
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %23 ], [ 0, %._crit_edge43 ]
  %25 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv56, !dbg !242
  %26 = load i32* %25, align 4, !dbg !242, !tbaa !66
  %27 = add nsw i32 %26, %square, !dbg !245
  %28 = sext i32 %27 to i64, !dbg !246
  %29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %28, !dbg !246
  %30 = load i32* %29, align 4, !dbg !246, !tbaa !66
  %31 = icmp eq i32 %30, 3, !dbg !247
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !241
  br i1 %31, label %.loopexit, label %23, !dbg !248

.preheader23:                                     ; preds = %23, %44
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %44 ], [ 0, %23 ]
  %32 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv54, !dbg !249
  %33 = load i32* %32, align 4, !dbg !249, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !27, metadata !60), !dbg !217
  %34 = add nsw i32 %33, %square, !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !28, metadata !60), !dbg !219
  %35 = sext i32 %34 to i64, !dbg !254
  %36 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %35, !dbg !254
  %37 = load i32* %36, align 4, !dbg !254, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !29, metadata !60), !dbg !221
  %38 = icmp eq i32 %37, 5, !dbg !255
  br i1 %38, label %.loopexit, label %.preheader21, !dbg !257

.preheader21:                                     ; preds = %.preheader23, %39
  %a_sq.1 = phi i32 [ %40, %39 ], [ %34, %.preheader23 ]
  %basq.1 = phi i32 [ %43, %39 ], [ %37, %.preheader23 ]
  switch i32 %basq.1, label %44 [
    i32 13, label %39
    i32 9, label %.loopexit
    i32 7, label %.loopexit
  ], !dbg !258

; <label>:39                                      ; preds = %.preheader21
  %40 = add nsw i32 %a_sq.1, %33, !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !28, metadata !60), !dbg !219
  %41 = sext i32 %40 to i64, !dbg !261
  %42 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %41, !dbg !261
  %43 = load i32* %42, align 4, !dbg !261, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !29, metadata !60), !dbg !221
  br label %.preheader21, !dbg !258

; <label>:44                                      ; preds = %.preheader21
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !262
  %45 = icmp slt i64 %indvars.iv.next55, 4, !dbg !263
  br i1 %45, label %.preheader23, label %.loopexit, !dbg !262

.preheader19:                                     ; preds = %0, %61
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %61 ], [ 0, %0 ]
  %46 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv50, !dbg !264
  %47 = load i32* %46, align 4, !dbg !264, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !27, metadata !60), !dbg !217
  %48 = add nsw i32 %47, %square, !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !28, metadata !60), !dbg !219
  %49 = sext i32 %48 to i64, !dbg !270
  %50 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %49, !dbg !270
  %51 = load i32* %50, align 4, !dbg !270, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !29, metadata !60), !dbg !221
  %52 = icmp eq i32 %51, 2, !dbg !271
  %53 = and i64 %indvars.iv50, 1, !dbg !273
  %54 = icmp eq i64 %53, 0, !dbg !273
  %or.cond10 = and i1 %54, %52, !dbg !274
  %55 = icmp eq i32 %51, 6, !dbg !275
  %or.cond12 = or i1 %55, %or.cond10, !dbg !274
  br i1 %or.cond12, label %.loopexit, label %.preheader17, !dbg !274

.preheader17:                                     ; preds = %.preheader19, %56
  %a_sq.2 = phi i32 [ %57, %56 ], [ %48, %.preheader19 ]
  %basq.2 = phi i32 [ %60, %56 ], [ %51, %.preheader19 ]
  switch i32 %basq.2, label %61 [
    i32 13, label %56
    i32 12, label %.loopexit
    i32 10, label %.loopexit
  ], !dbg !277

; <label>:56                                      ; preds = %.preheader17
  %57 = add nsw i32 %a_sq.2, %47, !dbg !278
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !28, metadata !60), !dbg !219
  %58 = sext i32 %57 to i64, !dbg !280
  %59 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %58, !dbg !280
  %60 = load i32* %59, align 4, !dbg !280, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !29, metadata !60), !dbg !221
  br label %.preheader17, !dbg !277

; <label>:61                                      ; preds = %.preheader17
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !281
  %62 = icmp slt i64 %indvars.iv.next51, 4, !dbg !282
  br i1 %62, label %.preheader19, label %.preheader15, !dbg !281

; <label>:63                                      ; preds = %.preheader15
  %64 = icmp slt i64 %indvars.iv.next47, 8, !dbg !283
  br i1 %64, label %.preheader15, label %.preheader13, !dbg !286

.preheader15:                                     ; preds = %61, %63
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %63 ], [ 0, %61 ]
  %65 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv46, !dbg !287
  %66 = load i32* %65, align 4, !dbg !287, !tbaa !66
  %67 = add nsw i32 %66, %square, !dbg !290
  %68 = sext i32 %67 to i64, !dbg !291
  %69 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %68, !dbg !291
  %70 = load i32* %69, align 4, !dbg !291, !tbaa !66
  %71 = icmp eq i32 %70, 4, !dbg !292
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !286
  br i1 %71, label %.loopexit, label %63, !dbg !293

.preheader13:                                     ; preds = %63, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %63 ]
  %72 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv, !dbg !294
  %73 = load i32* %72, align 4, !dbg !294, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !27, metadata !60), !dbg !217
  %74 = add nsw i32 %73, %square, !dbg !298
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !28, metadata !60), !dbg !219
  %75 = sext i32 %74 to i64, !dbg !299
  %76 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %75, !dbg !299
  %77 = load i32* %76, align 4, !dbg !299, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !29, metadata !60), !dbg !221
  switch i32 %77, label %.lr.ph [
    i32 6, label %.loopexit
    i32 0, label %._crit_edge
  ], !dbg !300

.lr.ph:                                           ; preds = %.preheader13, %82
  %basq.333 = phi i32 [ %86, %82 ], [ %77, %.preheader13 ]
  %a_sq.332 = phi i32 [ %83, %82 ], [ %74, %.preheader13 ]
  %78 = and i32 %basq.333, -3, !dbg !301
  %79 = icmp eq i32 %78, 8, !dbg !301
  br i1 %79, label %.loopexit, label %80, !dbg !301

; <label>:80                                      ; preds = %.lr.ph
  %81 = icmp eq i32 %basq.333, 13, !dbg !304
  br i1 %81, label %82, label %._crit_edge, !dbg !306

; <label>:82                                      ; preds = %80
  %83 = add nsw i32 %a_sq.332, %73, !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !28, metadata !60), !dbg !219
  %84 = sext i32 %83 to i64, !dbg !308
  %85 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %84, !dbg !308
  %86 = load i32* %85, align 4, !dbg !308, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !29, metadata !60), !dbg !221
  %87 = icmp eq i32 %86, 0, !dbg !309
  br i1 %87, label %._crit_edge, label %.lr.ph, !dbg !310

._crit_edge:                                      ; preds = %82, %80, %.preheader13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !311
  %88 = icmp slt i64 %indvars.iv.next, 4, !dbg !312
  br i1 %88, label %.preheader13, label %.loopexit, !dbg !311

.loopexit:                                        ; preds = %.preheader30, %.lr.ph42, %.preheader26, %44, %.preheader23, %.preheader21, %.preheader21, %.preheader19, %.preheader17, %.preheader17, %.preheader15, %.preheader13, %._crit_edge, %.lr.ph
  %.0 = phi i32 [ 1, %.lr.ph ], [ 1, %.preheader13 ], [ 0, %._crit_edge ], [ 1, %.preheader15 ], [ 1, %.preheader17 ], [ 1, %.preheader17 ], [ 1, %.preheader19 ], [ 1, %.preheader21 ], [ 1, %.preheader21 ], [ 1, %.preheader23 ], [ 0, %44 ], [ 1, %.preheader26 ], [ 1, %.lr.ph42 ], [ 1, %.preheader30 ]
  ret i32 %.0, !dbg !313
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @nk_attacked(i32 %square, i32 %color) #0 {
  tail call void @llvm.dbg.value(metadata i32 %square, i64 0, metadata !33, metadata !60), !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %color, i64 0, metadata !34, metadata !60), !dbg !315
  %1 = and i32 %color, 1, !dbg !316
  %2 = icmp eq i32 %1, 0, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !38, metadata !60), !dbg !318
  br i1 %2, label %.preheader17, label %.preheader26, !dbg !319

.preheader26:                                     ; preds = %0, %._crit_edge42
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %._crit_edge42 ], [ 0, %0 ]
  %3 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv59, !dbg !320
  %4 = load i32* %3, align 4, !dbg !320, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !35, metadata !60), !dbg !325
  %5 = add nsw i32 %4, %square, !dbg !326
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !36, metadata !60), !dbg !327
  %6 = sext i32 %5 to i64, !dbg !328
  %7 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %6, !dbg !328
  %8 = load i32* %7, align 4, !dbg !328, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !37, metadata !60), !dbg !329
  %9 = icmp ne i32 %8, 1, !dbg !330
  %10 = and i64 %indvars.iv59, 1, !dbg !332
  %11 = icmp eq i64 %10, 0, !dbg !332
  %or.cond = or i1 %11, %9, !dbg !333
  br i1 %or.cond, label %.preheader24, label %.loopexit, !dbg !333

.preheader24:                                     ; preds = %.preheader26
  %12 = icmp eq i32 %8, 0, !dbg !334
  br i1 %12, label %._crit_edge42, label %.lr.ph41, !dbg !335

.lr.ph41:                                         ; preds = %.preheader24, %17
  %basq.040 = phi i32 [ %21, %17 ], [ %8, %.preheader24 ]
  %a_sq.039 = phi i32 [ %18, %17 ], [ %5, %.preheader24 ]
  %13 = and i32 %basq.040, -3, !dbg !336
  %14 = icmp eq i32 %13, 9, !dbg !336
  br i1 %14, label %.loopexit, label %15, !dbg !336

; <label>:15                                      ; preds = %.lr.ph41
  %16 = icmp eq i32 %basq.040, 13, !dbg !339
  br i1 %16, label %17, label %._crit_edge42, !dbg !341

; <label>:17                                      ; preds = %15
  %18 = add nsw i32 %a_sq.039, %4, !dbg !342
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !36, metadata !60), !dbg !327
  %19 = sext i32 %18 to i64, !dbg !343
  %20 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %19, !dbg !343
  %21 = load i32* %20, align 4, !dbg !343, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !37, metadata !60), !dbg !329
  %22 = icmp eq i32 %21, 0, !dbg !334
  br i1 %22, label %._crit_edge42, label %.lr.ph41, !dbg !335

._crit_edge42:                                    ; preds = %17, %15, %.preheader24
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1, !dbg !344
  %23 = icmp slt i64 %indvars.iv.next60, 4, !dbg !345
  br i1 %23, label %.preheader26, label %.preheader22, !dbg !344

; <label>:24                                      ; preds = %.preheader22
  %25 = icmp slt i64 %indvars.iv.next56, 8, !dbg !346
  br i1 %25, label %.preheader22, label %.preheader20, !dbg !349

.preheader22:                                     ; preds = %._crit_edge42, %24
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %24 ], [ 0, %._crit_edge42 ]
  %26 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv55, !dbg !350
  %27 = load i32* %26, align 4, !dbg !350, !tbaa !66
  %28 = add nsw i32 %27, %square, !dbg !353
  %29 = sext i32 %28 to i64, !dbg !354
  %30 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %29, !dbg !354
  %31 = load i32* %30, align 4, !dbg !354, !tbaa !66
  %32 = icmp eq i32 %31, 3, !dbg !355
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1, !dbg !349
  br i1 %32, label %.loopexit, label %24, !dbg !356

.preheader20:                                     ; preds = %24, %40
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %40 ], [ 0, %24 ]
  %33 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv53, !dbg !357
  %34 = load i32* %33, align 4, !dbg !357, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !35, metadata !60), !dbg !325
  %35 = add i32 %34, %square, !dbg !361
  %36 = sext i32 %35 to i64
  %37 = sext i32 %34 to i64
  br label %38, !dbg !361

; <label>:38                                      ; preds = %39, %.preheader20
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %39 ], [ %36, %.preheader20 ]
  %basq.1.in = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv51, !dbg !362
  %basq.1 = load i32* %basq.1.in, align 4, !dbg !362
  switch i32 %basq.1, label %40 [
    i32 13, label %39
    i32 9, label %.loopexit
    i32 7, label %.loopexit
  ], !dbg !361

; <label>:39                                      ; preds = %38
  %indvars.iv.next52 = add i64 %indvars.iv51, %37, !dbg !361
  br label %38, !dbg !361

; <label>:40                                      ; preds = %38
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !363
  %41 = icmp slt i64 %indvars.iv.next54, 4, !dbg !364
  br i1 %41, label %.preheader20, label %.loopexit, !dbg !363

.preheader17:                                     ; preds = %0, %56
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %56 ], [ 0, %0 ]
  %42 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i64 0, i64 %indvars.iv49, !dbg !365
  %43 = load i32* %42, align 4, !dbg !365, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !35, metadata !60), !dbg !325
  %44 = add nsw i32 %43, %square, !dbg !370
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !36, metadata !60), !dbg !327
  %45 = sext i32 %44 to i64, !dbg !371
  %46 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %45, !dbg !371
  %47 = load i32* %46, align 4, !dbg !371, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !37, metadata !60), !dbg !329
  %48 = icmp eq i32 %47, 2, !dbg !372
  %49 = and i64 %indvars.iv49, 1, !dbg !374
  %50 = icmp eq i64 %49, 0, !dbg !374
  %or.cond11 = and i1 %50, %48, !dbg !375
  br i1 %or.cond11, label %.loopexit, label %.preheader15, !dbg !375

.preheader15:                                     ; preds = %.preheader17, %51
  %a_sq.2 = phi i32 [ %52, %51 ], [ %44, %.preheader17 ]
  %basq.2 = phi i32 [ %55, %51 ], [ %47, %.preheader17 ]
  switch i32 %basq.2, label %56 [
    i32 13, label %51
    i32 12, label %.loopexit
    i32 10, label %.loopexit
  ], !dbg !376

; <label>:51                                      ; preds = %.preheader15
  %52 = add nsw i32 %a_sq.2, %43, !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !36, metadata !60), !dbg !327
  %53 = sext i32 %52 to i64, !dbg !379
  %54 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %53, !dbg !379
  %55 = load i32* %54, align 4, !dbg !379, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !37, metadata !60), !dbg !329
  br label %.preheader15, !dbg !376

; <label>:56                                      ; preds = %.preheader15
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !380
  %57 = icmp slt i64 %indvars.iv.next50, 4, !dbg !381
  br i1 %57, label %.preheader17, label %.preheader13, !dbg !380

; <label>:58                                      ; preds = %.preheader13
  %59 = icmp slt i64 %indvars.iv.next46, 8, !dbg !382
  br i1 %59, label %.preheader13, label %.preheader, !dbg !385

.preheader13:                                     ; preds = %56, %58
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %58 ], [ 0, %56 ]
  %60 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i64 0, i64 %indvars.iv45, !dbg !386
  %61 = load i32* %60, align 4, !dbg !386, !tbaa !66
  %62 = add nsw i32 %61, %square, !dbg !389
  %63 = sext i32 %62 to i64, !dbg !390
  %64 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %63, !dbg !390
  %65 = load i32* %64, align 4, !dbg !390, !tbaa !66
  %66 = icmp eq i32 %65, 4, !dbg !391
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !385
  br i1 %66, label %.loopexit, label %58, !dbg !392

.preheader:                                       ; preds = %58, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %58 ]
  %67 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i64 0, i64 %indvars.iv, !dbg !393
  %68 = load i32* %67, align 4, !dbg !393, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !35, metadata !60), !dbg !325
  %69 = add nsw i32 %68, %square, !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !36, metadata !60), !dbg !327
  %.pn828 = sext i32 %69 to i64, !dbg !398
  %basq.3.in29 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %.pn828, !dbg !398
  %basq.330 = load i32* %basq.3.in29, align 4, !dbg !398
  %70 = icmp eq i32 %basq.330, 0, !dbg !399
  br i1 %70, label %._crit_edge, label %.lr.ph, !dbg !400

; <label>:71                                      ; preds = %75
  %.pn8 = sext i32 %77 to i64, !dbg !398
  %basq.3.in = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %.pn8, !dbg !398
  %basq.3 = load i32* %basq.3.in, align 4, !dbg !398
  %72 = icmp eq i32 %basq.3, 0, !dbg !399
  br i1 %72, label %._crit_edge, label %.lr.ph, !dbg !400

.lr.ph:                                           ; preds = %.preheader, %71
  %basq.332 = phi i32 [ %basq.3, %71 ], [ %basq.330, %.preheader ]
  %a_sq.331 = phi i32 [ %77, %71 ], [ %69, %.preheader ]
  %73 = and i32 %basq.332, -3, !dbg !401
  %74 = icmp eq i32 %73, 8, !dbg !401
  br i1 %74, label %.loopexit, label %75, !dbg !401

; <label>:75                                      ; preds = %.lr.ph
  %76 = icmp eq i32 %basq.332, 13, !dbg !404
  %77 = add nsw i32 %a_sq.331, %68, !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !36, metadata !60), !dbg !327
  br i1 %76, label %71, label %._crit_edge, !dbg !407

._crit_edge:                                      ; preds = %71, %75, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !408
  %78 = icmp slt i64 %indvars.iv.next, 4, !dbg !409
  br i1 %78, label %.preheader, label %.loopexit, !dbg !408

.loopexit:                                        ; preds = %.preheader26, %.lr.ph41, %.preheader22, %40, %38, %38, %.preheader17, %.preheader15, %.preheader15, %.preheader13, %._crit_edge, %.lr.ph
  %.0 = phi i32 [ 1, %.lr.ph ], [ 0, %._crit_edge ], [ 1, %.preheader13 ], [ 1, %.preheader15 ], [ 1, %.preheader15 ], [ 1, %.preheader17 ], [ 1, %38 ], [ 1, %38 ], [ 0, %40 ], [ 1, %.preheader22 ], [ 1, %.lr.ph41 ], [ 1, %.preheader26 ]
  ret i32 %.0, !dbg !410
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57, !58}
!llvm.ident = !{!59}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !9, globals: !39, imports: !8)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/attacks.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{}
!9 = !{!10, !20, !31}
!10 = !DISubprogram(name: "calc_attackers", scope: !1, file: !1, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @calc_attackers, variables: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !10, file: !1, line: 14, type: !13)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "color", arg: 2, scope: !10, file: !1, line: 14, type: !13)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a_sq", scope: !10, file: !1, line: 21, type: !13)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !10, file: !1, line: 21, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attackers", scope: !10, file: !1, line: 23, type: !13)
!20 = !DISubprogram(name: "is_attacked", scope: !1, file: !1, line: 162, type: !21, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @is_attacked, variables: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !13, !13}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xbool", file: !4, line: 14, baseType: !3)
!24 = !{!25, !26, !27, !28, !29, !30}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !20, file: !1, line: 162, type: !13)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "color", arg: 2, scope: !20, file: !1, line: 162, type: !13)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndir", scope: !20, file: !1, line: 170, type: !13)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a_sq", scope: !20, file: !1, line: 170, type: !13)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "basq", scope: !20, file: !1, line: 171, type: !13)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !20, file: !1, line: 171, type: !13)
!31 = !DISubprogram(name: "nk_attacked", scope: !1, file: !1, line: 264, type: !21, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @nk_attacked, variables: !32)
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "square", arg: 1, scope: !31, file: !1, line: 264, type: !13)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "color", arg: 2, scope: !31, file: !1, line: 264, type: !13)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndir", scope: !31, file: !1, line: 272, type: !13)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a_sq", scope: !31, file: !1, line: 272, type: !13)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "basq", scope: !31, file: !1, line: 273, type: !13)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !31, file: !1, line: 273, type: !13)
!39 = !{!40, !45, !46, !50, !51, !52, !53, !54, !55}
!40 = !DIGlobalVariable(name: "rook_o", scope: !10, file: !1, line: 18, type: !41, isLocal: true, isDefinition: true, variable: [4 x i32]* @nk_attacked.rook_o)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, align: 32, elements: !43)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!43 = !{!44}
!44 = !DISubrange(count: 4)
!45 = !DIGlobalVariable(name: "bishop_o", scope: !10, file: !1, line: 19, type: !41, isLocal: true, isDefinition: true, variable: [4 x i32]* @nk_attacked.bishop_o)
!46 = !DIGlobalVariable(name: "knight_o", scope: !10, file: !1, line: 20, type: !47, isLocal: true, isDefinition: true, variable: [8 x i32]* @nk_attacked.knight_o)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, align: 32, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIGlobalVariable(name: "rook_o", scope: !20, file: !1, line: 167, type: !41, isLocal: true, isDefinition: true, variable: [4 x i32]* @nk_attacked.rook_o)
!51 = !DIGlobalVariable(name: "bishop_o", scope: !20, file: !1, line: 168, type: !41, isLocal: true, isDefinition: true, variable: [4 x i32]* @nk_attacked.bishop_o)
!52 = !DIGlobalVariable(name: "knight_o", scope: !20, file: !1, line: 169, type: !47, isLocal: true, isDefinition: true, variable: [8 x i32]* @nk_attacked.knight_o)
!53 = !DIGlobalVariable(name: "rook_o", scope: !31, file: !1, line: 269, type: !41, isLocal: true, isDefinition: true, variable: [4 x i32]* @nk_attacked.rook_o)
!54 = !DIGlobalVariable(name: "bishop_o", scope: !31, file: !1, line: 270, type: !41, isLocal: true, isDefinition: true, variable: [4 x i32]* @nk_attacked.bishop_o)
!55 = !DIGlobalVariable(name: "knight_o", scope: !31, file: !1, line: 271, type: !47, isLocal: true, isDefinition: true, variable: [8 x i32]* @nk_attacked.knight_o)
!56 = !{i32 2, !"Dwarf Version", i32 2}
!57 = !{i32 2, !"Debug Info Version", i32 700000003}
!58 = !{i32 1, !"PIC Level", i32 2}
!59 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!60 = !DIExpression()
!61 = !DILocation(line: 14, column: 25, scope: !10)
!62 = !DILocation(line: 14, column: 37, scope: !10)
!63 = !DILocation(line: 23, column: 7, scope: !10)
!64 = !DILocation(line: 25, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !10, file: !1, line: 25, column: 7)
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 25, column: 21, scope: !65)
!71 = !DILocation(line: 25, column: 7, scope: !10)
!72 = !DILocation(line: 28, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !10, file: !1, line: 28, column: 7)
!74 = !DILocation(line: 21, column: 13, scope: !10)
!75 = !DILocation(line: 28, column: 7, scope: !10)
!76 = !DILocation(line: 31, column: 23, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 30, column: 29)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 30, column: 5)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 30, column: 5)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 28, column: 16)
!81 = !DILocation(line: 31, column: 21, scope: !77)
!82 = !DILocation(line: 21, column: 7, scope: !10)
!83 = !DILocation(line: 34, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !77, file: !1, line: 34, column: 11)
!85 = !DILocation(line: 34, column: 23, scope: !84)
!86 = !DILocation(line: 34, column: 11, scope: !77)
!87 = !DILocation(line: 36, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 35, column: 2)
!89 = !DILocation(line: 37, column: 4, scope: !88)
!90 = !DILocation(line: 42, column: 4, scope: !91)
!91 = distinct !DILexicalBlock(scope: !84, file: !1, line: 40, column: 2)
!92 = !DILocation(line: 45, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 44, column: 8)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 43, column: 10)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 42, column: 33)
!96 = !DILocation(line: 46, column: 3, scope: !93)
!97 = !DILocation(line: 49, column: 11, scope: !95)
!98 = !DILocation(line: 42, column: 11, scope: !91)
!99 = !DILocation(line: 30, column: 5, scope: !79)
!100 = !DILocation(line: 30, column: 19, scope: !78)
!101 = !DILocation(line: 56, column: 23, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 55, column: 29)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 55, column: 5)
!104 = distinct !DILexicalBlock(scope: !80, file: !1, line: 55, column: 5)
!105 = !DILocation(line: 56, column: 21, scope: !102)
!106 = !DILocation(line: 58, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 58, column: 11)
!108 = !DILocation(line: 58, column: 23, scope: !107)
!109 = !DILocation(line: 58, column: 36, scope: !107)
!110 = !DILocation(line: 58, column: 32, scope: !107)
!111 = !DILocation(line: 60, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 59, column: 2)
!113 = !DILocation(line: 61, column: 4, scope: !112)
!114 = !DILocation(line: 64, column: 28, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !1, line: 64, column: 16)
!116 = !DILocation(line: 64, column: 16, scope: !107)
!117 = !DILocation(line: 66, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 65, column: 2)
!119 = !DILocation(line: 67, column: 4, scope: !118)
!120 = !DILocation(line: 71, column: 4, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !1, line: 70, column: 2)
!122 = !DILocation(line: 74, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 73, column: 8)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 72, column: 10)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 71, column: 33)
!126 = !DILocation(line: 75, column: 3, scope: !123)
!127 = !DILocation(line: 78, column: 11, scope: !125)
!128 = !DILocation(line: 71, column: 11, scope: !121)
!129 = !DILocation(line: 55, column: 5, scope: !104)
!130 = !DILocation(line: 55, column: 19, scope: !103)
!131 = !DILocation(line: 85, column: 23, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 84, column: 29)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 84, column: 5)
!134 = distinct !DILexicalBlock(scope: !80, file: !1, line: 84, column: 5)
!135 = !DILocation(line: 85, column: 21, scope: !132)
!136 = !DILocation(line: 86, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 86, column: 11)
!138 = !DILocation(line: 86, column: 23, scope: !137)
!139 = !DILocation(line: 86, column: 11, scope: !132)
!140 = !DILocation(line: 84, column: 5, scope: !134)
!141 = !DILocation(line: 99, column: 23, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 98, column: 29)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 98, column: 5)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 98, column: 5)
!145 = distinct !DILexicalBlock(scope: !73, file: !1, line: 96, column: 8)
!146 = !DILocation(line: 99, column: 21, scope: !142)
!147 = !DILocation(line: 101, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 101, column: 11)
!149 = !DILocation(line: 101, column: 23, scope: !148)
!150 = !DILocation(line: 101, column: 11, scope: !142)
!151 = !DILocation(line: 103, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 102, column: 2)
!153 = !DILocation(line: 104, column: 4, scope: !152)
!154 = !DILocation(line: 108, column: 2, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !1, line: 107, column: 12)
!156 = !DILocation(line: 111, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 110, column: 6)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 109, column: 8)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 108, column: 31)
!160 = !DILocation(line: 112, column: 8, scope: !157)
!161 = !DILocation(line: 115, column: 9, scope: !159)
!162 = !DILocation(line: 108, column: 9, scope: !155)
!163 = !DILocation(line: 98, column: 5, scope: !144)
!164 = !DILocation(line: 98, column: 19, scope: !143)
!165 = !DILocation(line: 122, column: 23, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 121, column: 29)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 121, column: 5)
!168 = distinct !DILexicalBlock(scope: !145, file: !1, line: 121, column: 5)
!169 = !DILocation(line: 122, column: 21, scope: !166)
!170 = !DILocation(line: 124, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 124, column: 11)
!172 = !DILocation(line: 124, column: 23, scope: !171)
!173 = !DILocation(line: 124, column: 38, scope: !171)
!174 = !DILocation(line: 124, column: 32, scope: !171)
!175 = !DILocation(line: 126, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 125, column: 2)
!177 = !DILocation(line: 127, column: 4, scope: !176)
!178 = !DILocation(line: 130, column: 28, scope: !179)
!179 = distinct !DILexicalBlock(scope: !171, file: !1, line: 130, column: 16)
!180 = !DILocation(line: 130, column: 16, scope: !171)
!181 = !DILocation(line: 132, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 131, column: 2)
!183 = !DILocation(line: 133, column: 4, scope: !182)
!184 = !DILocation(line: 136, column: 2, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !1, line: 135, column: 12)
!186 = !DILocation(line: 139, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 138, column: 6)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 137, column: 8)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 136, column: 31)
!190 = !DILocation(line: 140, column: 8, scope: !187)
!191 = !DILocation(line: 143, column: 9, scope: !189)
!192 = !DILocation(line: 136, column: 9, scope: !185)
!193 = !DILocation(line: 121, column: 5, scope: !168)
!194 = !DILocation(line: 121, column: 19, scope: !167)
!195 = !DILocation(line: 150, column: 23, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 149, column: 29)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 149, column: 5)
!198 = distinct !DILexicalBlock(scope: !145, file: !1, line: 149, column: 5)
!199 = !DILocation(line: 150, column: 21, scope: !196)
!200 = !DILocation(line: 151, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !1, line: 151, column: 11)
!202 = !DILocation(line: 151, column: 23, scope: !201)
!203 = !DILocation(line: 151, column: 11, scope: !196)
!204 = !DILocation(line: 149, column: 5, scope: !198)
!205 = !DILocation(line: 160, column: 1, scope: !10)
!206 = !DILocation(line: 162, column: 24, scope: !20)
!207 = !DILocation(line: 162, column: 36, scope: !20)
!208 = !DILocation(line: 174, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !20, file: !1, line: 174, column: 7)
!210 = !DILocation(line: 171, column: 22, scope: !20)
!211 = !DILocation(line: 174, column: 7, scope: !20)
!212 = !DILocation(line: 178, column: 14, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 177, column: 29)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 177, column: 5)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 177, column: 5)
!216 = distinct !DILexicalBlock(scope: !209, file: !1, line: 174, column: 16)
!217 = !DILocation(line: 170, column: 16, scope: !20)
!218 = !DILocation(line: 179, column: 20, scope: !213)
!219 = !DILocation(line: 170, column: 22, scope: !20)
!220 = !DILocation(line: 180, column: 14, scope: !213)
!221 = !DILocation(line: 171, column: 16, scope: !20)
!222 = !DILocation(line: 182, column: 25, scope: !223)
!223 = distinct !DILexicalBlock(scope: !213, file: !1, line: 182, column: 11)
!224 = !DILocation(line: 184, column: 16, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !1, line: 184, column: 11)
!226 = !DILocation(line: 185, column: 19, scope: !213)
!227 = !DILocation(line: 185, column: 7, scope: !213)
!228 = !DILocation(line: 186, column: 22, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 186, column: 6)
!230 = distinct !DILexicalBlock(scope: !213, file: !1, line: 185, column: 29)
!231 = !DILocation(line: 187, column: 11, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !1, line: 187, column: 6)
!233 = !DILocation(line: 187, column: 6, scope: !230)
!234 = !DILocation(line: 188, column: 7, scope: !230)
!235 = !DILocation(line: 189, column: 9, scope: !230)
!236 = !DILocation(line: 177, column: 5, scope: !215)
!237 = !DILocation(line: 177, column: 19, scope: !214)
!238 = !DILocation(line: 193, column: 19, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 193, column: 5)
!240 = distinct !DILexicalBlock(scope: !216, file: !1, line: 193, column: 5)
!241 = !DILocation(line: 193, column: 5, scope: !240)
!242 = !DILocation(line: 194, column: 26, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 194, column: 11)
!244 = distinct !DILexicalBlock(scope: !239, file: !1, line: 193, column: 29)
!245 = !DILocation(line: 194, column: 24, scope: !243)
!246 = !DILocation(line: 194, column: 11, scope: !243)
!247 = !DILocation(line: 194, column: 39, scope: !243)
!248 = !DILocation(line: 194, column: 11, scope: !244)
!249 = !DILocation(line: 198, column: 14, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 197, column: 29)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 197, column: 5)
!252 = distinct !DILexicalBlock(scope: !216, file: !1, line: 197, column: 5)
!253 = !DILocation(line: 199, column: 21, scope: !250)
!254 = !DILocation(line: 200, column: 14, scope: !250)
!255 = !DILocation(line: 202, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !250, file: !1, line: 202, column: 11)
!257 = !DILocation(line: 202, column: 11, scope: !250)
!258 = !DILocation(line: 204, column: 7, scope: !250)
!259 = !DILocation(line: 207, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !250, file: !1, line: 204, column: 29)
!261 = !DILocation(line: 208, column: 9, scope: !260)
!262 = !DILocation(line: 197, column: 5, scope: !252)
!263 = !DILocation(line: 197, column: 19, scope: !251)
!264 = !DILocation(line: 221, column: 14, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 220, column: 29)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 220, column: 5)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 220, column: 5)
!268 = distinct !DILexicalBlock(scope: !209, file: !1, line: 218, column: 8)
!269 = !DILocation(line: 222, column: 21, scope: !265)
!270 = !DILocation(line: 223, column: 14, scope: !265)
!271 = !DILocation(line: 225, column: 16, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !1, line: 225, column: 11)
!273 = !DILocation(line: 225, column: 31, scope: !272)
!274 = !DILocation(line: 225, column: 25, scope: !272)
!275 = !DILocation(line: 227, column: 16, scope: !276)
!276 = distinct !DILexicalBlock(scope: !265, file: !1, line: 227, column: 11)
!277 = !DILocation(line: 228, column: 7, scope: !265)
!278 = !DILocation(line: 231, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !265, file: !1, line: 228, column: 29)
!280 = !DILocation(line: 232, column: 9, scope: !279)
!281 = !DILocation(line: 220, column: 5, scope: !267)
!282 = !DILocation(line: 220, column: 19, scope: !266)
!283 = !DILocation(line: 237, column: 19, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 237, column: 5)
!285 = distinct !DILexicalBlock(scope: !268, file: !1, line: 237, column: 5)
!286 = !DILocation(line: 237, column: 5, scope: !285)
!287 = !DILocation(line: 238, column: 26, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 238, column: 11)
!289 = distinct !DILexicalBlock(scope: !284, file: !1, line: 237, column: 29)
!290 = !DILocation(line: 238, column: 24, scope: !288)
!291 = !DILocation(line: 238, column: 11, scope: !288)
!292 = !DILocation(line: 238, column: 39, scope: !288)
!293 = !DILocation(line: 238, column: 11, scope: !289)
!294 = !DILocation(line: 243, column: 14, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 242, column: 29)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 242, column: 5)
!297 = distinct !DILexicalBlock(scope: !268, file: !1, line: 242, column: 5)
!298 = !DILocation(line: 244, column: 21, scope: !295)
!299 = !DILocation(line: 245, column: 14, scope: !295)
!300 = !DILocation(line: 247, column: 11, scope: !295)
!301 = !DILocation(line: 250, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 250, column: 6)
!303 = distinct !DILexicalBlock(scope: !295, file: !1, line: 249, column: 29)
!304 = !DILocation(line: 251, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !1, line: 251, column: 6)
!306 = !DILocation(line: 251, column: 6, scope: !303)
!307 = !DILocation(line: 252, column: 7, scope: !303)
!308 = !DILocation(line: 253, column: 9, scope: !303)
!309 = !DILocation(line: 249, column: 19, scope: !295)
!310 = !DILocation(line: 249, column: 7, scope: !295)
!311 = !DILocation(line: 242, column: 5, scope: !297)
!312 = !DILocation(line: 242, column: 19, scope: !296)
!313 = !DILocation(line: 262, column: 1, scope: !20)
!314 = !DILocation(line: 264, column: 24, scope: !31)
!315 = !DILocation(line: 264, column: 36, scope: !31)
!316 = !DILocation(line: 276, column: 12, scope: !317)
!317 = distinct !DILexicalBlock(scope: !31, file: !1, line: 276, column: 7)
!318 = !DILocation(line: 273, column: 22, scope: !31)
!319 = !DILocation(line: 276, column: 7, scope: !31)
!320 = !DILocation(line: 280, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 279, column: 29)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 279, column: 5)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 279, column: 5)
!324 = distinct !DILexicalBlock(scope: !317, file: !1, line: 276, column: 16)
!325 = !DILocation(line: 272, column: 16, scope: !31)
!326 = !DILocation(line: 281, column: 20, scope: !321)
!327 = !DILocation(line: 272, column: 22, scope: !31)
!328 = !DILocation(line: 282, column: 14, scope: !321)
!329 = !DILocation(line: 273, column: 16, scope: !31)
!330 = !DILocation(line: 284, column: 16, scope: !331)
!331 = distinct !DILexicalBlock(scope: !321, file: !1, line: 284, column: 11)
!332 = !DILocation(line: 284, column: 30, scope: !331)
!333 = !DILocation(line: 284, column: 25, scope: !331)
!334 = !DILocation(line: 286, column: 19, scope: !321)
!335 = !DILocation(line: 286, column: 7, scope: !321)
!336 = !DILocation(line: 287, column: 22, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 287, column: 6)
!338 = distinct !DILexicalBlock(scope: !321, file: !1, line: 286, column: 29)
!339 = !DILocation(line: 288, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !338, file: !1, line: 288, column: 6)
!341 = !DILocation(line: 288, column: 6, scope: !338)
!342 = !DILocation(line: 289, column: 7, scope: !338)
!343 = !DILocation(line: 290, column: 9, scope: !338)
!344 = !DILocation(line: 279, column: 5, scope: !323)
!345 = !DILocation(line: 279, column: 19, scope: !322)
!346 = !DILocation(line: 294, column: 19, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 294, column: 5)
!348 = distinct !DILexicalBlock(scope: !324, file: !1, line: 294, column: 5)
!349 = !DILocation(line: 294, column: 5, scope: !348)
!350 = !DILocation(line: 295, column: 26, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 295, column: 11)
!352 = distinct !DILexicalBlock(scope: !347, file: !1, line: 294, column: 29)
!353 = !DILocation(line: 295, column: 24, scope: !351)
!354 = !DILocation(line: 295, column: 11, scope: !351)
!355 = !DILocation(line: 295, column: 39, scope: !351)
!356 = !DILocation(line: 295, column: 11, scope: !352)
!357 = !DILocation(line: 299, column: 14, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 298, column: 29)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 298, column: 5)
!360 = distinct !DILexicalBlock(scope: !324, file: !1, line: 298, column: 5)
!361 = !DILocation(line: 303, column: 7, scope: !358)
!362 = !DILocation(line: 301, column: 14, scope: !358)
!363 = !DILocation(line: 298, column: 5, scope: !360)
!364 = !DILocation(line: 298, column: 19, scope: !359)
!365 = !DILocation(line: 320, column: 14, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 319, column: 29)
!367 = distinct !DILexicalBlock(scope: !368, file: !1, line: 319, column: 5)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 319, column: 5)
!369 = distinct !DILexicalBlock(scope: !317, file: !1, line: 317, column: 8)
!370 = !DILocation(line: 321, column: 21, scope: !366)
!371 = !DILocation(line: 322, column: 14, scope: !366)
!372 = !DILocation(line: 324, column: 16, scope: !373)
!373 = distinct !DILexicalBlock(scope: !366, file: !1, line: 324, column: 11)
!374 = !DILocation(line: 324, column: 31, scope: !373)
!375 = !DILocation(line: 324, column: 25, scope: !373)
!376 = !DILocation(line: 326, column: 7, scope: !366)
!377 = !DILocation(line: 329, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !366, file: !1, line: 326, column: 29)
!379 = !DILocation(line: 330, column: 9, scope: !378)
!380 = !DILocation(line: 319, column: 5, scope: !368)
!381 = !DILocation(line: 319, column: 19, scope: !367)
!382 = !DILocation(line: 335, column: 19, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 335, column: 5)
!384 = distinct !DILexicalBlock(scope: !369, file: !1, line: 335, column: 5)
!385 = !DILocation(line: 335, column: 5, scope: !384)
!386 = !DILocation(line: 336, column: 26, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 336, column: 11)
!388 = distinct !DILexicalBlock(scope: !383, file: !1, line: 335, column: 29)
!389 = !DILocation(line: 336, column: 24, scope: !387)
!390 = !DILocation(line: 336, column: 11, scope: !387)
!391 = !DILocation(line: 336, column: 39, scope: !387)
!392 = !DILocation(line: 336, column: 11, scope: !388)
!393 = !DILocation(line: 341, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 340, column: 29)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 340, column: 5)
!396 = distinct !DILexicalBlock(scope: !369, file: !1, line: 340, column: 5)
!397 = !DILocation(line: 342, column: 21, scope: !394)
!398 = !DILocation(line: 343, column: 14, scope: !394)
!399 = !DILocation(line: 345, column: 19, scope: !394)
!400 = !DILocation(line: 345, column: 7, scope: !394)
!401 = !DILocation(line: 346, column: 20, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 346, column: 6)
!403 = distinct !DILexicalBlock(scope: !394, file: !1, line: 345, column: 29)
!404 = !DILocation(line: 347, column: 11, scope: !405)
!405 = distinct !DILexicalBlock(scope: !403, file: !1, line: 347, column: 6)
!406 = !DILocation(line: 348, column: 7, scope: !403)
!407 = !DILocation(line: 347, column: 6, scope: !403)
!408 = !DILocation(line: 340, column: 5, scope: !396)
!409 = !DILocation(line: 340, column: 19, scope: !395)
!410 = !DILocation(line: 358, column: 1, scope: !31)

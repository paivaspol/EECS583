; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/crazy.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@holding = common global [2 x [16 x i32]] zeroinitializer, align 16
@hold_hash = common global i32 0, align 4
@white_hand_eval = common global i32 0, align 4
@black_hand_eval = common global i32 0, align 4
@num_holding = common global [2 x i32] zeroinitializer, align 4
@zobrist = external global [14 x [144 x i32]]
@Variant = external global i32
@userealholdings = common global i32 0, align 4
@realholdings = common global [255 x i8] zeroinitializer, align 16
@comp_color = external global i32
@SwitchColor.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 4, i32 3, i32 0, i32 0, i32 8, i32 7, i32 10, i32 9, i32 12, i32 11], align 16
@__func__.SwitchColor = private unnamed_addr constant [12 x i8] c"SwitchColor\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/crazy.c\00", align 1
@.str1 = private unnamed_addr constant [32 x i8] c"piece > frame && piece < npiece\00", align 1
@SwitchPromoted.t = private unnamed_addr constant [13 x i32] [i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1], align 16
@__func__.SwitchPromoted = private unnamed_addr constant [15 x i8] c"SwitchPromoted\00", align 1
@hand_value = external global [0 x i32]
@material = external global [14 x i32]
@Material = external global i32
@__func__.removeHolding = private unnamed_addr constant [14 x i8] c"removeHolding\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"holding[who][what] > 0\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"holding[who][what] < 20\00", align 1
@__func__.DropremoveHolding = private unnamed_addr constant [18 x i8] c"DropremoveHolding\00", align 1
@.str4 = private unnamed_addr constant [36 x i8] c"WP: %d WR: %d WB: %d WN: %d WQ: %d\0A\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"BP: %d BR: %d BB: %d BN: %d BQ: %d\0A\00", align 1
@drop_piece = common global i32 0, align 4

; Function Attrs: nounwind optsize ssp uwtable
define void @ProcessHoldings(i8* nocapture readonly %str) #0 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !10, metadata !77), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !13, metadata !77), !dbg !79
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false), !dbg !80
  store i32 -1056969216, i32* @hold_hash, align 4, !dbg !81, !tbaa !82
  store i32 0, i32* @white_hand_eval, align 4, !dbg !86, !tbaa !82
  store i32 0, i32* @black_hand_eval, align 4, !dbg !87, !tbaa !82
  tail call void @reset_ecache() #7, !dbg !88
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !89, !tbaa !82
  store i32 0, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !90, !tbaa !82
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !11, metadata !77), !dbg !91
  br label %.preheader2, !dbg !92

.preheader2:                                      ; preds = %0, %._crit_edge
  %indvars.iv14 = phi i64 [ 0, %0 ], [ %indvars.iv.next15, %._crit_edge ]
  %i.08 = phi i32 [ 0, %0 ], [ %i.2.lcssa, %._crit_edge ]
  %1 = sext i32 %i.08 to i64
  br label %2, !dbg !94

; <label>:2                                       ; preds = %.preheader2, %24
  %indvars.iv = phi i64 [ %1, %.preheader2 ], [ %indvars.iv.next, %24 ]
  %i.1 = phi i32 [ %i.08, %.preheader2 ], [ %3, %24 ]
  %3 = add nsw i32 %i.1, 1, !dbg !94
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !13, metadata !77), !dbg !79
  %4 = getelementptr inbounds i8* %str, i64 %indvars.iv, !dbg !97
  %5 = load i8* %4, align 1, !dbg !97, !tbaa !98
  %6 = icmp eq i8 %5, 91, !dbg !99
  %7 = sext i32 %3 to i64, !dbg !100
  %8 = getelementptr inbounds i8* %str, i64 %7, !dbg !100
  %9 = load i8* %8, align 1, !dbg !100, !tbaa !98
  br i1 %6, label %.preheader, label %24, !dbg !101

.preheader:                                       ; preds = %2
  %10 = icmp eq i8 %9, 93, !dbg !102
  br i1 %10, label %._crit_edge, label %.lr.ph, !dbg !103

.lr.ph:                                           ; preds = %.preheader
  %11 = trunc i64 %indvars.iv14 to i32, !dbg !104
  %12 = icmp eq i32 %11, 0, !dbg !104
  %13 = select i1 %12, i64 1, i64 2, !dbg !107
  %14 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv14, i64 %13, !dbg !107
  %15 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %indvars.iv14, !dbg !108
  %16 = select i1 %12, i64 9, i64 10, !dbg !109
  %17 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv14, i64 %16, !dbg !109
  %18 = select i1 %12, i64 7, i64 8, !dbg !110
  %19 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv14, i64 %18, !dbg !110
  %20 = select i1 %12, i64 11, i64 12, !dbg !111
  %21 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv14, i64 %20, !dbg !111
  %22 = select i1 %12, i64 3, i64 4, !dbg !112
  %23 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %indvars.iv14, i64 %22, !dbg !112
  br label %26, !dbg !103

; <label>:24                                      ; preds = %2
  %25 = icmp eq i8 %9, 0, !dbg !113
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !115
  br i1 %25, label %.loopexit, label %2, !dbg !115

; <label>:26                                      ; preds = %.lr.ph, %.backedge
  %27 = phi i8 [ %9, %.lr.ph ], [ %82, %.backedge ]
  %i.26 = phi i32 [ %3, %.lr.ph ], [ %29, %.backedge ]
  %28 = sext i8 %27 to i32, !dbg !100
  %29 = add nsw i32 %i.26, 1, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !13, metadata !77), !dbg !79
  switch i32 %28, label %.loopexit [
    i32 112, label %30
    i32 80, label %30
    i32 113, label %40
    i32 81, label %40
    i32 114, label %50
    i32 82, label %50
    i32 98, label %60
    i32 66, label %60
    i32 110, label %70
    i32 78, label %70
  ], !dbg !117

; <label>:30                                      ; preds = %26, %26
  %31 = load i32* %14, align 4, !dbg !118, !tbaa !82
  %32 = add nsw i32 %31, 1, !dbg !118
  store i32 %32, i32* %14, align 4, !dbg !118, !tbaa !82
  %33 = load i32* %15, align 4, !dbg !119, !tbaa !82
  %34 = add nsw i32 %33, 1, !dbg !119
  store i32 %34, i32* %15, align 4, !dbg !119, !tbaa !82
  %35 = sext i32 %32 to i64, !dbg !120
  %36 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %13, i64 %35, !dbg !120
  %37 = load i32* %36, align 4, !dbg !120, !tbaa !82
  %38 = load i32* @hold_hash, align 4, !dbg !120, !tbaa !82
  %39 = xor i32 %38, %37, !dbg !120
  store i32 %39, i32* @hold_hash, align 4, !dbg !120, !tbaa !82
  br label %.backedge, !dbg !121

; <label>:40                                      ; preds = %26, %26
  %41 = load i32* %17, align 4, !dbg !122, !tbaa !82
  %42 = add nsw i32 %41, 1, !dbg !122
  store i32 %42, i32* %17, align 4, !dbg !122, !tbaa !82
  %43 = load i32* %15, align 4, !dbg !123, !tbaa !82
  %44 = add nsw i32 %43, 1, !dbg !123
  store i32 %44, i32* %15, align 4, !dbg !123, !tbaa !82
  %45 = sext i32 %42 to i64, !dbg !124
  %46 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %16, i64 %45, !dbg !124
  %47 = load i32* %46, align 4, !dbg !124, !tbaa !82
  %48 = load i32* @hold_hash, align 4, !dbg !124, !tbaa !82
  %49 = xor i32 %48, %47, !dbg !124
  store i32 %49, i32* @hold_hash, align 4, !dbg !124, !tbaa !82
  br label %.backedge, !dbg !125

; <label>:50                                      ; preds = %26, %26
  %51 = load i32* %19, align 4, !dbg !126, !tbaa !82
  %52 = add nsw i32 %51, 1, !dbg !126
  store i32 %52, i32* %19, align 4, !dbg !126, !tbaa !82
  %53 = load i32* %15, align 4, !dbg !127, !tbaa !82
  %54 = add nsw i32 %53, 1, !dbg !127
  store i32 %54, i32* %15, align 4, !dbg !127, !tbaa !82
  %55 = sext i32 %52 to i64, !dbg !128
  %56 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %18, i64 %55, !dbg !128
  %57 = load i32* %56, align 4, !dbg !128, !tbaa !82
  %58 = load i32* @hold_hash, align 4, !dbg !128, !tbaa !82
  %59 = xor i32 %58, %57, !dbg !128
  store i32 %59, i32* @hold_hash, align 4, !dbg !128, !tbaa !82
  br label %.backedge, !dbg !129

; <label>:60                                      ; preds = %26, %26
  %61 = load i32* %21, align 4, !dbg !130, !tbaa !82
  %62 = add nsw i32 %61, 1, !dbg !130
  store i32 %62, i32* %21, align 4, !dbg !130, !tbaa !82
  %63 = load i32* %15, align 4, !dbg !131, !tbaa !82
  %64 = add nsw i32 %63, 1, !dbg !131
  store i32 %64, i32* %15, align 4, !dbg !131, !tbaa !82
  %65 = sext i32 %62 to i64, !dbg !132
  %66 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %20, i64 %65, !dbg !132
  %67 = load i32* %66, align 4, !dbg !132, !tbaa !82
  %68 = load i32* @hold_hash, align 4, !dbg !132, !tbaa !82
  %69 = xor i32 %68, %67, !dbg !132
  store i32 %69, i32* @hold_hash, align 4, !dbg !132, !tbaa !82
  br label %.backedge, !dbg !133

; <label>:70                                      ; preds = %26, %26
  %71 = load i32* %23, align 4, !dbg !134, !tbaa !82
  %72 = add nsw i32 %71, 1, !dbg !134
  store i32 %72, i32* %23, align 4, !dbg !134, !tbaa !82
  %73 = load i32* %15, align 4, !dbg !135, !tbaa !82
  %74 = add nsw i32 %73, 1, !dbg !135
  store i32 %74, i32* %15, align 4, !dbg !135, !tbaa !82
  %75 = sext i32 %72 to i64, !dbg !136
  %76 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %22, i64 %75, !dbg !136
  %77 = load i32* %76, align 4, !dbg !136, !tbaa !82
  %78 = load i32* @hold_hash, align 4, !dbg !136, !tbaa !82
  %79 = xor i32 %78, %77, !dbg !136
  store i32 %79, i32* @hold_hash, align 4, !dbg !136, !tbaa !82
  br label %.backedge, !dbg !137

.backedge:                                        ; preds = %70, %60, %50, %40, %30
  %80 = sext i32 %29 to i64, !dbg !100
  %81 = getelementptr inbounds i8* %str, i64 %80, !dbg !100
  %82 = load i8* %81, align 1, !dbg !100, !tbaa !98
  %83 = icmp eq i8 %82, 93, !dbg !102
  br i1 %83, label %._crit_edge, label %26, !dbg !103

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.2.lcssa = phi i32 [ %3, %.preheader ], [ %29, %.backedge ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !92
  %84 = icmp slt i64 %indvars.iv.next15, 2, !dbg !138
  br i1 %84, label %.preheader2, label %85, !dbg !92

; <label>:85                                      ; preds = %._crit_edge
  %86 = load i32* @Variant, align 4, !dbg !139, !tbaa !82
  %87 = icmp ne i32 %86, 1, !dbg !141
  %88 = load i32* @userealholdings, align 4
  %89 = icmp ne i32 %88, 0, !dbg !142
  %or.cond = or i1 %87, %89, !dbg !143
  br i1 %or.cond, label %.loopexit, label %90, !dbg !143

; <label>:90                                      ; preds = %85
  %strncpy = tail call i8* @strncpy(i8* getelementptr inbounds ([255 x i8]* @realholdings, i64 0, i64 0), i8* %str, i64 200), !dbg !144
  %91 = load i32* @comp_color, align 4, !dbg !146, !tbaa !82
  %92 = icmp eq i32 %91, 1, !dbg !148
  br i1 %92, label %93, label %138, !dbg !149

; <label>:93                                      ; preds = %90
  %94 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !dbg !150, !tbaa !82
  %95 = icmp eq i32 %94, 0, !dbg !153
  br i1 %95, label %96, label %102, !dbg !154

; <label>:96                                      ; preds = %93
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !dbg !155, !tbaa !82
  %97 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !157, !tbaa !82
  %98 = add nsw i32 %97, 1, !dbg !157
  store i32 %98, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !157, !tbaa !82
  %99 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 1), align 4, !dbg !158, !tbaa !82
  %100 = load i32* @hold_hash, align 4, !dbg !158, !tbaa !82
  %101 = xor i32 %100, %99, !dbg !158
  store i32 %101, i32* @hold_hash, align 4, !dbg !158, !tbaa !82
  br label %102, !dbg !159

; <label>:102                                     ; preds = %96, %93
  %103 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !dbg !160, !tbaa !82
  %104 = icmp eq i32 %103, 0, !dbg !162
  br i1 %104, label %105, label %111, !dbg !163

; <label>:105                                     ; preds = %102
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !dbg !164, !tbaa !82
  %106 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !166, !tbaa !82
  %107 = add nsw i32 %106, 1, !dbg !166
  store i32 %107, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !166, !tbaa !82
  %108 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 1), align 4, !dbg !167, !tbaa !82
  %109 = load i32* @hold_hash, align 4, !dbg !167, !tbaa !82
  %110 = xor i32 %109, %108, !dbg !167
  store i32 %110, i32* @hold_hash, align 4, !dbg !167, !tbaa !82
  br label %111, !dbg !168

; <label>:111                                     ; preds = %105, %102
  %112 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !dbg !169, !tbaa !82
  %113 = icmp eq i32 %112, 0, !dbg !171
  br i1 %113, label %114, label %120, !dbg !172

; <label>:114                                     ; preds = %111
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !dbg !173, !tbaa !82
  %115 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !175, !tbaa !82
  %116 = add nsw i32 %115, 1, !dbg !175
  store i32 %116, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !175, !tbaa !82
  %117 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !dbg !176, !tbaa !82
  %118 = load i32* @hold_hash, align 4, !dbg !176, !tbaa !82
  %119 = xor i32 %118, %117, !dbg !176
  store i32 %119, i32* @hold_hash, align 4, !dbg !176, !tbaa !82
  br label %120, !dbg !177

; <label>:120                                     ; preds = %114, %111
  %121 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !dbg !178, !tbaa !82
  %122 = icmp eq i32 %121, 0, !dbg !180
  br i1 %122, label %123, label %129, !dbg !181

; <label>:123                                     ; preds = %120
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !dbg !182, !tbaa !82
  %124 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !184, !tbaa !82
  %125 = add nsw i32 %124, 1, !dbg !184
  store i32 %125, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !184, !tbaa !82
  %126 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !dbg !185, !tbaa !82
  %127 = load i32* @hold_hash, align 4, !dbg !185, !tbaa !82
  %128 = xor i32 %127, %126, !dbg !185
  store i32 %128, i32* @hold_hash, align 4, !dbg !185, !tbaa !82
  br label %129, !dbg !186

; <label>:129                                     ; preds = %123, %120
  %130 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !dbg !187, !tbaa !82
  %131 = icmp eq i32 %130, 0, !dbg !189
  br i1 %131, label %132, label %.loopexit, !dbg !190

; <label>:132                                     ; preds = %129
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !dbg !191, !tbaa !82
  %133 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !193, !tbaa !82
  %134 = add nsw i32 %133, 1, !dbg !193
  store i32 %134, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 1), align 4, !dbg !193, !tbaa !82
  %135 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 4, i64 1), align 4, !dbg !194, !tbaa !82
  %136 = load i32* @hold_hash, align 4, !dbg !194, !tbaa !82
  %137 = xor i32 %136, %135, !dbg !194
  store i32 %137, i32* @hold_hash, align 4, !dbg !194, !tbaa !82
  br label %.loopexit, !dbg !195

; <label>:138                                     ; preds = %90
  %139 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !196, !tbaa !82
  %140 = icmp eq i32 %139, 0, !dbg !199
  br i1 %140, label %141, label %147, !dbg !200

; <label>:141                                     ; preds = %138
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !201, !tbaa !82
  %142 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !203, !tbaa !82
  %143 = add nsw i32 %142, 1, !dbg !203
  store i32 %143, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !203, !tbaa !82
  %144 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !204, !tbaa !82
  %145 = load i32* @hold_hash, align 4, !dbg !204, !tbaa !82
  %146 = xor i32 %145, %144, !dbg !204
  store i32 %146, i32* @hold_hash, align 4, !dbg !204, !tbaa !82
  br label %147, !dbg !205

; <label>:147                                     ; preds = %141, %138
  %148 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !206, !tbaa !82
  %149 = icmp eq i32 %148, 0, !dbg !208
  br i1 %149, label %150, label %156, !dbg !209

; <label>:150                                     ; preds = %147
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !210, !tbaa !82
  %151 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !212, !tbaa !82
  %152 = add nsw i32 %151, 1, !dbg !212
  store i32 %152, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !212, !tbaa !82
  %153 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !213, !tbaa !82
  %154 = load i32* @hold_hash, align 4, !dbg !213, !tbaa !82
  %155 = xor i32 %154, %153, !dbg !213
  store i32 %155, i32* @hold_hash, align 4, !dbg !213, !tbaa !82
  br label %156, !dbg !214

; <label>:156                                     ; preds = %150, %147
  %157 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !215, !tbaa !82
  %158 = icmp eq i32 %157, 0, !dbg !217
  br i1 %158, label %159, label %165, !dbg !218

; <label>:159                                     ; preds = %156
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !219, !tbaa !82
  %160 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !221, !tbaa !82
  %161 = add nsw i32 %160, 1, !dbg !221
  store i32 %161, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !221, !tbaa !82
  %162 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !222, !tbaa !82
  %163 = load i32* @hold_hash, align 4, !dbg !222, !tbaa !82
  %164 = xor i32 %163, %162, !dbg !222
  store i32 %164, i32* @hold_hash, align 4, !dbg !222, !tbaa !82
  br label %165, !dbg !223

; <label>:165                                     ; preds = %159, %156
  %166 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !224, !tbaa !82
  %167 = icmp eq i32 %166, 0, !dbg !226
  br i1 %167, label %168, label %174, !dbg !227

; <label>:168                                     ; preds = %165
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !228, !tbaa !82
  %169 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !230, !tbaa !82
  %170 = add nsw i32 %169, 1, !dbg !230
  store i32 %170, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !230, !tbaa !82
  %171 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !231, !tbaa !82
  %172 = load i32* @hold_hash, align 4, !dbg !231, !tbaa !82
  %173 = xor i32 %172, %171, !dbg !231
  store i32 %173, i32* @hold_hash, align 4, !dbg !231, !tbaa !82
  br label %174, !dbg !232

; <label>:174                                     ; preds = %168, %165
  %175 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !233, !tbaa !82
  %176 = icmp eq i32 %175, 0, !dbg !235
  br i1 %176, label %177, label %.loopexit, !dbg !236

; <label>:177                                     ; preds = %174
  store i32 1, i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !237, !tbaa !82
  %178 = load i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !239, !tbaa !82
  %179 = add nsw i32 %178, 1, !dbg !239
  store i32 %179, i32* getelementptr inbounds ([2 x i32]* @num_holding, i64 0, i64 0), align 4, !dbg !239, !tbaa !82
  %180 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 9, i64 1), align 4, !dbg !240, !tbaa !82
  %181 = load i32* @hold_hash, align 4, !dbg !240, !tbaa !82
  %182 = xor i32 %181, %180, !dbg !240
  store i32 %182, i32* @hold_hash, align 4, !dbg !240, !tbaa !82
  br label %.loopexit, !dbg !241

.loopexit:                                        ; preds = %24, %26, %132, %129, %177, %174, %85
  ret void, !dbg !242
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare void @reset_ecache() #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @text_to_piece(i8 signext %txt, i32 %who) #4 {
  tail call void @llvm.dbg.value(metadata i8 %txt, i64 0, metadata !18, metadata !77), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %who, i64 0, metadata !19, metadata !77), !dbg !244
  %1 = sext i8 %txt to i32, !dbg !245
  switch i32 %1, label %17 [
    i32 112, label %2
    i32 80, label %2
    i32 98, label %5
    i32 66, label %5
    i32 110, label %8
    i32 78, label %8
    i32 114, label %11
    i32 82, label %11
    i32 113, label %14
    i32 81, label %14
  ], !dbg !246

; <label>:2                                       ; preds = %0, %0
  %3 = icmp eq i32 %who, 0, !dbg !247
  %4 = select i1 %3, i32 1, i32 2, !dbg !249
  br label %17, !dbg !250

; <label>:5                                       ; preds = %0, %0
  %6 = icmp eq i32 %who, 0, !dbg !251
  %7 = select i1 %6, i32 11, i32 12, !dbg !252
  br label %17, !dbg !253

; <label>:8                                       ; preds = %0, %0
  %9 = icmp eq i32 %who, 0, !dbg !254
  %10 = select i1 %9, i32 3, i32 4, !dbg !255
  br label %17, !dbg !256

; <label>:11                                      ; preds = %0, %0
  %12 = icmp eq i32 %who, 0, !dbg !257
  %13 = select i1 %12, i32 7, i32 8, !dbg !258
  br label %17, !dbg !259

; <label>:14                                      ; preds = %0, %0
  %15 = icmp eq i32 %who, 0, !dbg !260
  %16 = select i1 %15, i32 9, i32 10, !dbg !261
  br label %17, !dbg !262

; <label>:17                                      ; preds = %0, %14, %11, %8, %5, %2
  %.0 = phi i32 [ %16, %14 ], [ %13, %11 ], [ %10, %8 ], [ %7, %5 ], [ %4, %2 ], [ 13, %0 ]
  ret i32 %.0, !dbg !263
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SwitchColor(i32 %piece) #0 {
  tail call void @llvm.dbg.value(metadata i32 %piece, i64 0, metadata !24, metadata !77), !dbg !264
  tail call void @llvm.dbg.declare(metadata [13 x i32]* @SwitchColor.t, metadata !25, metadata !77), !dbg !265
  %piece.off = add i32 %piece, -1, !dbg !266
  %1 = icmp ugt i32 %piece.off, 11, !dbg !266
  br i1 %1, label %2, label %3, !dbg !266, !prof !267

; <label>:2                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.SwitchColor, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([32 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !266
  unreachable, !dbg !266

; <label>:3                                       ; preds = %0
  %4 = sext i32 %piece to i64, !dbg !268
  %5 = getelementptr inbounds [13 x i32]* @SwitchColor.t, i64 0, i64 %4, !dbg !268
  %6 = load i32* %5, align 4, !dbg !268, !tbaa !82
  ret i32 %6, !dbg !269
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SwitchPromoted(i32 %piece) #0 {
  tail call void @llvm.dbg.value(metadata i32 %piece, i64 0, metadata !31, metadata !77), !dbg !270
  tail call void @llvm.dbg.declare(metadata [13 x i32]* @SwitchPromoted.t, metadata !32, metadata !77), !dbg !271
  %piece.off = add i32 %piece, -1, !dbg !272
  %1 = icmp ugt i32 %piece.off, 11, !dbg !272
  br i1 %1, label %2, label %3, !dbg !272, !prof !267

; <label>:2                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([15 x i8]* @__func__.SwitchPromoted, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([32 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !272
  unreachable, !dbg !272

; <label>:3                                       ; preds = %0
  %4 = sext i32 %piece to i64, !dbg !273
  %5 = getelementptr inbounds [13 x i32]* @SwitchPromoted.t, i64 0, i64 %4, !dbg !273
  %6 = load i32* %5, align 4, !dbg !273, !tbaa !82
  ret i32 %6, !dbg !274
}

; Function Attrs: nounwind optsize ssp uwtable
define void @addHolding(i32 %what, i32 %who) #0 {
  tail call void @llvm.dbg.value(metadata i32 %what, i64 0, metadata !37, metadata !77), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %who, i64 0, metadata !38, metadata !77), !dbg !276
  %1 = load i32* @Variant, align 4, !dbg !277, !tbaa !82
  %2 = icmp eq i32 %1, 0, !dbg !279
  %3 = sext i32 %what to i64, !dbg !280
  br i1 %2, label %4, label %._crit_edge, !dbg !282

; <label>:4                                       ; preds = %0
  %5 = sext i32 %who to i64, !dbg !280
  %6 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %5, i64 %3, !dbg !280
  %7 = load i32* %6, align 4, !dbg !283, !tbaa !82
  %8 = add nsw i32 %7, 1, !dbg !283
  store i32 %8, i32* %6, align 4, !dbg !283, !tbaa !82
  %9 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %5, !dbg !284
  %10 = load i32* %9, align 4, !dbg !285, !tbaa !82
  %11 = add nsw i32 %10, 1, !dbg !285
  store i32 %11, i32* %9, align 4, !dbg !285, !tbaa !82
  %12 = sext i32 %8 to i64, !dbg !286
  %13 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %3, i64 %12, !dbg !286
  %14 = load i32* %13, align 4, !dbg !286, !tbaa !82
  %15 = load i32* @hold_hash, align 4, !dbg !286, !tbaa !82
  %16 = xor i32 %15, %14, !dbg !286
  store i32 %16, i32* @hold_hash, align 4, !dbg !286, !tbaa !82
  br label %._crit_edge, !dbg !287

._crit_edge:                                      ; preds = %0, %4
  %17 = icmp eq i32 %who, 0, !dbg !288
  %18 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %3, !dbg !290
  %19 = load i32* %18, align 4, !dbg !290, !tbaa !82
  br i1 %17, label %20, label %23, !dbg !291

; <label>:20                                      ; preds = %._crit_edge
  %21 = load i32* @white_hand_eval, align 4, !dbg !292, !tbaa !82
  %22 = add nsw i32 %21, %19, !dbg !292
  store i32 %22, i32* @white_hand_eval, align 4, !dbg !292, !tbaa !82
  br label %26, !dbg !293

; <label>:23                                      ; preds = %._crit_edge
  %24 = load i32* @black_hand_eval, align 4, !dbg !294, !tbaa !82
  %25 = add nsw i32 %24, %19, !dbg !294
  store i32 %25, i32* @black_hand_eval, align 4, !dbg !294, !tbaa !82
  br label %26

; <label>:26                                      ; preds = %23, %20
  %27 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %3, !dbg !295
  %28 = load i32* %27, align 4, !dbg !295, !tbaa !82
  %29 = load i32* @Material, align 4, !dbg !296, !tbaa !82
  %30 = add nsw i32 %29, %28, !dbg !296
  store i32 %30, i32* @Material, align 4, !dbg !296, !tbaa !82
  ret void, !dbg !297
}

; Function Attrs: nounwind optsize ssp uwtable
define void @removeHolding(i32 %what, i32 %who) #0 {
  tail call void @llvm.dbg.value(metadata i32 %what, i64 0, metadata !41, metadata !77), !dbg !298
  tail call void @llvm.dbg.value(metadata i32 %who, i64 0, metadata !42, metadata !77), !dbg !299
  %1 = load i32* @Variant, align 4, !dbg !300, !tbaa !82
  %2 = icmp eq i32 %1, 0, !dbg !302
  %3 = sext i32 %what to i64, !dbg !303
  br i1 %2, label %4, label %._crit_edge, !dbg !305

; <label>:4                                       ; preds = %0
  %5 = sext i32 %who to i64, !dbg !303
  %6 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %5, i64 %3, !dbg !303
  %7 = load i32* %6, align 4, !dbg !303, !tbaa !82
  %8 = icmp slt i32 %7, 1, !dbg !303
  br i1 %8, label %9, label %10, !dbg !303, !prof !267

; <label>:9                                       ; preds = %4
  tail call void @__assert_rtn(i8* getelementptr inbounds ([14 x i8]* @__func__.removeHolding, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 245, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !303
  unreachable, !dbg !303

; <label>:10                                      ; preds = %4
  %11 = icmp sgt i32 %7, 19, !dbg !306
  br i1 %11, label %12, label %13, !dbg !306, !prof !267

; <label>:12                                      ; preds = %10
  tail call void @__assert_rtn(i8* getelementptr inbounds ([14 x i8]* @__func__.removeHolding, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !306
  unreachable, !dbg !306

; <label>:13                                      ; preds = %10
  %14 = sext i32 %7 to i64, !dbg !307
  %15 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %3, i64 %14, !dbg !307
  %16 = load i32* %15, align 4, !dbg !307, !tbaa !82
  %17 = load i32* @hold_hash, align 4, !dbg !307, !tbaa !82
  %18 = xor i32 %17, %16, !dbg !307
  store i32 %18, i32* @hold_hash, align 4, !dbg !307, !tbaa !82
  %19 = add nsw i32 %7, -1, !dbg !308
  store i32 %19, i32* %6, align 4, !dbg !308, !tbaa !82
  %20 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %5, !dbg !309
  %21 = load i32* %20, align 4, !dbg !310, !tbaa !82
  %22 = add nsw i32 %21, -1, !dbg !310
  store i32 %22, i32* %20, align 4, !dbg !310, !tbaa !82
  br label %._crit_edge, !dbg !311

._crit_edge:                                      ; preds = %0, %13
  %23 = icmp eq i32 %who, 0, !dbg !312
  %24 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %3, !dbg !314
  %25 = load i32* %24, align 4, !dbg !314, !tbaa !82
  br i1 %23, label %26, label %29, !dbg !315

; <label>:26                                      ; preds = %._crit_edge
  %27 = load i32* @white_hand_eval, align 4, !dbg !316, !tbaa !82
  %28 = sub nsw i32 %27, %25, !dbg !316
  store i32 %28, i32* @white_hand_eval, align 4, !dbg !316, !tbaa !82
  br label %32, !dbg !317

; <label>:29                                      ; preds = %._crit_edge
  %30 = load i32* @black_hand_eval, align 4, !dbg !318, !tbaa !82
  %31 = sub nsw i32 %30, %25, !dbg !318
  store i32 %31, i32* @black_hand_eval, align 4, !dbg !318, !tbaa !82
  br label %32

; <label>:32                                      ; preds = %29, %26
  %33 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %3, !dbg !319
  %34 = load i32* %33, align 4, !dbg !319, !tbaa !82
  %35 = load i32* @Material, align 4, !dbg !320, !tbaa !82
  %36 = sub nsw i32 %35, %34, !dbg !320
  store i32 %36, i32* @Material, align 4, !dbg !320, !tbaa !82
  ret void, !dbg !321
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DropaddHolding(i32 %what, i32 %who) #0 {
  tail call void @llvm.dbg.value(metadata i32 %what, i64 0, metadata !45, metadata !77), !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %who, i64 0, metadata !46, metadata !77), !dbg !323
  %1 = sext i32 %what to i64, !dbg !324
  %2 = sext i32 %who to i64, !dbg !324
  %3 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %2, i64 %1, !dbg !324
  %4 = load i32* %3, align 4, !dbg !325, !tbaa !82
  %5 = add nsw i32 %4, 1, !dbg !325
  store i32 %5, i32* %3, align 4, !dbg !325, !tbaa !82
  %6 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %2, !dbg !326
  %7 = load i32* %6, align 4, !dbg !327, !tbaa !82
  %8 = add nsw i32 %7, 1, !dbg !327
  store i32 %8, i32* %6, align 4, !dbg !327, !tbaa !82
  %9 = sext i32 %5 to i64, !dbg !328
  %10 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %1, i64 %9, !dbg !328
  %11 = load i32* %10, align 4, !dbg !328, !tbaa !82
  %12 = load i32* @hold_hash, align 4, !dbg !328, !tbaa !82
  %13 = xor i32 %12, %11, !dbg !328
  store i32 %13, i32* @hold_hash, align 4, !dbg !328, !tbaa !82
  %14 = icmp eq i32 %who, 0, !dbg !329
  %15 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %1, !dbg !331
  %16 = load i32* %15, align 4, !dbg !331, !tbaa !82
  br i1 %14, label %17, label %20, !dbg !332

; <label>:17                                      ; preds = %0
  %18 = load i32* @white_hand_eval, align 4, !dbg !333, !tbaa !82
  %19 = add nsw i32 %18, %16, !dbg !333
  store i32 %19, i32* @white_hand_eval, align 4, !dbg !333, !tbaa !82
  br label %23, !dbg !334

; <label>:20                                      ; preds = %0
  %21 = load i32* @black_hand_eval, align 4, !dbg !335, !tbaa !82
  %22 = add nsw i32 %21, %16, !dbg !335
  store i32 %22, i32* @black_hand_eval, align 4, !dbg !335, !tbaa !82
  br label %23

; <label>:23                                      ; preds = %20, %17
  %24 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %1, !dbg !336
  %25 = load i32* %24, align 4, !dbg !336, !tbaa !82
  %26 = load i32* @Material, align 4, !dbg !337, !tbaa !82
  %27 = add nsw i32 %26, %25, !dbg !337
  store i32 %27, i32* @Material, align 4, !dbg !337, !tbaa !82
  ret void, !dbg !338
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DropremoveHolding(i32 %what, i32 %who) #0 {
  tail call void @llvm.dbg.value(metadata i32 %what, i64 0, metadata !49, metadata !77), !dbg !339
  tail call void @llvm.dbg.value(metadata i32 %who, i64 0, metadata !50, metadata !77), !dbg !340
  %1 = sext i32 %what to i64, !dbg !341
  %2 = sext i32 %who to i64, !dbg !341
  %3 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %2, i64 %1, !dbg !341
  %4 = load i32* %3, align 4, !dbg !341, !tbaa !82
  %5 = icmp slt i32 %4, 1, !dbg !341
  br i1 %5, label %6, label %7, !dbg !341, !prof !267

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([18 x i8]* @__func__.DropremoveHolding, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 287, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !341
  unreachable, !dbg !341

; <label>:7                                       ; preds = %0
  %8 = icmp sgt i32 %4, 19, !dbg !342
  br i1 %8, label %9, label %10, !dbg !342, !prof !267

; <label>:9                                       ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([18 x i8]* @__func__.DropremoveHolding, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !342
  unreachable, !dbg !342

; <label>:10                                      ; preds = %7
  %11 = sext i32 %4 to i64, !dbg !343
  %12 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %1, i64 %11, !dbg !343
  %13 = load i32* %12, align 4, !dbg !343, !tbaa !82
  %14 = load i32* @hold_hash, align 4, !dbg !343, !tbaa !82
  %15 = xor i32 %14, %13, !dbg !343
  store i32 %15, i32* @hold_hash, align 4, !dbg !343, !tbaa !82
  %16 = add nsw i32 %4, -1, !dbg !344
  store i32 %16, i32* %3, align 4, !dbg !344, !tbaa !82
  %17 = getelementptr inbounds [2 x i32]* @num_holding, i64 0, i64 %2, !dbg !345
  %18 = load i32* %17, align 4, !dbg !346, !tbaa !82
  %19 = add nsw i32 %18, -1, !dbg !346
  store i32 %19, i32* %17, align 4, !dbg !346, !tbaa !82
  %20 = icmp eq i32 %who, 0, !dbg !347
  %21 = getelementptr inbounds [0 x i32]* @hand_value, i64 0, i64 %1, !dbg !349
  %22 = load i32* %21, align 4, !dbg !349, !tbaa !82
  br i1 %20, label %23, label %26, !dbg !350

; <label>:23                                      ; preds = %10
  %24 = load i32* @white_hand_eval, align 4, !dbg !351, !tbaa !82
  %25 = sub nsw i32 %24, %22, !dbg !351
  store i32 %25, i32* @white_hand_eval, align 4, !dbg !351, !tbaa !82
  br label %29, !dbg !352

; <label>:26                                      ; preds = %10
  %27 = load i32* @black_hand_eval, align 4, !dbg !353, !tbaa !82
  %28 = sub nsw i32 %27, %22, !dbg !353
  store i32 %28, i32* @black_hand_eval, align 4, !dbg !353, !tbaa !82
  br label %29

; <label>:29                                      ; preds = %26, %23
  %30 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %1, !dbg !354
  %31 = load i32* %30, align 4, !dbg !354, !tbaa !82
  %32 = load i32* @Material, align 4, !dbg !355, !tbaa !82
  %33 = sub nsw i32 %32, %31, !dbg !355
  store i32 %33, i32* @Material, align 4, !dbg !355, !tbaa !82
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize ssp uwtable
define void @printHolding() #0 {
  %1 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !357, !tbaa !82
  %2 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !358, !tbaa !82
  %3 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !359, !tbaa !82
  %4 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !360, !tbaa !82
  %5 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !361, !tbaa !82
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str4, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #7, !dbg !362
  %7 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 8, !dbg !363, !tbaa !82
  %8 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 16, !dbg !364, !tbaa !82
  %9 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 16, !dbg !365, !tbaa !82
  %10 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 16, !dbg !366, !tbaa !82
  %11 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 8, !dbg !367, !tbaa !82
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #7, !dbg !368
  ret void, !dbg !369
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!73, !74, !75}
!llvm.ident = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !54, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/crazy.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !14, !20, !29, !33, !39, !43, !47, !51}
!4 = !DISubprogram(name: "ProcessHoldings", scope: !1, file: !1, line: 32, type: !5, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @ProcessHoldings, variables: !9)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{!10, !11, !13}
!10 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !4, file: !1, line: 32, type: !7)
!11 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !4, file: !1, line: 34, type: !12)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 34, type: !12)
!14 = !DISubprogram(name: "text_to_piece", scope: !1, file: !1, line: 172, type: !15, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8, i32)* @text_to_piece, variables: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!12, !8, !12}
!17 = !{!18, !19}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "txt", arg: 1, scope: !14, file: !1, line: 172, type: !8)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "who", arg: 2, scope: !14, file: !1, line: 172, type: !12)
!20 = !DISubprogram(name: "SwitchColor", scope: !1, file: !1, line: 196, type: !21, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @SwitchColor, variables: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!12, !12}
!23 = !{!24, !25}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "piece", arg: 1, scope: !20, file: !1, line: 196, type: !12)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !20, file: !1, line: 198, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 416, align: 32, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 13)
!29 = !DISubprogram(name: "SwitchPromoted", scope: !1, file: !1, line: 205, type: !21, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @SwitchPromoted, variables: !30)
!30 = !{!31, !32}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "piece", arg: 1, scope: !29, file: !1, line: 205, type: !12)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !29, file: !1, line: 207, type: !26)
!33 = !DISubprogram(name: "addHolding", scope: !1, file: !1, line: 214, type: !34, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32)* @addHolding, variables: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !12, !12}
!36 = !{!37, !38}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "what", arg: 1, scope: !33, file: !1, line: 214, type: !12)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "who", arg: 2, scope: !33, file: !1, line: 214, type: !12)
!39 = !DISubprogram(name: "removeHolding", scope: !1, file: !1, line: 239, type: !34, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32)* @removeHolding, variables: !40)
!40 = !{!41, !42}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "what", arg: 1, scope: !39, file: !1, line: 239, type: !12)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "who", arg: 2, scope: !39, file: !1, line: 239, type: !12)
!43 = !DISubprogram(name: "DropaddHolding", scope: !1, file: !1, line: 267, type: !34, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32)* @DropaddHolding, variables: !44)
!44 = !{!45, !46}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "what", arg: 1, scope: !43, file: !1, line: 267, type: !12)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "who", arg: 2, scope: !43, file: !1, line: 267, type: !12)
!47 = !DISubprogram(name: "DropremoveHolding", scope: !1, file: !1, line: 285, type: !34, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32)* @DropremoveHolding, variables: !48)
!48 = !{!49, !50}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "what", arg: 1, scope: !47, file: !1, line: 285, type: !12)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "who", arg: 2, scope: !47, file: !1, line: 285, type: !12)
!51 = !DISubprogram(name: "printHolding", scope: !1, file: !1, line: 307, type: !52, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @printHolding, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !{!55, !60, !63, !67, !68, !69, !70, !71}
!55 = !DIGlobalVariable(name: "holding", scope: !0, file: !1, line: 15, type: !56, isLocal: false, isDefinition: true, variable: [2 x [16 x i32]]* @holding)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1024, align: 32, elements: !57)
!57 = !{!58, !59}
!58 = !DISubrange(count: 2)
!59 = !DISubrange(count: 16)
!60 = !DIGlobalVariable(name: "num_holding", scope: !0, file: !1, line: 16, type: !61, isLocal: false, isDefinition: true, variable: [2 x i32]* @num_holding)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 32, elements: !62)
!62 = !{!58}
!63 = !DIGlobalVariable(name: "realholdings", scope: !0, file: !1, line: 18, type: !64, isLocal: false, isDefinition: true, variable: [255 x i8]* @realholdings)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2040, align: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 255)
!67 = !DIGlobalVariable(name: "userealholdings", scope: !0, file: !1, line: 19, type: !12, isLocal: false, isDefinition: true, variable: i32* @userealholdings)
!68 = !DIGlobalVariable(name: "drop_piece", scope: !0, file: !1, line: 21, type: !12, isLocal: false, isDefinition: true, variable: i32* @drop_piece)
!69 = !DIGlobalVariable(name: "white_hand_eval", scope: !0, file: !1, line: 23, type: !12, isLocal: false, isDefinition: true, variable: i32* @white_hand_eval)
!70 = !DIGlobalVariable(name: "black_hand_eval", scope: !0, file: !1, line: 24, type: !12, isLocal: false, isDefinition: true, variable: i32* @black_hand_eval)
!71 = !DIGlobalVariable(name: "hold_hash", scope: !0, file: !1, line: 26, type: !72, isLocal: false, isDefinition: true, variable: i32* @hold_hash)
!72 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!73 = !{i32 2, !"Dwarf Version", i32 2}
!74 = !{i32 2, !"Debug Info Version", i32 700000003}
!75 = !{i32 1, !"PIC Level", i32 2}
!76 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!77 = !DIExpression()
!78 = !DILocation(line: 32, column: 27, scope: !4)
!79 = !DILocation(line: 34, column: 10, scope: !4)
!80 = !DILocation(line: 38, column: 3, scope: !4)
!81 = !DILocation(line: 39, column: 13, scope: !4)
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DILocation(line: 41, column: 19, scope: !4)
!87 = !DILocation(line: 42, column: 19, scope: !4)
!88 = !DILocation(line: 43, column: 3, scope: !4)
!89 = !DILocation(line: 45, column: 22, scope: !4)
!90 = !DILocation(line: 46, column: 22, scope: !4)
!91 = !DILocation(line: 34, column: 7, scope: !4)
!92 = !DILocation(line: 48, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !4, file: !1, line: 48, column: 3)
!94 = !DILocation(line: 50, column: 18, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 49, column: 5)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 48, column: 3)
!97 = !DILocation(line: 50, column: 13, scope: !95)
!98 = !{!84, !84, i64 0}
!99 = !DILocation(line: 50, column: 22, scope: !95)
!100 = !DILocation(line: 53, column: 13, scope: !95)
!101 = !DILocation(line: 50, column: 7, scope: !95)
!102 = !DILocation(line: 53, column: 20, scope: !95)
!103 = !DILocation(line: 53, column: 7, scope: !95)
!104 = !DILocation(line: 57, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 54, column: 19)
!106 = distinct !DILexicalBlock(scope: !95, file: !1, line: 53, column: 28)
!107 = !DILocation(line: 57, column: 4, scope: !105)
!108 = !DILocation(line: 58, column: 4, scope: !105)
!109 = !DILocation(line: 64, column: 4, scope: !105)
!110 = !DILocation(line: 71, column: 4, scope: !105)
!111 = !DILocation(line: 78, column: 4, scope: !105)
!112 = !DILocation(line: 85, column: 4, scope: !105)
!113 = !DILocation(line: 51, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !95, file: !1, line: 51, column: 5)
!115 = !DILocation(line: 51, column: 5, scope: !95)
!116 = !DILocation(line: 54, column: 14, scope: !106)
!117 = !DILocation(line: 54, column: 2, scope: !106)
!118 = !DILocation(line: 57, column: 42, scope: !105)
!119 = !DILocation(line: 58, column: 18, scope: !105)
!120 = !DILocation(line: 59, column: 4, scope: !105)
!121 = !DILocation(line: 61, column: 4, scope: !105)
!122 = !DILocation(line: 64, column: 44, scope: !105)
!123 = !DILocation(line: 65, column: 18, scope: !105)
!124 = !DILocation(line: 66, column: 4, scope: !105)
!125 = !DILocation(line: 68, column: 4, scope: !105)
!126 = !DILocation(line: 71, column: 42, scope: !105)
!127 = !DILocation(line: 72, column: 18, scope: !105)
!128 = !DILocation(line: 73, column: 4, scope: !105)
!129 = !DILocation(line: 75, column: 4, scope: !105)
!130 = !DILocation(line: 78, column: 46, scope: !105)
!131 = !DILocation(line: 79, column: 18, scope: !105)
!132 = !DILocation(line: 80, column: 4, scope: !105)
!133 = !DILocation(line: 82, column: 4, scope: !105)
!134 = !DILocation(line: 85, column: 46, scope: !105)
!135 = !DILocation(line: 86, column: 18, scope: !105)
!136 = !DILocation(line: 87, column: 4, scope: !105)
!137 = !DILocation(line: 89, column: 4, scope: !105)
!138 = !DILocation(line: 48, column: 20, scope: !96)
!139 = !DILocation(line: 97, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !4, file: !1, line: 97, column: 7)
!141 = !DILocation(line: 97, column: 15, scope: !140)
!142 = !DILocation(line: 97, column: 31, scope: !140)
!143 = !DILocation(line: 97, column: 27, scope: !140)
!144 = !DILocation(line: 99, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 98, column: 5)
!146 = !DILocation(line: 101, column: 11, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !1, line: 101, column: 11)
!148 = !DILocation(line: 101, column: 22, scope: !147)
!149 = !DILocation(line: 101, column: 11, scope: !145)
!150 = !DILocation(line: 104, column: 8, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 104, column: 8)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 102, column: 2)
!153 = !DILocation(line: 104, column: 30, scope: !151)
!154 = !DILocation(line: 104, column: 8, scope: !152)
!155 = !DILocation(line: 106, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 105, column: 6)
!157 = !DILocation(line: 107, column: 26, scope: !156)
!158 = !DILocation(line: 108, column: 8, scope: !156)
!159 = !DILocation(line: 109, column: 6, scope: !156)
!160 = !DILocation(line: 110, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !152, file: !1, line: 110, column: 8)
!162 = !DILocation(line: 110, column: 32, scope: !161)
!163 = !DILocation(line: 110, column: 8, scope: !152)
!164 = !DILocation(line: 112, column: 31, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 111, column: 6)
!166 = !DILocation(line: 113, column: 26, scope: !165)
!167 = !DILocation(line: 114, column: 8, scope: !165)
!168 = !DILocation(line: 115, column: 6, scope: !165)
!169 = !DILocation(line: 116, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !152, file: !1, line: 116, column: 8)
!171 = !DILocation(line: 116, column: 32, scope: !170)
!172 = !DILocation(line: 116, column: 8, scope: !152)
!173 = !DILocation(line: 118, column: 29, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 117, column: 4)
!175 = !DILocation(line: 119, column: 24, scope: !174)
!176 = !DILocation(line: 120, column: 6, scope: !174)
!177 = !DILocation(line: 121, column: 4, scope: !174)
!178 = !DILocation(line: 122, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !152, file: !1, line: 122, column: 8)
!180 = !DILocation(line: 122, column: 30, scope: !179)
!181 = !DILocation(line: 122, column: 8, scope: !152)
!182 = !DILocation(line: 124, column: 27, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 123, column: 4)
!184 = !DILocation(line: 125, column: 24, scope: !183)
!185 = !DILocation(line: 126, column: 6, scope: !183)
!186 = !DILocation(line: 127, column: 4, scope: !183)
!187 = !DILocation(line: 128, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !152, file: !1, line: 128, column: 8)
!189 = !DILocation(line: 128, column: 31, scope: !188)
!190 = !DILocation(line: 128, column: 8, scope: !152)
!191 = !DILocation(line: 130, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 129, column: 4)
!193 = !DILocation(line: 131, column: 24, scope: !192)
!194 = !DILocation(line: 132, column: 6, scope: !192)
!195 = !DILocation(line: 133, column: 4, scope: !192)
!196 = !DILocation(line: 138, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 138, column: 8)
!198 = distinct !DILexicalBlock(scope: !147, file: !1, line: 136, column: 2)
!199 = !DILocation(line: 138, column: 31, scope: !197)
!200 = !DILocation(line: 138, column: 8, scope: !198)
!201 = !DILocation(line: 140, column: 28, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 139, column: 4)
!203 = !DILocation(line: 141, column: 24, scope: !202)
!204 = !DILocation(line: 142, column: 6, scope: !202)
!205 = !DILocation(line: 143, column: 4, scope: !202)
!206 = !DILocation(line: 144, column: 8, scope: !207)
!207 = distinct !DILexicalBlock(scope: !198, file: !1, line: 144, column: 8)
!208 = !DILocation(line: 144, column: 30, scope: !207)
!209 = !DILocation(line: 144, column: 8, scope: !198)
!210 = !DILocation(line: 146, column: 27, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 145, column: 4)
!212 = !DILocation(line: 147, column: 24, scope: !211)
!213 = !DILocation(line: 148, column: 6, scope: !211)
!214 = !DILocation(line: 149, column: 4, scope: !211)
!215 = !DILocation(line: 150, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !198, file: !1, line: 150, column: 8)
!217 = !DILocation(line: 150, column: 32, scope: !216)
!218 = !DILocation(line: 150, column: 8, scope: !198)
!219 = !DILocation(line: 152, column: 29, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 151, column: 4)
!221 = !DILocation(line: 153, column: 24, scope: !220)
!222 = !DILocation(line: 154, column: 6, scope: !220)
!223 = !DILocation(line: 155, column: 4, scope: !220)
!224 = !DILocation(line: 156, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !198, file: !1, line: 156, column: 8)
!226 = !DILocation(line: 156, column: 32, scope: !225)
!227 = !DILocation(line: 156, column: 8, scope: !198)
!228 = !DILocation(line: 158, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 157, column: 4)
!230 = !DILocation(line: 159, column: 24, scope: !229)
!231 = !DILocation(line: 160, column: 6, scope: !229)
!232 = !DILocation(line: 161, column: 4, scope: !229)
!233 = !DILocation(line: 162, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !198, file: !1, line: 162, column: 8)
!235 = !DILocation(line: 162, column: 30, scope: !234)
!236 = !DILocation(line: 162, column: 8, scope: !198)
!237 = !DILocation(line: 164, column: 27, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !1, line: 163, column: 4)
!239 = !DILocation(line: 165, column: 24, scope: !238)
!240 = !DILocation(line: 166, column: 6, scope: !238)
!241 = !DILocation(line: 167, column: 4, scope: !238)
!242 = !DILocation(line: 170, column: 1, scope: !4)
!243 = !DILocation(line: 172, column: 24, scope: !14)
!244 = !DILocation(line: 172, column: 33, scope: !14)
!245 = !DILocation(line: 174, column: 10, scope: !14)
!246 = !DILocation(line: 174, column: 3, scope: !14)
!247 = !DILocation(line: 178, column: 19, scope: !248)
!248 = distinct !DILexicalBlock(scope: !14, file: !1, line: 175, column: 5)
!249 = !DILocation(line: 178, column: 15, scope: !248)
!250 = !DILocation(line: 178, column: 7, scope: !248)
!251 = !DILocation(line: 181, column: 19, scope: !248)
!252 = !DILocation(line: 181, column: 15, scope: !248)
!253 = !DILocation(line: 181, column: 7, scope: !248)
!254 = !DILocation(line: 184, column: 19, scope: !248)
!255 = !DILocation(line: 184, column: 15, scope: !248)
!256 = !DILocation(line: 184, column: 7, scope: !248)
!257 = !DILocation(line: 187, column: 19, scope: !248)
!258 = !DILocation(line: 187, column: 15, scope: !248)
!259 = !DILocation(line: 187, column: 7, scope: !248)
!260 = !DILocation(line: 190, column: 19, scope: !248)
!261 = !DILocation(line: 190, column: 15, scope: !248)
!262 = !DILocation(line: 190, column: 7, scope: !248)
!263 = !DILocation(line: 194, column: 1, scope: !14)
!264 = !DILocation(line: 196, column: 21, scope: !20)
!265 = !DILocation(line: 198, column: 7, scope: !20)
!266 = !DILocation(line: 200, column: 3, scope: !20)
!267 = !{!"branch_weights", i32 4, i32 64}
!268 = !DILocation(line: 202, column: 10, scope: !20)
!269 = !DILocation(line: 203, column: 1, scope: !20)
!270 = !DILocation(line: 205, column: 24, scope: !29)
!271 = !DILocation(line: 207, column: 7, scope: !29)
!272 = !DILocation(line: 209, column: 3, scope: !29)
!273 = !DILocation(line: 211, column: 10, scope: !29)
!274 = !DILocation(line: 212, column: 1, scope: !29)
!275 = !DILocation(line: 214, column: 21, scope: !33)
!276 = !DILocation(line: 214, column: 31, scope: !33)
!277 = !DILocation(line: 217, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !33, file: !1, line: 217, column: 7)
!279 = !DILocation(line: 217, column: 15, scope: !278)
!280 = !DILocation(line: 220, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 218, column: 5)
!282 = !DILocation(line: 217, column: 7, scope: !33)
!283 = !DILocation(line: 220, column: 25, scope: !281)
!284 = !DILocation(line: 222, column: 7, scope: !281)
!285 = !DILocation(line: 222, column: 23, scope: !281)
!286 = !DILocation(line: 224, column: 7, scope: !281)
!287 = !DILocation(line: 226, column: 5, scope: !281)
!288 = !DILocation(line: 228, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !33, file: !1, line: 228, column: 7)
!290 = !DILocation(line: 229, column: 24, scope: !289)
!291 = !DILocation(line: 228, column: 7, scope: !33)
!292 = !DILocation(line: 229, column: 21, scope: !289)
!293 = !DILocation(line: 229, column: 5, scope: !289)
!294 = !DILocation(line: 231, column: 21, scope: !289)
!295 = !DILocation(line: 233, column: 15, scope: !33)
!296 = !DILocation(line: 233, column: 12, scope: !33)
!297 = !DILocation(line: 235, column: 3, scope: !33)
!298 = !DILocation(line: 239, column: 24, scope: !39)
!299 = !DILocation(line: 239, column: 34, scope: !39)
!300 = !DILocation(line: 242, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !39, file: !1, line: 242, column: 7)
!302 = !DILocation(line: 242, column: 15, scope: !301)
!303 = !DILocation(line: 245, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !1, line: 243, column: 5)
!305 = !DILocation(line: 242, column: 7, scope: !39)
!306 = !DILocation(line: 246, column: 7, scope: !304)
!307 = !DILocation(line: 248, column: 7, scope: !304)
!308 = !DILocation(line: 250, column: 25, scope: !304)
!309 = !DILocation(line: 252, column: 7, scope: !304)
!310 = !DILocation(line: 252, column: 23, scope: !304)
!311 = !DILocation(line: 254, column: 5, scope: !304)
!312 = !DILocation(line: 256, column: 11, scope: !313)
!313 = distinct !DILexicalBlock(scope: !39, file: !1, line: 256, column: 7)
!314 = !DILocation(line: 257, column: 23, scope: !313)
!315 = !DILocation(line: 256, column: 7, scope: !39)
!316 = !DILocation(line: 257, column: 20, scope: !313)
!317 = !DILocation(line: 257, column: 4, scope: !313)
!318 = !DILocation(line: 259, column: 22, scope: !313)
!319 = !DILocation(line: 261, column: 15, scope: !39)
!320 = !DILocation(line: 261, column: 12, scope: !39)
!321 = !DILocation(line: 263, column: 3, scope: !39)
!322 = !DILocation(line: 267, column: 25, scope: !43)
!323 = !DILocation(line: 267, column: 35, scope: !43)
!324 = !DILocation(line: 269, column: 3, scope: !43)
!325 = !DILocation(line: 269, column: 21, scope: !43)
!326 = !DILocation(line: 271, column: 3, scope: !43)
!327 = !DILocation(line: 271, column: 19, scope: !43)
!328 = !DILocation(line: 273, column: 3, scope: !43)
!329 = !DILocation(line: 275, column: 11, scope: !330)
!330 = distinct !DILexicalBlock(scope: !43, file: !1, line: 275, column: 7)
!331 = !DILocation(line: 276, column: 24, scope: !330)
!332 = !DILocation(line: 275, column: 7, scope: !43)
!333 = !DILocation(line: 276, column: 21, scope: !330)
!334 = !DILocation(line: 276, column: 5, scope: !330)
!335 = !DILocation(line: 278, column: 21, scope: !330)
!336 = !DILocation(line: 280, column: 15, scope: !43)
!337 = !DILocation(line: 280, column: 12, scope: !43)
!338 = !DILocation(line: 282, column: 3, scope: !43)
!339 = !DILocation(line: 285, column: 28, scope: !47)
!340 = !DILocation(line: 285, column: 38, scope: !47)
!341 = !DILocation(line: 287, column: 3, scope: !47)
!342 = !DILocation(line: 289, column: 3, scope: !47)
!343 = !DILocation(line: 291, column: 3, scope: !47)
!344 = !DILocation(line: 293, column: 21, scope: !47)
!345 = !DILocation(line: 295, column: 3, scope: !47)
!346 = !DILocation(line: 295, column: 19, scope: !47)
!347 = !DILocation(line: 297, column: 11, scope: !348)
!348 = distinct !DILexicalBlock(scope: !47, file: !1, line: 297, column: 7)
!349 = !DILocation(line: 298, column: 26, scope: !348)
!350 = !DILocation(line: 297, column: 7, scope: !47)
!351 = !DILocation(line: 298, column: 23, scope: !348)
!352 = !DILocation(line: 298, column: 7, scope: !348)
!353 = !DILocation(line: 300, column: 23, scope: !348)
!354 = !DILocation(line: 302, column: 15, scope: !47)
!355 = !DILocation(line: 302, column: 12, scope: !47)
!356 = !DILocation(line: 304, column: 3, scope: !47)
!357 = !DILocation(line: 311, column: 3, scope: !51)
!358 = !DILocation(line: 311, column: 26, scope: !51)
!359 = !DILocation(line: 312, column: 3, scope: !51)
!360 = !DILocation(line: 313, column: 3, scope: !51)
!361 = !DILocation(line: 313, column: 28, scope: !51)
!362 = !DILocation(line: 310, column: 3, scope: !51)
!363 = !DILocation(line: 316, column: 3, scope: !51)
!364 = !DILocation(line: 316, column: 26, scope: !51)
!365 = !DILocation(line: 317, column: 3, scope: !51)
!366 = !DILocation(line: 318, column: 3, scope: !51)
!367 = !DILocation(line: 318, column: 28, scope: !51)
!368 = !DILocation(line: 315, column: 3, scope: !51)
!369 = !DILocation(line: 320, column: 1, scope: !51)

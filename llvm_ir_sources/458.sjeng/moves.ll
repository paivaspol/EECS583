; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32 }

@Variant = external global i32
@white_to_move = external global i32
@board = external global [144 x i32]
@Xfile = external constant [144 x i32]
@bking_loc = external global i32
@Xrank = external constant [144 x i32]
@Xdiagl = external constant [144 x i32]
@Xdiagr = external constant [144 x i32]
@wking_loc = external global i32
@kingcap = common global i32 0, align 4
@numb_moves = common global i32 0, align 4
@genfor = internal unnamed_addr global %struct.move_s* null, align 8
@captures = external global i32
@fcaptures = common global i32 0, align 4
@piece_count = external global i32
@pieces = external global [62 x i32]
@gfrom = common global i32 0, align 4
@ep_square = external global i32
@moved = external global [144 x i32]
@Giveaway = external global i32
@holding = external global [2 x [16 x i32]]
@extended_in_check.knight_o = internal unnamed_addr constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@ply = external global i32
@path_x = external global [300 x %struct.move_x]
@fifty = external global i32
@.str = private unnamed_addr constant [15 x i8] c"find_slot < 63\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c\00", align 1
@__PRETTY_FUNCTION__.make = private unnamed_addr constant [25 x i8] c"void make(move_s *, int)\00", align 1
@is_promoted = external global [62 x i32]
@squares = external global [144 x i32]
@.str2 = private unnamed_addr constant [30 x i8] c"promoted > 0 && promoted < 13\00", align 1
@material = external global [14 x i32]
@Material = external global i32
@zobrist = external global [14 x [144 x i32]]
@hash = external global i32
@white_castled = external global i32
@black_castled = external global i32
@.str3 = private unnamed_addr constant [30 x i8] c"promoted < 13 && promoted > 0\00", align 1
@__PRETTY_FUNCTION__.unmake = private unnamed_addr constant [27 x i8] c"void unmake(move_s *, int)\00", align 1
@total_moves = common global i32 0, align 4
@total_movegens = common global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define i32 @check_legal(%struct.move_s* nocapture %moves, i32 %m, i32 %incheck) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.move_s* %moves}, i64 0, metadata !27), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !28), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %incheck}, i64 0, metadata !29), !dbg !142
  %idxprom = sext i32 %m to i64, !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !30), !dbg !143
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0, !dbg !144
  %0 = load i32* %from4, align 4, !dbg !144, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !31), !dbg !144
  %target7 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1, !dbg !148
  %1 = load i32* %target7, align 4, !dbg !148, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !32), !dbg !148
  %2 = load i32* @Variant, align 4, !dbg !149, !tbaa !145
  %cmp = icmp eq i32 %2, 3, !dbg !149
  br i1 %cmp, label %return, label %if.end, !dbg !149

if.end:                                           ; preds = %entry
  %castled1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4, !dbg !143
  %3 = load i32* %castled1, align 4, !dbg !143, !tbaa !145
  switch i32 %3, label %return [
    i32 0, label %if.else
    i32 1, label %if.then10
    i32 2, label %if.then24
    i32 3, label %if.then39
    i32 4, label %if.then54
  ], !dbg !150

if.then10:                                        ; preds = %if.end
  %call = tail call i32 @is_attacked(i32 30, i32 0) #4, !dbg !151
  %tobool11 = icmp eq i32 %call, 0, !dbg !151
  br i1 %tobool11, label %if.end13, label %return, !dbg !151

if.end13:                                         ; preds = %if.then10
  %call14 = tail call i32 @is_attacked(i32 31, i32 0) #4, !dbg !154
  %tobool15 = icmp eq i32 %call14, 0, !dbg !154
  br i1 %tobool15, label %if.end17, label %return, !dbg !154

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @is_attacked(i32 32, i32 0) #4, !dbg !155
  %tobool19 = icmp eq i32 %call18, 0, !dbg !155
  %. = zext i1 %tobool19 to i32, !dbg !156
  br label %return, !dbg !156

if.then24:                                        ; preds = %if.end
  %call25 = tail call i32 @is_attacked(i32 30, i32 0) #4, !dbg !157
  %tobool26 = icmp eq i32 %call25, 0, !dbg !157
  br i1 %tobool26, label %if.end28, label %return, !dbg !157

if.end28:                                         ; preds = %if.then24
  %call29 = tail call i32 @is_attacked(i32 29, i32 0) #4, !dbg !159
  %tobool30 = icmp eq i32 %call29, 0, !dbg !159
  br i1 %tobool30, label %if.end32, label %return, !dbg !159

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @is_attacked(i32 28, i32 0) #4, !dbg !160
  %tobool34 = icmp eq i32 %call33, 0, !dbg !160
  %.1176 = zext i1 %tobool34 to i32, !dbg !161
  br label %return, !dbg !161

if.then39:                                        ; preds = %if.end
  %call40 = tail call i32 @is_attacked(i32 114, i32 1) #4, !dbg !162
  %tobool41 = icmp eq i32 %call40, 0, !dbg !162
  br i1 %tobool41, label %if.end43, label %return, !dbg !162

if.end43:                                         ; preds = %if.then39
  %call44 = tail call i32 @is_attacked(i32 115, i32 1) #4, !dbg !164
  %tobool45 = icmp eq i32 %call44, 0, !dbg !164
  br i1 %tobool45, label %if.end47, label %return, !dbg !164

if.end47:                                         ; preds = %if.end43
  %call48 = tail call i32 @is_attacked(i32 116, i32 1) #4, !dbg !165
  %tobool49 = icmp eq i32 %call48, 0, !dbg !165
  %.1177 = zext i1 %tobool49 to i32, !dbg !166
  br label %return, !dbg !166

if.then54:                                        ; preds = %if.end
  %call55 = tail call i32 @is_attacked(i32 114, i32 1) #4, !dbg !167
  %tobool56 = icmp eq i32 %call55, 0, !dbg !167
  br i1 %tobool56, label %if.end58, label %return, !dbg !167

if.end58:                                         ; preds = %if.then54
  %call59 = tail call i32 @is_attacked(i32 113, i32 1) #4, !dbg !169
  %tobool60 = icmp eq i32 %call59, 0, !dbg !169
  br i1 %tobool60, label %if.end62, label %return, !dbg !169

if.end62:                                         ; preds = %if.end58
  %call63 = tail call i32 @is_attacked(i32 112, i32 1) #4, !dbg !170
  %tobool64 = icmp eq i32 %call63, 0, !dbg !170
  %.1178 = zext i1 %tobool64 to i32, !dbg !171
  br label %return, !dbg !171

if.else:                                          ; preds = %if.end
  %4 = load i32* @white_to_move, align 4, !dbg !172, !tbaa !145
  %and = and i32 %4, 1, !dbg !172
  %tobool68 = icmp eq i32 %and, 0, !dbg !172
  %tobool70 = icmp ne i32 %incheck, 0, !dbg !173
  br i1 %tobool68, label %if.else532, label %if.then69, !dbg !172

if.then69:                                        ; preds = %if.else
  br i1 %tobool70, label %if.end527, label %if.then71, !dbg !173

if.then71:                                        ; preds = %if.then69
  %cmp75 = icmp eq i32 %0, 0, !dbg !175
  br i1 %cmp75, label %return, label %if.end77, !dbg !175

if.end77:                                         ; preds = %if.then71
  %promoted = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3, !dbg !177
  %5 = load i32* %promoted, align 4, !dbg !177, !tbaa !145
  %tobool80 = icmp eq i32 %5, 0, !dbg !177
  br i1 %tobool80, label %cond.end, label %sw.bb, !dbg !177

cond.end:                                         ; preds = %if.end77
  %idxprom81 = sext i32 %1 to i64, !dbg !177
  %arrayidx82 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom81, !dbg !177
  %6 = load i32* %arrayidx82, align 4, !dbg !177, !tbaa !145
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb132
    i32 12, label %sw.bb158
    i32 8, label %sw.bb194
    i32 10, label %sw.bb230
  ], !dbg !177

sw.bb:                                            ; preds = %if.end77, %cond.end
  %captured = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 2, !dbg !178
  %7 = load i32* %captured, align 4, !dbg !178, !tbaa !145
  %cmp85 = icmp eq i32 %7, 13, !dbg !178
  %idxprom87 = sext i32 %0 to i64, !dbg !180
  br i1 %cmp85, label %if.else111, label %if.then86, !dbg !178

if.then86:                                        ; preds = %sw.bb
  %arrayidx88 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom87, !dbg !180
  %8 = load i32* %arrayidx88, align 4, !dbg !180, !tbaa !145
  %9 = load i32* @bking_loc, align 4, !dbg !180, !tbaa !145
  %idxprom89 = sext i32 %9 to i64, !dbg !180
  %arrayidx90 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom89, !dbg !180
  %10 = load i32* %arrayidx90, align 4, !dbg !180, !tbaa !145
  %cmp91 = icmp eq i32 %8, %10, !dbg !180
  br i1 %cmp91, label %sw.epilog, label %land.lhs.true, !dbg !180

land.lhs.true:                                    ; preds = %if.then86
  %arrayidx93 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom87, !dbg !180
  %11 = load i32* %arrayidx93, align 4, !dbg !180, !tbaa !145
  %arrayidx95 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom89, !dbg !180
  %12 = load i32* %arrayidx95, align 4, !dbg !180, !tbaa !145
  %cmp96 = icmp eq i32 %11, %12, !dbg !180
  br i1 %cmp96, label %sw.epilog, label %land.lhs.true97, !dbg !180

land.lhs.true97:                                  ; preds = %land.lhs.true
  %arrayidx99 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom87, !dbg !180
  %13 = load i32* %arrayidx99, align 4, !dbg !180, !tbaa !145
  %arrayidx101 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom89, !dbg !180
  %14 = load i32* %arrayidx101, align 4, !dbg !180, !tbaa !145
  %cmp102 = icmp eq i32 %13, %14, !dbg !180
  br i1 %cmp102, label %sw.epilog, label %land.lhs.true103, !dbg !180

land.lhs.true103:                                 ; preds = %land.lhs.true97
  %arrayidx105 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom87, !dbg !180
  %15 = load i32* %arrayidx105, align 4, !dbg !180, !tbaa !145
  %arrayidx107 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom89, !dbg !180
  %16 = load i32* %arrayidx107, align 4, !dbg !180, !tbaa !145
  %cmp108 = icmp eq i32 %15, %16, !dbg !180
  br i1 %cmp108, label %sw.epilog, label %return, !dbg !180

if.else111:                                       ; preds = %sw.bb
  %arrayidx113 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom87, !dbg !182
  %17 = load i32* %arrayidx113, align 4, !dbg !182, !tbaa !145
  %18 = load i32* @bking_loc, align 4, !dbg !182, !tbaa !145
  %idxprom114 = sext i32 %18 to i64, !dbg !182
  %arrayidx115 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom114, !dbg !182
  %19 = load i32* %arrayidx115, align 4, !dbg !182, !tbaa !145
  %cmp116 = icmp eq i32 %17, %19, !dbg !182
  br i1 %cmp116, label %sw.epilog, label %land.lhs.true117, !dbg !182

land.lhs.true117:                                 ; preds = %if.else111
  %arrayidx119 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom87, !dbg !182
  %20 = load i32* %arrayidx119, align 4, !dbg !182, !tbaa !145
  %arrayidx121 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom114, !dbg !182
  %21 = load i32* %arrayidx121, align 4, !dbg !182, !tbaa !145
  %cmp122 = icmp eq i32 %20, %21, !dbg !182
  br i1 %cmp122, label %sw.epilog, label %land.lhs.true123, !dbg !182

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %arrayidx125 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom87, !dbg !182
  %22 = load i32* %arrayidx125, align 4, !dbg !182, !tbaa !145
  %arrayidx127 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom114, !dbg !182
  %23 = load i32* %arrayidx127, align 4, !dbg !182, !tbaa !145
  %cmp128 = icmp eq i32 %22, %23, !dbg !182
  br i1 %cmp128, label %sw.epilog, label %return, !dbg !182

sw.bb132:                                         ; preds = %cond.end
  %idxprom133 = sext i32 %0 to i64, !dbg !184
  %arrayidx134 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom133, !dbg !184
  %24 = load i32* %arrayidx134, align 4, !dbg !184, !tbaa !145
  %25 = load i32* @bking_loc, align 4, !dbg !184, !tbaa !145
  %idxprom135 = sext i32 %25 to i64, !dbg !184
  %arrayidx136 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom135, !dbg !184
  %26 = load i32* %arrayidx136, align 4, !dbg !184, !tbaa !145
  %cmp137 = icmp eq i32 %24, %26, !dbg !184
  br i1 %cmp137, label %sw.epilog, label %land.lhs.true138, !dbg !184

land.lhs.true138:                                 ; preds = %sw.bb132
  %arrayidx140 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom133, !dbg !184
  %27 = load i32* %arrayidx140, align 4, !dbg !184, !tbaa !145
  %arrayidx142 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom135, !dbg !184
  %28 = load i32* %arrayidx142, align 4, !dbg !184, !tbaa !145
  %cmp143 = icmp eq i32 %27, %28, !dbg !184
  br i1 %cmp143, label %sw.epilog, label %land.lhs.true144, !dbg !184

land.lhs.true144:                                 ; preds = %land.lhs.true138
  %arrayidx146 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom133, !dbg !184
  %29 = load i32* %arrayidx146, align 4, !dbg !184, !tbaa !145
  %arrayidx148 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom135, !dbg !184
  %30 = load i32* %arrayidx148, align 4, !dbg !184, !tbaa !145
  %cmp149 = icmp eq i32 %29, %30, !dbg !184
  br i1 %cmp149, label %sw.epilog, label %land.lhs.true150, !dbg !184

land.lhs.true150:                                 ; preds = %land.lhs.true144
  %arrayidx152 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom133, !dbg !184
  %31 = load i32* %arrayidx152, align 4, !dbg !184, !tbaa !145
  %arrayidx154 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom135, !dbg !184
  %32 = load i32* %arrayidx154, align 4, !dbg !184, !tbaa !145
  %cmp155 = icmp eq i32 %31, %32, !dbg !184
  br i1 %cmp155, label %sw.epilog, label %return, !dbg !184

sw.bb158:                                         ; preds = %cond.end
  %idxprom159 = sext i32 %0 to i64, !dbg !185
  %arrayidx160 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom159, !dbg !185
  %33 = load i32* %arrayidx160, align 4, !dbg !185, !tbaa !145
  %34 = load i32* @bking_loc, align 4, !dbg !185, !tbaa !145
  %idxprom161 = sext i32 %34 to i64, !dbg !185
  %arrayidx162 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom161, !dbg !185
  %35 = load i32* %arrayidx162, align 4, !dbg !185, !tbaa !145
  %cmp163 = icmp eq i32 %33, %35, !dbg !185
  br i1 %cmp163, label %sw.epilog, label %land.lhs.true164, !dbg !185

land.lhs.true164:                                 ; preds = %sw.bb158
  %arrayidx166 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom159, !dbg !185
  %36 = load i32* %arrayidx166, align 4, !dbg !185, !tbaa !145
  %arrayidx168 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom161, !dbg !185
  %37 = load i32* %arrayidx168, align 4, !dbg !185, !tbaa !145
  %cmp169 = icmp eq i32 %36, %37, !dbg !185
  br i1 %cmp169, label %sw.epilog, label %if.then170, !dbg !185

if.then170:                                       ; preds = %land.lhs.true164
  %arrayidx172 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom159, !dbg !186
  %38 = load i32* %arrayidx172, align 4, !dbg !186, !tbaa !145
  %arrayidx174 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom81, !dbg !186
  %39 = load i32* %arrayidx174, align 4, !dbg !186, !tbaa !145
  %cmp175 = icmp eq i32 %38, %39, !dbg !186
  br i1 %cmp175, label %if.then176, label %if.else184, !dbg !186

if.then176:                                       ; preds = %if.then170
  %arrayidx178 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom159, !dbg !188
  %40 = load i32* %arrayidx178, align 4, !dbg !188, !tbaa !145
  %arrayidx180 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom161, !dbg !188
  %41 = load i32* %arrayidx180, align 4, !dbg !188, !tbaa !145
  %cmp181 = icmp eq i32 %40, %41, !dbg !188
  br i1 %cmp181, label %sw.epilog, label %return, !dbg !188

if.else184:                                       ; preds = %if.then170
  %arrayidx188 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom161, !dbg !190
  %42 = load i32* %arrayidx188, align 4, !dbg !190, !tbaa !145
  %cmp189 = icmp eq i32 %38, %42, !dbg !190
  br i1 %cmp189, label %sw.epilog, label %return, !dbg !190

sw.bb194:                                         ; preds = %cond.end
  %idxprom195 = sext i32 %0 to i64, !dbg !192
  %arrayidx196 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom195, !dbg !192
  %43 = load i32* %arrayidx196, align 4, !dbg !192, !tbaa !145
  %44 = load i32* @bking_loc, align 4, !dbg !192, !tbaa !145
  %idxprom197 = sext i32 %44 to i64, !dbg !192
  %arrayidx198 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom197, !dbg !192
  %45 = load i32* %arrayidx198, align 4, !dbg !192, !tbaa !145
  %cmp199 = icmp eq i32 %43, %45, !dbg !192
  br i1 %cmp199, label %sw.epilog, label %land.lhs.true200, !dbg !192

land.lhs.true200:                                 ; preds = %sw.bb194
  %arrayidx202 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom195, !dbg !192
  %46 = load i32* %arrayidx202, align 4, !dbg !192, !tbaa !145
  %arrayidx204 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom197, !dbg !192
  %47 = load i32* %arrayidx204, align 4, !dbg !192, !tbaa !145
  %cmp205 = icmp eq i32 %46, %47, !dbg !192
  br i1 %cmp205, label %sw.epilog, label %if.then206, !dbg !192

if.then206:                                       ; preds = %land.lhs.true200
  %arrayidx208 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom195, !dbg !193
  %48 = load i32* %arrayidx208, align 4, !dbg !193, !tbaa !145
  %arrayidx210 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom81, !dbg !193
  %49 = load i32* %arrayidx210, align 4, !dbg !193, !tbaa !145
  %cmp211 = icmp eq i32 %48, %49, !dbg !193
  br i1 %cmp211, label %if.then212, label %if.else220, !dbg !193

if.then212:                                       ; preds = %if.then206
  %arrayidx214 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom195, !dbg !195
  %50 = load i32* %arrayidx214, align 4, !dbg !195, !tbaa !145
  %arrayidx216 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom197, !dbg !195
  %51 = load i32* %arrayidx216, align 4, !dbg !195, !tbaa !145
  %cmp217 = icmp eq i32 %50, %51, !dbg !195
  br i1 %cmp217, label %sw.epilog, label %return, !dbg !195

if.else220:                                       ; preds = %if.then206
  %arrayidx224 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom197, !dbg !197
  %52 = load i32* %arrayidx224, align 4, !dbg !197, !tbaa !145
  %cmp225 = icmp eq i32 %48, %52, !dbg !197
  br i1 %cmp225, label %sw.epilog, label %return, !dbg !197

sw.bb230:                                         ; preds = %cond.end
  %idxprom231 = sext i32 %0 to i64, !dbg !199
  %arrayidx232 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom231, !dbg !199
  %53 = load i32* %arrayidx232, align 4, !dbg !199, !tbaa !145
  %arrayidx234 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom81, !dbg !199
  %54 = load i32* %arrayidx234, align 4, !dbg !199, !tbaa !145
  %cmp235 = icmp eq i32 %53, %54, !dbg !199
  br i1 %cmp235, label %if.then236, label %if.else256, !dbg !199

if.then236:                                       ; preds = %sw.bb230
  %arrayidx238 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom231, !dbg !200
  %55 = load i32* %arrayidx238, align 4, !dbg !200, !tbaa !145
  %56 = load i32* @bking_loc, align 4, !dbg !200, !tbaa !145
  %idxprom239 = sext i32 %56 to i64, !dbg !200
  %arrayidx240 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom239, !dbg !200
  %57 = load i32* %arrayidx240, align 4, !dbg !200, !tbaa !145
  %cmp241 = icmp eq i32 %55, %57, !dbg !200
  br i1 %cmp241, label %sw.epilog, label %land.lhs.true242, !dbg !200

land.lhs.true242:                                 ; preds = %if.then236
  %arrayidx244 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom231, !dbg !200
  %58 = load i32* %arrayidx244, align 4, !dbg !200, !tbaa !145
  %arrayidx246 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom239, !dbg !200
  %59 = load i32* %arrayidx246, align 4, !dbg !200, !tbaa !145
  %cmp247 = icmp eq i32 %58, %59, !dbg !200
  br i1 %cmp247, label %sw.epilog, label %land.lhs.true248, !dbg !200

land.lhs.true248:                                 ; preds = %land.lhs.true242
  %arrayidx250 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom231, !dbg !200
  %60 = load i32* %arrayidx250, align 4, !dbg !200, !tbaa !145
  %arrayidx252 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom239, !dbg !200
  %61 = load i32* %arrayidx252, align 4, !dbg !200, !tbaa !145
  %cmp253 = icmp eq i32 %60, %61, !dbg !200
  br i1 %cmp253, label %sw.epilog, label %return, !dbg !200

if.else256:                                       ; preds = %sw.bb230
  %arrayidx258 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom231, !dbg !202
  %62 = load i32* %arrayidx258, align 4, !dbg !202, !tbaa !145
  %arrayidx260 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom81, !dbg !202
  %63 = load i32* %arrayidx260, align 4, !dbg !202, !tbaa !145
  %cmp261 = icmp eq i32 %62, %63, !dbg !202
  br i1 %cmp261, label %if.then262, label %if.else282, !dbg !202

if.then262:                                       ; preds = %if.else256
  %arrayidx264 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom231, !dbg !203
  %64 = load i32* %arrayidx264, align 4, !dbg !203, !tbaa !145
  %65 = load i32* @bking_loc, align 4, !dbg !203, !tbaa !145
  %idxprom265 = sext i32 %65 to i64, !dbg !203
  %arrayidx266 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom265, !dbg !203
  %66 = load i32* %arrayidx266, align 4, !dbg !203, !tbaa !145
  %cmp267 = icmp eq i32 %64, %66, !dbg !203
  br i1 %cmp267, label %sw.epilog, label %land.lhs.true268, !dbg !203

land.lhs.true268:                                 ; preds = %if.then262
  %arrayidx272 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom265, !dbg !203
  %67 = load i32* %arrayidx272, align 4, !dbg !203, !tbaa !145
  %cmp273 = icmp eq i32 %53, %67, !dbg !203
  br i1 %cmp273, label %sw.epilog, label %land.lhs.true274, !dbg !203

land.lhs.true274:                                 ; preds = %land.lhs.true268
  %arrayidx276 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom231, !dbg !203
  %68 = load i32* %arrayidx276, align 4, !dbg !203, !tbaa !145
  %arrayidx278 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom265, !dbg !203
  %69 = load i32* %arrayidx278, align 4, !dbg !203, !tbaa !145
  %cmp279 = icmp eq i32 %68, %69, !dbg !203
  br i1 %cmp279, label %sw.epilog, label %return, !dbg !203

if.else282:                                       ; preds = %if.else256
  %arrayidx284 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom231, !dbg !205
  %70 = load i32* %arrayidx284, align 4, !dbg !205, !tbaa !145
  %arrayidx286 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom81, !dbg !205
  %71 = load i32* %arrayidx286, align 4, !dbg !205, !tbaa !145
  %cmp287 = icmp eq i32 %70, %71, !dbg !205
  %arrayidx290 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom231, !dbg !206
  %72 = load i32* %arrayidx290, align 4, !dbg !206, !tbaa !145
  br i1 %cmp287, label %if.then288, label %if.else308, !dbg !205

if.then288:                                       ; preds = %if.else282
  %73 = load i32* @bking_loc, align 4, !dbg !206, !tbaa !145
  %idxprom291 = sext i32 %73 to i64, !dbg !206
  %arrayidx292 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom291, !dbg !206
  %74 = load i32* %arrayidx292, align 4, !dbg !206, !tbaa !145
  %cmp293 = icmp eq i32 %72, %74, !dbg !206
  br i1 %cmp293, label %sw.epilog, label %land.lhs.true294, !dbg !206

land.lhs.true294:                                 ; preds = %if.then288
  %arrayidx298 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom291, !dbg !206
  %75 = load i32* %arrayidx298, align 4, !dbg !206, !tbaa !145
  %cmp299 = icmp eq i32 %53, %75, !dbg !206
  br i1 %cmp299, label %sw.epilog, label %land.lhs.true300, !dbg !206

land.lhs.true300:                                 ; preds = %land.lhs.true294
  %arrayidx304 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom291, !dbg !206
  %76 = load i32* %arrayidx304, align 4, !dbg !206, !tbaa !145
  %cmp305 = icmp eq i32 %62, %76, !dbg !206
  br i1 %cmp305, label %sw.epilog, label %return, !dbg !206

if.else308:                                       ; preds = %if.else282
  %arrayidx312 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom81, !dbg !208
  %77 = load i32* %arrayidx312, align 4, !dbg !208, !tbaa !145
  %cmp313 = icmp eq i32 %72, %77, !dbg !208
  br i1 %cmp313, label %if.then314, label %sw.epilog, !dbg !208

if.then314:                                       ; preds = %if.else308
  %78 = load i32* @bking_loc, align 4, !dbg !209, !tbaa !145
  %idxprom317 = sext i32 %78 to i64, !dbg !209
  %arrayidx318 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom317, !dbg !209
  %79 = load i32* %arrayidx318, align 4, !dbg !209, !tbaa !145
  %cmp319 = icmp eq i32 %70, %79, !dbg !209
  br i1 %cmp319, label %sw.epilog, label %land.lhs.true320, !dbg !209

land.lhs.true320:                                 ; preds = %if.then314
  %arrayidx324 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom317, !dbg !209
  %80 = load i32* %arrayidx324, align 4, !dbg !209, !tbaa !145
  %cmp325 = icmp eq i32 %53, %80, !dbg !209
  br i1 %cmp325, label %sw.epilog, label %land.lhs.true326, !dbg !209

land.lhs.true326:                                 ; preds = %land.lhs.true320
  %arrayidx330 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom317, !dbg !209
  %81 = load i32* %arrayidx330, align 4, !dbg !209, !tbaa !145
  %cmp331 = icmp eq i32 %62, %81, !dbg !209
  br i1 %cmp331, label %sw.epilog, label %return, !dbg !209

sw.epilog:                                        ; preds = %land.lhs.true123, %land.lhs.true117, %if.else111, %land.lhs.true103, %land.lhs.true97, %land.lhs.true, %if.then86, %land.lhs.true150, %land.lhs.true144, %land.lhs.true138, %sw.bb132, %if.then176, %if.else184, %land.lhs.true164, %sw.bb158, %if.then212, %if.else220, %land.lhs.true200, %sw.bb194, %land.lhs.true248, %land.lhs.true242, %if.then236, %land.lhs.true274, %land.lhs.true268, %if.then262, %land.lhs.true300, %land.lhs.true294, %if.then288, %land.lhs.true326, %land.lhs.true320, %if.then314, %cond.end, %if.else308
  %idxprom338 = sext i32 %1 to i64, !dbg !211
  %arrayidx339 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom338, !dbg !211
  %82 = load i32* %arrayidx339, align 4, !dbg !211, !tbaa !145
  %cmp340 = icmp eq i32 %82, 6, !dbg !211
  br i1 %cmp340, label %if.end527, label %if.then341, !dbg !211

if.then341:                                       ; preds = %sw.epilog
  %idxprom342 = sext i32 %0 to i64, !dbg !212
  %arrayidx343 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom342, !dbg !212
  %83 = load i32* %arrayidx343, align 4, !dbg !212, !tbaa !145
  %84 = load i32* @bking_loc, align 4, !dbg !212, !tbaa !145
  %idxprom344 = sext i32 %84 to i64, !dbg !212
  %arrayidx345 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom344, !dbg !212
  %85 = load i32* %arrayidx345, align 4, !dbg !212, !tbaa !145
  %cmp346 = icmp eq i32 %83, %85, !dbg !212
  br i1 %cmp346, label %if.then347, label %if.else381, !dbg !212

if.then347:                                       ; preds = %if.then341
  %cmp348 = icmp sgt i32 %84, %0, !dbg !214
  br i1 %cmp348, label %for.cond, label %for.cond363, !dbg !214

for.cond:                                         ; preds = %if.then347, %for.cond
  %indvars.iv1224 = phi i64 [ %indvars.iv.next1225, %for.cond ], [ %idxprom344, %if.then347 ]
  %indvars.iv.next1225 = add i64 %indvars.iv1224, -12, !dbg !216
  %arrayidx351 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1225, !dbg !216
  %86 = load i32* %arrayidx351, align 4, !dbg !216, !tbaa !145
  switch i32 %86, label %return [
    i32 13, label %for.cond
    i32 7, label %return.loopexit1195
    i32 9, label %return.loopexit1195
  ], !dbg !216

for.cond363:                                      ; preds = %if.then347, %for.cond363
  %indvars.iv1226 = phi i64 [ %indvars.iv.next1227, %for.cond363 ], [ %idxprom344, %if.then347 ]
  %indvars.iv.next1227 = add i64 %indvars.iv1226, 12, !dbg !219
  %arrayidx365 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1227, !dbg !219
  %87 = load i32* %arrayidx365, align 4, !dbg !219, !tbaa !145
  switch i32 %87, label %return [
    i32 13, label %for.cond363
    i32 7, label %return.loopexit1197
    i32 9, label %return.loopexit1197
  ], !dbg !219

if.else381:                                       ; preds = %if.then341
  %arrayidx383 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom342, !dbg !222
  %88 = load i32* %arrayidx383, align 4, !dbg !222, !tbaa !145
  %arrayidx385 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom344, !dbg !222
  %89 = load i32* %arrayidx385, align 4, !dbg !222, !tbaa !145
  %cmp386 = icmp eq i32 %88, %89, !dbg !222
  br i1 %cmp386, label %if.then387, label %if.else428, !dbg !222

if.then387:                                       ; preds = %if.else381
  %cmp388 = icmp sgt i32 %84, %0, !dbg !223
  br i1 %cmp388, label %for.cond391, label %for.cond410, !dbg !223

for.cond391:                                      ; preds = %if.then387, %for.cond391
  %indvars.iv1228 = phi i64 [ %indvars.iv.next1229, %for.cond391 ], [ %idxprom344, %if.then387 ]
  %indvars.iv.next1229 = add i64 %indvars.iv1228, -1, !dbg !225
  %arrayidx393 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1229, !dbg !225
  %90 = load i32* %arrayidx393, align 4, !dbg !225, !tbaa !145
  switch i32 %90, label %return [
    i32 13, label %for.cond391
    i32 7, label %return.loopexit1199
    i32 9, label %return.loopexit1199
  ], !dbg !225

for.cond410:                                      ; preds = %if.then387, %for.cond410
  %indvars.iv1230 = phi i64 [ %indvars.iv.next1231, %for.cond410 ], [ %idxprom344, %if.then387 ]
  %indvars.iv.next1231 = add i64 %indvars.iv1230, 1, !dbg !228
  %arrayidx412 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1231, !dbg !228
  %91 = load i32* %arrayidx412, align 4, !dbg !228, !tbaa !145
  switch i32 %91, label %return [
    i32 13, label %for.cond410
    i32 7, label %return.loopexit1201
    i32 9, label %return.loopexit1201
  ], !dbg !228

if.else428:                                       ; preds = %if.else381
  %arrayidx430 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom342, !dbg !231
  %92 = load i32* %arrayidx430, align 4, !dbg !231, !tbaa !145
  %arrayidx432 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom344, !dbg !231
  %93 = load i32* %arrayidx432, align 4, !dbg !231, !tbaa !145
  %cmp433 = icmp eq i32 %92, %93, !dbg !231
  br i1 %cmp433, label %if.then434, label %if.else475, !dbg !231

if.then434:                                       ; preds = %if.else428
  %cmp435 = icmp sgt i32 %84, %0, !dbg !232
  br i1 %cmp435, label %for.cond438, label %for.cond457, !dbg !232

for.cond438:                                      ; preds = %if.then434, %for.cond438
  %indvars.iv1232 = phi i64 [ %indvars.iv.next1233, %for.cond438 ], [ %idxprom344, %if.then434 ]
  %indvars.iv.next1233 = add i64 %indvars.iv1232, -13, !dbg !234
  %arrayidx440 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1233, !dbg !234
  %94 = load i32* %arrayidx440, align 4, !dbg !234, !tbaa !145
  switch i32 %94, label %return [
    i32 13, label %for.cond438
    i32 11, label %return.loopexit1203
    i32 9, label %return.loopexit1203
  ], !dbg !234

for.cond457:                                      ; preds = %if.then434, %for.cond457
  %indvars.iv1234 = phi i64 [ %indvars.iv.next1235, %for.cond457 ], [ %idxprom344, %if.then434 ]
  %indvars.iv.next1235 = add i64 %indvars.iv1234, 13, !dbg !237
  %arrayidx459 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1235, !dbg !237
  %95 = load i32* %arrayidx459, align 4, !dbg !237, !tbaa !145
  switch i32 %95, label %return [
    i32 13, label %for.cond457
    i32 11, label %return.loopexit1205
    i32 9, label %return.loopexit1205
  ], !dbg !237

if.else475:                                       ; preds = %if.else428
  %arrayidx477 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom342, !dbg !240
  %96 = load i32* %arrayidx477, align 4, !dbg !240, !tbaa !145
  %arrayidx479 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom344, !dbg !240
  %97 = load i32* %arrayidx479, align 4, !dbg !240, !tbaa !145
  %cmp480 = icmp eq i32 %96, %97, !dbg !240
  br i1 %cmp480, label %if.then481, label %return, !dbg !240

if.then481:                                       ; preds = %if.else475
  %cmp482 = icmp sgt i32 %84, %0, !dbg !241
  br i1 %cmp482, label %for.cond485, label %for.cond504, !dbg !241

for.cond485:                                      ; preds = %if.then481, %for.cond485
  %indvars.iv1236 = phi i64 [ %indvars.iv.next1237, %for.cond485 ], [ %idxprom344, %if.then481 ]
  %indvars.iv.next1237 = add i64 %indvars.iv1236, -11, !dbg !243
  %arrayidx487 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1237, !dbg !243
  %98 = load i32* %arrayidx487, align 4, !dbg !243, !tbaa !145
  switch i32 %98, label %return [
    i32 13, label %for.cond485
    i32 11, label %return.loopexit1207
    i32 9, label %return.loopexit1207
  ], !dbg !243

for.cond504:                                      ; preds = %if.then481, %for.cond504
  %indvars.iv1238 = phi i64 [ %indvars.iv.next1239, %for.cond504 ], [ %idxprom344, %if.then481 ]
  %indvars.iv.next1239 = add i64 %indvars.iv1238, 11, !dbg !246
  %arrayidx506 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1239, !dbg !246
  %99 = load i32* %arrayidx506, align 4, !dbg !246, !tbaa !145
  switch i32 %99, label %return [
    i32 13, label %for.cond504
    i32 11, label %return.loopexit1209
    i32 9, label %return.loopexit1209
  ], !dbg !246

if.end527:                                        ; preds = %sw.epilog, %if.then69
  %100 = load i32* @bking_loc, align 4, !dbg !249, !tbaa !145
  %call528 = tail call i32 @is_attacked(i32 %100, i32 1) #4, !dbg !249
  %tobool529 = icmp eq i32 %call528, 0, !dbg !249
  %.1179 = zext i1 %tobool529 to i32, !dbg !250
  br label %return, !dbg !250

if.else532:                                       ; preds = %if.else
  br i1 %tobool70, label %if.end1010, label %if.then534, !dbg !251

if.then534:                                       ; preds = %if.else532
  %cmp538 = icmp eq i32 %0, 0, !dbg !253
  br i1 %cmp538, label %return, label %if.end540, !dbg !253

if.end540:                                        ; preds = %if.then534
  %promoted543 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3, !dbg !255
  %101 = load i32* %promoted543, align 4, !dbg !255, !tbaa !145
  %tobool544 = icmp eq i32 %101, 0, !dbg !255
  br i1 %tobool544, label %cond.end549, label %sw.bb551, !dbg !255

cond.end549:                                      ; preds = %if.end540
  %idxprom547 = sext i32 %1 to i64, !dbg !255
  %arrayidx548 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom547, !dbg !255
  %102 = load i32* %arrayidx548, align 4, !dbg !255, !tbaa !145
  switch i32 %102, label %sw.epilog813 [
    i32 1, label %sw.bb551
    i32 3, label %sw.bb603
    i32 11, label %sw.bb629
    i32 7, label %sw.bb665
    i32 9, label %sw.bb701
  ], !dbg !255

sw.bb551:                                         ; preds = %if.end540, %cond.end549
  %captured554 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 2, !dbg !256
  %103 = load i32* %captured554, align 4, !dbg !256, !tbaa !145
  %cmp555 = icmp eq i32 %103, 13, !dbg !256
  %idxprom557 = sext i32 %0 to i64, !dbg !258
  br i1 %cmp555, label %if.else582, label %if.then556, !dbg !256

if.then556:                                       ; preds = %sw.bb551
  %arrayidx558 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom557, !dbg !258
  %104 = load i32* %arrayidx558, align 4, !dbg !258, !tbaa !145
  %105 = load i32* @wking_loc, align 4, !dbg !258, !tbaa !145
  %idxprom559 = sext i32 %105 to i64, !dbg !258
  %arrayidx560 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom559, !dbg !258
  %106 = load i32* %arrayidx560, align 4, !dbg !258, !tbaa !145
  %cmp561 = icmp eq i32 %104, %106, !dbg !258
  br i1 %cmp561, label %sw.epilog813, label %land.lhs.true562, !dbg !258

land.lhs.true562:                                 ; preds = %if.then556
  %arrayidx564 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom557, !dbg !258
  %107 = load i32* %arrayidx564, align 4, !dbg !258, !tbaa !145
  %arrayidx566 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom559, !dbg !258
  %108 = load i32* %arrayidx566, align 4, !dbg !258, !tbaa !145
  %cmp567 = icmp eq i32 %107, %108, !dbg !258
  br i1 %cmp567, label %sw.epilog813, label %land.lhs.true568, !dbg !258

land.lhs.true568:                                 ; preds = %land.lhs.true562
  %arrayidx570 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom557, !dbg !258
  %109 = load i32* %arrayidx570, align 4, !dbg !258, !tbaa !145
  %arrayidx572 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom559, !dbg !258
  %110 = load i32* %arrayidx572, align 4, !dbg !258, !tbaa !145
  %cmp573 = icmp eq i32 %109, %110, !dbg !258
  br i1 %cmp573, label %sw.epilog813, label %land.lhs.true574, !dbg !258

land.lhs.true574:                                 ; preds = %land.lhs.true568
  %arrayidx576 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom557, !dbg !258
  %111 = load i32* %arrayidx576, align 4, !dbg !258, !tbaa !145
  %arrayidx578 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom559, !dbg !258
  %112 = load i32* %arrayidx578, align 4, !dbg !258, !tbaa !145
  %cmp579 = icmp eq i32 %111, %112, !dbg !258
  br i1 %cmp579, label %sw.epilog813, label %return, !dbg !258

if.else582:                                       ; preds = %sw.bb551
  %arrayidx584 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom557, !dbg !260
  %113 = load i32* %arrayidx584, align 4, !dbg !260, !tbaa !145
  %114 = load i32* @wking_loc, align 4, !dbg !260, !tbaa !145
  %idxprom585 = sext i32 %114 to i64, !dbg !260
  %arrayidx586 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom585, !dbg !260
  %115 = load i32* %arrayidx586, align 4, !dbg !260, !tbaa !145
  %cmp587 = icmp eq i32 %113, %115, !dbg !260
  br i1 %cmp587, label %sw.epilog813, label %land.lhs.true588, !dbg !260

land.lhs.true588:                                 ; preds = %if.else582
  %arrayidx590 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom557, !dbg !260
  %116 = load i32* %arrayidx590, align 4, !dbg !260, !tbaa !145
  %arrayidx592 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom585, !dbg !260
  %117 = load i32* %arrayidx592, align 4, !dbg !260, !tbaa !145
  %cmp593 = icmp eq i32 %116, %117, !dbg !260
  br i1 %cmp593, label %sw.epilog813, label %land.lhs.true594, !dbg !260

land.lhs.true594:                                 ; preds = %land.lhs.true588
  %arrayidx596 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom557, !dbg !260
  %118 = load i32* %arrayidx596, align 4, !dbg !260, !tbaa !145
  %arrayidx598 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom585, !dbg !260
  %119 = load i32* %arrayidx598, align 4, !dbg !260, !tbaa !145
  %cmp599 = icmp eq i32 %118, %119, !dbg !260
  br i1 %cmp599, label %sw.epilog813, label %return, !dbg !260

sw.bb603:                                         ; preds = %cond.end549
  %idxprom604 = sext i32 %0 to i64, !dbg !262
  %arrayidx605 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom604, !dbg !262
  %120 = load i32* %arrayidx605, align 4, !dbg !262, !tbaa !145
  %121 = load i32* @wking_loc, align 4, !dbg !262, !tbaa !145
  %idxprom606 = sext i32 %121 to i64, !dbg !262
  %arrayidx607 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom606, !dbg !262
  %122 = load i32* %arrayidx607, align 4, !dbg !262, !tbaa !145
  %cmp608 = icmp eq i32 %120, %122, !dbg !262
  br i1 %cmp608, label %sw.epilog813, label %land.lhs.true609, !dbg !262

land.lhs.true609:                                 ; preds = %sw.bb603
  %arrayidx611 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom604, !dbg !262
  %123 = load i32* %arrayidx611, align 4, !dbg !262, !tbaa !145
  %arrayidx613 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom606, !dbg !262
  %124 = load i32* %arrayidx613, align 4, !dbg !262, !tbaa !145
  %cmp614 = icmp eq i32 %123, %124, !dbg !262
  br i1 %cmp614, label %sw.epilog813, label %land.lhs.true615, !dbg !262

land.lhs.true615:                                 ; preds = %land.lhs.true609
  %arrayidx617 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom604, !dbg !262
  %125 = load i32* %arrayidx617, align 4, !dbg !262, !tbaa !145
  %arrayidx619 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom606, !dbg !262
  %126 = load i32* %arrayidx619, align 4, !dbg !262, !tbaa !145
  %cmp620 = icmp eq i32 %125, %126, !dbg !262
  br i1 %cmp620, label %sw.epilog813, label %land.lhs.true621, !dbg !262

land.lhs.true621:                                 ; preds = %land.lhs.true615
  %arrayidx623 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom604, !dbg !262
  %127 = load i32* %arrayidx623, align 4, !dbg !262, !tbaa !145
  %arrayidx625 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom606, !dbg !262
  %128 = load i32* %arrayidx625, align 4, !dbg !262, !tbaa !145
  %cmp626 = icmp eq i32 %127, %128, !dbg !262
  br i1 %cmp626, label %sw.epilog813, label %return, !dbg !262

sw.bb629:                                         ; preds = %cond.end549
  %idxprom630 = sext i32 %0 to i64, !dbg !263
  %arrayidx631 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom630, !dbg !263
  %129 = load i32* %arrayidx631, align 4, !dbg !263, !tbaa !145
  %130 = load i32* @wking_loc, align 4, !dbg !263, !tbaa !145
  %idxprom632 = sext i32 %130 to i64, !dbg !263
  %arrayidx633 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom632, !dbg !263
  %131 = load i32* %arrayidx633, align 4, !dbg !263, !tbaa !145
  %cmp634 = icmp eq i32 %129, %131, !dbg !263
  br i1 %cmp634, label %sw.epilog813, label %land.lhs.true635, !dbg !263

land.lhs.true635:                                 ; preds = %sw.bb629
  %arrayidx637 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom630, !dbg !263
  %132 = load i32* %arrayidx637, align 4, !dbg !263, !tbaa !145
  %arrayidx639 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom632, !dbg !263
  %133 = load i32* %arrayidx639, align 4, !dbg !263, !tbaa !145
  %cmp640 = icmp eq i32 %132, %133, !dbg !263
  br i1 %cmp640, label %sw.epilog813, label %if.then641, !dbg !263

if.then641:                                       ; preds = %land.lhs.true635
  %arrayidx643 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom630, !dbg !264
  %134 = load i32* %arrayidx643, align 4, !dbg !264, !tbaa !145
  %arrayidx645 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom547, !dbg !264
  %135 = load i32* %arrayidx645, align 4, !dbg !264, !tbaa !145
  %cmp646 = icmp eq i32 %134, %135, !dbg !264
  br i1 %cmp646, label %if.then647, label %if.else655, !dbg !264

if.then647:                                       ; preds = %if.then641
  %arrayidx649 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom630, !dbg !266
  %136 = load i32* %arrayidx649, align 4, !dbg !266, !tbaa !145
  %arrayidx651 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom632, !dbg !266
  %137 = load i32* %arrayidx651, align 4, !dbg !266, !tbaa !145
  %cmp652 = icmp eq i32 %136, %137, !dbg !266
  br i1 %cmp652, label %sw.epilog813, label %return, !dbg !266

if.else655:                                       ; preds = %if.then641
  %arrayidx659 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom632, !dbg !268
  %138 = load i32* %arrayidx659, align 4, !dbg !268, !tbaa !145
  %cmp660 = icmp eq i32 %134, %138, !dbg !268
  br i1 %cmp660, label %sw.epilog813, label %return, !dbg !268

sw.bb665:                                         ; preds = %cond.end549
  %idxprom666 = sext i32 %0 to i64, !dbg !270
  %arrayidx667 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom666, !dbg !270
  %139 = load i32* %arrayidx667, align 4, !dbg !270, !tbaa !145
  %140 = load i32* @wking_loc, align 4, !dbg !270, !tbaa !145
  %idxprom668 = sext i32 %140 to i64, !dbg !270
  %arrayidx669 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom668, !dbg !270
  %141 = load i32* %arrayidx669, align 4, !dbg !270, !tbaa !145
  %cmp670 = icmp eq i32 %139, %141, !dbg !270
  br i1 %cmp670, label %sw.epilog813, label %land.lhs.true671, !dbg !270

land.lhs.true671:                                 ; preds = %sw.bb665
  %arrayidx673 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom666, !dbg !270
  %142 = load i32* %arrayidx673, align 4, !dbg !270, !tbaa !145
  %arrayidx675 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom668, !dbg !270
  %143 = load i32* %arrayidx675, align 4, !dbg !270, !tbaa !145
  %cmp676 = icmp eq i32 %142, %143, !dbg !270
  br i1 %cmp676, label %sw.epilog813, label %if.then677, !dbg !270

if.then677:                                       ; preds = %land.lhs.true671
  %arrayidx679 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom666, !dbg !271
  %144 = load i32* %arrayidx679, align 4, !dbg !271, !tbaa !145
  %arrayidx681 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom547, !dbg !271
  %145 = load i32* %arrayidx681, align 4, !dbg !271, !tbaa !145
  %cmp682 = icmp eq i32 %144, %145, !dbg !271
  br i1 %cmp682, label %if.then683, label %if.else691, !dbg !271

if.then683:                                       ; preds = %if.then677
  %arrayidx685 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom666, !dbg !273
  %146 = load i32* %arrayidx685, align 4, !dbg !273, !tbaa !145
  %arrayidx687 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom668, !dbg !273
  %147 = load i32* %arrayidx687, align 4, !dbg !273, !tbaa !145
  %cmp688 = icmp eq i32 %146, %147, !dbg !273
  br i1 %cmp688, label %sw.epilog813, label %return, !dbg !273

if.else691:                                       ; preds = %if.then677
  %arrayidx695 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom668, !dbg !275
  %148 = load i32* %arrayidx695, align 4, !dbg !275, !tbaa !145
  %cmp696 = icmp eq i32 %144, %148, !dbg !275
  br i1 %cmp696, label %sw.epilog813, label %return, !dbg !275

sw.bb701:                                         ; preds = %cond.end549
  %idxprom702 = sext i32 %0 to i64, !dbg !277
  %arrayidx703 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom702, !dbg !277
  %149 = load i32* %arrayidx703, align 4, !dbg !277, !tbaa !145
  %arrayidx708 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom547, !dbg !277
  %150 = load i32* %arrayidx708, align 4, !dbg !277, !tbaa !145
  %cmp709 = icmp eq i32 %149, %150, !dbg !277
  br i1 %cmp709, label %if.then710, label %if.else730, !dbg !277

if.then710:                                       ; preds = %sw.bb701
  %arrayidx712 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom702, !dbg !278
  %151 = load i32* %arrayidx712, align 4, !dbg !278, !tbaa !145
  %152 = load i32* @wking_loc, align 4, !dbg !278, !tbaa !145
  %idxprom713 = sext i32 %152 to i64, !dbg !278
  %arrayidx714 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom713, !dbg !278
  %153 = load i32* %arrayidx714, align 4, !dbg !278, !tbaa !145
  %cmp715 = icmp eq i32 %151, %153, !dbg !278
  br i1 %cmp715, label %sw.epilog813, label %land.lhs.true716, !dbg !278

land.lhs.true716:                                 ; preds = %if.then710
  %arrayidx718 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom702, !dbg !278
  %154 = load i32* %arrayidx718, align 4, !dbg !278, !tbaa !145
  %arrayidx720 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom713, !dbg !278
  %155 = load i32* %arrayidx720, align 4, !dbg !278, !tbaa !145
  %cmp721 = icmp eq i32 %154, %155, !dbg !278
  br i1 %cmp721, label %sw.epilog813, label %land.lhs.true722, !dbg !278

land.lhs.true722:                                 ; preds = %land.lhs.true716
  %arrayidx724 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom702, !dbg !278
  %156 = load i32* %arrayidx724, align 4, !dbg !278, !tbaa !145
  %arrayidx726 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom713, !dbg !278
  %157 = load i32* %arrayidx726, align 4, !dbg !278, !tbaa !145
  %cmp727 = icmp eq i32 %156, %157, !dbg !278
  br i1 %cmp727, label %sw.epilog813, label %return, !dbg !278

if.else730:                                       ; preds = %sw.bb701
  %arrayidx732 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom702, !dbg !280
  %158 = load i32* %arrayidx732, align 4, !dbg !280, !tbaa !145
  %arrayidx734 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom547, !dbg !280
  %159 = load i32* %arrayidx734, align 4, !dbg !280, !tbaa !145
  %cmp735 = icmp eq i32 %158, %159, !dbg !280
  br i1 %cmp735, label %if.then736, label %if.else756, !dbg !280

if.then736:                                       ; preds = %if.else730
  %arrayidx738 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom702, !dbg !281
  %160 = load i32* %arrayidx738, align 4, !dbg !281, !tbaa !145
  %161 = load i32* @wking_loc, align 4, !dbg !281, !tbaa !145
  %idxprom739 = sext i32 %161 to i64, !dbg !281
  %arrayidx740 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom739, !dbg !281
  %162 = load i32* %arrayidx740, align 4, !dbg !281, !tbaa !145
  %cmp741 = icmp eq i32 %160, %162, !dbg !281
  br i1 %cmp741, label %sw.epilog813, label %land.lhs.true742, !dbg !281

land.lhs.true742:                                 ; preds = %if.then736
  %arrayidx746 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom739, !dbg !281
  %163 = load i32* %arrayidx746, align 4, !dbg !281, !tbaa !145
  %cmp747 = icmp eq i32 %149, %163, !dbg !281
  br i1 %cmp747, label %sw.epilog813, label %land.lhs.true748, !dbg !281

land.lhs.true748:                                 ; preds = %land.lhs.true742
  %arrayidx750 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom702, !dbg !281
  %164 = load i32* %arrayidx750, align 4, !dbg !281, !tbaa !145
  %arrayidx752 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom739, !dbg !281
  %165 = load i32* %arrayidx752, align 4, !dbg !281, !tbaa !145
  %cmp753 = icmp eq i32 %164, %165, !dbg !281
  br i1 %cmp753, label %sw.epilog813, label %return, !dbg !281

if.else756:                                       ; preds = %if.else730
  %arrayidx758 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom702, !dbg !283
  %166 = load i32* %arrayidx758, align 4, !dbg !283, !tbaa !145
  %arrayidx760 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom547, !dbg !283
  %167 = load i32* %arrayidx760, align 4, !dbg !283, !tbaa !145
  %cmp761 = icmp eq i32 %166, %167, !dbg !283
  %arrayidx764 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom702, !dbg !284
  %168 = load i32* %arrayidx764, align 4, !dbg !284, !tbaa !145
  br i1 %cmp761, label %if.then762, label %if.else782, !dbg !283

if.then762:                                       ; preds = %if.else756
  %169 = load i32* @wking_loc, align 4, !dbg !284, !tbaa !145
  %idxprom765 = sext i32 %169 to i64, !dbg !284
  %arrayidx766 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom765, !dbg !284
  %170 = load i32* %arrayidx766, align 4, !dbg !284, !tbaa !145
  %cmp767 = icmp eq i32 %168, %170, !dbg !284
  br i1 %cmp767, label %sw.epilog813, label %land.lhs.true768, !dbg !284

land.lhs.true768:                                 ; preds = %if.then762
  %arrayidx772 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom765, !dbg !284
  %171 = load i32* %arrayidx772, align 4, !dbg !284, !tbaa !145
  %cmp773 = icmp eq i32 %149, %171, !dbg !284
  br i1 %cmp773, label %sw.epilog813, label %land.lhs.true774, !dbg !284

land.lhs.true774:                                 ; preds = %land.lhs.true768
  %arrayidx778 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom765, !dbg !284
  %172 = load i32* %arrayidx778, align 4, !dbg !284, !tbaa !145
  %cmp779 = icmp eq i32 %158, %172, !dbg !284
  br i1 %cmp779, label %sw.epilog813, label %return, !dbg !284

if.else782:                                       ; preds = %if.else756
  %arrayidx786 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom547, !dbg !286
  %173 = load i32* %arrayidx786, align 4, !dbg !286, !tbaa !145
  %cmp787 = icmp eq i32 %168, %173, !dbg !286
  br i1 %cmp787, label %if.then788, label %sw.epilog813, !dbg !286

if.then788:                                       ; preds = %if.else782
  %174 = load i32* @wking_loc, align 4, !dbg !287, !tbaa !145
  %idxprom791 = sext i32 %174 to i64, !dbg !287
  %arrayidx792 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom791, !dbg !287
  %175 = load i32* %arrayidx792, align 4, !dbg !287, !tbaa !145
  %cmp793 = icmp eq i32 %166, %175, !dbg !287
  br i1 %cmp793, label %sw.epilog813, label %land.lhs.true794, !dbg !287

land.lhs.true794:                                 ; preds = %if.then788
  %arrayidx798 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom791, !dbg !287
  %176 = load i32* %arrayidx798, align 4, !dbg !287, !tbaa !145
  %cmp799 = icmp eq i32 %149, %176, !dbg !287
  br i1 %cmp799, label %sw.epilog813, label %land.lhs.true800, !dbg !287

land.lhs.true800:                                 ; preds = %land.lhs.true794
  %arrayidx804 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom791, !dbg !287
  %177 = load i32* %arrayidx804, align 4, !dbg !287, !tbaa !145
  %cmp805 = icmp eq i32 %158, %177, !dbg !287
  br i1 %cmp805, label %sw.epilog813, label %return, !dbg !287

sw.epilog813:                                     ; preds = %land.lhs.true594, %land.lhs.true588, %if.else582, %land.lhs.true574, %land.lhs.true568, %land.lhs.true562, %if.then556, %land.lhs.true621, %land.lhs.true615, %land.lhs.true609, %sw.bb603, %if.then647, %if.else655, %land.lhs.true635, %sw.bb629, %if.then683, %if.else691, %land.lhs.true671, %sw.bb665, %land.lhs.true722, %land.lhs.true716, %if.then710, %land.lhs.true748, %land.lhs.true742, %if.then736, %land.lhs.true774, %land.lhs.true768, %if.then762, %land.lhs.true800, %land.lhs.true794, %if.then788, %cond.end549, %if.else782
  %idxprom814 = sext i32 %1 to i64, !dbg !289
  %arrayidx815 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom814, !dbg !289
  %178 = load i32* %arrayidx815, align 4, !dbg !289, !tbaa !145
  %cmp816 = icmp eq i32 %178, 5, !dbg !289
  br i1 %cmp816, label %if.end1010, label %if.then817, !dbg !289

if.then817:                                       ; preds = %sw.epilog813
  %idxprom818 = sext i32 %0 to i64, !dbg !290
  %arrayidx819 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom818, !dbg !290
  %179 = load i32* %arrayidx819, align 4, !dbg !290, !tbaa !145
  %180 = load i32* @wking_loc, align 4, !dbg !290, !tbaa !145
  %idxprom820 = sext i32 %180 to i64, !dbg !290
  %arrayidx821 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom820, !dbg !290
  %181 = load i32* %arrayidx821, align 4, !dbg !290, !tbaa !145
  %cmp822 = icmp eq i32 %179, %181, !dbg !290
  br i1 %cmp822, label %if.then823, label %if.else864, !dbg !290

if.then823:                                       ; preds = %if.then817
  %cmp824 = icmp sgt i32 %180, %0, !dbg !292
  br i1 %cmp824, label %for.cond827, label %for.cond846, !dbg !292

for.cond827:                                      ; preds = %if.then823, %for.cond827
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond827 ], [ %idxprom820, %if.then823 ]
  %indvars.iv.next = add i64 %indvars.iv, -12, !dbg !294
  %arrayidx829 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !294
  %182 = load i32* %arrayidx829, align 4, !dbg !294, !tbaa !145
  switch i32 %182, label %return [
    i32 13, label %for.cond827
    i32 8, label %return.loopexit
    i32 10, label %return.loopexit
  ], !dbg !294

for.cond846:                                      ; preds = %if.then823, %for.cond846
  %indvars.iv1210 = phi i64 [ %indvars.iv.next1211, %for.cond846 ], [ %idxprom820, %if.then823 ]
  %indvars.iv.next1211 = add i64 %indvars.iv1210, 12, !dbg !297
  %arrayidx848 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1211, !dbg !297
  %183 = load i32* %arrayidx848, align 4, !dbg !297, !tbaa !145
  switch i32 %183, label %return [
    i32 13, label %for.cond846
    i32 8, label %return.loopexit1182
    i32 10, label %return.loopexit1182
  ], !dbg !297

if.else864:                                       ; preds = %if.then817
  %arrayidx866 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom818, !dbg !300
  %184 = load i32* %arrayidx866, align 4, !dbg !300, !tbaa !145
  %arrayidx868 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom820, !dbg !300
  %185 = load i32* %arrayidx868, align 4, !dbg !300, !tbaa !145
  %cmp869 = icmp eq i32 %184, %185, !dbg !300
  br i1 %cmp869, label %if.then870, label %if.else911, !dbg !300

if.then870:                                       ; preds = %if.else864
  %cmp871 = icmp sgt i32 %180, %0, !dbg !301
  br i1 %cmp871, label %for.cond874, label %for.cond893, !dbg !301

for.cond874:                                      ; preds = %if.then870, %for.cond874
  %indvars.iv1212 = phi i64 [ %indvars.iv.next1213, %for.cond874 ], [ %idxprom820, %if.then870 ]
  %indvars.iv.next1213 = add i64 %indvars.iv1212, -1, !dbg !303
  %arrayidx876 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1213, !dbg !303
  %186 = load i32* %arrayidx876, align 4, !dbg !303, !tbaa !145
  switch i32 %186, label %return [
    i32 13, label %for.cond874
    i32 8, label %return.loopexit1184
    i32 10, label %return.loopexit1184
  ], !dbg !303

for.cond893:                                      ; preds = %if.then870, %for.cond893
  %indvars.iv1214 = phi i64 [ %indvars.iv.next1215, %for.cond893 ], [ %idxprom820, %if.then870 ]
  %indvars.iv.next1215 = add i64 %indvars.iv1214, 1, !dbg !306
  %arrayidx895 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1215, !dbg !306
  %187 = load i32* %arrayidx895, align 4, !dbg !306, !tbaa !145
  switch i32 %187, label %return [
    i32 13, label %for.cond893
    i32 8, label %return.loopexit1186
    i32 10, label %return.loopexit1186
  ], !dbg !306

if.else911:                                       ; preds = %if.else864
  %arrayidx913 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom818, !dbg !309
  %188 = load i32* %arrayidx913, align 4, !dbg !309, !tbaa !145
  %arrayidx915 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom820, !dbg !309
  %189 = load i32* %arrayidx915, align 4, !dbg !309, !tbaa !145
  %cmp916 = icmp eq i32 %188, %189, !dbg !309
  br i1 %cmp916, label %if.then917, label %if.else958, !dbg !309

if.then917:                                       ; preds = %if.else911
  %cmp918 = icmp sgt i32 %180, %0, !dbg !310
  br i1 %cmp918, label %for.cond921, label %for.cond940, !dbg !310

for.cond921:                                      ; preds = %if.then917, %for.cond921
  %indvars.iv1216 = phi i64 [ %indvars.iv.next1217, %for.cond921 ], [ %idxprom820, %if.then917 ]
  %indvars.iv.next1217 = add i64 %indvars.iv1216, -13, !dbg !312
  %arrayidx923 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1217, !dbg !312
  %190 = load i32* %arrayidx923, align 4, !dbg !312, !tbaa !145
  switch i32 %190, label %return [
    i32 13, label %for.cond921
    i32 12, label %return.loopexit1188
    i32 10, label %return.loopexit1188
  ], !dbg !312

for.cond940:                                      ; preds = %if.then917, %for.cond940
  %indvars.iv1218 = phi i64 [ %indvars.iv.next1219, %for.cond940 ], [ %idxprom820, %if.then917 ]
  %indvars.iv.next1219 = add i64 %indvars.iv1218, 13, !dbg !315
  %arrayidx942 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1219, !dbg !315
  %191 = load i32* %arrayidx942, align 4, !dbg !315, !tbaa !145
  switch i32 %191, label %return [
    i32 13, label %for.cond940
    i32 12, label %return.loopexit1190
    i32 10, label %return.loopexit1190
  ], !dbg !315

if.else958:                                       ; preds = %if.else911
  %arrayidx960 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom818, !dbg !318
  %192 = load i32* %arrayidx960, align 4, !dbg !318, !tbaa !145
  %arrayidx962 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom820, !dbg !318
  %193 = load i32* %arrayidx962, align 4, !dbg !318, !tbaa !145
  %cmp963 = icmp eq i32 %192, %193, !dbg !318
  br i1 %cmp963, label %if.then964, label %return, !dbg !318

if.then964:                                       ; preds = %if.else958
  %cmp965 = icmp sgt i32 %180, %0, !dbg !319
  br i1 %cmp965, label %for.cond968, label %for.cond987, !dbg !319

for.cond968:                                      ; preds = %if.then964, %for.cond968
  %indvars.iv1220 = phi i64 [ %indvars.iv.next1221, %for.cond968 ], [ %idxprom820, %if.then964 ]
  %indvars.iv.next1221 = add i64 %indvars.iv1220, -11, !dbg !321
  %arrayidx970 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1221, !dbg !321
  %194 = load i32* %arrayidx970, align 4, !dbg !321, !tbaa !145
  switch i32 %194, label %return [
    i32 13, label %for.cond968
    i32 12, label %return.loopexit1192
    i32 10, label %return.loopexit1192
  ], !dbg !321

for.cond987:                                      ; preds = %if.then964, %for.cond987
  %indvars.iv1222 = phi i64 [ %indvars.iv.next1223, %for.cond987 ], [ %idxprom820, %if.then964 ]
  %indvars.iv.next1223 = add i64 %indvars.iv1222, 11, !dbg !324
  %arrayidx989 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1223, !dbg !324
  %195 = load i32* %arrayidx989, align 4, !dbg !324, !tbaa !145
  switch i32 %195, label %return [
    i32 13, label %for.cond987
    i32 12, label %return.loopexit1194
    i32 10, label %return.loopexit1194
  ], !dbg !324

if.end1010:                                       ; preds = %sw.epilog813, %if.else532
  %196 = load i32* @wking_loc, align 4, !dbg !327, !tbaa !145
  %call1011 = tail call i32 @is_attacked(i32 %196, i32 0) #4, !dbg !327
  %tobool1012 = icmp eq i32 %call1011, 0, !dbg !327
  %.1180 = zext i1 %tobool1012 to i32, !dbg !328
  br label %return, !dbg !328

return.loopexit:                                  ; preds = %for.cond827, %for.cond827
  br label %return

return.loopexit1182:                              ; preds = %for.cond846, %for.cond846
  br label %return

return.loopexit1184:                              ; preds = %for.cond874, %for.cond874
  br label %return

return.loopexit1186:                              ; preds = %for.cond893, %for.cond893
  br label %return

return.loopexit1188:                              ; preds = %for.cond921, %for.cond921
  br label %return

return.loopexit1190:                              ; preds = %for.cond940, %for.cond940
  br label %return

return.loopexit1192:                              ; preds = %for.cond968, %for.cond968
  br label %return

return.loopexit1194:                              ; preds = %for.cond987, %for.cond987
  br label %return

return.loopexit1195:                              ; preds = %for.cond, %for.cond
  br label %return

return.loopexit1197:                              ; preds = %for.cond363, %for.cond363
  br label %return

return.loopexit1199:                              ; preds = %for.cond391, %for.cond391
  br label %return

return.loopexit1201:                              ; preds = %for.cond410, %for.cond410
  br label %return

return.loopexit1203:                              ; preds = %for.cond438, %for.cond438
  br label %return

return.loopexit1205:                              ; preds = %for.cond457, %for.cond457
  br label %return

return.loopexit1207:                              ; preds = %for.cond485, %for.cond485
  br label %return

return.loopexit1209:                              ; preds = %for.cond504, %for.cond504
  br label %return

return:                                           ; preds = %if.else958, %for.cond827, %for.cond846, %for.cond874, %for.cond893, %for.cond921, %for.cond940, %for.cond968, %for.cond987, %if.else475, %for.cond, %for.cond363, %for.cond391, %for.cond410, %for.cond438, %for.cond457, %for.cond485, %for.cond504, %return.loopexit1209, %return.loopexit1207, %return.loopexit1205, %return.loopexit1203, %return.loopexit1201, %return.loopexit1199, %return.loopexit1197, %return.loopexit1195, %return.loopexit1194, %return.loopexit1192, %return.loopexit1190, %return.loopexit1188, %return.loopexit1186, %return.loopexit1184, %return.loopexit1182, %return.loopexit, %if.end, %if.end1010, %land.lhs.true800, %land.lhs.true774, %land.lhs.true748, %land.lhs.true722, %if.else691, %if.then683, %if.else655, %if.then647, %land.lhs.true621, %land.lhs.true594, %land.lhs.true574, %if.then534, %if.end527, %land.lhs.true326, %land.lhs.true300, %land.lhs.true274, %land.lhs.true248, %if.else220, %if.then212, %if.else184, %if.then176, %land.lhs.true150, %land.lhs.true123, %land.lhs.true103, %if.then71, %if.end62, %if.end58, %if.then54, %if.end47, %if.end43, %if.then39, %if.end32, %if.end28, %if.then24, %if.end17, %if.end13, %if.then10, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then10 ], [ 0, %if.end13 ], [ %., %if.end17 ], [ 0, %if.then24 ], [ 0, %if.end28 ], [ %.1176, %if.end32 ], [ 0, %if.then39 ], [ 0, %if.end43 ], [ %.1177, %if.end47 ], [ 0, %if.then54 ], [ 0, %if.end58 ], [ %.1178, %if.end62 ], [ 1, %if.then71 ], [ 1, %land.lhs.true103 ], [ 1, %land.lhs.true123 ], [ 1, %land.lhs.true150 ], [ 1, %if.then176 ], [ 1, %if.else184 ], [ 1, %if.then212 ], [ 1, %if.else220 ], [ 1, %land.lhs.true248 ], [ 1, %land.lhs.true274 ], [ 1, %land.lhs.true300 ], [ 1, %land.lhs.true326 ], [ %.1179, %if.end527 ], [ 1, %if.then534 ], [ 1, %land.lhs.true574 ], [ 1, %land.lhs.true594 ], [ 1, %land.lhs.true621 ], [ 1, %if.then647 ], [ 1, %if.else655 ], [ 1, %if.then683 ], [ 1, %if.else691 ], [ 1, %land.lhs.true722 ], [ 1, %land.lhs.true748 ], [ 1, %land.lhs.true774 ], [ 1, %land.lhs.true800 ], [ %.1180, %if.end1010 ], [ 0, %if.end ], [ 0, %return.loopexit ], [ 0, %return.loopexit1182 ], [ 0, %return.loopexit1184 ], [ 0, %return.loopexit1186 ], [ 0, %return.loopexit1188 ], [ 0, %return.loopexit1190 ], [ 0, %return.loopexit1192 ], [ 0, %return.loopexit1194 ], [ 0, %return.loopexit1195 ], [ 0, %return.loopexit1197 ], [ 0, %return.loopexit1199 ], [ 0, %return.loopexit1201 ], [ 0, %return.loopexit1203 ], [ 0, %return.loopexit1205 ], [ 0, %return.loopexit1207 ], [ 0, %return.loopexit1209 ], [ 1, %for.cond504 ], [ 1, %for.cond485 ], [ 1, %for.cond457 ], [ 1, %for.cond438 ], [ 1, %for.cond410 ], [ 1, %for.cond391 ], [ 1, %for.cond363 ], [ 1, %for.cond ], [ 1, %if.else475 ], [ 1, %for.cond987 ], [ 1, %for.cond968 ], [ 1, %for.cond940 ], [ 1, %for.cond921 ], [ 1, %for.cond893 ], [ 1, %for.cond874 ], [ 1, %for.cond846 ], [ 1, %for.cond827 ], [ 1, %if.else958 ]
  ret i32 %retval.0, !dbg !329
}

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @gen(%struct.move_s* %moves) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.move_s* %moves}, i64 0, metadata !38), !dbg !330
  store i32 0, i32* @kingcap, align 4, !dbg !331, !tbaa !145
  store i32 0, i32* @numb_moves, align 4, !dbg !332, !tbaa !145
  store %struct.move_s* %moves, %struct.move_s** @genfor, align 8, !dbg !333, !tbaa !334
  %0 = load i32* @Variant, align 4, !dbg !335, !tbaa !145
  %cmp = icmp eq i32 %0, 3, !dbg !335
  br i1 %cmp, label %if.then, label %restart, !dbg !335

if.then:                                          ; preds = %entry
  store i32 0, i32* @captures, align 4, !dbg !336, !tbaa !146
  store i32 0, i32* @fcaptures, align 4, !dbg !338, !tbaa !146
  br label %restart, !dbg !339

restart:                                          ; preds = %entry, %if.then, %if.then726
  %1 = phi i32 [ 3, %if.then726 ], [ 3, %if.then ], [ %0, %entry ]
  %2 = load i32* @white_to_move, align 4, !dbg !340, !tbaa !145
  %tobool = icmp eq i32 %2, 0, !dbg !340
  tail call void @llvm.dbg.value(metadata !341, i64 0, metadata !40), !dbg !342
  tail call void @llvm.dbg.value(metadata !341, i64 0, metadata !41), !dbg !342
  %3 = load i32* @piece_count, align 4, !dbg !345, !tbaa !145
  %cmp299957 = icmp slt i32 %3, 1, !dbg !345
  br i1 %tobool, label %for.cond298.preheader, label %for.cond.preheader, !dbg !340

for.cond298.preheader:                            ; preds = %restart
  br i1 %cmp299957, label %if.end612, label %land.rhs300, !dbg !345

for.cond.preheader:                               ; preds = %restart
  br i1 %cmp299957, label %if.end612, label %land.rhs, !dbg !342

land.rhs:                                         ; preds = %for.cond.preheader, %for.inc.land.rhs_crit_edge
  %4 = phi i32 [ %.pre, %for.inc.land.rhs_crit_edge ], [ %1, %for.cond.preheader ], !dbg !342
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.land.rhs_crit_edge ], [ 1, %for.cond.preheader ]
  %a.0954 = phi i32 [ %a.1, %for.inc.land.rhs_crit_edge ], [ 1, %for.cond.preheader ]
  %cmp3 = icmp eq i32 %4, 3, !dbg !342
  %5 = load i32* @kingcap, align 4, !dbg !342, !tbaa !145
  %tobool4 = icmp ne i32 %5, 0, !dbg !342
  %or.cond = or i1 %cmp3, %tobool4, !dbg !342
  br i1 %or.cond, label %lor.rhs, label %for.body, !dbg !342

lor.rhs:                                          ; preds = %land.rhs
  br i1 %cmp3, label %land.rhs6, label %if.end612, !dbg !342

land.rhs6:                                        ; preds = %lor.rhs
  %6 = load i32* @fcaptures, align 4, !dbg !342, !tbaa !146
  %7 = load i32* @captures, align 4, !dbg !342, !tbaa !146
  %cmp7 = icmp eq i32 %6, %7, !dbg !342
  br i1 %cmp7, label %for.body, label %if.end612

for.body:                                         ; preds = %land.rhs, %land.rhs6
  %arrayidx9 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !348
  %8 = load i32* %arrayidx9, align 4, !dbg !348, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !42), !dbg !348
  %tobool10 = icmp eq i32 %8, 0, !dbg !350
  br i1 %tobool10, label %for.inc, label %if.else, !dbg !350

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.0954, 1, !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !40), !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !39), !dbg !352
  store i32 %8, i32* @gfrom, align 4, !dbg !353, !tbaa !145
  %idxprom13 = sext i32 %8 to i64, !dbg !354
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom13, !dbg !354
  %9 = load i32* %arrayidx14, align 4, !dbg !354, !tbaa !145
  switch i32 %9, label %for.inc [
    i32 1, label %sw.bb
    i32 3, label %sw.bb82
    i32 11, label %sw.bb138
    i32 7, label %sw.bb167
    i32 9, label %sw.bb196
    i32 5, label %sw.bb253
  ], !dbg !354

sw.bb:                                            ; preds = %if.else
  %add = add nsw i32 %8, 12, !dbg !355
  %idxprom15 = sext i32 %add to i64, !dbg !355
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15, !dbg !355
  %10 = load i32* %arrayidx16, align 4, !dbg !355, !tbaa !145
  %cmp17 = icmp eq i32 %10, 13, !dbg !355
  br i1 %cmp17, label %if.then18, label %if.end45, !dbg !355

if.then18:                                        ; preds = %sw.bb
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom13, !dbg !357
  %11 = load i32* %arrayidx20, align 4, !dbg !357, !tbaa !145
  %cmp21 = icmp eq i32 %11, 7, !dbg !357
  br i1 %cmp21, label %switch.early.test, label %if.else28

switch.early.test:                                ; preds = %if.then18
  %.off = add i32 %4, -3, !dbg !357
  %switch = icmp ult i32 %.off, 2, !dbg !357
  br i1 %switch, label %if.else28, label %if.then26, !dbg !357

if.then26:                                        ; preds = %switch.early.test
  tail call void @push_pawn(i32 %add, i32 0) #5, !dbg !359
  br label %if.end45, !dbg !361

if.else28:                                        ; preds = %switch.early.test, %if.then18
  %12 = load i32* @captures, align 4, !dbg !362, !tbaa !146
  %tobool29 = icmp eq i32 %12, 0, !dbg !362
  br i1 %tobool29, label %if.then30, label %if.end45, !dbg !362

if.then30:                                        ; preds = %if.else28
  tail call void @push_pawn(i32 %add, i32 0) #5, !dbg !363
  %cmp34 = icmp eq i32 %11, 2, !dbg !365
  br i1 %cmp34, label %land.lhs.true35, label %if.end45, !dbg !365

land.lhs.true35:                                  ; preds = %if.then30
  %add36 = add nsw i32 %8, 24, !dbg !365
  %idxprom37 = sext i32 %add36 to i64, !dbg !365
  %arrayidx38 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom37, !dbg !365
  %13 = load i32* %arrayidx38, align 4, !dbg !365, !tbaa !145
  %cmp39 = icmp eq i32 %13, 13, !dbg !365
  br i1 %cmp39, label %if.then40, label %if.end45, !dbg !365

if.then40:                                        ; preds = %land.lhs.true35
  tail call void @llvm.dbg.value(metadata !{i32 %add36}, i64 0, metadata !366) #6, !dbg !368
  tail call void @add_move(i32 %add36, i32 0) #4, !dbg !369
  br label %if.end45, !dbg !367

if.end45:                                         ; preds = %if.else28, %if.then26, %if.then30, %land.lhs.true35, %if.then40, %sw.bb
  %add46 = add nsw i32 %8, 13, !dbg !370
  %idxprom47 = sext i32 %add46 to i64, !dbg !370
  %arrayidx48 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !370
  %14 = load i32* %arrayidx48, align 4, !dbg !370, !tbaa !145
  %and = and i32 %14, 1, !dbg !370
  %cmp49 = icmp ne i32 %and, 0, !dbg !370
  %cmp54 = icmp eq i32 %14, 0, !dbg !370
  %or.cond945 = or i1 %cmp49, %cmp54, !dbg !370
  br i1 %or.cond945, label %if.end57, label %if.then55, !dbg !370

if.then55:                                        ; preds = %if.end45
  tail call void @push_pawn(i32 %add46, i32 0) #5, !dbg !371
  br label %if.end57, !dbg !371

if.end57:                                         ; preds = %if.end45, %if.then55
  %add58 = add nsw i32 %8, 11, !dbg !372
  %idxprom59 = sext i32 %add58 to i64, !dbg !372
  %arrayidx60 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom59, !dbg !372
  %15 = load i32* %arrayidx60, align 4, !dbg !372, !tbaa !145
  %and61 = and i32 %15, 1, !dbg !372
  %cmp62 = icmp ne i32 %and61, 0, !dbg !372
  %cmp67 = icmp eq i32 %15, 0, !dbg !372
  %or.cond946 = or i1 %cmp62, %cmp67, !dbg !372
  br i1 %or.cond946, label %if.end70, label %if.then68, !dbg !372

if.then68:                                        ; preds = %if.end57
  tail call void @push_pawn(i32 %add58, i32 0) #5, !dbg !373
  br label %if.end70, !dbg !373

if.end70:                                         ; preds = %if.end57, %if.then68
  %16 = load i32* @ep_square, align 4, !dbg !374, !tbaa !145
  %cmp72 = icmp eq i32 %16, %add46, !dbg !374
  br i1 %cmp72, label %if.then73, label %if.else75, !dbg !374

if.then73:                                        ; preds = %if.end70
  tail call void @push_pawn(i32 %add46, i32 1) #5, !dbg !375
  br label %for.inc, !dbg !375

if.else75:                                        ; preds = %if.end70
  %cmp77 = icmp eq i32 %16, %add58, !dbg !376
  br i1 %cmp77, label %if.then78, label %for.inc, !dbg !376

if.then78:                                        ; preds = %if.else75
  tail call void @push_pawn(i32 %add58, i32 1) #5, !dbg !377
  br label %for.inc, !dbg !377

sw.bb82:                                          ; preds = %if.else
  %sub = add nsw i32 %8, -25, !dbg !378
  %idxprom83 = sext i32 %sub to i64, !dbg !378
  %arrayidx84 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom83, !dbg !378
  %17 = load i32* %arrayidx84, align 4, !dbg !378, !tbaa !145
  %cmp85 = icmp eq i32 %17, 0, !dbg !378
  br i1 %cmp85, label %if.end88, label %if.then86, !dbg !378

if.then86:                                        ; preds = %sw.bb82
  tail call void @push_knighT(i32 %sub) #5, !dbg !378
  br label %if.end88, !dbg !378

if.end88:                                         ; preds = %sw.bb82, %if.then86
  %sub89 = add nsw i32 %8, -23, !dbg !379
  %idxprom90 = sext i32 %sub89 to i64, !dbg !379
  %arrayidx91 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom90, !dbg !379
  %18 = load i32* %arrayidx91, align 4, !dbg !379, !tbaa !145
  %cmp92 = icmp eq i32 %18, 0, !dbg !379
  br i1 %cmp92, label %if.end95, label %if.then93, !dbg !379

if.then93:                                        ; preds = %if.end88
  tail call void @push_knighT(i32 %sub89) #5, !dbg !379
  br label %if.end95, !dbg !379

if.end95:                                         ; preds = %if.end88, %if.then93
  %sub96 = add nsw i32 %8, -14, !dbg !380
  %idxprom97 = sext i32 %sub96 to i64, !dbg !380
  %arrayidx98 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom97, !dbg !380
  %19 = load i32* %arrayidx98, align 4, !dbg !380, !tbaa !145
  %cmp99 = icmp eq i32 %19, 0, !dbg !380
  br i1 %cmp99, label %if.end102, label %if.then100, !dbg !380

if.then100:                                       ; preds = %if.end95
  tail call void @push_knighT(i32 %sub96) #5, !dbg !380
  br label %if.end102, !dbg !380

if.end102:                                        ; preds = %if.end95, %if.then100
  %sub103 = add nsw i32 %8, -10, !dbg !381
  %idxprom104 = sext i32 %sub103 to i64, !dbg !381
  %arrayidx105 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom104, !dbg !381
  %20 = load i32* %arrayidx105, align 4, !dbg !381, !tbaa !145
  %cmp106 = icmp eq i32 %20, 0, !dbg !381
  br i1 %cmp106, label %if.end109, label %if.then107, !dbg !381

if.then107:                                       ; preds = %if.end102
  tail call void @push_knighT(i32 %sub103) #5, !dbg !381
  br label %if.end109, !dbg !381

if.end109:                                        ; preds = %if.end102, %if.then107
  %add110 = add nsw i32 %8, 10, !dbg !382
  %idxprom111 = sext i32 %add110 to i64, !dbg !382
  %arrayidx112 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom111, !dbg !382
  %21 = load i32* %arrayidx112, align 4, !dbg !382, !tbaa !145
  %cmp113 = icmp eq i32 %21, 0, !dbg !382
  br i1 %cmp113, label %if.end116, label %if.then114, !dbg !382

if.then114:                                       ; preds = %if.end109
  tail call void @push_knighT(i32 %add110) #5, !dbg !382
  br label %if.end116, !dbg !382

if.end116:                                        ; preds = %if.end109, %if.then114
  %add117 = add nsw i32 %8, 14, !dbg !383
  %idxprom118 = sext i32 %add117 to i64, !dbg !383
  %arrayidx119 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom118, !dbg !383
  %22 = load i32* %arrayidx119, align 4, !dbg !383, !tbaa !145
  %cmp120 = icmp eq i32 %22, 0, !dbg !383
  br i1 %cmp120, label %if.end123, label %if.then121, !dbg !383

if.then121:                                       ; preds = %if.end116
  tail call void @push_knighT(i32 %add117) #5, !dbg !383
  br label %if.end123, !dbg !383

if.end123:                                        ; preds = %if.end116, %if.then121
  %add124 = add nsw i32 %8, 23, !dbg !384
  %idxprom125 = sext i32 %add124 to i64, !dbg !384
  %arrayidx126 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom125, !dbg !384
  %23 = load i32* %arrayidx126, align 4, !dbg !384, !tbaa !145
  %cmp127 = icmp eq i32 %23, 0, !dbg !384
  br i1 %cmp127, label %if.end130, label %if.then128, !dbg !384

if.then128:                                       ; preds = %if.end123
  tail call void @push_knighT(i32 %add124) #5, !dbg !384
  br label %if.end130, !dbg !384

if.end130:                                        ; preds = %if.end123, %if.then128
  %add131 = add nsw i32 %8, 25, !dbg !385
  %idxprom132 = sext i32 %add131 to i64, !dbg !385
  %arrayidx133 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom132, !dbg !385
  %24 = load i32* %arrayidx133, align 4, !dbg !385, !tbaa !145
  %cmp134 = icmp eq i32 %24, 0, !dbg !385
  br i1 %cmp134, label %for.inc, label %if.then135, !dbg !385

if.then135:                                       ; preds = %if.end130
  tail call void @push_knighT(i32 %add131) #5, !dbg !385
  br label %for.inc, !dbg !385

sw.bb138:                                         ; preds = %if.else
  %sub139 = add nsw i32 %8, -13, !dbg !386
  %idxprom140 = sext i32 %sub139 to i64, !dbg !386
  %arrayidx141 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom140, !dbg !386
  %25 = load i32* %arrayidx141, align 4, !dbg !386, !tbaa !145
  %cmp142 = icmp eq i32 %25, 0, !dbg !386
  br i1 %cmp142, label %if.end145, label %if.then143, !dbg !386

if.then143:                                       ; preds = %sw.bb138
  tail call void @push_slidE(i32 %sub139) #5, !dbg !386
  br label %if.end145, !dbg !386

if.end145:                                        ; preds = %sw.bb138, %if.then143
  %sub146 = add nsw i32 %8, -11, !dbg !387
  %idxprom147 = sext i32 %sub146 to i64, !dbg !387
  %arrayidx148 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom147, !dbg !387
  %26 = load i32* %arrayidx148, align 4, !dbg !387, !tbaa !145
  %cmp149 = icmp eq i32 %26, 0, !dbg !387
  br i1 %cmp149, label %if.end152, label %if.then150, !dbg !387

if.then150:                                       ; preds = %if.end145
  tail call void @push_slidE(i32 %sub146) #5, !dbg !387
  br label %if.end152, !dbg !387

if.end152:                                        ; preds = %if.end145, %if.then150
  %add153 = add nsw i32 %8, 11, !dbg !388
  %idxprom154 = sext i32 %add153 to i64, !dbg !388
  %arrayidx155 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom154, !dbg !388
  %27 = load i32* %arrayidx155, align 4, !dbg !388, !tbaa !145
  %cmp156 = icmp eq i32 %27, 0, !dbg !388
  br i1 %cmp156, label %if.end159, label %if.then157, !dbg !388

if.then157:                                       ; preds = %if.end152
  tail call void @push_slidE(i32 %add153) #5, !dbg !388
  br label %if.end159, !dbg !388

if.end159:                                        ; preds = %if.end152, %if.then157
  %add160 = add nsw i32 %8, 13, !dbg !389
  %idxprom161 = sext i32 %add160 to i64, !dbg !389
  %arrayidx162 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom161, !dbg !389
  %28 = load i32* %arrayidx162, align 4, !dbg !389, !tbaa !145
  %cmp163 = icmp eq i32 %28, 0, !dbg !389
  br i1 %cmp163, label %for.inc, label %if.then164, !dbg !389

if.then164:                                       ; preds = %if.end159
  tail call void @push_slidE(i32 %add160) #5, !dbg !389
  br label %for.inc, !dbg !389

sw.bb167:                                         ; preds = %if.else
  %sub168 = add nsw i32 %8, -12, !dbg !390
  %idxprom169 = sext i32 %sub168 to i64, !dbg !390
  %arrayidx170 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom169, !dbg !390
  %29 = load i32* %arrayidx170, align 4, !dbg !390, !tbaa !145
  %cmp171 = icmp eq i32 %29, 0, !dbg !390
  br i1 %cmp171, label %if.end174, label %if.then172, !dbg !390

if.then172:                                       ; preds = %sw.bb167
  tail call void @push_slidE(i32 %sub168) #5, !dbg !390
  br label %if.end174, !dbg !390

if.end174:                                        ; preds = %sw.bb167, %if.then172
  %sub175 = add nsw i32 %8, -1, !dbg !391
  %idxprom176 = sext i32 %sub175 to i64, !dbg !391
  %arrayidx177 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom176, !dbg !391
  %30 = load i32* %arrayidx177, align 4, !dbg !391, !tbaa !145
  %cmp178 = icmp eq i32 %30, 0, !dbg !391
  br i1 %cmp178, label %if.end181, label %if.then179, !dbg !391

if.then179:                                       ; preds = %if.end174
  tail call void @push_slidE(i32 %sub175) #5, !dbg !391
  br label %if.end181, !dbg !391

if.end181:                                        ; preds = %if.end174, %if.then179
  %add182 = add nsw i32 %8, 1, !dbg !392
  %idxprom183 = sext i32 %add182 to i64, !dbg !392
  %arrayidx184 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom183, !dbg !392
  %31 = load i32* %arrayidx184, align 4, !dbg !392, !tbaa !145
  %cmp185 = icmp eq i32 %31, 0, !dbg !392
  br i1 %cmp185, label %if.end188, label %if.then186, !dbg !392

if.then186:                                       ; preds = %if.end181
  tail call void @push_slidE(i32 %add182) #5, !dbg !392
  br label %if.end188, !dbg !392

if.end188:                                        ; preds = %if.end181, %if.then186
  %add189 = add nsw i32 %8, 12, !dbg !393
  %idxprom190 = sext i32 %add189 to i64, !dbg !393
  %arrayidx191 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom190, !dbg !393
  %32 = load i32* %arrayidx191, align 4, !dbg !393, !tbaa !145
  %cmp192 = icmp eq i32 %32, 0, !dbg !393
  br i1 %cmp192, label %for.inc, label %if.then193, !dbg !393

if.then193:                                       ; preds = %if.end188
  tail call void @push_slidE(i32 %add189) #5, !dbg !393
  br label %for.inc, !dbg !393

sw.bb196:                                         ; preds = %if.else
  %sub197 = add nsw i32 %8, -13, !dbg !394
  %idxprom198 = sext i32 %sub197 to i64, !dbg !394
  %arrayidx199 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom198, !dbg !394
  %33 = load i32* %arrayidx199, align 4, !dbg !394, !tbaa !145
  %cmp200 = icmp eq i32 %33, 0, !dbg !394
  br i1 %cmp200, label %if.end203, label %if.then201, !dbg !394

if.then201:                                       ; preds = %sw.bb196
  tail call void @push_slidE(i32 %sub197) #5, !dbg !394
  br label %if.end203, !dbg !394

if.end203:                                        ; preds = %sw.bb196, %if.then201
  %sub204 = add nsw i32 %8, -12, !dbg !395
  %idxprom205 = sext i32 %sub204 to i64, !dbg !395
  %arrayidx206 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom205, !dbg !395
  %34 = load i32* %arrayidx206, align 4, !dbg !395, !tbaa !145
  %cmp207 = icmp eq i32 %34, 0, !dbg !395
  br i1 %cmp207, label %if.end210, label %if.then208, !dbg !395

if.then208:                                       ; preds = %if.end203
  tail call void @push_slidE(i32 %sub204) #5, !dbg !395
  br label %if.end210, !dbg !395

if.end210:                                        ; preds = %if.end203, %if.then208
  %sub211 = add nsw i32 %8, -11, !dbg !396
  %idxprom212 = sext i32 %sub211 to i64, !dbg !396
  %arrayidx213 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom212, !dbg !396
  %35 = load i32* %arrayidx213, align 4, !dbg !396, !tbaa !145
  %cmp214 = icmp eq i32 %35, 0, !dbg !396
  br i1 %cmp214, label %if.end217, label %if.then215, !dbg !396

if.then215:                                       ; preds = %if.end210
  tail call void @push_slidE(i32 %sub211) #5, !dbg !396
  br label %if.end217, !dbg !396

if.end217:                                        ; preds = %if.end210, %if.then215
  %sub218 = add nsw i32 %8, -1, !dbg !397
  %idxprom219 = sext i32 %sub218 to i64, !dbg !397
  %arrayidx220 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom219, !dbg !397
  %36 = load i32* %arrayidx220, align 4, !dbg !397, !tbaa !145
  %cmp221 = icmp eq i32 %36, 0, !dbg !397
  br i1 %cmp221, label %if.end224, label %if.then222, !dbg !397

if.then222:                                       ; preds = %if.end217
  tail call void @push_slidE(i32 %sub218) #5, !dbg !397
  br label %if.end224, !dbg !397

if.end224:                                        ; preds = %if.end217, %if.then222
  %add225 = add nsw i32 %8, 1, !dbg !398
  %idxprom226 = sext i32 %add225 to i64, !dbg !398
  %arrayidx227 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom226, !dbg !398
  %37 = load i32* %arrayidx227, align 4, !dbg !398, !tbaa !145
  %cmp228 = icmp eq i32 %37, 0, !dbg !398
  br i1 %cmp228, label %if.end231, label %if.then229, !dbg !398

if.then229:                                       ; preds = %if.end224
  tail call void @push_slidE(i32 %add225) #5, !dbg !398
  br label %if.end231, !dbg !398

if.end231:                                        ; preds = %if.end224, %if.then229
  %add232 = add nsw i32 %8, 11, !dbg !399
  %idxprom233 = sext i32 %add232 to i64, !dbg !399
  %arrayidx234 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom233, !dbg !399
  %38 = load i32* %arrayidx234, align 4, !dbg !399, !tbaa !145
  %cmp235 = icmp eq i32 %38, 0, !dbg !399
  br i1 %cmp235, label %if.end238, label %if.then236, !dbg !399

if.then236:                                       ; preds = %if.end231
  tail call void @push_slidE(i32 %add232) #5, !dbg !399
  br label %if.end238, !dbg !399

if.end238:                                        ; preds = %if.end231, %if.then236
  %add239 = add nsw i32 %8, 12, !dbg !400
  %idxprom240 = sext i32 %add239 to i64, !dbg !400
  %arrayidx241 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom240, !dbg !400
  %39 = load i32* %arrayidx241, align 4, !dbg !400, !tbaa !145
  %cmp242 = icmp eq i32 %39, 0, !dbg !400
  br i1 %cmp242, label %if.end245, label %if.then243, !dbg !400

if.then243:                                       ; preds = %if.end238
  tail call void @push_slidE(i32 %add239) #5, !dbg !400
  br label %if.end245, !dbg !400

if.end245:                                        ; preds = %if.end238, %if.then243
  %add246 = add nsw i32 %8, 13, !dbg !401
  %idxprom247 = sext i32 %add246 to i64, !dbg !401
  %arrayidx248 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom247, !dbg !401
  %40 = load i32* %arrayidx248, align 4, !dbg !401, !tbaa !145
  %cmp249 = icmp eq i32 %40, 0, !dbg !401
  br i1 %cmp249, label %for.inc, label %if.then250, !dbg !401

if.then250:                                       ; preds = %if.end245
  tail call void @push_slidE(i32 %add246) #5, !dbg !401
  br label %for.inc, !dbg !401

sw.bb253:                                         ; preds = %if.else
  %sub254 = add nsw i32 %8, -13, !dbg !402
  tail call void @push_king(i32 %sub254) #5, !dbg !402
  %sub255 = add nsw i32 %8, -12, !dbg !403
  tail call void @push_king(i32 %sub255) #5, !dbg !403
  %sub256 = add nsw i32 %8, -11, !dbg !404
  tail call void @push_king(i32 %sub256) #5, !dbg !404
  %sub257 = add nsw i32 %8, -1, !dbg !405
  tail call void @push_king(i32 %sub257) #5, !dbg !405
  %add258 = add nsw i32 %8, 1, !dbg !406
  tail call void @push_king(i32 %add258) #5, !dbg !406
  %add259 = add nsw i32 %8, 11, !dbg !407
  tail call void @push_king(i32 %add259) #5, !dbg !407
  %add260 = add nsw i32 %8, 12, !dbg !408
  tail call void @push_king(i32 %add260) #5, !dbg !408
  %add261 = add nsw i32 %8, 13, !dbg !409
  tail call void @push_king(i32 %add261) #5, !dbg !409
  %cmp262 = icmp ne i32 %8, 30, !dbg !410
  %41 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !dbg !410, !tbaa !145
  %tobool264 = icmp ne i32 %41, 0, !dbg !410
  %or.cond734 = or i1 %cmp262, %tobool264, !dbg !410
  %42 = load i32* @captures, align 4, !dbg !410, !tbaa !146
  %tobool266 = icmp ne i32 %42, 0, !dbg !410
  %or.cond735 = or i1 %or.cond734, %tobool266, !dbg !410
  br i1 %or.cond735, label %for.inc, label %land.lhs.true267, !dbg !410

land.lhs.true267:                                 ; preds = %sw.bb253
  %43 = load i32* @Variant, align 4, !dbg !410, !tbaa !145
  %cmp268 = icmp ne i32 %43, 3, !dbg !410
  %44 = load i32* @Giveaway, align 4, !dbg !410, !tbaa !145
  %cmp269 = icmp eq i32 %44, 1, !dbg !410
  %or.cond736 = or i1 %cmp268, %cmp269, !dbg !410
  br i1 %or.cond736, label %if.then270, label %for.inc, !dbg !410

if.then270:                                       ; preds = %land.lhs.true267
  %45 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !dbg !411, !tbaa !145
  %tobool271 = icmp eq i32 %45, 0, !dbg !411
  %46 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !dbg !411, !tbaa !145
  %cmp273 = icmp eq i32 %46, 7, !dbg !411
  %or.cond737 = and i1 %tobool271, %cmp273, !dbg !411
  br i1 %or.cond737, label %if.then274, label %if.end281, !dbg !411

if.then274:                                       ; preds = %if.then270
  %47 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !dbg !413, !tbaa !145
  %cmp275 = icmp eq i32 %47, 13, !dbg !413
  %48 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4, !dbg !413, !tbaa !145
  %cmp277 = icmp eq i32 %48, 13, !dbg !413
  %or.cond738 = and i1 %cmp275, %cmp277, !dbg !413
  br i1 %or.cond738, label %if.then278, label %if.end281, !dbg !413

if.then278:                                       ; preds = %if.then274
  tail call void @push_king_castle(i32 32, i32 1) #5, !dbg !414
  br label %if.end281, !dbg !414

if.end281:                                        ; preds = %if.then274, %if.then278, %if.then270
  %49 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !dbg !415, !tbaa !145
  %tobool282 = icmp eq i32 %49, 0, !dbg !415
  %50 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 26), align 4, !dbg !415, !tbaa !145
  %cmp284 = icmp eq i32 %50, 7, !dbg !415
  %or.cond739 = and i1 %tobool282, %cmp284, !dbg !415
  br i1 %or.cond739, label %if.then285, label %for.inc, !dbg !415

if.then285:                                       ; preds = %if.end281
  %51 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 27), align 4, !dbg !416, !tbaa !145
  %cmp286 = icmp eq i32 %51, 13, !dbg !416
  %52 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 28), align 4, !dbg !416, !tbaa !145
  %cmp288 = icmp eq i32 %52, 13, !dbg !416
  %or.cond740 = and i1 %cmp286, %cmp288, !dbg !416
  %53 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 29), align 4, !dbg !416, !tbaa !145
  %cmp290 = icmp eq i32 %53, 13, !dbg !416
  %or.cond741 = and i1 %or.cond740, %cmp290, !dbg !416
  br i1 %or.cond741, label %if.then291, label %for.inc, !dbg !416

if.then291:                                       ; preds = %if.then285
  tail call void @push_king_castle(i32 28, i32 2) #5, !dbg !417
  br label %for.inc, !dbg !417

for.inc:                                          ; preds = %if.then285, %if.end281, %land.lhs.true267, %sw.bb253, %if.end245, %if.end188, %if.end159, %if.end130, %if.else75, %for.body, %if.then78, %if.then73, %if.then135, %if.then164, %if.then193, %if.then250, %if.then291, %if.else
  %a.1 = phi i32 [ %inc, %if.else ], [ %inc, %if.then291 ], [ %inc, %if.then250 ], [ %inc, %if.then193 ], [ %inc, %if.then164 ], [ %inc, %if.then135 ], [ %inc, %if.then73 ], [ %inc, %if.then78 ], [ %a.0954, %for.body ], [ %inc, %if.else75 ], [ %inc, %if.end130 ], [ %inc, %if.end159 ], [ %inc, %if.end188 ], [ %inc, %if.end245 ], [ %inc, %sw.bb253 ], [ %inc, %land.lhs.true267 ], [ %inc, %if.end281 ], [ %inc, %if.then285 ]
  %54 = load i32* @piece_count, align 4, !dbg !342, !tbaa !145
  %cmp2 = icmp sgt i32 %a.1, %54, !dbg !342
  br i1 %cmp2, label %if.end612, label %for.inc.land.rhs_crit_edge, !dbg !342

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !342
  %.pre = load i32* @Variant, align 4, !dbg !342, !tbaa !145
  br label %land.rhs, !dbg !342

land.rhs300:                                      ; preds = %for.cond298.preheader, %for.inc609.land.rhs300_crit_edge
  %55 = phi i32 [ %.pre965, %for.inc609.land.rhs300_crit_edge ], [ %1, %for.cond298.preheader ], !dbg !345
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %for.inc609.land.rhs300_crit_edge ], [ 1, %for.cond298.preheader ]
  %a.2958 = phi i32 [ %a.3, %for.inc609.land.rhs300_crit_edge ], [ 1, %for.cond298.preheader ]
  %cmp301 = icmp eq i32 %55, 3, !dbg !345
  %56 = load i32* @kingcap, align 4, !dbg !345, !tbaa !145
  %tobool303 = icmp ne i32 %56, 0, !dbg !345
  %or.cond742 = or i1 %cmp301, %tobool303, !dbg !345
  br i1 %or.cond742, label %lor.rhs304, label %for.body311, !dbg !345

lor.rhs304:                                       ; preds = %land.rhs300
  br i1 %cmp301, label %land.rhs306, label %if.end612, !dbg !345

land.rhs306:                                      ; preds = %lor.rhs304
  %57 = load i32* @fcaptures, align 4, !dbg !345, !tbaa !146
  %58 = load i32* @captures, align 4, !dbg !345, !tbaa !146
  %cmp307 = icmp eq i32 %57, %58, !dbg !345
  br i1 %cmp307, label %for.body311, label %if.end612

for.body311:                                      ; preds = %land.rhs300, %land.rhs306
  %arrayidx313 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv963, !dbg !418
  %59 = load i32* %arrayidx313, align 4, !dbg !418, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !42), !dbg !418
  %tobool314 = icmp eq i32 %59, 0, !dbg !420
  br i1 %tobool314, label %for.inc609, label %if.else316, !dbg !420

if.else316:                                       ; preds = %for.body311
  %inc317 = add nsw i32 %a.2958, 1, !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32 %inc317}, i64 0, metadata !40), !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !39), !dbg !422
  store i32 %59, i32* @gfrom, align 4, !dbg !423, !tbaa !145
  %idxprom319 = sext i32 %59 to i64, !dbg !424
  %arrayidx320 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom319, !dbg !424
  %60 = load i32* %arrayidx320, align 4, !dbg !424, !tbaa !145
  switch i32 %60, label %for.inc609 [
    i32 2, label %sw.bb321
    i32 4, label %sw.bb391
    i32 12, label %sw.bb448
    i32 8, label %sw.bb477
    i32 10, label %sw.bb506
    i32 6, label %sw.bb563
  ], !dbg !424

sw.bb321:                                         ; preds = %if.else316
  %sub322 = add nsw i32 %59, -12, !dbg !425
  %idxprom323 = sext i32 %sub322 to i64, !dbg !425
  %arrayidx324 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom323, !dbg !425
  %61 = load i32* %arrayidx324, align 4, !dbg !425, !tbaa !145
  %cmp325 = icmp eq i32 %61, 13, !dbg !425
  br i1 %cmp325, label %if.then326, label %if.end353, !dbg !425

if.then326:                                       ; preds = %sw.bb321
  %arrayidx328 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom319, !dbg !427
  %62 = load i32* %arrayidx328, align 4, !dbg !427, !tbaa !145
  %cmp329 = icmp eq i32 %62, 2, !dbg !427
  br i1 %cmp329, label %switch.early.test947, label %if.else336

switch.early.test947:                             ; preds = %if.then326
  %.off950 = add i32 %55, -3, !dbg !427
  %switch951 = icmp ult i32 %.off950, 2, !dbg !427
  br i1 %switch951, label %if.else336, label %if.then334, !dbg !427

if.then334:                                       ; preds = %switch.early.test947
  tail call void @push_pawn(i32 %sub322, i32 0) #5, !dbg !429
  br label %if.end353, !dbg !431

if.else336:                                       ; preds = %switch.early.test947, %if.then326
  %63 = load i32* @captures, align 4, !dbg !432, !tbaa !146
  %tobool337 = icmp eq i32 %63, 0, !dbg !432
  br i1 %tobool337, label %if.then338, label %if.end353, !dbg !432

if.then338:                                       ; preds = %if.else336
  tail call void @push_pawn(i32 %sub322, i32 0) #5, !dbg !433
  %cmp342 = icmp eq i32 %62, 7, !dbg !435
  br i1 %cmp342, label %land.lhs.true343, label %if.end353, !dbg !435

land.lhs.true343:                                 ; preds = %if.then338
  %sub344 = add nsw i32 %59, -24, !dbg !435
  %idxprom345 = sext i32 %sub344 to i64, !dbg !435
  %arrayidx346 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom345, !dbg !435
  %64 = load i32* %arrayidx346, align 4, !dbg !435, !tbaa !145
  %cmp347 = icmp eq i32 %64, 13, !dbg !435
  br i1 %cmp347, label %if.then348, label %if.end353, !dbg !435

if.then348:                                       ; preds = %land.lhs.true343
  tail call void @llvm.dbg.value(metadata !{i32 %sub344}, i64 0, metadata !436) #6, !dbg !438
  tail call void @add_move(i32 %sub344, i32 0) #4, !dbg !439
  br label %if.end353, !dbg !437

if.end353:                                        ; preds = %if.else336, %if.then334, %if.then338, %land.lhs.true343, %if.then348, %sw.bb321
  %sub354 = add nsw i32 %59, -13, !dbg !440
  %idxprom355 = sext i32 %sub354 to i64, !dbg !440
  %arrayidx356 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom355, !dbg !440
  %65 = load i32* %arrayidx356, align 4, !dbg !440, !tbaa !145
  %and357 = and i32 %65, 1, !dbg !440
  %cmp358 = icmp eq i32 %and357, 0, !dbg !440
  %cmp363 = icmp eq i32 %65, 13, !dbg !440
  %or.cond948 = or i1 %cmp358, %cmp363, !dbg !440
  br i1 %or.cond948, label %if.end366, label %if.then364, !dbg !440

if.then364:                                       ; preds = %if.end353
  tail call void @push_pawn(i32 %sub354, i32 0) #5, !dbg !441
  br label %if.end366, !dbg !441

if.end366:                                        ; preds = %if.end353, %if.then364
  %sub367 = add nsw i32 %59, -11, !dbg !442
  %idxprom368 = sext i32 %sub367 to i64, !dbg !442
  %arrayidx369 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom368, !dbg !442
  %66 = load i32* %arrayidx369, align 4, !dbg !442, !tbaa !145
  %and370 = and i32 %66, 1, !dbg !442
  %cmp371 = icmp eq i32 %and370, 0, !dbg !442
  %cmp376 = icmp eq i32 %66, 13, !dbg !442
  %or.cond949 = or i1 %cmp371, %cmp376, !dbg !442
  br i1 %or.cond949, label %if.end379, label %if.then377, !dbg !442

if.then377:                                       ; preds = %if.end366
  tail call void @push_pawn(i32 %sub367, i32 0) #5, !dbg !443
  br label %if.end379, !dbg !443

if.end379:                                        ; preds = %if.end366, %if.then377
  %67 = load i32* @ep_square, align 4, !dbg !444, !tbaa !145
  %cmp381 = icmp eq i32 %67, %sub354, !dbg !444
  br i1 %cmp381, label %if.then382, label %if.else384, !dbg !444

if.then382:                                       ; preds = %if.end379
  tail call void @push_pawn(i32 %sub354, i32 1) #5, !dbg !445
  br label %for.inc609, !dbg !445

if.else384:                                       ; preds = %if.end379
  %cmp386 = icmp eq i32 %67, %sub367, !dbg !446
  br i1 %cmp386, label %if.then387, label %for.inc609, !dbg !446

if.then387:                                       ; preds = %if.else384
  tail call void @push_pawn(i32 %sub367, i32 1) #5, !dbg !447
  br label %for.inc609, !dbg !447

sw.bb391:                                         ; preds = %if.else316
  %sub392 = add nsw i32 %59, -25, !dbg !448
  %idxprom393 = sext i32 %sub392 to i64, !dbg !448
  %arrayidx394 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom393, !dbg !448
  %68 = load i32* %arrayidx394, align 4, !dbg !448, !tbaa !145
  %cmp395 = icmp eq i32 %68, 0, !dbg !448
  br i1 %cmp395, label %if.end398, label %if.then396, !dbg !448

if.then396:                                       ; preds = %sw.bb391
  tail call void @push_knighT(i32 %sub392) #5, !dbg !448
  br label %if.end398, !dbg !448

if.end398:                                        ; preds = %sw.bb391, %if.then396
  %sub399 = add nsw i32 %59, -23, !dbg !449
  %idxprom400 = sext i32 %sub399 to i64, !dbg !449
  %arrayidx401 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom400, !dbg !449
  %69 = load i32* %arrayidx401, align 4, !dbg !449, !tbaa !145
  %cmp402 = icmp eq i32 %69, 0, !dbg !449
  br i1 %cmp402, label %if.end405, label %if.then403, !dbg !449

if.then403:                                       ; preds = %if.end398
  tail call void @push_knighT(i32 %sub399) #5, !dbg !449
  br label %if.end405, !dbg !449

if.end405:                                        ; preds = %if.end398, %if.then403
  %sub406 = add nsw i32 %59, -14, !dbg !450
  %idxprom407 = sext i32 %sub406 to i64, !dbg !450
  %arrayidx408 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom407, !dbg !450
  %70 = load i32* %arrayidx408, align 4, !dbg !450, !tbaa !145
  %cmp409 = icmp eq i32 %70, 0, !dbg !450
  br i1 %cmp409, label %if.end412, label %if.then410, !dbg !450

if.then410:                                       ; preds = %if.end405
  tail call void @push_knighT(i32 %sub406) #5, !dbg !450
  br label %if.end412, !dbg !450

if.end412:                                        ; preds = %if.end405, %if.then410
  %sub413 = add nsw i32 %59, -10, !dbg !451
  %idxprom414 = sext i32 %sub413 to i64, !dbg !451
  %arrayidx415 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom414, !dbg !451
  %71 = load i32* %arrayidx415, align 4, !dbg !451, !tbaa !145
  %cmp416 = icmp eq i32 %71, 0, !dbg !451
  br i1 %cmp416, label %if.end419, label %if.then417, !dbg !451

if.then417:                                       ; preds = %if.end412
  tail call void @push_knighT(i32 %sub413) #5, !dbg !451
  br label %if.end419, !dbg !451

if.end419:                                        ; preds = %if.end412, %if.then417
  %add420 = add nsw i32 %59, 10, !dbg !452
  %idxprom421 = sext i32 %add420 to i64, !dbg !452
  %arrayidx422 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom421, !dbg !452
  %72 = load i32* %arrayidx422, align 4, !dbg !452, !tbaa !145
  %cmp423 = icmp eq i32 %72, 0, !dbg !452
  br i1 %cmp423, label %if.end426, label %if.then424, !dbg !452

if.then424:                                       ; preds = %if.end419
  tail call void @push_knighT(i32 %add420) #5, !dbg !452
  br label %if.end426, !dbg !452

if.end426:                                        ; preds = %if.end419, %if.then424
  %add427 = add nsw i32 %59, 14, !dbg !453
  %idxprom428 = sext i32 %add427 to i64, !dbg !453
  %arrayidx429 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom428, !dbg !453
  %73 = load i32* %arrayidx429, align 4, !dbg !453, !tbaa !145
  %cmp430 = icmp eq i32 %73, 0, !dbg !453
  br i1 %cmp430, label %if.end433, label %if.then431, !dbg !453

if.then431:                                       ; preds = %if.end426
  tail call void @push_knighT(i32 %add427) #5, !dbg !453
  br label %if.end433, !dbg !453

if.end433:                                        ; preds = %if.end426, %if.then431
  %add434 = add nsw i32 %59, 23, !dbg !454
  %idxprom435 = sext i32 %add434 to i64, !dbg !454
  %arrayidx436 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom435, !dbg !454
  %74 = load i32* %arrayidx436, align 4, !dbg !454, !tbaa !145
  %cmp437 = icmp eq i32 %74, 0, !dbg !454
  br i1 %cmp437, label %if.end440, label %if.then438, !dbg !454

if.then438:                                       ; preds = %if.end433
  tail call void @push_knighT(i32 %add434) #5, !dbg !454
  br label %if.end440, !dbg !454

if.end440:                                        ; preds = %if.end433, %if.then438
  %add441 = add nsw i32 %59, 25, !dbg !455
  %idxprom442 = sext i32 %add441 to i64, !dbg !455
  %arrayidx443 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom442, !dbg !455
  %75 = load i32* %arrayidx443, align 4, !dbg !455, !tbaa !145
  %cmp444 = icmp eq i32 %75, 0, !dbg !455
  br i1 %cmp444, label %for.inc609, label %if.then445, !dbg !455

if.then445:                                       ; preds = %if.end440
  tail call void @push_knighT(i32 %add441) #5, !dbg !455
  br label %for.inc609, !dbg !455

sw.bb448:                                         ; preds = %if.else316
  %sub449 = add nsw i32 %59, -13, !dbg !456
  %idxprom450 = sext i32 %sub449 to i64, !dbg !456
  %arrayidx451 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom450, !dbg !456
  %76 = load i32* %arrayidx451, align 4, !dbg !456, !tbaa !145
  %cmp452 = icmp eq i32 %76, 0, !dbg !456
  br i1 %cmp452, label %if.end455, label %if.then453, !dbg !456

if.then453:                                       ; preds = %sw.bb448
  tail call void @push_slidE(i32 %sub449) #5, !dbg !456
  br label %if.end455, !dbg !456

if.end455:                                        ; preds = %sw.bb448, %if.then453
  %sub456 = add nsw i32 %59, -11, !dbg !457
  %idxprom457 = sext i32 %sub456 to i64, !dbg !457
  %arrayidx458 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom457, !dbg !457
  %77 = load i32* %arrayidx458, align 4, !dbg !457, !tbaa !145
  %cmp459 = icmp eq i32 %77, 0, !dbg !457
  br i1 %cmp459, label %if.end462, label %if.then460, !dbg !457

if.then460:                                       ; preds = %if.end455
  tail call void @push_slidE(i32 %sub456) #5, !dbg !457
  br label %if.end462, !dbg !457

if.end462:                                        ; preds = %if.end455, %if.then460
  %add463 = add nsw i32 %59, 11, !dbg !458
  %idxprom464 = sext i32 %add463 to i64, !dbg !458
  %arrayidx465 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom464, !dbg !458
  %78 = load i32* %arrayidx465, align 4, !dbg !458, !tbaa !145
  %cmp466 = icmp eq i32 %78, 0, !dbg !458
  br i1 %cmp466, label %if.end469, label %if.then467, !dbg !458

if.then467:                                       ; preds = %if.end462
  tail call void @push_slidE(i32 %add463) #5, !dbg !458
  br label %if.end469, !dbg !458

if.end469:                                        ; preds = %if.end462, %if.then467
  %add470 = add nsw i32 %59, 13, !dbg !459
  %idxprom471 = sext i32 %add470 to i64, !dbg !459
  %arrayidx472 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom471, !dbg !459
  %79 = load i32* %arrayidx472, align 4, !dbg !459, !tbaa !145
  %cmp473 = icmp eq i32 %79, 0, !dbg !459
  br i1 %cmp473, label %for.inc609, label %if.then474, !dbg !459

if.then474:                                       ; preds = %if.end469
  tail call void @push_slidE(i32 %add470) #5, !dbg !459
  br label %for.inc609, !dbg !459

sw.bb477:                                         ; preds = %if.else316
  %sub478 = add nsw i32 %59, -12, !dbg !460
  %idxprom479 = sext i32 %sub478 to i64, !dbg !460
  %arrayidx480 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom479, !dbg !460
  %80 = load i32* %arrayidx480, align 4, !dbg !460, !tbaa !145
  %cmp481 = icmp eq i32 %80, 0, !dbg !460
  br i1 %cmp481, label %if.end484, label %if.then482, !dbg !460

if.then482:                                       ; preds = %sw.bb477
  tail call void @push_slidE(i32 %sub478) #5, !dbg !460
  br label %if.end484, !dbg !460

if.end484:                                        ; preds = %sw.bb477, %if.then482
  %sub485 = add nsw i32 %59, -1, !dbg !461
  %idxprom486 = sext i32 %sub485 to i64, !dbg !461
  %arrayidx487 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom486, !dbg !461
  %81 = load i32* %arrayidx487, align 4, !dbg !461, !tbaa !145
  %cmp488 = icmp eq i32 %81, 0, !dbg !461
  br i1 %cmp488, label %if.end491, label %if.then489, !dbg !461

if.then489:                                       ; preds = %if.end484
  tail call void @push_slidE(i32 %sub485) #5, !dbg !461
  br label %if.end491, !dbg !461

if.end491:                                        ; preds = %if.end484, %if.then489
  %add492 = add nsw i32 %59, 1, !dbg !462
  %idxprom493 = sext i32 %add492 to i64, !dbg !462
  %arrayidx494 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom493, !dbg !462
  %82 = load i32* %arrayidx494, align 4, !dbg !462, !tbaa !145
  %cmp495 = icmp eq i32 %82, 0, !dbg !462
  br i1 %cmp495, label %if.end498, label %if.then496, !dbg !462

if.then496:                                       ; preds = %if.end491
  tail call void @push_slidE(i32 %add492) #5, !dbg !462
  br label %if.end498, !dbg !462

if.end498:                                        ; preds = %if.end491, %if.then496
  %add499 = add nsw i32 %59, 12, !dbg !463
  %idxprom500 = sext i32 %add499 to i64, !dbg !463
  %arrayidx501 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom500, !dbg !463
  %83 = load i32* %arrayidx501, align 4, !dbg !463, !tbaa !145
  %cmp502 = icmp eq i32 %83, 0, !dbg !463
  br i1 %cmp502, label %for.inc609, label %if.then503, !dbg !463

if.then503:                                       ; preds = %if.end498
  tail call void @push_slidE(i32 %add499) #5, !dbg !463
  br label %for.inc609, !dbg !463

sw.bb506:                                         ; preds = %if.else316
  %sub507 = add nsw i32 %59, -13, !dbg !464
  %idxprom508 = sext i32 %sub507 to i64, !dbg !464
  %arrayidx509 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom508, !dbg !464
  %84 = load i32* %arrayidx509, align 4, !dbg !464, !tbaa !145
  %cmp510 = icmp eq i32 %84, 0, !dbg !464
  br i1 %cmp510, label %if.end513, label %if.then511, !dbg !464

if.then511:                                       ; preds = %sw.bb506
  tail call void @push_slidE(i32 %sub507) #5, !dbg !464
  br label %if.end513, !dbg !464

if.end513:                                        ; preds = %sw.bb506, %if.then511
  %sub514 = add nsw i32 %59, -12, !dbg !465
  %idxprom515 = sext i32 %sub514 to i64, !dbg !465
  %arrayidx516 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom515, !dbg !465
  %85 = load i32* %arrayidx516, align 4, !dbg !465, !tbaa !145
  %cmp517 = icmp eq i32 %85, 0, !dbg !465
  br i1 %cmp517, label %if.end520, label %if.then518, !dbg !465

if.then518:                                       ; preds = %if.end513
  tail call void @push_slidE(i32 %sub514) #5, !dbg !465
  br label %if.end520, !dbg !465

if.end520:                                        ; preds = %if.end513, %if.then518
  %sub521 = add nsw i32 %59, -11, !dbg !466
  %idxprom522 = sext i32 %sub521 to i64, !dbg !466
  %arrayidx523 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom522, !dbg !466
  %86 = load i32* %arrayidx523, align 4, !dbg !466, !tbaa !145
  %cmp524 = icmp eq i32 %86, 0, !dbg !466
  br i1 %cmp524, label %if.end527, label %if.then525, !dbg !466

if.then525:                                       ; preds = %if.end520
  tail call void @push_slidE(i32 %sub521) #5, !dbg !466
  br label %if.end527, !dbg !466

if.end527:                                        ; preds = %if.end520, %if.then525
  %sub528 = add nsw i32 %59, -1, !dbg !467
  %idxprom529 = sext i32 %sub528 to i64, !dbg !467
  %arrayidx530 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom529, !dbg !467
  %87 = load i32* %arrayidx530, align 4, !dbg !467, !tbaa !145
  %cmp531 = icmp eq i32 %87, 0, !dbg !467
  br i1 %cmp531, label %if.end534, label %if.then532, !dbg !467

if.then532:                                       ; preds = %if.end527
  tail call void @push_slidE(i32 %sub528) #5, !dbg !467
  br label %if.end534, !dbg !467

if.end534:                                        ; preds = %if.end527, %if.then532
  %add535 = add nsw i32 %59, 1, !dbg !468
  %idxprom536 = sext i32 %add535 to i64, !dbg !468
  %arrayidx537 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom536, !dbg !468
  %88 = load i32* %arrayidx537, align 4, !dbg !468, !tbaa !145
  %cmp538 = icmp eq i32 %88, 0, !dbg !468
  br i1 %cmp538, label %if.end541, label %if.then539, !dbg !468

if.then539:                                       ; preds = %if.end534
  tail call void @push_slidE(i32 %add535) #5, !dbg !468
  br label %if.end541, !dbg !468

if.end541:                                        ; preds = %if.end534, %if.then539
  %add542 = add nsw i32 %59, 11, !dbg !469
  %idxprom543 = sext i32 %add542 to i64, !dbg !469
  %arrayidx544 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom543, !dbg !469
  %89 = load i32* %arrayidx544, align 4, !dbg !469, !tbaa !145
  %cmp545 = icmp eq i32 %89, 0, !dbg !469
  br i1 %cmp545, label %if.end548, label %if.then546, !dbg !469

if.then546:                                       ; preds = %if.end541
  tail call void @push_slidE(i32 %add542) #5, !dbg !469
  br label %if.end548, !dbg !469

if.end548:                                        ; preds = %if.end541, %if.then546
  %add549 = add nsw i32 %59, 12, !dbg !470
  %idxprom550 = sext i32 %add549 to i64, !dbg !470
  %arrayidx551 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom550, !dbg !470
  %90 = load i32* %arrayidx551, align 4, !dbg !470, !tbaa !145
  %cmp552 = icmp eq i32 %90, 0, !dbg !470
  br i1 %cmp552, label %if.end555, label %if.then553, !dbg !470

if.then553:                                       ; preds = %if.end548
  tail call void @push_slidE(i32 %add549) #5, !dbg !470
  br label %if.end555, !dbg !470

if.end555:                                        ; preds = %if.end548, %if.then553
  %add556 = add nsw i32 %59, 13, !dbg !471
  %idxprom557 = sext i32 %add556 to i64, !dbg !471
  %arrayidx558 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom557, !dbg !471
  %91 = load i32* %arrayidx558, align 4, !dbg !471, !tbaa !145
  %cmp559 = icmp eq i32 %91, 0, !dbg !471
  br i1 %cmp559, label %for.inc609, label %if.then560, !dbg !471

if.then560:                                       ; preds = %if.end555
  tail call void @push_slidE(i32 %add556) #5, !dbg !471
  br label %for.inc609, !dbg !471

sw.bb563:                                         ; preds = %if.else316
  %sub564 = add nsw i32 %59, -13, !dbg !472
  tail call void @push_king(i32 %sub564) #5, !dbg !472
  %sub565 = add nsw i32 %59, -12, !dbg !473
  tail call void @push_king(i32 %sub565) #5, !dbg !473
  %sub566 = add nsw i32 %59, -11, !dbg !474
  tail call void @push_king(i32 %sub566) #5, !dbg !474
  %sub567 = add nsw i32 %59, -1, !dbg !475
  tail call void @push_king(i32 %sub567) #5, !dbg !475
  %add568 = add nsw i32 %59, 1, !dbg !476
  tail call void @push_king(i32 %add568) #5, !dbg !476
  %add569 = add nsw i32 %59, 11, !dbg !477
  tail call void @push_king(i32 %add569) #5, !dbg !477
  %add570 = add nsw i32 %59, 12, !dbg !478
  tail call void @push_king(i32 %add570) #5, !dbg !478
  %add571 = add nsw i32 %59, 13, !dbg !479
  tail call void @push_king(i32 %add571) #5, !dbg !479
  %cmp572 = icmp ne i32 %59, 114, !dbg !480
  %92 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !dbg !480, !tbaa !145
  %tobool574 = icmp ne i32 %92, 0, !dbg !480
  %or.cond746 = or i1 %cmp572, %tobool574, !dbg !480
  %93 = load i32* @captures, align 4, !dbg !480, !tbaa !146
  %tobool576 = icmp ne i32 %93, 0, !dbg !480
  %or.cond747 = or i1 %or.cond746, %tobool576, !dbg !480
  br i1 %or.cond747, label %for.inc609, label %land.lhs.true577, !dbg !480

land.lhs.true577:                                 ; preds = %sw.bb563
  %94 = load i32* @Variant, align 4, !dbg !480, !tbaa !145
  %cmp578 = icmp ne i32 %94, 3, !dbg !480
  %95 = load i32* @Giveaway, align 4, !dbg !480, !tbaa !145
  %cmp580 = icmp eq i32 %95, 1, !dbg !480
  %or.cond748 = or i1 %cmp578, %cmp580, !dbg !480
  br i1 %or.cond748, label %if.then581, label %for.inc609, !dbg !480

if.then581:                                       ; preds = %land.lhs.true577
  %96 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !dbg !481, !tbaa !145
  %tobool582 = icmp eq i32 %96, 0, !dbg !481
  %97 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !dbg !481, !tbaa !145
  %cmp584 = icmp eq i32 %97, 8, !dbg !481
  %or.cond749 = and i1 %tobool582, %cmp584, !dbg !481
  br i1 %or.cond749, label %if.then585, label %if.end592, !dbg !481

if.then585:                                       ; preds = %if.then581
  %98 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !dbg !483, !tbaa !145
  %cmp586 = icmp eq i32 %98, 13, !dbg !483
  %99 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4, !dbg !483, !tbaa !145
  %cmp588 = icmp eq i32 %99, 13, !dbg !483
  %or.cond750 = and i1 %cmp586, %cmp588, !dbg !483
  br i1 %or.cond750, label %if.then589, label %if.end592, !dbg !483

if.then589:                                       ; preds = %if.then585
  tail call void @push_king_castle(i32 116, i32 3) #5, !dbg !484
  br label %if.end592, !dbg !484

if.end592:                                        ; preds = %if.then585, %if.then589, %if.then581
  %100 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !dbg !485, !tbaa !145
  %tobool593 = icmp eq i32 %100, 0, !dbg !485
  %101 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 110), align 4, !dbg !485, !tbaa !145
  %cmp595 = icmp eq i32 %101, 8, !dbg !485
  %or.cond751 = and i1 %tobool593, %cmp595, !dbg !485
  br i1 %or.cond751, label %if.then596, label %for.inc609, !dbg !485

if.then596:                                       ; preds = %if.end592
  %102 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 111), align 4, !dbg !486, !tbaa !145
  %cmp597 = icmp eq i32 %102, 13, !dbg !486
  %103 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 112), align 4, !dbg !486, !tbaa !145
  %cmp599 = icmp eq i32 %103, 13, !dbg !486
  %or.cond752 = and i1 %cmp597, %cmp599, !dbg !486
  %104 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 113), align 4, !dbg !486, !tbaa !145
  %cmp601 = icmp eq i32 %104, 13, !dbg !486
  %or.cond753 = and i1 %or.cond752, %cmp601, !dbg !486
  br i1 %or.cond753, label %if.then602, label %for.inc609, !dbg !486

if.then602:                                       ; preds = %if.then596
  tail call void @push_king_castle(i32 112, i32 4) #5, !dbg !487
  br label %for.inc609, !dbg !487

for.inc609:                                       ; preds = %if.then596, %if.end592, %land.lhs.true577, %sw.bb563, %if.end555, %if.end498, %if.end469, %if.end440, %if.else384, %for.body311, %if.then387, %if.then382, %if.then445, %if.then474, %if.then503, %if.then560, %if.then602, %if.else316
  %a.3 = phi i32 [ %inc317, %if.else316 ], [ %inc317, %if.then602 ], [ %inc317, %if.then560 ], [ %inc317, %if.then503 ], [ %inc317, %if.then474 ], [ %inc317, %if.then445 ], [ %inc317, %if.then382 ], [ %inc317, %if.then387 ], [ %a.2958, %for.body311 ], [ %inc317, %if.else384 ], [ %inc317, %if.end440 ], [ %inc317, %if.end469 ], [ %inc317, %if.end498 ], [ %inc317, %if.end555 ], [ %inc317, %sw.bb563 ], [ %inc317, %land.lhs.true577 ], [ %inc317, %if.end592 ], [ %inc317, %if.then596 ]
  %105 = load i32* @piece_count, align 4, !dbg !345, !tbaa !145
  %cmp299 = icmp sgt i32 %a.3, %105, !dbg !345
  br i1 %cmp299, label %if.end612, label %for.inc609.land.rhs300_crit_edge, !dbg !345

for.inc609.land.rhs300_crit_edge:                 ; preds = %for.inc609
  %indvars.iv.next964 = add i64 %indvars.iv963, 1, !dbg !345
  %.pre965 = load i32* @Variant, align 4, !dbg !345, !tbaa !145
  br label %land.rhs300, !dbg !345

if.end612:                                        ; preds = %for.cond298.preheader, %land.rhs306, %lor.rhs304, %for.inc609, %for.cond.preheader, %land.rhs6, %lor.rhs, %for.inc
  %106 = load i32* @Variant, align 4, !dbg !488, !tbaa !145
  %or.cond754.not = icmp ugt i32 %106, 1, !dbg !488
  %107 = load i32* @captures, align 4, !dbg !488, !tbaa !146
  %tobool617 = icmp ne i32 %107, 0, !dbg !488
  %or.cond755 = or i1 %or.cond754.not, %tobool617, !dbg !488
  %108 = load i32* @kingcap, align 4, !dbg !488, !tbaa !145
  %tobool619 = icmp ne i32 %108, 0, !dbg !488
  %or.cond756 = or i1 %or.cond755, %tobool619, !dbg !488
  br i1 %or.cond756, label %if.end720, label %if.then620, !dbg !488

if.then620:                                       ; preds = %if.end612
  %109 = load i32* @white_to_move, align 4, !dbg !489, !tbaa !145
  %tobool621 = icmp eq i32 %109, 0, !dbg !489
  br i1 %tobool621, label %land.lhs.true671, label %land.lhs.true622, !dbg !489

land.lhs.true622:                                 ; preds = %if.then620
  %110 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !489, !tbaa !145
  %111 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !489, !tbaa !145
  %112 = or i32 %111, %110, !dbg !489
  %113 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !489, !tbaa !145
  %114 = or i32 %112, %113, !dbg !489
  %115 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !489, !tbaa !145
  %116 = or i32 %114, %115, !dbg !489
  %117 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !489, !tbaa !145
  %118 = or i32 %116, %117, !dbg !489
  %119 = icmp eq i32 %118, 0, !dbg !489
  br i1 %119, label %if.end720, label %for.body635, !dbg !489

for.body635:                                      ; preds = %for.inc666, %land.lhs.true622
  %from.0960 = phi i32 [ 26, %land.lhs.true622 ], [ %inc667, %for.inc666 ]
  store i32 %from.0960, i32* @gfrom, align 4, !dbg !491, !tbaa !145
  %idxprom636 = sext i32 %from.0960 to i64, !dbg !495
  %arrayidx637 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom636, !dbg !495
  %120 = load i32* %arrayidx637, align 4, !dbg !495, !tbaa !145
  switch i32 %120, label %for.inc666 [
    i32 0, label %sw.bb638
    i32 13, label %sw.bb640
  ], !dbg !495

sw.bb638:                                         ; preds = %for.body635
  %add639 = add nsw i32 %from.0960, 3, !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %add639}, i64 0, metadata !39), !dbg !496
  br label %for.inc666, !dbg !498

sw.bb640:                                         ; preds = %for.body635
  %121 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !dbg !499, !tbaa !145
  %tobool641 = icmp eq i32 %121, 0, !dbg !499
  br i1 %tobool641, label %if.end652, label %if.then642, !dbg !499

if.then642:                                       ; preds = %sw.bb640
  %arrayidx644 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom636, !dbg !500
  %122 = load i32* %arrayidx644, align 4, !dbg !500, !tbaa !145
  switch i32 %122, label %if.then650 [
    i32 8, label %if.end652
    i32 1, label %if.end652
  ], !dbg !500

if.then650:                                       ; preds = %if.then642
  tail call void @try_drop(i32 1) #5, !dbg !502
  br label %if.end652, !dbg !504

if.end652:                                        ; preds = %if.then642, %if.then642, %sw.bb640, %if.then650
  %123 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !dbg !505, !tbaa !145
  %tobool653 = icmp eq i32 %123, 0, !dbg !505
  br i1 %tobool653, label %if.end655, label %if.then654, !dbg !505

if.then654:                                       ; preds = %if.end652
  tail call void @try_drop(i32 3) #5, !dbg !506
  br label %if.end655, !dbg !508

if.end655:                                        ; preds = %if.end652, %if.then654
  %124 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !dbg !509, !tbaa !145
  %tobool656 = icmp eq i32 %124, 0, !dbg !509
  br i1 %tobool656, label %if.end658, label %if.then657, !dbg !509

if.then657:                                       ; preds = %if.end655
  tail call void @try_drop(i32 11) #5, !dbg !510
  br label %if.end658, !dbg !512

if.end658:                                        ; preds = %if.end655, %if.then657
  %125 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !dbg !513, !tbaa !145
  %tobool659 = icmp eq i32 %125, 0, !dbg !513
  br i1 %tobool659, label %if.end661, label %if.then660, !dbg !513

if.then660:                                       ; preds = %if.end658
  tail call void @try_drop(i32 7) #5, !dbg !514
  br label %if.end661, !dbg !516

if.end661:                                        ; preds = %if.end658, %if.then660
  %126 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !dbg !517, !tbaa !145
  %tobool662 = icmp eq i32 %126, 0, !dbg !517
  br i1 %tobool662, label %for.inc666, label %if.then663, !dbg !517

if.then663:                                       ; preds = %if.end661
  tail call void @try_drop(i32 9) #5, !dbg !518
  br label %for.inc666, !dbg !520

for.inc666:                                       ; preds = %if.end661, %for.body635, %if.then663, %sw.bb638
  %from.1 = phi i32 [ %from.0960, %for.body635 ], [ %from.0960, %if.then663 ], [ %from.0960, %if.end661 ], [ %add639, %sw.bb638 ]
  %inc667 = add nsw i32 %from.1, 1, !dbg !521
  tail call void @llvm.dbg.value(metadata !{i32 %inc667}, i64 0, metadata !39), !dbg !521
  %cmp634 = icmp slt i32 %inc667, 118, !dbg !521
  br i1 %cmp634, label %for.body635, label %if.end720, !dbg !521

land.lhs.true671:                                 ; preds = %if.then620
  %127 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 4, !dbg !522, !tbaa !145
  %128 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 4, !dbg !522, !tbaa !145
  %129 = or i32 %128, %127, !dbg !522
  %130 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 4, !dbg !522, !tbaa !145
  %131 = or i32 %129, %130, !dbg !522
  %132 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 4, !dbg !522, !tbaa !145
  %133 = or i32 %131, %132, !dbg !522
  %134 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 4, !dbg !522, !tbaa !145
  %135 = or i32 %133, %134, !dbg !522
  %136 = icmp eq i32 %135, 0, !dbg !522
  br i1 %136, label %if.end720, label %for.body684, !dbg !522

for.body684:                                      ; preds = %for.inc715, %land.lhs.true671
  %from.2962 = phi i32 [ 26, %land.lhs.true671 ], [ %inc716, %for.inc715 ]
  store i32 %from.2962, i32* @gfrom, align 4, !dbg !523, !tbaa !145
  %idxprom685 = sext i32 %from.2962 to i64, !dbg !527
  %arrayidx686 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom685, !dbg !527
  %137 = load i32* %arrayidx686, align 4, !dbg !527, !tbaa !145
  switch i32 %137, label %for.inc715 [
    i32 0, label %sw.bb687
    i32 13, label %sw.bb689
  ], !dbg !527

sw.bb687:                                         ; preds = %for.body684
  %add688 = add nsw i32 %from.2962, 3, !dbg !528
  tail call void @llvm.dbg.value(metadata !{i32 %add688}, i64 0, metadata !39), !dbg !528
  br label %for.inc715, !dbg !530

sw.bb689:                                         ; preds = %for.body684
  %138 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 4, !dbg !531, !tbaa !145
  %tobool690 = icmp eq i32 %138, 0, !dbg !531
  br i1 %tobool690, label %if.end701, label %if.then691, !dbg !531

if.then691:                                       ; preds = %sw.bb689
  %arrayidx693 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom685, !dbg !532
  %139 = load i32* %arrayidx693, align 4, !dbg !532, !tbaa !145
  switch i32 %139, label %if.then699 [
    i32 8, label %if.end701
    i32 1, label %if.end701
  ], !dbg !532

if.then699:                                       ; preds = %if.then691
  tail call void @try_drop(i32 2) #5, !dbg !534
  br label %if.end701, !dbg !536

if.end701:                                        ; preds = %if.then691, %if.then691, %sw.bb689, %if.then699
  %140 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 4, !dbg !537, !tbaa !145
  %tobool702 = icmp eq i32 %140, 0, !dbg !537
  br i1 %tobool702, label %if.end704, label %if.then703, !dbg !537

if.then703:                                       ; preds = %if.end701
  tail call void @try_drop(i32 4) #5, !dbg !538
  br label %if.end704, !dbg !540

if.end704:                                        ; preds = %if.end701, %if.then703
  %141 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 4, !dbg !541, !tbaa !145
  %tobool705 = icmp eq i32 %141, 0, !dbg !541
  br i1 %tobool705, label %if.end707, label %if.then706, !dbg !541

if.then706:                                       ; preds = %if.end704
  tail call void @try_drop(i32 12) #5, !dbg !542
  br label %if.end707, !dbg !544

if.end707:                                        ; preds = %if.end704, %if.then706
  %142 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 4, !dbg !545, !tbaa !145
  %tobool708 = icmp eq i32 %142, 0, !dbg !545
  br i1 %tobool708, label %if.end710, label %if.then709, !dbg !545

if.then709:                                       ; preds = %if.end707
  tail call void @try_drop(i32 8) #5, !dbg !546
  br label %if.end710, !dbg !548

if.end710:                                        ; preds = %if.end707, %if.then709
  %143 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 4, !dbg !549, !tbaa !145
  %tobool711 = icmp eq i32 %143, 0, !dbg !549
  br i1 %tobool711, label %for.inc715, label %if.then712, !dbg !549

if.then712:                                       ; preds = %if.end710
  tail call void @try_drop(i32 10) #5, !dbg !550
  br label %for.inc715, !dbg !552

for.inc715:                                       ; preds = %if.end710, %for.body684, %if.then712, %sw.bb687
  %from.3 = phi i32 [ %from.2962, %for.body684 ], [ %from.2962, %if.then712 ], [ %from.2962, %if.end710 ], [ %add688, %sw.bb687 ]
  %inc716 = add nsw i32 %from.3, 1, !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32 %inc716}, i64 0, metadata !39), !dbg !553
  %cmp683 = icmp slt i32 %inc716, 118, !dbg !553
  br i1 %cmp683, label %for.body684, label %if.end720, !dbg !553

if.end720:                                        ; preds = %for.inc715, %for.inc666, %land.lhs.true671, %land.lhs.true622, %if.end612
  %144 = load i32* @Variant, align 4, !dbg !554, !tbaa !145
  %cmp721 = icmp eq i32 %144, 3, !dbg !554
  %145 = load i32* @fcaptures, align 4, !dbg !554, !tbaa !146
  %cmp723 = icmp eq i32 %145, 1, !dbg !554
  %or.cond765 = and i1 %cmp721, %cmp723, !dbg !554
  %146 = load i32* @captures, align 4, !dbg !554, !tbaa !146
  %cmp725 = icmp eq i32 %146, 0, !dbg !554
  %or.cond766 = and i1 %or.cond765, %cmp725, !dbg !554
  br i1 %or.cond766, label %if.then726, label %if.end727, !dbg !554

if.then726:                                       ; preds = %if.end720
  store i32 1, i32* @captures, align 4, !dbg !555, !tbaa !146
  store i32 0, i32* @numb_moves, align 4, !dbg !557, !tbaa !145
  br label %restart, !dbg !558

if.end727:                                        ; preds = %if.end720
  br i1 %cmp721, label %if.then729, label %if.end730, !dbg !559

if.then729:                                       ; preds = %if.end727
  store i32 0, i32* @kingcap, align 4, !dbg !559, !tbaa !145
  br label %if.end730, !dbg !559

if.end730:                                        ; preds = %if.then729, %if.end727
  ret void, !dbg !560
}

; Function Attrs: nounwind optsize uwtable
define void @push_pawn(i32 %target, i32 %is_ep) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %target}, i64 0, metadata !106), !dbg !561
  tail call void @llvm.dbg.value(metadata !{i32 %is_ep}, i64 0, metadata !107), !dbg !561
  %tobool = icmp eq i32 %is_ep, 0, !dbg !562
  br i1 %tobool, label %if.end, label %if.then, !dbg !562

if.then:                                          ; preds = %entry
  %0 = load i32* @gfrom, align 4, !dbg !563, !tbaa !145
  %idxprom = sext i32 %0 to i64, !dbg !563
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !563
  %1 = load i32* %arrayidx, align 4, !dbg !563, !tbaa !145
  %cmp = icmp eq i32 %1, 1, !dbg !563
  br i1 %cmp, label %if.then1, label %if.else, !dbg !563

if.then1:                                         ; preds = %if.then
  tail call void @add_capture(i32 %target, i32 2, i32 0, i32 1) #5, !dbg !565
  br label %return, !dbg !567

if.else:                                          ; preds = %if.then
  tail call void @add_capture(i32 %target, i32 1, i32 0, i32 1) #5, !dbg !568
  br label %return, !dbg !570

if.end:                                           ; preds = %entry
  %idxprom2 = sext i32 %target to i64, !dbg !571
  %arrayidx3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom2, !dbg !571
  %2 = load i32* %arrayidx3, align 4, !dbg !571, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !108), !dbg !571
  %3 = load i32* @gfrom, align 4, !dbg !572, !tbaa !145
  %idxprom4 = sext i32 %3 to i64, !dbg !572
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom4, !dbg !572
  %4 = load i32* %arrayidx5, align 4, !dbg !572, !tbaa !145
  switch i32 %4, label %if.else26 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true18
  ], !dbg !572

land.lhs.true:                                    ; preds = %if.end
  %arrayidx8 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom4, !dbg !572
  %5 = load i32* %arrayidx8, align 4, !dbg !572, !tbaa !145
  %cmp9 = icmp eq i32 %5, 7, !dbg !572
  br i1 %cmp9, label %if.then10, label %if.else26, !dbg !572

if.then10:                                        ; preds = %land.lhs.true
  tail call void @add_capture(i32 %target, i32 %2, i32 9, i32 0) #5, !dbg !573
  tail call void @add_capture(i32 %target, i32 %2, i32 7, i32 0) #5, !dbg !575
  tail call void @add_capture(i32 %target, i32 %2, i32 11, i32 0) #5, !dbg !576
  tail call void @add_capture(i32 %target, i32 %2, i32 3, i32 0) #5, !dbg !577
  %6 = load i32* @Variant, align 4, !dbg !578, !tbaa !145
  %cmp11 = icmp eq i32 %6, 3, !dbg !578
  br i1 %cmp11, label %if.then12, label %return, !dbg !578

if.then12:                                        ; preds = %if.then10
  tail call void @add_capture(i32 %target, i32 %2, i32 5, i32 0) #5, !dbg !579
  br label %return, !dbg !579

land.lhs.true18:                                  ; preds = %if.end
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom4, !dbg !580
  %7 = load i32* %arrayidx20, align 4, !dbg !580, !tbaa !145
  %cmp21 = icmp eq i32 %7, 2, !dbg !580
  br i1 %cmp21, label %if.then22, label %if.else26, !dbg !580

if.then22:                                        ; preds = %land.lhs.true18
  tail call void @add_capture(i32 %target, i32 %2, i32 10, i32 0) #5, !dbg !581
  tail call void @add_capture(i32 %target, i32 %2, i32 8, i32 0) #5, !dbg !583
  tail call void @add_capture(i32 %target, i32 %2, i32 12, i32 0) #5, !dbg !584
  tail call void @add_capture(i32 %target, i32 %2, i32 4, i32 0) #5, !dbg !585
  %8 = load i32* @Variant, align 4, !dbg !586, !tbaa !145
  %cmp23 = icmp eq i32 %8, 3, !dbg !586
  br i1 %cmp23, label %if.then24, label %return, !dbg !586

if.then24:                                        ; preds = %if.then22
  tail call void @add_capture(i32 %target, i32 %2, i32 6, i32 0) #5, !dbg !587
  br label %return, !dbg !587

if.else26:                                        ; preds = %if.end, %land.lhs.true, %land.lhs.true18
  tail call void @add_capture(i32 %target, i32 %2, i32 0, i32 0) #5, !dbg !588
  br label %return, !dbg !590

return:                                           ; preds = %if.then22, %if.then24, %if.then10, %if.then12, %if.else26, %if.else, %if.then1
  ret void, !dbg !591
}

; Function Attrs: nounwind optsize uwtable
define void @push_pawn_simple(i32 %target) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %target}, i64 0, metadata !111), !dbg !592
  tail call void @add_move(i32 %target, i32 0) #5, !dbg !593
  ret void, !dbg !594
}

; Function Attrs: nounwind optsize uwtable
define void @push_knighT(i32 %target) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %target}, i64 0, metadata !101), !dbg !595
  %idxprom = sext i32 %target to i64, !dbg !596
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !596
  %0 = load i32* %arrayidx, align 4, !dbg !596, !tbaa !145
  %cmp = icmp eq i32 %0, 13, !dbg !596
  %1 = load i32* @captures, align 4, !dbg !596, !tbaa !146
  %tobool = icmp ne i32 %1, 0, !dbg !596
  %or.cond = and i1 %cmp, %tobool, !dbg !596
  br i1 %or.cond, label %return, label %if.end, !dbg !596

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then4, label %if.else, !dbg !597

if.then4:                                         ; preds = %if.end
  tail call void @add_move(i32 %target, i32 0) #5, !dbg !598
  br label %return, !dbg !600

if.else:                                          ; preds = %if.end
  %2 = load i32* @gfrom, align 4, !dbg !601, !tbaa !145
  %idxprom7 = sext i32 %2 to i64, !dbg !601
  %arrayidx8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7, !dbg !601
  %3 = load i32* %arrayidx8, align 4, !dbg !601, !tbaa !145
  %4 = xor i32 %3, %0, !dbg !601
  %5 = and i32 %4, 1, !dbg !601
  %cmp10 = icmp eq i32 %5, 0, !dbg !601
  br i1 %cmp10, label %return, label %if.then11, !dbg !601

if.then11:                                        ; preds = %if.else
  tail call void @add_capture(i32 %target, i32 %0, i32 0, i32 0) #5, !dbg !602
  br label %return, !dbg !604

return:                                           ; preds = %if.else, %entry, %if.then11, %if.then4
  ret void, !dbg !605
}

; Function Attrs: nounwind optsize uwtable
define void @push_slidE(i32 %target) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %target}, i64 0, metadata !114), !dbg !606
  %0 = load i32* @gfrom, align 4, !dbg !607, !tbaa !145
  %sub = sub nsw i32 %target, %0, !dbg !607
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !115), !dbg !607
  %idxprom = sext i32 %0 to i64, !dbg !608
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !608
  %1 = load i32* %arrayidx, align 4, !dbg !608, !tbaa !145
  %2 = sext i32 %target to i64
  %3 = sext i32 %sub to i64
  br label %do.body, !dbg !609

do.body:                                          ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %2, %entry ]
  %target.addr.0 = phi i32 [ %add, %if.end ], [ %target, %entry ]
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv, !dbg !610
  %4 = load i32* %arrayidx2, align 4, !dbg !610, !tbaa !145
  %cmp = icmp eq i32 %4, 13, !dbg !610
  br i1 %cmp, label %if.then, label %if.else, !dbg !610

if.then:                                          ; preds = %do.body
  %5 = load i32* @captures, align 4, !dbg !612, !tbaa !146
  %tobool = icmp eq i32 %5, 0, !dbg !612
  br i1 %tobool, label %if.then3, label %if.end, !dbg !612

if.then3:                                         ; preds = %if.then
  %6 = trunc i64 %indvars.iv to i32, !dbg !614
  tail call void @add_move(i32 %6, i32 0) #5, !dbg !614
  br label %if.end, !dbg !616

if.end:                                           ; preds = %if.then, %if.then3
  %add = add nsw i32 %target.addr.0, %sub, !dbg !617
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !114), !dbg !617
  %idxprom13 = sext i32 %add to i64, !dbg !618
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom13, !dbg !618
  %7 = load i32* %arrayidx14, align 4, !dbg !618, !tbaa !145
  %cmp15 = icmp eq i32 %7, 0, !dbg !618
  %indvars.iv.next = add i64 %indvars.iv, %3, !dbg !618
  br i1 %cmp15, label %do.end, label %do.body, !dbg !618

if.else:                                          ; preds = %do.body
  %8 = xor i32 %4, %1, !dbg !619
  %9 = and i32 %8, 1, !dbg !619
  %cmp7 = icmp eq i32 %9, 0, !dbg !619
  br i1 %cmp7, label %do.end, label %if.then8, !dbg !619

if.then8:                                         ; preds = %if.else
  tail call void @add_capture(i32 %target.addr.0, i32 %4, i32 0, i32 0) #5, !dbg !620
  br label %do.end, !dbg !622

do.end:                                           ; preds = %if.end, %if.else, %if.then8
  ret void, !dbg !623
}

; Function Attrs: nounwind optsize uwtable
define void @push_king(i32 %target) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %target}, i64 0, metadata !98), !dbg !624
  %idxprom = sext i32 %target to i64, !dbg !625
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !625
  %0 = load i32* %arrayidx, align 4, !dbg !625, !tbaa !145
  %cmp = icmp eq i32 %0, 0, !dbg !625
  br i1 %cmp, label %return, label %if.end, !dbg !625

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %0, 13, !dbg !626
  %1 = load i32* @captures, align 4, !dbg !626, !tbaa !146
  %tobool = icmp ne i32 %1, 0, !dbg !626
  %or.cond = and i1 %cmp3, %tobool, !dbg !626
  br i1 %or.cond, label %return, label %if.end5, !dbg !626

if.end5:                                          ; preds = %if.end
  br i1 %cmp3, label %if.then9, label %if.else, !dbg !627

if.then9:                                         ; preds = %if.end5
  tail call void @add_move(i32 %target, i32 0) #5, !dbg !628
  br label %return, !dbg !630

if.else:                                          ; preds = %if.end5
  %2 = load i32* @gfrom, align 4, !dbg !631, !tbaa !145
  %idxprom12 = sext i32 %2 to i64, !dbg !631
  %arrayidx13 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom12, !dbg !631
  %3 = load i32* %arrayidx13, align 4, !dbg !631, !tbaa !145
  %4 = xor i32 %3, %0, !dbg !631
  %5 = and i32 %4, 1, !dbg !631
  %cmp15 = icmp eq i32 %5, 0, !dbg !631
  br i1 %cmp15, label %return, label %if.then16, !dbg !631

if.then16:                                        ; preds = %if.else
  tail call void @add_capture(i32 %target, i32 %0, i32 0, i32 0) #5, !dbg !632
  br label %return, !dbg !634

return:                                           ; preds = %if.else, %if.end, %entry, %if.then16, %if.then9
  ret void, !dbg !635
}

; Function Attrs: nounwind optsize uwtable
define void @push_king_castle(i32 %Ptarget, i32 %Pcastle_type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %Ptarget}, i64 0, metadata !94), !dbg !636
  tail call void @llvm.dbg.value(metadata !{i32 %Pcastle_type}, i64 0, metadata !95), !dbg !636
  %0 = load i32* @gfrom, align 4, !dbg !637, !tbaa !145
  %1 = load i32* @numb_moves, align 4, !dbg !637, !tbaa !145
  %idxprom = sext i32 %1 to i64, !dbg !637
  %2 = load %struct.move_s** @genfor, align 8, !dbg !637, !tbaa !334
  %from = getelementptr inbounds %struct.move_s* %2, i64 %idxprom, i32 0, !dbg !637
  store i32 %0, i32* %from, align 4, !dbg !637, !tbaa !145
  %3 = load i32* @numb_moves, align 4, !dbg !638, !tbaa !145
  %idxprom1 = sext i32 %3 to i64, !dbg !638
  %target = getelementptr inbounds %struct.move_s* %2, i64 %idxprom1, i32 1, !dbg !638
  store i32 %Ptarget, i32* %target, align 4, !dbg !638, !tbaa !145
  %4 = load i32* @numb_moves, align 4, !dbg !639, !tbaa !145
  %idxprom3 = sext i32 %4 to i64, !dbg !639
  %captured = getelementptr inbounds %struct.move_s* %2, i64 %idxprom3, i32 2, !dbg !639
  store i32 13, i32* %captured, align 4, !dbg !639, !tbaa !145
  %5 = load i32* @numb_moves, align 4, !dbg !640, !tbaa !145
  %idxprom5 = sext i32 %5 to i64, !dbg !640
  %castled = getelementptr inbounds %struct.move_s* %2, i64 %idxprom5, i32 4, !dbg !640
  store i32 %Pcastle_type, i32* %castled, align 4, !dbg !640, !tbaa !145
  %6 = load i32* @numb_moves, align 4, !dbg !641, !tbaa !145
  %idxprom7 = sext i32 %6 to i64, !dbg !641
  %promoted = getelementptr inbounds %struct.move_s* %2, i64 %idxprom7, i32 3, !dbg !641
  store i32 0, i32* %promoted, align 4, !dbg !641, !tbaa !145
  %7 = load i32* @numb_moves, align 4, !dbg !642, !tbaa !145
  %idxprom9 = sext i32 %7 to i64, !dbg !642
  %ep = getelementptr inbounds %struct.move_s* %2, i64 %idxprom9, i32 5, !dbg !642
  store i32 0, i32* %ep, align 4, !dbg !642, !tbaa !145
  %8 = load i32* @numb_moves, align 4, !dbg !643, !tbaa !145
  %inc = add nsw i32 %8, 1, !dbg !643
  store i32 %inc, i32* @numb_moves, align 4, !dbg !643, !tbaa !145
  ret void, !dbg !644
}

; Function Attrs: nounwind optsize uwtable
define void @try_drop(i32 %ptype) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ptype}, i64 0, metadata !91), !dbg !645
  %0 = load i32* @numb_moves, align 4, !dbg !646, !tbaa !145
  %idxprom = sext i32 %0 to i64, !dbg !646
  %1 = load %struct.move_s** @genfor, align 8, !dbg !646, !tbaa !334
  %from = getelementptr inbounds %struct.move_s* %1, i64 %idxprom, i32 0, !dbg !646
  store i32 0, i32* %from, align 4, !dbg !646, !tbaa !145
  %2 = load i32* @gfrom, align 4, !dbg !647, !tbaa !145
  %3 = load i32* @numb_moves, align 4, !dbg !647, !tbaa !145
  %idxprom1 = sext i32 %3 to i64, !dbg !647
  %target = getelementptr inbounds %struct.move_s* %1, i64 %idxprom1, i32 1, !dbg !647
  store i32 %2, i32* %target, align 4, !dbg !647, !tbaa !145
  %4 = load i32* @numb_moves, align 4, !dbg !648, !tbaa !145
  %idxprom3 = sext i32 %4 to i64, !dbg !648
  %captured = getelementptr inbounds %struct.move_s* %1, i64 %idxprom3, i32 2, !dbg !648
  store i32 13, i32* %captured, align 4, !dbg !648, !tbaa !145
  %5 = load i32* @numb_moves, align 4, !dbg !649, !tbaa !145
  %idxprom5 = sext i32 %5 to i64, !dbg !649
  %castled = getelementptr inbounds %struct.move_s* %1, i64 %idxprom5, i32 4, !dbg !649
  store i32 0, i32* %castled, align 4, !dbg !649, !tbaa !145
  %6 = load i32* @numb_moves, align 4, !dbg !650, !tbaa !145
  %idxprom7 = sext i32 %6 to i64, !dbg !650
  %promoted = getelementptr inbounds %struct.move_s* %1, i64 %idxprom7, i32 3, !dbg !650
  store i32 %ptype, i32* %promoted, align 4, !dbg !650, !tbaa !145
  %7 = load i32* @numb_moves, align 4, !dbg !651, !tbaa !145
  %idxprom9 = sext i32 %7 to i64, !dbg !651
  %ep = getelementptr inbounds %struct.move_s* %1, i64 %idxprom9, i32 5, !dbg !651
  store i32 0, i32* %ep, align 4, !dbg !651, !tbaa !145
  %8 = load i32* @numb_moves, align 4, !dbg !652, !tbaa !145
  %inc = add nsw i32 %8, 1, !dbg !652
  store i32 %inc, i32* @numb_moves, align 4, !dbg !652, !tbaa !145
  ret void, !dbg !653
}

; Function Attrs: nounwind optsize uwtable
define i32 @in_check() #0 {
entry:
  %0 = load i32* @Variant, align 4, !dbg !654, !tbaa !145
  %cmp = icmp eq i32 %0, 3, !dbg !654
  br i1 %cmp, label %return, label %if.end, !dbg !654

if.end:                                           ; preds = %entry
  %1 = load i32* @white_to_move, align 4, !dbg !655, !tbaa !145
  %cmp1 = icmp eq i32 %1, 1, !dbg !655
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !655

if.then2:                                         ; preds = %if.end
  %2 = load i32* @wking_loc, align 4, !dbg !656, !tbaa !145
  %call = tail call i32 @is_attacked(i32 %2, i32 0) #4, !dbg !656
  %tobool = icmp eq i32 %call, 0, !dbg !656
  br i1 %tobool, label %if.end9, label %return, !dbg !656

if.else:                                          ; preds = %if.end
  %3 = load i32* @bking_loc, align 4, !dbg !658, !tbaa !145
  %call5 = tail call i32 @is_attacked(i32 %3, i32 1) #4, !dbg !658
  %tobool6 = icmp eq i32 %call5, 0, !dbg !658
  br i1 %tobool6, label %if.end9, label %return, !dbg !658

if.end9:                                          ; preds = %if.then2, %if.else
  br label %return, !dbg !660

return:                                           ; preds = %if.else, %if.then2, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.else ]
  ret i32 %retval.0, !dbg !660
}

; Function Attrs: nounwind optsize uwtable
define i32 @f_in_check(%struct.move_s* nocapture %moves, i32 %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.move_s* %moves}, i64 0, metadata !50), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !51), !dbg !661
  %idxprom = sext i32 %m to i64, !dbg !662
  %target1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1, !dbg !662
  %0 = load i32* %target1, align 4, !dbg !662, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !52), !dbg !662
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0, !dbg !663
  %1 = load i32* %from4, align 4, !dbg !663, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !53), !dbg !663
  %2 = load i32* @Variant, align 4, !dbg !664, !tbaa !145
  %cmp = icmp eq i32 %2, 3, !dbg !664
  br i1 %cmp, label %return, label %if.end, !dbg !664

if.end:                                           ; preds = %entry
  %3 = load i32* @white_to_move, align 4, !dbg !665, !tbaa !145
  %cmp5 = icmp eq i32 %3, 1, !dbg !665
  %idxprom7 = sext i32 %0 to i64, !dbg !666
  %arrayidx8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7, !dbg !666
  %4 = load i32* %arrayidx8, align 4, !dbg !666, !tbaa !145
  br i1 %cmp5, label %if.then6, label %if.else513, !dbg !665

if.then6:                                         ; preds = %if.end
  switch i32 %4, label %sw.epilog [
    i32 2, label %sw.bb
    i32 12, label %sw.bb18
    i32 8, label %sw.bb84
    i32 4, label %for.cond155.preheader
    i32 10, label %sw.bb167
    i32 6, label %sw.bb311
  ], !dbg !666

for.cond155.preheader:                            ; preds = %if.then6
  %5 = load i32* @wking_loc, align 4, !dbg !668, !tbaa !145
  br label %for.body157, !dbg !671

sw.bb:                                            ; preds = %if.then6
  %sub = add nsw i32 %0, -11, !dbg !672
  %idxprom9 = sext i32 %sub to i64, !dbg !672
  %arrayidx10 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom9, !dbg !672
  %6 = load i32* %arrayidx10, align 4, !dbg !672, !tbaa !145
  %cmp11 = icmp eq i32 %6, 5, !dbg !672
  br i1 %cmp11, label %return, label %lor.lhs.false, !dbg !672

lor.lhs.false:                                    ; preds = %sw.bb
  %sub12 = add nsw i32 %0, -13, !dbg !672
  %idxprom13 = sext i32 %sub12 to i64, !dbg !672
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom13, !dbg !672
  %7 = load i32* %arrayidx14, align 4, !dbg !672, !tbaa !145
  %cmp15 = icmp eq i32 %7, 5, !dbg !672
  br i1 %cmp15, label %return, label %sw.epilog, !dbg !672

sw.bb18:                                          ; preds = %if.then6
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7, !dbg !673
  %8 = load i32* %arrayidx20, align 4, !dbg !673, !tbaa !145
  %9 = load i32* @wking_loc, align 4, !dbg !673, !tbaa !145
  %idxprom21 = sext i32 %9 to i64, !dbg !673
  %arrayidx22 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom21, !dbg !673
  %10 = load i32* %arrayidx22, align 4, !dbg !673, !tbaa !145
  %cmp23 = icmp eq i32 %8, %10, !dbg !673
  br i1 %cmp23, label %if.then24, label %if.else47, !dbg !673

if.then24:                                        ; preds = %sw.bb18
  %cmp25 = icmp slt i32 %9, %0, !dbg !674
  br i1 %cmp25, label %for.cond, label %for.cond35, !dbg !674

for.cond:                                         ; preds = %if.then24, %for.cond
  %indvars.iv1293 = phi i64 [ %indvars.iv.next1294, %for.cond ], [ %idxprom21, %if.then24 ]
  %l.0.in = phi i32 [ %l.0, %for.cond ], [ %9, %if.then24 ]
  %indvars.iv.next1294 = add i64 %indvars.iv1293, 13, !dbg !676
  %l.0 = add nsw i32 %l.0.in, 13, !dbg !676
  %arrayidx28 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1294, !dbg !676
  %11 = load i32* %arrayidx28, align 4, !dbg !676, !tbaa !145
  %cmp29 = icmp eq i32 %11, 13, !dbg !676
  br i1 %cmp29, label %for.cond, label %for.end, !dbg !676

for.end:                                          ; preds = %for.cond
  %cmp31 = icmp eq i32 %l.0, %0, !dbg !679
  br i1 %cmp31, label %return, label %sw.epilog, !dbg !679

for.cond35:                                       ; preds = %if.then24, %for.cond35
  %indvars.iv1295 = phi i64 [ %indvars.iv.next1296, %for.cond35 ], [ %idxprom21, %if.then24 ]
  %l.1.in = phi i32 [ %l.1, %for.cond35 ], [ %9, %if.then24 ]
  %indvars.iv.next1296 = add i64 %indvars.iv1295, -13, !dbg !680
  %l.1 = add nsw i32 %l.1.in, -13, !dbg !680
  %arrayidx37 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1296, !dbg !680
  %12 = load i32* %arrayidx37, align 4, !dbg !680, !tbaa !145
  %cmp38 = icmp eq i32 %12, 13, !dbg !680
  br i1 %cmp38, label %for.cond35, label %for.end42, !dbg !680

for.end42:                                        ; preds = %for.cond35
  %cmp43 = icmp eq i32 %l.1, %0, !dbg !683
  br i1 %cmp43, label %return, label %sw.epilog, !dbg !683

if.else47:                                        ; preds = %sw.bb18
  %arrayidx49 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7, !dbg !684
  %13 = load i32* %arrayidx49, align 4, !dbg !684, !tbaa !145
  %arrayidx51 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom21, !dbg !684
  %14 = load i32* %arrayidx51, align 4, !dbg !684, !tbaa !145
  %cmp52 = icmp eq i32 %13, %14, !dbg !684
  br i1 %cmp52, label %if.then53, label %sw.epilog, !dbg !684

if.then53:                                        ; preds = %if.else47
  %cmp54 = icmp slt i32 %9, %0, !dbg !685
  br i1 %cmp54, label %for.cond57, label %for.cond70, !dbg !685

for.cond57:                                       ; preds = %if.then53, %for.cond57
  %indvars.iv1297 = phi i64 [ %indvars.iv.next1298, %for.cond57 ], [ %idxprom21, %if.then53 ]
  %l.2.in = phi i32 [ %l.2, %for.cond57 ], [ %9, %if.then53 ]
  %indvars.iv.next1298 = add i64 %indvars.iv1297, 11, !dbg !687
  %l.2 = add nsw i32 %l.2.in, 11, !dbg !687
  %arrayidx59 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1298, !dbg !687
  %15 = load i32* %arrayidx59, align 4, !dbg !687, !tbaa !145
  %cmp60 = icmp eq i32 %15, 13, !dbg !687
  br i1 %cmp60, label %for.cond57, label %for.end64, !dbg !687

for.end64:                                        ; preds = %for.cond57
  %cmp65 = icmp eq i32 %l.2, %0, !dbg !690
  br i1 %cmp65, label %return, label %sw.epilog, !dbg !690

for.cond70:                                       ; preds = %if.then53, %for.cond70
  %indvars.iv1299 = phi i64 [ %indvars.iv.next1300, %for.cond70 ], [ %idxprom21, %if.then53 ]
  %l.3.in = phi i32 [ %l.3, %for.cond70 ], [ %9, %if.then53 ]
  %indvars.iv.next1300 = add i64 %indvars.iv1299, -11, !dbg !691
  %l.3 = add nsw i32 %l.3.in, -11, !dbg !691
  %arrayidx72 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1300, !dbg !691
  %16 = load i32* %arrayidx72, align 4, !dbg !691, !tbaa !145
  %cmp73 = icmp eq i32 %16, 13, !dbg !691
  br i1 %cmp73, label %for.cond70, label %for.end77, !dbg !691

for.end77:                                        ; preds = %for.cond70
  %cmp78 = icmp eq i32 %l.3, %0, !dbg !694
  br i1 %cmp78, label %return, label %sw.epilog, !dbg !694

sw.bb84:                                          ; preds = %if.then6
  %arrayidx86 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7, !dbg !695
  %17 = load i32* %arrayidx86, align 4, !dbg !695, !tbaa !145
  %18 = load i32* @wking_loc, align 4, !dbg !695, !tbaa !145
  %idxprom87 = sext i32 %18 to i64, !dbg !695
  %arrayidx88 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom87, !dbg !695
  %19 = load i32* %arrayidx88, align 4, !dbg !695, !tbaa !145
  %cmp89 = icmp eq i32 %17, %19, !dbg !695
  br i1 %cmp89, label %if.then90, label %if.else119, !dbg !695

if.then90:                                        ; preds = %sw.bb84
  %cmp91 = icmp slt i32 %18, %0, !dbg !696
  br i1 %cmp91, label %for.cond94, label %for.cond107, !dbg !696

for.cond94:                                       ; preds = %if.then90, %for.cond94
  %indvars.iv1301 = phi i64 [ %indvars.iv.next1302, %for.cond94 ], [ %idxprom87, %if.then90 ]
  %l.4.in = phi i32 [ %l.4, %for.cond94 ], [ %18, %if.then90 ]
  %indvars.iv.next1302 = add i64 %indvars.iv1301, 12, !dbg !698
  %l.4 = add nsw i32 %l.4.in, 12, !dbg !698
  %arrayidx96 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1302, !dbg !698
  %20 = load i32* %arrayidx96, align 4, !dbg !698, !tbaa !145
  %cmp97 = icmp eq i32 %20, 13, !dbg !698
  br i1 %cmp97, label %for.cond94, label %for.end101, !dbg !698

for.end101:                                       ; preds = %for.cond94
  %cmp102 = icmp eq i32 %l.4, %0, !dbg !701
  br i1 %cmp102, label %return, label %sw.epilog, !dbg !701

for.cond107:                                      ; preds = %if.then90, %for.cond107
  %indvars.iv1303 = phi i64 [ %indvars.iv.next1304, %for.cond107 ], [ %idxprom87, %if.then90 ]
  %l.5.in = phi i32 [ %l.5, %for.cond107 ], [ %18, %if.then90 ]
  %indvars.iv.next1304 = add i64 %indvars.iv1303, -12, !dbg !702
  %l.5 = add nsw i32 %l.5.in, -12, !dbg !702
  %arrayidx109 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1304, !dbg !702
  %21 = load i32* %arrayidx109, align 4, !dbg !702, !tbaa !145
  %cmp110 = icmp eq i32 %21, 13, !dbg !702
  br i1 %cmp110, label %for.cond107, label %for.end114, !dbg !702

for.end114:                                       ; preds = %for.cond107
  %cmp115 = icmp eq i32 %l.5, %0, !dbg !705
  br i1 %cmp115, label %return, label %sw.epilog, !dbg !705

if.else119:                                       ; preds = %sw.bb84
  %arrayidx121 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7, !dbg !706
  %22 = load i32* %arrayidx121, align 4, !dbg !706, !tbaa !145
  %arrayidx123 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom87, !dbg !706
  %23 = load i32* %arrayidx123, align 4, !dbg !706, !tbaa !145
  %cmp124 = icmp eq i32 %22, %23, !dbg !706
  br i1 %cmp124, label %if.then125, label %sw.epilog, !dbg !706

if.then125:                                       ; preds = %if.else119
  %cmp126 = icmp slt i32 %18, %0, !dbg !707
  br i1 %cmp126, label %for.cond129, label %for.cond141, !dbg !707

for.cond129:                                      ; preds = %if.then125, %for.cond129
  %indvars.iv1305 = phi i64 [ %indvars.iv.next1306, %for.cond129 ], [ %idxprom87, %if.then125 ]
  %l.6.in = phi i32 [ %l.6, %for.cond129 ], [ %18, %if.then125 ]
  %indvars.iv.next1306 = add i64 %indvars.iv1305, 1, !dbg !709
  %l.6 = add nsw i32 %l.6.in, 1, !dbg !709
  %arrayidx131 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1306, !dbg !709
  %24 = load i32* %arrayidx131, align 4, !dbg !709, !tbaa !145
  %cmp132 = icmp eq i32 %24, 13, !dbg !709
  br i1 %cmp132, label %for.cond129, label %for.end135, !dbg !709

for.end135:                                       ; preds = %for.cond129
  %cmp136 = icmp eq i32 %l.6, %0, !dbg !712
  br i1 %cmp136, label %return, label %sw.epilog, !dbg !712

for.cond141:                                      ; preds = %if.then125, %for.cond141
  %indvars.iv1307 = phi i64 [ %indvars.iv.next1308, %for.cond141 ], [ %idxprom87, %if.then125 ]
  %l.7.in = phi i32 [ %l.7, %for.cond141 ], [ %18, %if.then125 ]
  %indvars.iv.next1308 = add i64 %indvars.iv1307, -1, !dbg !713
  %l.7 = add nsw i32 %l.7.in, -1, !dbg !713
  %arrayidx143 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1308, !dbg !713
  %25 = load i32* %arrayidx143, align 4, !dbg !713, !tbaa !145
  %cmp144 = icmp eq i32 %25, 13, !dbg !713
  br i1 %cmp144, label %for.cond141, label %for.end147, !dbg !713

for.end147:                                       ; preds = %for.cond141
  %cmp148 = icmp eq i32 %l.7, %0, !dbg !716
  br i1 %cmp148, label %return, label %sw.epilog, !dbg !716

for.cond155:                                      ; preds = %for.body157
  %26 = trunc i64 %indvars.iv.next1310 to i32, !dbg !671
  %cmp156 = icmp slt i32 %26, 8, !dbg !671
  br i1 %cmp156, label %for.body157, label %sw.epilog, !dbg !671

for.body157:                                      ; preds = %for.cond155.preheader, %for.cond155
  %indvars.iv1309 = phi i64 [ 0, %for.cond155.preheader ], [ %indvars.iv.next1310, %for.cond155 ]
  %arrayidx159 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv1309, !dbg !668
  %27 = load i32* %arrayidx159, align 4, !dbg !668, !tbaa !145
  %add160 = add nsw i32 %27, %5, !dbg !668
  %cmp161 = icmp eq i32 %add160, %0, !dbg !668
  %indvars.iv.next1310 = add i64 %indvars.iv1309, 1, !dbg !671
  br i1 %cmp161, label %return, label %for.cond155, !dbg !668

sw.bb167:                                         ; preds = %if.then6
  %arrayidx169 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7, !dbg !717
  %28 = load i32* %arrayidx169, align 4, !dbg !717, !tbaa !145
  %29 = load i32* @wking_loc, align 4, !dbg !717, !tbaa !145
  %idxprom170 = sext i32 %29 to i64, !dbg !717
  %arrayidx171 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom170, !dbg !717
  %30 = load i32* %arrayidx171, align 4, !dbg !717, !tbaa !145
  %cmp172 = icmp eq i32 %28, %30, !dbg !717
  br i1 %cmp172, label %if.then173, label %if.else202, !dbg !717

if.then173:                                       ; preds = %sw.bb167
  %cmp174 = icmp slt i32 %29, %0, !dbg !718
  br i1 %cmp174, label %for.cond177, label %for.cond190, !dbg !718

for.cond177:                                      ; preds = %if.then173, %for.cond177
  %indvars.iv1311 = phi i64 [ %indvars.iv.next1312, %for.cond177 ], [ %idxprom170, %if.then173 ]
  %l.9.in = phi i32 [ %l.9, %for.cond177 ], [ %29, %if.then173 ]
  %indvars.iv.next1312 = add i64 %indvars.iv1311, 12, !dbg !720
  %l.9 = add nsw i32 %l.9.in, 12, !dbg !720
  %arrayidx179 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1312, !dbg !720
  %31 = load i32* %arrayidx179, align 4, !dbg !720, !tbaa !145
  %cmp180 = icmp eq i32 %31, 13, !dbg !720
  br i1 %cmp180, label %for.cond177, label %for.end184, !dbg !720

for.end184:                                       ; preds = %for.cond177
  %cmp185 = icmp eq i32 %l.9, %0, !dbg !723
  br i1 %cmp185, label %return, label %sw.epilog, !dbg !723

for.cond190:                                      ; preds = %if.then173, %for.cond190
  %indvars.iv1313 = phi i64 [ %indvars.iv.next1314, %for.cond190 ], [ %idxprom170, %if.then173 ]
  %l.10.in = phi i32 [ %l.10, %for.cond190 ], [ %29, %if.then173 ]
  %indvars.iv.next1314 = add i64 %indvars.iv1313, -12, !dbg !724
  %l.10 = add nsw i32 %l.10.in, -12, !dbg !724
  %arrayidx192 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1314, !dbg !724
  %32 = load i32* %arrayidx192, align 4, !dbg !724, !tbaa !145
  %cmp193 = icmp eq i32 %32, 13, !dbg !724
  br i1 %cmp193, label %for.cond190, label %for.end197, !dbg !724

for.end197:                                       ; preds = %for.cond190
  %cmp198 = icmp eq i32 %l.10, %0, !dbg !727
  br i1 %cmp198, label %return, label %sw.epilog, !dbg !727

if.else202:                                       ; preds = %sw.bb167
  %arrayidx204 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7, !dbg !728
  %33 = load i32* %arrayidx204, align 4, !dbg !728, !tbaa !145
  %arrayidx206 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom170, !dbg !728
  %34 = load i32* %arrayidx206, align 4, !dbg !728, !tbaa !145
  %cmp207 = icmp eq i32 %33, %34, !dbg !728
  br i1 %cmp207, label %if.then208, label %if.else237, !dbg !728

if.then208:                                       ; preds = %if.else202
  %cmp209 = icmp slt i32 %29, %0, !dbg !729
  br i1 %cmp209, label %for.cond212, label %for.cond225, !dbg !729

for.cond212:                                      ; preds = %if.then208, %for.cond212
  %indvars.iv1315 = phi i64 [ %indvars.iv.next1316, %for.cond212 ], [ %idxprom170, %if.then208 ]
  %l.11.in = phi i32 [ %l.11, %for.cond212 ], [ %29, %if.then208 ]
  %indvars.iv.next1316 = add i64 %indvars.iv1315, 1, !dbg !731
  %l.11 = add nsw i32 %l.11.in, 1, !dbg !731
  %arrayidx214 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1316, !dbg !731
  %35 = load i32* %arrayidx214, align 4, !dbg !731, !tbaa !145
  %cmp215 = icmp eq i32 %35, 13, !dbg !731
  br i1 %cmp215, label %for.cond212, label %for.end219, !dbg !731

for.end219:                                       ; preds = %for.cond212
  %cmp220 = icmp eq i32 %l.11, %0, !dbg !734
  br i1 %cmp220, label %return, label %sw.epilog, !dbg !734

for.cond225:                                      ; preds = %if.then208, %for.cond225
  %indvars.iv1317 = phi i64 [ %indvars.iv.next1318, %for.cond225 ], [ %idxprom170, %if.then208 ]
  %l.12.in = phi i32 [ %l.12, %for.cond225 ], [ %29, %if.then208 ]
  %indvars.iv.next1318 = add i64 %indvars.iv1317, -1, !dbg !735
  %l.12 = add nsw i32 %l.12.in, -1, !dbg !735
  %arrayidx227 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1318, !dbg !735
  %36 = load i32* %arrayidx227, align 4, !dbg !735, !tbaa !145
  %cmp228 = icmp eq i32 %36, 13, !dbg !735
  br i1 %cmp228, label %for.cond225, label %for.end232, !dbg !735

for.end232:                                       ; preds = %for.cond225
  %cmp233 = icmp eq i32 %l.12, %0, !dbg !738
  br i1 %cmp233, label %return, label %sw.epilog, !dbg !738

if.else237:                                       ; preds = %if.else202
  %arrayidx239 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7, !dbg !739
  %37 = load i32* %arrayidx239, align 4, !dbg !739, !tbaa !145
  %arrayidx241 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom170, !dbg !739
  %38 = load i32* %arrayidx241, align 4, !dbg !739, !tbaa !145
  %cmp242 = icmp eq i32 %37, %38, !dbg !739
  br i1 %cmp242, label %if.then243, label %if.else272, !dbg !739

if.then243:                                       ; preds = %if.else237
  %cmp244 = icmp slt i32 %29, %0, !dbg !740
  br i1 %cmp244, label %for.cond247, label %for.cond260, !dbg !740

for.cond247:                                      ; preds = %if.then243, %for.cond247
  %indvars.iv1319 = phi i64 [ %indvars.iv.next1320, %for.cond247 ], [ %idxprom170, %if.then243 ]
  %l.13.in = phi i32 [ %l.13, %for.cond247 ], [ %29, %if.then243 ]
  %indvars.iv.next1320 = add i64 %indvars.iv1319, 13, !dbg !742
  %l.13 = add nsw i32 %l.13.in, 13, !dbg !742
  %arrayidx249 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1320, !dbg !742
  %39 = load i32* %arrayidx249, align 4, !dbg !742, !tbaa !145
  %cmp250 = icmp eq i32 %39, 13, !dbg !742
  br i1 %cmp250, label %for.cond247, label %for.end254, !dbg !742

for.end254:                                       ; preds = %for.cond247
  %cmp255 = icmp eq i32 %l.13, %0, !dbg !745
  br i1 %cmp255, label %return, label %sw.epilog, !dbg !745

for.cond260:                                      ; preds = %if.then243, %for.cond260
  %indvars.iv1321 = phi i64 [ %indvars.iv.next1322, %for.cond260 ], [ %idxprom170, %if.then243 ]
  %l.14.in = phi i32 [ %l.14, %for.cond260 ], [ %29, %if.then243 ]
  %indvars.iv.next1322 = add i64 %indvars.iv1321, -13, !dbg !746
  %l.14 = add nsw i32 %l.14.in, -13, !dbg !746
  %arrayidx262 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1322, !dbg !746
  %40 = load i32* %arrayidx262, align 4, !dbg !746, !tbaa !145
  %cmp263 = icmp eq i32 %40, 13, !dbg !746
  br i1 %cmp263, label %for.cond260, label %for.end267, !dbg !746

for.end267:                                       ; preds = %for.cond260
  %cmp268 = icmp eq i32 %l.14, %0, !dbg !749
  br i1 %cmp268, label %return, label %sw.epilog, !dbg !749

if.else272:                                       ; preds = %if.else237
  %arrayidx274 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7, !dbg !750
  %41 = load i32* %arrayidx274, align 4, !dbg !750, !tbaa !145
  %arrayidx276 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom170, !dbg !750
  %42 = load i32* %arrayidx276, align 4, !dbg !750, !tbaa !145
  %cmp277 = icmp eq i32 %41, %42, !dbg !750
  br i1 %cmp277, label %if.then278, label %sw.epilog, !dbg !750

if.then278:                                       ; preds = %if.else272
  %cmp279 = icmp slt i32 %29, %0, !dbg !751
  br i1 %cmp279, label %for.cond282, label %for.cond295, !dbg !751

for.cond282:                                      ; preds = %if.then278, %for.cond282
  %indvars.iv1323 = phi i64 [ %indvars.iv.next1324, %for.cond282 ], [ %idxprom170, %if.then278 ]
  %l.15.in = phi i32 [ %l.15, %for.cond282 ], [ %29, %if.then278 ]
  %indvars.iv.next1324 = add i64 %indvars.iv1323, 11, !dbg !753
  %l.15 = add nsw i32 %l.15.in, 11, !dbg !753
  %arrayidx284 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1324, !dbg !753
  %43 = load i32* %arrayidx284, align 4, !dbg !753, !tbaa !145
  %cmp285 = icmp eq i32 %43, 13, !dbg !753
  br i1 %cmp285, label %for.cond282, label %for.end289, !dbg !753

for.end289:                                       ; preds = %for.cond282
  %cmp290 = icmp eq i32 %l.15, %0, !dbg !756
  br i1 %cmp290, label %return, label %sw.epilog, !dbg !756

for.cond295:                                      ; preds = %if.then278, %for.cond295
  %indvars.iv1325 = phi i64 [ %indvars.iv.next1326, %for.cond295 ], [ %idxprom170, %if.then278 ]
  %l.16.in = phi i32 [ %l.16, %for.cond295 ], [ %29, %if.then278 ]
  %indvars.iv.next1326 = add i64 %indvars.iv1325, -11, !dbg !757
  %l.16 = add nsw i32 %l.16.in, -11, !dbg !757
  %arrayidx297 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1326, !dbg !757
  %44 = load i32* %arrayidx297, align 4, !dbg !757, !tbaa !145
  %cmp298 = icmp eq i32 %44, 13, !dbg !757
  br i1 %cmp298, label %for.cond295, label %for.end302, !dbg !757

for.end302:                                       ; preds = %for.cond295
  %cmp303 = icmp eq i32 %l.16, %0, !dbg !760
  br i1 %cmp303, label %return, label %sw.epilog, !dbg !760

sw.bb311:                                         ; preds = %if.then6
  %castled = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4, !dbg !761
  %45 = load i32* %castled, align 4, !dbg !761, !tbaa !145
  %tobool = icmp eq i32 %45, 0, !dbg !761
  br i1 %tobool, label %sw.epilog, label %if.then314, !dbg !761

if.then314:                                       ; preds = %sw.bb311
  %46 = load i32* @wking_loc, align 4, !dbg !762, !tbaa !145
  %call = tail call i32 @is_attacked(i32 %46, i32 0) #4, !dbg !762
  %not.tobool315 = icmp ne i32 %call, 0, !dbg !764
  %. = zext i1 %not.tobool315 to i32, !dbg !764
  br label %return, !dbg !764

sw.epilog:                                        ; preds = %for.cond155, %sw.bb311, %for.end197, %for.end184, %for.end267, %for.end254, %for.end289, %for.end302, %if.else272, %for.end219, %for.end232, %for.end114, %for.end101, %for.end135, %for.end147, %if.else119, %for.end42, %for.end, %for.end64, %for.end77, %if.else47, %lor.lhs.false, %if.then6
  %cmp319 = icmp eq i32 %1, 0, !dbg !765
  br i1 %cmp319, label %return, label %if.end321, !dbg !765

if.end321:                                        ; preds = %sw.epilog
  %idxprom322 = sext i32 %1 to i64, !dbg !766
  %arrayidx323 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom322, !dbg !766
  %47 = load i32* %arrayidx323, align 4, !dbg !766, !tbaa !145
  %48 = load i32* @wking_loc, align 4, !dbg !766, !tbaa !145
  %idxprom324 = sext i32 %48 to i64, !dbg !766
  %arrayidx325 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom324, !dbg !766
  %49 = load i32* %arrayidx325, align 4, !dbg !766, !tbaa !145
  %cmp326 = icmp eq i32 %47, %49, !dbg !766
  br i1 %cmp326, label %if.then327, label %if.else368, !dbg !766

if.then327:                                       ; preds = %if.end321
  %cmp328 = icmp sgt i32 %48, %1, !dbg !767
  br i1 %cmp328, label %for.cond331, label %for.cond350, !dbg !767

for.cond331:                                      ; preds = %if.then327, %for.cond331
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond331 ], [ %idxprom324, %if.then327 ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !769
  %arrayidx333 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next, !dbg !769
  %50 = load i32* %arrayidx333, align 4, !dbg !769, !tbaa !145
  switch i32 %50, label %return [
    i32 13, label %for.cond331
    i32 8, label %return.loopexit
    i32 10, label %return.loopexit
  ], !dbg !769

for.cond350:                                      ; preds = %if.then327, %for.cond350
  %indvars.iv1279 = phi i64 [ %indvars.iv.next1280, %for.cond350 ], [ %idxprom324, %if.then327 ]
  %indvars.iv.next1280 = add i64 %indvars.iv1279, 1, !dbg !772
  %arrayidx352 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1280, !dbg !772
  %51 = load i32* %arrayidx352, align 4, !dbg !772, !tbaa !145
  switch i32 %51, label %return [
    i32 13, label %for.cond350
    i32 8, label %return.loopexit1247
    i32 10, label %return.loopexit1247
  ], !dbg !772

if.else368:                                       ; preds = %if.end321
  %arrayidx370 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom322, !dbg !775
  %52 = load i32* %arrayidx370, align 4, !dbg !775, !tbaa !145
  %arrayidx372 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom324, !dbg !775
  %53 = load i32* %arrayidx372, align 4, !dbg !775, !tbaa !145
  %cmp373 = icmp eq i32 %52, %53, !dbg !775
  br i1 %cmp373, label %if.then374, label %if.else415, !dbg !775

if.then374:                                       ; preds = %if.else368
  %cmp375 = icmp sgt i32 %48, %1, !dbg !776
  br i1 %cmp375, label %for.cond378, label %for.cond397, !dbg !776

for.cond378:                                      ; preds = %if.then374, %for.cond378
  %indvars.iv1281 = phi i64 [ %indvars.iv.next1282, %for.cond378 ], [ %idxprom324, %if.then374 ]
  %indvars.iv.next1282 = add i64 %indvars.iv1281, -12, !dbg !778
  %arrayidx380 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1282, !dbg !778
  %54 = load i32* %arrayidx380, align 4, !dbg !778, !tbaa !145
  switch i32 %54, label %return [
    i32 13, label %for.cond378
    i32 8, label %return.loopexit1249
    i32 10, label %return.loopexit1249
  ], !dbg !778

for.cond397:                                      ; preds = %if.then374, %for.cond397
  %indvars.iv1283 = phi i64 [ %indvars.iv.next1284, %for.cond397 ], [ %idxprom324, %if.then374 ]
  %indvars.iv.next1284 = add i64 %indvars.iv1283, 12, !dbg !781
  %arrayidx399 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1284, !dbg !781
  %55 = load i32* %arrayidx399, align 4, !dbg !781, !tbaa !145
  switch i32 %55, label %return [
    i32 13, label %for.cond397
    i32 8, label %return.loopexit1251
    i32 10, label %return.loopexit1251
  ], !dbg !781

if.else415:                                       ; preds = %if.else368
  %arrayidx417 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom322, !dbg !784
  %56 = load i32* %arrayidx417, align 4, !dbg !784, !tbaa !145
  %arrayidx419 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom324, !dbg !784
  %57 = load i32* %arrayidx419, align 4, !dbg !784, !tbaa !145
  %cmp420 = icmp eq i32 %56, %57, !dbg !784
  br i1 %cmp420, label %if.then421, label %if.else462, !dbg !784

if.then421:                                       ; preds = %if.else415
  %cmp422 = icmp sgt i32 %48, %1, !dbg !785
  br i1 %cmp422, label %for.cond425, label %for.cond444, !dbg !785

for.cond425:                                      ; preds = %if.then421, %for.cond425
  %indvars.iv1285 = phi i64 [ %indvars.iv.next1286, %for.cond425 ], [ %idxprom324, %if.then421 ]
  %indvars.iv.next1286 = add i64 %indvars.iv1285, -13, !dbg !787
  %arrayidx427 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1286, !dbg !787
  %58 = load i32* %arrayidx427, align 4, !dbg !787, !tbaa !145
  switch i32 %58, label %return [
    i32 13, label %for.cond425
    i32 12, label %return.loopexit1253
    i32 10, label %return.loopexit1253
  ], !dbg !787

for.cond444:                                      ; preds = %if.then421, %for.cond444
  %indvars.iv1287 = phi i64 [ %indvars.iv.next1288, %for.cond444 ], [ %idxprom324, %if.then421 ]
  %indvars.iv.next1288 = add i64 %indvars.iv1287, 13, !dbg !790
  %arrayidx446 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1288, !dbg !790
  %59 = load i32* %arrayidx446, align 4, !dbg !790, !tbaa !145
  switch i32 %59, label %return [
    i32 13, label %for.cond444
    i32 12, label %return.loopexit1255
    i32 10, label %return.loopexit1255
  ], !dbg !790

if.else462:                                       ; preds = %if.else415
  %arrayidx464 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom322, !dbg !793
  %60 = load i32* %arrayidx464, align 4, !dbg !793, !tbaa !145
  %arrayidx466 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom324, !dbg !793
  %61 = load i32* %arrayidx466, align 4, !dbg !793, !tbaa !145
  %cmp467 = icmp eq i32 %60, %61, !dbg !793
  br i1 %cmp467, label %if.then468, label %return, !dbg !793

if.then468:                                       ; preds = %if.else462
  %cmp469 = icmp sgt i32 %48, %1, !dbg !794
  br i1 %cmp469, label %for.cond472, label %for.cond491, !dbg !794

for.cond472:                                      ; preds = %if.then468, %for.cond472
  %indvars.iv1289 = phi i64 [ %indvars.iv.next1290, %for.cond472 ], [ %idxprom324, %if.then468 ]
  %indvars.iv.next1290 = add i64 %indvars.iv1289, -11, !dbg !796
  %arrayidx474 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1290, !dbg !796
  %62 = load i32* %arrayidx474, align 4, !dbg !796, !tbaa !145
  switch i32 %62, label %return [
    i32 13, label %for.cond472
    i32 12, label %return.loopexit1257
    i32 10, label %return.loopexit1257
  ], !dbg !796

for.cond491:                                      ; preds = %if.then468, %for.cond491
  %indvars.iv1291 = phi i64 [ %indvars.iv.next1292, %for.cond491 ], [ %idxprom324, %if.then468 ]
  %indvars.iv.next1292 = add i64 %indvars.iv1291, 11, !dbg !799
  %arrayidx493 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1292, !dbg !799
  %63 = load i32* %arrayidx493, align 4, !dbg !799, !tbaa !145
  switch i32 %63, label %return [
    i32 13, label %for.cond491
    i32 12, label %return.loopexit1259
    i32 10, label %return.loopexit1259
  ], !dbg !799

if.else513:                                       ; preds = %if.end
  switch i32 %4, label %sw.epilog840 [
    i32 1, label %sw.bb516
    i32 11, label %sw.bb528
    i32 7, label %sw.bb600
    i32 3, label %for.cond673.preheader
    i32 9, label %sw.bb685
    i32 5, label %sw.bb829
  ], !dbg !802

for.cond673.preheader:                            ; preds = %if.else513
  %64 = load i32* @bking_loc, align 4, !dbg !804, !tbaa !145
  br label %for.body675, !dbg !807

sw.bb516:                                         ; preds = %if.else513
  %add517 = add nsw i32 %0, 11, !dbg !808
  %idxprom518 = sext i32 %add517 to i64, !dbg !808
  %arrayidx519 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom518, !dbg !808
  %65 = load i32* %arrayidx519, align 4, !dbg !808, !tbaa !145
  %cmp520 = icmp eq i32 %65, 6, !dbg !808
  br i1 %cmp520, label %return, label %lor.lhs.false521, !dbg !808

lor.lhs.false521:                                 ; preds = %sw.bb516
  %add522 = add nsw i32 %0, 13, !dbg !808
  %idxprom523 = sext i32 %add522 to i64, !dbg !808
  %arrayidx524 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom523, !dbg !808
  %66 = load i32* %arrayidx524, align 4, !dbg !808, !tbaa !145
  %cmp525 = icmp eq i32 %66, 6, !dbg !808
  br i1 %cmp525, label %return, label %sw.epilog840, !dbg !808

sw.bb528:                                         ; preds = %if.else513
  %arrayidx530 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7, !dbg !809
  %67 = load i32* %arrayidx530, align 4, !dbg !809, !tbaa !145
  %68 = load i32* @bking_loc, align 4, !dbg !809, !tbaa !145
  %idxprom531 = sext i32 %68 to i64, !dbg !809
  %arrayidx532 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom531, !dbg !809
  %69 = load i32* %arrayidx532, align 4, !dbg !809, !tbaa !145
  %cmp533 = icmp eq i32 %67, %69, !dbg !809
  br i1 %cmp533, label %if.then534, label %if.else563, !dbg !809

if.then534:                                       ; preds = %sw.bb528
  %cmp535 = icmp slt i32 %68, %0, !dbg !810
  br i1 %cmp535, label %for.cond538, label %for.cond551, !dbg !810

for.cond538:                                      ; preds = %if.then534, %for.cond538
  %indvars.iv1343 = phi i64 [ %indvars.iv.next1344, %for.cond538 ], [ %idxprom531, %if.then534 ]
  %l.25.in = phi i32 [ %l.25, %for.cond538 ], [ %68, %if.then534 ]
  %indvars.iv.next1344 = add i64 %indvars.iv1343, 13, !dbg !812
  %l.25 = add nsw i32 %l.25.in, 13, !dbg !812
  %arrayidx540 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1344, !dbg !812
  %70 = load i32* %arrayidx540, align 4, !dbg !812, !tbaa !145
  %cmp541 = icmp eq i32 %70, 13, !dbg !812
  br i1 %cmp541, label %for.cond538, label %for.end545, !dbg !812

for.end545:                                       ; preds = %for.cond538
  %cmp546 = icmp eq i32 %l.25, %0, !dbg !815
  br i1 %cmp546, label %return, label %sw.epilog840, !dbg !815

for.cond551:                                      ; preds = %if.then534, %for.cond551
  %indvars.iv1345 = phi i64 [ %indvars.iv.next1346, %for.cond551 ], [ %idxprom531, %if.then534 ]
  %l.26.in = phi i32 [ %l.26, %for.cond551 ], [ %68, %if.then534 ]
  %indvars.iv.next1346 = add i64 %indvars.iv1345, -13, !dbg !816
  %l.26 = add nsw i32 %l.26.in, -13, !dbg !816
  %arrayidx553 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1346, !dbg !816
  %71 = load i32* %arrayidx553, align 4, !dbg !816, !tbaa !145
  %cmp554 = icmp eq i32 %71, 13, !dbg !816
  br i1 %cmp554, label %for.cond551, label %for.end558, !dbg !816

for.end558:                                       ; preds = %for.cond551
  %cmp559 = icmp eq i32 %l.26, %0, !dbg !819
  br i1 %cmp559, label %return, label %sw.epilog840, !dbg !819

if.else563:                                       ; preds = %sw.bb528
  %arrayidx565 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7, !dbg !820
  %72 = load i32* %arrayidx565, align 4, !dbg !820, !tbaa !145
  %arrayidx567 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom531, !dbg !820
  %73 = load i32* %arrayidx567, align 4, !dbg !820, !tbaa !145
  %cmp568 = icmp eq i32 %72, %73, !dbg !820
  br i1 %cmp568, label %if.then569, label %sw.epilog840, !dbg !820

if.then569:                                       ; preds = %if.else563
  %cmp570 = icmp slt i32 %68, %0, !dbg !821
  br i1 %cmp570, label %for.cond573, label %for.cond586, !dbg !821

for.cond573:                                      ; preds = %if.then569, %for.cond573
  %indvars.iv1347 = phi i64 [ %indvars.iv.next1348, %for.cond573 ], [ %idxprom531, %if.then569 ]
  %l.27.in = phi i32 [ %l.27, %for.cond573 ], [ %68, %if.then569 ]
  %indvars.iv.next1348 = add i64 %indvars.iv1347, 11, !dbg !823
  %l.27 = add nsw i32 %l.27.in, 11, !dbg !823
  %arrayidx575 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1348, !dbg !823
  %74 = load i32* %arrayidx575, align 4, !dbg !823, !tbaa !145
  %cmp576 = icmp eq i32 %74, 13, !dbg !823
  br i1 %cmp576, label %for.cond573, label %for.end580, !dbg !823

for.end580:                                       ; preds = %for.cond573
  %cmp581 = icmp eq i32 %l.27, %0, !dbg !826
  br i1 %cmp581, label %return, label %sw.epilog840, !dbg !826

for.cond586:                                      ; preds = %if.then569, %for.cond586
  %indvars.iv1349 = phi i64 [ %indvars.iv.next1350, %for.cond586 ], [ %idxprom531, %if.then569 ]
  %l.28.in = phi i32 [ %l.28, %for.cond586 ], [ %68, %if.then569 ]
  %indvars.iv.next1350 = add i64 %indvars.iv1349, -11, !dbg !827
  %l.28 = add nsw i32 %l.28.in, -11, !dbg !827
  %arrayidx588 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1350, !dbg !827
  %75 = load i32* %arrayidx588, align 4, !dbg !827, !tbaa !145
  %cmp589 = icmp eq i32 %75, 13, !dbg !827
  br i1 %cmp589, label %for.cond586, label %for.end593, !dbg !827

for.end593:                                       ; preds = %for.cond586
  %cmp594 = icmp eq i32 %l.28, %0, !dbg !830
  br i1 %cmp594, label %return, label %sw.epilog840, !dbg !830

sw.bb600:                                         ; preds = %if.else513
  %arrayidx602 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7, !dbg !831
  %76 = load i32* %arrayidx602, align 4, !dbg !831, !tbaa !145
  %77 = load i32* @bking_loc, align 4, !dbg !831, !tbaa !145
  %idxprom603 = sext i32 %77 to i64, !dbg !831
  %arrayidx604 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom603, !dbg !831
  %78 = load i32* %arrayidx604, align 4, !dbg !831, !tbaa !145
  %cmp605 = icmp eq i32 %76, %78, !dbg !831
  br i1 %cmp605, label %if.then606, label %if.else635, !dbg !831

if.then606:                                       ; preds = %sw.bb600
  %cmp607 = icmp slt i32 %77, %0, !dbg !832
  br i1 %cmp607, label %for.cond610, label %for.cond623, !dbg !832

for.cond610:                                      ; preds = %if.then606, %for.cond610
  %indvars.iv1351 = phi i64 [ %indvars.iv.next1352, %for.cond610 ], [ %idxprom603, %if.then606 ]
  %l.29.in = phi i32 [ %l.29, %for.cond610 ], [ %77, %if.then606 ]
  %indvars.iv.next1352 = add i64 %indvars.iv1351, 12, !dbg !834
  %l.29 = add nsw i32 %l.29.in, 12, !dbg !834
  %arrayidx612 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1352, !dbg !834
  %79 = load i32* %arrayidx612, align 4, !dbg !834, !tbaa !145
  %cmp613 = icmp eq i32 %79, 13, !dbg !834
  br i1 %cmp613, label %for.cond610, label %for.end617, !dbg !834

for.end617:                                       ; preds = %for.cond610
  %cmp618 = icmp eq i32 %l.29, %0, !dbg !837
  br i1 %cmp618, label %return, label %sw.epilog840, !dbg !837

for.cond623:                                      ; preds = %if.then606, %for.cond623
  %indvars.iv1353 = phi i64 [ %indvars.iv.next1354, %for.cond623 ], [ %idxprom603, %if.then606 ]
  %l.30.in = phi i32 [ %l.30, %for.cond623 ], [ %77, %if.then606 ]
  %indvars.iv.next1354 = add i64 %indvars.iv1353, -12, !dbg !838
  %l.30 = add nsw i32 %l.30.in, -12, !dbg !838
  %arrayidx625 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1354, !dbg !838
  %80 = load i32* %arrayidx625, align 4, !dbg !838, !tbaa !145
  %cmp626 = icmp eq i32 %80, 13, !dbg !838
  br i1 %cmp626, label %for.cond623, label %for.end630, !dbg !838

for.end630:                                       ; preds = %for.cond623
  %cmp631 = icmp eq i32 %l.30, %0, !dbg !841
  br i1 %cmp631, label %return, label %sw.epilog840, !dbg !841

if.else635:                                       ; preds = %sw.bb600
  %arrayidx637 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7, !dbg !842
  %81 = load i32* %arrayidx637, align 4, !dbg !842, !tbaa !145
  %arrayidx639 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom603, !dbg !842
  %82 = load i32* %arrayidx639, align 4, !dbg !842, !tbaa !145
  %cmp640 = icmp eq i32 %81, %82, !dbg !842
  br i1 %cmp640, label %if.then641, label %sw.epilog840, !dbg !842

if.then641:                                       ; preds = %if.else635
  %cmp642 = icmp slt i32 %77, %0, !dbg !843
  br i1 %cmp642, label %for.cond645, label %for.cond658, !dbg !843

for.cond645:                                      ; preds = %if.then641, %for.cond645
  %indvars.iv1355 = phi i64 [ %indvars.iv.next1356, %for.cond645 ], [ %idxprom603, %if.then641 ]
  %l.31.in = phi i32 [ %l.31, %for.cond645 ], [ %77, %if.then641 ]
  %indvars.iv.next1356 = add i64 %indvars.iv1355, 1, !dbg !845
  %l.31 = add nsw i32 %l.31.in, 1, !dbg !845
  %arrayidx647 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1356, !dbg !845
  %83 = load i32* %arrayidx647, align 4, !dbg !845, !tbaa !145
  %cmp648 = icmp eq i32 %83, 13, !dbg !845
  br i1 %cmp648, label %for.cond645, label %for.end652, !dbg !845

for.end652:                                       ; preds = %for.cond645
  %cmp653 = icmp eq i32 %l.31, %0, !dbg !848
  br i1 %cmp653, label %return, label %sw.epilog840, !dbg !848

for.cond658:                                      ; preds = %if.then641, %for.cond658
  %indvars.iv1357 = phi i64 [ %indvars.iv.next1358, %for.cond658 ], [ %idxprom603, %if.then641 ]
  %l.32.in = phi i32 [ %l.32, %for.cond658 ], [ %77, %if.then641 ]
  %indvars.iv.next1358 = add i64 %indvars.iv1357, -1, !dbg !849
  %l.32 = add nsw i32 %l.32.in, -1, !dbg !849
  %arrayidx660 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1358, !dbg !849
  %84 = load i32* %arrayidx660, align 4, !dbg !849, !tbaa !145
  %cmp661 = icmp eq i32 %84, 13, !dbg !849
  br i1 %cmp661, label %for.cond658, label %for.end665, !dbg !849

for.end665:                                       ; preds = %for.cond658
  %cmp666 = icmp eq i32 %l.32, %0, !dbg !852
  br i1 %cmp666, label %return, label %sw.epilog840, !dbg !852

for.cond673:                                      ; preds = %for.body675
  %85 = trunc i64 %indvars.iv.next1360 to i32, !dbg !807
  %cmp674 = icmp slt i32 %85, 8, !dbg !807
  br i1 %cmp674, label %for.body675, label %sw.epilog840, !dbg !807

for.body675:                                      ; preds = %for.cond673.preheader, %for.cond673
  %indvars.iv1359 = phi i64 [ 0, %for.cond673.preheader ], [ %indvars.iv.next1360, %for.cond673 ]
  %arrayidx677 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv1359, !dbg !804
  %86 = load i32* %arrayidx677, align 4, !dbg !804, !tbaa !145
  %add678 = add nsw i32 %86, %64, !dbg !804
  %cmp679 = icmp eq i32 %add678, %0, !dbg !804
  %indvars.iv.next1360 = add i64 %indvars.iv1359, 1, !dbg !807
  br i1 %cmp679, label %return, label %for.cond673, !dbg !804

sw.bb685:                                         ; preds = %if.else513
  %arrayidx687 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7, !dbg !853
  %87 = load i32* %arrayidx687, align 4, !dbg !853, !tbaa !145
  %88 = load i32* @bking_loc, align 4, !dbg !853, !tbaa !145
  %idxprom688 = sext i32 %88 to i64, !dbg !853
  %arrayidx689 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom688, !dbg !853
  %89 = load i32* %arrayidx689, align 4, !dbg !853, !tbaa !145
  %cmp690 = icmp eq i32 %87, %89, !dbg !853
  br i1 %cmp690, label %if.then691, label %if.else720, !dbg !853

if.then691:                                       ; preds = %sw.bb685
  %cmp692 = icmp slt i32 %88, %0, !dbg !854
  br i1 %cmp692, label %for.cond695, label %for.cond708, !dbg !854

for.cond695:                                      ; preds = %if.then691, %for.cond695
  %indvars.iv1361 = phi i64 [ %indvars.iv.next1362, %for.cond695 ], [ %idxprom688, %if.then691 ]
  %l.34.in = phi i32 [ %l.34, %for.cond695 ], [ %88, %if.then691 ]
  %indvars.iv.next1362 = add i64 %indvars.iv1361, 12, !dbg !856
  %l.34 = add nsw i32 %l.34.in, 12, !dbg !856
  %arrayidx697 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1362, !dbg !856
  %90 = load i32* %arrayidx697, align 4, !dbg !856, !tbaa !145
  %cmp698 = icmp eq i32 %90, 13, !dbg !856
  br i1 %cmp698, label %for.cond695, label %for.end702, !dbg !856

for.end702:                                       ; preds = %for.cond695
  %cmp703 = icmp eq i32 %l.34, %0, !dbg !859
  br i1 %cmp703, label %return, label %sw.epilog840, !dbg !859

for.cond708:                                      ; preds = %if.then691, %for.cond708
  %indvars.iv1363 = phi i64 [ %indvars.iv.next1364, %for.cond708 ], [ %idxprom688, %if.then691 ]
  %l.35.in = phi i32 [ %l.35, %for.cond708 ], [ %88, %if.then691 ]
  %indvars.iv.next1364 = add i64 %indvars.iv1363, -12, !dbg !860
  %l.35 = add nsw i32 %l.35.in, -12, !dbg !860
  %arrayidx710 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1364, !dbg !860
  %91 = load i32* %arrayidx710, align 4, !dbg !860, !tbaa !145
  %cmp711 = icmp eq i32 %91, 13, !dbg !860
  br i1 %cmp711, label %for.cond708, label %for.end715, !dbg !860

for.end715:                                       ; preds = %for.cond708
  %cmp716 = icmp eq i32 %l.35, %0, !dbg !863
  br i1 %cmp716, label %return, label %sw.epilog840, !dbg !863

if.else720:                                       ; preds = %sw.bb685
  %arrayidx722 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7, !dbg !864
  %92 = load i32* %arrayidx722, align 4, !dbg !864, !tbaa !145
  %arrayidx724 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom688, !dbg !864
  %93 = load i32* %arrayidx724, align 4, !dbg !864, !tbaa !145
  %cmp725 = icmp eq i32 %92, %93, !dbg !864
  br i1 %cmp725, label %if.then726, label %if.else755, !dbg !864

if.then726:                                       ; preds = %if.else720
  %cmp727 = icmp slt i32 %88, %0, !dbg !865
  br i1 %cmp727, label %for.cond730, label %for.cond743, !dbg !865

for.cond730:                                      ; preds = %if.then726, %for.cond730
  %indvars.iv1365 = phi i64 [ %indvars.iv.next1366, %for.cond730 ], [ %idxprom688, %if.then726 ]
  %l.36.in = phi i32 [ %l.36, %for.cond730 ], [ %88, %if.then726 ]
  %indvars.iv.next1366 = add i64 %indvars.iv1365, 1, !dbg !867
  %l.36 = add nsw i32 %l.36.in, 1, !dbg !867
  %arrayidx732 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1366, !dbg !867
  %94 = load i32* %arrayidx732, align 4, !dbg !867, !tbaa !145
  %cmp733 = icmp eq i32 %94, 13, !dbg !867
  br i1 %cmp733, label %for.cond730, label %for.end737, !dbg !867

for.end737:                                       ; preds = %for.cond730
  %cmp738 = icmp eq i32 %l.36, %0, !dbg !870
  br i1 %cmp738, label %return, label %sw.epilog840, !dbg !870

for.cond743:                                      ; preds = %if.then726, %for.cond743
  %indvars.iv1367 = phi i64 [ %indvars.iv.next1368, %for.cond743 ], [ %idxprom688, %if.then726 ]
  %l.37.in = phi i32 [ %l.37, %for.cond743 ], [ %88, %if.then726 ]
  %indvars.iv.next1368 = add i64 %indvars.iv1367, -1, !dbg !871
  %l.37 = add nsw i32 %l.37.in, -1, !dbg !871
  %arrayidx745 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1368, !dbg !871
  %95 = load i32* %arrayidx745, align 4, !dbg !871, !tbaa !145
  %cmp746 = icmp eq i32 %95, 13, !dbg !871
  br i1 %cmp746, label %for.cond743, label %for.end750, !dbg !871

for.end750:                                       ; preds = %for.cond743
  %cmp751 = icmp eq i32 %l.37, %0, !dbg !874
  br i1 %cmp751, label %return, label %sw.epilog840, !dbg !874

if.else755:                                       ; preds = %if.else720
  %arrayidx757 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7, !dbg !875
  %96 = load i32* %arrayidx757, align 4, !dbg !875, !tbaa !145
  %arrayidx759 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom688, !dbg !875
  %97 = load i32* %arrayidx759, align 4, !dbg !875, !tbaa !145
  %cmp760 = icmp eq i32 %96, %97, !dbg !875
  br i1 %cmp760, label %if.then761, label %if.else790, !dbg !875

if.then761:                                       ; preds = %if.else755
  %cmp762 = icmp slt i32 %88, %0, !dbg !876
  br i1 %cmp762, label %for.cond765, label %for.cond778, !dbg !876

for.cond765:                                      ; preds = %if.then761, %for.cond765
  %indvars.iv1369 = phi i64 [ %indvars.iv.next1370, %for.cond765 ], [ %idxprom688, %if.then761 ]
  %l.38.in = phi i32 [ %l.38, %for.cond765 ], [ %88, %if.then761 ]
  %indvars.iv.next1370 = add i64 %indvars.iv1369, 13, !dbg !878
  %l.38 = add nsw i32 %l.38.in, 13, !dbg !878
  %arrayidx767 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1370, !dbg !878
  %98 = load i32* %arrayidx767, align 4, !dbg !878, !tbaa !145
  %cmp768 = icmp eq i32 %98, 13, !dbg !878
  br i1 %cmp768, label %for.cond765, label %for.end772, !dbg !878

for.end772:                                       ; preds = %for.cond765
  %cmp773 = icmp eq i32 %l.38, %0, !dbg !881
  br i1 %cmp773, label %return, label %sw.epilog840, !dbg !881

for.cond778:                                      ; preds = %if.then761, %for.cond778
  %indvars.iv1371 = phi i64 [ %indvars.iv.next1372, %for.cond778 ], [ %idxprom688, %if.then761 ]
  %l.39.in = phi i32 [ %l.39, %for.cond778 ], [ %88, %if.then761 ]
  %indvars.iv.next1372 = add i64 %indvars.iv1371, -13, !dbg !882
  %l.39 = add nsw i32 %l.39.in, -13, !dbg !882
  %arrayidx780 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1372, !dbg !882
  %99 = load i32* %arrayidx780, align 4, !dbg !882, !tbaa !145
  %cmp781 = icmp eq i32 %99, 13, !dbg !882
  br i1 %cmp781, label %for.cond778, label %for.end785, !dbg !882

for.end785:                                       ; preds = %for.cond778
  %cmp786 = icmp eq i32 %l.39, %0, !dbg !885
  br i1 %cmp786, label %return, label %sw.epilog840, !dbg !885

if.else790:                                       ; preds = %if.else755
  %arrayidx792 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7, !dbg !886
  %100 = load i32* %arrayidx792, align 4, !dbg !886, !tbaa !145
  %arrayidx794 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom688, !dbg !886
  %101 = load i32* %arrayidx794, align 4, !dbg !886, !tbaa !145
  %cmp795 = icmp eq i32 %100, %101, !dbg !886
  br i1 %cmp795, label %if.then796, label %sw.epilog840, !dbg !886

if.then796:                                       ; preds = %if.else790
  %cmp797 = icmp slt i32 %88, %0, !dbg !887
  br i1 %cmp797, label %for.cond800, label %for.cond813, !dbg !887

for.cond800:                                      ; preds = %if.then796, %for.cond800
  %indvars.iv1373 = phi i64 [ %indvars.iv.next1374, %for.cond800 ], [ %idxprom688, %if.then796 ]
  %l.40.in = phi i32 [ %l.40, %for.cond800 ], [ %88, %if.then796 ]
  %indvars.iv.next1374 = add i64 %indvars.iv1373, 11, !dbg !889
  %l.40 = add nsw i32 %l.40.in, 11, !dbg !889
  %arrayidx802 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1374, !dbg !889
  %102 = load i32* %arrayidx802, align 4, !dbg !889, !tbaa !145
  %cmp803 = icmp eq i32 %102, 13, !dbg !889
  br i1 %cmp803, label %for.cond800, label %for.end807, !dbg !889

for.end807:                                       ; preds = %for.cond800
  %cmp808 = icmp eq i32 %l.40, %0, !dbg !892
  br i1 %cmp808, label %return, label %sw.epilog840, !dbg !892

for.cond813:                                      ; preds = %if.then796, %for.cond813
  %indvars.iv1375 = phi i64 [ %indvars.iv.next1376, %for.cond813 ], [ %idxprom688, %if.then796 ]
  %l.41.in = phi i32 [ %l.41, %for.cond813 ], [ %88, %if.then796 ]
  %indvars.iv.next1376 = add i64 %indvars.iv1375, -11, !dbg !893
  %l.41 = add nsw i32 %l.41.in, -11, !dbg !893
  %arrayidx815 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1376, !dbg !893
  %103 = load i32* %arrayidx815, align 4, !dbg !893, !tbaa !145
  %cmp816 = icmp eq i32 %103, 13, !dbg !893
  br i1 %cmp816, label %for.cond813, label %for.end820, !dbg !893

for.end820:                                       ; preds = %for.cond813
  %cmp821 = icmp eq i32 %l.41, %0, !dbg !896
  br i1 %cmp821, label %return, label %sw.epilog840, !dbg !896

sw.bb829:                                         ; preds = %if.else513
  %castled832 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4, !dbg !897
  %104 = load i32* %castled832, align 4, !dbg !897, !tbaa !145
  %tobool833 = icmp eq i32 %104, 0, !dbg !897
  br i1 %tobool833, label %sw.epilog840, label %if.then834, !dbg !897

if.then834:                                       ; preds = %sw.bb829
  %105 = load i32* @bking_loc, align 4, !dbg !898, !tbaa !145
  %call835 = tail call i32 @is_attacked(i32 %105, i32 1) #4, !dbg !898
  %not.tobool836 = icmp ne i32 %call835, 0, !dbg !900
  %.1245 = zext i1 %not.tobool836 to i32, !dbg !900
  br label %return, !dbg !900

sw.epilog840:                                     ; preds = %for.cond673, %sw.bb829, %for.end715, %for.end702, %for.end785, %for.end772, %for.end807, %for.end820, %if.else790, %for.end737, %for.end750, %for.end630, %for.end617, %for.end652, %for.end665, %if.else635, %for.end558, %for.end545, %for.end580, %for.end593, %if.else563, %lor.lhs.false521, %if.else513
  %cmp841 = icmp eq i32 %1, 0, !dbg !901
  br i1 %cmp841, label %return, label %if.end843, !dbg !901

if.end843:                                        ; preds = %sw.epilog840
  %idxprom844 = sext i32 %1 to i64, !dbg !902
  %arrayidx845 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom844, !dbg !902
  %106 = load i32* %arrayidx845, align 4, !dbg !902, !tbaa !145
  %107 = load i32* @bking_loc, align 4, !dbg !902, !tbaa !145
  %idxprom846 = sext i32 %107 to i64, !dbg !902
  %arrayidx847 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom846, !dbg !902
  %108 = load i32* %arrayidx847, align 4, !dbg !902, !tbaa !145
  %cmp848 = icmp eq i32 %106, %108, !dbg !902
  br i1 %cmp848, label %if.then849, label %if.else890, !dbg !902

if.then849:                                       ; preds = %if.end843
  %cmp850 = icmp sgt i32 %107, %1, !dbg !903
  br i1 %cmp850, label %for.cond853, label %for.cond872, !dbg !903

for.cond853:                                      ; preds = %if.then849, %for.cond853
  %indvars.iv1327 = phi i64 [ %indvars.iv.next1328, %for.cond853 ], [ %idxprom846, %if.then849 ]
  %indvars.iv.next1328 = add i64 %indvars.iv1327, -1, !dbg !905
  %arrayidx855 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1328, !dbg !905
  %109 = load i32* %arrayidx855, align 4, !dbg !905, !tbaa !145
  switch i32 %109, label %return [
    i32 13, label %for.cond853
    i32 7, label %return.loopexit1262
    i32 9, label %return.loopexit1262
  ], !dbg !905

for.cond872:                                      ; preds = %if.then849, %for.cond872
  %indvars.iv1329 = phi i64 [ %indvars.iv.next1330, %for.cond872 ], [ %idxprom846, %if.then849 ]
  %indvars.iv.next1330 = add i64 %indvars.iv1329, 1, !dbg !908
  %arrayidx874 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1330, !dbg !908
  %110 = load i32* %arrayidx874, align 4, !dbg !908, !tbaa !145
  switch i32 %110, label %return [
    i32 13, label %for.cond872
    i32 7, label %return.loopexit1264
    i32 9, label %return.loopexit1264
  ], !dbg !908

if.else890:                                       ; preds = %if.end843
  %arrayidx892 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom844, !dbg !911
  %111 = load i32* %arrayidx892, align 4, !dbg !911, !tbaa !145
  %arrayidx894 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom846, !dbg !911
  %112 = load i32* %arrayidx894, align 4, !dbg !911, !tbaa !145
  %cmp895 = icmp eq i32 %111, %112, !dbg !911
  br i1 %cmp895, label %if.then896, label %if.else937, !dbg !911

if.then896:                                       ; preds = %if.else890
  %cmp897 = icmp sgt i32 %107, %1, !dbg !912
  br i1 %cmp897, label %for.cond900, label %for.cond919, !dbg !912

for.cond900:                                      ; preds = %if.then896, %for.cond900
  %indvars.iv1331 = phi i64 [ %indvars.iv.next1332, %for.cond900 ], [ %idxprom846, %if.then896 ]
  %indvars.iv.next1332 = add i64 %indvars.iv1331, -12, !dbg !914
  %arrayidx902 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1332, !dbg !914
  %113 = load i32* %arrayidx902, align 4, !dbg !914, !tbaa !145
  switch i32 %113, label %return [
    i32 13, label %for.cond900
    i32 7, label %return.loopexit1266
    i32 9, label %return.loopexit1266
  ], !dbg !914

for.cond919:                                      ; preds = %if.then896, %for.cond919
  %indvars.iv1333 = phi i64 [ %indvars.iv.next1334, %for.cond919 ], [ %idxprom846, %if.then896 ]
  %indvars.iv.next1334 = add i64 %indvars.iv1333, 12, !dbg !917
  %arrayidx921 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1334, !dbg !917
  %114 = load i32* %arrayidx921, align 4, !dbg !917, !tbaa !145
  switch i32 %114, label %return [
    i32 13, label %for.cond919
    i32 7, label %return.loopexit1268
    i32 9, label %return.loopexit1268
  ], !dbg !917

if.else937:                                       ; preds = %if.else890
  %arrayidx939 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom844, !dbg !920
  %115 = load i32* %arrayidx939, align 4, !dbg !920, !tbaa !145
  %arrayidx941 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom846, !dbg !920
  %116 = load i32* %arrayidx941, align 4, !dbg !920, !tbaa !145
  %cmp942 = icmp eq i32 %115, %116, !dbg !920
  br i1 %cmp942, label %if.then943, label %if.else984, !dbg !920

if.then943:                                       ; preds = %if.else937
  %cmp944 = icmp sgt i32 %107, %1, !dbg !921
  br i1 %cmp944, label %for.cond947, label %for.cond966, !dbg !921

for.cond947:                                      ; preds = %if.then943, %for.cond947
  %indvars.iv1335 = phi i64 [ %indvars.iv.next1336, %for.cond947 ], [ %idxprom846, %if.then943 ]
  %indvars.iv.next1336 = add i64 %indvars.iv1335, -13, !dbg !923
  %arrayidx949 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1336, !dbg !923
  %117 = load i32* %arrayidx949, align 4, !dbg !923, !tbaa !145
  switch i32 %117, label %return [
    i32 13, label %for.cond947
    i32 11, label %return.loopexit1270
    i32 9, label %return.loopexit1270
  ], !dbg !923

for.cond966:                                      ; preds = %if.then943, %for.cond966
  %indvars.iv1337 = phi i64 [ %indvars.iv.next1338, %for.cond966 ], [ %idxprom846, %if.then943 ]
  %indvars.iv.next1338 = add i64 %indvars.iv1337, 13, !dbg !926
  %arrayidx968 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1338, !dbg !926
  %118 = load i32* %arrayidx968, align 4, !dbg !926, !tbaa !145
  switch i32 %118, label %return [
    i32 13, label %for.cond966
    i32 11, label %return.loopexit1272
    i32 9, label %return.loopexit1272
  ], !dbg !926

if.else984:                                       ; preds = %if.else937
  %arrayidx986 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom844, !dbg !929
  %119 = load i32* %arrayidx986, align 4, !dbg !929, !tbaa !145
  %arrayidx988 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom846, !dbg !929
  %120 = load i32* %arrayidx988, align 4, !dbg !929, !tbaa !145
  %cmp989 = icmp eq i32 %119, %120, !dbg !929
  br i1 %cmp989, label %if.then990, label %return, !dbg !929

if.then990:                                       ; preds = %if.else984
  %cmp991 = icmp sgt i32 %107, %1, !dbg !930
  br i1 %cmp991, label %for.cond994, label %for.cond1013, !dbg !930

for.cond994:                                      ; preds = %if.then990, %for.cond994
  %indvars.iv1339 = phi i64 [ %indvars.iv.next1340, %for.cond994 ], [ %idxprom846, %if.then990 ]
  %indvars.iv.next1340 = add i64 %indvars.iv1339, -11, !dbg !932
  %arrayidx996 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1340, !dbg !932
  %121 = load i32* %arrayidx996, align 4, !dbg !932, !tbaa !145
  switch i32 %121, label %return [
    i32 13, label %for.cond994
    i32 11, label %return.loopexit1274
    i32 9, label %return.loopexit1274
  ], !dbg !932

for.cond1013:                                     ; preds = %if.then990, %for.cond1013
  %indvars.iv1341 = phi i64 [ %indvars.iv.next1342, %for.cond1013 ], [ %idxprom846, %if.then990 ]
  %indvars.iv.next1342 = add i64 %indvars.iv1341, 11, !dbg !935
  %arrayidx1015 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1342, !dbg !935
  %122 = load i32* %arrayidx1015, align 4, !dbg !935, !tbaa !145
  switch i32 %122, label %return [
    i32 13, label %for.cond1013
    i32 11, label %return.loopexit1276
    i32 9, label %return.loopexit1276
  ], !dbg !935

return.loopexit:                                  ; preds = %for.cond331, %for.cond331
  br label %return

return.loopexit1247:                              ; preds = %for.cond350, %for.cond350
  br label %return

return.loopexit1249:                              ; preds = %for.cond378, %for.cond378
  br label %return

return.loopexit1251:                              ; preds = %for.cond397, %for.cond397
  br label %return

return.loopexit1253:                              ; preds = %for.cond425, %for.cond425
  br label %return

return.loopexit1255:                              ; preds = %for.cond444, %for.cond444
  br label %return

return.loopexit1257:                              ; preds = %for.cond472, %for.cond472
  br label %return

return.loopexit1259:                              ; preds = %for.cond491, %for.cond491
  br label %return

return.loopexit1262:                              ; preds = %for.cond853, %for.cond853
  br label %return

return.loopexit1264:                              ; preds = %for.cond872, %for.cond872
  br label %return

return.loopexit1266:                              ; preds = %for.cond900, %for.cond900
  br label %return

return.loopexit1268:                              ; preds = %for.cond919, %for.cond919
  br label %return

return.loopexit1270:                              ; preds = %for.cond947, %for.cond947
  br label %return

return.loopexit1272:                              ; preds = %for.cond966, %for.cond966
  br label %return

return.loopexit1274:                              ; preds = %for.cond994, %for.cond994
  br label %return

return.loopexit1276:                              ; preds = %for.cond1013, %for.cond1013
  br label %return

return:                                           ; preds = %for.body675, %for.body157, %if.else984, %for.cond853, %for.cond872, %for.cond900, %for.cond919, %for.cond947, %for.cond966, %for.cond994, %for.cond1013, %if.else462, %for.cond331, %for.cond350, %for.cond378, %for.cond397, %for.cond425, %for.cond444, %for.cond472, %for.cond491, %return.loopexit1276, %return.loopexit1274, %return.loopexit1272, %return.loopexit1270, %return.loopexit1268, %return.loopexit1266, %return.loopexit1264, %return.loopexit1262, %return.loopexit1259, %return.loopexit1257, %return.loopexit1255, %return.loopexit1253, %return.loopexit1251, %return.loopexit1249, %return.loopexit1247, %return.loopexit, %sw.epilog840, %if.then834, %for.end820, %for.end807, %for.end785, %for.end772, %for.end750, %for.end737, %for.end715, %for.end702, %for.end665, %for.end652, %for.end630, %for.end617, %for.end593, %for.end580, %for.end558, %for.end545, %sw.bb516, %lor.lhs.false521, %sw.epilog, %if.then314, %for.end302, %for.end289, %for.end267, %for.end254, %for.end232, %for.end219, %for.end197, %for.end184, %for.end147, %for.end135, %for.end114, %for.end101, %for.end77, %for.end64, %for.end42, %for.end, %sw.bb, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %lor.lhs.false ], [ 1, %sw.bb ], [ 1, %for.end ], [ 1, %for.end42 ], [ 1, %for.end64 ], [ 1, %for.end77 ], [ 1, %for.end101 ], [ 1, %for.end114 ], [ 1, %for.end135 ], [ 1, %for.end147 ], [ 1, %for.end184 ], [ 1, %for.end197 ], [ 1, %for.end219 ], [ 1, %for.end232 ], [ 1, %for.end254 ], [ 1, %for.end267 ], [ 1, %for.end289 ], [ 1, %for.end302 ], [ %., %if.then314 ], [ 0, %sw.epilog ], [ 1, %lor.lhs.false521 ], [ 1, %sw.bb516 ], [ 1, %for.end545 ], [ 1, %for.end558 ], [ 1, %for.end580 ], [ 1, %for.end593 ], [ 1, %for.end617 ], [ 1, %for.end630 ], [ 1, %for.end652 ], [ 1, %for.end665 ], [ 1, %for.end702 ], [ 1, %for.end715 ], [ 1, %for.end737 ], [ 1, %for.end750 ], [ 1, %for.end772 ], [ 1, %for.end785 ], [ 1, %for.end807 ], [ 1, %for.end820 ], [ %.1245, %if.then834 ], [ 0, %sw.epilog840 ], [ 1, %return.loopexit ], [ 1, %return.loopexit1247 ], [ 1, %return.loopexit1249 ], [ 1, %return.loopexit1251 ], [ 1, %return.loopexit1253 ], [ 1, %return.loopexit1255 ], [ 1, %return.loopexit1257 ], [ 1, %return.loopexit1259 ], [ 1, %return.loopexit1262 ], [ 1, %return.loopexit1264 ], [ 1, %return.loopexit1266 ], [ 1, %return.loopexit1268 ], [ 1, %return.loopexit1270 ], [ 1, %return.loopexit1272 ], [ 1, %return.loopexit1274 ], [ 1, %return.loopexit1276 ], [ 0, %for.cond491 ], [ 0, %for.cond472 ], [ 0, %for.cond444 ], [ 0, %for.cond425 ], [ 0, %for.cond397 ], [ 0, %for.cond378 ], [ 0, %for.cond350 ], [ 0, %for.cond331 ], [ 0, %if.else462 ], [ 0, %for.cond1013 ], [ 0, %for.cond994 ], [ 0, %for.cond966 ], [ 0, %for.cond947 ], [ 0, %for.cond919 ], [ 0, %for.cond900 ], [ 0, %for.cond872 ], [ 0, %for.cond853 ], [ 0, %if.else984 ], [ 1, %for.body157 ], [ 1, %for.body675 ]
  ret i32 %retval.0, !dbg !938
}

; Function Attrs: nounwind optsize uwtable
define i32 @extended_in_check() #0 {
entry:
  %0 = load i32* @Variant, align 4, !dbg !939, !tbaa !145
  %cmp = icmp eq i32 %0, 3, !dbg !939
  br i1 %cmp, label %return, label %if.end, !dbg !939

if.end:                                           ; preds = %entry
  %1 = load i32* @white_to_move, align 4, !dbg !940, !tbaa !145
  %cmp1 = icmp eq i32 %1, 1, !dbg !940
  br i1 %cmp1, label %if.then2, label %if.else81, !dbg !940

if.then2:                                         ; preds = %if.end
  %2 = load i32* @wking_loc, align 4, !dbg !941, !tbaa !145
  %sub = add nsw i32 %2, -12, !dbg !941
  %idxprom = sext i32 %sub to i64, !dbg !941
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom, !dbg !941
  %3 = load i32* %arrayidx, align 4, !dbg !941, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !59), !dbg !941
  %4 = and i32 %3, -3, !dbg !943
  %5 = icmp eq i32 %4, 8, !dbg !943
  br i1 %5, label %return, label %if.end6, !dbg !943

if.end6:                                          ; preds = %if.then2
  %sub7 = add nsw i32 %2, -1, !dbg !944
  %idxprom8 = sext i32 %sub7 to i64, !dbg !944
  %arrayidx9 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom8, !dbg !944
  %6 = load i32* %arrayidx9, align 4, !dbg !944, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !59), !dbg !944
  %7 = and i32 %6, -3, !dbg !945
  %8 = icmp eq i32 %7, 8, !dbg !945
  br i1 %8, label %return, label %if.end14, !dbg !945

if.end14:                                         ; preds = %if.end6
  %add = add nsw i32 %2, 1, !dbg !946
  %idxprom15 = sext i32 %add to i64, !dbg !946
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15, !dbg !946
  %9 = load i32* %arrayidx16, align 4, !dbg !946, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !59), !dbg !946
  %10 = and i32 %9, -3, !dbg !947
  %11 = icmp eq i32 %10, 8, !dbg !947
  br i1 %11, label %return, label %if.end21, !dbg !947

if.end21:                                         ; preds = %if.end14
  %add22 = add nsw i32 %2, 12, !dbg !948
  %idxprom23 = sext i32 %add22 to i64, !dbg !948
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom23, !dbg !948
  %12 = load i32* %arrayidx24, align 4, !dbg !948, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !59), !dbg !948
  %13 = and i32 %12, -3, !dbg !949
  %14 = icmp eq i32 %13, 8, !dbg !949
  br i1 %14, label %return, label %if.end29, !dbg !949

if.end29:                                         ; preds = %if.end21
  %add30 = add nsw i32 %2, 13, !dbg !950
  %idxprom31 = sext i32 %add30 to i64, !dbg !950
  %arrayidx32 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom31, !dbg !950
  %15 = load i32* %arrayidx32, align 4, !dbg !950, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !59), !dbg !950
  switch i32 %15, label %if.end39 [
    i32 12, label %return
    i32 10, label %return
    i32 2, label %return
  ], !dbg !951

if.end39:                                         ; preds = %if.end29
  %add40 = add nsw i32 %2, 11, !dbg !952
  %idxprom41 = sext i32 %add40 to i64, !dbg !952
  %arrayidx42 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom41, !dbg !952
  %16 = load i32* %arrayidx42, align 4, !dbg !952, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !59), !dbg !952
  switch i32 %16, label %if.end49 [
    i32 12, label %return
    i32 10, label %return
    i32 2, label %return
  ], !dbg !953

if.end49:                                         ; preds = %if.end39
  %sub50 = add nsw i32 %2, -11, !dbg !954
  %idxprom51 = sext i32 %sub50 to i64, !dbg !954
  %arrayidx52 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom51, !dbg !954
  %17 = load i32* %arrayidx52, align 4, !dbg !954, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !59), !dbg !954
  switch i32 %17, label %if.end57 [
    i32 12, label %return
    i32 10, label %return
  ], !dbg !955

if.end57:                                         ; preds = %if.end49
  %sub58 = add nsw i32 %2, -13, !dbg !956
  %idxprom59 = sext i32 %sub58 to i64, !dbg !956
  %arrayidx60 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom59, !dbg !956
  %18 = load i32* %arrayidx60, align 4, !dbg !956, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !59), !dbg !956
  switch i32 %18, label %for.body [
    i32 12, label %return
    i32 10, label %return
  ], !dbg !957

for.cond:                                         ; preds = %for.body
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !958
  %cmp66 = icmp slt i32 %19, 8, !dbg !958
  br i1 %cmp66, label %for.body, label %for.end, !dbg !958

for.body:                                         ; preds = %if.end57, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end57 ]
  %arrayidx68 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv, !dbg !960
  %20 = load i32* %arrayidx68, align 4, !dbg !960, !tbaa !145
  %add69 = add nsw i32 %20, %2, !dbg !960
  %idxprom70 = sext i32 %add69 to i64, !dbg !960
  %arrayidx71 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom70, !dbg !960
  %21 = load i32* %arrayidx71, align 4, !dbg !960, !tbaa !145
  %cmp72 = icmp eq i32 %21, 4, !dbg !960
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !958
  br i1 %cmp72, label %return, label %for.cond, !dbg !960

for.end:                                          ; preds = %for.cond
  %call = tail call i32 @is_attacked(i32 %2, i32 0) #4, !dbg !962
  %tobool = icmp eq i32 %call, 0, !dbg !962
  br i1 %tobool, label %return, label %if.then75, !dbg !962

if.then75:                                        ; preds = %for.end
  %22 = load i32* @Variant, align 4, !dbg !963, !tbaa !145
  switch i32 %22, label %if.else [
    i32 4, label %return
    i32 2, label %return
  ], !dbg !963

if.else:                                          ; preds = %if.then75
  br label %return, !dbg !965

if.else81:                                        ; preds = %if.end
  %23 = load i32* @bking_loc, align 4, !dbg !966, !tbaa !145
  %sub82 = add nsw i32 %23, -12, !dbg !966
  %idxprom83 = sext i32 %sub82 to i64, !dbg !966
  %arrayidx84 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom83, !dbg !966
  %24 = load i32* %arrayidx84, align 4, !dbg !966, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !59), !dbg !966
  switch i32 %24, label %if.end89 [
    i32 9, label %return
    i32 7, label %return
  ], !dbg !968

if.end89:                                         ; preds = %if.else81
  %sub90 = add nsw i32 %23, -1, !dbg !969
  %idxprom91 = sext i32 %sub90 to i64, !dbg !969
  %arrayidx92 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom91, !dbg !969
  %25 = load i32* %arrayidx92, align 4, !dbg !969, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !59), !dbg !969
  switch i32 %25, label %if.end97 [
    i32 9, label %return
    i32 7, label %return
  ], !dbg !970

if.end97:                                         ; preds = %if.end89
  %add98 = add nsw i32 %23, 1, !dbg !971
  %idxprom99 = sext i32 %add98 to i64, !dbg !971
  %arrayidx100 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom99, !dbg !971
  %26 = load i32* %arrayidx100, align 4, !dbg !971, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !59), !dbg !971
  switch i32 %26, label %if.end105 [
    i32 9, label %return
    i32 7, label %return
  ], !dbg !972

if.end105:                                        ; preds = %if.end97
  %add106 = add nsw i32 %23, 12, !dbg !973
  %idxprom107 = sext i32 %add106 to i64, !dbg !973
  %arrayidx108 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom107, !dbg !973
  %27 = load i32* %arrayidx108, align 4, !dbg !973, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !59), !dbg !973
  switch i32 %27, label %if.end113 [
    i32 9, label %return
    i32 7, label %return
  ], !dbg !974

if.end113:                                        ; preds = %if.end105
  %sub114 = add nsw i32 %23, -13, !dbg !975
  %idxprom115 = sext i32 %sub114 to i64, !dbg !975
  %arrayidx116 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom115, !dbg !975
  %28 = load i32* %arrayidx116, align 4, !dbg !975, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !59), !dbg !975
  %29 = and i32 %28, -3, !dbg !976
  %30 = icmp eq i32 %29, 9, !dbg !976
  %cmp121 = icmp eq i32 %28, 1, !dbg !976
  %or.cond189 = or i1 %30, %cmp121, !dbg !976
  br i1 %or.cond189, label %return, label %if.end123, !dbg !976

if.end123:                                        ; preds = %if.end113
  %sub124 = add nsw i32 %23, -11, !dbg !977
  %idxprom125 = sext i32 %sub124 to i64, !dbg !977
  %arrayidx126 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom125, !dbg !977
  %31 = load i32* %arrayidx126, align 4, !dbg !977, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !59), !dbg !977
  %32 = and i32 %31, -3, !dbg !978
  %33 = icmp eq i32 %32, 9, !dbg !978
  %cmp131 = icmp eq i32 %31, 1, !dbg !978
  %or.cond191 = or i1 %33, %cmp131, !dbg !978
  br i1 %or.cond191, label %return, label %if.end133, !dbg !978

if.end133:                                        ; preds = %if.end123
  %add134 = add nsw i32 %23, 11, !dbg !979
  %idxprom135 = sext i32 %add134 to i64, !dbg !979
  %arrayidx136 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom135, !dbg !979
  %34 = load i32* %arrayidx136, align 4, !dbg !979, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !59), !dbg !979
  %35 = and i32 %34, -3, !dbg !980
  %36 = icmp eq i32 %35, 9, !dbg !980
  br i1 %36, label %return, label %if.end141, !dbg !980

if.end141:                                        ; preds = %if.end133
  %add142 = add nsw i32 %23, 13, !dbg !981
  %idxprom143 = sext i32 %add142 to i64, !dbg !981
  %arrayidx144 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom143, !dbg !981
  %37 = load i32* %arrayidx144, align 4, !dbg !981, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !59), !dbg !981
  %38 = and i32 %37, -3, !dbg !982
  %39 = icmp eq i32 %38, 9, !dbg !982
  br i1 %39, label %return, label %for.body152, !dbg !982

for.cond150:                                      ; preds = %for.body152
  %40 = trunc i64 %indvars.iv.next243 to i32, !dbg !983
  %cmp151 = icmp slt i32 %40, 8, !dbg !983
  br i1 %cmp151, label %for.body152, label %for.end163, !dbg !983

for.body152:                                      ; preds = %if.end141, %for.cond150
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %for.cond150 ], [ 0, %if.end141 ]
  %arrayidx154 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv242, !dbg !985
  %41 = load i32* %arrayidx154, align 4, !dbg !985, !tbaa !145
  %add155 = add nsw i32 %41, %23, !dbg !985
  %idxprom156 = sext i32 %add155 to i64, !dbg !985
  %arrayidx157 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom156, !dbg !985
  %42 = load i32* %arrayidx157, align 4, !dbg !985, !tbaa !145
  %cmp158 = icmp eq i32 %42, 3, !dbg !985
  %indvars.iv.next243 = add i64 %indvars.iv242, 1, !dbg !983
  br i1 %cmp158, label %return, label %for.cond150, !dbg !985

for.end163:                                       ; preds = %for.cond150
  %call164 = tail call i32 @is_attacked(i32 %23, i32 1) #4, !dbg !987
  %tobool165 = icmp eq i32 %call164, 0, !dbg !987
  br i1 %tobool165, label %return, label %if.then166, !dbg !987

if.then166:                                       ; preds = %for.end163
  %43 = load i32* @Variant, align 4, !dbg !988, !tbaa !145
  switch i32 %43, label %if.else171 [
    i32 4, label %return
    i32 2, label %return
  ], !dbg !988

if.else171:                                       ; preds = %if.then166
  br label %return, !dbg !990

return:                                           ; preds = %for.body152, %for.body, %for.end163, %for.end, %if.then166, %if.then166, %if.end141, %if.end133, %if.end123, %if.end113, %if.end105, %if.end105, %if.end97, %if.end97, %if.end89, %if.end89, %if.else81, %if.else81, %if.then75, %if.then75, %if.end57, %if.end57, %if.end49, %if.end49, %if.end39, %if.end39, %if.end39, %if.end29, %if.end29, %if.end29, %if.end21, %if.end14, %if.end6, %if.then2, %entry, %if.else171, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 1, %if.else171 ], [ 0, %entry ], [ 2, %if.then2 ], [ 2, %if.end6 ], [ 2, %if.end14 ], [ 2, %if.end21 ], [ 2, %if.end29 ], [ 2, %if.end29 ], [ 2, %if.end29 ], [ 2, %if.end39 ], [ 2, %if.end39 ], [ 2, %if.end39 ], [ 2, %if.end49 ], [ 2, %if.end49 ], [ 2, %if.end57 ], [ 2, %if.end57 ], [ 2, %if.then75 ], [ 2, %if.then75 ], [ 2, %if.else81 ], [ 2, %if.else81 ], [ 2, %if.end89 ], [ 2, %if.end89 ], [ 2, %if.end97 ], [ 2, %if.end97 ], [ 2, %if.end105 ], [ 2, %if.end105 ], [ 2, %if.end113 ], [ 2, %if.end123 ], [ 2, %if.end133 ], [ 2, %if.end141 ], [ 2, %if.then166 ], [ 2, %if.then166 ], [ 0, %for.end ], [ 0, %for.end163 ], [ 2, %for.body ], [ 2, %for.body152 ]
  ret i32 %retval.0, !dbg !991
}

; Function Attrs: nounwind optsize uwtable
define void @make(%struct.move_s* nocapture %moves, i32 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.move_s* %moves}, i64 0, metadata !64), !dbg !992
  tail call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !65), !dbg !992
  %idxprom = sext i32 %i to i64, !dbg !993
  %ep1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 5, !dbg !993
  %0 = load i32* %ep1, align 4, !dbg !993, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !66), !dbg !993
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0, !dbg !994
  %1 = load i32* %from4, align 4, !dbg !994, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !67), !dbg !994
  %target7 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1, !dbg !995
  %2 = load i32* %target7, align 4, !dbg !995, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !68), !dbg !995
  %promoted13 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3, !dbg !996
  %3 = load i32* %promoted13, align 4, !dbg !996, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !70), !dbg !996
  %castled16 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4, !dbg !997
  %4 = load i32* %castled16, align 4, !dbg !997, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !71), !dbg !997
  %5 = load i32* @ep_square, align 4, !dbg !998, !tbaa !145
  %6 = load i32* @ply, align 4, !dbg !998, !tbaa !145
  %idxprom17 = sext i32 %6 to i64, !dbg !998
  %epsq = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 2, !dbg !998
  store i32 %5, i32* %epsq, align 4, !dbg !998, !tbaa !145
  store i32 0, i32* @ep_square, align 4, !dbg !999, !tbaa !145
  %7 = load i32* @fifty, align 4, !dbg !1000, !tbaa !145
  %fifty = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 3, !dbg !1000
  store i32 %7, i32* %fifty, align 4, !dbg !1000, !tbaa !145
  %idxprom21 = sext i32 %1 to i64, !dbg !1001
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21, !dbg !1001
  %8 = load i32* %arrayidx22, align 4, !dbg !1001, !tbaa !145
  %.off599 = add i32 %8, -1, !dbg !1001
  %switch = icmp ult i32 %.off599, 2, !dbg !1001
  br i1 %switch, label %if.end, label %lor.lhs.false26, !dbg !1001

lor.lhs.false26:                                  ; preds = %entry
  %idxprom27 = sext i32 %2 to i64, !dbg !1001
  %arrayidx28 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom27, !dbg !1001
  %9 = load i32* %arrayidx28, align 4, !dbg !1001, !tbaa !145
  %cmp29 = icmp eq i32 %9, 13, !dbg !1001
  %inc = add nsw i32 %7, 1, !dbg !1002
  %inc. = select i1 %cmp29, i32 %inc, i32 0, !dbg !1001
  br label %if.end, !dbg !1001

if.end:                                           ; preds = %lor.lhs.false26, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc., %lor.lhs.false26 ]
  store i32 %storemerge, i32* @fifty, align 4, !dbg !1004, !tbaa !145
  %cmp30 = icmp eq i32 %1, 0, !dbg !1006
  br i1 %cmp30, label %if.then31, label %if.else63, !dbg !1006

if.then31:                                        ; preds = %if.end
  %10 = load i32* @piece_count, align 4, !dbg !1007, !tbaa !145
  %inc32 = add nsw i32 %10, 1, !dbg !1007
  store i32 %inc32, i32* @piece_count, align 4, !dbg !1007, !tbaa !145
  tail call void @llvm.dbg.value(metadata !341, i64 0, metadata !72), !dbg !1009
  %11 = load i32* getelementptr inbounds ([62 x i32]* @pieces, i64 0, i64 1), align 4, !dbg !1009, !tbaa !145
  %cmp35603 = icmp eq i32 %11, 0, !dbg !1009
  br i1 %cmp35603, label %for.end, label %for.body, !dbg !1009

for.cond:                                         ; preds = %for.body
  %arrayidx34 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv.next, !dbg !1009
  %12 = load i32* %arrayidx34, align 4, !dbg !1009, !tbaa !145
  %cmp35 = icmp eq i32 %12, 0, !dbg !1009
  br i1 %cmp35, label %for.end, label %for.body, !dbg !1009

for.body:                                         ; preds = %if.then31, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %if.then31 ]
  %find_slot.0604 = phi i32 [ %inc37, %for.cond ], [ 1, %if.then31 ]
  %13 = trunc i64 %indvars.iv to i32, !dbg !1011
  %cmp36 = icmp slt i32 %13, 63, !dbg !1011
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1009
  %inc37 = add nsw i32 %find_slot.0604, 1, !dbg !1009
  tail call void @llvm.dbg.value(metadata !{i32 %inc37}, i64 0, metadata !72), !dbg !1009
  br i1 %cmp36, label %for.cond, label %cond.false, !dbg !1011

cond.false:                                       ; preds = %for.body
  tail call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 1326, i8* getelementptr inbounds ([25 x i8]* @__PRETTY_FUNCTION__.make, i64 0, i64 0)) #7, !dbg !1011
  unreachable, !dbg !1011

for.end:                                          ; preds = %for.cond, %if.then31
  %arrayidx34.lcssa = phi i32* [ getelementptr inbounds ([62 x i32]* @pieces, i64 0, i64 1), %if.then31 ], [ %arrayidx34, %for.cond ]
  %idxprom33.lcssa = phi i64 [ 1, %if.then31 ], [ %indvars.iv.next, %for.cond ]
  %find_slot.0.lcssa = phi i32 [ 1, %if.then31 ], [ %inc37, %for.cond ]
  store i32 %2, i32* %arrayidx34.lcssa, align 4, !dbg !1012, !tbaa !145
  %arrayidx41 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom33.lcssa, !dbg !1013
  %14 = load i32* %arrayidx41, align 4, !dbg !1013, !tbaa !145
  %15 = load i32* @ply, align 4, !dbg !1013, !tbaa !145
  %idxprom42 = sext i32 %15 to i64, !dbg !1013
  %was_promoted = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom42, i32 1, !dbg !1013
  store i32 %14, i32* %was_promoted, align 4, !dbg !1013, !tbaa !145
  store i32 0, i32* %arrayidx41, align 4, !dbg !1014, !tbaa !145
  %idxprom46 = sext i32 %2 to i64, !dbg !1015
  %arrayidx47 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom46, !dbg !1015
  store i32 %find_slot.0.lcssa, i32* %arrayidx47, align 4, !dbg !1015, !tbaa !145
  %.off = add i32 %3, -1, !dbg !1016
  %16 = icmp ult i32 %.off, 12, !dbg !1016
  br i1 %16, label %cond.end52, label %cond.false51, !dbg !1016

cond.false51:                                     ; preds = %for.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 1337, i8* getelementptr inbounds ([25 x i8]* @__PRETTY_FUNCTION__.make, i64 0, i64 0)) #7, !dbg !1016
  unreachable, !dbg !1016

cond.end52:                                       ; preds = %for.end
  %17 = load i32* @white_to_move, align 4, !dbg !1017, !tbaa !145
  %not.tobool = icmp eq i32 %17, 0, !dbg !1017
  %cond = zext i1 %not.tobool to i32, !dbg !1017
  tail call void @DropremoveHolding(i32 %3, i32 %cond) #4, !dbg !1017
  %idxprom53 = sext i32 %3 to i64, !dbg !1018
  %arrayidx54 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom53, !dbg !1018
  %18 = load i32* %arrayidx54, align 4, !dbg !1018, !tbaa !145
  %19 = load i32* @Material, align 4, !dbg !1018, !tbaa !145
  %add = add nsw i32 %19, %18, !dbg !1018
  store i32 %add, i32* @Material, align 4, !dbg !1018, !tbaa !145
  %arrayidx56 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom46, !dbg !1019
  store i32 %3, i32* %arrayidx56, align 4, !dbg !1019, !tbaa !145
  %arrayidx60 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom53, i64 %idxprom46, !dbg !1020
  %20 = load i32* %arrayidx60, align 4, !dbg !1020, !tbaa !145
  %21 = load i32* @hash, align 4, !dbg !1020, !tbaa !145
  %xor = xor i32 %21, %20, !dbg !1020
  store i32 %xor, i32* @hash, align 4, !dbg !1020, !tbaa !145
  %22 = load i32* @white_to_move, align 4, !dbg !1021, !tbaa !145
  %xor61 = xor i32 %22, 1, !dbg !1021
  store i32 %xor61, i32* @white_to_move, align 4, !dbg !1021, !tbaa !145
  %23 = load i32* @ply, align 4, !dbg !1022, !tbaa !145
  %inc62 = add nsw i32 %23, 1, !dbg !1022
  store i32 %inc62, i32* @ply, align 4, !dbg !1022, !tbaa !145
  br label %return, !dbg !1023

if.else63:                                        ; preds = %if.end
  %idxprom64 = sext i32 %2 to i64, !dbg !1024
  %arrayidx65 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom64, !dbg !1024
  %24 = load i32* %arrayidx65, align 4, !dbg !1024, !tbaa !145
  %idxprom66 = sext i32 %24 to i64, !dbg !1024
  %arrayidx67 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom66, !dbg !1024
  %25 = load i32* %arrayidx67, align 4, !dbg !1024, !tbaa !145
  %was_promoted70 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 1, !dbg !1024
  store i32 %25, i32* %was_promoted70, align 4, !dbg !1024, !tbaa !145
  %cap_num = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 0, !dbg !1026
  store i32 %24, i32* %cap_num, align 4, !dbg !1026, !tbaa !145
  %arrayidx78 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom66, !dbg !1027
  store i32 0, i32* %arrayidx78, align 4, !dbg !1027, !tbaa !145
  %arrayidx80 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom21, !dbg !1028
  %26 = load i32* %arrayidx80, align 4, !dbg !1028, !tbaa !145
  %idxprom81 = sext i32 %26 to i64, !dbg !1028
  %arrayidx82 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom81, !dbg !1028
  store i32 %2, i32* %arrayidx82, align 4, !dbg !1028, !tbaa !145
  store i32 %26, i32* %arrayidx65, align 4, !dbg !1029, !tbaa !145
  store i32 0, i32* %arrayidx80, align 4, !dbg !1030, !tbaa !145
  %tobool89 = icmp ne i32 %0, 0, !dbg !1031
  br i1 %tobool89, label %if.end125, label %if.then90, !dbg !1031

if.then90:                                        ; preds = %if.else63
  %arrayidx92 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1032
  %27 = load i32* %arrayidx92, align 4, !dbg !1032, !tbaa !145
  %cond461 = icmp eq i32 %27, 13, !dbg !1032
  br i1 %cond461, label %if.end125, label %sw.default, !dbg !1032

sw.default:                                       ; preds = %if.then90
  %28 = load i32* @Variant, align 4, !dbg !1034, !tbaa !145
  %29 = icmp ult i32 %28, 2, !dbg !1034
  br i1 %29, label %if.then96, label %if.end113, !dbg !1034

if.then96:                                        ; preds = %sw.default
  %tobool100 = icmp eq i32 %25, 0, !dbg !1036
  br i1 %tobool100, label %if.else106, label %if.then101, !dbg !1036

if.then101:                                       ; preds = %if.then96
  %call = tail call i32 @SwitchPromoted(i32 %27) #4, !dbg !1038
  %30 = load i32* @white_to_move, align 4, !dbg !1038, !tbaa !145
  %not.tobool104 = icmp eq i32 %30, 0, !dbg !1038
  %cond105 = zext i1 %not.tobool104 to i32, !dbg !1038
  tail call void @addHolding(i32 %call, i32 %cond105) #4, !dbg !1038
  br label %if.end113, !dbg !1040

if.else106:                                       ; preds = %if.then96
  %call109 = tail call i32 @SwitchColor(i32 %27) #4, !dbg !1041
  %31 = load i32* @white_to_move, align 4, !dbg !1041, !tbaa !145
  %not.tobool110 = icmp eq i32 %31, 0, !dbg !1041
  %cond111 = zext i1 %not.tobool110 to i32, !dbg !1041
  tail call void @addHolding(i32 %call109, i32 %cond111) #4, !dbg !1041
  br label %if.end113

if.end113:                                        ; preds = %if.then101, %if.else106, %sw.default
  %32 = load i32* %arrayidx92, align 4, !dbg !1043, !tbaa !145
  %idxprom116 = sext i32 %32 to i64, !dbg !1043
  %arrayidx117 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom116, !dbg !1043
  %33 = load i32* %arrayidx117, align 4, !dbg !1043, !tbaa !145
  %34 = load i32* @Material, align 4, !dbg !1043, !tbaa !145
  %sub = sub nsw i32 %34, %33, !dbg !1043
  store i32 %sub, i32* @Material, align 4, !dbg !1043, !tbaa !145
  %arrayidx123 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom116, i64 %idxprom64, !dbg !1044
  %35 = load i32* %arrayidx123, align 4, !dbg !1044, !tbaa !145
  %36 = load i32* @hash, align 4, !dbg !1044, !tbaa !145
  %xor124 = xor i32 %36, %35, !dbg !1044
  store i32 %xor124, i32* @hash, align 4, !dbg !1044, !tbaa !145
  %37 = load i32* @piece_count, align 4, !dbg !1045, !tbaa !145
  %dec = add nsw i32 %37, -1, !dbg !1045
  store i32 %dec, i32* @piece_count, align 4, !dbg !1045, !tbaa !145
  %.pre = load i32* %arrayidx22, align 4, !dbg !1046, !tbaa !145
  br label %if.end125, !dbg !1047

if.end125:                                        ; preds = %if.end113, %if.then90, %if.else63
  %38 = phi i32 [ %.pre, %if.end113 ], [ %8, %if.then90 ], [ %8, %if.else63 ]
  switch i32 %38, label %if.then347 [
    i32 1, label %if.then129
    i32 2, label %if.then236
    i32 5, label %if.then380
    i32 6, label %if.else420
  ], !dbg !1046

if.then129:                                       ; preds = %if.end125
  %tobool130 = icmp eq i32 %3, 0, !dbg !1048
  br i1 %tobool130, label %if.end160, label %if.then131, !dbg !1048

if.then131:                                       ; preds = %if.then129
  %arrayidx133 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1050
  store i32 %3, i32* %arrayidx133, align 4, !dbg !1050, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1052, !tbaa !145
  %arrayidx137 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1053
  %39 = load i32* %arrayidx137, align 4, !dbg !1053, !tbaa !145
  %inc138 = add nsw i32 %39, 1, !dbg !1053
  store i32 %inc138, i32* %arrayidx137, align 4, !dbg !1053, !tbaa !145
  %arrayidx140 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1054
  %40 = load i32* %arrayidx140, align 4, !dbg !1054, !tbaa !145
  %inc141 = add nsw i32 %40, 1, !dbg !1054
  store i32 %inc141, i32* %arrayidx140, align 4, !dbg !1054, !tbaa !145
  %41 = load i32* @white_to_move, align 4, !dbg !1055, !tbaa !145
  %xor142 = xor i32 %41, 1, !dbg !1055
  store i32 %xor142, i32* @white_to_move, align 4, !dbg !1055, !tbaa !145
  %42 = load i32* %arrayidx65, align 4, !dbg !1056, !tbaa !145
  %idxprom145 = sext i32 %42 to i64, !dbg !1056
  %arrayidx146 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom145, !dbg !1056
  store i32 1, i32* %arrayidx146, align 4, !dbg !1056, !tbaa !145
  %arrayidx148 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21, !dbg !1057
  %43 = load i32* %arrayidx148, align 4, !dbg !1057, !tbaa !145
  %44 = load i32* @hash, align 4, !dbg !1057, !tbaa !145
  %xor149 = xor i32 %44, %43, !dbg !1057
  %idxprom151 = sext i32 %3 to i64, !dbg !1058
  %arrayidx153 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom151, i64 %idxprom64, !dbg !1058
  %45 = load i32* %arrayidx153, align 4, !dbg !1058, !tbaa !145
  %xor154 = xor i32 %xor149, %45, !dbg !1058
  store i32 %xor154, i32* @hash, align 4, !dbg !1058, !tbaa !145
  %46 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !dbg !1059, !tbaa !145
  %47 = load i32* @Material, align 4, !dbg !1059, !tbaa !145
  %sub155 = sub nsw i32 %47, %46, !dbg !1059
  %arrayidx157 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom151, !dbg !1060
  %48 = load i32* %arrayidx157, align 4, !dbg !1060, !tbaa !145
  %add158 = add nsw i32 %sub155, %48, !dbg !1060
  store i32 %add158, i32* @Material, align 4, !dbg !1060, !tbaa !145
  %49 = load i32* @ply, align 4, !dbg !1061, !tbaa !145
  %inc159 = add nsw i32 %49, 1, !dbg !1061
  store i32 %inc159, i32* @ply, align 4, !dbg !1061, !tbaa !145
  br label %return, !dbg !1062

if.end160:                                        ; preds = %if.then129
  br i1 %tobool89, label %if.then162, label %if.end208, !dbg !1063

if.then162:                                       ; preds = %if.end160
  %arrayidx164 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21, !dbg !1064
  %50 = load i32* %arrayidx164, align 4, !dbg !1064, !tbaa !145
  %51 = load i32* @hash, align 4, !dbg !1064, !tbaa !145
  %xor165 = xor i32 %51, %50, !dbg !1064
  %sub166 = add nsw i32 %2, -12, !dbg !1066
  %idxprom167 = sext i32 %sub166 to i64, !dbg !1066
  %arrayidx168 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom167, !dbg !1066
  %52 = load i32* %arrayidx168, align 4, !dbg !1066, !tbaa !145
  %xor169 = xor i32 %xor165, %52, !dbg !1066
  %arrayidx171 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom64, !dbg !1067
  %53 = load i32* %arrayidx171, align 4, !dbg !1067, !tbaa !145
  %xor172 = xor i32 %xor169, %53, !dbg !1067
  store i32 %xor172, i32* @hash, align 4, !dbg !1067, !tbaa !145
  %54 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !dbg !1068, !tbaa !145
  %55 = load i32* @Material, align 4, !dbg !1068, !tbaa !145
  %sub173 = sub nsw i32 %55, %54, !dbg !1068
  store i32 %sub173, i32* @Material, align 4, !dbg !1068, !tbaa !145
  %arrayidx175 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1069
  store i32 1, i32* %arrayidx175, align 4, !dbg !1069, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1070, !tbaa !145
  tail call void @addHolding(i32 1, i32 0) #4, !dbg !1071
  %56 = load i32* @piece_count, align 4, !dbg !1072, !tbaa !145
  %dec178 = add nsw i32 %56, -1, !dbg !1072
  store i32 %dec178, i32* @piece_count, align 4, !dbg !1072, !tbaa !145
  %arrayidx181 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom167, !dbg !1073
  store i32 13, i32* %arrayidx181, align 4, !dbg !1073, !tbaa !145
  %arrayidx183 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1074
  %57 = load i32* %arrayidx183, align 4, !dbg !1074, !tbaa !145
  %inc184 = add nsw i32 %57, 1, !dbg !1074
  store i32 %inc184, i32* %arrayidx183, align 4, !dbg !1074, !tbaa !145
  %arrayidx186 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1075
  %58 = load i32* %arrayidx186, align 4, !dbg !1075, !tbaa !145
  %inc187 = add nsw i32 %58, 1, !dbg !1075
  store i32 %inc187, i32* %arrayidx186, align 4, !dbg !1075, !tbaa !145
  %arrayidx190 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom167, !dbg !1076
  %59 = load i32* %arrayidx190, align 4, !dbg !1076, !tbaa !145
  %inc191 = add nsw i32 %59, 1, !dbg !1076
  store i32 %inc191, i32* %arrayidx190, align 4, !dbg !1076, !tbaa !145
  %60 = load i32* @white_to_move, align 4, !dbg !1077, !tbaa !145
  %xor192 = xor i32 %60, 1, !dbg !1077
  store i32 %xor192, i32* @white_to_move, align 4, !dbg !1077, !tbaa !145
  %arrayidx195 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom167, !dbg !1078
  %61 = load i32* %arrayidx195, align 4, !dbg !1078, !tbaa !145
  %62 = load i32* @ply, align 4, !dbg !1078, !tbaa !145
  %idxprom196 = sext i32 %62 to i64, !dbg !1078
  %cap_num198 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom196, i32 0, !dbg !1078
  store i32 %61, i32* %cap_num198, align 4, !dbg !1078, !tbaa !145
  %idxprom202 = sext i32 %61 to i64, !dbg !1079
  %arrayidx203 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom202, !dbg !1079
  store i32 0, i32* %arrayidx203, align 4, !dbg !1079, !tbaa !145
  store i32 0, i32* %arrayidx195, align 4, !dbg !1080, !tbaa !145
  %inc207 = add nsw i32 %62, 1, !dbg !1081
  store i32 %inc207, i32* @ply, align 4, !dbg !1081, !tbaa !145
  br label %return, !dbg !1082

if.end208:                                        ; preds = %if.end160
  %add209 = add nsw i32 %1, 24, !dbg !1083
  %cmp210 = icmp eq i32 %2, %add209, !dbg !1083
  br i1 %cmp210, label %if.then211, label %if.end213, !dbg !1083

if.then211:                                       ; preds = %if.end208
  %add212 = add nsw i32 %1, 12, !dbg !1084
  store i32 %add212, i32* @ep_square, align 4, !dbg !1084, !tbaa !145
  br label %if.end213, !dbg !1084

if.end213:                                        ; preds = %if.end208, %if.then211
  %arrayidx215 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21, !dbg !1085
  %63 = load i32* %arrayidx215, align 4, !dbg !1085, !tbaa !145
  %64 = load i32* @hash, align 4, !dbg !1085, !tbaa !145
  %xor216 = xor i32 %64, %63, !dbg !1085
  %arrayidx218 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom64, !dbg !1086
  %65 = load i32* %arrayidx218, align 4, !dbg !1086, !tbaa !145
  %xor219 = xor i32 %xor216, %65, !dbg !1086
  store i32 %xor219, i32* @hash, align 4, !dbg !1086, !tbaa !145
  %arrayidx221 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1087
  store i32 1, i32* %arrayidx221, align 4, !dbg !1087, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1088, !tbaa !145
  %arrayidx225 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1089
  %66 = load i32* %arrayidx225, align 4, !dbg !1089, !tbaa !145
  %inc226 = add nsw i32 %66, 1, !dbg !1089
  store i32 %inc226, i32* %arrayidx225, align 4, !dbg !1089, !tbaa !145
  %arrayidx228 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1090
  %67 = load i32* %arrayidx228, align 4, !dbg !1090, !tbaa !145
  %inc229 = add nsw i32 %67, 1, !dbg !1090
  store i32 %inc229, i32* %arrayidx228, align 4, !dbg !1090, !tbaa !145
  %68 = load i32* @white_to_move, align 4, !dbg !1091, !tbaa !145
  %xor230 = xor i32 %68, 1, !dbg !1091
  store i32 %xor230, i32* @white_to_move, align 4, !dbg !1091, !tbaa !145
  %69 = load i32* @ply, align 4, !dbg !1092, !tbaa !145
  %inc231 = add nsw i32 %69, 1, !dbg !1092
  store i32 %inc231, i32* @ply, align 4, !dbg !1092, !tbaa !145
  br label %return, !dbg !1093

if.then236:                                       ; preds = %if.end125
  %tobool237 = icmp eq i32 %3, 0, !dbg !1094
  br i1 %tobool237, label %if.end267, label %if.then238, !dbg !1094

if.then238:                                       ; preds = %if.then236
  %arrayidx240 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1096
  store i32 %3, i32* %arrayidx240, align 4, !dbg !1096, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1098, !tbaa !145
  %arrayidx244 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1099
  %70 = load i32* %arrayidx244, align 4, !dbg !1099, !tbaa !145
  %inc245 = add nsw i32 %70, 1, !dbg !1099
  store i32 %inc245, i32* %arrayidx244, align 4, !dbg !1099, !tbaa !145
  %arrayidx247 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1100
  %71 = load i32* %arrayidx247, align 4, !dbg !1100, !tbaa !145
  %inc248 = add nsw i32 %71, 1, !dbg !1100
  store i32 %inc248, i32* %arrayidx247, align 4, !dbg !1100, !tbaa !145
  %72 = load i32* @white_to_move, align 4, !dbg !1101, !tbaa !145
  %xor249 = xor i32 %72, 1, !dbg !1101
  store i32 %xor249, i32* @white_to_move, align 4, !dbg !1101, !tbaa !145
  %73 = load i32* %arrayidx65, align 4, !dbg !1102, !tbaa !145
  %idxprom252 = sext i32 %73 to i64, !dbg !1102
  %arrayidx253 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom252, !dbg !1102
  store i32 1, i32* %arrayidx253, align 4, !dbg !1102, !tbaa !145
  %arrayidx255 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21, !dbg !1103
  %74 = load i32* %arrayidx255, align 4, !dbg !1103, !tbaa !145
  %75 = load i32* @hash, align 4, !dbg !1103, !tbaa !145
  %xor256 = xor i32 %75, %74, !dbg !1103
  %idxprom258 = sext i32 %3 to i64, !dbg !1104
  %arrayidx260 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom258, i64 %idxprom64, !dbg !1104
  %76 = load i32* %arrayidx260, align 4, !dbg !1104, !tbaa !145
  %xor261 = xor i32 %xor256, %76, !dbg !1104
  store i32 %xor261, i32* @hash, align 4, !dbg !1104, !tbaa !145
  %77 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !dbg !1105, !tbaa !145
  %78 = load i32* @Material, align 4, !dbg !1105, !tbaa !145
  %sub262 = sub nsw i32 %78, %77, !dbg !1105
  %arrayidx264 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom258, !dbg !1106
  %79 = load i32* %arrayidx264, align 4, !dbg !1106, !tbaa !145
  %add265 = add nsw i32 %sub262, %79, !dbg !1106
  store i32 %add265, i32* @Material, align 4, !dbg !1106, !tbaa !145
  %80 = load i32* @ply, align 4, !dbg !1107, !tbaa !145
  %inc266 = add nsw i32 %80, 1, !dbg !1107
  store i32 %inc266, i32* @ply, align 4, !dbg !1107, !tbaa !145
  br label %return, !dbg !1108

if.end267:                                        ; preds = %if.then236
  br i1 %tobool89, label %if.then269, label %if.end315, !dbg !1109

if.then269:                                       ; preds = %if.end267
  %arrayidx271 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21, !dbg !1110
  %81 = load i32* %arrayidx271, align 4, !dbg !1110, !tbaa !145
  %82 = load i32* @hash, align 4, !dbg !1110, !tbaa !145
  %xor272 = xor i32 %82, %81, !dbg !1110
  %add273 = add nsw i32 %2, 12, !dbg !1112
  %idxprom274 = sext i32 %add273 to i64, !dbg !1112
  %arrayidx275 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom274, !dbg !1112
  %83 = load i32* %arrayidx275, align 4, !dbg !1112, !tbaa !145
  %xor276 = xor i32 %xor272, %83, !dbg !1112
  %arrayidx278 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom64, !dbg !1113
  %84 = load i32* %arrayidx278, align 4, !dbg !1113, !tbaa !145
  %xor279 = xor i32 %xor276, %84, !dbg !1113
  store i32 %xor279, i32* @hash, align 4, !dbg !1113, !tbaa !145
  %85 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !dbg !1114, !tbaa !145
  %86 = load i32* @Material, align 4, !dbg !1114, !tbaa !145
  %sub280 = sub nsw i32 %86, %85, !dbg !1114
  store i32 %sub280, i32* @Material, align 4, !dbg !1114, !tbaa !145
  %arrayidx282 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1115
  store i32 2, i32* %arrayidx282, align 4, !dbg !1115, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1116, !tbaa !145
  tail call void @addHolding(i32 2, i32 1) #4, !dbg !1117
  %87 = load i32* @piece_count, align 4, !dbg !1118, !tbaa !145
  %dec285 = add nsw i32 %87, -1, !dbg !1118
  store i32 %dec285, i32* @piece_count, align 4, !dbg !1118, !tbaa !145
  %arrayidx288 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom274, !dbg !1119
  store i32 13, i32* %arrayidx288, align 4, !dbg !1119, !tbaa !145
  %arrayidx290 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1120
  %88 = load i32* %arrayidx290, align 4, !dbg !1120, !tbaa !145
  %inc291 = add nsw i32 %88, 1, !dbg !1120
  store i32 %inc291, i32* %arrayidx290, align 4, !dbg !1120, !tbaa !145
  %arrayidx293 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1121
  %89 = load i32* %arrayidx293, align 4, !dbg !1121, !tbaa !145
  %inc294 = add nsw i32 %89, 1, !dbg !1121
  store i32 %inc294, i32* %arrayidx293, align 4, !dbg !1121, !tbaa !145
  %arrayidx297 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom274, !dbg !1122
  %90 = load i32* %arrayidx297, align 4, !dbg !1122, !tbaa !145
  %inc298 = add nsw i32 %90, 1, !dbg !1122
  store i32 %inc298, i32* %arrayidx297, align 4, !dbg !1122, !tbaa !145
  %91 = load i32* @white_to_move, align 4, !dbg !1123, !tbaa !145
  %xor299 = xor i32 %91, 1, !dbg !1123
  store i32 %xor299, i32* @white_to_move, align 4, !dbg !1123, !tbaa !145
  %arrayidx302 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom274, !dbg !1124
  %92 = load i32* %arrayidx302, align 4, !dbg !1124, !tbaa !145
  %93 = load i32* @ply, align 4, !dbg !1124, !tbaa !145
  %idxprom303 = sext i32 %93 to i64, !dbg !1124
  %cap_num305 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom303, i32 0, !dbg !1124
  store i32 %92, i32* %cap_num305, align 4, !dbg !1124, !tbaa !145
  %idxprom309 = sext i32 %92 to i64, !dbg !1125
  %arrayidx310 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom309, !dbg !1125
  store i32 0, i32* %arrayidx310, align 4, !dbg !1125, !tbaa !145
  store i32 0, i32* %arrayidx302, align 4, !dbg !1126, !tbaa !145
  %inc314 = add nsw i32 %93, 1, !dbg !1127
  store i32 %inc314, i32* @ply, align 4, !dbg !1127, !tbaa !145
  br label %return, !dbg !1128

if.end315:                                        ; preds = %if.end267
  %sub316 = add nsw i32 %1, -24, !dbg !1129
  %cmp317 = icmp eq i32 %2, %sub316, !dbg !1129
  br i1 %cmp317, label %if.then318, label %if.end320, !dbg !1129

if.then318:                                       ; preds = %if.end315
  %sub319 = add nsw i32 %1, -12, !dbg !1130
  store i32 %sub319, i32* @ep_square, align 4, !dbg !1130, !tbaa !145
  br label %if.end320, !dbg !1130

if.end320:                                        ; preds = %if.end315, %if.then318
  %arrayidx322 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1131
  store i32 2, i32* %arrayidx322, align 4, !dbg !1131, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1132, !tbaa !145
  %arrayidx326 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1133
  %94 = load i32* %arrayidx326, align 4, !dbg !1133, !tbaa !145
  %inc327 = add nsw i32 %94, 1, !dbg !1133
  store i32 %inc327, i32* %arrayidx326, align 4, !dbg !1133, !tbaa !145
  %arrayidx329 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1134
  %95 = load i32* %arrayidx329, align 4, !dbg !1134, !tbaa !145
  %inc330 = add nsw i32 %95, 1, !dbg !1134
  store i32 %inc330, i32* %arrayidx329, align 4, !dbg !1134, !tbaa !145
  %96 = load i32* @white_to_move, align 4, !dbg !1135, !tbaa !145
  %xor331 = xor i32 %96, 1, !dbg !1135
  store i32 %xor331, i32* @white_to_move, align 4, !dbg !1135, !tbaa !145
  %arrayidx333 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21, !dbg !1136
  %97 = load i32* %arrayidx333, align 4, !dbg !1136, !tbaa !145
  %98 = load i32* @hash, align 4, !dbg !1136, !tbaa !145
  %xor334 = xor i32 %98, %97, !dbg !1136
  %arrayidx336 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom64, !dbg !1137
  %99 = load i32* %arrayidx336, align 4, !dbg !1137, !tbaa !145
  %xor337 = xor i32 %xor334, %99, !dbg !1137
  store i32 %xor337, i32* @hash, align 4, !dbg !1137, !tbaa !145
  %100 = load i32* @ply, align 4, !dbg !1138, !tbaa !145
  %inc338 = add nsw i32 %100, 1, !dbg !1138
  store i32 %inc338, i32* @ply, align 4, !dbg !1138, !tbaa !145
  br label %return, !dbg !1139

if.then347:                                       ; preds = %if.end125
  %idxprom351 = sext i32 %38 to i64, !dbg !1140
  %arrayidx353 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom351, i64 %idxprom21, !dbg !1140
  %101 = load i32* %arrayidx353, align 4, !dbg !1140, !tbaa !145
  %102 = load i32* @hash, align 4, !dbg !1140, !tbaa !145
  %xor354 = xor i32 %102, %101, !dbg !1140
  %arrayidx360 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom351, i64 %idxprom64, !dbg !1142
  %103 = load i32* %arrayidx360, align 4, !dbg !1142, !tbaa !145
  %xor361 = xor i32 %103, %xor354, !dbg !1142
  store i32 %xor361, i32* @hash, align 4, !dbg !1142, !tbaa !145
  %arrayidx365 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1143
  store i32 %38, i32* %arrayidx365, align 4, !dbg !1143, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1144, !tbaa !145
  %arrayidx369 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1145
  %104 = load i32* %arrayidx369, align 4, !dbg !1145, !tbaa !145
  %inc370 = add nsw i32 %104, 1, !dbg !1145
  store i32 %inc370, i32* %arrayidx369, align 4, !dbg !1145, !tbaa !145
  %arrayidx372 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1146
  %105 = load i32* %arrayidx372, align 4, !dbg !1146, !tbaa !145
  %inc373 = add nsw i32 %105, 1, !dbg !1146
  store i32 %inc373, i32* %arrayidx372, align 4, !dbg !1146, !tbaa !145
  %106 = load i32* @white_to_move, align 4, !dbg !1147, !tbaa !145
  %xor374 = xor i32 %106, 1, !dbg !1147
  store i32 %xor374, i32* @white_to_move, align 4, !dbg !1147, !tbaa !145
  %107 = load i32* @ply, align 4, !dbg !1148, !tbaa !145
  %inc375 = add nsw i32 %107, 1, !dbg !1148
  store i32 %inc375, i32* @ply, align 4, !dbg !1148, !tbaa !145
  br label %return, !dbg !1149

if.then380:                                       ; preds = %if.end125
  store i32 %2, i32* @wking_loc, align 4, !dbg !1150, !tbaa !145
  %arrayidx382 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1152
  store i32 5, i32* %arrayidx382, align 4, !dbg !1152, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1153, !tbaa !145
  %arrayidx386 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1154
  %108 = load i32* %arrayidx386, align 4, !dbg !1154, !tbaa !145
  %inc387 = add nsw i32 %108, 1, !dbg !1154
  store i32 %inc387, i32* %arrayidx386, align 4, !dbg !1154, !tbaa !145
  %arrayidx389 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1155
  %109 = load i32* %arrayidx389, align 4, !dbg !1155, !tbaa !145
  %inc390 = add nsw i32 %109, 1, !dbg !1155
  store i32 %inc390, i32* %arrayidx389, align 4, !dbg !1155, !tbaa !145
  %110 = load i32* @white_to_move, align 4, !dbg !1156, !tbaa !145
  %xor391 = xor i32 %110, 1, !dbg !1156
  store i32 %xor391, i32* @white_to_move, align 4, !dbg !1156, !tbaa !145
  %arrayidx393 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom21, !dbg !1157
  %111 = load i32* %arrayidx393, align 4, !dbg !1157, !tbaa !145
  %112 = load i32* @hash, align 4, !dbg !1157, !tbaa !145
  %xor394 = xor i32 %112, %111, !dbg !1157
  %arrayidx396 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom64, !dbg !1158
  %113 = load i32* %arrayidx396, align 4, !dbg !1158, !tbaa !145
  %xor397 = xor i32 %xor394, %113, !dbg !1158
  store i32 %xor397, i32* @hash, align 4, !dbg !1158, !tbaa !145
  switch i32 %4, label %if.end418 [
    i32 1, label %if.then399
    i32 2, label %if.then409
  ], !dbg !1159

if.then399:                                       ; preds = %if.then380
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !dbg !1160, !tbaa !145
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !dbg !1162, !tbaa !145
  %114 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !dbg !1163, !tbaa !145
  %inc400 = add nsw i32 %114, 1, !dbg !1163
  store i32 %inc400, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !dbg !1163, !tbaa !145
  %115 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !dbg !1164, !tbaa !145
  %inc401 = add nsw i32 %115, 1, !dbg !1164
  store i32 %inc401, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !dbg !1164, !tbaa !145
  store i32 1, i32* @white_castled, align 4, !dbg !1165, !tbaa !145
  %116 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 33), align 4, !dbg !1166, !tbaa !145
  %idxprom402 = sext i32 %116 to i64, !dbg !1166
  %arrayidx403 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom402, !dbg !1166
  store i32 31, i32* %arrayidx403, align 4, !dbg !1166, !tbaa !145
  store i32 %116, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 31), align 4, !dbg !1167, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 33), align 4, !dbg !1168, !tbaa !145
  %117 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 33), align 4, !dbg !1169, !tbaa !145
  %xor404 = xor i32 %xor397, %117, !dbg !1169
  %118 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 31), align 4, !dbg !1170, !tbaa !145
  %xor405 = xor i32 %xor404, %118, !dbg !1170
  store i32 %xor405, i32* @hash, align 4, !dbg !1170, !tbaa !145
  %119 = load i32* @ply, align 4, !dbg !1171, !tbaa !145
  %inc406 = add nsw i32 %119, 1, !dbg !1171
  store i32 %inc406, i32* @ply, align 4, !dbg !1171, !tbaa !145
  br label %return, !dbg !1172

if.then409:                                       ; preds = %if.then380
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 26), align 4, !dbg !1173, !tbaa !145
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 29), align 4, !dbg !1175, !tbaa !145
  %120 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !dbg !1176, !tbaa !145
  %inc410 = add nsw i32 %120, 1, !dbg !1176
  store i32 %inc410, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !dbg !1176, !tbaa !145
  %121 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !dbg !1177, !tbaa !145
  %inc411 = add nsw i32 %121, 1, !dbg !1177
  store i32 %inc411, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !dbg !1177, !tbaa !145
  store i32 2, i32* @white_castled, align 4, !dbg !1178, !tbaa !145
  %122 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 26), align 4, !dbg !1179, !tbaa !145
  %idxprom412 = sext i32 %122 to i64, !dbg !1179
  %arrayidx413 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom412, !dbg !1179
  store i32 29, i32* %arrayidx413, align 4, !dbg !1179, !tbaa !145
  store i32 %122, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 29), align 4, !dbg !1180, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 26), align 4, !dbg !1181, !tbaa !145
  %123 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 26), align 4, !dbg !1182, !tbaa !145
  %xor414 = xor i32 %xor397, %123, !dbg !1182
  %124 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 29), align 4, !dbg !1183, !tbaa !145
  %xor415 = xor i32 %xor414, %124, !dbg !1183
  store i32 %xor415, i32* @hash, align 4, !dbg !1183, !tbaa !145
  %125 = load i32* @ply, align 4, !dbg !1184, !tbaa !145
  %inc416 = add nsw i32 %125, 1, !dbg !1184
  store i32 %inc416, i32* @ply, align 4, !dbg !1184, !tbaa !145
  br label %return, !dbg !1185

if.end418:                                        ; preds = %if.then380
  %126 = load i32* @ply, align 4, !dbg !1186, !tbaa !145
  %inc419 = add nsw i32 %126, 1, !dbg !1186
  store i32 %inc419, i32* @ply, align 4, !dbg !1186, !tbaa !145
  br label %return, !dbg !1187

if.else420:                                       ; preds = %if.end125
  store i32 %2, i32* @bking_loc, align 4, !dbg !1188, !tbaa !145
  %arrayidx422 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom64, !dbg !1190
  store i32 6, i32* %arrayidx422, align 4, !dbg !1190, !tbaa !145
  store i32 13, i32* %arrayidx22, align 4, !dbg !1191, !tbaa !145
  %arrayidx426 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom64, !dbg !1192
  %127 = load i32* %arrayidx426, align 4, !dbg !1192, !tbaa !145
  %inc427 = add nsw i32 %127, 1, !dbg !1192
  store i32 %inc427, i32* %arrayidx426, align 4, !dbg !1192, !tbaa !145
  %arrayidx429 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1193
  %128 = load i32* %arrayidx429, align 4, !dbg !1193, !tbaa !145
  %inc430 = add nsw i32 %128, 1, !dbg !1193
  store i32 %inc430, i32* %arrayidx429, align 4, !dbg !1193, !tbaa !145
  %129 = load i32* @white_to_move, align 4, !dbg !1194, !tbaa !145
  %xor431 = xor i32 %129, 1, !dbg !1194
  store i32 %xor431, i32* @white_to_move, align 4, !dbg !1194, !tbaa !145
  %arrayidx433 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom21, !dbg !1195
  %130 = load i32* %arrayidx433, align 4, !dbg !1195, !tbaa !145
  %131 = load i32* @hash, align 4, !dbg !1195, !tbaa !145
  %xor434 = xor i32 %131, %130, !dbg !1195
  %arrayidx436 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom64, !dbg !1196
  %132 = load i32* %arrayidx436, align 4, !dbg !1196, !tbaa !145
  %xor437 = xor i32 %xor434, %132, !dbg !1196
  store i32 %xor437, i32* @hash, align 4, !dbg !1196, !tbaa !145
  switch i32 %4, label %if.end459 [
    i32 3, label %if.then439
    i32 4, label %if.then449
  ], !dbg !1197

if.then439:                                       ; preds = %if.else420
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !dbg !1198, !tbaa !145
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !dbg !1200, !tbaa !145
  %133 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !dbg !1201, !tbaa !145
  %inc440 = add nsw i32 %133, 1, !dbg !1201
  store i32 %inc440, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !dbg !1201, !tbaa !145
  %134 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !dbg !1202, !tbaa !145
  %inc441 = add nsw i32 %134, 1, !dbg !1202
  store i32 %inc441, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !dbg !1202, !tbaa !145
  store i32 3, i32* @black_castled, align 4, !dbg !1203, !tbaa !145
  %135 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 117), align 4, !dbg !1204, !tbaa !145
  %idxprom442 = sext i32 %135 to i64, !dbg !1204
  %arrayidx443 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom442, !dbg !1204
  store i32 115, i32* %arrayidx443, align 4, !dbg !1204, !tbaa !145
  store i32 %135, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 115), align 4, !dbg !1205, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 117), align 4, !dbg !1206, !tbaa !145
  %136 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 117), align 4, !dbg !1207, !tbaa !145
  %xor444 = xor i32 %xor437, %136, !dbg !1207
  %137 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 115), align 4, !dbg !1208, !tbaa !145
  %xor445 = xor i32 %xor444, %137, !dbg !1208
  store i32 %xor445, i32* @hash, align 4, !dbg !1208, !tbaa !145
  %138 = load i32* @ply, align 4, !dbg !1209, !tbaa !145
  %inc446 = add nsw i32 %138, 1, !dbg !1209
  store i32 %inc446, i32* @ply, align 4, !dbg !1209, !tbaa !145
  br label %return, !dbg !1210

if.then449:                                       ; preds = %if.else420
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 110), align 4, !dbg !1211, !tbaa !145
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 113), align 4, !dbg !1213, !tbaa !145
  %139 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !dbg !1214, !tbaa !145
  %inc450 = add nsw i32 %139, 1, !dbg !1214
  store i32 %inc450, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !dbg !1214, !tbaa !145
  %140 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !dbg !1215, !tbaa !145
  %inc451 = add nsw i32 %140, 1, !dbg !1215
  store i32 %inc451, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !dbg !1215, !tbaa !145
  store i32 4, i32* @black_castled, align 4, !dbg !1216, !tbaa !145
  %141 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 110), align 4, !dbg !1217, !tbaa !145
  %idxprom452 = sext i32 %141 to i64, !dbg !1217
  %arrayidx453 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom452, !dbg !1217
  store i32 113, i32* %arrayidx453, align 4, !dbg !1217, !tbaa !145
  store i32 %141, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 113), align 4, !dbg !1218, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 110), align 4, !dbg !1219, !tbaa !145
  %142 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 110), align 4, !dbg !1220, !tbaa !145
  %xor454 = xor i32 %xor437, %142, !dbg !1220
  %143 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 113), align 4, !dbg !1221, !tbaa !145
  %xor455 = xor i32 %xor454, %143, !dbg !1221
  store i32 %xor455, i32* @hash, align 4, !dbg !1221, !tbaa !145
  %144 = load i32* @ply, align 4, !dbg !1222, !tbaa !145
  %inc456 = add nsw i32 %144, 1, !dbg !1222
  store i32 %inc456, i32* @ply, align 4, !dbg !1222, !tbaa !145
  br label %return, !dbg !1223

if.end459:                                        ; preds = %if.else420
  %145 = load i32* @ply, align 4, !dbg !1224, !tbaa !145
  %inc460 = add nsw i32 %145, 1, !dbg !1224
  store i32 %inc460, i32* @ply, align 4, !dbg !1224, !tbaa !145
  br label %return, !dbg !1225

return:                                           ; preds = %if.end459, %if.then449, %if.then439, %if.end418, %if.then409, %if.then399, %if.then347, %if.end320, %if.then269, %if.then238, %if.end213, %if.then162, %if.then131, %cond.end52
  ret void, !dbg !1226
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare void @DropremoveHolding(i32, i32) #1

; Function Attrs: optsize
declare void @addHolding(i32, i32) #1

; Function Attrs: optsize
declare i32 @SwitchPromoted(i32) #1

; Function Attrs: optsize
declare i32 @SwitchColor(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @add_move(i32 %Ptarget, i32 %Ppromoted) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %Ptarget}, i64 0, metadata !77), !dbg !1227
  tail call void @llvm.dbg.value(metadata !{i32 %Ppromoted}, i64 0, metadata !78), !dbg !1228
  %0 = load i32* @gfrom, align 4, !dbg !1229, !tbaa !145
  %1 = load i32* @numb_moves, align 4, !dbg !1229, !tbaa !145
  %idxprom = sext i32 %1 to i64, !dbg !1229
  %2 = load %struct.move_s** @genfor, align 8, !dbg !1229, !tbaa !334
  %from = getelementptr inbounds %struct.move_s* %2, i64 %idxprom, i32 0, !dbg !1229
  store i32 %0, i32* %from, align 4, !dbg !1229, !tbaa !145
  %3 = load i32* @numb_moves, align 4, !dbg !1230, !tbaa !145
  %idxprom1 = sext i32 %3 to i64, !dbg !1230
  %target = getelementptr inbounds %struct.move_s* %2, i64 %idxprom1, i32 1, !dbg !1230
  store i32 %Ptarget, i32* %target, align 4, !dbg !1230, !tbaa !145
  %4 = load i32* @numb_moves, align 4, !dbg !1231, !tbaa !145
  %idxprom3 = sext i32 %4 to i64, !dbg !1231
  %captured = getelementptr inbounds %struct.move_s* %2, i64 %idxprom3, i32 2, !dbg !1231
  store i32 13, i32* %captured, align 4, !dbg !1231, !tbaa !145
  %5 = load i32* @numb_moves, align 4, !dbg !1232, !tbaa !145
  %idxprom5 = sext i32 %5 to i64, !dbg !1232
  %castled = getelementptr inbounds %struct.move_s* %2, i64 %idxprom5, i32 4, !dbg !1232
  store i32 0, i32* %castled, align 4, !dbg !1232, !tbaa !145
  %6 = load i32* @numb_moves, align 4, !dbg !1233, !tbaa !145
  %idxprom7 = sext i32 %6 to i64, !dbg !1233
  %promoted = getelementptr inbounds %struct.move_s* %2, i64 %idxprom7, i32 3, !dbg !1233
  store i32 %Ppromoted, i32* %promoted, align 4, !dbg !1233, !tbaa !145
  %7 = load i32* @numb_moves, align 4, !dbg !1234, !tbaa !145
  %idxprom9 = sext i32 %7 to i64, !dbg !1234
  %ep = getelementptr inbounds %struct.move_s* %2, i64 %idxprom9, i32 5, !dbg !1234
  store i32 0, i32* %ep, align 4, !dbg !1234, !tbaa !145
  %8 = load i32* @numb_moves, align 4, !dbg !1235, !tbaa !145
  %inc = add nsw i32 %8, 1, !dbg !1235
  store i32 %inc, i32* @numb_moves, align 4, !dbg !1235, !tbaa !145
  ret void, !dbg !1236
}

; Function Attrs: nounwind optsize uwtable
define void @add_capture(i32 %Ptarget, i32 %Pcaptured, i32 %Ppromoted, i32 %Pep) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %Ptarget}, i64 0, metadata !83), !dbg !1237
  tail call void @llvm.dbg.value(metadata !{i32 %Pcaptured}, i64 0, metadata !84), !dbg !1238
  tail call void @llvm.dbg.value(metadata !{i32 %Ppromoted}, i64 0, metadata !85), !dbg !1239
  tail call void @llvm.dbg.value(metadata !{i32 %Pep}, i64 0, metadata !86), !dbg !1240
  %0 = load i32* @Variant, align 4, !dbg !1241, !tbaa !145
  %cmp = icmp eq i32 %0, 3, !dbg !1241
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1241

land.lhs.true:                                    ; preds = %entry
  %Pcaptured.off = add i32 %Pcaptured, -5, !dbg !1241
  %1 = icmp ult i32 %Pcaptured.off, 2, !dbg !1241
  br i1 %1, label %if.then, label %if.else, !dbg !1241

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @kingcap, align 4, !dbg !1242, !tbaa !145
  br label %return, !dbg !1244

if.else:                                          ; preds = %entry, %land.lhs.true
  %cmp3 = icmp eq i32 %Pcaptured, 13, !dbg !1245
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1245

if.then4:                                         ; preds = %if.else
  store i32 1, i32* @fcaptures, align 4, !dbg !1245, !tbaa !146
  br label %if.end5, !dbg !1245

if.end5:                                          ; preds = %if.else, %if.then4
  %2 = load i32* @gfrom, align 4, !dbg !1246, !tbaa !145
  %3 = load i32* @numb_moves, align 4, !dbg !1246, !tbaa !145
  %idxprom = sext i32 %3 to i64, !dbg !1246
  %4 = load %struct.move_s** @genfor, align 8, !dbg !1246, !tbaa !334
  %from = getelementptr inbounds %struct.move_s* %4, i64 %idxprom, i32 0, !dbg !1246
  store i32 %2, i32* %from, align 4, !dbg !1246, !tbaa !145
  %5 = load i32* @numb_moves, align 4, !dbg !1247, !tbaa !145
  %idxprom6 = sext i32 %5 to i64, !dbg !1247
  %target = getelementptr inbounds %struct.move_s* %4, i64 %idxprom6, i32 1, !dbg !1247
  store i32 %Ptarget, i32* %target, align 4, !dbg !1247, !tbaa !145
  %6 = load i32* @numb_moves, align 4, !dbg !1248, !tbaa !145
  %idxprom8 = sext i32 %6 to i64, !dbg !1248
  %captured = getelementptr inbounds %struct.move_s* %4, i64 %idxprom8, i32 2, !dbg !1248
  store i32 %Pcaptured, i32* %captured, align 4, !dbg !1248, !tbaa !145
  %7 = load i32* @numb_moves, align 4, !dbg !1249, !tbaa !145
  %idxprom10 = sext i32 %7 to i64, !dbg !1249
  %castled = getelementptr inbounds %struct.move_s* %4, i64 %idxprom10, i32 4, !dbg !1249
  store i32 0, i32* %castled, align 4, !dbg !1249, !tbaa !145
  %8 = load i32* @numb_moves, align 4, !dbg !1250, !tbaa !145
  %idxprom12 = sext i32 %8 to i64, !dbg !1250
  %promoted = getelementptr inbounds %struct.move_s* %4, i64 %idxprom12, i32 3, !dbg !1250
  store i32 %Ppromoted, i32* %promoted, align 4, !dbg !1250, !tbaa !145
  %9 = load i32* @numb_moves, align 4, !dbg !1251, !tbaa !145
  %idxprom14 = sext i32 %9 to i64, !dbg !1251
  %ep = getelementptr inbounds %struct.move_s* %4, i64 %idxprom14, i32 5, !dbg !1251
  store i32 %Pep, i32* %ep, align 4, !dbg !1251, !tbaa !145
  %10 = load i32* @numb_moves, align 4, !dbg !1252, !tbaa !145
  %inc = add nsw i32 %10, 1, !dbg !1252
  store i32 %inc, i32* @numb_moves, align 4, !dbg !1252, !tbaa !145
  br label %return, !dbg !1253

return:                                           ; preds = %if.end5, %if.then
  ret void, !dbg !1253
}

; Function Attrs: nounwind optsize uwtable
define void @unmake(%struct.move_s* nocapture %moves, i32 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.move_s* %moves}, i64 0, metadata !119), !dbg !1254
  tail call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !120), !dbg !1254
  %idxprom = sext i32 %i to i64, !dbg !1255
  %ep1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 5, !dbg !1255
  %0 = load i32* %ep1, align 4, !dbg !1255, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !121), !dbg !1255
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0, !dbg !1256
  %1 = load i32* %from4, align 4, !dbg !1256, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !122), !dbg !1256
  %target7 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1, !dbg !1257
  %2 = load i32* %target7, align 4, !dbg !1257, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !123), !dbg !1257
  %captured10 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 2, !dbg !1258
  %3 = load i32* %captured10, align 4, !dbg !1258, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !124), !dbg !1258
  %promoted13 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3, !dbg !1259
  %4 = load i32* %promoted13, align 4, !dbg !1259, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !125), !dbg !1259
  %castled16 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4, !dbg !1260
  %5 = load i32* %castled16, align 4, !dbg !1260, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !126), !dbg !1260
  %6 = load i32* @ply, align 4, !dbg !1261, !tbaa !145
  %dec = add nsw i32 %6, -1, !dbg !1261
  store i32 %dec, i32* @ply, align 4, !dbg !1261, !tbaa !145
  %idxprom17 = sext i32 %dec to i64, !dbg !1262
  %epsq = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 2, !dbg !1262
  %7 = load i32* %epsq, align 4, !dbg !1262, !tbaa !145
  store i32 %7, i32* @ep_square, align 4, !dbg !1262, !tbaa !145
  %fifty = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 3, !dbg !1263
  %8 = load i32* %fifty, align 4, !dbg !1263, !tbaa !145
  store i32 %8, i32* @fifty, align 4, !dbg !1263, !tbaa !145
  %cmp = icmp eq i32 %1, 0, !dbg !1264
  %idxprom21 = sext i32 %2 to i64, !dbg !1265
  %arrayidx22 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom21, !dbg !1265
  %9 = load i32* %arrayidx22, align 4, !dbg !1265, !tbaa !145
  br i1 %cmp, label %if.then, label %if.else, !dbg !1264

if.then:                                          ; preds = %entry
  %idxprom23 = sext i32 %9 to i64, !dbg !1265
  %arrayidx24 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom23, !dbg !1265
  store i32 0, i32* %arrayidx24, align 4, !dbg !1265, !tbaa !145
  %was_promoted = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 1, !dbg !1267
  %10 = load i32* %was_promoted, align 4, !dbg !1267, !tbaa !145
  %arrayidx30 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom23, !dbg !1267
  store i32 %10, i32* %arrayidx30, align 4, !dbg !1267, !tbaa !145
  store i32 0, i32* %arrayidx22, align 4, !dbg !1268, !tbaa !145
  %11 = load i32* @piece_count, align 4, !dbg !1269, !tbaa !145
  %dec33 = add nsw i32 %11, -1, !dbg !1269
  store i32 %dec33, i32* @piece_count, align 4, !dbg !1269, !tbaa !145
  %.off = add i32 %4, -1, !dbg !1270
  %12 = icmp ult i32 %.off, 12, !dbg !1270
  br i1 %12, label %cond.end, label %cond.false, !dbg !1270

cond.false:                                       ; preds = %if.then
  tail call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 1946, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.unmake, i64 0, i64 0)) #7, !dbg !1270
  unreachable, !dbg !1270

cond.end:                                         ; preds = %if.then
  %13 = load i32* @white_to_move, align 4, !dbg !1271, !tbaa !145
  %tobool = icmp ne i32 %13, 0, !dbg !1271
  %cond = zext i1 %tobool to i32, !dbg !1271
  tail call void @DropaddHolding(i32 %4, i32 %cond) #4, !dbg !1271
  %idxprom36 = sext i32 %4 to i64, !dbg !1272
  %arrayidx37 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom36, !dbg !1272
  %14 = load i32* %arrayidx37, align 4, !dbg !1272, !tbaa !145
  %15 = load i32* @Material, align 4, !dbg !1272, !tbaa !145
  %sub = sub nsw i32 %15, %14, !dbg !1272
  store i32 %sub, i32* @Material, align 4, !dbg !1272, !tbaa !145
  %arrayidx39 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21, !dbg !1273
  store i32 %3, i32* %arrayidx39, align 4, !dbg !1273, !tbaa !145
  %arrayidx43 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom36, i64 %idxprom21, !dbg !1274
  %16 = load i32* %arrayidx43, align 4, !dbg !1274, !tbaa !145
  %17 = load i32* @hash, align 4, !dbg !1274, !tbaa !145
  %xor = xor i32 %17, %16, !dbg !1274
  store i32 %xor, i32* @hash, align 4, !dbg !1274, !tbaa !145
  %18 = load i32* @white_to_move, align 4, !dbg !1275, !tbaa !145
  %xor44 = xor i32 %18, 1, !dbg !1275
  store i32 %xor44, i32* @white_to_move, align 4, !dbg !1275, !tbaa !145
  br label %return, !dbg !1276

if.else:                                          ; preds = %entry
  %idxprom47 = sext i32 %1 to i64, !dbg !1277
  %arrayidx48 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom47, !dbg !1277
  store i32 %9, i32* %arrayidx48, align 4, !dbg !1277, !tbaa !145
  %cap_num = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 0, !dbg !1279
  %19 = load i32* %cap_num, align 4, !dbg !1279, !tbaa !145
  store i32 %19, i32* %arrayidx22, align 4, !dbg !1279, !tbaa !145
  %idxprom55 = sext i32 %19 to i64, !dbg !1280
  %arrayidx56 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom55, !dbg !1280
  store i32 %2, i32* %arrayidx56, align 4, !dbg !1280, !tbaa !145
  %20 = load i32* %arrayidx48, align 4, !dbg !1281, !tbaa !145
  %idxprom59 = sext i32 %20 to i64, !dbg !1281
  %arrayidx60 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom59, !dbg !1281
  store i32 %1, i32* %arrayidx60, align 4, !dbg !1281, !tbaa !145
  %was_promoted63 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 1, !dbg !1282
  %21 = load i32* %was_promoted63, align 4, !dbg !1282, !tbaa !145
  %arrayidx67 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom55, !dbg !1282
  store i32 %21, i32* %arrayidx67, align 4, !dbg !1282, !tbaa !145
  %tobool68 = icmp ne i32 %0, 0, !dbg !1283
  %cond403 = icmp eq i32 %3, 13, !dbg !1284
  %or.cond = or i1 %tobool68, %cond403, !dbg !1283
  br i1 %or.cond, label %if.end93, label %sw.default, !dbg !1283

sw.default:                                       ; preds = %if.else
  %22 = load i32* @Variant, align 4, !dbg !1286, !tbaa !145
  %23 = icmp ult i32 %22, 2, !dbg !1286
  br i1 %23, label %if.then72, label %if.end85, !dbg !1286

if.then72:                                        ; preds = %sw.default
  %tobool77 = icmp eq i32 %21, 0, !dbg !1288
  br i1 %tobool77, label %if.else81, label %if.then78, !dbg !1288

if.then78:                                        ; preds = %if.then72
  %call = tail call i32 @SwitchPromoted(i32 %3) #4, !dbg !1290
  %24 = load i32* @white_to_move, align 4, !dbg !1290, !tbaa !145
  %tobool79 = icmp ne i32 %24, 0, !dbg !1290
  %cond80 = zext i1 %tobool79 to i32, !dbg !1290
  tail call void @removeHolding(i32 %call, i32 %cond80) #4, !dbg !1290
  br label %if.end85, !dbg !1292

if.else81:                                        ; preds = %if.then72
  %call82 = tail call i32 @SwitchColor(i32 %3) #4, !dbg !1293
  %25 = load i32* @white_to_move, align 4, !dbg !1293, !tbaa !145
  %tobool83 = icmp ne i32 %25, 0, !dbg !1293
  %cond84 = zext i1 %tobool83 to i32, !dbg !1293
  tail call void @removeHolding(i32 %call82, i32 %cond84) #4, !dbg !1293
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %if.else81, %sw.default
  %idxprom87 = sext i32 %3 to i64, !dbg !1295
  %arrayidx89 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom87, i64 %idxprom21, !dbg !1295
  %26 = load i32* %arrayidx89, align 4, !dbg !1295, !tbaa !145
  %27 = load i32* @hash, align 4, !dbg !1295, !tbaa !145
  %xor90 = xor i32 %27, %26, !dbg !1295
  store i32 %xor90, i32* @hash, align 4, !dbg !1295, !tbaa !145
  %arrayidx92 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom87, !dbg !1296
  %28 = load i32* %arrayidx92, align 4, !dbg !1296, !tbaa !145
  %29 = load i32* @Material, align 4, !dbg !1296, !tbaa !145
  %add = add nsw i32 %29, %28, !dbg !1296
  store i32 %add, i32* @Material, align 4, !dbg !1296, !tbaa !145
  %30 = load i32* @piece_count, align 4, !dbg !1297, !tbaa !145
  %inc = add nsw i32 %30, 1, !dbg !1297
  store i32 %inc, i32* @piece_count, align 4, !dbg !1297, !tbaa !145
  br label %if.end93, !dbg !1298

if.end93:                                         ; preds = %if.end85, %if.else
  %arrayidx95 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21, !dbg !1299
  %31 = load i32* %arrayidx95, align 4, !dbg !1299, !tbaa !145
  switch i32 %31, label %land.lhs.true239 [
    i32 1, label %if.then97
    i32 2, label %if.then166
    i32 5, label %if.end269
    i32 6, label %if.end269
  ], !dbg !1299

if.then97:                                        ; preds = %if.end93
  br i1 %tobool68, label %if.then99, label %if.end144, !dbg !1300

if.then99:                                        ; preds = %if.then97
  %arrayidx101 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21, !dbg !1302
  %32 = load i32* %arrayidx101, align 4, !dbg !1302, !tbaa !145
  %33 = load i32* @hash, align 4, !dbg !1302, !tbaa !145
  %xor102 = xor i32 %33, %32, !dbg !1302
  %arrayidx104 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom47, !dbg !1304
  %34 = load i32* %arrayidx104, align 4, !dbg !1304, !tbaa !145
  %xor105 = xor i32 %xor102, %34, !dbg !1304
  %sub106 = add nsw i32 %2, -12, !dbg !1305
  %idxprom107 = sext i32 %sub106 to i64, !dbg !1305
  %arrayidx108 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom107, !dbg !1305
  %35 = load i32* %arrayidx108, align 4, !dbg !1305, !tbaa !145
  %xor109 = xor i32 %xor105, %35, !dbg !1305
  store i32 %xor109, i32* @hash, align 4, !dbg !1305, !tbaa !145
  store i32 13, i32* %arrayidx95, align 4, !dbg !1306, !tbaa !145
  %arrayidx113 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1307
  store i32 1, i32* %arrayidx113, align 4, !dbg !1307, !tbaa !145
  %36 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !dbg !1308, !tbaa !145
  %37 = load i32* @Material, align 4, !dbg !1308, !tbaa !145
  %add114 = add nsw i32 %37, %36, !dbg !1308
  store i32 %add114, i32* @Material, align 4, !dbg !1308, !tbaa !145
  tail call void @removeHolding(i32 1, i32 0) #4, !dbg !1309
  %38 = load i32* @piece_count, align 4, !dbg !1310, !tbaa !145
  %inc115 = add nsw i32 %38, 1, !dbg !1310
  store i32 %inc115, i32* @piece_count, align 4, !dbg !1310, !tbaa !145
  %arrayidx118 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom107, !dbg !1311
  store i32 2, i32* %arrayidx118, align 4, !dbg !1311, !tbaa !145
  %arrayidx120 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1312
  %39 = load i32* %arrayidx120, align 4, !dbg !1312, !tbaa !145
  %dec121 = add nsw i32 %39, -1, !dbg !1312
  store i32 %dec121, i32* %arrayidx120, align 4, !dbg !1312, !tbaa !145
  %arrayidx123 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1313
  %40 = load i32* %arrayidx123, align 4, !dbg !1313, !tbaa !145
  %dec124 = add nsw i32 %40, -1, !dbg !1313
  store i32 %dec124, i32* %arrayidx123, align 4, !dbg !1313, !tbaa !145
  %arrayidx127 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom107, !dbg !1314
  %41 = load i32* %arrayidx127, align 4, !dbg !1314, !tbaa !145
  %dec128 = add nsw i32 %41, -1, !dbg !1314
  store i32 %dec128, i32* %arrayidx127, align 4, !dbg !1314, !tbaa !145
  %42 = load i32* @white_to_move, align 4, !dbg !1315, !tbaa !145
  %xor129 = xor i32 %42, 1, !dbg !1315
  store i32 %xor129, i32* @white_to_move, align 4, !dbg !1315, !tbaa !145
  %43 = load i32* @ply, align 4, !dbg !1316, !tbaa !145
  %idxprom130 = sext i32 %43 to i64, !dbg !1316
  %cap_num132 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom130, i32 0, !dbg !1316
  %44 = load i32* %cap_num132, align 4, !dbg !1316, !tbaa !145
  %arrayidx135 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom107, !dbg !1316
  store i32 %44, i32* %arrayidx135, align 4, !dbg !1316, !tbaa !145
  %idxprom140 = sext i32 %44 to i64, !dbg !1317
  %arrayidx141 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom140, !dbg !1317
  store i32 %sub106, i32* %arrayidx141, align 4, !dbg !1317, !tbaa !145
  store i32 0, i32* %arrayidx22, align 4, !dbg !1318, !tbaa !145
  br label %return, !dbg !1319

if.end144:                                        ; preds = %if.then97
  %arrayidx146 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom47, !dbg !1320
  %45 = load i32* %arrayidx146, align 4, !dbg !1320, !tbaa !145
  %46 = load i32* @hash, align 4, !dbg !1320, !tbaa !145
  %xor147 = xor i32 %46, %45, !dbg !1320
  %arrayidx149 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21, !dbg !1321
  %47 = load i32* %arrayidx149, align 4, !dbg !1321, !tbaa !145
  %xor150 = xor i32 %xor147, %47, !dbg !1321
  store i32 %xor150, i32* @hash, align 4, !dbg !1321, !tbaa !145
  store i32 %3, i32* %arrayidx95, align 4, !dbg !1322, !tbaa !145
  %arrayidx154 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1323
  store i32 1, i32* %arrayidx154, align 4, !dbg !1323, !tbaa !145
  %arrayidx156 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1324
  %48 = load i32* %arrayidx156, align 4, !dbg !1324, !tbaa !145
  %dec157 = add nsw i32 %48, -1, !dbg !1324
  store i32 %dec157, i32* %arrayidx156, align 4, !dbg !1324, !tbaa !145
  %arrayidx159 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1325
  %49 = load i32* %arrayidx159, align 4, !dbg !1325, !tbaa !145
  %dec160 = add nsw i32 %49, -1, !dbg !1325
  store i32 %dec160, i32* %arrayidx159, align 4, !dbg !1325, !tbaa !145
  %50 = load i32* @white_to_move, align 4, !dbg !1326, !tbaa !145
  %xor161 = xor i32 %50, 1, !dbg !1326
  store i32 %xor161, i32* @white_to_move, align 4, !dbg !1326, !tbaa !145
  br label %return, !dbg !1327

if.then166:                                       ; preds = %if.end93
  br i1 %tobool68, label %if.then168, label %if.end213, !dbg !1328

if.then168:                                       ; preds = %if.then166
  %arrayidx170 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21, !dbg !1330
  %51 = load i32* %arrayidx170, align 4, !dbg !1330, !tbaa !145
  %52 = load i32* @hash, align 4, !dbg !1330, !tbaa !145
  %xor171 = xor i32 %52, %51, !dbg !1330
  %arrayidx173 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom47, !dbg !1332
  %53 = load i32* %arrayidx173, align 4, !dbg !1332, !tbaa !145
  %xor174 = xor i32 %xor171, %53, !dbg !1332
  %add175 = add nsw i32 %2, 12, !dbg !1333
  %idxprom176 = sext i32 %add175 to i64, !dbg !1333
  %arrayidx177 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom176, !dbg !1333
  %54 = load i32* %arrayidx177, align 4, !dbg !1333, !tbaa !145
  %xor178 = xor i32 %xor174, %54, !dbg !1333
  store i32 %xor178, i32* @hash, align 4, !dbg !1333, !tbaa !145
  store i32 13, i32* %arrayidx95, align 4, !dbg !1334, !tbaa !145
  %arrayidx182 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1335
  store i32 2, i32* %arrayidx182, align 4, !dbg !1335, !tbaa !145
  %55 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !dbg !1336, !tbaa !145
  %56 = load i32* @Material, align 4, !dbg !1336, !tbaa !145
  %add183 = add nsw i32 %56, %55, !dbg !1336
  store i32 %add183, i32* @Material, align 4, !dbg !1336, !tbaa !145
  tail call void @removeHolding(i32 2, i32 1) #4, !dbg !1337
  %57 = load i32* @piece_count, align 4, !dbg !1338, !tbaa !145
  %inc184 = add nsw i32 %57, 1, !dbg !1338
  store i32 %inc184, i32* @piece_count, align 4, !dbg !1338, !tbaa !145
  %arrayidx187 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom176, !dbg !1339
  store i32 1, i32* %arrayidx187, align 4, !dbg !1339, !tbaa !145
  %arrayidx189 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1340
  %58 = load i32* %arrayidx189, align 4, !dbg !1340, !tbaa !145
  %dec190 = add nsw i32 %58, -1, !dbg !1340
  store i32 %dec190, i32* %arrayidx189, align 4, !dbg !1340, !tbaa !145
  %arrayidx192 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1341
  %59 = load i32* %arrayidx192, align 4, !dbg !1341, !tbaa !145
  %dec193 = add nsw i32 %59, -1, !dbg !1341
  store i32 %dec193, i32* %arrayidx192, align 4, !dbg !1341, !tbaa !145
  %arrayidx196 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom176, !dbg !1342
  %60 = load i32* %arrayidx196, align 4, !dbg !1342, !tbaa !145
  %dec197 = add nsw i32 %60, -1, !dbg !1342
  store i32 %dec197, i32* %arrayidx196, align 4, !dbg !1342, !tbaa !145
  %61 = load i32* @white_to_move, align 4, !dbg !1343, !tbaa !145
  %xor198 = xor i32 %61, 1, !dbg !1343
  store i32 %xor198, i32* @white_to_move, align 4, !dbg !1343, !tbaa !145
  %62 = load i32* @ply, align 4, !dbg !1344, !tbaa !145
  %idxprom199 = sext i32 %62 to i64, !dbg !1344
  %cap_num201 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom199, i32 0, !dbg !1344
  %63 = load i32* %cap_num201, align 4, !dbg !1344, !tbaa !145
  %arrayidx204 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom176, !dbg !1344
  store i32 %63, i32* %arrayidx204, align 4, !dbg !1344, !tbaa !145
  %idxprom209 = sext i32 %63 to i64, !dbg !1345
  %arrayidx210 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom209, !dbg !1345
  store i32 %add175, i32* %arrayidx210, align 4, !dbg !1345, !tbaa !145
  store i32 0, i32* %arrayidx22, align 4, !dbg !1346, !tbaa !145
  br label %return, !dbg !1347

if.end213:                                        ; preds = %if.then166
  %arrayidx215 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom47, !dbg !1348
  %64 = load i32* %arrayidx215, align 4, !dbg !1348, !tbaa !145
  %65 = load i32* @hash, align 4, !dbg !1348, !tbaa !145
  %xor216 = xor i32 %65, %64, !dbg !1348
  %arrayidx218 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21, !dbg !1349
  %66 = load i32* %arrayidx218, align 4, !dbg !1349, !tbaa !145
  %xor219 = xor i32 %xor216, %66, !dbg !1349
  store i32 %xor219, i32* @hash, align 4, !dbg !1349, !tbaa !145
  store i32 %3, i32* %arrayidx95, align 4, !dbg !1350, !tbaa !145
  %arrayidx223 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1351
  store i32 2, i32* %arrayidx223, align 4, !dbg !1351, !tbaa !145
  %arrayidx225 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1352
  %67 = load i32* %arrayidx225, align 4, !dbg !1352, !tbaa !145
  %dec226 = add nsw i32 %67, -1, !dbg !1352
  store i32 %dec226, i32* %arrayidx225, align 4, !dbg !1352, !tbaa !145
  %arrayidx228 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1353
  %68 = load i32* %arrayidx228, align 4, !dbg !1353, !tbaa !145
  %dec229 = add nsw i32 %68, -1, !dbg !1353
  store i32 %dec229, i32* %arrayidx228, align 4, !dbg !1353, !tbaa !145
  %69 = load i32* @white_to_move, align 4, !dbg !1354, !tbaa !145
  %xor230 = xor i32 %69, 1, !dbg !1354
  store i32 %xor230, i32* @white_to_move, align 4, !dbg !1354, !tbaa !145
  br label %return, !dbg !1355

land.lhs.true239:                                 ; preds = %if.end93
  %tobool240 = icmp eq i32 %4, 0, !dbg !1356
  br i1 %tobool240, label %if.then241, label %if.then271, !dbg !1356

if.then241:                                       ; preds = %land.lhs.true239
  %arrayidx245 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1357
  store i32 %31, i32* %arrayidx245, align 4, !dbg !1357, !tbaa !145
  store i32 %3, i32* %arrayidx95, align 4, !dbg !1359, !tbaa !145
  %arrayidx249 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1360
  %70 = load i32* %arrayidx249, align 4, !dbg !1360, !tbaa !145
  %dec250 = add nsw i32 %70, -1, !dbg !1360
  store i32 %dec250, i32* %arrayidx249, align 4, !dbg !1360, !tbaa !145
  %arrayidx252 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1361
  %71 = load i32* %arrayidx252, align 4, !dbg !1361, !tbaa !145
  %dec253 = add nsw i32 %71, -1, !dbg !1361
  store i32 %dec253, i32* %arrayidx252, align 4, !dbg !1361, !tbaa !145
  %72 = load i32* @white_to_move, align 4, !dbg !1362, !tbaa !145
  %xor254 = xor i32 %72, 1, !dbg !1362
  store i32 %xor254, i32* @white_to_move, align 4, !dbg !1362, !tbaa !145
  %73 = load i32* %arrayidx245, align 4, !dbg !1363, !tbaa !145
  %idxprom258 = sext i32 %73 to i64, !dbg !1363
  %arrayidx260 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom258, i64 %idxprom21, !dbg !1363
  %74 = load i32* %arrayidx260, align 4, !dbg !1363, !tbaa !145
  %75 = load i32* @hash, align 4, !dbg !1363, !tbaa !145
  %xor261 = xor i32 %75, %74, !dbg !1363
  %arrayidx267 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom258, i64 %idxprom47, !dbg !1364
  %76 = load i32* %arrayidx267, align 4, !dbg !1364, !tbaa !145
  %xor268 = xor i32 %76, %xor261, !dbg !1364
  store i32 %xor268, i32* @hash, align 4, !dbg !1364, !tbaa !145
  br label %return, !dbg !1365

if.end269:                                        ; preds = %if.end93, %if.end93
  %tobool270 = icmp eq i32 %4, 0, !dbg !1366
  br i1 %tobool270, label %if.end323, label %if.then271, !dbg !1366

if.then271:                                       ; preds = %land.lhs.true239, %if.end269
  %rem526 = and i32 %31, 1, !dbg !1367
  %tobool274 = icmp eq i32 %rem526, 0, !dbg !1367
  store i32 %3, i32* %arrayidx95, align 4, !dbg !1369, !tbaa !145
  %arrayidx279 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1371
  br i1 %tobool274, label %if.end299, label %if.then275, !dbg !1367

if.then275:                                       ; preds = %if.then271
  store i32 1, i32* %arrayidx279, align 4, !dbg !1371, !tbaa !145
  %arrayidx281 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1372
  %77 = load i32* %arrayidx281, align 4, !dbg !1372, !tbaa !145
  %dec282 = add nsw i32 %77, -1, !dbg !1372
  store i32 %dec282, i32* %arrayidx281, align 4, !dbg !1372, !tbaa !145
  %arrayidx284 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1373
  %78 = load i32* %arrayidx284, align 4, !dbg !1373, !tbaa !145
  %dec285 = add nsw i32 %78, -1, !dbg !1373
  store i32 %dec285, i32* %arrayidx284, align 4, !dbg !1373, !tbaa !145
  %79 = load i32* @white_to_move, align 4, !dbg !1374, !tbaa !145
  %xor286 = xor i32 %79, 1, !dbg !1374
  store i32 %xor286, i32* @white_to_move, align 4, !dbg !1374, !tbaa !145
  %arrayidx288 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom47, !dbg !1375
  %80 = load i32* %arrayidx288, align 4, !dbg !1375, !tbaa !145
  %81 = load i32* @hash, align 4, !dbg !1375, !tbaa !145
  %xor289 = xor i32 %81, %80, !dbg !1375
  %idxprom291 = sext i32 %4 to i64, !dbg !1376
  %arrayidx293 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom291, i64 %idxprom21, !dbg !1376
  %82 = load i32* %arrayidx293, align 4, !dbg !1376, !tbaa !145
  %xor294 = xor i32 %xor289, %82, !dbg !1376
  store i32 %xor294, i32* @hash, align 4, !dbg !1376, !tbaa !145
  %arrayidx296 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom291, !dbg !1377
  %83 = load i32* %arrayidx296, align 4, !dbg !1377, !tbaa !145
  %84 = load i32* @Material, align 4, !dbg !1377, !tbaa !145
  %sub297 = sub nsw i32 %84, %83, !dbg !1377
  %85 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !dbg !1378, !tbaa !145
  %add298 = add nsw i32 %sub297, %85, !dbg !1378
  store i32 %add298, i32* @Material, align 4, !dbg !1378, !tbaa !145
  br label %return, !dbg !1379

if.end299:                                        ; preds = %if.then271
  store i32 2, i32* %arrayidx279, align 4, !dbg !1380, !tbaa !145
  %arrayidx305 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1381
  %86 = load i32* %arrayidx305, align 4, !dbg !1381, !tbaa !145
  %dec306 = add nsw i32 %86, -1, !dbg !1381
  store i32 %dec306, i32* %arrayidx305, align 4, !dbg !1381, !tbaa !145
  %arrayidx308 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1382
  %87 = load i32* %arrayidx308, align 4, !dbg !1382, !tbaa !145
  %dec309 = add nsw i32 %87, -1, !dbg !1382
  store i32 %dec309, i32* %arrayidx308, align 4, !dbg !1382, !tbaa !145
  %88 = load i32* @white_to_move, align 4, !dbg !1383, !tbaa !145
  %xor310 = xor i32 %88, 1, !dbg !1383
  store i32 %xor310, i32* @white_to_move, align 4, !dbg !1383, !tbaa !145
  %arrayidx312 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom47, !dbg !1384
  %89 = load i32* %arrayidx312, align 4, !dbg !1384, !tbaa !145
  %90 = load i32* @hash, align 4, !dbg !1384, !tbaa !145
  %xor313 = xor i32 %90, %89, !dbg !1384
  %idxprom315 = sext i32 %4 to i64, !dbg !1385
  %arrayidx317 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom315, i64 %idxprom21, !dbg !1385
  %91 = load i32* %arrayidx317, align 4, !dbg !1385, !tbaa !145
  %xor318 = xor i32 %xor313, %91, !dbg !1385
  store i32 %xor318, i32* @hash, align 4, !dbg !1385, !tbaa !145
  %arrayidx320 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom315, !dbg !1386
  %92 = load i32* %arrayidx320, align 4, !dbg !1386, !tbaa !145
  %93 = load i32* @Material, align 4, !dbg !1386, !tbaa !145
  %sub321 = sub nsw i32 %93, %92, !dbg !1386
  %94 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !dbg !1387, !tbaa !145
  %add322 = add nsw i32 %sub321, %94, !dbg !1387
  store i32 %add322, i32* @Material, align 4, !dbg !1387, !tbaa !145
  br label %return, !dbg !1388

if.end323:                                        ; preds = %if.end269
  %cmp326 = icmp eq i32 %31, 5, !dbg !1389
  br i1 %cmp326, label %if.then327, label %if.else364, !dbg !1389

if.then327:                                       ; preds = %if.end323
  store i32 %1, i32* @wking_loc, align 4, !dbg !1390, !tbaa !145
  store i32 %3, i32* %arrayidx95, align 4, !dbg !1392, !tbaa !145
  %arrayidx331 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1393
  store i32 5, i32* %arrayidx331, align 4, !dbg !1393, !tbaa !145
  %arrayidx333 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1394
  %95 = load i32* %arrayidx333, align 4, !dbg !1394, !tbaa !145
  %dec334 = add nsw i32 %95, -1, !dbg !1394
  store i32 %dec334, i32* %arrayidx333, align 4, !dbg !1394, !tbaa !145
  %arrayidx336 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1395
  %96 = load i32* %arrayidx336, align 4, !dbg !1395, !tbaa !145
  %dec337 = add nsw i32 %96, -1, !dbg !1395
  store i32 %dec337, i32* %arrayidx336, align 4, !dbg !1395, !tbaa !145
  %97 = load i32* @white_to_move, align 4, !dbg !1396, !tbaa !145
  %xor338 = xor i32 %97, 1, !dbg !1396
  store i32 %xor338, i32* @white_to_move, align 4, !dbg !1396, !tbaa !145
  %arrayidx340 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom47, !dbg !1397
  %98 = load i32* %arrayidx340, align 4, !dbg !1397, !tbaa !145
  %99 = load i32* @hash, align 4, !dbg !1397, !tbaa !145
  %xor341 = xor i32 %99, %98, !dbg !1397
  %arrayidx343 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom21, !dbg !1398
  %100 = load i32* %arrayidx343, align 4, !dbg !1398, !tbaa !145
  %xor344 = xor i32 %xor341, %100, !dbg !1398
  store i32 %xor344, i32* @hash, align 4, !dbg !1398, !tbaa !145
  switch i32 %5, label %return [
    i32 1, label %if.then346
    i32 2, label %if.then355
  ], !dbg !1399

if.then346:                                       ; preds = %if.then327
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !dbg !1400, !tbaa !145
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !dbg !1402, !tbaa !145
  %101 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !dbg !1403, !tbaa !145
  %dec347 = add nsw i32 %101, -1, !dbg !1403
  store i32 %dec347, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !dbg !1403, !tbaa !145
  %102 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !dbg !1404, !tbaa !145
  %dec348 = add nsw i32 %102, -1, !dbg !1404
  store i32 %dec348, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !dbg !1404, !tbaa !145
  store i32 0, i32* @white_castled, align 4, !dbg !1405, !tbaa !145
  %103 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 31), align 4, !dbg !1406, !tbaa !145
  store i32 %103, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 33), align 4, !dbg !1406, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 31), align 4, !dbg !1407, !tbaa !145
  %idxprom349 = sext i32 %103 to i64, !dbg !1408
  %arrayidx350 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom349, !dbg !1408
  store i32 33, i32* %arrayidx350, align 4, !dbg !1408, !tbaa !145
  %104 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 33), align 4, !dbg !1409, !tbaa !145
  %xor351 = xor i32 %xor344, %104, !dbg !1409
  %105 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 31), align 4, !dbg !1410, !tbaa !145
  %xor352 = xor i32 %xor351, %105, !dbg !1410
  store i32 %xor352, i32* @hash, align 4, !dbg !1410, !tbaa !145
  br label %return, !dbg !1411

if.then355:                                       ; preds = %if.then327
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 26), align 4, !dbg !1412, !tbaa !145
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 29), align 4, !dbg !1414, !tbaa !145
  %106 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !dbg !1415, !tbaa !145
  %dec356 = add nsw i32 %106, -1, !dbg !1415
  store i32 %dec356, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !dbg !1415, !tbaa !145
  %107 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !dbg !1416, !tbaa !145
  %dec357 = add nsw i32 %107, -1, !dbg !1416
  store i32 %dec357, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !dbg !1416, !tbaa !145
  store i32 0, i32* @white_castled, align 4, !dbg !1417, !tbaa !145
  %108 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 29), align 4, !dbg !1418, !tbaa !145
  store i32 %108, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 26), align 4, !dbg !1418, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 29), align 4, !dbg !1419, !tbaa !145
  %idxprom358 = sext i32 %108 to i64, !dbg !1420
  %arrayidx359 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom358, !dbg !1420
  store i32 26, i32* %arrayidx359, align 4, !dbg !1420, !tbaa !145
  %109 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 29), align 4, !dbg !1421, !tbaa !145
  %xor360 = xor i32 %xor344, %109, !dbg !1421
  %110 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 26), align 4, !dbg !1422, !tbaa !145
  %xor361 = xor i32 %xor360, %110, !dbg !1422
  store i32 %xor361, i32* @hash, align 4, !dbg !1422, !tbaa !145
  br label %return, !dbg !1423

if.else364:                                       ; preds = %if.end323
  store i32 %1, i32* @bking_loc, align 4, !dbg !1424, !tbaa !145
  store i32 %3, i32* %arrayidx95, align 4, !dbg !1426, !tbaa !145
  %arrayidx368 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47, !dbg !1427
  store i32 6, i32* %arrayidx368, align 4, !dbg !1427, !tbaa !145
  %arrayidx370 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21, !dbg !1428
  %111 = load i32* %arrayidx370, align 4, !dbg !1428, !tbaa !145
  %dec371 = add nsw i32 %111, -1, !dbg !1428
  store i32 %dec371, i32* %arrayidx370, align 4, !dbg !1428, !tbaa !145
  %arrayidx373 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom47, !dbg !1429
  %112 = load i32* %arrayidx373, align 4, !dbg !1429, !tbaa !145
  %dec374 = add nsw i32 %112, -1, !dbg !1429
  store i32 %dec374, i32* %arrayidx373, align 4, !dbg !1429, !tbaa !145
  %113 = load i32* @white_to_move, align 4, !dbg !1430, !tbaa !145
  %xor375 = xor i32 %113, 1, !dbg !1430
  store i32 %xor375, i32* @white_to_move, align 4, !dbg !1430, !tbaa !145
  %arrayidx377 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom47, !dbg !1431
  %114 = load i32* %arrayidx377, align 4, !dbg !1431, !tbaa !145
  %115 = load i32* @hash, align 4, !dbg !1431, !tbaa !145
  %xor378 = xor i32 %115, %114, !dbg !1431
  %arrayidx380 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom21, !dbg !1432
  %116 = load i32* %arrayidx380, align 4, !dbg !1432, !tbaa !145
  %xor381 = xor i32 %xor378, %116, !dbg !1432
  store i32 %xor381, i32* @hash, align 4, !dbg !1432, !tbaa !145
  switch i32 %5, label %return [
    i32 3, label %if.then383
    i32 4, label %if.then392
  ], !dbg !1433

if.then383:                                       ; preds = %if.else364
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !dbg !1434, !tbaa !145
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !dbg !1436, !tbaa !145
  %117 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !dbg !1437, !tbaa !145
  %dec384 = add nsw i32 %117, -1, !dbg !1437
  store i32 %dec384, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !dbg !1437, !tbaa !145
  %118 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !dbg !1438, !tbaa !145
  %dec385 = add nsw i32 %118, -1, !dbg !1438
  store i32 %dec385, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !dbg !1438, !tbaa !145
  store i32 0, i32* @black_castled, align 4, !dbg !1439, !tbaa !145
  %119 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 115), align 4, !dbg !1440, !tbaa !145
  store i32 %119, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 117), align 4, !dbg !1440, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 115), align 4, !dbg !1441, !tbaa !145
  %idxprom386 = sext i32 %119 to i64, !dbg !1442
  %arrayidx387 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom386, !dbg !1442
  store i32 117, i32* %arrayidx387, align 4, !dbg !1442, !tbaa !145
  %120 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 117), align 4, !dbg !1443, !tbaa !145
  %xor388 = xor i32 %xor381, %120, !dbg !1443
  %121 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 115), align 4, !dbg !1444, !tbaa !145
  %xor389 = xor i32 %xor388, %121, !dbg !1444
  store i32 %xor389, i32* @hash, align 4, !dbg !1444, !tbaa !145
  br label %return, !dbg !1445

if.then392:                                       ; preds = %if.else364
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 110), align 4, !dbg !1446, !tbaa !145
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 113), align 4, !dbg !1448, !tbaa !145
  %122 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !dbg !1449, !tbaa !145
  %dec393 = add nsw i32 %122, -1, !dbg !1449
  store i32 %dec393, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !dbg !1449, !tbaa !145
  %123 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !dbg !1450, !tbaa !145
  %dec394 = add nsw i32 %123, -1, !dbg !1450
  store i32 %dec394, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !dbg !1450, !tbaa !145
  store i32 0, i32* @black_castled, align 4, !dbg !1451, !tbaa !145
  %124 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 113), align 4, !dbg !1452, !tbaa !145
  store i32 %124, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 110), align 4, !dbg !1452, !tbaa !145
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 113), align 4, !dbg !1453, !tbaa !145
  %idxprom395 = sext i32 %124 to i64, !dbg !1454
  %arrayidx396 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom395, !dbg !1454
  store i32 110, i32* %arrayidx396, align 4, !dbg !1454, !tbaa !145
  %125 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 110), align 4, !dbg !1455, !tbaa !145
  %xor397 = xor i32 %xor381, %125, !dbg !1455
  %126 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 113), align 4, !dbg !1456, !tbaa !145
  %xor398 = xor i32 %xor397, %126, !dbg !1456
  store i32 %xor398, i32* @hash, align 4, !dbg !1456, !tbaa !145
  br label %return, !dbg !1457

return:                                           ; preds = %if.else364, %if.then327, %if.then392, %if.then383, %if.then355, %if.then346, %if.end299, %if.then275, %if.then241, %if.end213, %if.then168, %if.end144, %if.then99, %cond.end
  ret void, !dbg !1458
}

; Function Attrs: optsize
declare void @DropaddHolding(i32, i32) #1

; Function Attrs: optsize
declare void @removeHolding(i32, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !127, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !34, metadata !43, metadata !46, metadata !55, metadata !60, metadata !73, metadata !79, metadata !87, metadata !92, metadata !96, metadata !99, metadata !102, metadata !109, metadata !112, metadata !117}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"check_legal", metadata !"check_legal", metadata !"", i32 25, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.move_s*, i32, i32)* @check_legal, null, null, metadata !26, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [check_legal]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !20, metadata !20}
!14 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from move_s]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!19 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!23 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!24 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!25 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!27 = metadata !{i32 786689, metadata !10, metadata !"moves", metadata !11, i32 16777241, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [moves] [line 25]
!28 = metadata !{i32 786689, metadata !10, metadata !"m", metadata !11, i32 33554457, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 25]
!29 = metadata !{i32 786689, metadata !10, metadata !"incheck", metadata !11, i32 50331673, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [incheck] [line 25]
!30 = metadata !{i32 786688, metadata !10, metadata !"castled", metadata !11, i32 31, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [castled] [line 31]
!31 = metadata !{i32 786688, metadata !10, metadata !"from", metadata !11, i32 32, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 32]
!32 = metadata !{i32 786688, metadata !10, metadata !"target", metadata !11, i32 33, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 33]
!33 = metadata !{i32 786688, metadata !10, metadata !"l", metadata !11, i32 34, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 34]
!34 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"gen", metadata !"gen", metadata !"", i32 439, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*)* @gen, null, null, metadata !37, i32 439} ; [ DW_TAG_subprogram ] [line 439] [def] [gen]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !15}
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!38 = metadata !{i32 786689, metadata !34, metadata !"moves", metadata !11, i32 16777655, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [moves] [line 439]
!39 = metadata !{i32 786688, metadata !34, metadata !"from", metadata !11, i32 443, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 443]
!40 = metadata !{i32 786688, metadata !34, metadata !"a", metadata !11, i32 443, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 443]
!41 = metadata !{i32 786688, metadata !34, metadata !"j", metadata !11, i32 443, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 443]
!42 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !11, i32 443, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 443]
!43 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"in_check", metadata !"in_check", metadata !"", i32 779, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @in_check, null, null, metadata !8, i32 779} ; [ DW_TAG_subprogram ] [line 779] [def] [in_check]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{metadata !14}
!46 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"f_in_check", metadata !"f_in_check", metadata !"", i32 800, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.move_s*, i32)* @f_in_check, null, null, metadata !49, i32 801} ; [ DW_TAG_subprogram ] [line 800] [def] [scope 801] [f_in_check]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{metadata !14, metadata !15, metadata !20}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!50 = metadata !{i32 786689, metadata !46, metadata !"moves", metadata !11, i32 16778016, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [moves] [line 800]
!51 = metadata !{i32 786689, metadata !46, metadata !"m", metadata !11, i32 33555232, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 800]
!52 = metadata !{i32 786688, metadata !46, metadata !"target", metadata !11, i32 802, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 802]
!53 = metadata !{i32 786688, metadata !46, metadata !"from", metadata !11, i32 803, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 803]
!54 = metadata !{i32 786688, metadata !46, metadata !"l", metadata !11, i32 804, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 804]
!55 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"extended_in_check", metadata !"extended_in_check", metadata !"", i32 1211, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @extended_in_check, null, null, metadata !58, i32 1212} ; [ DW_TAG_subprogram ] [line 1211] [def] [scope 1212] [extended_in_check]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{metadata !20}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786688, metadata !55, metadata !"sq", metadata !11, i32 1213, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sq] [line 1213]
!60 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"make", metadata !"make", metadata !"", i32 1278, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, i32)* @make, null, null, metadata !63, i32 1278} ; [ DW_TAG_subprogram ] [line 1278] [def] [make]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{null, metadata !15, metadata !20}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!64 = metadata !{i32 786689, metadata !60, metadata !"moves", metadata !11, i32 16778494, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [moves] [line 1278]
!65 = metadata !{i32 786689, metadata !60, metadata !"i", metadata !11, i32 33555710, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 1278]
!66 = metadata !{i32 786688, metadata !60, metadata !"ep", metadata !11, i32 1284, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep] [line 1284]
!67 = metadata !{i32 786688, metadata !60, metadata !"from", metadata !11, i32 1284, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 1284]
!68 = metadata !{i32 786688, metadata !60, metadata !"target", metadata !11, i32 1284, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 1284]
!69 = metadata !{i32 786688, metadata !60, metadata !"captured", metadata !11, i32 1284, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [captured] [line 1284]
!70 = metadata !{i32 786688, metadata !60, metadata !"promoted", metadata !11, i32 1284, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [promoted] [line 1284]
!71 = metadata !{i32 786688, metadata !60, metadata !"castled", metadata !11, i32 1284, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [castled] [line 1284]
!72 = metadata !{i32 786688, metadata !60, metadata !"find_slot", metadata !11, i32 1284, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [find_slot] [line 1284]
!73 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"add_move", metadata !"add_move", metadata !"", i32 1687, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @add_move, null, null, metadata !76, i32 1689} ; [ DW_TAG_subprogram ] [line 1687] [def] [scope 1689] [add_move]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{null, metadata !20, metadata !20}
!76 = metadata !{metadata !77, metadata !78}
!77 = metadata !{i32 786689, metadata !73, metadata !"Ptarget", metadata !11, i32 16778903, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ptarget] [line 1687]
!78 = metadata !{i32 786689, metadata !73, metadata !"Ppromoted", metadata !11, i32 33556120, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ppromoted] [line 1688]
!79 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"add_capture", metadata !"add_capture", metadata !"", i32 1701, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32)* @add_capture, null, null, metadata !82, i32 1705} ; [ DW_TAG_subprogram ] [line 1701] [def] [scope 1705] [add_capture]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{null, metadata !20, metadata !20, metadata !20, metadata !20}
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86}
!83 = metadata !{i32 786689, metadata !79, metadata !"Ptarget", metadata !11, i32 16778917, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ptarget] [line 1701]
!84 = metadata !{i32 786689, metadata !79, metadata !"Pcaptured", metadata !11, i32 33556134, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pcaptured] [line 1702]
!85 = metadata !{i32 786689, metadata !79, metadata !"Ppromoted", metadata !11, i32 50333351, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ppromoted] [line 1703]
!86 = metadata !{i32 786689, metadata !79, metadata !"Pep", metadata !11, i32 67110568, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pep] [line 1704]
!87 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"try_drop", metadata !"try_drop", metadata !"", i32 1725, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @try_drop, null, null, metadata !90, i32 1726} ; [ DW_TAG_subprogram ] [line 1725] [def] [scope 1726] [try_drop]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !20}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786689, metadata !87, metadata !"ptype", metadata !11, i32 16778941, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptype] [line 1725]
!92 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"push_king_castle", metadata !"push_king_castle", metadata !"", i32 1738, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @push_king_castle, null, null, metadata !93, i32 1739} ; [ DW_TAG_subprogram ] [line 1738] [def] [scope 1739] [push_king_castle]
!93 = metadata !{metadata !94, metadata !95}
!94 = metadata !{i32 786689, metadata !92, metadata !"Ptarget", metadata !11, i32 16778954, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ptarget] [line 1738]
!95 = metadata !{i32 786689, metadata !92, metadata !"Pcastle_type", metadata !11, i32 33556170, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pcastle_type] [line 1738]
!96 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"push_king", metadata !"push_king", metadata !"", i32 1751, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @push_king, null, null, metadata !97, i32 1751} ; [ DW_TAG_subprogram ] [line 1751] [def] [push_king]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786689, metadata !96, metadata !"target", metadata !11, i32 16778967, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 1751]
!99 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"push_knighT", metadata !"push_knighT", metadata !"", i32 1780, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @push_knighT, null, null, metadata !100, i32 1780} ; [ DW_TAG_subprogram ] [line 1780] [def] [push_knighT]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786689, metadata !99, metadata !"target", metadata !11, i32 16778996, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 1780]
!102 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"push_pawn", metadata !"push_pawn", metadata !"", i32 1805, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @push_pawn, null, null, metadata !105, i32 1805} ; [ DW_TAG_subprogram ] [line 1805] [def] [push_pawn]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{null, metadata !20, metadata !14}
!105 = metadata !{metadata !106, metadata !107, metadata !108}
!106 = metadata !{i32 786689, metadata !102, metadata !"target", metadata !11, i32 16779021, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 1805]
!107 = metadata !{i32 786689, metadata !102, metadata !"is_ep", metadata !11, i32 33556237, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [is_ep] [line 1805]
!108 = metadata !{i32 786688, metadata !102, metadata !"captured_piece", metadata !11, i32 1809, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [captured_piece] [line 1809]
!109 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"push_pawn_simple", metadata !"push_pawn_simple", metadata !"", i32 1858, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @push_pawn_simple, null, null, metadata !110, i32 1858} ; [ DW_TAG_subprogram ] [line 1858] [def] [push_pawn_simple]
!110 = metadata !{metadata !111}
!111 = metadata !{i32 786689, metadata !109, metadata !"target", metadata !11, i32 16779074, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 1858]
!112 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"push_slidE", metadata !"push_slidE", metadata !"", i32 1866, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @push_slidE, null, null, metadata !113, i32 1866} ; [ DW_TAG_subprogram ] [line 1866] [def] [push_slidE]
!113 = metadata !{metadata !114, metadata !115, metadata !116}
!114 = metadata !{i32 786689, metadata !112, metadata !"target", metadata !11, i32 16779082, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 1866]
!115 = metadata !{i32 786688, metadata !112, metadata !"offset", metadata !11, i32 1870, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1870]
!116 = metadata !{i32 786688, metadata !112, metadata !"mycolor", metadata !11, i32 1871, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mycolor] [line 1871]
!117 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"unmake", metadata !"unmake", metadata !"", i32 1904, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*, i32)* @unmake, null, null, metadata !118, i32 1904} ; [ DW_TAG_subprogram ] [line 1904] [def] [unmake]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!119 = metadata !{i32 786689, metadata !117, metadata !"moves", metadata !11, i32 16779120, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [moves] [line 1904]
!120 = metadata !{i32 786689, metadata !117, metadata !"i", metadata !11, i32 33556336, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 1904]
!121 = metadata !{i32 786688, metadata !117, metadata !"ep", metadata !11, i32 1910, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep] [line 1910]
!122 = metadata !{i32 786688, metadata !117, metadata !"from", metadata !11, i32 1910, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 1910]
!123 = metadata !{i32 786688, metadata !117, metadata !"target", metadata !11, i32 1910, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 1910]
!124 = metadata !{i32 786688, metadata !117, metadata !"captured", metadata !11, i32 1910, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [captured] [line 1910]
!125 = metadata !{i32 786688, metadata !117, metadata !"promoted", metadata !11, i32 1910, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [promoted] [line 1910]
!126 = metadata !{i32 786688, metadata !117, metadata !"castled", metadata !11, i32 1910, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [castled] [line 1910]
!127 = metadata !{metadata !128, metadata !133, metadata !134, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141}
!128 = metadata !{i32 786484, i32 0, metadata !46, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !11, i32 805, metadata !129, i32 1, i32 1, [8 x i32]* @extended_in_check.knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 805] [local] [def]
!129 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !130, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!130 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!133 = metadata !{i32 786484, i32 0, metadata !55, metadata !"knight_o", metadata !"knight_o", metadata !"", metadata !11, i32 1214, metadata !129, i32 1, i32 1, [8 x i32]* @extended_in_check.knight_o, null} ; [ DW_TAG_variable ] [knight_o] [line 1214] [local] [def]
!134 = metadata !{i32 786484, i32 0, null, metadata !"total_moves", metadata !"total_moves", metadata !"", metadata !11, i32 14, metadata !135, i32 0, i32 1, i32* @total_moves, null} ; [ DW_TAG_variable ] [total_moves] [line 14] [def]
!135 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!136 = metadata !{i32 786484, i32 0, null, metadata !"total_movegens", metadata !"total_movegens", metadata !"", metadata !11, i32 15, metadata !135, i32 0, i32 1, i32* @total_movegens, null} ; [ DW_TAG_variable ] [total_movegens] [line 15] [def]
!137 = metadata !{i32 786484, i32 0, null, metadata !"numb_moves", metadata !"numb_moves", metadata !"", metadata !11, i32 17, metadata !20, i32 0, i32 1, i32* @numb_moves, null} ; [ DW_TAG_variable ] [numb_moves] [line 17] [def]
!138 = metadata !{i32 786484, i32 0, null, metadata !"genfor", metadata !"genfor", metadata !"", metadata !11, i32 18, metadata !15, i32 1, i32 1, %struct.move_s** @genfor, null} ; [ DW_TAG_variable ] [genfor] [line 18] [local] [def]
!139 = metadata !{i32 786484, i32 0, null, metadata !"fcaptures", metadata !"fcaptures", metadata !"", metadata !11, i32 20, metadata !14, i32 0, i32 1, i32* @fcaptures, null} ; [ DW_TAG_variable ] [fcaptures] [line 20] [def]
!140 = metadata !{i32 786484, i32 0, null, metadata !"gfrom", metadata !"gfrom", metadata !"", metadata !11, i32 21, metadata !20, i32 0, i32 1, i32* @gfrom, null} ; [ DW_TAG_variable ] [gfrom] [line 21] [def]
!141 = metadata !{i32 786484, i32 0, null, metadata !"kingcap", metadata !"kingcap", metadata !"", metadata !11, i32 23, metadata !20, i32 0, i32 1, i32* @kingcap, null} ; [ DW_TAG_variable ] [kingcap] [line 23] [def]
!142 = metadata !{i32 25, i32 0, metadata !10, null}
!143 = metadata !{i32 31, i32 0, metadata !10, null}
!144 = metadata !{i32 32, i32 0, metadata !10, null}
!145 = metadata !{metadata !"int", metadata !146}
!146 = metadata !{metadata !"omnipotent char", metadata !147}
!147 = metadata !{metadata !"Simple C/C++ TBAA"}
!148 = metadata !{i32 33, i32 0, metadata !10, null}
!149 = metadata !{i32 36, i32 0, metadata !10, null}
!150 = metadata !{i32 39, i32 0, metadata !10, null}
!151 = metadata !{i32 43, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !153, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!153 = metadata !{i32 786443, metadata !1, metadata !10, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!154 = metadata !{i32 44, i32 0, metadata !152, null}
!155 = metadata !{i32 45, i32 0, metadata !152, null}
!156 = metadata !{i32 46, i32 0, metadata !152, null}
!157 = metadata !{i32 50, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !153, i32 49, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!159 = metadata !{i32 51, i32 0, metadata !158, null}
!160 = metadata !{i32 52, i32 0, metadata !158, null}
!161 = metadata !{i32 53, i32 0, metadata !158, null}
!162 = metadata !{i32 57, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !153, i32 56, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!164 = metadata !{i32 58, i32 0, metadata !163, null} ; [ DW_TAG_imported_module ]
!165 = metadata !{i32 59, i32 0, metadata !163, null}
!166 = metadata !{i32 60, i32 0, metadata !163, null}
!167 = metadata !{i32 64, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !153, i32 63, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!169 = metadata !{i32 65, i32 0, metadata !168, null}
!170 = metadata !{i32 66, i32 0, metadata !168, null}
!171 = metadata !{i32 67, i32 0, metadata !168, null}
!172 = metadata !{i32 78, i32 0, metadata !10, null}
!173 = metadata !{i32 80, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !10, i32 79, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!175 = metadata !{i32 82, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !174, i32 81, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!177 = metadata !{i32 84, i32 0, metadata !176, null}
!178 = metadata !{i32 89, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !176, i32 85, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!180 = metadata !{i32 91, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !179, i32 90, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!182 = metadata !{i32 99, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !179, i32 98, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!184 = metadata !{i32 107, i32 0, metadata !179, null}
!185 = metadata !{i32 116, i32 0, metadata !179, null}
!186 = metadata !{i32 119, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !179, i32 118, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!188 = metadata !{i32 123, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !187, i32 120, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!190 = metadata !{i32 128, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !187, i32 127, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!192 = metadata !{i32 136, i32 0, metadata !179, null}
!193 = metadata !{i32 140, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !179, i32 138, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!195 = metadata !{i32 142, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !194, i32 141, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!197 = metadata !{i32 148, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !194, i32 146, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!199 = metadata !{i32 155, i32 0, metadata !179, null}
!200 = metadata !{i32 157, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !179, i32 156, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!202 = metadata !{i32 162, i32 0, metadata !179, null}
!203 = metadata !{i32 164, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !179, i32 163, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!205 = metadata !{i32 169, i32 0, metadata !179, null}
!206 = metadata !{i32 171, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !179, i32 170, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!208 = metadata !{i32 176, i32 0, metadata !179, null}
!209 = metadata !{i32 178, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !179, i32 177, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!211 = metadata !{i32 194, i32 0, metadata !176, null}
!212 = metadata !{i32 196, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !176, i32 195, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!214 = metadata !{i32 198, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 197, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!216 = metadata !{i32 200, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !218, i32 200, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!218 = metadata !{i32 786443, metadata !1, metadata !215, i32 199, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!219 = metadata !{i32 205, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !221, i32 205, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!221 = metadata !{i32 786443, metadata !1, metadata !215, i32 204, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!222 = metadata !{i32 209, i32 0, metadata !213, null}
!223 = metadata !{i32 211, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !213, i32 210, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!225 = metadata !{i32 213, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 213, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!227 = metadata !{i32 786443, metadata !1, metadata !224, i32 212, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!228 = metadata !{i32 218, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !230, i32 218, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!230 = metadata !{i32 786443, metadata !1, metadata !224, i32 217, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!231 = metadata !{i32 222, i32 0, metadata !213, null}
!232 = metadata !{i32 224, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !213, i32 223, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!234 = metadata !{i32 226, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !236, i32 226, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!236 = metadata !{i32 786443, metadata !1, metadata !233, i32 225, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!237 = metadata !{i32 231, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !239, i32 231, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!239 = metadata !{i32 786443, metadata !1, metadata !233, i32 230, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!240 = metadata !{i32 235, i32 0, metadata !213, null}
!241 = metadata !{i32 237, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !213, i32 236, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!243 = metadata !{i32 239, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !245, i32 239, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!245 = metadata !{i32 786443, metadata !1, metadata !242, i32 238, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!246 = metadata !{i32 244, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !248, i32 244, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!248 = metadata !{i32 786443, metadata !1, metadata !242, i32 243, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!249 = metadata !{i32 252, i32 0, metadata !174, null}
!250 = metadata !{i32 253, i32 0, metadata !174, null}
!251 = metadata !{i32 260, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !10, i32 258, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!253 = metadata !{i32 262, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !252, i32 261, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!255 = metadata !{i32 264, i32 0, metadata !254, null}
!256 = metadata !{i32 269, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !254, i32 265, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!258 = metadata !{i32 271, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 270, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!260 = metadata !{i32 279, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !257, i32 278, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!262 = metadata !{i32 287, i32 0, metadata !257, null}
!263 = metadata !{i32 296, i32 0, metadata !257, null}
!264 = metadata !{i32 299, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !257, i32 298, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!266 = metadata !{i32 303, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 300, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!268 = metadata !{i32 308, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !265, i32 307, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!270 = metadata !{i32 316, i32 0, metadata !257, null}
!271 = metadata !{i32 320, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !257, i32 318, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!273 = metadata !{i32 322, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !272, i32 321, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!275 = metadata !{i32 328, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !272, i32 326, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!277 = metadata !{i32 335, i32 0, metadata !257, null}
!278 = metadata !{i32 337, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !257, i32 336, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!280 = metadata !{i32 342, i32 0, metadata !257, null}
!281 = metadata !{i32 344, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !257, i32 343, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!283 = metadata !{i32 349, i32 0, metadata !257, null}
!284 = metadata !{i32 351, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !257, i32 350, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!286 = metadata !{i32 356, i32 0, metadata !257, null}
!287 = metadata !{i32 358, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !257, i32 357, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!289 = metadata !{i32 368, i32 0, metadata !254, null}
!290 = metadata !{i32 370, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !254, i32 369, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!292 = metadata !{i32 372, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 371, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!294 = metadata !{i32 374, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !296, i32 374, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!296 = metadata !{i32 786443, metadata !1, metadata !293, i32 373, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!297 = metadata !{i32 379, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !299, i32 379, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!299 = metadata !{i32 786443, metadata !1, metadata !293, i32 378, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!300 = metadata !{i32 383, i32 0, metadata !291, null}
!301 = metadata !{i32 385, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !291, i32 384, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!303 = metadata !{i32 387, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !305, i32 387, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!305 = metadata !{i32 786443, metadata !1, metadata !302, i32 386, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!306 = metadata !{i32 392, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 392, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!308 = metadata !{i32 786443, metadata !1, metadata !302, i32 391, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!309 = metadata !{i32 396, i32 0, metadata !291, null}
!310 = metadata !{i32 398, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !291, i32 397, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!312 = metadata !{i32 400, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !314, i32 400, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!314 = metadata !{i32 786443, metadata !1, metadata !311, i32 399, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!315 = metadata !{i32 405, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !317, i32 405, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!317 = metadata !{i32 786443, metadata !1, metadata !311, i32 404, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!318 = metadata !{i32 409, i32 0, metadata !291, null}
!319 = metadata !{i32 411, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !291, i32 410, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!321 = metadata !{i32 413, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !323, i32 413, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!323 = metadata !{i32 786443, metadata !1, metadata !320, i32 412, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!324 = metadata !{i32 418, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !326, i32 418, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!326 = metadata !{i32 786443, metadata !1, metadata !320, i32 417, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!327 = metadata !{i32 426, i32 0, metadata !252, null}
!328 = metadata !{i32 427, i32 0, metadata !252, null}
!329 = metadata !{i32 431, i32 0, metadata !10, null}
!330 = metadata !{i32 439, i32 0, metadata !34, null}
!331 = metadata !{i32 445, i32 0, metadata !34, null}
!332 = metadata !{i32 447, i32 0, metadata !34, null}
!333 = metadata !{i32 448, i32 0, metadata !34, null}
!334 = metadata !{metadata !"any pointer", metadata !146}
!335 = metadata !{i32 450, i32 0, metadata !34, null}
!336 = metadata !{i32 452, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !34, i32 451, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!338 = metadata !{i32 453, i32 0, metadata !337, null}
!339 = metadata !{i32 454, i32 0, metadata !337, null}
!340 = metadata !{i32 459, i32 0, metadata !34, null}
!341 = metadata !{i32 1}
!342 = metadata !{i32 460, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !344, i32 460, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!344 = metadata !{i32 786443, metadata !1, metadata !34, i32 459, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!345 = metadata !{i32 572, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !347, i32 572, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!347 = metadata !{i32 786443, metadata !1, metadata !34, i32 571, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!348 = metadata !{i32 466, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !343, i32 464, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!350 = metadata !{i32 468, i32 0, metadata !349, null}
!351 = metadata !{i32 471, i32 0, metadata !349, null}
!352 = metadata !{i32 473, i32 0, metadata !349, null}
!353 = metadata !{i32 474, i32 0, metadata !349, null}
!354 = metadata !{i32 476, i32 0, metadata !349, null}
!355 = metadata !{i32 479, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !349, i32 476, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!357 = metadata !{i32 481, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 479, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!359 = metadata !{i32 482, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !358, i32 481, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!361 = metadata !{i32 483, i32 0, metadata !360, null}
!362 = metadata !{i32 484, i32 0, metadata !358, null}
!363 = metadata !{i32 485, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !358, i32 484, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!365 = metadata !{i32 488, i32 0, metadata !364, null}
!366 = metadata !{i32 786689, metadata !109, metadata !"target", metadata !11, i32 16779074, metadata !20, i32 0, metadata !367} ; [ DW_TAG_arg_variable ] [target] [line 1858]
!367 = metadata !{i32 489, i32 0, metadata !364, null}
!368 = metadata !{i32 1858, i32 0, metadata !109, metadata !367}
!369 = metadata !{i32 1862, i32 0, metadata !109, metadata !367}
!370 = metadata !{i32 493, i32 0, metadata !356, null}
!371 = metadata !{i32 494, i32 0, metadata !356, null}
!372 = metadata !{i32 496, i32 0, metadata !356, null}
!373 = metadata !{i32 497, i32 0, metadata !356, null}
!374 = metadata !{i32 499, i32 0, metadata !356, null}
!375 = metadata !{i32 500, i32 0, metadata !356, null}
!376 = metadata !{i32 502, i32 0, metadata !356, null}
!377 = metadata !{i32 503, i32 0, metadata !356, null}
!378 = metadata !{i32 507, i32 0, metadata !356, null}
!379 = metadata !{i32 508, i32 0, metadata !356, null}
!380 = metadata !{i32 509, i32 0, metadata !356, null}
!381 = metadata !{i32 510, i32 0, metadata !356, null}
!382 = metadata !{i32 511, i32 0, metadata !356, null}
!383 = metadata !{i32 512, i32 0, metadata !356, null}
!384 = metadata !{i32 513, i32 0, metadata !356, null}
!385 = metadata !{i32 514, i32 0, metadata !356, null}
!386 = metadata !{i32 518, i32 0, metadata !356, null}
!387 = metadata !{i32 519, i32 0, metadata !356, null}
!388 = metadata !{i32 520, i32 0, metadata !356, null}
!389 = metadata !{i32 521, i32 0, metadata !356, null}
!390 = metadata !{i32 525, i32 0, metadata !356, null}
!391 = metadata !{i32 526, i32 0, metadata !356, null}
!392 = metadata !{i32 527, i32 0, metadata !356, null}
!393 = metadata !{i32 528, i32 0, metadata !356, null}
!394 = metadata !{i32 532, i32 0, metadata !356, null}
!395 = metadata !{i32 533, i32 0, metadata !356, null}
!396 = metadata !{i32 534, i32 0, metadata !356, null}
!397 = metadata !{i32 535, i32 0, metadata !356, null}
!398 = metadata !{i32 536, i32 0, metadata !356, null}
!399 = metadata !{i32 537, i32 0, metadata !356, null}
!400 = metadata !{i32 538, i32 0, metadata !356, null}
!401 = metadata !{i32 539, i32 0, metadata !356, null}
!402 = metadata !{i32 543, i32 0, metadata !356, null}
!403 = metadata !{i32 544, i32 0, metadata !356, null}
!404 = metadata !{i32 545, i32 0, metadata !356, null}
!405 = metadata !{i32 546, i32 0, metadata !356, null}
!406 = metadata !{i32 547, i32 0, metadata !356, null}
!407 = metadata !{i32 548, i32 0, metadata !356, null}
!408 = metadata !{i32 549, i32 0, metadata !356, null}
!409 = metadata !{i32 550, i32 0, metadata !356, null}
!410 = metadata !{i32 552, i32 0, metadata !356, null}
!411 = metadata !{i32 554, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !356, i32 552, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!413 = metadata !{i32 555, i32 0, metadata !412, null}
!414 = metadata !{i32 556, i32 0, metadata !412, null}
!415 = metadata !{i32 558, i32 0, metadata !412, null}
!416 = metadata !{i32 559, i32 0, metadata !412, null}
!417 = metadata !{i32 561, i32 0, metadata !412, null}
!418 = metadata !{i32 577, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !346, i32 576, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!420 = metadata !{i32 579, i32 0, metadata !419, null}
!421 = metadata !{i32 582, i32 0, metadata !419, null}
!422 = metadata !{i32 584, i32 0, metadata !419, null}
!423 = metadata !{i32 585, i32 0, metadata !419, null}
!424 = metadata !{i32 587, i32 0, metadata !419, null}
!425 = metadata !{i32 590, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !419, i32 587, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!427 = metadata !{i32 592, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !426, i32 590, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!429 = metadata !{i32 593, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !428, i32 592, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!431 = metadata !{i32 594, i32 0, metadata !430, null}
!432 = metadata !{i32 595, i32 0, metadata !428, null}
!433 = metadata !{i32 596, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !428, i32 595, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!435 = metadata !{i32 599, i32 0, metadata !434, null}
!436 = metadata !{i32 786689, metadata !109, metadata !"target", metadata !11, i32 16779074, metadata !20, i32 0, metadata !437} ; [ DW_TAG_arg_variable ] [target] [line 1858]
!437 = metadata !{i32 600, i32 0, metadata !434, null}
!438 = metadata !{i32 1858, i32 0, metadata !109, metadata !437}
!439 = metadata !{i32 1862, i32 0, metadata !109, metadata !437}
!440 = metadata !{i32 604, i32 0, metadata !426, null}
!441 = metadata !{i32 605, i32 0, metadata !426, null}
!442 = metadata !{i32 607, i32 0, metadata !426, null}
!443 = metadata !{i32 608, i32 0, metadata !426, null}
!444 = metadata !{i32 610, i32 0, metadata !426, null}
!445 = metadata !{i32 611, i32 0, metadata !426, null}
!446 = metadata !{i32 613, i32 0, metadata !426, null}
!447 = metadata !{i32 614, i32 0, metadata !426, null}
!448 = metadata !{i32 618, i32 0, metadata !426, null}
!449 = metadata !{i32 619, i32 0, metadata !426, null}
!450 = metadata !{i32 620, i32 0, metadata !426, null}
!451 = metadata !{i32 621, i32 0, metadata !426, null}
!452 = metadata !{i32 622, i32 0, metadata !426, null}
!453 = metadata !{i32 623, i32 0, metadata !426, null}
!454 = metadata !{i32 624, i32 0, metadata !426, null}
!455 = metadata !{i32 625, i32 0, metadata !426, null}
!456 = metadata !{i32 629, i32 0, metadata !426, null}
!457 = metadata !{i32 630, i32 0, metadata !426, null}
!458 = metadata !{i32 631, i32 0, metadata !426, null}
!459 = metadata !{i32 632, i32 0, metadata !426, null}
!460 = metadata !{i32 636, i32 0, metadata !426, null}
!461 = metadata !{i32 637, i32 0, metadata !426, null}
!462 = metadata !{i32 638, i32 0, metadata !426, null}
!463 = metadata !{i32 639, i32 0, metadata !426, null}
!464 = metadata !{i32 643, i32 0, metadata !426, null}
!465 = metadata !{i32 644, i32 0, metadata !426, null}
!466 = metadata !{i32 645, i32 0, metadata !426, null}
!467 = metadata !{i32 646, i32 0, metadata !426, null}
!468 = metadata !{i32 647, i32 0, metadata !426, null}
!469 = metadata !{i32 648, i32 0, metadata !426, null}
!470 = metadata !{i32 649, i32 0, metadata !426, null}
!471 = metadata !{i32 650, i32 0, metadata !426, null}
!472 = metadata !{i32 654, i32 0, metadata !426, null}
!473 = metadata !{i32 655, i32 0, metadata !426, null}
!474 = metadata !{i32 656, i32 0, metadata !426, null}
!475 = metadata !{i32 657, i32 0, metadata !426, null}
!476 = metadata !{i32 658, i32 0, metadata !426, null}
!477 = metadata !{i32 659, i32 0, metadata !426, null}
!478 = metadata !{i32 660, i32 0, metadata !426, null}
!479 = metadata !{i32 661, i32 0, metadata !426, null}
!480 = metadata !{i32 663, i32 0, metadata !426, null}
!481 = metadata !{i32 665, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !426, i32 663, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!483 = metadata !{i32 666, i32 0, metadata !482, null}
!484 = metadata !{i32 667, i32 0, metadata !482, null}
!485 = metadata !{i32 669, i32 0, metadata !482, null}
!486 = metadata !{i32 670, i32 0, metadata !482, null}
!487 = metadata !{i32 672, i32 0, metadata !482, null}
!488 = metadata !{i32 680, i32 0, metadata !34, null}
!489 = metadata !{i32 682, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !34, i32 681, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!491 = metadata !{i32 689, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !493, i32 688, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!493 = metadata !{i32 786443, metadata !1, metadata !494, i32 687, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!494 = metadata !{i32 786443, metadata !1, metadata !490, i32 686, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!495 = metadata !{i32 691, i32 0, metadata !492, null}
!496 = metadata !{i32 694, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !492, i32 692, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!498 = metadata !{i32 695, i32 0, metadata !497, null}
!499 = metadata !{i32 697, i32 0, metadata !497, null}
!500 = metadata !{i32 699, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !497, i32 698, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!502 = metadata !{i32 701, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !501, i32 700, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!504 = metadata !{i32 702, i32 0, metadata !503, null}
!505 = metadata !{i32 704, i32 0, metadata !497, null}
!506 = metadata !{i32 706, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !497, i32 705, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!508 = metadata !{i32 707, i32 0, metadata !507, null}
!509 = metadata !{i32 708, i32 0, metadata !497, null}
!510 = metadata !{i32 710, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !497, i32 709, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!512 = metadata !{i32 711, i32 0, metadata !511, null}
!513 = metadata !{i32 712, i32 0, metadata !497, null}
!514 = metadata !{i32 714, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !497, i32 713, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!516 = metadata !{i32 715, i32 0, metadata !515, null}
!517 = metadata !{i32 716, i32 0, metadata !497, null}
!518 = metadata !{i32 718, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !497, i32 717, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!520 = metadata !{i32 719, i32 0, metadata !519, null}
!521 = metadata !{i32 687, i32 0, metadata !493, null}
!522 = metadata !{i32 723, i32 0, metadata !490, null}
!523 = metadata !{i32 730, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !525, i32 729, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!525 = metadata !{i32 786443, metadata !1, metadata !526, i32 728, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!526 = metadata !{i32 786443, metadata !1, metadata !490, i32 727, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!527 = metadata !{i32 732, i32 0, metadata !524, null}
!528 = metadata !{i32 735, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !524, i32 733, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!530 = metadata !{i32 736, i32 0, metadata !529, null}
!531 = metadata !{i32 738, i32 0, metadata !529, null}
!532 = metadata !{i32 740, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !529, i32 739, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!534 = metadata !{i32 742, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !533, i32 741, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!536 = metadata !{i32 743, i32 0, metadata !535, null}
!537 = metadata !{i32 745, i32 0, metadata !529, null}
!538 = metadata !{i32 747, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !529, i32 746, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!540 = metadata !{i32 748, i32 0, metadata !539, null}
!541 = metadata !{i32 749, i32 0, metadata !529, null}
!542 = metadata !{i32 751, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !529, i32 750, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!544 = metadata !{i32 752, i32 0, metadata !543, null}
!545 = metadata !{i32 753, i32 0, metadata !529, null}
!546 = metadata !{i32 755, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !529, i32 754, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!548 = metadata !{i32 756, i32 0, metadata !547, null}
!549 = metadata !{i32 757, i32 0, metadata !529, null}
!550 = metadata !{i32 759, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !529, i32 758, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!552 = metadata !{i32 760, i32 0, metadata !551, null}
!553 = metadata !{i32 728, i32 0, metadata !525, null}
!554 = metadata !{i32 766, i32 0, metadata !34, null}
!555 = metadata !{i32 768, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !34, i32 767, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!557 = metadata !{i32 769, i32 0, metadata !556, null}
!558 = metadata !{i32 770, i32 0, metadata !556, null}
!559 = metadata !{i32 773, i32 0, metadata !34, null}
!560 = metadata !{i32 776, i32 0, metadata !34, null}
!561 = metadata !{i32 1805, i32 0, metadata !102, null}
!562 = metadata !{i32 1812, i32 0, metadata !102, null}
!563 = metadata !{i32 1813, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !102, i32 1812, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!565 = metadata !{i32 1814, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !564, i32 1813, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!567 = metadata !{i32 1815, i32 0, metadata !566, null}
!568 = metadata !{i32 1818, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !564, i32 1817, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!570 = metadata !{i32 1819, i32 0, metadata !569, null}
!571 = metadata !{i32 1825, i32 0, metadata !102, null}
!572 = metadata !{i32 1828, i32 0, metadata !102, null}
!573 = metadata !{i32 1829, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !102, i32 1828, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!575 = metadata !{i32 1830, i32 0, metadata !574, null}
!576 = metadata !{i32 1831, i32 0, metadata !574, null}
!577 = metadata !{i32 1832, i32 0, metadata !574, null}
!578 = metadata !{i32 1833, i32 0, metadata !574, null}
!579 = metadata !{i32 1834, i32 0, metadata !574, null}
!580 = metadata !{i32 1840, i32 0, metadata !102, null}
!581 = metadata !{i32 1841, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !102, i32 1840, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!583 = metadata !{i32 1842, i32 0, metadata !582, null}
!584 = metadata !{i32 1843, i32 0, metadata !582, null}
!585 = metadata !{i32 1844, i32 0, metadata !582, null}
!586 = metadata !{i32 1845, i32 0, metadata !582, null}
!587 = metadata !{i32 1846, i32 0, metadata !582, null}
!588 = metadata !{i32 1853, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !102, i32 1852, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!590 = metadata !{i32 1854, i32 0, metadata !589, null}
!591 = metadata !{i32 1854, i32 0, metadata !102, null}
!592 = metadata !{i32 1858, i32 0, metadata !109, null}
!593 = metadata !{i32 1862, i32 0, metadata !109, null}
!594 = metadata !{i32 1863, i32 0, metadata !109, null}
!595 = metadata !{i32 1780, i32 0, metadata !99, null}
!596 = metadata !{i32 1785, i32 0, metadata !99, null}
!597 = metadata !{i32 1789, i32 0, metadata !99, null}
!598 = metadata !{i32 1790, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !99, i32 1789, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!600 = metadata !{i32 1791, i32 0, metadata !599, null}
!601 = metadata !{i32 1795, i32 0, metadata !99, null}
!602 = metadata !{i32 1796, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !99, i32 1795, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!604 = metadata !{i32 1797, i32 0, metadata !603, null}
!605 = metadata !{i32 1801, i32 0, metadata !99, null}
!606 = metadata !{i32 1866, i32 0, metadata !112, null}
!607 = metadata !{i32 1875, i32 0, metadata !112, null}
!608 = metadata !{i32 1876, i32 0, metadata !112, null}
!609 = metadata !{i32 1879, i32 0, metadata !112, null}
!610 = metadata !{i32 1881, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !112, i32 1879, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!612 = metadata !{i32 1882, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !611, i32 1881, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!614 = metadata !{i32 1883, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !1, metadata !613, i32 1882, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!616 = metadata !{i32 1884, i32 0, metadata !615, null}
!617 = metadata !{i32 1885, i32 0, metadata !613, null}
!618 = metadata !{i32 1897, i32 0, metadata !611, null}
!619 = metadata !{i32 1889, i32 0, metadata !611, null}
!620 = metadata !{i32 1890, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !611, i32 1889, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!622 = metadata !{i32 1891, i32 0, metadata !621, null}
!623 = metadata !{i32 1900, i32 0, metadata !112, null}
!624 = metadata !{i32 1751, i32 0, metadata !96, null}
!625 = metadata !{i32 1756, i32 0, metadata !96, null}
!626 = metadata !{i32 1760, i32 0, metadata !96, null}
!627 = metadata !{i32 1764, i32 0, metadata !96, null}
!628 = metadata !{i32 1765, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !96, i32 1764, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!630 = metadata !{i32 1766, i32 0, metadata !629, null}
!631 = metadata !{i32 1770, i32 0, metadata !96, null}
!632 = metadata !{i32 1771, i32 0, metadata !633, null}
!633 = metadata !{i32 786443, metadata !1, metadata !96, i32 1770, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!634 = metadata !{i32 1772, i32 0, metadata !633, null}
!635 = metadata !{i32 1776, i32 0, metadata !96, null}
!636 = metadata !{i32 1738, i32 0, metadata !92, null}
!637 = metadata !{i32 1740, i32 0, metadata !92, null}
!638 = metadata !{i32 1741, i32 0, metadata !92, null}
!639 = metadata !{i32 1742, i32 0, metadata !92, null}
!640 = metadata !{i32 1743, i32 0, metadata !92, null}
!641 = metadata !{i32 1744, i32 0, metadata !92, null}
!642 = metadata !{i32 1745, i32 0, metadata !92, null}
!643 = metadata !{i32 1746, i32 0, metadata !92, null}
!644 = metadata !{i32 1748, i32 0, metadata !92, null}
!645 = metadata !{i32 1725, i32 0, metadata !87, null}
!646 = metadata !{i32 1727, i32 0, metadata !87, null}
!647 = metadata !{i32 1728, i32 0, metadata !87, null}
!648 = metadata !{i32 1729, i32 0, metadata !87, null}
!649 = metadata !{i32 1730, i32 0, metadata !87, null}
!650 = metadata !{i32 1731, i32 0, metadata !87, null}
!651 = metadata !{i32 1732, i32 0, metadata !87, null}
!652 = metadata !{i32 1733, i32 0, metadata !87, null}
!653 = metadata !{i32 1735, i32 0, metadata !87, null}
!654 = metadata !{i32 783, i32 0, metadata !43, null}
!655 = metadata !{i32 785, i32 0, metadata !43, null}
!656 = metadata !{i32 786, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !43, i32 785, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!658 = metadata !{i32 791, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !43, i32 790, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!660 = metadata !{i32 796, i32 0, metadata !43, null}
!661 = metadata !{i32 800, i32 0, metadata !46, null}
!662 = metadata !{i32 802, i32 0, metadata !46, null}
!663 = metadata !{i32 803, i32 0, metadata !46, null}
!664 = metadata !{i32 807, i32 0, metadata !46, null}
!665 = metadata !{i32 809, i32 0, metadata !46, null}
!666 = metadata !{i32 818, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !46, i32 810, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!668 = metadata !{i32 882, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !670, i32 881, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!670 = metadata !{i32 786443, metadata !1, metadata !667, i32 819, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!671 = metadata !{i32 881, i32 0, metadata !669, null}
!672 = metadata !{i32 821, i32 0, metadata !670, null}
!673 = metadata !{i32 824, i32 0, metadata !670, null}
!674 = metadata !{i32 827, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !670, i32 825, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!676 = metadata !{i32 829, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !678, i32 829, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!678 = metadata !{i32 786443, metadata !1, metadata !675, i32 828, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!679 = metadata !{i32 830, i32 0, metadata !678, null}
!680 = metadata !{i32 834, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !682, i32 834, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!682 = metadata !{i32 786443, metadata !1, metadata !675, i32 833, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!683 = metadata !{i32 835, i32 0, metadata !682, null}
!684 = metadata !{i32 838, i32 0, metadata !670, null}
!685 = metadata !{i32 840, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !670, i32 839, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!687 = metadata !{i32 842, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !689, i32 842, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!689 = metadata !{i32 786443, metadata !1, metadata !686, i32 841, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!690 = metadata !{i32 843, i32 0, metadata !689, null}
!691 = metadata !{i32 847, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !693, i32 847, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!693 = metadata !{i32 786443, metadata !1, metadata !686, i32 846, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!694 = metadata !{i32 848, i32 0, metadata !693, null}
!695 = metadata !{i32 853, i32 0, metadata !670, null}
!696 = metadata !{i32 855, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !670, i32 854, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!698 = metadata !{i32 857, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !700, i32 857, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!700 = metadata !{i32 786443, metadata !1, metadata !697, i32 856, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!701 = metadata !{i32 858, i32 0, metadata !700, null}
!702 = metadata !{i32 862, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !704, i32 862, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!704 = metadata !{i32 786443, metadata !1, metadata !697, i32 861, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!705 = metadata !{i32 863, i32 0, metadata !704, null}
!706 = metadata !{i32 866, i32 0, metadata !670, null}
!707 = metadata !{i32 868, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !670, i32 867, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!709 = metadata !{i32 870, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !711, i32 870, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!711 = metadata !{i32 786443, metadata !1, metadata !708, i32 869, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!712 = metadata !{i32 871, i32 0, metadata !711, null}
!713 = metadata !{i32 875, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !715, i32 875, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!715 = metadata !{i32 786443, metadata !1, metadata !708, i32 874, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!716 = metadata !{i32 876, i32 0, metadata !715, null}
!717 = metadata !{i32 885, i32 0, metadata !670, null}
!718 = metadata !{i32 887, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !670, i32 886, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!720 = metadata !{i32 889, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !722, i32 889, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!722 = metadata !{i32 786443, metadata !1, metadata !719, i32 888, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!723 = metadata !{i32 890, i32 0, metadata !722, null}
!724 = metadata !{i32 894, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !726, i32 894, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!726 = metadata !{i32 786443, metadata !1, metadata !719, i32 893, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!727 = metadata !{i32 895, i32 0, metadata !726, null}
!728 = metadata !{i32 898, i32 0, metadata !670, null}
!729 = metadata !{i32 900, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !670, i32 899, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!731 = metadata !{i32 902, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !733, i32 902, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!733 = metadata !{i32 786443, metadata !1, metadata !730, i32 901, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!734 = metadata !{i32 903, i32 0, metadata !733, null}
!735 = metadata !{i32 907, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !737, i32 907, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!737 = metadata !{i32 786443, metadata !1, metadata !730, i32 906, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!738 = metadata !{i32 908, i32 0, metadata !737, null}
!739 = metadata !{i32 911, i32 0, metadata !670, null}
!740 = metadata !{i32 913, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !670, i32 912, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!742 = metadata !{i32 915, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 915, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!744 = metadata !{i32 786443, metadata !1, metadata !741, i32 914, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!745 = metadata !{i32 916, i32 0, metadata !744, null}
!746 = metadata !{i32 920, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !748, i32 920, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!748 = metadata !{i32 786443, metadata !1, metadata !741, i32 919, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!749 = metadata !{i32 921, i32 0, metadata !748, null}
!750 = metadata !{i32 924, i32 0, metadata !670, null}
!751 = metadata !{i32 926, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !670, i32 925, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!753 = metadata !{i32 928, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !755, i32 928, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!755 = metadata !{i32 786443, metadata !1, metadata !752, i32 927, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!756 = metadata !{i32 929, i32 0, metadata !755, null}
!757 = metadata !{i32 933, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !759, i32 933, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!759 = metadata !{i32 786443, metadata !1, metadata !752, i32 932, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!760 = metadata !{i32 934, i32 0, metadata !759, null}
!761 = metadata !{i32 941, i32 0, metadata !670, null}
!762 = metadata !{i32 943, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !670, i32 942, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!764 = metadata !{i32 946, i32 0, metadata !763, null}
!765 = metadata !{i32 952, i32 0, metadata !667, null}
!766 = metadata !{i32 955, i32 0, metadata !667, null}
!767 = metadata !{i32 957, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !667, i32 956, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!769 = metadata !{i32 959, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !771, i32 959, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!771 = metadata !{i32 786443, metadata !1, metadata !768, i32 958, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!772 = metadata !{i32 964, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !774, i32 964, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!774 = metadata !{i32 786443, metadata !1, metadata !768, i32 963, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!775 = metadata !{i32 968, i32 0, metadata !667, null}
!776 = metadata !{i32 970, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !667, i32 969, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!778 = metadata !{i32 972, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !780, i32 972, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!780 = metadata !{i32 786443, metadata !1, metadata !777, i32 971, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!781 = metadata !{i32 977, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !783, i32 977, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!783 = metadata !{i32 786443, metadata !1, metadata !777, i32 976, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!784 = metadata !{i32 981, i32 0, metadata !667, null}
!785 = metadata !{i32 983, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !667, i32 982, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!787 = metadata !{i32 985, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !789, i32 985, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!789 = metadata !{i32 786443, metadata !1, metadata !786, i32 984, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!790 = metadata !{i32 990, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !792, i32 990, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!792 = metadata !{i32 786443, metadata !1, metadata !786, i32 989, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!793 = metadata !{i32 994, i32 0, metadata !667, null}
!794 = metadata !{i32 996, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !667, i32 995, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!796 = metadata !{i32 998, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !798, i32 998, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!798 = metadata !{i32 786443, metadata !1, metadata !795, i32 997, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!799 = metadata !{i32 1003, i32 0, metadata !800, null}
!800 = metadata !{i32 786443, metadata !1, metadata !801, i32 1003, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!801 = metadata !{i32 786443, metadata !1, metadata !795, i32 1002, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!802 = metadata !{i32 1016, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !46, i32 1014, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!804 = metadata !{i32 1080, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !806, i32 1079, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!806 = metadata !{i32 786443, metadata !1, metadata !803, i32 1017, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!807 = metadata !{i32 1079, i32 0, metadata !805, null}
!808 = metadata !{i32 1019, i32 0, metadata !806, null}
!809 = metadata !{i32 1022, i32 0, metadata !806, null}
!810 = metadata !{i32 1025, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !806, i32 1023, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!812 = metadata !{i32 1027, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !814, i32 1027, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!814 = metadata !{i32 786443, metadata !1, metadata !811, i32 1026, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!815 = metadata !{i32 1028, i32 0, metadata !814, null}
!816 = metadata !{i32 1032, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !818, i32 1032, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!818 = metadata !{i32 786443, metadata !1, metadata !811, i32 1031, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!819 = metadata !{i32 1033, i32 0, metadata !818, null}
!820 = metadata !{i32 1036, i32 0, metadata !806, null}
!821 = metadata !{i32 1038, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !1, metadata !806, i32 1037, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!823 = metadata !{i32 1040, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !825, i32 1040, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!825 = metadata !{i32 786443, metadata !1, metadata !822, i32 1039, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!826 = metadata !{i32 1041, i32 0, metadata !825, null}
!827 = metadata !{i32 1045, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !829, i32 1045, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!829 = metadata !{i32 786443, metadata !1, metadata !822, i32 1044, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!830 = metadata !{i32 1046, i32 0, metadata !829, null}
!831 = metadata !{i32 1051, i32 0, metadata !806, null}
!832 = metadata !{i32 1053, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !806, i32 1052, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!834 = metadata !{i32 1055, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !836, i32 1055, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!836 = metadata !{i32 786443, metadata !1, metadata !833, i32 1054, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!837 = metadata !{i32 1056, i32 0, metadata !836, null}
!838 = metadata !{i32 1060, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !840, i32 1060, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!840 = metadata !{i32 786443, metadata !1, metadata !833, i32 1059, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!841 = metadata !{i32 1061, i32 0, metadata !840, null}
!842 = metadata !{i32 1064, i32 0, metadata !806, null}
!843 = metadata !{i32 1066, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !806, i32 1065, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!845 = metadata !{i32 1068, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !847, i32 1068, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!847 = metadata !{i32 786443, metadata !1, metadata !844, i32 1067, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!848 = metadata !{i32 1069, i32 0, metadata !847, null}
!849 = metadata !{i32 1073, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !851, i32 1073, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!851 = metadata !{i32 786443, metadata !1, metadata !844, i32 1072, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!852 = metadata !{i32 1074, i32 0, metadata !851, null}
!853 = metadata !{i32 1083, i32 0, metadata !806, null}
!854 = metadata !{i32 1085, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !806, i32 1084, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!856 = metadata !{i32 1087, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !858, i32 1087, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!858 = metadata !{i32 786443, metadata !1, metadata !855, i32 1086, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!859 = metadata !{i32 1088, i32 0, metadata !858, null}
!860 = metadata !{i32 1092, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !862, i32 1092, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!862 = metadata !{i32 786443, metadata !1, metadata !855, i32 1091, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!863 = metadata !{i32 1093, i32 0, metadata !862, null}
!864 = metadata !{i32 1096, i32 0, metadata !806, null}
!865 = metadata !{i32 1098, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !806, i32 1097, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!867 = metadata !{i32 1100, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !869, i32 1100, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!869 = metadata !{i32 786443, metadata !1, metadata !866, i32 1099, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!870 = metadata !{i32 1101, i32 0, metadata !869, null}
!871 = metadata !{i32 1105, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !873, i32 1105, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!873 = metadata !{i32 786443, metadata !1, metadata !866, i32 1104, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!874 = metadata !{i32 1106, i32 0, metadata !873, null}
!875 = metadata !{i32 1109, i32 0, metadata !806, null}
!876 = metadata !{i32 1111, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !806, i32 1110, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!878 = metadata !{i32 1113, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !1, metadata !880, i32 1113, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!880 = metadata !{i32 786443, metadata !1, metadata !877, i32 1112, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!881 = metadata !{i32 1114, i32 0, metadata !880, null}
!882 = metadata !{i32 1118, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !884, i32 1118, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!884 = metadata !{i32 786443, metadata !1, metadata !877, i32 1117, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!885 = metadata !{i32 1119, i32 0, metadata !884, null}
!886 = metadata !{i32 1122, i32 0, metadata !806, null}
!887 = metadata !{i32 1124, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !806, i32 1123, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!889 = metadata !{i32 1126, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !891, i32 1126, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!891 = metadata !{i32 786443, metadata !1, metadata !888, i32 1125, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!892 = metadata !{i32 1127, i32 0, metadata !891, null}
!893 = metadata !{i32 1131, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !895, i32 1131, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!895 = metadata !{i32 786443, metadata !1, metadata !888, i32 1130, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!896 = metadata !{i32 1132, i32 0, metadata !895, null}
!897 = metadata !{i32 1138, i32 0, metadata !806, null}
!898 = metadata !{i32 1140, i32 0, metadata !899, null}
!899 = metadata !{i32 786443, metadata !1, metadata !806, i32 1139, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!900 = metadata !{i32 1143, i32 0, metadata !899, null}
!901 = metadata !{i32 1148, i32 0, metadata !803, null}
!902 = metadata !{i32 1151, i32 0, metadata !803, null}
!903 = metadata !{i32 1153, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !803, i32 1152, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!905 = metadata !{i32 1155, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !907, i32 1155, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!907 = metadata !{i32 786443, metadata !1, metadata !904, i32 1154, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!908 = metadata !{i32 1160, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !910, i32 1160, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!910 = metadata !{i32 786443, metadata !1, metadata !904, i32 1159, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!911 = metadata !{i32 1164, i32 0, metadata !803, null}
!912 = metadata !{i32 1166, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !803, i32 1165, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!914 = metadata !{i32 1168, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !916, i32 1168, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!916 = metadata !{i32 786443, metadata !1, metadata !913, i32 1167, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!917 = metadata !{i32 1173, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !919, i32 1173, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!919 = metadata !{i32 786443, metadata !1, metadata !913, i32 1172, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!920 = metadata !{i32 1177, i32 0, metadata !803, null}
!921 = metadata !{i32 1179, i32 0, metadata !922, null}
!922 = metadata !{i32 786443, metadata !1, metadata !803, i32 1178, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!923 = metadata !{i32 1181, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !925, i32 1181, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!925 = metadata !{i32 786443, metadata !1, metadata !922, i32 1180, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!926 = metadata !{i32 1186, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !928, i32 1186, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!928 = metadata !{i32 786443, metadata !1, metadata !922, i32 1185, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!929 = metadata !{i32 1190, i32 0, metadata !803, null}
!930 = metadata !{i32 1192, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !803, i32 1191, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!932 = metadata !{i32 1194, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !934, i32 1194, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!934 = metadata !{i32 786443, metadata !1, metadata !931, i32 1193, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!935 = metadata !{i32 1199, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !937, i32 1199, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!937 = metadata !{i32 786443, metadata !1, metadata !931, i32 1198, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!938 = metadata !{i32 1204, i32 0, metadata !46, null}
!939 = metadata !{i32 1216, i32 0, metadata !55, null}
!940 = metadata !{i32 1218, i32 0, metadata !55, null}
!941 = metadata !{i32 1220, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !55, i32 1219, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!943 = metadata !{i32 1221, i32 0, metadata !942, null}
!944 = metadata !{i32 1222, i32 0, metadata !942, null}
!945 = metadata !{i32 1223, i32 0, metadata !942, null}
!946 = metadata !{i32 1224, i32 0, metadata !942, null}
!947 = metadata !{i32 1225, i32 0, metadata !942, null}
!948 = metadata !{i32 1226, i32 0, metadata !942, null}
!949 = metadata !{i32 1227, i32 0, metadata !942, null}
!950 = metadata !{i32 1228, i32 0, metadata !942, null}
!951 = metadata !{i32 1229, i32 0, metadata !942, null}
!952 = metadata !{i32 1230, i32 0, metadata !942, null}
!953 = metadata !{i32 1231, i32 0, metadata !942, null}
!954 = metadata !{i32 1232, i32 0, metadata !942, null}
!955 = metadata !{i32 1233, i32 0, metadata !942, null}
!956 = metadata !{i32 1234, i32 0, metadata !942, null}
!957 = metadata !{i32 1235, i32 0, metadata !942, null}
!958 = metadata !{i32 1236, i32 0, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !942, i32 1236, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!960 = metadata !{i32 1238, i32 0, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !959, i32 1237, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!962 = metadata !{i32 1240, i32 0, metadata !942, null}
!963 = metadata !{i32 1242, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !942, i32 1241, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!965 = metadata !{i32 1243, i32 0, metadata !964, null}
!966 = metadata !{i32 1248, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !55, i32 1247, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!968 = metadata !{i32 1249, i32 0, metadata !967, null}
!969 = metadata !{i32 1250, i32 0, metadata !967, null}
!970 = metadata !{i32 1251, i32 0, metadata !967, null}
!971 = metadata !{i32 1252, i32 0, metadata !967, null}
!972 = metadata !{i32 1253, i32 0, metadata !967, null}
!973 = metadata !{i32 1254, i32 0, metadata !967, null}
!974 = metadata !{i32 1255, i32 0, metadata !967, null}
!975 = metadata !{i32 1256, i32 0, metadata !967, null}
!976 = metadata !{i32 1257, i32 0, metadata !967, null}
!977 = metadata !{i32 1258, i32 0, metadata !967, null}
!978 = metadata !{i32 1259, i32 0, metadata !967, null}
!979 = metadata !{i32 1260, i32 0, metadata !967, null}
!980 = metadata !{i32 1261, i32 0, metadata !967, null}
!981 = metadata !{i32 1262, i32 0, metadata !967, null}
!982 = metadata !{i32 1263, i32 0, metadata !967, null}
!983 = metadata !{i32 1264, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !967, i32 1264, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!985 = metadata !{i32 1266, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !984, i32 1265, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!987 = metadata !{i32 1268, i32 0, metadata !967, null}
!988 = metadata !{i32 1270, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !967, i32 1269, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!990 = metadata !{i32 1271, i32 0, metadata !989, null}
!991 = metadata !{i32 1275, i32 0, metadata !55, null}
!992 = metadata !{i32 1278, i32 0, metadata !60, null}
!993 = metadata !{i32 1285, i32 0, metadata !60, null}
!994 = metadata !{i32 1286, i32 0, metadata !60, null}
!995 = metadata !{i32 1287, i32 0, metadata !60, null}
!996 = metadata !{i32 1289, i32 0, metadata !60, null}
!997 = metadata !{i32 1290, i32 0, metadata !60, null}
!998 = metadata !{i32 1297, i32 0, metadata !60, null}
!999 = metadata !{i32 1299, i32 0, metadata !60, null}
!1000 = metadata !{i32 1302, i32 0, metadata !60, null}
!1001 = metadata !{i32 1305, i32 0, metadata !60, null}
!1002 = metadata !{i32 1311, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !60, i32 1310, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1004 = metadata !{i32 1307, i32 0, metadata !1005, null}
!1005 = metadata !{i32 786443, metadata !1, metadata !60, i32 1306, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1006 = metadata !{i32 1314, i32 0, metadata !60, null}
!1007 = metadata !{i32 1322, i32 0, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !1, metadata !60, i32 1315, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1009 = metadata !{i32 1325, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !1008, i32 1325, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1011 = metadata !{i32 1326, i32 0, metadata !1010, null}
!1012 = metadata !{i32 1329, i32 0, metadata !1008, null}
!1013 = metadata !{i32 1331, i32 0, metadata !1008, null}
!1014 = metadata !{i32 1332, i32 0, metadata !1008, null}
!1015 = metadata !{i32 1335, i32 0, metadata !1008, null}
!1016 = metadata !{i32 1337, i32 0, metadata !1008, null}
!1017 = metadata !{i32 1339, i32 0, metadata !1008, null}
!1018 = metadata !{i32 1342, i32 0, metadata !1008, null}
!1019 = metadata !{i32 1345, i32 0, metadata !1008, null}
!1020 = metadata !{i32 1347, i32 0, metadata !1008, null}
!1021 = metadata !{i32 1349, i32 0, metadata !1008, null}
!1022 = metadata !{i32 1350, i32 0, metadata !1008, null}
!1023 = metadata !{i32 1352, i32 0, metadata !1008, null}
!1024 = metadata !{i32 1357, i32 0, metadata !1025, null}
!1025 = metadata !{i32 786443, metadata !1, metadata !60, i32 1355, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1026 = metadata !{i32 1361, i32 0, metadata !1025, null}
!1027 = metadata !{i32 1362, i32 0, metadata !1025, null}
!1028 = metadata !{i32 1363, i32 0, metadata !1025, null}
!1029 = metadata !{i32 1364, i32 0, metadata !1025, null}
!1030 = metadata !{i32 1365, i32 0, metadata !1025, null}
!1031 = metadata !{i32 1368, i32 0, metadata !1025, null}
!1032 = metadata !{i32 1370, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1025, i32 1369, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1034 = metadata !{i32 1374, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1033, i32 1370, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1036 = metadata !{i32 1376, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1035, i32 1375, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1038 = metadata !{i32 1378, i32 0, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !1037, i32 1377, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1040 = metadata !{i32 1379, i32 0, metadata !1039, null}
!1041 = metadata !{i32 1382, i32 0, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !1, metadata !1037, i32 1381, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1043 = metadata !{i32 1386, i32 0, metadata !1035, null}
!1044 = metadata !{i32 1389, i32 0, metadata !1035, null}
!1045 = metadata !{i32 1391, i32 0, metadata !1035, null}
!1046 = metadata !{i32 1397, i32 0, metadata !1025, null}
!1047 = metadata !{i32 1392, i32 0, metadata !1035, null}
!1048 = metadata !{i32 1399, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !1025, i32 1397, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1050 = metadata !{i32 1400, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !1049, i32 1399, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1052 = metadata !{i32 1401, i32 0, metadata !1051, null}
!1053 = metadata !{i32 1402, i32 0, metadata !1051, null}
!1054 = metadata !{i32 1403, i32 0, metadata !1051, null}
!1055 = metadata !{i32 1404, i32 0, metadata !1051, null}
!1056 = metadata !{i32 1406, i32 0, metadata !1051, null}
!1057 = metadata !{i32 1409, i32 0, metadata !1051, null}
!1058 = metadata !{i32 1411, i32 0, metadata !1051, null}
!1059 = metadata !{i32 1413, i32 0, metadata !1051, null}
!1060 = metadata !{i32 1414, i32 0, metadata !1051, null}
!1061 = metadata !{i32 1416, i32 0, metadata !1051, null}
!1062 = metadata !{i32 1418, i32 0, metadata !1051, null}
!1063 = metadata !{i32 1422, i32 0, metadata !1049, null}
!1064 = metadata !{i32 1425, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !1049, i32 1422, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1066 = metadata !{i32 1427, i32 0, metadata !1065, null}
!1067 = metadata !{i32 1429, i32 0, metadata !1065, null}
!1068 = metadata !{i32 1431, i32 0, metadata !1065, null}
!1069 = metadata !{i32 1433, i32 0, metadata !1065, null}
!1070 = metadata !{i32 1434, i32 0, metadata !1065, null}
!1071 = metadata !{i32 1436, i32 0, metadata !1065, null}
!1072 = metadata !{i32 1437, i32 0, metadata !1065, null}
!1073 = metadata !{i32 1439, i32 0, metadata !1065, null}
!1074 = metadata !{i32 1440, i32 0, metadata !1065, null}
!1075 = metadata !{i32 1441, i32 0, metadata !1065, null}
!1076 = metadata !{i32 1442, i32 0, metadata !1065, null}
!1077 = metadata !{i32 1443, i32 0, metadata !1065, null}
!1078 = metadata !{i32 1444, i32 0, metadata !1065, null}
!1079 = metadata !{i32 1446, i32 0, metadata !1065, null}
!1080 = metadata !{i32 1447, i32 0, metadata !1065, null}
!1081 = metadata !{i32 1449, i32 0, metadata !1065, null}
!1082 = metadata !{i32 1451, i32 0, metadata !1065, null}
!1083 = metadata !{i32 1456, i32 0, metadata !1049, null}
!1084 = metadata !{i32 1457, i32 0, metadata !1049, null}
!1085 = metadata !{i32 1459, i32 0, metadata !1049, null}
!1086 = metadata !{i32 1460, i32 0, metadata !1049, null}
!1087 = metadata !{i32 1462, i32 0, metadata !1049, null}
!1088 = metadata !{i32 1463, i32 0, metadata !1049, null}
!1089 = metadata !{i32 1464, i32 0, metadata !1049, null}
!1090 = metadata !{i32 1465, i32 0, metadata !1049, null}
!1091 = metadata !{i32 1466, i32 0, metadata !1049, null}
!1092 = metadata !{i32 1468, i32 0, metadata !1049, null}
!1093 = metadata !{i32 1470, i32 0, metadata !1049, null}
!1094 = metadata !{i32 1477, i32 0, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !1, metadata !1025, i32 1475, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1096 = metadata !{i32 1478, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1, metadata !1095, i32 1477, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1098 = metadata !{i32 1479, i32 0, metadata !1097, null}
!1099 = metadata !{i32 1480, i32 0, metadata !1097, null}
!1100 = metadata !{i32 1481, i32 0, metadata !1097, null}
!1101 = metadata !{i32 1482, i32 0, metadata !1097, null}
!1102 = metadata !{i32 1484, i32 0, metadata !1097, null}
!1103 = metadata !{i32 1487, i32 0, metadata !1097, null}
!1104 = metadata !{i32 1489, i32 0, metadata !1097, null}
!1105 = metadata !{i32 1491, i32 0, metadata !1097, null}
!1106 = metadata !{i32 1492, i32 0, metadata !1097, null}
!1107 = metadata !{i32 1494, i32 0, metadata !1097, null}
!1108 = metadata !{i32 1496, i32 0, metadata !1097, null}
!1109 = metadata !{i32 1500, i32 0, metadata !1095, null}
!1110 = metadata !{i32 1503, i32 0, metadata !1111, null}
!1111 = metadata !{i32 786443, metadata !1, metadata !1095, i32 1500, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1112 = metadata !{i32 1505, i32 0, metadata !1111, null}
!1113 = metadata !{i32 1507, i32 0, metadata !1111, null}
!1114 = metadata !{i32 1509, i32 0, metadata !1111, null}
!1115 = metadata !{i32 1511, i32 0, metadata !1111, null}
!1116 = metadata !{i32 1512, i32 0, metadata !1111, null}
!1117 = metadata !{i32 1514, i32 0, metadata !1111, null}
!1118 = metadata !{i32 1515, i32 0, metadata !1111, null}
!1119 = metadata !{i32 1517, i32 0, metadata !1111, null}
!1120 = metadata !{i32 1518, i32 0, metadata !1111, null}
!1121 = metadata !{i32 1519, i32 0, metadata !1111, null}
!1122 = metadata !{i32 1520, i32 0, metadata !1111, null}
!1123 = metadata !{i32 1521, i32 0, metadata !1111, null}
!1124 = metadata !{i32 1522, i32 0, metadata !1111, null}
!1125 = metadata !{i32 1523, i32 0, metadata !1111, null}
!1126 = metadata !{i32 1524, i32 0, metadata !1111, null}
!1127 = metadata !{i32 1526, i32 0, metadata !1111, null}
!1128 = metadata !{i32 1528, i32 0, metadata !1111, null}
!1129 = metadata !{i32 1533, i32 0, metadata !1095, null}
!1130 = metadata !{i32 1534, i32 0, metadata !1095, null}
!1131 = metadata !{i32 1536, i32 0, metadata !1095, null}
!1132 = metadata !{i32 1537, i32 0, metadata !1095, null}
!1133 = metadata !{i32 1538, i32 0, metadata !1095, null}
!1134 = metadata !{i32 1539, i32 0, metadata !1095, null}
!1135 = metadata !{i32 1540, i32 0, metadata !1095, null}
!1136 = metadata !{i32 1542, i32 0, metadata !1095, null}
!1137 = metadata !{i32 1543, i32 0, metadata !1095, null}
!1138 = metadata !{i32 1545, i32 0, metadata !1095, null}
!1139 = metadata !{i32 1547, i32 0, metadata !1095, null}
!1140 = metadata !{i32 1553, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !1025, i32 1551, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1142 = metadata !{i32 1554, i32 0, metadata !1141, null}
!1143 = metadata !{i32 1556, i32 0, metadata !1141, null}
!1144 = metadata !{i32 1557, i32 0, metadata !1141, null}
!1145 = metadata !{i32 1558, i32 0, metadata !1141, null}
!1146 = metadata !{i32 1559, i32 0, metadata !1141, null}
!1147 = metadata !{i32 1560, i32 0, metadata !1141, null}
!1148 = metadata !{i32 1562, i32 0, metadata !1141, null}
!1149 = metadata !{i32 1564, i32 0, metadata !1141, null}
!1150 = metadata !{i32 1571, i32 0, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !1, metadata !1025, i32 1569, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1152 = metadata !{i32 1574, i32 0, metadata !1151, null}
!1153 = metadata !{i32 1575, i32 0, metadata !1151, null}
!1154 = metadata !{i32 1576, i32 0, metadata !1151, null}
!1155 = metadata !{i32 1577, i32 0, metadata !1151, null}
!1156 = metadata !{i32 1578, i32 0, metadata !1151, null}
!1157 = metadata !{i32 1580, i32 0, metadata !1151, null}
!1158 = metadata !{i32 1581, i32 0, metadata !1151, null}
!1159 = metadata !{i32 1585, i32 0, metadata !1151, null}
!1160 = metadata !{i32 1586, i32 0, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !1, metadata !1151, i32 1585, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1162 = metadata !{i32 1587, i32 0, metadata !1161, null}
!1163 = metadata !{i32 1588, i32 0, metadata !1161, null}
!1164 = metadata !{i32 1589, i32 0, metadata !1161, null}
!1165 = metadata !{i32 1590, i32 0, metadata !1161, null}
!1166 = metadata !{i32 1591, i32 0, metadata !1161, null}
!1167 = metadata !{i32 1592, i32 0, metadata !1161, null}
!1168 = metadata !{i32 1593, i32 0, metadata !1161, null}
!1169 = metadata !{i32 1595, i32 0, metadata !1161, null}
!1170 = metadata !{i32 1596, i32 0, metadata !1161, null}
!1171 = metadata !{i32 1598, i32 0, metadata !1161, null}
!1172 = metadata !{i32 1600, i32 0, metadata !1161, null}
!1173 = metadata !{i32 1605, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !1151, i32 1604, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1175 = metadata !{i32 1606, i32 0, metadata !1174, null}
!1176 = metadata !{i32 1607, i32 0, metadata !1174, null}
!1177 = metadata !{i32 1608, i32 0, metadata !1174, null}
!1178 = metadata !{i32 1609, i32 0, metadata !1174, null}
!1179 = metadata !{i32 1610, i32 0, metadata !1174, null}
!1180 = metadata !{i32 1611, i32 0, metadata !1174, null}
!1181 = metadata !{i32 1612, i32 0, metadata !1174, null}
!1182 = metadata !{i32 1614, i32 0, metadata !1174, null}
!1183 = metadata !{i32 1615, i32 0, metadata !1174, null}
!1184 = metadata !{i32 1617, i32 0, metadata !1174, null}
!1185 = metadata !{i32 1619, i32 0, metadata !1174, null}
!1186 = metadata !{i32 1622, i32 0, metadata !1151, null}
!1187 = metadata !{i32 1624, i32 0, metadata !1151, null}
!1188 = metadata !{i32 1630, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1025, i32 1628, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1190 = metadata !{i32 1633, i32 0, metadata !1189, null}
!1191 = metadata !{i32 1634, i32 0, metadata !1189, null}
!1192 = metadata !{i32 1635, i32 0, metadata !1189, null}
!1193 = metadata !{i32 1636, i32 0, metadata !1189, null}
!1194 = metadata !{i32 1637, i32 0, metadata !1189, null}
!1195 = metadata !{i32 1639, i32 0, metadata !1189, null}
!1196 = metadata !{i32 1640, i32 0, metadata !1189, null}
!1197 = metadata !{i32 1644, i32 0, metadata !1189, null}
!1198 = metadata !{i32 1645, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !1189, i32 1644, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1200 = metadata !{i32 1646, i32 0, metadata !1199, null}
!1201 = metadata !{i32 1647, i32 0, metadata !1199, null}
!1202 = metadata !{i32 1648, i32 0, metadata !1199, null}
!1203 = metadata !{i32 1649, i32 0, metadata !1199, null}
!1204 = metadata !{i32 1650, i32 0, metadata !1199, null}
!1205 = metadata !{i32 1651, i32 0, metadata !1199, null}
!1206 = metadata !{i32 1652, i32 0, metadata !1199, null}
!1207 = metadata !{i32 1654, i32 0, metadata !1199, null}
!1208 = metadata !{i32 1655, i32 0, metadata !1199, null}
!1209 = metadata !{i32 1657, i32 0, metadata !1199, null}
!1210 = metadata !{i32 1659, i32 0, metadata !1199, null}
!1211 = metadata !{i32 1664, i32 0, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !1, metadata !1189, i32 1663, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1213 = metadata !{i32 1665, i32 0, metadata !1212, null}
!1214 = metadata !{i32 1666, i32 0, metadata !1212, null}
!1215 = metadata !{i32 1667, i32 0, metadata !1212, null}
!1216 = metadata !{i32 1668, i32 0, metadata !1212, null}
!1217 = metadata !{i32 1669, i32 0, metadata !1212, null}
!1218 = metadata !{i32 1670, i32 0, metadata !1212, null}
!1219 = metadata !{i32 1671, i32 0, metadata !1212, null}
!1220 = metadata !{i32 1673, i32 0, metadata !1212, null}
!1221 = metadata !{i32 1674, i32 0, metadata !1212, null}
!1222 = metadata !{i32 1676, i32 0, metadata !1212, null}
!1223 = metadata !{i32 1678, i32 0, metadata !1212, null}
!1224 = metadata !{i32 1681, i32 0, metadata !1025, null}
!1225 = metadata !{i32 1683, i32 0, metadata !1025, null}
!1226 = metadata !{i32 1683, i32 0, metadata !60, null}
!1227 = metadata !{i32 1687, i32 0, metadata !73, null}
!1228 = metadata !{i32 1688, i32 0, metadata !73, null}
!1229 = metadata !{i32 1690, i32 0, metadata !73, null}
!1230 = metadata !{i32 1691, i32 0, metadata !73, null}
!1231 = metadata !{i32 1692, i32 0, metadata !73, null}
!1232 = metadata !{i32 1693, i32 0, metadata !73, null}
!1233 = metadata !{i32 1694, i32 0, metadata !73, null}
!1234 = metadata !{i32 1695, i32 0, metadata !73, null}
!1235 = metadata !{i32 1696, i32 0, metadata !73, null}
!1236 = metadata !{i32 1698, i32 0, metadata !73, null}
!1237 = metadata !{i32 1701, i32 0, metadata !79, null}
!1238 = metadata !{i32 1702, i32 0, metadata !79, null}
!1239 = metadata !{i32 1703, i32 0, metadata !79, null}
!1240 = metadata !{i32 1704, i32 0, metadata !79, null}
!1241 = metadata !{i32 1706, i32 0, metadata !79, null}
!1242 = metadata !{i32 1708, i32 0, metadata !1243, null}
!1243 = metadata !{i32 786443, metadata !1, metadata !79, i32 1707, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1244 = metadata !{i32 1709, i32 0, metadata !1243, null}
!1245 = metadata !{i32 1712, i32 0, metadata !79, null}
!1246 = metadata !{i32 1714, i32 0, metadata !79, null}
!1247 = metadata !{i32 1715, i32 0, metadata !79, null}
!1248 = metadata !{i32 1716, i32 0, metadata !79, null}
!1249 = metadata !{i32 1717, i32 0, metadata !79, null}
!1250 = metadata !{i32 1718, i32 0, metadata !79, null}
!1251 = metadata !{i32 1719, i32 0, metadata !79, null}
!1252 = metadata !{i32 1720, i32 0, metadata !79, null}
!1253 = metadata !{i32 1722, i32 0, metadata !79, null}
!1254 = metadata !{i32 1904, i32 0, metadata !117, null}
!1255 = metadata !{i32 1911, i32 0, metadata !117, null}
!1256 = metadata !{i32 1912, i32 0, metadata !117, null}
!1257 = metadata !{i32 1913, i32 0, metadata !117, null}
!1258 = metadata !{i32 1914, i32 0, metadata !117, null}
!1259 = metadata !{i32 1915, i32 0, metadata !117, null}
!1260 = metadata !{i32 1916, i32 0, metadata !117, null}
!1261 = metadata !{i32 1922, i32 0, metadata !117, null}
!1262 = metadata !{i32 1924, i32 0, metadata !117, null}
!1263 = metadata !{i32 1927, i32 0, metadata !117, null}
!1264 = metadata !{i32 1929, i32 0, metadata !117, null}
!1265 = metadata !{i32 1938, i32 0, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !1, metadata !117, i32 1930, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1267 = metadata !{i32 1939, i32 0, metadata !1266, null}
!1268 = metadata !{i32 1942, i32 0, metadata !1266, null}
!1269 = metadata !{i32 1944, i32 0, metadata !1266, null}
!1270 = metadata !{i32 1946, i32 0, metadata !1266, null}
!1271 = metadata !{i32 1948, i32 0, metadata !1266, null}
!1272 = metadata !{i32 1950, i32 0, metadata !1266, null}
!1273 = metadata !{i32 1953, i32 0, metadata !1266, null}
!1274 = metadata !{i32 1955, i32 0, metadata !1266, null}
!1275 = metadata !{i32 1957, i32 0, metadata !1266, null}
!1276 = metadata !{i32 1959, i32 0, metadata !1266, null}
!1277 = metadata !{i32 1967, i32 0, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !1, metadata !117, i32 1962, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1279 = metadata !{i32 1968, i32 0, metadata !1278, null}
!1280 = metadata !{i32 1969, i32 0, metadata !1278, null}
!1281 = metadata !{i32 1970, i32 0, metadata !1278, null}
!1282 = metadata !{i32 1972, i32 0, metadata !1278, null}
!1283 = metadata !{i32 1975, i32 0, metadata !1278, null}
!1284 = metadata !{i32 1977, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1, metadata !1278, i32 1976, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1286 = metadata !{i32 1981, i32 0, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !1, metadata !1285, i32 1977, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1288 = metadata !{i32 1983, i32 0, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !1, metadata !1287, i32 1982, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1290 = metadata !{i32 1985, i32 0, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !1, metadata !1289, i32 1984, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1292 = metadata !{i32 1986, i32 0, metadata !1291, null}
!1293 = metadata !{i32 1989, i32 0, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !1, metadata !1289, i32 1988, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1295 = metadata !{i32 1993, i32 0, metadata !1287, null}
!1296 = metadata !{i32 1995, i32 0, metadata !1287, null}
!1297 = metadata !{i32 1997, i32 0, metadata !1287, null}
!1298 = metadata !{i32 1998, i32 0, metadata !1287, null}
!1299 = metadata !{i32 2003, i32 0, metadata !1278, null}
!1300 = metadata !{i32 2005, i32 0, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !1, metadata !1278, i32 2003, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1302 = metadata !{i32 2007, i32 0, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !1, metadata !1301, i32 2005, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1304 = metadata !{i32 2008, i32 0, metadata !1303, null}
!1305 = metadata !{i32 2009, i32 0, metadata !1303, null}
!1306 = metadata !{i32 2011, i32 0, metadata !1303, null}
!1307 = metadata !{i32 2012, i32 0, metadata !1303, null}
!1308 = metadata !{i32 2014, i32 0, metadata !1303, null}
!1309 = metadata !{i32 2016, i32 0, metadata !1303, null}
!1310 = metadata !{i32 2017, i32 0, metadata !1303, null}
!1311 = metadata !{i32 2019, i32 0, metadata !1303, null}
!1312 = metadata !{i32 2020, i32 0, metadata !1303, null}
!1313 = metadata !{i32 2021, i32 0, metadata !1303, null}
!1314 = metadata !{i32 2022, i32 0, metadata !1303, null}
!1315 = metadata !{i32 2023, i32 0, metadata !1303, null}
!1316 = metadata !{i32 2024, i32 0, metadata !1303, null}
!1317 = metadata !{i32 2025, i32 0, metadata !1303, null}
!1318 = metadata !{i32 2026, i32 0, metadata !1303, null}
!1319 = metadata !{i32 2027, i32 0, metadata !1303, null}
!1320 = metadata !{i32 2031, i32 0, metadata !1301, null}
!1321 = metadata !{i32 2032, i32 0, metadata !1301, null}
!1322 = metadata !{i32 2034, i32 0, metadata !1301, null}
!1323 = metadata !{i32 2035, i32 0, metadata !1301, null}
!1324 = metadata !{i32 2036, i32 0, metadata !1301, null}
!1325 = metadata !{i32 2037, i32 0, metadata !1301, null}
!1326 = metadata !{i32 2038, i32 0, metadata !1301, null}
!1327 = metadata !{i32 2039, i32 0, metadata !1301, null}
!1328 = metadata !{i32 2046, i32 0, metadata !1329, null}
!1329 = metadata !{i32 786443, metadata !1, metadata !1278, i32 2044, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1330 = metadata !{i32 2048, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1329, i32 2046, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1332 = metadata !{i32 2049, i32 0, metadata !1331, null}
!1333 = metadata !{i32 2050, i32 0, metadata !1331, null}
!1334 = metadata !{i32 2052, i32 0, metadata !1331, null}
!1335 = metadata !{i32 2053, i32 0, metadata !1331, null}
!1336 = metadata !{i32 2055, i32 0, metadata !1331, null}
!1337 = metadata !{i32 2057, i32 0, metadata !1331, null}
!1338 = metadata !{i32 2058, i32 0, metadata !1331, null}
!1339 = metadata !{i32 2060, i32 0, metadata !1331, null}
!1340 = metadata !{i32 2061, i32 0, metadata !1331, null}
!1341 = metadata !{i32 2062, i32 0, metadata !1331, null}
!1342 = metadata !{i32 2063, i32 0, metadata !1331, null}
!1343 = metadata !{i32 2064, i32 0, metadata !1331, null}
!1344 = metadata !{i32 2065, i32 0, metadata !1331, null}
!1345 = metadata !{i32 2066, i32 0, metadata !1331, null}
!1346 = metadata !{i32 2067, i32 0, metadata !1331, null}
!1347 = metadata !{i32 2068, i32 0, metadata !1331, null}
!1348 = metadata !{i32 2071, i32 0, metadata !1329, null}
!1349 = metadata !{i32 2072, i32 0, metadata !1329, null}
!1350 = metadata !{i32 2075, i32 0, metadata !1329, null}
!1351 = metadata !{i32 2076, i32 0, metadata !1329, null}
!1352 = metadata !{i32 2077, i32 0, metadata !1329, null}
!1353 = metadata !{i32 2078, i32 0, metadata !1329, null}
!1354 = metadata !{i32 2079, i32 0, metadata !1329, null}
!1355 = metadata !{i32 2080, i32 0, metadata !1329, null}
!1356 = metadata !{i32 2085, i32 0, metadata !1278, null}
!1357 = metadata !{i32 2086, i32 0, metadata !1358, null}
!1358 = metadata !{i32 786443, metadata !1, metadata !1278, i32 2085, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1359 = metadata !{i32 2087, i32 0, metadata !1358, null}
!1360 = metadata !{i32 2088, i32 0, metadata !1358, null}
!1361 = metadata !{i32 2089, i32 0, metadata !1358, null}
!1362 = metadata !{i32 2090, i32 0, metadata !1358, null}
!1363 = metadata !{i32 2092, i32 0, metadata !1358, null}
!1364 = metadata !{i32 2093, i32 0, metadata !1358, null}
!1365 = metadata !{i32 2095, i32 0, metadata !1358, null}
!1366 = metadata !{i32 2099, i32 0, metadata !1278, null}
!1367 = metadata !{i32 2101, i32 0, metadata !1368, null}
!1368 = metadata !{i32 786443, metadata !1, metadata !1278, i32 2099, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1369 = metadata !{i32 2102, i32 0, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !1, metadata !1368, i32 2101, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1371 = metadata !{i32 2103, i32 0, metadata !1370, null}
!1372 = metadata !{i32 2104, i32 0, metadata !1370, null}
!1373 = metadata !{i32 2105, i32 0, metadata !1370, null}
!1374 = metadata !{i32 2106, i32 0, metadata !1370, null}
!1375 = metadata !{i32 2108, i32 0, metadata !1370, null}
!1376 = metadata !{i32 2109, i32 0, metadata !1370, null}
!1377 = metadata !{i32 2111, i32 0, metadata !1370, null}
!1378 = metadata !{i32 2112, i32 0, metadata !1370, null}
!1379 = metadata !{i32 2114, i32 0, metadata !1370, null}
!1380 = metadata !{i32 2119, i32 0, metadata !1368, null}
!1381 = metadata !{i32 2120, i32 0, metadata !1368, null}
!1382 = metadata !{i32 2121, i32 0, metadata !1368, null}
!1383 = metadata !{i32 2122, i32 0, metadata !1368, null}
!1384 = metadata !{i32 2124, i32 0, metadata !1368, null}
!1385 = metadata !{i32 2125, i32 0, metadata !1368, null}
!1386 = metadata !{i32 2127, i32 0, metadata !1368, null}
!1387 = metadata !{i32 2128, i32 0, metadata !1368, null}
!1388 = metadata !{i32 2130, i32 0, metadata !1368, null}
!1389 = metadata !{i32 2135, i32 0, metadata !1278, null}
!1390 = metadata !{i32 2137, i32 0, metadata !1391, null}
!1391 = metadata !{i32 786443, metadata !1, metadata !1278, i32 2135, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1392 = metadata !{i32 2140, i32 0, metadata !1391, null}
!1393 = metadata !{i32 2141, i32 0, metadata !1391, null}
!1394 = metadata !{i32 2142, i32 0, metadata !1391, null}
!1395 = metadata !{i32 2143, i32 0, metadata !1391, null}
!1396 = metadata !{i32 2144, i32 0, metadata !1391, null}
!1397 = metadata !{i32 2146, i32 0, metadata !1391, null}
!1398 = metadata !{i32 2147, i32 0, metadata !1391, null}
!1399 = metadata !{i32 2151, i32 0, metadata !1391, null}
!1400 = metadata !{i32 2152, i32 0, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !1, metadata !1391, i32 2151, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1402 = metadata !{i32 2153, i32 0, metadata !1401, null}
!1403 = metadata !{i32 2154, i32 0, metadata !1401, null}
!1404 = metadata !{i32 2155, i32 0, metadata !1401, null}
!1405 = metadata !{i32 2156, i32 0, metadata !1401, null}
!1406 = metadata !{i32 2157, i32 0, metadata !1401, null}
!1407 = metadata !{i32 2158, i32 0, metadata !1401, null}
!1408 = metadata !{i32 2159, i32 0, metadata !1401, null}
!1409 = metadata !{i32 2161, i32 0, metadata !1401, null}
!1410 = metadata !{i32 2162, i32 0, metadata !1401, null}
!1411 = metadata !{i32 2164, i32 0, metadata !1401, null}
!1412 = metadata !{i32 2169, i32 0, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !1, metadata !1391, i32 2168, i32 0, i32 310} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1414 = metadata !{i32 2170, i32 0, metadata !1413, null}
!1415 = metadata !{i32 2171, i32 0, metadata !1413, null}
!1416 = metadata !{i32 2172, i32 0, metadata !1413, null}
!1417 = metadata !{i32 2173, i32 0, metadata !1413, null}
!1418 = metadata !{i32 2174, i32 0, metadata !1413, null}
!1419 = metadata !{i32 2175, i32 0, metadata !1413, null}
!1420 = metadata !{i32 2176, i32 0, metadata !1413, null}
!1421 = metadata !{i32 2178, i32 0, metadata !1413, null}
!1422 = metadata !{i32 2179, i32 0, metadata !1413, null}
!1423 = metadata !{i32 2181, i32 0, metadata !1413, null}
!1424 = metadata !{i32 2190, i32 0, metadata !1425, null}
!1425 = metadata !{i32 786443, metadata !1, metadata !1278, i32 2188, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1426 = metadata !{i32 2193, i32 0, metadata !1425, null}
!1427 = metadata !{i32 2194, i32 0, metadata !1425, null}
!1428 = metadata !{i32 2195, i32 0, metadata !1425, null}
!1429 = metadata !{i32 2196, i32 0, metadata !1425, null}
!1430 = metadata !{i32 2197, i32 0, metadata !1425, null}
!1431 = metadata !{i32 2199, i32 0, metadata !1425, null}
!1432 = metadata !{i32 2200, i32 0, metadata !1425, null}
!1433 = metadata !{i32 2204, i32 0, metadata !1425, null}
!1434 = metadata !{i32 2205, i32 0, metadata !1435, null}
!1435 = metadata !{i32 786443, metadata !1, metadata !1425, i32 2204, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1436 = metadata !{i32 2206, i32 0, metadata !1435, null}
!1437 = metadata !{i32 2207, i32 0, metadata !1435, null}
!1438 = metadata !{i32 2208, i32 0, metadata !1435, null}
!1439 = metadata !{i32 2209, i32 0, metadata !1435, null}
!1440 = metadata !{i32 2210, i32 0, metadata !1435, null}
!1441 = metadata !{i32 2211, i32 0, metadata !1435, null}
!1442 = metadata !{i32 2212, i32 0, metadata !1435, null}
!1443 = metadata !{i32 2214, i32 0, metadata !1435, null}
!1444 = metadata !{i32 2215, i32 0, metadata !1435, null}
!1445 = metadata !{i32 2217, i32 0, metadata !1435, null}
!1446 = metadata !{i32 2222, i32 0, metadata !1447, null}
!1447 = metadata !{i32 786443, metadata !1, metadata !1425, i32 2221, i32 0, i32 313} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/moves.c]
!1448 = metadata !{i32 2223, i32 0, metadata !1447, null}
!1449 = metadata !{i32 2224, i32 0, metadata !1447, null}
!1450 = metadata !{i32 2225, i32 0, metadata !1447, null}
!1451 = metadata !{i32 2226, i32 0, metadata !1447, null}
!1452 = metadata !{i32 2227, i32 0, metadata !1447, null}
!1453 = metadata !{i32 2228, i32 0, metadata !1447, null}
!1454 = metadata !{i32 2229, i32 0, metadata !1447, null}
!1455 = metadata !{i32 2231, i32 0, metadata !1447, null}
!1456 = metadata !{i32 2232, i32 0, metadata !1447, null}
!1457 = metadata !{i32 2234, i32 0, metadata !1447, null}
!1458 = metadata !{i32 2238, i32 0, metadata !117, null}

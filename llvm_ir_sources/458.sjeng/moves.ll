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
@is_promoted = external global [62 x i32]
@squares = external global [144 x i32]
@material = external global [14 x i32]
@Material = external global i32
@zobrist = external global [14 x [144 x i32]]
@hash = external global i32
@white_castled = external global i32
@black_castled = external global i32
@total_moves = common global i32 0, align 4
@total_movegens = common global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define i32 @check_legal(%struct.move_s* nocapture %moves, i32 %m, i32 %incheck) #0 {
entry:
  %idxprom = sext i32 %m to i64
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0
  %0 = load i32* %from4, align 4, !tbaa !0
  %target7 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1
  %1 = load i32* %target7, align 4, !tbaa !0
  %2 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %castled1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4
  %3 = load i32* %castled1, align 4, !tbaa !0
  switch i32 %3, label %return [
    i32 0, label %if.else
    i32 1, label %if.then10
    i32 2, label %if.then24
    i32 3, label %if.then39
    i32 4, label %if.then54
  ]

if.then10:                                        ; preds = %if.end
  %call = tail call i32 @is_attacked(i32 30, i32 0) #2
  %tobool11 = icmp eq i32 %call, 0
  br i1 %tobool11, label %if.end13, label %return

if.end13:                                         ; preds = %if.then10
  %call14 = tail call i32 @is_attacked(i32 31, i32 0) #2
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %return

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @is_attacked(i32 32, i32 0) #2
  %tobool19 = icmp eq i32 %call18, 0
  %. = zext i1 %tobool19 to i32
  br label %return

if.then24:                                        ; preds = %if.end
  %call25 = tail call i32 @is_attacked(i32 30, i32 0) #2
  %tobool26 = icmp eq i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %return

if.end28:                                         ; preds = %if.then24
  %call29 = tail call i32 @is_attacked(i32 29, i32 0) #2
  %tobool30 = icmp eq i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @is_attacked(i32 28, i32 0) #2
  %tobool34 = icmp eq i32 %call33, 0
  %.1176 = zext i1 %tobool34 to i32
  br label %return

if.then39:                                        ; preds = %if.end
  %call40 = tail call i32 @is_attacked(i32 114, i32 1) #2
  %tobool41 = icmp eq i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %return

if.end43:                                         ; preds = %if.then39
  %call44 = tail call i32 @is_attacked(i32 115, i32 1) #2
  %tobool45 = icmp eq i32 %call44, 0
  br i1 %tobool45, label %if.end47, label %return

if.end47:                                         ; preds = %if.end43
  %call48 = tail call i32 @is_attacked(i32 116, i32 1) #2
  %tobool49 = icmp eq i32 %call48, 0
  %.1177 = zext i1 %tobool49 to i32
  br label %return

if.then54:                                        ; preds = %if.end
  %call55 = tail call i32 @is_attacked(i32 114, i32 1) #2
  %tobool56 = icmp eq i32 %call55, 0
  br i1 %tobool56, label %if.end58, label %return

if.end58:                                         ; preds = %if.then54
  %call59 = tail call i32 @is_attacked(i32 113, i32 1) #2
  %tobool60 = icmp eq i32 %call59, 0
  br i1 %tobool60, label %if.end62, label %return

if.end62:                                         ; preds = %if.end58
  %call63 = tail call i32 @is_attacked(i32 112, i32 1) #2
  %tobool64 = icmp eq i32 %call63, 0
  %.1178 = zext i1 %tobool64 to i32
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i32* @white_to_move, align 4, !tbaa !0
  %and = and i32 %4, 1
  %tobool68 = icmp eq i32 %and, 0
  %tobool70 = icmp ne i32 %incheck, 0
  br i1 %tobool68, label %if.else532, label %if.then69

if.then69:                                        ; preds = %if.else
  br i1 %tobool70, label %if.end527, label %if.then71

if.then71:                                        ; preds = %if.then69
  %cmp75 = icmp eq i32 %0, 0
  br i1 %cmp75, label %return, label %if.end77

if.end77:                                         ; preds = %if.then71
  %promoted = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3
  %5 = load i32* %promoted, align 4, !tbaa !0
  %tobool80 = icmp eq i32 %5, 0
  br i1 %tobool80, label %cond.end, label %sw.bb

cond.end:                                         ; preds = %if.end77
  %idxprom81 = sext i32 %1 to i64
  %arrayidx82 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom81
  %6 = load i32* %arrayidx82, align 4, !tbaa !0
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb132
    i32 12, label %sw.bb158
    i32 8, label %sw.bb194
    i32 10, label %sw.bb230
  ]

sw.bb:                                            ; preds = %if.end77, %cond.end
  %captured = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 2
  %7 = load i32* %captured, align 4, !tbaa !0
  %cmp85 = icmp eq i32 %7, 13
  %idxprom87 = sext i32 %0 to i64
  br i1 %cmp85, label %if.else111, label %if.then86

if.then86:                                        ; preds = %sw.bb
  %arrayidx88 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom87
  %8 = load i32* %arrayidx88, align 4, !tbaa !0
  %9 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom89 = sext i32 %9 to i64
  %arrayidx90 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom89
  %10 = load i32* %arrayidx90, align 4, !tbaa !0
  %cmp91 = icmp eq i32 %8, %10
  br i1 %cmp91, label %sw.epilog, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then86
  %arrayidx93 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom87
  %11 = load i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx95 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom89
  %12 = load i32* %arrayidx95, align 4, !tbaa !0
  %cmp96 = icmp eq i32 %11, %12
  br i1 %cmp96, label %sw.epilog, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %land.lhs.true
  %arrayidx99 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom87
  %13 = load i32* %arrayidx99, align 4, !tbaa !0
  %arrayidx101 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom89
  %14 = load i32* %arrayidx101, align 4, !tbaa !0
  %cmp102 = icmp eq i32 %13, %14
  br i1 %cmp102, label %sw.epilog, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %land.lhs.true97
  %arrayidx105 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom87
  %15 = load i32* %arrayidx105, align 4, !tbaa !0
  %arrayidx107 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom89
  %16 = load i32* %arrayidx107, align 4, !tbaa !0
  %cmp108 = icmp eq i32 %15, %16
  br i1 %cmp108, label %sw.epilog, label %return

if.else111:                                       ; preds = %sw.bb
  %arrayidx113 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom87
  %17 = load i32* %arrayidx113, align 4, !tbaa !0
  %18 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom114 = sext i32 %18 to i64
  %arrayidx115 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom114
  %19 = load i32* %arrayidx115, align 4, !tbaa !0
  %cmp116 = icmp eq i32 %17, %19
  br i1 %cmp116, label %sw.epilog, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.else111
  %arrayidx119 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom87
  %20 = load i32* %arrayidx119, align 4, !tbaa !0
  %arrayidx121 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom114
  %21 = load i32* %arrayidx121, align 4, !tbaa !0
  %cmp122 = icmp eq i32 %20, %21
  br i1 %cmp122, label %sw.epilog, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %arrayidx125 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom87
  %22 = load i32* %arrayidx125, align 4, !tbaa !0
  %arrayidx127 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom114
  %23 = load i32* %arrayidx127, align 4, !tbaa !0
  %cmp128 = icmp eq i32 %22, %23
  br i1 %cmp128, label %sw.epilog, label %return

sw.bb132:                                         ; preds = %cond.end
  %idxprom133 = sext i32 %0 to i64
  %arrayidx134 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom133
  %24 = load i32* %arrayidx134, align 4, !tbaa !0
  %25 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom135 = sext i32 %25 to i64
  %arrayidx136 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom135
  %26 = load i32* %arrayidx136, align 4, !tbaa !0
  %cmp137 = icmp eq i32 %24, %26
  br i1 %cmp137, label %sw.epilog, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %sw.bb132
  %arrayidx140 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom133
  %27 = load i32* %arrayidx140, align 4, !tbaa !0
  %arrayidx142 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom135
  %28 = load i32* %arrayidx142, align 4, !tbaa !0
  %cmp143 = icmp eq i32 %27, %28
  br i1 %cmp143, label %sw.epilog, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %land.lhs.true138
  %arrayidx146 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom133
  %29 = load i32* %arrayidx146, align 4, !tbaa !0
  %arrayidx148 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom135
  %30 = load i32* %arrayidx148, align 4, !tbaa !0
  %cmp149 = icmp eq i32 %29, %30
  br i1 %cmp149, label %sw.epilog, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %land.lhs.true144
  %arrayidx152 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom133
  %31 = load i32* %arrayidx152, align 4, !tbaa !0
  %arrayidx154 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom135
  %32 = load i32* %arrayidx154, align 4, !tbaa !0
  %cmp155 = icmp eq i32 %31, %32
  br i1 %cmp155, label %sw.epilog, label %return

sw.bb158:                                         ; preds = %cond.end
  %idxprom159 = sext i32 %0 to i64
  %arrayidx160 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom159
  %33 = load i32* %arrayidx160, align 4, !tbaa !0
  %34 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom161 = sext i32 %34 to i64
  %arrayidx162 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom161
  %35 = load i32* %arrayidx162, align 4, !tbaa !0
  %cmp163 = icmp eq i32 %33, %35
  br i1 %cmp163, label %sw.epilog, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %sw.bb158
  %arrayidx166 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom159
  %36 = load i32* %arrayidx166, align 4, !tbaa !0
  %arrayidx168 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom161
  %37 = load i32* %arrayidx168, align 4, !tbaa !0
  %cmp169 = icmp eq i32 %36, %37
  br i1 %cmp169, label %sw.epilog, label %if.then170

if.then170:                                       ; preds = %land.lhs.true164
  %arrayidx172 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom159
  %38 = load i32* %arrayidx172, align 4, !tbaa !0
  %arrayidx174 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom81
  %39 = load i32* %arrayidx174, align 4, !tbaa !0
  %cmp175 = icmp eq i32 %38, %39
  br i1 %cmp175, label %if.then176, label %if.else184

if.then176:                                       ; preds = %if.then170
  %arrayidx178 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom159
  %40 = load i32* %arrayidx178, align 4, !tbaa !0
  %arrayidx180 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom161
  %41 = load i32* %arrayidx180, align 4, !tbaa !0
  %cmp181 = icmp eq i32 %40, %41
  br i1 %cmp181, label %sw.epilog, label %return

if.else184:                                       ; preds = %if.then170
  %arrayidx188 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom161
  %42 = load i32* %arrayidx188, align 4, !tbaa !0
  %cmp189 = icmp eq i32 %38, %42
  br i1 %cmp189, label %sw.epilog, label %return

sw.bb194:                                         ; preds = %cond.end
  %idxprom195 = sext i32 %0 to i64
  %arrayidx196 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom195
  %43 = load i32* %arrayidx196, align 4, !tbaa !0
  %44 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom197 = sext i32 %44 to i64
  %arrayidx198 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom197
  %45 = load i32* %arrayidx198, align 4, !tbaa !0
  %cmp199 = icmp eq i32 %43, %45
  br i1 %cmp199, label %sw.epilog, label %land.lhs.true200

land.lhs.true200:                                 ; preds = %sw.bb194
  %arrayidx202 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom195
  %46 = load i32* %arrayidx202, align 4, !tbaa !0
  %arrayidx204 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom197
  %47 = load i32* %arrayidx204, align 4, !tbaa !0
  %cmp205 = icmp eq i32 %46, %47
  br i1 %cmp205, label %sw.epilog, label %if.then206

if.then206:                                       ; preds = %land.lhs.true200
  %arrayidx208 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom195
  %48 = load i32* %arrayidx208, align 4, !tbaa !0
  %arrayidx210 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom81
  %49 = load i32* %arrayidx210, align 4, !tbaa !0
  %cmp211 = icmp eq i32 %48, %49
  br i1 %cmp211, label %if.then212, label %if.else220

if.then212:                                       ; preds = %if.then206
  %arrayidx214 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom195
  %50 = load i32* %arrayidx214, align 4, !tbaa !0
  %arrayidx216 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom197
  %51 = load i32* %arrayidx216, align 4, !tbaa !0
  %cmp217 = icmp eq i32 %50, %51
  br i1 %cmp217, label %sw.epilog, label %return

if.else220:                                       ; preds = %if.then206
  %arrayidx224 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom197
  %52 = load i32* %arrayidx224, align 4, !tbaa !0
  %cmp225 = icmp eq i32 %48, %52
  br i1 %cmp225, label %sw.epilog, label %return

sw.bb230:                                         ; preds = %cond.end
  %idxprom231 = sext i32 %0 to i64
  %arrayidx232 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom231
  %53 = load i32* %arrayidx232, align 4, !tbaa !0
  %arrayidx234 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom81
  %54 = load i32* %arrayidx234, align 4, !tbaa !0
  %cmp235 = icmp eq i32 %53, %54
  br i1 %cmp235, label %if.then236, label %if.else256

if.then236:                                       ; preds = %sw.bb230
  %arrayidx238 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom231
  %55 = load i32* %arrayidx238, align 4, !tbaa !0
  %56 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom239 = sext i32 %56 to i64
  %arrayidx240 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom239
  %57 = load i32* %arrayidx240, align 4, !tbaa !0
  %cmp241 = icmp eq i32 %55, %57
  br i1 %cmp241, label %sw.epilog, label %land.lhs.true242

land.lhs.true242:                                 ; preds = %if.then236
  %arrayidx244 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom231
  %58 = load i32* %arrayidx244, align 4, !tbaa !0
  %arrayidx246 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom239
  %59 = load i32* %arrayidx246, align 4, !tbaa !0
  %cmp247 = icmp eq i32 %58, %59
  br i1 %cmp247, label %sw.epilog, label %land.lhs.true248

land.lhs.true248:                                 ; preds = %land.lhs.true242
  %arrayidx250 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom231
  %60 = load i32* %arrayidx250, align 4, !tbaa !0
  %arrayidx252 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom239
  %61 = load i32* %arrayidx252, align 4, !tbaa !0
  %cmp253 = icmp eq i32 %60, %61
  br i1 %cmp253, label %sw.epilog, label %return

if.else256:                                       ; preds = %sw.bb230
  %arrayidx258 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom231
  %62 = load i32* %arrayidx258, align 4, !tbaa !0
  %arrayidx260 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom81
  %63 = load i32* %arrayidx260, align 4, !tbaa !0
  %cmp261 = icmp eq i32 %62, %63
  br i1 %cmp261, label %if.then262, label %if.else282

if.then262:                                       ; preds = %if.else256
  %arrayidx264 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom231
  %64 = load i32* %arrayidx264, align 4, !tbaa !0
  %65 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom265 = sext i32 %65 to i64
  %arrayidx266 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom265
  %66 = load i32* %arrayidx266, align 4, !tbaa !0
  %cmp267 = icmp eq i32 %64, %66
  br i1 %cmp267, label %sw.epilog, label %land.lhs.true268

land.lhs.true268:                                 ; preds = %if.then262
  %arrayidx272 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom265
  %67 = load i32* %arrayidx272, align 4, !tbaa !0
  %cmp273 = icmp eq i32 %53, %67
  br i1 %cmp273, label %sw.epilog, label %land.lhs.true274

land.lhs.true274:                                 ; preds = %land.lhs.true268
  %arrayidx276 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom231
  %68 = load i32* %arrayidx276, align 4, !tbaa !0
  %arrayidx278 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom265
  %69 = load i32* %arrayidx278, align 4, !tbaa !0
  %cmp279 = icmp eq i32 %68, %69
  br i1 %cmp279, label %sw.epilog, label %return

if.else282:                                       ; preds = %if.else256
  %arrayidx284 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom231
  %70 = load i32* %arrayidx284, align 4, !tbaa !0
  %arrayidx286 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom81
  %71 = load i32* %arrayidx286, align 4, !tbaa !0
  %cmp287 = icmp eq i32 %70, %71
  %arrayidx290 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom231
  %72 = load i32* %arrayidx290, align 4, !tbaa !0
  br i1 %cmp287, label %if.then288, label %if.else308

if.then288:                                       ; preds = %if.else282
  %73 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom291 = sext i32 %73 to i64
  %arrayidx292 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom291
  %74 = load i32* %arrayidx292, align 4, !tbaa !0
  %cmp293 = icmp eq i32 %72, %74
  br i1 %cmp293, label %sw.epilog, label %land.lhs.true294

land.lhs.true294:                                 ; preds = %if.then288
  %arrayidx298 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom291
  %75 = load i32* %arrayidx298, align 4, !tbaa !0
  %cmp299 = icmp eq i32 %53, %75
  br i1 %cmp299, label %sw.epilog, label %land.lhs.true300

land.lhs.true300:                                 ; preds = %land.lhs.true294
  %arrayidx304 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom291
  %76 = load i32* %arrayidx304, align 4, !tbaa !0
  %cmp305 = icmp eq i32 %62, %76
  br i1 %cmp305, label %sw.epilog, label %return

if.else308:                                       ; preds = %if.else282
  %arrayidx312 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom81
  %77 = load i32* %arrayidx312, align 4, !tbaa !0
  %cmp313 = icmp eq i32 %72, %77
  br i1 %cmp313, label %if.then314, label %sw.epilog

if.then314:                                       ; preds = %if.else308
  %78 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom317 = sext i32 %78 to i64
  %arrayidx318 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom317
  %79 = load i32* %arrayidx318, align 4, !tbaa !0
  %cmp319 = icmp eq i32 %70, %79
  br i1 %cmp319, label %sw.epilog, label %land.lhs.true320

land.lhs.true320:                                 ; preds = %if.then314
  %arrayidx324 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom317
  %80 = load i32* %arrayidx324, align 4, !tbaa !0
  %cmp325 = icmp eq i32 %53, %80
  br i1 %cmp325, label %sw.epilog, label %land.lhs.true326

land.lhs.true326:                                 ; preds = %land.lhs.true320
  %arrayidx330 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom317
  %81 = load i32* %arrayidx330, align 4, !tbaa !0
  %cmp331 = icmp eq i32 %62, %81
  br i1 %cmp331, label %sw.epilog, label %return

sw.epilog:                                        ; preds = %land.lhs.true123, %land.lhs.true117, %if.else111, %land.lhs.true103, %land.lhs.true97, %land.lhs.true, %if.then86, %land.lhs.true150, %land.lhs.true144, %land.lhs.true138, %sw.bb132, %if.then176, %if.else184, %land.lhs.true164, %sw.bb158, %if.then212, %if.else220, %land.lhs.true200, %sw.bb194, %land.lhs.true248, %land.lhs.true242, %if.then236, %land.lhs.true274, %land.lhs.true268, %if.then262, %land.lhs.true300, %land.lhs.true294, %if.then288, %land.lhs.true326, %land.lhs.true320, %if.then314, %cond.end, %if.else308
  %idxprom338 = sext i32 %1 to i64
  %arrayidx339 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom338
  %82 = load i32* %arrayidx339, align 4, !tbaa !0
  %cmp340 = icmp eq i32 %82, 6
  br i1 %cmp340, label %if.end527, label %if.then341

if.then341:                                       ; preds = %sw.epilog
  %idxprom342 = sext i32 %0 to i64
  %arrayidx343 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom342
  %83 = load i32* %arrayidx343, align 4, !tbaa !0
  %84 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom344 = sext i32 %84 to i64
  %arrayidx345 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom344
  %85 = load i32* %arrayidx345, align 4, !tbaa !0
  %cmp346 = icmp eq i32 %83, %85
  br i1 %cmp346, label %if.then347, label %if.else381

if.then347:                                       ; preds = %if.then341
  %cmp348 = icmp sgt i32 %84, %0
  br i1 %cmp348, label %for.cond, label %for.cond363

for.cond:                                         ; preds = %if.then347, %for.cond
  %indvars.iv1224 = phi i64 [ %indvars.iv.next1225, %for.cond ], [ %idxprom344, %if.then347 ]
  %indvars.iv.next1225 = add i64 %indvars.iv1224, -12
  %arrayidx351 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1225
  %86 = load i32* %arrayidx351, align 4, !tbaa !0
  switch i32 %86, label %return [
    i32 13, label %for.cond
    i32 7, label %return.loopexit1195
    i32 9, label %return.loopexit1195
  ]

for.cond363:                                      ; preds = %if.then347, %for.cond363
  %indvars.iv1226 = phi i64 [ %indvars.iv.next1227, %for.cond363 ], [ %idxprom344, %if.then347 ]
  %indvars.iv.next1227 = add i64 %indvars.iv1226, 12
  %arrayidx365 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1227
  %87 = load i32* %arrayidx365, align 4, !tbaa !0
  switch i32 %87, label %return [
    i32 13, label %for.cond363
    i32 7, label %return.loopexit1197
    i32 9, label %return.loopexit1197
  ]

if.else381:                                       ; preds = %if.then341
  %arrayidx383 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom342
  %88 = load i32* %arrayidx383, align 4, !tbaa !0
  %arrayidx385 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom344
  %89 = load i32* %arrayidx385, align 4, !tbaa !0
  %cmp386 = icmp eq i32 %88, %89
  br i1 %cmp386, label %if.then387, label %if.else428

if.then387:                                       ; preds = %if.else381
  %cmp388 = icmp sgt i32 %84, %0
  br i1 %cmp388, label %for.cond391, label %for.cond410

for.cond391:                                      ; preds = %if.then387, %for.cond391
  %indvars.iv1228 = phi i64 [ %indvars.iv.next1229, %for.cond391 ], [ %idxprom344, %if.then387 ]
  %indvars.iv.next1229 = add i64 %indvars.iv1228, -1
  %arrayidx393 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1229
  %90 = load i32* %arrayidx393, align 4, !tbaa !0
  switch i32 %90, label %return [
    i32 13, label %for.cond391
    i32 7, label %return.loopexit1199
    i32 9, label %return.loopexit1199
  ]

for.cond410:                                      ; preds = %if.then387, %for.cond410
  %indvars.iv1230 = phi i64 [ %indvars.iv.next1231, %for.cond410 ], [ %idxprom344, %if.then387 ]
  %indvars.iv.next1231 = add i64 %indvars.iv1230, 1
  %arrayidx412 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1231
  %91 = load i32* %arrayidx412, align 4, !tbaa !0
  switch i32 %91, label %return [
    i32 13, label %for.cond410
    i32 7, label %return.loopexit1201
    i32 9, label %return.loopexit1201
  ]

if.else428:                                       ; preds = %if.else381
  %arrayidx430 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom342
  %92 = load i32* %arrayidx430, align 4, !tbaa !0
  %arrayidx432 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom344
  %93 = load i32* %arrayidx432, align 4, !tbaa !0
  %cmp433 = icmp eq i32 %92, %93
  br i1 %cmp433, label %if.then434, label %if.else475

if.then434:                                       ; preds = %if.else428
  %cmp435 = icmp sgt i32 %84, %0
  br i1 %cmp435, label %for.cond438, label %for.cond457

for.cond438:                                      ; preds = %if.then434, %for.cond438
  %indvars.iv1232 = phi i64 [ %indvars.iv.next1233, %for.cond438 ], [ %idxprom344, %if.then434 ]
  %indvars.iv.next1233 = add i64 %indvars.iv1232, -13
  %arrayidx440 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1233
  %94 = load i32* %arrayidx440, align 4, !tbaa !0
  switch i32 %94, label %return [
    i32 13, label %for.cond438
    i32 11, label %return.loopexit1203
    i32 9, label %return.loopexit1203
  ]

for.cond457:                                      ; preds = %if.then434, %for.cond457
  %indvars.iv1234 = phi i64 [ %indvars.iv.next1235, %for.cond457 ], [ %idxprom344, %if.then434 ]
  %indvars.iv.next1235 = add i64 %indvars.iv1234, 13
  %arrayidx459 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1235
  %95 = load i32* %arrayidx459, align 4, !tbaa !0
  switch i32 %95, label %return [
    i32 13, label %for.cond457
    i32 11, label %return.loopexit1205
    i32 9, label %return.loopexit1205
  ]

if.else475:                                       ; preds = %if.else428
  %arrayidx477 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom342
  %96 = load i32* %arrayidx477, align 4, !tbaa !0
  %arrayidx479 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom344
  %97 = load i32* %arrayidx479, align 4, !tbaa !0
  %cmp480 = icmp eq i32 %96, %97
  br i1 %cmp480, label %if.then481, label %return

if.then481:                                       ; preds = %if.else475
  %cmp482 = icmp sgt i32 %84, %0
  br i1 %cmp482, label %for.cond485, label %for.cond504

for.cond485:                                      ; preds = %if.then481, %for.cond485
  %indvars.iv1236 = phi i64 [ %indvars.iv.next1237, %for.cond485 ], [ %idxprom344, %if.then481 ]
  %indvars.iv.next1237 = add i64 %indvars.iv1236, -11
  %arrayidx487 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1237
  %98 = load i32* %arrayidx487, align 4, !tbaa !0
  switch i32 %98, label %return [
    i32 13, label %for.cond485
    i32 11, label %return.loopexit1207
    i32 9, label %return.loopexit1207
  ]

for.cond504:                                      ; preds = %if.then481, %for.cond504
  %indvars.iv1238 = phi i64 [ %indvars.iv.next1239, %for.cond504 ], [ %idxprom344, %if.then481 ]
  %indvars.iv.next1239 = add i64 %indvars.iv1238, 11
  %arrayidx506 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1239
  %99 = load i32* %arrayidx506, align 4, !tbaa !0
  switch i32 %99, label %return [
    i32 13, label %for.cond504
    i32 11, label %return.loopexit1209
    i32 9, label %return.loopexit1209
  ]

if.end527:                                        ; preds = %sw.epilog, %if.then69
  %100 = load i32* @bking_loc, align 4, !tbaa !0
  %call528 = tail call i32 @is_attacked(i32 %100, i32 1) #2
  %tobool529 = icmp eq i32 %call528, 0
  %.1179 = zext i1 %tobool529 to i32
  br label %return

if.else532:                                       ; preds = %if.else
  br i1 %tobool70, label %if.end1010, label %if.then534

if.then534:                                       ; preds = %if.else532
  %cmp538 = icmp eq i32 %0, 0
  br i1 %cmp538, label %return, label %if.end540

if.end540:                                        ; preds = %if.then534
  %promoted543 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3
  %101 = load i32* %promoted543, align 4, !tbaa !0
  %tobool544 = icmp eq i32 %101, 0
  br i1 %tobool544, label %cond.end549, label %sw.bb551

cond.end549:                                      ; preds = %if.end540
  %idxprom547 = sext i32 %1 to i64
  %arrayidx548 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom547
  %102 = load i32* %arrayidx548, align 4, !tbaa !0
  switch i32 %102, label %sw.epilog813 [
    i32 1, label %sw.bb551
    i32 3, label %sw.bb603
    i32 11, label %sw.bb629
    i32 7, label %sw.bb665
    i32 9, label %sw.bb701
  ]

sw.bb551:                                         ; preds = %if.end540, %cond.end549
  %captured554 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 2
  %103 = load i32* %captured554, align 4, !tbaa !0
  %cmp555 = icmp eq i32 %103, 13
  %idxprom557 = sext i32 %0 to i64
  br i1 %cmp555, label %if.else582, label %if.then556

if.then556:                                       ; preds = %sw.bb551
  %arrayidx558 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom557
  %104 = load i32* %arrayidx558, align 4, !tbaa !0
  %105 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom559 = sext i32 %105 to i64
  %arrayidx560 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom559
  %106 = load i32* %arrayidx560, align 4, !tbaa !0
  %cmp561 = icmp eq i32 %104, %106
  br i1 %cmp561, label %sw.epilog813, label %land.lhs.true562

land.lhs.true562:                                 ; preds = %if.then556
  %arrayidx564 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom557
  %107 = load i32* %arrayidx564, align 4, !tbaa !0
  %arrayidx566 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom559
  %108 = load i32* %arrayidx566, align 4, !tbaa !0
  %cmp567 = icmp eq i32 %107, %108
  br i1 %cmp567, label %sw.epilog813, label %land.lhs.true568

land.lhs.true568:                                 ; preds = %land.lhs.true562
  %arrayidx570 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom557
  %109 = load i32* %arrayidx570, align 4, !tbaa !0
  %arrayidx572 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom559
  %110 = load i32* %arrayidx572, align 4, !tbaa !0
  %cmp573 = icmp eq i32 %109, %110
  br i1 %cmp573, label %sw.epilog813, label %land.lhs.true574

land.lhs.true574:                                 ; preds = %land.lhs.true568
  %arrayidx576 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom557
  %111 = load i32* %arrayidx576, align 4, !tbaa !0
  %arrayidx578 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom559
  %112 = load i32* %arrayidx578, align 4, !tbaa !0
  %cmp579 = icmp eq i32 %111, %112
  br i1 %cmp579, label %sw.epilog813, label %return

if.else582:                                       ; preds = %sw.bb551
  %arrayidx584 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom557
  %113 = load i32* %arrayidx584, align 4, !tbaa !0
  %114 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom585 = sext i32 %114 to i64
  %arrayidx586 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom585
  %115 = load i32* %arrayidx586, align 4, !tbaa !0
  %cmp587 = icmp eq i32 %113, %115
  br i1 %cmp587, label %sw.epilog813, label %land.lhs.true588

land.lhs.true588:                                 ; preds = %if.else582
  %arrayidx590 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom557
  %116 = load i32* %arrayidx590, align 4, !tbaa !0
  %arrayidx592 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom585
  %117 = load i32* %arrayidx592, align 4, !tbaa !0
  %cmp593 = icmp eq i32 %116, %117
  br i1 %cmp593, label %sw.epilog813, label %land.lhs.true594

land.lhs.true594:                                 ; preds = %land.lhs.true588
  %arrayidx596 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom557
  %118 = load i32* %arrayidx596, align 4, !tbaa !0
  %arrayidx598 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom585
  %119 = load i32* %arrayidx598, align 4, !tbaa !0
  %cmp599 = icmp eq i32 %118, %119
  br i1 %cmp599, label %sw.epilog813, label %return

sw.bb603:                                         ; preds = %cond.end549
  %idxprom604 = sext i32 %0 to i64
  %arrayidx605 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom604
  %120 = load i32* %arrayidx605, align 4, !tbaa !0
  %121 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom606 = sext i32 %121 to i64
  %arrayidx607 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom606
  %122 = load i32* %arrayidx607, align 4, !tbaa !0
  %cmp608 = icmp eq i32 %120, %122
  br i1 %cmp608, label %sw.epilog813, label %land.lhs.true609

land.lhs.true609:                                 ; preds = %sw.bb603
  %arrayidx611 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom604
  %123 = load i32* %arrayidx611, align 4, !tbaa !0
  %arrayidx613 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom606
  %124 = load i32* %arrayidx613, align 4, !tbaa !0
  %cmp614 = icmp eq i32 %123, %124
  br i1 %cmp614, label %sw.epilog813, label %land.lhs.true615

land.lhs.true615:                                 ; preds = %land.lhs.true609
  %arrayidx617 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom604
  %125 = load i32* %arrayidx617, align 4, !tbaa !0
  %arrayidx619 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom606
  %126 = load i32* %arrayidx619, align 4, !tbaa !0
  %cmp620 = icmp eq i32 %125, %126
  br i1 %cmp620, label %sw.epilog813, label %land.lhs.true621

land.lhs.true621:                                 ; preds = %land.lhs.true615
  %arrayidx623 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom604
  %127 = load i32* %arrayidx623, align 4, !tbaa !0
  %arrayidx625 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom606
  %128 = load i32* %arrayidx625, align 4, !tbaa !0
  %cmp626 = icmp eq i32 %127, %128
  br i1 %cmp626, label %sw.epilog813, label %return

sw.bb629:                                         ; preds = %cond.end549
  %idxprom630 = sext i32 %0 to i64
  %arrayidx631 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom630
  %129 = load i32* %arrayidx631, align 4, !tbaa !0
  %130 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom632 = sext i32 %130 to i64
  %arrayidx633 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom632
  %131 = load i32* %arrayidx633, align 4, !tbaa !0
  %cmp634 = icmp eq i32 %129, %131
  br i1 %cmp634, label %sw.epilog813, label %land.lhs.true635

land.lhs.true635:                                 ; preds = %sw.bb629
  %arrayidx637 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom630
  %132 = load i32* %arrayidx637, align 4, !tbaa !0
  %arrayidx639 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom632
  %133 = load i32* %arrayidx639, align 4, !tbaa !0
  %cmp640 = icmp eq i32 %132, %133
  br i1 %cmp640, label %sw.epilog813, label %if.then641

if.then641:                                       ; preds = %land.lhs.true635
  %arrayidx643 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom630
  %134 = load i32* %arrayidx643, align 4, !tbaa !0
  %arrayidx645 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom547
  %135 = load i32* %arrayidx645, align 4, !tbaa !0
  %cmp646 = icmp eq i32 %134, %135
  br i1 %cmp646, label %if.then647, label %if.else655

if.then647:                                       ; preds = %if.then641
  %arrayidx649 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom630
  %136 = load i32* %arrayidx649, align 4, !tbaa !0
  %arrayidx651 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom632
  %137 = load i32* %arrayidx651, align 4, !tbaa !0
  %cmp652 = icmp eq i32 %136, %137
  br i1 %cmp652, label %sw.epilog813, label %return

if.else655:                                       ; preds = %if.then641
  %arrayidx659 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom632
  %138 = load i32* %arrayidx659, align 4, !tbaa !0
  %cmp660 = icmp eq i32 %134, %138
  br i1 %cmp660, label %sw.epilog813, label %return

sw.bb665:                                         ; preds = %cond.end549
  %idxprom666 = sext i32 %0 to i64
  %arrayidx667 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom666
  %139 = load i32* %arrayidx667, align 4, !tbaa !0
  %140 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom668 = sext i32 %140 to i64
  %arrayidx669 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom668
  %141 = load i32* %arrayidx669, align 4, !tbaa !0
  %cmp670 = icmp eq i32 %139, %141
  br i1 %cmp670, label %sw.epilog813, label %land.lhs.true671

land.lhs.true671:                                 ; preds = %sw.bb665
  %arrayidx673 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom666
  %142 = load i32* %arrayidx673, align 4, !tbaa !0
  %arrayidx675 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom668
  %143 = load i32* %arrayidx675, align 4, !tbaa !0
  %cmp676 = icmp eq i32 %142, %143
  br i1 %cmp676, label %sw.epilog813, label %if.then677

if.then677:                                       ; preds = %land.lhs.true671
  %arrayidx679 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom666
  %144 = load i32* %arrayidx679, align 4, !tbaa !0
  %arrayidx681 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom547
  %145 = load i32* %arrayidx681, align 4, !tbaa !0
  %cmp682 = icmp eq i32 %144, %145
  br i1 %cmp682, label %if.then683, label %if.else691

if.then683:                                       ; preds = %if.then677
  %arrayidx685 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom666
  %146 = load i32* %arrayidx685, align 4, !tbaa !0
  %arrayidx687 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom668
  %147 = load i32* %arrayidx687, align 4, !tbaa !0
  %cmp688 = icmp eq i32 %146, %147
  br i1 %cmp688, label %sw.epilog813, label %return

if.else691:                                       ; preds = %if.then677
  %arrayidx695 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom668
  %148 = load i32* %arrayidx695, align 4, !tbaa !0
  %cmp696 = icmp eq i32 %144, %148
  br i1 %cmp696, label %sw.epilog813, label %return

sw.bb701:                                         ; preds = %cond.end549
  %idxprom702 = sext i32 %0 to i64
  %arrayidx703 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom702
  %149 = load i32* %arrayidx703, align 4, !tbaa !0
  %arrayidx708 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom547
  %150 = load i32* %arrayidx708, align 4, !tbaa !0
  %cmp709 = icmp eq i32 %149, %150
  br i1 %cmp709, label %if.then710, label %if.else730

if.then710:                                       ; preds = %sw.bb701
  %arrayidx712 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom702
  %151 = load i32* %arrayidx712, align 4, !tbaa !0
  %152 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom713 = sext i32 %152 to i64
  %arrayidx714 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom713
  %153 = load i32* %arrayidx714, align 4, !tbaa !0
  %cmp715 = icmp eq i32 %151, %153
  br i1 %cmp715, label %sw.epilog813, label %land.lhs.true716

land.lhs.true716:                                 ; preds = %if.then710
  %arrayidx718 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom702
  %154 = load i32* %arrayidx718, align 4, !tbaa !0
  %arrayidx720 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom713
  %155 = load i32* %arrayidx720, align 4, !tbaa !0
  %cmp721 = icmp eq i32 %154, %155
  br i1 %cmp721, label %sw.epilog813, label %land.lhs.true722

land.lhs.true722:                                 ; preds = %land.lhs.true716
  %arrayidx724 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom702
  %156 = load i32* %arrayidx724, align 4, !tbaa !0
  %arrayidx726 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom713
  %157 = load i32* %arrayidx726, align 4, !tbaa !0
  %cmp727 = icmp eq i32 %156, %157
  br i1 %cmp727, label %sw.epilog813, label %return

if.else730:                                       ; preds = %sw.bb701
  %arrayidx732 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom702
  %158 = load i32* %arrayidx732, align 4, !tbaa !0
  %arrayidx734 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom547
  %159 = load i32* %arrayidx734, align 4, !tbaa !0
  %cmp735 = icmp eq i32 %158, %159
  br i1 %cmp735, label %if.then736, label %if.else756

if.then736:                                       ; preds = %if.else730
  %arrayidx738 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom702
  %160 = load i32* %arrayidx738, align 4, !tbaa !0
  %161 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom739 = sext i32 %161 to i64
  %arrayidx740 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom739
  %162 = load i32* %arrayidx740, align 4, !tbaa !0
  %cmp741 = icmp eq i32 %160, %162
  br i1 %cmp741, label %sw.epilog813, label %land.lhs.true742

land.lhs.true742:                                 ; preds = %if.then736
  %arrayidx746 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom739
  %163 = load i32* %arrayidx746, align 4, !tbaa !0
  %cmp747 = icmp eq i32 %149, %163
  br i1 %cmp747, label %sw.epilog813, label %land.lhs.true748

land.lhs.true748:                                 ; preds = %land.lhs.true742
  %arrayidx750 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom702
  %164 = load i32* %arrayidx750, align 4, !tbaa !0
  %arrayidx752 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom739
  %165 = load i32* %arrayidx752, align 4, !tbaa !0
  %cmp753 = icmp eq i32 %164, %165
  br i1 %cmp753, label %sw.epilog813, label %return

if.else756:                                       ; preds = %if.else730
  %arrayidx758 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom702
  %166 = load i32* %arrayidx758, align 4, !tbaa !0
  %arrayidx760 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom547
  %167 = load i32* %arrayidx760, align 4, !tbaa !0
  %cmp761 = icmp eq i32 %166, %167
  %arrayidx764 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom702
  %168 = load i32* %arrayidx764, align 4, !tbaa !0
  br i1 %cmp761, label %if.then762, label %if.else782

if.then762:                                       ; preds = %if.else756
  %169 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom765 = sext i32 %169 to i64
  %arrayidx766 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom765
  %170 = load i32* %arrayidx766, align 4, !tbaa !0
  %cmp767 = icmp eq i32 %168, %170
  br i1 %cmp767, label %sw.epilog813, label %land.lhs.true768

land.lhs.true768:                                 ; preds = %if.then762
  %arrayidx772 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom765
  %171 = load i32* %arrayidx772, align 4, !tbaa !0
  %cmp773 = icmp eq i32 %149, %171
  br i1 %cmp773, label %sw.epilog813, label %land.lhs.true774

land.lhs.true774:                                 ; preds = %land.lhs.true768
  %arrayidx778 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom765
  %172 = load i32* %arrayidx778, align 4, !tbaa !0
  %cmp779 = icmp eq i32 %158, %172
  br i1 %cmp779, label %sw.epilog813, label %return

if.else782:                                       ; preds = %if.else756
  %arrayidx786 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom547
  %173 = load i32* %arrayidx786, align 4, !tbaa !0
  %cmp787 = icmp eq i32 %168, %173
  br i1 %cmp787, label %if.then788, label %sw.epilog813

if.then788:                                       ; preds = %if.else782
  %174 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom791 = sext i32 %174 to i64
  %arrayidx792 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom791
  %175 = load i32* %arrayidx792, align 4, !tbaa !0
  %cmp793 = icmp eq i32 %166, %175
  br i1 %cmp793, label %sw.epilog813, label %land.lhs.true794

land.lhs.true794:                                 ; preds = %if.then788
  %arrayidx798 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom791
  %176 = load i32* %arrayidx798, align 4, !tbaa !0
  %cmp799 = icmp eq i32 %149, %176
  br i1 %cmp799, label %sw.epilog813, label %land.lhs.true800

land.lhs.true800:                                 ; preds = %land.lhs.true794
  %arrayidx804 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom791
  %177 = load i32* %arrayidx804, align 4, !tbaa !0
  %cmp805 = icmp eq i32 %158, %177
  br i1 %cmp805, label %sw.epilog813, label %return

sw.epilog813:                                     ; preds = %land.lhs.true594, %land.lhs.true588, %if.else582, %land.lhs.true574, %land.lhs.true568, %land.lhs.true562, %if.then556, %land.lhs.true621, %land.lhs.true615, %land.lhs.true609, %sw.bb603, %if.then647, %if.else655, %land.lhs.true635, %sw.bb629, %if.then683, %if.else691, %land.lhs.true671, %sw.bb665, %land.lhs.true722, %land.lhs.true716, %if.then710, %land.lhs.true748, %land.lhs.true742, %if.then736, %land.lhs.true774, %land.lhs.true768, %if.then762, %land.lhs.true800, %land.lhs.true794, %if.then788, %cond.end549, %if.else782
  %idxprom814 = sext i32 %1 to i64
  %arrayidx815 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom814
  %178 = load i32* %arrayidx815, align 4, !tbaa !0
  %cmp816 = icmp eq i32 %178, 5
  br i1 %cmp816, label %if.end1010, label %if.then817

if.then817:                                       ; preds = %sw.epilog813
  %idxprom818 = sext i32 %0 to i64
  %arrayidx819 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom818
  %179 = load i32* %arrayidx819, align 4, !tbaa !0
  %180 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom820 = sext i32 %180 to i64
  %arrayidx821 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom820
  %181 = load i32* %arrayidx821, align 4, !tbaa !0
  %cmp822 = icmp eq i32 %179, %181
  br i1 %cmp822, label %if.then823, label %if.else864

if.then823:                                       ; preds = %if.then817
  %cmp824 = icmp sgt i32 %180, %0
  br i1 %cmp824, label %for.cond827, label %for.cond846

for.cond827:                                      ; preds = %if.then823, %for.cond827
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond827 ], [ %idxprom820, %if.then823 ]
  %indvars.iv.next = add i64 %indvars.iv, -12
  %arrayidx829 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next
  %182 = load i32* %arrayidx829, align 4, !tbaa !0
  switch i32 %182, label %return [
    i32 13, label %for.cond827
    i32 8, label %return.loopexit
    i32 10, label %return.loopexit
  ]

for.cond846:                                      ; preds = %if.then823, %for.cond846
  %indvars.iv1210 = phi i64 [ %indvars.iv.next1211, %for.cond846 ], [ %idxprom820, %if.then823 ]
  %indvars.iv.next1211 = add i64 %indvars.iv1210, 12
  %arrayidx848 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1211
  %183 = load i32* %arrayidx848, align 4, !tbaa !0
  switch i32 %183, label %return [
    i32 13, label %for.cond846
    i32 8, label %return.loopexit1182
    i32 10, label %return.loopexit1182
  ]

if.else864:                                       ; preds = %if.then817
  %arrayidx866 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom818
  %184 = load i32* %arrayidx866, align 4, !tbaa !0
  %arrayidx868 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom820
  %185 = load i32* %arrayidx868, align 4, !tbaa !0
  %cmp869 = icmp eq i32 %184, %185
  br i1 %cmp869, label %if.then870, label %if.else911

if.then870:                                       ; preds = %if.else864
  %cmp871 = icmp sgt i32 %180, %0
  br i1 %cmp871, label %for.cond874, label %for.cond893

for.cond874:                                      ; preds = %if.then870, %for.cond874
  %indvars.iv1212 = phi i64 [ %indvars.iv.next1213, %for.cond874 ], [ %idxprom820, %if.then870 ]
  %indvars.iv.next1213 = add i64 %indvars.iv1212, -1
  %arrayidx876 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1213
  %186 = load i32* %arrayidx876, align 4, !tbaa !0
  switch i32 %186, label %return [
    i32 13, label %for.cond874
    i32 8, label %return.loopexit1184
    i32 10, label %return.loopexit1184
  ]

for.cond893:                                      ; preds = %if.then870, %for.cond893
  %indvars.iv1214 = phi i64 [ %indvars.iv.next1215, %for.cond893 ], [ %idxprom820, %if.then870 ]
  %indvars.iv.next1215 = add i64 %indvars.iv1214, 1
  %arrayidx895 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1215
  %187 = load i32* %arrayidx895, align 4, !tbaa !0
  switch i32 %187, label %return [
    i32 13, label %for.cond893
    i32 8, label %return.loopexit1186
    i32 10, label %return.loopexit1186
  ]

if.else911:                                       ; preds = %if.else864
  %arrayidx913 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom818
  %188 = load i32* %arrayidx913, align 4, !tbaa !0
  %arrayidx915 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom820
  %189 = load i32* %arrayidx915, align 4, !tbaa !0
  %cmp916 = icmp eq i32 %188, %189
  br i1 %cmp916, label %if.then917, label %if.else958

if.then917:                                       ; preds = %if.else911
  %cmp918 = icmp sgt i32 %180, %0
  br i1 %cmp918, label %for.cond921, label %for.cond940

for.cond921:                                      ; preds = %if.then917, %for.cond921
  %indvars.iv1216 = phi i64 [ %indvars.iv.next1217, %for.cond921 ], [ %idxprom820, %if.then917 ]
  %indvars.iv.next1217 = add i64 %indvars.iv1216, -13
  %arrayidx923 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1217
  %190 = load i32* %arrayidx923, align 4, !tbaa !0
  switch i32 %190, label %return [
    i32 13, label %for.cond921
    i32 12, label %return.loopexit1188
    i32 10, label %return.loopexit1188
  ]

for.cond940:                                      ; preds = %if.then917, %for.cond940
  %indvars.iv1218 = phi i64 [ %indvars.iv.next1219, %for.cond940 ], [ %idxprom820, %if.then917 ]
  %indvars.iv.next1219 = add i64 %indvars.iv1218, 13
  %arrayidx942 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1219
  %191 = load i32* %arrayidx942, align 4, !tbaa !0
  switch i32 %191, label %return [
    i32 13, label %for.cond940
    i32 12, label %return.loopexit1190
    i32 10, label %return.loopexit1190
  ]

if.else958:                                       ; preds = %if.else911
  %arrayidx960 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom818
  %192 = load i32* %arrayidx960, align 4, !tbaa !0
  %arrayidx962 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom820
  %193 = load i32* %arrayidx962, align 4, !tbaa !0
  %cmp963 = icmp eq i32 %192, %193
  br i1 %cmp963, label %if.then964, label %return

if.then964:                                       ; preds = %if.else958
  %cmp965 = icmp sgt i32 %180, %0
  br i1 %cmp965, label %for.cond968, label %for.cond987

for.cond968:                                      ; preds = %if.then964, %for.cond968
  %indvars.iv1220 = phi i64 [ %indvars.iv.next1221, %for.cond968 ], [ %idxprom820, %if.then964 ]
  %indvars.iv.next1221 = add i64 %indvars.iv1220, -11
  %arrayidx970 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1221
  %194 = load i32* %arrayidx970, align 4, !tbaa !0
  switch i32 %194, label %return [
    i32 13, label %for.cond968
    i32 12, label %return.loopexit1192
    i32 10, label %return.loopexit1192
  ]

for.cond987:                                      ; preds = %if.then964, %for.cond987
  %indvars.iv1222 = phi i64 [ %indvars.iv.next1223, %for.cond987 ], [ %idxprom820, %if.then964 ]
  %indvars.iv.next1223 = add i64 %indvars.iv1222, 11
  %arrayidx989 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1223
  %195 = load i32* %arrayidx989, align 4, !tbaa !0
  switch i32 %195, label %return [
    i32 13, label %for.cond987
    i32 12, label %return.loopexit1194
    i32 10, label %return.loopexit1194
  ]

if.end1010:                                       ; preds = %sw.epilog813, %if.else532
  %196 = load i32* @wking_loc, align 4, !tbaa !0
  %call1011 = tail call i32 @is_attacked(i32 %196, i32 0) #2
  %tobool1012 = icmp eq i32 %call1011, 0
  %.1180 = zext i1 %tobool1012 to i32
  br label %return

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
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @gen(%struct.move_s* %moves) #0 {
entry:
  store i32 0, i32* @kingcap, align 4, !tbaa !0
  store i32 0, i32* @numb_moves, align 4, !tbaa !0
  store %struct.move_s* %moves, %struct.move_s** @genfor, align 8, !tbaa !3
  %0 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %restart

if.then:                                          ; preds = %entry
  store i32 0, i32* @captures, align 4, !tbaa !1
  store i32 0, i32* @fcaptures, align 4, !tbaa !1
  br label %restart

restart:                                          ; preds = %entry, %if.then, %if.then726
  %1 = phi i32 [ 3, %if.then726 ], [ 3, %if.then ], [ %0, %entry ]
  %2 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  %3 = load i32* @piece_count, align 4, !tbaa !0
  %cmp299957 = icmp slt i32 %3, 1
  br i1 %tobool, label %for.cond298.preheader, label %for.cond.preheader

for.cond298.preheader:                            ; preds = %restart
  br i1 %cmp299957, label %if.end612, label %land.rhs300

for.cond.preheader:                               ; preds = %restart
  br i1 %cmp299957, label %if.end612, label %land.rhs

land.rhs:                                         ; preds = %for.cond.preheader, %for.inc.land.rhs_crit_edge
  %4 = phi i32 [ %.pre, %for.inc.land.rhs_crit_edge ], [ %1, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.land.rhs_crit_edge ], [ 1, %for.cond.preheader ]
  %a.0954 = phi i32 [ %a.1, %for.inc.land.rhs_crit_edge ], [ 1, %for.cond.preheader ]
  %cmp3 = icmp eq i32 %4, 3
  %5 = load i32* @kingcap, align 4, !tbaa !0
  %tobool4 = icmp ne i32 %5, 0
  %or.cond = or i1 %cmp3, %tobool4
  br i1 %or.cond, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %land.rhs
  br i1 %cmp3, label %land.rhs6, label %if.end612

land.rhs6:                                        ; preds = %lor.rhs
  %6 = load i32* @fcaptures, align 4, !tbaa !1
  %7 = load i32* @captures, align 4, !tbaa !1
  %cmp7 = icmp eq i32 %6, %7
  br i1 %cmp7, label %for.body, label %if.end612

for.body:                                         ; preds = %land.rhs, %land.rhs6
  %arrayidx9 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %8 = load i32* %arrayidx9, align 4, !tbaa !0
  %tobool10 = icmp eq i32 %8, 0
  br i1 %tobool10, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %a.0954, 1
  store i32 %8, i32* @gfrom, align 4, !tbaa !0
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom13
  %9 = load i32* %arrayidx14, align 4, !tbaa !0
  switch i32 %9, label %for.inc [
    i32 1, label %sw.bb
    i32 3, label %sw.bb82
    i32 11, label %sw.bb138
    i32 7, label %sw.bb167
    i32 9, label %sw.bb196
    i32 5, label %sw.bb253
  ]

sw.bb:                                            ; preds = %if.else
  %add = add nsw i32 %8, 12
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15
  %10 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %10, 13
  br i1 %cmp17, label %if.then18, label %if.end45

if.then18:                                        ; preds = %sw.bb
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom13
  %11 = load i32* %arrayidx20, align 4, !tbaa !0
  %cmp21 = icmp eq i32 %11, 7
  br i1 %cmp21, label %switch.early.test, label %if.else28

switch.early.test:                                ; preds = %if.then18
  %.off = add i32 %4, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.else28, label %if.then26

if.then26:                                        ; preds = %switch.early.test
  tail call void @push_pawn(i32 %add, i32 0) #3
  br label %if.end45

if.else28:                                        ; preds = %switch.early.test, %if.then18
  %12 = load i32* @captures, align 4, !tbaa !1
  %tobool29 = icmp eq i32 %12, 0
  br i1 %tobool29, label %if.then30, label %if.end45

if.then30:                                        ; preds = %if.else28
  tail call void @push_pawn(i32 %add, i32 0) #3
  %cmp34 = icmp eq i32 %11, 2
  br i1 %cmp34, label %land.lhs.true35, label %if.end45

land.lhs.true35:                                  ; preds = %if.then30
  %add36 = add nsw i32 %8, 24
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom37
  %13 = load i32* %arrayidx38, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %13, 13
  br i1 %cmp39, label %if.then40, label %if.end45

if.then40:                                        ; preds = %land.lhs.true35
  tail call void @add_move(i32 %add36, i32 0) #2
  br label %if.end45

if.end45:                                         ; preds = %if.else28, %if.then26, %if.then30, %land.lhs.true35, %if.then40, %sw.bb
  %add46 = add nsw i32 %8, 13
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom47
  %14 = load i32* %arrayidx48, align 4, !tbaa !0
  %and = and i32 %14, 1
  %cmp49 = icmp ne i32 %and, 0
  %cmp54 = icmp eq i32 %14, 0
  %or.cond945 = or i1 %cmp49, %cmp54
  br i1 %or.cond945, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end45
  tail call void @push_pawn(i32 %add46, i32 0) #3
  br label %if.end57

if.end57:                                         ; preds = %if.end45, %if.then55
  %add58 = add nsw i32 %8, 11
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom59
  %15 = load i32* %arrayidx60, align 4, !tbaa !0
  %and61 = and i32 %15, 1
  %cmp62 = icmp ne i32 %and61, 0
  %cmp67 = icmp eq i32 %15, 0
  %or.cond946 = or i1 %cmp62, %cmp67
  br i1 %or.cond946, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end57
  tail call void @push_pawn(i32 %add58, i32 0) #3
  br label %if.end70

if.end70:                                         ; preds = %if.end57, %if.then68
  %16 = load i32* @ep_square, align 4, !tbaa !0
  %cmp72 = icmp eq i32 %16, %add46
  br i1 %cmp72, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.end70
  tail call void @push_pawn(i32 %add46, i32 1) #3
  br label %for.inc

if.else75:                                        ; preds = %if.end70
  %cmp77 = icmp eq i32 %16, %add58
  br i1 %cmp77, label %if.then78, label %for.inc

if.then78:                                        ; preds = %if.else75
  tail call void @push_pawn(i32 %add58, i32 1) #3
  br label %for.inc

sw.bb82:                                          ; preds = %if.else
  %sub = add nsw i32 %8, -25
  %idxprom83 = sext i32 %sub to i64
  %arrayidx84 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom83
  %17 = load i32* %arrayidx84, align 4, !tbaa !0
  %cmp85 = icmp eq i32 %17, 0
  br i1 %cmp85, label %if.end88, label %if.then86

if.then86:                                        ; preds = %sw.bb82
  tail call void @push_knighT(i32 %sub) #3
  br label %if.end88

if.end88:                                         ; preds = %sw.bb82, %if.then86
  %sub89 = add nsw i32 %8, -23
  %idxprom90 = sext i32 %sub89 to i64
  %arrayidx91 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom90
  %18 = load i32* %arrayidx91, align 4, !tbaa !0
  %cmp92 = icmp eq i32 %18, 0
  br i1 %cmp92, label %if.end95, label %if.then93

if.then93:                                        ; preds = %if.end88
  tail call void @push_knighT(i32 %sub89) #3
  br label %if.end95

if.end95:                                         ; preds = %if.end88, %if.then93
  %sub96 = add nsw i32 %8, -14
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom97
  %19 = load i32* %arrayidx98, align 4, !tbaa !0
  %cmp99 = icmp eq i32 %19, 0
  br i1 %cmp99, label %if.end102, label %if.then100

if.then100:                                       ; preds = %if.end95
  tail call void @push_knighT(i32 %sub96) #3
  br label %if.end102

if.end102:                                        ; preds = %if.end95, %if.then100
  %sub103 = add nsw i32 %8, -10
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom104
  %20 = load i32* %arrayidx105, align 4, !tbaa !0
  %cmp106 = icmp eq i32 %20, 0
  br i1 %cmp106, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.end102
  tail call void @push_knighT(i32 %sub103) #3
  br label %if.end109

if.end109:                                        ; preds = %if.end102, %if.then107
  %add110 = add nsw i32 %8, 10
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom111
  %21 = load i32* %arrayidx112, align 4, !tbaa !0
  %cmp113 = icmp eq i32 %21, 0
  br i1 %cmp113, label %if.end116, label %if.then114

if.then114:                                       ; preds = %if.end109
  tail call void @push_knighT(i32 %add110) #3
  br label %if.end116

if.end116:                                        ; preds = %if.end109, %if.then114
  %add117 = add nsw i32 %8, 14
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom118
  %22 = load i32* %arrayidx119, align 4, !tbaa !0
  %cmp120 = icmp eq i32 %22, 0
  br i1 %cmp120, label %if.end123, label %if.then121

if.then121:                                       ; preds = %if.end116
  tail call void @push_knighT(i32 %add117) #3
  br label %if.end123

if.end123:                                        ; preds = %if.end116, %if.then121
  %add124 = add nsw i32 %8, 23
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom125
  %23 = load i32* %arrayidx126, align 4, !tbaa !0
  %cmp127 = icmp eq i32 %23, 0
  br i1 %cmp127, label %if.end130, label %if.then128

if.then128:                                       ; preds = %if.end123
  tail call void @push_knighT(i32 %add124) #3
  br label %if.end130

if.end130:                                        ; preds = %if.end123, %if.then128
  %add131 = add nsw i32 %8, 25
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom132
  %24 = load i32* %arrayidx133, align 4, !tbaa !0
  %cmp134 = icmp eq i32 %24, 0
  br i1 %cmp134, label %for.inc, label %if.then135

if.then135:                                       ; preds = %if.end130
  tail call void @push_knighT(i32 %add131) #3
  br label %for.inc

sw.bb138:                                         ; preds = %if.else
  %sub139 = add nsw i32 %8, -13
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom140
  %25 = load i32* %arrayidx141, align 4, !tbaa !0
  %cmp142 = icmp eq i32 %25, 0
  br i1 %cmp142, label %if.end145, label %if.then143

if.then143:                                       ; preds = %sw.bb138
  tail call void @push_slidE(i32 %sub139) #3
  br label %if.end145

if.end145:                                        ; preds = %sw.bb138, %if.then143
  %sub146 = add nsw i32 %8, -11
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom147
  %26 = load i32* %arrayidx148, align 4, !tbaa !0
  %cmp149 = icmp eq i32 %26, 0
  br i1 %cmp149, label %if.end152, label %if.then150

if.then150:                                       ; preds = %if.end145
  tail call void @push_slidE(i32 %sub146) #3
  br label %if.end152

if.end152:                                        ; preds = %if.end145, %if.then150
  %add153 = add nsw i32 %8, 11
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom154
  %27 = load i32* %arrayidx155, align 4, !tbaa !0
  %cmp156 = icmp eq i32 %27, 0
  br i1 %cmp156, label %if.end159, label %if.then157

if.then157:                                       ; preds = %if.end152
  tail call void @push_slidE(i32 %add153) #3
  br label %if.end159

if.end159:                                        ; preds = %if.end152, %if.then157
  %add160 = add nsw i32 %8, 13
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom161
  %28 = load i32* %arrayidx162, align 4, !tbaa !0
  %cmp163 = icmp eq i32 %28, 0
  br i1 %cmp163, label %for.inc, label %if.then164

if.then164:                                       ; preds = %if.end159
  tail call void @push_slidE(i32 %add160) #3
  br label %for.inc

sw.bb167:                                         ; preds = %if.else
  %sub168 = add nsw i32 %8, -12
  %idxprom169 = sext i32 %sub168 to i64
  %arrayidx170 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom169
  %29 = load i32* %arrayidx170, align 4, !tbaa !0
  %cmp171 = icmp eq i32 %29, 0
  br i1 %cmp171, label %if.end174, label %if.then172

if.then172:                                       ; preds = %sw.bb167
  tail call void @push_slidE(i32 %sub168) #3
  br label %if.end174

if.end174:                                        ; preds = %sw.bb167, %if.then172
  %sub175 = add nsw i32 %8, -1
  %idxprom176 = sext i32 %sub175 to i64
  %arrayidx177 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom176
  %30 = load i32* %arrayidx177, align 4, !tbaa !0
  %cmp178 = icmp eq i32 %30, 0
  br i1 %cmp178, label %if.end181, label %if.then179

if.then179:                                       ; preds = %if.end174
  tail call void @push_slidE(i32 %sub175) #3
  br label %if.end181

if.end181:                                        ; preds = %if.end174, %if.then179
  %add182 = add nsw i32 %8, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom183
  %31 = load i32* %arrayidx184, align 4, !tbaa !0
  %cmp185 = icmp eq i32 %31, 0
  br i1 %cmp185, label %if.end188, label %if.then186

if.then186:                                       ; preds = %if.end181
  tail call void @push_slidE(i32 %add182) #3
  br label %if.end188

if.end188:                                        ; preds = %if.end181, %if.then186
  %add189 = add nsw i32 %8, 12
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom190
  %32 = load i32* %arrayidx191, align 4, !tbaa !0
  %cmp192 = icmp eq i32 %32, 0
  br i1 %cmp192, label %for.inc, label %if.then193

if.then193:                                       ; preds = %if.end188
  tail call void @push_slidE(i32 %add189) #3
  br label %for.inc

sw.bb196:                                         ; preds = %if.else
  %sub197 = add nsw i32 %8, -13
  %idxprom198 = sext i32 %sub197 to i64
  %arrayidx199 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom198
  %33 = load i32* %arrayidx199, align 4, !tbaa !0
  %cmp200 = icmp eq i32 %33, 0
  br i1 %cmp200, label %if.end203, label %if.then201

if.then201:                                       ; preds = %sw.bb196
  tail call void @push_slidE(i32 %sub197) #3
  br label %if.end203

if.end203:                                        ; preds = %sw.bb196, %if.then201
  %sub204 = add nsw i32 %8, -12
  %idxprom205 = sext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom205
  %34 = load i32* %arrayidx206, align 4, !tbaa !0
  %cmp207 = icmp eq i32 %34, 0
  br i1 %cmp207, label %if.end210, label %if.then208

if.then208:                                       ; preds = %if.end203
  tail call void @push_slidE(i32 %sub204) #3
  br label %if.end210

if.end210:                                        ; preds = %if.end203, %if.then208
  %sub211 = add nsw i32 %8, -11
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom212
  %35 = load i32* %arrayidx213, align 4, !tbaa !0
  %cmp214 = icmp eq i32 %35, 0
  br i1 %cmp214, label %if.end217, label %if.then215

if.then215:                                       ; preds = %if.end210
  tail call void @push_slidE(i32 %sub211) #3
  br label %if.end217

if.end217:                                        ; preds = %if.end210, %if.then215
  %sub218 = add nsw i32 %8, -1
  %idxprom219 = sext i32 %sub218 to i64
  %arrayidx220 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom219
  %36 = load i32* %arrayidx220, align 4, !tbaa !0
  %cmp221 = icmp eq i32 %36, 0
  br i1 %cmp221, label %if.end224, label %if.then222

if.then222:                                       ; preds = %if.end217
  tail call void @push_slidE(i32 %sub218) #3
  br label %if.end224

if.end224:                                        ; preds = %if.end217, %if.then222
  %add225 = add nsw i32 %8, 1
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom226
  %37 = load i32* %arrayidx227, align 4, !tbaa !0
  %cmp228 = icmp eq i32 %37, 0
  br i1 %cmp228, label %if.end231, label %if.then229

if.then229:                                       ; preds = %if.end224
  tail call void @push_slidE(i32 %add225) #3
  br label %if.end231

if.end231:                                        ; preds = %if.end224, %if.then229
  %add232 = add nsw i32 %8, 11
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom233
  %38 = load i32* %arrayidx234, align 4, !tbaa !0
  %cmp235 = icmp eq i32 %38, 0
  br i1 %cmp235, label %if.end238, label %if.then236

if.then236:                                       ; preds = %if.end231
  tail call void @push_slidE(i32 %add232) #3
  br label %if.end238

if.end238:                                        ; preds = %if.end231, %if.then236
  %add239 = add nsw i32 %8, 12
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom240
  %39 = load i32* %arrayidx241, align 4, !tbaa !0
  %cmp242 = icmp eq i32 %39, 0
  br i1 %cmp242, label %if.end245, label %if.then243

if.then243:                                       ; preds = %if.end238
  tail call void @push_slidE(i32 %add239) #3
  br label %if.end245

if.end245:                                        ; preds = %if.end238, %if.then243
  %add246 = add nsw i32 %8, 13
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom247
  %40 = load i32* %arrayidx248, align 4, !tbaa !0
  %cmp249 = icmp eq i32 %40, 0
  br i1 %cmp249, label %for.inc, label %if.then250

if.then250:                                       ; preds = %if.end245
  tail call void @push_slidE(i32 %add246) #3
  br label %for.inc

sw.bb253:                                         ; preds = %if.else
  %sub254 = add nsw i32 %8, -13
  tail call void @push_king(i32 %sub254) #3
  %sub255 = add nsw i32 %8, -12
  tail call void @push_king(i32 %sub255) #3
  %sub256 = add nsw i32 %8, -11
  tail call void @push_king(i32 %sub256) #3
  %sub257 = add nsw i32 %8, -1
  tail call void @push_king(i32 %sub257) #3
  %add258 = add nsw i32 %8, 1
  tail call void @push_king(i32 %add258) #3
  %add259 = add nsw i32 %8, 11
  tail call void @push_king(i32 %add259) #3
  %add260 = add nsw i32 %8, 12
  tail call void @push_king(i32 %add260) #3
  %add261 = add nsw i32 %8, 13
  tail call void @push_king(i32 %add261) #3
  %cmp262 = icmp ne i32 %8, 30
  %41 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !tbaa !0
  %tobool264 = icmp ne i32 %41, 0
  %or.cond734 = or i1 %cmp262, %tobool264
  %42 = load i32* @captures, align 4, !tbaa !1
  %tobool266 = icmp ne i32 %42, 0
  %or.cond735 = or i1 %or.cond734, %tobool266
  br i1 %or.cond735, label %for.inc, label %land.lhs.true267

land.lhs.true267:                                 ; preds = %sw.bb253
  %43 = load i32* @Variant, align 4, !tbaa !0
  %cmp268 = icmp ne i32 %43, 3
  %44 = load i32* @Giveaway, align 4, !tbaa !0
  %cmp269 = icmp eq i32 %44, 1
  %or.cond736 = or i1 %cmp268, %cmp269
  br i1 %or.cond736, label %if.then270, label %for.inc

if.then270:                                       ; preds = %land.lhs.true267
  %45 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !tbaa !0
  %tobool271 = icmp eq i32 %45, 0
  %46 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !tbaa !0
  %cmp273 = icmp eq i32 %46, 7
  %or.cond737 = and i1 %tobool271, %cmp273
  br i1 %or.cond737, label %if.then274, label %if.end281

if.then274:                                       ; preds = %if.then270
  %47 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !tbaa !0
  %cmp275 = icmp eq i32 %47, 13
  %48 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4, !tbaa !0
  %cmp277 = icmp eq i32 %48, 13
  %or.cond738 = and i1 %cmp275, %cmp277
  br i1 %or.cond738, label %if.then278, label %if.end281

if.then278:                                       ; preds = %if.then274
  tail call void @push_king_castle(i32 32, i32 1) #3
  br label %if.end281

if.end281:                                        ; preds = %if.then274, %if.then278, %if.then270
  %49 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !tbaa !0
  %tobool282 = icmp eq i32 %49, 0
  %50 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 26), align 4, !tbaa !0
  %cmp284 = icmp eq i32 %50, 7
  %or.cond739 = and i1 %tobool282, %cmp284
  br i1 %or.cond739, label %if.then285, label %for.inc

if.then285:                                       ; preds = %if.end281
  %51 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 27), align 4, !tbaa !0
  %cmp286 = icmp eq i32 %51, 13
  %52 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 28), align 4, !tbaa !0
  %cmp288 = icmp eq i32 %52, 13
  %or.cond740 = and i1 %cmp286, %cmp288
  %53 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 29), align 4, !tbaa !0
  %cmp290 = icmp eq i32 %53, 13
  %or.cond741 = and i1 %or.cond740, %cmp290
  br i1 %or.cond741, label %if.then291, label %for.inc

if.then291:                                       ; preds = %if.then285
  tail call void @push_king_castle(i32 28, i32 2) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then285, %if.end281, %land.lhs.true267, %sw.bb253, %if.end245, %if.end188, %if.end159, %if.end130, %if.else75, %for.body, %if.then78, %if.then73, %if.then135, %if.then164, %if.then193, %if.then250, %if.then291, %if.else
  %a.1 = phi i32 [ %inc, %if.else ], [ %inc, %if.then291 ], [ %inc, %if.then250 ], [ %inc, %if.then193 ], [ %inc, %if.then164 ], [ %inc, %if.then135 ], [ %inc, %if.then73 ], [ %inc, %if.then78 ], [ %a.0954, %for.body ], [ %inc, %if.else75 ], [ %inc, %if.end130 ], [ %inc, %if.end159 ], [ %inc, %if.end188 ], [ %inc, %if.end245 ], [ %inc, %sw.bb253 ], [ %inc, %land.lhs.true267 ], [ %inc, %if.end281 ], [ %inc, %if.then285 ]
  %54 = load i32* @piece_count, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %a.1, %54
  br i1 %cmp2, label %if.end612, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load i32* @Variant, align 4, !tbaa !0
  br label %land.rhs

land.rhs300:                                      ; preds = %for.cond298.preheader, %for.inc609.land.rhs300_crit_edge
  %55 = phi i32 [ %.pre965, %for.inc609.land.rhs300_crit_edge ], [ %1, %for.cond298.preheader ]
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %for.inc609.land.rhs300_crit_edge ], [ 1, %for.cond298.preheader ]
  %a.2958 = phi i32 [ %a.3, %for.inc609.land.rhs300_crit_edge ], [ 1, %for.cond298.preheader ]
  %cmp301 = icmp eq i32 %55, 3
  %56 = load i32* @kingcap, align 4, !tbaa !0
  %tobool303 = icmp ne i32 %56, 0
  %or.cond742 = or i1 %cmp301, %tobool303
  br i1 %or.cond742, label %lor.rhs304, label %for.body311

lor.rhs304:                                       ; preds = %land.rhs300
  br i1 %cmp301, label %land.rhs306, label %if.end612

land.rhs306:                                      ; preds = %lor.rhs304
  %57 = load i32* @fcaptures, align 4, !tbaa !1
  %58 = load i32* @captures, align 4, !tbaa !1
  %cmp307 = icmp eq i32 %57, %58
  br i1 %cmp307, label %for.body311, label %if.end612

for.body311:                                      ; preds = %land.rhs300, %land.rhs306
  %arrayidx313 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv963
  %59 = load i32* %arrayidx313, align 4, !tbaa !0
  %tobool314 = icmp eq i32 %59, 0
  br i1 %tobool314, label %for.inc609, label %if.else316

if.else316:                                       ; preds = %for.body311
  %inc317 = add nsw i32 %a.2958, 1
  store i32 %59, i32* @gfrom, align 4, !tbaa !0
  %idxprom319 = sext i32 %59 to i64
  %arrayidx320 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom319
  %60 = load i32* %arrayidx320, align 4, !tbaa !0
  switch i32 %60, label %for.inc609 [
    i32 2, label %sw.bb321
    i32 4, label %sw.bb391
    i32 12, label %sw.bb448
    i32 8, label %sw.bb477
    i32 10, label %sw.bb506
    i32 6, label %sw.bb563
  ]

sw.bb321:                                         ; preds = %if.else316
  %sub322 = add nsw i32 %59, -12
  %idxprom323 = sext i32 %sub322 to i64
  %arrayidx324 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom323
  %61 = load i32* %arrayidx324, align 4, !tbaa !0
  %cmp325 = icmp eq i32 %61, 13
  br i1 %cmp325, label %if.then326, label %if.end353

if.then326:                                       ; preds = %sw.bb321
  %arrayidx328 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom319
  %62 = load i32* %arrayidx328, align 4, !tbaa !0
  %cmp329 = icmp eq i32 %62, 2
  br i1 %cmp329, label %switch.early.test947, label %if.else336

switch.early.test947:                             ; preds = %if.then326
  %.off950 = add i32 %55, -3
  %switch951 = icmp ult i32 %.off950, 2
  br i1 %switch951, label %if.else336, label %if.then334

if.then334:                                       ; preds = %switch.early.test947
  tail call void @push_pawn(i32 %sub322, i32 0) #3
  br label %if.end353

if.else336:                                       ; preds = %switch.early.test947, %if.then326
  %63 = load i32* @captures, align 4, !tbaa !1
  %tobool337 = icmp eq i32 %63, 0
  br i1 %tobool337, label %if.then338, label %if.end353

if.then338:                                       ; preds = %if.else336
  tail call void @push_pawn(i32 %sub322, i32 0) #3
  %cmp342 = icmp eq i32 %62, 7
  br i1 %cmp342, label %land.lhs.true343, label %if.end353

land.lhs.true343:                                 ; preds = %if.then338
  %sub344 = add nsw i32 %59, -24
  %idxprom345 = sext i32 %sub344 to i64
  %arrayidx346 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom345
  %64 = load i32* %arrayidx346, align 4, !tbaa !0
  %cmp347 = icmp eq i32 %64, 13
  br i1 %cmp347, label %if.then348, label %if.end353

if.then348:                                       ; preds = %land.lhs.true343
  tail call void @add_move(i32 %sub344, i32 0) #2
  br label %if.end353

if.end353:                                        ; preds = %if.else336, %if.then334, %if.then338, %land.lhs.true343, %if.then348, %sw.bb321
  %sub354 = add nsw i32 %59, -13
  %idxprom355 = sext i32 %sub354 to i64
  %arrayidx356 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom355
  %65 = load i32* %arrayidx356, align 4, !tbaa !0
  %and357 = and i32 %65, 1
  %cmp358 = icmp eq i32 %and357, 0
  %cmp363 = icmp eq i32 %65, 13
  %or.cond948 = or i1 %cmp358, %cmp363
  br i1 %or.cond948, label %if.end366, label %if.then364

if.then364:                                       ; preds = %if.end353
  tail call void @push_pawn(i32 %sub354, i32 0) #3
  br label %if.end366

if.end366:                                        ; preds = %if.end353, %if.then364
  %sub367 = add nsw i32 %59, -11
  %idxprom368 = sext i32 %sub367 to i64
  %arrayidx369 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom368
  %66 = load i32* %arrayidx369, align 4, !tbaa !0
  %and370 = and i32 %66, 1
  %cmp371 = icmp eq i32 %and370, 0
  %cmp376 = icmp eq i32 %66, 13
  %or.cond949 = or i1 %cmp371, %cmp376
  br i1 %or.cond949, label %if.end379, label %if.then377

if.then377:                                       ; preds = %if.end366
  tail call void @push_pawn(i32 %sub367, i32 0) #3
  br label %if.end379

if.end379:                                        ; preds = %if.end366, %if.then377
  %67 = load i32* @ep_square, align 4, !tbaa !0
  %cmp381 = icmp eq i32 %67, %sub354
  br i1 %cmp381, label %if.then382, label %if.else384

if.then382:                                       ; preds = %if.end379
  tail call void @push_pawn(i32 %sub354, i32 1) #3
  br label %for.inc609

if.else384:                                       ; preds = %if.end379
  %cmp386 = icmp eq i32 %67, %sub367
  br i1 %cmp386, label %if.then387, label %for.inc609

if.then387:                                       ; preds = %if.else384
  tail call void @push_pawn(i32 %sub367, i32 1) #3
  br label %for.inc609

sw.bb391:                                         ; preds = %if.else316
  %sub392 = add nsw i32 %59, -25
  %idxprom393 = sext i32 %sub392 to i64
  %arrayidx394 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom393
  %68 = load i32* %arrayidx394, align 4, !tbaa !0
  %cmp395 = icmp eq i32 %68, 0
  br i1 %cmp395, label %if.end398, label %if.then396

if.then396:                                       ; preds = %sw.bb391
  tail call void @push_knighT(i32 %sub392) #3
  br label %if.end398

if.end398:                                        ; preds = %sw.bb391, %if.then396
  %sub399 = add nsw i32 %59, -23
  %idxprom400 = sext i32 %sub399 to i64
  %arrayidx401 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom400
  %69 = load i32* %arrayidx401, align 4, !tbaa !0
  %cmp402 = icmp eq i32 %69, 0
  br i1 %cmp402, label %if.end405, label %if.then403

if.then403:                                       ; preds = %if.end398
  tail call void @push_knighT(i32 %sub399) #3
  br label %if.end405

if.end405:                                        ; preds = %if.end398, %if.then403
  %sub406 = add nsw i32 %59, -14
  %idxprom407 = sext i32 %sub406 to i64
  %arrayidx408 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom407
  %70 = load i32* %arrayidx408, align 4, !tbaa !0
  %cmp409 = icmp eq i32 %70, 0
  br i1 %cmp409, label %if.end412, label %if.then410

if.then410:                                       ; preds = %if.end405
  tail call void @push_knighT(i32 %sub406) #3
  br label %if.end412

if.end412:                                        ; preds = %if.end405, %if.then410
  %sub413 = add nsw i32 %59, -10
  %idxprom414 = sext i32 %sub413 to i64
  %arrayidx415 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom414
  %71 = load i32* %arrayidx415, align 4, !tbaa !0
  %cmp416 = icmp eq i32 %71, 0
  br i1 %cmp416, label %if.end419, label %if.then417

if.then417:                                       ; preds = %if.end412
  tail call void @push_knighT(i32 %sub413) #3
  br label %if.end419

if.end419:                                        ; preds = %if.end412, %if.then417
  %add420 = add nsw i32 %59, 10
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom421
  %72 = load i32* %arrayidx422, align 4, !tbaa !0
  %cmp423 = icmp eq i32 %72, 0
  br i1 %cmp423, label %if.end426, label %if.then424

if.then424:                                       ; preds = %if.end419
  tail call void @push_knighT(i32 %add420) #3
  br label %if.end426

if.end426:                                        ; preds = %if.end419, %if.then424
  %add427 = add nsw i32 %59, 14
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom428
  %73 = load i32* %arrayidx429, align 4, !tbaa !0
  %cmp430 = icmp eq i32 %73, 0
  br i1 %cmp430, label %if.end433, label %if.then431

if.then431:                                       ; preds = %if.end426
  tail call void @push_knighT(i32 %add427) #3
  br label %if.end433

if.end433:                                        ; preds = %if.end426, %if.then431
  %add434 = add nsw i32 %59, 23
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom435
  %74 = load i32* %arrayidx436, align 4, !tbaa !0
  %cmp437 = icmp eq i32 %74, 0
  br i1 %cmp437, label %if.end440, label %if.then438

if.then438:                                       ; preds = %if.end433
  tail call void @push_knighT(i32 %add434) #3
  br label %if.end440

if.end440:                                        ; preds = %if.end433, %if.then438
  %add441 = add nsw i32 %59, 25
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom442
  %75 = load i32* %arrayidx443, align 4, !tbaa !0
  %cmp444 = icmp eq i32 %75, 0
  br i1 %cmp444, label %for.inc609, label %if.then445

if.then445:                                       ; preds = %if.end440
  tail call void @push_knighT(i32 %add441) #3
  br label %for.inc609

sw.bb448:                                         ; preds = %if.else316
  %sub449 = add nsw i32 %59, -13
  %idxprom450 = sext i32 %sub449 to i64
  %arrayidx451 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom450
  %76 = load i32* %arrayidx451, align 4, !tbaa !0
  %cmp452 = icmp eq i32 %76, 0
  br i1 %cmp452, label %if.end455, label %if.then453

if.then453:                                       ; preds = %sw.bb448
  tail call void @push_slidE(i32 %sub449) #3
  br label %if.end455

if.end455:                                        ; preds = %sw.bb448, %if.then453
  %sub456 = add nsw i32 %59, -11
  %idxprom457 = sext i32 %sub456 to i64
  %arrayidx458 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom457
  %77 = load i32* %arrayidx458, align 4, !tbaa !0
  %cmp459 = icmp eq i32 %77, 0
  br i1 %cmp459, label %if.end462, label %if.then460

if.then460:                                       ; preds = %if.end455
  tail call void @push_slidE(i32 %sub456) #3
  br label %if.end462

if.end462:                                        ; preds = %if.end455, %if.then460
  %add463 = add nsw i32 %59, 11
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx465 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom464
  %78 = load i32* %arrayidx465, align 4, !tbaa !0
  %cmp466 = icmp eq i32 %78, 0
  br i1 %cmp466, label %if.end469, label %if.then467

if.then467:                                       ; preds = %if.end462
  tail call void @push_slidE(i32 %add463) #3
  br label %if.end469

if.end469:                                        ; preds = %if.end462, %if.then467
  %add470 = add nsw i32 %59, 13
  %idxprom471 = sext i32 %add470 to i64
  %arrayidx472 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom471
  %79 = load i32* %arrayidx472, align 4, !tbaa !0
  %cmp473 = icmp eq i32 %79, 0
  br i1 %cmp473, label %for.inc609, label %if.then474

if.then474:                                       ; preds = %if.end469
  tail call void @push_slidE(i32 %add470) #3
  br label %for.inc609

sw.bb477:                                         ; preds = %if.else316
  %sub478 = add nsw i32 %59, -12
  %idxprom479 = sext i32 %sub478 to i64
  %arrayidx480 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom479
  %80 = load i32* %arrayidx480, align 4, !tbaa !0
  %cmp481 = icmp eq i32 %80, 0
  br i1 %cmp481, label %if.end484, label %if.then482

if.then482:                                       ; preds = %sw.bb477
  tail call void @push_slidE(i32 %sub478) #3
  br label %if.end484

if.end484:                                        ; preds = %sw.bb477, %if.then482
  %sub485 = add nsw i32 %59, -1
  %idxprom486 = sext i32 %sub485 to i64
  %arrayidx487 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom486
  %81 = load i32* %arrayidx487, align 4, !tbaa !0
  %cmp488 = icmp eq i32 %81, 0
  br i1 %cmp488, label %if.end491, label %if.then489

if.then489:                                       ; preds = %if.end484
  tail call void @push_slidE(i32 %sub485) #3
  br label %if.end491

if.end491:                                        ; preds = %if.end484, %if.then489
  %add492 = add nsw i32 %59, 1
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom493
  %82 = load i32* %arrayidx494, align 4, !tbaa !0
  %cmp495 = icmp eq i32 %82, 0
  br i1 %cmp495, label %if.end498, label %if.then496

if.then496:                                       ; preds = %if.end491
  tail call void @push_slidE(i32 %add492) #3
  br label %if.end498

if.end498:                                        ; preds = %if.end491, %if.then496
  %add499 = add nsw i32 %59, 12
  %idxprom500 = sext i32 %add499 to i64
  %arrayidx501 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom500
  %83 = load i32* %arrayidx501, align 4, !tbaa !0
  %cmp502 = icmp eq i32 %83, 0
  br i1 %cmp502, label %for.inc609, label %if.then503

if.then503:                                       ; preds = %if.end498
  tail call void @push_slidE(i32 %add499) #3
  br label %for.inc609

sw.bb506:                                         ; preds = %if.else316
  %sub507 = add nsw i32 %59, -13
  %idxprom508 = sext i32 %sub507 to i64
  %arrayidx509 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom508
  %84 = load i32* %arrayidx509, align 4, !tbaa !0
  %cmp510 = icmp eq i32 %84, 0
  br i1 %cmp510, label %if.end513, label %if.then511

if.then511:                                       ; preds = %sw.bb506
  tail call void @push_slidE(i32 %sub507) #3
  br label %if.end513

if.end513:                                        ; preds = %sw.bb506, %if.then511
  %sub514 = add nsw i32 %59, -12
  %idxprom515 = sext i32 %sub514 to i64
  %arrayidx516 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom515
  %85 = load i32* %arrayidx516, align 4, !tbaa !0
  %cmp517 = icmp eq i32 %85, 0
  br i1 %cmp517, label %if.end520, label %if.then518

if.then518:                                       ; preds = %if.end513
  tail call void @push_slidE(i32 %sub514) #3
  br label %if.end520

if.end520:                                        ; preds = %if.end513, %if.then518
  %sub521 = add nsw i32 %59, -11
  %idxprom522 = sext i32 %sub521 to i64
  %arrayidx523 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom522
  %86 = load i32* %arrayidx523, align 4, !tbaa !0
  %cmp524 = icmp eq i32 %86, 0
  br i1 %cmp524, label %if.end527, label %if.then525

if.then525:                                       ; preds = %if.end520
  tail call void @push_slidE(i32 %sub521) #3
  br label %if.end527

if.end527:                                        ; preds = %if.end520, %if.then525
  %sub528 = add nsw i32 %59, -1
  %idxprom529 = sext i32 %sub528 to i64
  %arrayidx530 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom529
  %87 = load i32* %arrayidx530, align 4, !tbaa !0
  %cmp531 = icmp eq i32 %87, 0
  br i1 %cmp531, label %if.end534, label %if.then532

if.then532:                                       ; preds = %if.end527
  tail call void @push_slidE(i32 %sub528) #3
  br label %if.end534

if.end534:                                        ; preds = %if.end527, %if.then532
  %add535 = add nsw i32 %59, 1
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom536
  %88 = load i32* %arrayidx537, align 4, !tbaa !0
  %cmp538 = icmp eq i32 %88, 0
  br i1 %cmp538, label %if.end541, label %if.then539

if.then539:                                       ; preds = %if.end534
  tail call void @push_slidE(i32 %add535) #3
  br label %if.end541

if.end541:                                        ; preds = %if.end534, %if.then539
  %add542 = add nsw i32 %59, 11
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom543
  %89 = load i32* %arrayidx544, align 4, !tbaa !0
  %cmp545 = icmp eq i32 %89, 0
  br i1 %cmp545, label %if.end548, label %if.then546

if.then546:                                       ; preds = %if.end541
  tail call void @push_slidE(i32 %add542) #3
  br label %if.end548

if.end548:                                        ; preds = %if.end541, %if.then546
  %add549 = add nsw i32 %59, 12
  %idxprom550 = sext i32 %add549 to i64
  %arrayidx551 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom550
  %90 = load i32* %arrayidx551, align 4, !tbaa !0
  %cmp552 = icmp eq i32 %90, 0
  br i1 %cmp552, label %if.end555, label %if.then553

if.then553:                                       ; preds = %if.end548
  tail call void @push_slidE(i32 %add549) #3
  br label %if.end555

if.end555:                                        ; preds = %if.end548, %if.then553
  %add556 = add nsw i32 %59, 13
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom557
  %91 = load i32* %arrayidx558, align 4, !tbaa !0
  %cmp559 = icmp eq i32 %91, 0
  br i1 %cmp559, label %for.inc609, label %if.then560

if.then560:                                       ; preds = %if.end555
  tail call void @push_slidE(i32 %add556) #3
  br label %for.inc609

sw.bb563:                                         ; preds = %if.else316
  %sub564 = add nsw i32 %59, -13
  tail call void @push_king(i32 %sub564) #3
  %sub565 = add nsw i32 %59, -12
  tail call void @push_king(i32 %sub565) #3
  %sub566 = add nsw i32 %59, -11
  tail call void @push_king(i32 %sub566) #3
  %sub567 = add nsw i32 %59, -1
  tail call void @push_king(i32 %sub567) #3
  %add568 = add nsw i32 %59, 1
  tail call void @push_king(i32 %add568) #3
  %add569 = add nsw i32 %59, 11
  tail call void @push_king(i32 %add569) #3
  %add570 = add nsw i32 %59, 12
  tail call void @push_king(i32 %add570) #3
  %add571 = add nsw i32 %59, 13
  tail call void @push_king(i32 %add571) #3
  %cmp572 = icmp ne i32 %59, 114
  %92 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !tbaa !0
  %tobool574 = icmp ne i32 %92, 0
  %or.cond746 = or i1 %cmp572, %tobool574
  %93 = load i32* @captures, align 4, !tbaa !1
  %tobool576 = icmp ne i32 %93, 0
  %or.cond747 = or i1 %or.cond746, %tobool576
  br i1 %or.cond747, label %for.inc609, label %land.lhs.true577

land.lhs.true577:                                 ; preds = %sw.bb563
  %94 = load i32* @Variant, align 4, !tbaa !0
  %cmp578 = icmp ne i32 %94, 3
  %95 = load i32* @Giveaway, align 4, !tbaa !0
  %cmp580 = icmp eq i32 %95, 1
  %or.cond748 = or i1 %cmp578, %cmp580
  br i1 %or.cond748, label %if.then581, label %for.inc609

if.then581:                                       ; preds = %land.lhs.true577
  %96 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !tbaa !0
  %tobool582 = icmp eq i32 %96, 0
  %97 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !tbaa !0
  %cmp584 = icmp eq i32 %97, 8
  %or.cond749 = and i1 %tobool582, %cmp584
  br i1 %or.cond749, label %if.then585, label %if.end592

if.then585:                                       ; preds = %if.then581
  %98 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !tbaa !0
  %cmp586 = icmp eq i32 %98, 13
  %99 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4, !tbaa !0
  %cmp588 = icmp eq i32 %99, 13
  %or.cond750 = and i1 %cmp586, %cmp588
  br i1 %or.cond750, label %if.then589, label %if.end592

if.then589:                                       ; preds = %if.then585
  tail call void @push_king_castle(i32 116, i32 3) #3
  br label %if.end592

if.end592:                                        ; preds = %if.then585, %if.then589, %if.then581
  %100 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !tbaa !0
  %tobool593 = icmp eq i32 %100, 0
  %101 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 110), align 4, !tbaa !0
  %cmp595 = icmp eq i32 %101, 8
  %or.cond751 = and i1 %tobool593, %cmp595
  br i1 %or.cond751, label %if.then596, label %for.inc609

if.then596:                                       ; preds = %if.end592
  %102 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 111), align 4, !tbaa !0
  %cmp597 = icmp eq i32 %102, 13
  %103 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 112), align 4, !tbaa !0
  %cmp599 = icmp eq i32 %103, 13
  %or.cond752 = and i1 %cmp597, %cmp599
  %104 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 113), align 4, !tbaa !0
  %cmp601 = icmp eq i32 %104, 13
  %or.cond753 = and i1 %or.cond752, %cmp601
  br i1 %or.cond753, label %if.then602, label %for.inc609

if.then602:                                       ; preds = %if.then596
  tail call void @push_king_castle(i32 112, i32 4) #3
  br label %for.inc609

for.inc609:                                       ; preds = %if.then596, %if.end592, %land.lhs.true577, %sw.bb563, %if.end555, %if.end498, %if.end469, %if.end440, %if.else384, %for.body311, %if.then387, %if.then382, %if.then445, %if.then474, %if.then503, %if.then560, %if.then602, %if.else316
  %a.3 = phi i32 [ %inc317, %if.else316 ], [ %inc317, %if.then602 ], [ %inc317, %if.then560 ], [ %inc317, %if.then503 ], [ %inc317, %if.then474 ], [ %inc317, %if.then445 ], [ %inc317, %if.then382 ], [ %inc317, %if.then387 ], [ %a.2958, %for.body311 ], [ %inc317, %if.else384 ], [ %inc317, %if.end440 ], [ %inc317, %if.end469 ], [ %inc317, %if.end498 ], [ %inc317, %if.end555 ], [ %inc317, %sw.bb563 ], [ %inc317, %land.lhs.true577 ], [ %inc317, %if.end592 ], [ %inc317, %if.then596 ]
  %105 = load i32* @piece_count, align 4, !tbaa !0
  %cmp299 = icmp sgt i32 %a.3, %105
  br i1 %cmp299, label %if.end612, label %for.inc609.land.rhs300_crit_edge

for.inc609.land.rhs300_crit_edge:                 ; preds = %for.inc609
  %indvars.iv.next964 = add i64 %indvars.iv963, 1
  %.pre965 = load i32* @Variant, align 4, !tbaa !0
  br label %land.rhs300

if.end612:                                        ; preds = %for.cond298.preheader, %land.rhs306, %lor.rhs304, %for.inc609, %for.cond.preheader, %land.rhs6, %lor.rhs, %for.inc
  %106 = load i32* @Variant, align 4, !tbaa !0
  %or.cond754.not = icmp ugt i32 %106, 1
  %107 = load i32* @captures, align 4, !tbaa !1
  %tobool617 = icmp ne i32 %107, 0
  %or.cond755 = or i1 %or.cond754.not, %tobool617
  %108 = load i32* @kingcap, align 4, !tbaa !0
  %tobool619 = icmp ne i32 %108, 0
  %or.cond756 = or i1 %or.cond755, %tobool619
  br i1 %or.cond756, label %if.end720, label %if.then620

if.then620:                                       ; preds = %if.end612
  %109 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool621 = icmp eq i32 %109, 0
  br i1 %tobool621, label %land.lhs.true671, label %land.lhs.true622

land.lhs.true622:                                 ; preds = %if.then620
  %110 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !tbaa !0
  %111 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !tbaa !0
  %112 = or i32 %111, %110
  %113 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !tbaa !0
  %114 = or i32 %112, %113
  %115 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !tbaa !0
  %116 = or i32 %114, %115
  %117 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !tbaa !0
  %118 = or i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %if.end720, label %for.body635

for.body635:                                      ; preds = %for.inc666, %land.lhs.true622
  %from.0960 = phi i32 [ 26, %land.lhs.true622 ], [ %inc667, %for.inc666 ]
  store i32 %from.0960, i32* @gfrom, align 4, !tbaa !0
  %idxprom636 = sext i32 %from.0960 to i64
  %arrayidx637 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom636
  %120 = load i32* %arrayidx637, align 4, !tbaa !0
  switch i32 %120, label %for.inc666 [
    i32 0, label %sw.bb638
    i32 13, label %sw.bb640
  ]

sw.bb638:                                         ; preds = %for.body635
  %add639 = add nsw i32 %from.0960, 3
  br label %for.inc666

sw.bb640:                                         ; preds = %for.body635
  %121 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 1), align 4, !tbaa !0
  %tobool641 = icmp eq i32 %121, 0
  br i1 %tobool641, label %if.end652, label %if.then642

if.then642:                                       ; preds = %sw.bb640
  %arrayidx644 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom636
  %122 = load i32* %arrayidx644, align 4, !tbaa !0
  switch i32 %122, label %if.then650 [
    i32 8, label %if.end652
    i32 1, label %if.end652
  ]

if.then650:                                       ; preds = %if.then642
  tail call void @try_drop(i32 1) #3
  br label %if.end652

if.end652:                                        ; preds = %if.then642, %if.then642, %sw.bb640, %if.then650
  %123 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 3), align 4, !tbaa !0
  %tobool653 = icmp eq i32 %123, 0
  br i1 %tobool653, label %if.end655, label %if.then654

if.then654:                                       ; preds = %if.end652
  tail call void @try_drop(i32 3) #3
  br label %if.end655

if.end655:                                        ; preds = %if.end652, %if.then654
  %124 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 11), align 4, !tbaa !0
  %tobool656 = icmp eq i32 %124, 0
  br i1 %tobool656, label %if.end658, label %if.then657

if.then657:                                       ; preds = %if.end655
  tail call void @try_drop(i32 11) #3
  br label %if.end658

if.end658:                                        ; preds = %if.end655, %if.then657
  %125 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 7), align 4, !tbaa !0
  %tobool659 = icmp eq i32 %125, 0
  br i1 %tobool659, label %if.end661, label %if.then660

if.then660:                                       ; preds = %if.end658
  tail call void @try_drop(i32 7) #3
  br label %if.end661

if.end661:                                        ; preds = %if.end658, %if.then660
  %126 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 0, i64 9), align 4, !tbaa !0
  %tobool662 = icmp eq i32 %126, 0
  br i1 %tobool662, label %for.inc666, label %if.then663

if.then663:                                       ; preds = %if.end661
  tail call void @try_drop(i32 9) #3
  br label %for.inc666

for.inc666:                                       ; preds = %if.end661, %for.body635, %if.then663, %sw.bb638
  %from.1 = phi i32 [ %from.0960, %for.body635 ], [ %from.0960, %if.then663 ], [ %from.0960, %if.end661 ], [ %add639, %sw.bb638 ]
  %inc667 = add nsw i32 %from.1, 1
  %cmp634 = icmp slt i32 %inc667, 118
  br i1 %cmp634, label %for.body635, label %if.end720

land.lhs.true671:                                 ; preds = %if.then620
  %127 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 4, !tbaa !0
  %128 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 4, !tbaa !0
  %129 = or i32 %128, %127
  %130 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 4, !tbaa !0
  %131 = or i32 %129, %130
  %132 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 4, !tbaa !0
  %133 = or i32 %131, %132
  %134 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 4, !tbaa !0
  %135 = or i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %if.end720, label %for.body684

for.body684:                                      ; preds = %for.inc715, %land.lhs.true671
  %from.2962 = phi i32 [ 26, %land.lhs.true671 ], [ %inc716, %for.inc715 ]
  store i32 %from.2962, i32* @gfrom, align 4, !tbaa !0
  %idxprom685 = sext i32 %from.2962 to i64
  %arrayidx686 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom685
  %137 = load i32* %arrayidx686, align 4, !tbaa !0
  switch i32 %137, label %for.inc715 [
    i32 0, label %sw.bb687
    i32 13, label %sw.bb689
  ]

sw.bb687:                                         ; preds = %for.body684
  %add688 = add nsw i32 %from.2962, 3
  br label %for.inc715

sw.bb689:                                         ; preds = %for.body684
  %138 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 2), align 4, !tbaa !0
  %tobool690 = icmp eq i32 %138, 0
  br i1 %tobool690, label %if.end701, label %if.then691

if.then691:                                       ; preds = %sw.bb689
  %arrayidx693 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom685
  %139 = load i32* %arrayidx693, align 4, !tbaa !0
  switch i32 %139, label %if.then699 [
    i32 8, label %if.end701
    i32 1, label %if.end701
  ]

if.then699:                                       ; preds = %if.then691
  tail call void @try_drop(i32 2) #3
  br label %if.end701

if.end701:                                        ; preds = %if.then691, %if.then691, %sw.bb689, %if.then699
  %140 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 4), align 4, !tbaa !0
  %tobool702 = icmp eq i32 %140, 0
  br i1 %tobool702, label %if.end704, label %if.then703

if.then703:                                       ; preds = %if.end701
  tail call void @try_drop(i32 4) #3
  br label %if.end704

if.end704:                                        ; preds = %if.end701, %if.then703
  %141 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 12), align 4, !tbaa !0
  %tobool705 = icmp eq i32 %141, 0
  br i1 %tobool705, label %if.end707, label %if.then706

if.then706:                                       ; preds = %if.end704
  tail call void @try_drop(i32 12) #3
  br label %if.end707

if.end707:                                        ; preds = %if.end704, %if.then706
  %142 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 8), align 4, !tbaa !0
  %tobool708 = icmp eq i32 %142, 0
  br i1 %tobool708, label %if.end710, label %if.then709

if.then709:                                       ; preds = %if.end707
  tail call void @try_drop(i32 8) #3
  br label %if.end710

if.end710:                                        ; preds = %if.end707, %if.then709
  %143 = load i32* getelementptr inbounds ([2 x [16 x i32]]* @holding, i64 0, i64 1, i64 10), align 4, !tbaa !0
  %tobool711 = icmp eq i32 %143, 0
  br i1 %tobool711, label %for.inc715, label %if.then712

if.then712:                                       ; preds = %if.end710
  tail call void @try_drop(i32 10) #3
  br label %for.inc715

for.inc715:                                       ; preds = %if.end710, %for.body684, %if.then712, %sw.bb687
  %from.3 = phi i32 [ %from.2962, %for.body684 ], [ %from.2962, %if.then712 ], [ %from.2962, %if.end710 ], [ %add688, %sw.bb687 ]
  %inc716 = add nsw i32 %from.3, 1
  %cmp683 = icmp slt i32 %inc716, 118
  br i1 %cmp683, label %for.body684, label %if.end720

if.end720:                                        ; preds = %for.inc715, %for.inc666, %land.lhs.true671, %land.lhs.true622, %if.end612
  %144 = load i32* @Variant, align 4, !tbaa !0
  %cmp721 = icmp eq i32 %144, 3
  %145 = load i32* @fcaptures, align 4, !tbaa !1
  %cmp723 = icmp eq i32 %145, 1
  %or.cond765 = and i1 %cmp721, %cmp723
  %146 = load i32* @captures, align 4, !tbaa !1
  %cmp725 = icmp eq i32 %146, 0
  %or.cond766 = and i1 %or.cond765, %cmp725
  br i1 %or.cond766, label %if.then726, label %if.end727

if.then726:                                       ; preds = %if.end720
  store i32 1, i32* @captures, align 4, !tbaa !1
  store i32 0, i32* @numb_moves, align 4, !tbaa !0
  br label %restart

if.end727:                                        ; preds = %if.end720
  br i1 %cmp721, label %if.then729, label %if.end730

if.then729:                                       ; preds = %if.end727
  store i32 0, i32* @kingcap, align 4, !tbaa !0
  br label %if.end730

if.end730:                                        ; preds = %if.then729, %if.end727
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @push_pawn(i32 %target, i32 %is_ep) #0 {
entry:
  %tobool = icmp eq i32 %is_ep, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @gfrom, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  tail call void @add_capture(i32 %target, i32 2, i32 0, i32 1) #3
  br label %return

if.else:                                          ; preds = %if.then
  tail call void @add_capture(i32 %target, i32 1, i32 0, i32 1) #3
  br label %return

if.end:                                           ; preds = %entry
  %idxprom2 = sext i32 %target to i64
  %arrayidx3 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom2
  %2 = load i32* %arrayidx3, align 4, !tbaa !0
  %3 = load i32* @gfrom, align 4, !tbaa !0
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom4
  %4 = load i32* %arrayidx5, align 4, !tbaa !0
  switch i32 %4, label %if.else26 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true18
  ]

land.lhs.true:                                    ; preds = %if.end
  %arrayidx8 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom4
  %5 = load i32* %arrayidx8, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %5, 7
  br i1 %cmp9, label %if.then10, label %if.else26

if.then10:                                        ; preds = %land.lhs.true
  tail call void @add_capture(i32 %target, i32 %2, i32 9, i32 0) #3
  tail call void @add_capture(i32 %target, i32 %2, i32 7, i32 0) #3
  tail call void @add_capture(i32 %target, i32 %2, i32 11, i32 0) #3
  tail call void @add_capture(i32 %target, i32 %2, i32 3, i32 0) #3
  %6 = load i32* @Variant, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %6, 3
  br i1 %cmp11, label %if.then12, label %return

if.then12:                                        ; preds = %if.then10
  tail call void @add_capture(i32 %target, i32 %2, i32 5, i32 0) #3
  br label %return

land.lhs.true18:                                  ; preds = %if.end
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom4
  %7 = load i32* %arrayidx20, align 4, !tbaa !0
  %cmp21 = icmp eq i32 %7, 2
  br i1 %cmp21, label %if.then22, label %if.else26

if.then22:                                        ; preds = %land.lhs.true18
  tail call void @add_capture(i32 %target, i32 %2, i32 10, i32 0) #3
  tail call void @add_capture(i32 %target, i32 %2, i32 8, i32 0) #3
  tail call void @add_capture(i32 %target, i32 %2, i32 12, i32 0) #3
  tail call void @add_capture(i32 %target, i32 %2, i32 4, i32 0) #3
  %8 = load i32* @Variant, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %8, 3
  br i1 %cmp23, label %if.then24, label %return

if.then24:                                        ; preds = %if.then22
  tail call void @add_capture(i32 %target, i32 %2, i32 6, i32 0) #3
  br label %return

if.else26:                                        ; preds = %if.end, %land.lhs.true, %land.lhs.true18
  tail call void @add_capture(i32 %target, i32 %2, i32 0, i32 0) #3
  br label %return

return:                                           ; preds = %if.then22, %if.then24, %if.then10, %if.then12, %if.else26, %if.else, %if.then1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @push_pawn_simple(i32 %target) #0 {
entry:
  tail call void @add_move(i32 %target, i32 0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @push_knighT(i32 %target) #0 {
entry:
  %idxprom = sext i32 %target to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 13
  %1 = load i32* @captures, align 4, !tbaa !1
  %tobool = icmp ne i32 %1, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  tail call void @add_move(i32 %target, i32 0) #3
  br label %return

if.else:                                          ; preds = %if.end
  %2 = load i32* @gfrom, align 4, !tbaa !0
  %idxprom7 = sext i32 %2 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  %4 = xor i32 %3, %0
  %5 = and i32 %4, 1
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %return, label %if.then11

if.then11:                                        ; preds = %if.else
  tail call void @add_capture(i32 %target, i32 %0, i32 0, i32 0) #3
  br label %return

return:                                           ; preds = %if.else, %entry, %if.then11, %if.then4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @push_slidE(i32 %target) #0 {
entry:
  %0 = load i32* @gfrom, align 4, !tbaa !0
  %sub = sub nsw i32 %target, %0
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %2 = sext i32 %target to i64
  %3 = sext i32 %sub to i64
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %2, %entry ]
  %target.addr.0 = phi i32 [ %add, %if.end ], [ %target, %entry ]
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv
  %4 = load i32* %arrayidx2, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %5 = load i32* @captures, align 4, !tbaa !1
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = trunc i64 %indvars.iv to i32
  tail call void @add_move(i32 %6, i32 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then3
  %add = add nsw i32 %target.addr.0, %sub
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom13
  %7 = load i32* %arrayidx14, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %7, 0
  %indvars.iv.next = add i64 %indvars.iv, %3
  br i1 %cmp15, label %do.end, label %do.body

if.else:                                          ; preds = %do.body
  %8 = xor i32 %4, %1
  %9 = and i32 %8, 1
  %cmp7 = icmp eq i32 %9, 0
  br i1 %cmp7, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.else
  tail call void @add_capture(i32 %target.addr.0, i32 %4, i32 0, i32 0) #3
  br label %do.end

do.end:                                           ; preds = %if.end, %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @push_king(i32 %target) #0 {
entry:
  %idxprom = sext i32 %target to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %0, 13
  %1 = load i32* @captures, align 4, !tbaa !1
  %tobool = icmp ne i32 %1, 0
  %or.cond = and i1 %cmp3, %tobool
  br i1 %or.cond, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  br i1 %cmp3, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  tail call void @add_move(i32 %target, i32 0) #3
  br label %return

if.else:                                          ; preds = %if.end5
  %2 = load i32* @gfrom, align 4, !tbaa !0
  %idxprom12 = sext i32 %2 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom12
  %3 = load i32* %arrayidx13, align 4, !tbaa !0
  %4 = xor i32 %3, %0
  %5 = and i32 %4, 1
  %cmp15 = icmp eq i32 %5, 0
  br i1 %cmp15, label %return, label %if.then16

if.then16:                                        ; preds = %if.else
  tail call void @add_capture(i32 %target, i32 %0, i32 0, i32 0) #3
  br label %return

return:                                           ; preds = %if.else, %if.end, %entry, %if.then16, %if.then9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @push_king_castle(i32 %Ptarget, i32 %Pcastle_type) #0 {
entry:
  %0 = load i32* @gfrom, align 4, !tbaa !0
  %1 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.move_s** @genfor, align 8, !tbaa !3
  %from = getelementptr inbounds %struct.move_s* %2, i64 %idxprom, i32 0
  store i32 %0, i32* %from, align 4, !tbaa !0
  %3 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom1 = sext i32 %3 to i64
  %target = getelementptr inbounds %struct.move_s* %2, i64 %idxprom1, i32 1
  store i32 %Ptarget, i32* %target, align 4, !tbaa !0
  %4 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom3 = sext i32 %4 to i64
  %captured = getelementptr inbounds %struct.move_s* %2, i64 %idxprom3, i32 2
  store i32 13, i32* %captured, align 4, !tbaa !0
  %5 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom5 = sext i32 %5 to i64
  %castled = getelementptr inbounds %struct.move_s* %2, i64 %idxprom5, i32 4
  store i32 %Pcastle_type, i32* %castled, align 4, !tbaa !0
  %6 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom7 = sext i32 %6 to i64
  %promoted = getelementptr inbounds %struct.move_s* %2, i64 %idxprom7, i32 3
  store i32 0, i32* %promoted, align 4, !tbaa !0
  %7 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom9 = sext i32 %7 to i64
  %ep = getelementptr inbounds %struct.move_s* %2, i64 %idxprom9, i32 5
  store i32 0, i32* %ep, align 4, !tbaa !0
  %8 = load i32* @numb_moves, align 4, !tbaa !0
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @numb_moves, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @try_drop(i32 %ptype) #0 {
entry:
  %0 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.move_s** @genfor, align 8, !tbaa !3
  %from = getelementptr inbounds %struct.move_s* %1, i64 %idxprom, i32 0
  store i32 0, i32* %from, align 4, !tbaa !0
  %2 = load i32* @gfrom, align 4, !tbaa !0
  %3 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom1 = sext i32 %3 to i64
  %target = getelementptr inbounds %struct.move_s* %1, i64 %idxprom1, i32 1
  store i32 %2, i32* %target, align 4, !tbaa !0
  %4 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom3 = sext i32 %4 to i64
  %captured = getelementptr inbounds %struct.move_s* %1, i64 %idxprom3, i32 2
  store i32 13, i32* %captured, align 4, !tbaa !0
  %5 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom5 = sext i32 %5 to i64
  %castled = getelementptr inbounds %struct.move_s* %1, i64 %idxprom5, i32 4
  store i32 0, i32* %castled, align 4, !tbaa !0
  %6 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom7 = sext i32 %6 to i64
  %promoted = getelementptr inbounds %struct.move_s* %1, i64 %idxprom7, i32 3
  store i32 %ptype, i32* %promoted, align 4, !tbaa !0
  %7 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom9 = sext i32 %7 to i64
  %ep = getelementptr inbounds %struct.move_s* %1, i64 %idxprom9, i32 5
  store i32 0, i32* %ep, align 4, !tbaa !0
  %8 = load i32* @numb_moves, align 4, !tbaa !0
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @numb_moves, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @in_check() #0 {
entry:
  %0 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = load i32* @wking_loc, align 4, !tbaa !0
  %call = tail call i32 @is_attacked(i32 %2, i32 0) #2
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end9, label %return

if.else:                                          ; preds = %if.end
  %3 = load i32* @bking_loc, align 4, !tbaa !0
  %call5 = tail call i32 @is_attacked(i32 %3, i32 1) #2
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %if.end9, label %return

if.end9:                                          ; preds = %if.then2, %if.else
  br label %return

return:                                           ; preds = %if.else, %if.then2, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @f_in_check(%struct.move_s* nocapture %moves, i32 %m) #0 {
entry:
  %idxprom = sext i32 %m to i64
  %target1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1
  %0 = load i32* %target1, align 4, !tbaa !0
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0
  %1 = load i32* %from4, align 4, !tbaa !0
  %2 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %3, 1
  %idxprom7 = sext i32 %0 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  br i1 %cmp5, label %if.then6, label %if.else513

if.then6:                                         ; preds = %if.end
  switch i32 %4, label %sw.epilog [
    i32 2, label %sw.bb
    i32 12, label %sw.bb18
    i32 8, label %sw.bb84
    i32 4, label %for.cond155.preheader
    i32 10, label %sw.bb167
    i32 6, label %sw.bb311
  ]

for.cond155.preheader:                            ; preds = %if.then6
  %5 = load i32* @wking_loc, align 4, !tbaa !0
  br label %for.body157

sw.bb:                                            ; preds = %if.then6
  %sub = add nsw i32 %0, -11
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom9
  %6 = load i32* %arrayidx10, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %6, 5
  br i1 %cmp11, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %sub12 = add nsw i32 %0, -13
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom13
  %7 = load i32* %arrayidx14, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %7, 5
  br i1 %cmp15, label %return, label %sw.epilog

sw.bb18:                                          ; preds = %if.then6
  %arrayidx20 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7
  %8 = load i32* %arrayidx20, align 4, !tbaa !0
  %9 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom21 = sext i32 %9 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom21
  %10 = load i32* %arrayidx22, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %8, %10
  br i1 %cmp23, label %if.then24, label %if.else47

if.then24:                                        ; preds = %sw.bb18
  %cmp25 = icmp slt i32 %9, %0
  br i1 %cmp25, label %for.cond, label %for.cond35

for.cond:                                         ; preds = %if.then24, %for.cond
  %indvars.iv1293 = phi i64 [ %indvars.iv.next1294, %for.cond ], [ %idxprom21, %if.then24 ]
  %l.0.in = phi i32 [ %l.0, %for.cond ], [ %9, %if.then24 ]
  %indvars.iv.next1294 = add i64 %indvars.iv1293, 13
  %l.0 = add nsw i32 %l.0.in, 13
  %arrayidx28 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1294
  %11 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %11, 13
  br i1 %cmp29, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %cmp31 = icmp eq i32 %l.0, %0
  br i1 %cmp31, label %return, label %sw.epilog

for.cond35:                                       ; preds = %if.then24, %for.cond35
  %indvars.iv1295 = phi i64 [ %indvars.iv.next1296, %for.cond35 ], [ %idxprom21, %if.then24 ]
  %l.1.in = phi i32 [ %l.1, %for.cond35 ], [ %9, %if.then24 ]
  %indvars.iv.next1296 = add i64 %indvars.iv1295, -13
  %l.1 = add nsw i32 %l.1.in, -13
  %arrayidx37 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1296
  %12 = load i32* %arrayidx37, align 4, !tbaa !0
  %cmp38 = icmp eq i32 %12, 13
  br i1 %cmp38, label %for.cond35, label %for.end42

for.end42:                                        ; preds = %for.cond35
  %cmp43 = icmp eq i32 %l.1, %0
  br i1 %cmp43, label %return, label %sw.epilog

if.else47:                                        ; preds = %sw.bb18
  %arrayidx49 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7
  %13 = load i32* %arrayidx49, align 4, !tbaa !0
  %arrayidx51 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom21
  %14 = load i32* %arrayidx51, align 4, !tbaa !0
  %cmp52 = icmp eq i32 %13, %14
  br i1 %cmp52, label %if.then53, label %sw.epilog

if.then53:                                        ; preds = %if.else47
  %cmp54 = icmp slt i32 %9, %0
  br i1 %cmp54, label %for.cond57, label %for.cond70

for.cond57:                                       ; preds = %if.then53, %for.cond57
  %indvars.iv1297 = phi i64 [ %indvars.iv.next1298, %for.cond57 ], [ %idxprom21, %if.then53 ]
  %l.2.in = phi i32 [ %l.2, %for.cond57 ], [ %9, %if.then53 ]
  %indvars.iv.next1298 = add i64 %indvars.iv1297, 11
  %l.2 = add nsw i32 %l.2.in, 11
  %arrayidx59 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1298
  %15 = load i32* %arrayidx59, align 4, !tbaa !0
  %cmp60 = icmp eq i32 %15, 13
  br i1 %cmp60, label %for.cond57, label %for.end64

for.end64:                                        ; preds = %for.cond57
  %cmp65 = icmp eq i32 %l.2, %0
  br i1 %cmp65, label %return, label %sw.epilog

for.cond70:                                       ; preds = %if.then53, %for.cond70
  %indvars.iv1299 = phi i64 [ %indvars.iv.next1300, %for.cond70 ], [ %idxprom21, %if.then53 ]
  %l.3.in = phi i32 [ %l.3, %for.cond70 ], [ %9, %if.then53 ]
  %indvars.iv.next1300 = add i64 %indvars.iv1299, -11
  %l.3 = add nsw i32 %l.3.in, -11
  %arrayidx72 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1300
  %16 = load i32* %arrayidx72, align 4, !tbaa !0
  %cmp73 = icmp eq i32 %16, 13
  br i1 %cmp73, label %for.cond70, label %for.end77

for.end77:                                        ; preds = %for.cond70
  %cmp78 = icmp eq i32 %l.3, %0
  br i1 %cmp78, label %return, label %sw.epilog

sw.bb84:                                          ; preds = %if.then6
  %arrayidx86 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7
  %17 = load i32* %arrayidx86, align 4, !tbaa !0
  %18 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom87 = sext i32 %18 to i64
  %arrayidx88 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom87
  %19 = load i32* %arrayidx88, align 4, !tbaa !0
  %cmp89 = icmp eq i32 %17, %19
  br i1 %cmp89, label %if.then90, label %if.else119

if.then90:                                        ; preds = %sw.bb84
  %cmp91 = icmp slt i32 %18, %0
  br i1 %cmp91, label %for.cond94, label %for.cond107

for.cond94:                                       ; preds = %if.then90, %for.cond94
  %indvars.iv1301 = phi i64 [ %indvars.iv.next1302, %for.cond94 ], [ %idxprom87, %if.then90 ]
  %l.4.in = phi i32 [ %l.4, %for.cond94 ], [ %18, %if.then90 ]
  %indvars.iv.next1302 = add i64 %indvars.iv1301, 12
  %l.4 = add nsw i32 %l.4.in, 12
  %arrayidx96 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1302
  %20 = load i32* %arrayidx96, align 4, !tbaa !0
  %cmp97 = icmp eq i32 %20, 13
  br i1 %cmp97, label %for.cond94, label %for.end101

for.end101:                                       ; preds = %for.cond94
  %cmp102 = icmp eq i32 %l.4, %0
  br i1 %cmp102, label %return, label %sw.epilog

for.cond107:                                      ; preds = %if.then90, %for.cond107
  %indvars.iv1303 = phi i64 [ %indvars.iv.next1304, %for.cond107 ], [ %idxprom87, %if.then90 ]
  %l.5.in = phi i32 [ %l.5, %for.cond107 ], [ %18, %if.then90 ]
  %indvars.iv.next1304 = add i64 %indvars.iv1303, -12
  %l.5 = add nsw i32 %l.5.in, -12
  %arrayidx109 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1304
  %21 = load i32* %arrayidx109, align 4, !tbaa !0
  %cmp110 = icmp eq i32 %21, 13
  br i1 %cmp110, label %for.cond107, label %for.end114

for.end114:                                       ; preds = %for.cond107
  %cmp115 = icmp eq i32 %l.5, %0
  br i1 %cmp115, label %return, label %sw.epilog

if.else119:                                       ; preds = %sw.bb84
  %arrayidx121 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7
  %22 = load i32* %arrayidx121, align 4, !tbaa !0
  %arrayidx123 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom87
  %23 = load i32* %arrayidx123, align 4, !tbaa !0
  %cmp124 = icmp eq i32 %22, %23
  br i1 %cmp124, label %if.then125, label %sw.epilog

if.then125:                                       ; preds = %if.else119
  %cmp126 = icmp slt i32 %18, %0
  br i1 %cmp126, label %for.cond129, label %for.cond141

for.cond129:                                      ; preds = %if.then125, %for.cond129
  %indvars.iv1305 = phi i64 [ %indvars.iv.next1306, %for.cond129 ], [ %idxprom87, %if.then125 ]
  %l.6.in = phi i32 [ %l.6, %for.cond129 ], [ %18, %if.then125 ]
  %indvars.iv.next1306 = add i64 %indvars.iv1305, 1
  %l.6 = add nsw i32 %l.6.in, 1
  %arrayidx131 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1306
  %24 = load i32* %arrayidx131, align 4, !tbaa !0
  %cmp132 = icmp eq i32 %24, 13
  br i1 %cmp132, label %for.cond129, label %for.end135

for.end135:                                       ; preds = %for.cond129
  %cmp136 = icmp eq i32 %l.6, %0
  br i1 %cmp136, label %return, label %sw.epilog

for.cond141:                                      ; preds = %if.then125, %for.cond141
  %indvars.iv1307 = phi i64 [ %indvars.iv.next1308, %for.cond141 ], [ %idxprom87, %if.then125 ]
  %l.7.in = phi i32 [ %l.7, %for.cond141 ], [ %18, %if.then125 ]
  %indvars.iv.next1308 = add i64 %indvars.iv1307, -1
  %l.7 = add nsw i32 %l.7.in, -1
  %arrayidx143 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1308
  %25 = load i32* %arrayidx143, align 4, !tbaa !0
  %cmp144 = icmp eq i32 %25, 13
  br i1 %cmp144, label %for.cond141, label %for.end147

for.end147:                                       ; preds = %for.cond141
  %cmp148 = icmp eq i32 %l.7, %0
  br i1 %cmp148, label %return, label %sw.epilog

for.cond155:                                      ; preds = %for.body157
  %26 = trunc i64 %indvars.iv.next1310 to i32
  %cmp156 = icmp slt i32 %26, 8
  br i1 %cmp156, label %for.body157, label %sw.epilog

for.body157:                                      ; preds = %for.cond155.preheader, %for.cond155
  %indvars.iv1309 = phi i64 [ 0, %for.cond155.preheader ], [ %indvars.iv.next1310, %for.cond155 ]
  %arrayidx159 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv1309
  %27 = load i32* %arrayidx159, align 4, !tbaa !0
  %add160 = add nsw i32 %27, %5
  %cmp161 = icmp eq i32 %add160, %0
  %indvars.iv.next1310 = add i64 %indvars.iv1309, 1
  br i1 %cmp161, label %return, label %for.cond155

sw.bb167:                                         ; preds = %if.then6
  %arrayidx169 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7
  %28 = load i32* %arrayidx169, align 4, !tbaa !0
  %29 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom170 = sext i32 %29 to i64
  %arrayidx171 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom170
  %30 = load i32* %arrayidx171, align 4, !tbaa !0
  %cmp172 = icmp eq i32 %28, %30
  br i1 %cmp172, label %if.then173, label %if.else202

if.then173:                                       ; preds = %sw.bb167
  %cmp174 = icmp slt i32 %29, %0
  br i1 %cmp174, label %for.cond177, label %for.cond190

for.cond177:                                      ; preds = %if.then173, %for.cond177
  %indvars.iv1311 = phi i64 [ %indvars.iv.next1312, %for.cond177 ], [ %idxprom170, %if.then173 ]
  %l.9.in = phi i32 [ %l.9, %for.cond177 ], [ %29, %if.then173 ]
  %indvars.iv.next1312 = add i64 %indvars.iv1311, 12
  %l.9 = add nsw i32 %l.9.in, 12
  %arrayidx179 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1312
  %31 = load i32* %arrayidx179, align 4, !tbaa !0
  %cmp180 = icmp eq i32 %31, 13
  br i1 %cmp180, label %for.cond177, label %for.end184

for.end184:                                       ; preds = %for.cond177
  %cmp185 = icmp eq i32 %l.9, %0
  br i1 %cmp185, label %return, label %sw.epilog

for.cond190:                                      ; preds = %if.then173, %for.cond190
  %indvars.iv1313 = phi i64 [ %indvars.iv.next1314, %for.cond190 ], [ %idxprom170, %if.then173 ]
  %l.10.in = phi i32 [ %l.10, %for.cond190 ], [ %29, %if.then173 ]
  %indvars.iv.next1314 = add i64 %indvars.iv1313, -12
  %l.10 = add nsw i32 %l.10.in, -12
  %arrayidx192 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1314
  %32 = load i32* %arrayidx192, align 4, !tbaa !0
  %cmp193 = icmp eq i32 %32, 13
  br i1 %cmp193, label %for.cond190, label %for.end197

for.end197:                                       ; preds = %for.cond190
  %cmp198 = icmp eq i32 %l.10, %0
  br i1 %cmp198, label %return, label %sw.epilog

if.else202:                                       ; preds = %sw.bb167
  %arrayidx204 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7
  %33 = load i32* %arrayidx204, align 4, !tbaa !0
  %arrayidx206 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom170
  %34 = load i32* %arrayidx206, align 4, !tbaa !0
  %cmp207 = icmp eq i32 %33, %34
  br i1 %cmp207, label %if.then208, label %if.else237

if.then208:                                       ; preds = %if.else202
  %cmp209 = icmp slt i32 %29, %0
  br i1 %cmp209, label %for.cond212, label %for.cond225

for.cond212:                                      ; preds = %if.then208, %for.cond212
  %indvars.iv1315 = phi i64 [ %indvars.iv.next1316, %for.cond212 ], [ %idxprom170, %if.then208 ]
  %l.11.in = phi i32 [ %l.11, %for.cond212 ], [ %29, %if.then208 ]
  %indvars.iv.next1316 = add i64 %indvars.iv1315, 1
  %l.11 = add nsw i32 %l.11.in, 1
  %arrayidx214 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1316
  %35 = load i32* %arrayidx214, align 4, !tbaa !0
  %cmp215 = icmp eq i32 %35, 13
  br i1 %cmp215, label %for.cond212, label %for.end219

for.end219:                                       ; preds = %for.cond212
  %cmp220 = icmp eq i32 %l.11, %0
  br i1 %cmp220, label %return, label %sw.epilog

for.cond225:                                      ; preds = %if.then208, %for.cond225
  %indvars.iv1317 = phi i64 [ %indvars.iv.next1318, %for.cond225 ], [ %idxprom170, %if.then208 ]
  %l.12.in = phi i32 [ %l.12, %for.cond225 ], [ %29, %if.then208 ]
  %indvars.iv.next1318 = add i64 %indvars.iv1317, -1
  %l.12 = add nsw i32 %l.12.in, -1
  %arrayidx227 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1318
  %36 = load i32* %arrayidx227, align 4, !tbaa !0
  %cmp228 = icmp eq i32 %36, 13
  br i1 %cmp228, label %for.cond225, label %for.end232

for.end232:                                       ; preds = %for.cond225
  %cmp233 = icmp eq i32 %l.12, %0
  br i1 %cmp233, label %return, label %sw.epilog

if.else237:                                       ; preds = %if.else202
  %arrayidx239 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7
  %37 = load i32* %arrayidx239, align 4, !tbaa !0
  %arrayidx241 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom170
  %38 = load i32* %arrayidx241, align 4, !tbaa !0
  %cmp242 = icmp eq i32 %37, %38
  br i1 %cmp242, label %if.then243, label %if.else272

if.then243:                                       ; preds = %if.else237
  %cmp244 = icmp slt i32 %29, %0
  br i1 %cmp244, label %for.cond247, label %for.cond260

for.cond247:                                      ; preds = %if.then243, %for.cond247
  %indvars.iv1319 = phi i64 [ %indvars.iv.next1320, %for.cond247 ], [ %idxprom170, %if.then243 ]
  %l.13.in = phi i32 [ %l.13, %for.cond247 ], [ %29, %if.then243 ]
  %indvars.iv.next1320 = add i64 %indvars.iv1319, 13
  %l.13 = add nsw i32 %l.13.in, 13
  %arrayidx249 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1320
  %39 = load i32* %arrayidx249, align 4, !tbaa !0
  %cmp250 = icmp eq i32 %39, 13
  br i1 %cmp250, label %for.cond247, label %for.end254

for.end254:                                       ; preds = %for.cond247
  %cmp255 = icmp eq i32 %l.13, %0
  br i1 %cmp255, label %return, label %sw.epilog

for.cond260:                                      ; preds = %if.then243, %for.cond260
  %indvars.iv1321 = phi i64 [ %indvars.iv.next1322, %for.cond260 ], [ %idxprom170, %if.then243 ]
  %l.14.in = phi i32 [ %l.14, %for.cond260 ], [ %29, %if.then243 ]
  %indvars.iv.next1322 = add i64 %indvars.iv1321, -13
  %l.14 = add nsw i32 %l.14.in, -13
  %arrayidx262 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1322
  %40 = load i32* %arrayidx262, align 4, !tbaa !0
  %cmp263 = icmp eq i32 %40, 13
  br i1 %cmp263, label %for.cond260, label %for.end267

for.end267:                                       ; preds = %for.cond260
  %cmp268 = icmp eq i32 %l.14, %0
  br i1 %cmp268, label %return, label %sw.epilog

if.else272:                                       ; preds = %if.else237
  %arrayidx274 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7
  %41 = load i32* %arrayidx274, align 4, !tbaa !0
  %arrayidx276 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom170
  %42 = load i32* %arrayidx276, align 4, !tbaa !0
  %cmp277 = icmp eq i32 %41, %42
  br i1 %cmp277, label %if.then278, label %sw.epilog

if.then278:                                       ; preds = %if.else272
  %cmp279 = icmp slt i32 %29, %0
  br i1 %cmp279, label %for.cond282, label %for.cond295

for.cond282:                                      ; preds = %if.then278, %for.cond282
  %indvars.iv1323 = phi i64 [ %indvars.iv.next1324, %for.cond282 ], [ %idxprom170, %if.then278 ]
  %l.15.in = phi i32 [ %l.15, %for.cond282 ], [ %29, %if.then278 ]
  %indvars.iv.next1324 = add i64 %indvars.iv1323, 11
  %l.15 = add nsw i32 %l.15.in, 11
  %arrayidx284 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1324
  %43 = load i32* %arrayidx284, align 4, !tbaa !0
  %cmp285 = icmp eq i32 %43, 13
  br i1 %cmp285, label %for.cond282, label %for.end289

for.end289:                                       ; preds = %for.cond282
  %cmp290 = icmp eq i32 %l.15, %0
  br i1 %cmp290, label %return, label %sw.epilog

for.cond295:                                      ; preds = %if.then278, %for.cond295
  %indvars.iv1325 = phi i64 [ %indvars.iv.next1326, %for.cond295 ], [ %idxprom170, %if.then278 ]
  %l.16.in = phi i32 [ %l.16, %for.cond295 ], [ %29, %if.then278 ]
  %indvars.iv.next1326 = add i64 %indvars.iv1325, -11
  %l.16 = add nsw i32 %l.16.in, -11
  %arrayidx297 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1326
  %44 = load i32* %arrayidx297, align 4, !tbaa !0
  %cmp298 = icmp eq i32 %44, 13
  br i1 %cmp298, label %for.cond295, label %for.end302

for.end302:                                       ; preds = %for.cond295
  %cmp303 = icmp eq i32 %l.16, %0
  br i1 %cmp303, label %return, label %sw.epilog

sw.bb311:                                         ; preds = %if.then6
  %castled = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4
  %45 = load i32* %castled, align 4, !tbaa !0
  %tobool = icmp eq i32 %45, 0
  br i1 %tobool, label %sw.epilog, label %if.then314

if.then314:                                       ; preds = %sw.bb311
  %46 = load i32* @wking_loc, align 4, !tbaa !0
  %call = tail call i32 @is_attacked(i32 %46, i32 0) #2
  %not.tobool315 = icmp ne i32 %call, 0
  %. = zext i1 %not.tobool315 to i32
  br label %return

sw.epilog:                                        ; preds = %for.cond155, %sw.bb311, %for.end197, %for.end184, %for.end267, %for.end254, %for.end289, %for.end302, %if.else272, %for.end219, %for.end232, %for.end114, %for.end101, %for.end135, %for.end147, %if.else119, %for.end42, %for.end, %for.end64, %for.end77, %if.else47, %lor.lhs.false, %if.then6
  %cmp319 = icmp eq i32 %1, 0
  br i1 %cmp319, label %return, label %if.end321

if.end321:                                        ; preds = %sw.epilog
  %idxprom322 = sext i32 %1 to i64
  %arrayidx323 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom322
  %47 = load i32* %arrayidx323, align 4, !tbaa !0
  %48 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom324 = sext i32 %48 to i64
  %arrayidx325 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom324
  %49 = load i32* %arrayidx325, align 4, !tbaa !0
  %cmp326 = icmp eq i32 %47, %49
  br i1 %cmp326, label %if.then327, label %if.else368

if.then327:                                       ; preds = %if.end321
  %cmp328 = icmp sgt i32 %48, %1
  br i1 %cmp328, label %for.cond331, label %for.cond350

for.cond331:                                      ; preds = %if.then327, %for.cond331
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond331 ], [ %idxprom324, %if.then327 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx333 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next
  %50 = load i32* %arrayidx333, align 4, !tbaa !0
  switch i32 %50, label %return [
    i32 13, label %for.cond331
    i32 8, label %return.loopexit
    i32 10, label %return.loopexit
  ]

for.cond350:                                      ; preds = %if.then327, %for.cond350
  %indvars.iv1279 = phi i64 [ %indvars.iv.next1280, %for.cond350 ], [ %idxprom324, %if.then327 ]
  %indvars.iv.next1280 = add i64 %indvars.iv1279, 1
  %arrayidx352 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1280
  %51 = load i32* %arrayidx352, align 4, !tbaa !0
  switch i32 %51, label %return [
    i32 13, label %for.cond350
    i32 8, label %return.loopexit1247
    i32 10, label %return.loopexit1247
  ]

if.else368:                                       ; preds = %if.end321
  %arrayidx370 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom322
  %52 = load i32* %arrayidx370, align 4, !tbaa !0
  %arrayidx372 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom324
  %53 = load i32* %arrayidx372, align 4, !tbaa !0
  %cmp373 = icmp eq i32 %52, %53
  br i1 %cmp373, label %if.then374, label %if.else415

if.then374:                                       ; preds = %if.else368
  %cmp375 = icmp sgt i32 %48, %1
  br i1 %cmp375, label %for.cond378, label %for.cond397

for.cond378:                                      ; preds = %if.then374, %for.cond378
  %indvars.iv1281 = phi i64 [ %indvars.iv.next1282, %for.cond378 ], [ %idxprom324, %if.then374 ]
  %indvars.iv.next1282 = add i64 %indvars.iv1281, -12
  %arrayidx380 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1282
  %54 = load i32* %arrayidx380, align 4, !tbaa !0
  switch i32 %54, label %return [
    i32 13, label %for.cond378
    i32 8, label %return.loopexit1249
    i32 10, label %return.loopexit1249
  ]

for.cond397:                                      ; preds = %if.then374, %for.cond397
  %indvars.iv1283 = phi i64 [ %indvars.iv.next1284, %for.cond397 ], [ %idxprom324, %if.then374 ]
  %indvars.iv.next1284 = add i64 %indvars.iv1283, 12
  %arrayidx399 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1284
  %55 = load i32* %arrayidx399, align 4, !tbaa !0
  switch i32 %55, label %return [
    i32 13, label %for.cond397
    i32 8, label %return.loopexit1251
    i32 10, label %return.loopexit1251
  ]

if.else415:                                       ; preds = %if.else368
  %arrayidx417 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom322
  %56 = load i32* %arrayidx417, align 4, !tbaa !0
  %arrayidx419 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom324
  %57 = load i32* %arrayidx419, align 4, !tbaa !0
  %cmp420 = icmp eq i32 %56, %57
  br i1 %cmp420, label %if.then421, label %if.else462

if.then421:                                       ; preds = %if.else415
  %cmp422 = icmp sgt i32 %48, %1
  br i1 %cmp422, label %for.cond425, label %for.cond444

for.cond425:                                      ; preds = %if.then421, %for.cond425
  %indvars.iv1285 = phi i64 [ %indvars.iv.next1286, %for.cond425 ], [ %idxprom324, %if.then421 ]
  %indvars.iv.next1286 = add i64 %indvars.iv1285, -13
  %arrayidx427 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1286
  %58 = load i32* %arrayidx427, align 4, !tbaa !0
  switch i32 %58, label %return [
    i32 13, label %for.cond425
    i32 12, label %return.loopexit1253
    i32 10, label %return.loopexit1253
  ]

for.cond444:                                      ; preds = %if.then421, %for.cond444
  %indvars.iv1287 = phi i64 [ %indvars.iv.next1288, %for.cond444 ], [ %idxprom324, %if.then421 ]
  %indvars.iv.next1288 = add i64 %indvars.iv1287, 13
  %arrayidx446 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1288
  %59 = load i32* %arrayidx446, align 4, !tbaa !0
  switch i32 %59, label %return [
    i32 13, label %for.cond444
    i32 12, label %return.loopexit1255
    i32 10, label %return.loopexit1255
  ]

if.else462:                                       ; preds = %if.else415
  %arrayidx464 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom322
  %60 = load i32* %arrayidx464, align 4, !tbaa !0
  %arrayidx466 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom324
  %61 = load i32* %arrayidx466, align 4, !tbaa !0
  %cmp467 = icmp eq i32 %60, %61
  br i1 %cmp467, label %if.then468, label %return

if.then468:                                       ; preds = %if.else462
  %cmp469 = icmp sgt i32 %48, %1
  br i1 %cmp469, label %for.cond472, label %for.cond491

for.cond472:                                      ; preds = %if.then468, %for.cond472
  %indvars.iv1289 = phi i64 [ %indvars.iv.next1290, %for.cond472 ], [ %idxprom324, %if.then468 ]
  %indvars.iv.next1290 = add i64 %indvars.iv1289, -11
  %arrayidx474 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1290
  %62 = load i32* %arrayidx474, align 4, !tbaa !0
  switch i32 %62, label %return [
    i32 13, label %for.cond472
    i32 12, label %return.loopexit1257
    i32 10, label %return.loopexit1257
  ]

for.cond491:                                      ; preds = %if.then468, %for.cond491
  %indvars.iv1291 = phi i64 [ %indvars.iv.next1292, %for.cond491 ], [ %idxprom324, %if.then468 ]
  %indvars.iv.next1292 = add i64 %indvars.iv1291, 11
  %arrayidx493 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1292
  %63 = load i32* %arrayidx493, align 4, !tbaa !0
  switch i32 %63, label %return [
    i32 13, label %for.cond491
    i32 12, label %return.loopexit1259
    i32 10, label %return.loopexit1259
  ]

if.else513:                                       ; preds = %if.end
  switch i32 %4, label %sw.epilog840 [
    i32 1, label %sw.bb516
    i32 11, label %sw.bb528
    i32 7, label %sw.bb600
    i32 3, label %for.cond673.preheader
    i32 9, label %sw.bb685
    i32 5, label %sw.bb829
  ]

for.cond673.preheader:                            ; preds = %if.else513
  %64 = load i32* @bking_loc, align 4, !tbaa !0
  br label %for.body675

sw.bb516:                                         ; preds = %if.else513
  %add517 = add nsw i32 %0, 11
  %idxprom518 = sext i32 %add517 to i64
  %arrayidx519 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom518
  %65 = load i32* %arrayidx519, align 4, !tbaa !0
  %cmp520 = icmp eq i32 %65, 6
  br i1 %cmp520, label %return, label %lor.lhs.false521

lor.lhs.false521:                                 ; preds = %sw.bb516
  %add522 = add nsw i32 %0, 13
  %idxprom523 = sext i32 %add522 to i64
  %arrayidx524 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom523
  %66 = load i32* %arrayidx524, align 4, !tbaa !0
  %cmp525 = icmp eq i32 %66, 6
  br i1 %cmp525, label %return, label %sw.epilog840

sw.bb528:                                         ; preds = %if.else513
  %arrayidx530 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7
  %67 = load i32* %arrayidx530, align 4, !tbaa !0
  %68 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom531 = sext i32 %68 to i64
  %arrayidx532 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom531
  %69 = load i32* %arrayidx532, align 4, !tbaa !0
  %cmp533 = icmp eq i32 %67, %69
  br i1 %cmp533, label %if.then534, label %if.else563

if.then534:                                       ; preds = %sw.bb528
  %cmp535 = icmp slt i32 %68, %0
  br i1 %cmp535, label %for.cond538, label %for.cond551

for.cond538:                                      ; preds = %if.then534, %for.cond538
  %indvars.iv1343 = phi i64 [ %indvars.iv.next1344, %for.cond538 ], [ %idxprom531, %if.then534 ]
  %l.25.in = phi i32 [ %l.25, %for.cond538 ], [ %68, %if.then534 ]
  %indvars.iv.next1344 = add i64 %indvars.iv1343, 13
  %l.25 = add nsw i32 %l.25.in, 13
  %arrayidx540 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1344
  %70 = load i32* %arrayidx540, align 4, !tbaa !0
  %cmp541 = icmp eq i32 %70, 13
  br i1 %cmp541, label %for.cond538, label %for.end545

for.end545:                                       ; preds = %for.cond538
  %cmp546 = icmp eq i32 %l.25, %0
  br i1 %cmp546, label %return, label %sw.epilog840

for.cond551:                                      ; preds = %if.then534, %for.cond551
  %indvars.iv1345 = phi i64 [ %indvars.iv.next1346, %for.cond551 ], [ %idxprom531, %if.then534 ]
  %l.26.in = phi i32 [ %l.26, %for.cond551 ], [ %68, %if.then534 ]
  %indvars.iv.next1346 = add i64 %indvars.iv1345, -13
  %l.26 = add nsw i32 %l.26.in, -13
  %arrayidx553 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1346
  %71 = load i32* %arrayidx553, align 4, !tbaa !0
  %cmp554 = icmp eq i32 %71, 13
  br i1 %cmp554, label %for.cond551, label %for.end558

for.end558:                                       ; preds = %for.cond551
  %cmp559 = icmp eq i32 %l.26, %0
  br i1 %cmp559, label %return, label %sw.epilog840

if.else563:                                       ; preds = %sw.bb528
  %arrayidx565 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7
  %72 = load i32* %arrayidx565, align 4, !tbaa !0
  %arrayidx567 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom531
  %73 = load i32* %arrayidx567, align 4, !tbaa !0
  %cmp568 = icmp eq i32 %72, %73
  br i1 %cmp568, label %if.then569, label %sw.epilog840

if.then569:                                       ; preds = %if.else563
  %cmp570 = icmp slt i32 %68, %0
  br i1 %cmp570, label %for.cond573, label %for.cond586

for.cond573:                                      ; preds = %if.then569, %for.cond573
  %indvars.iv1347 = phi i64 [ %indvars.iv.next1348, %for.cond573 ], [ %idxprom531, %if.then569 ]
  %l.27.in = phi i32 [ %l.27, %for.cond573 ], [ %68, %if.then569 ]
  %indvars.iv.next1348 = add i64 %indvars.iv1347, 11
  %l.27 = add nsw i32 %l.27.in, 11
  %arrayidx575 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1348
  %74 = load i32* %arrayidx575, align 4, !tbaa !0
  %cmp576 = icmp eq i32 %74, 13
  br i1 %cmp576, label %for.cond573, label %for.end580

for.end580:                                       ; preds = %for.cond573
  %cmp581 = icmp eq i32 %l.27, %0
  br i1 %cmp581, label %return, label %sw.epilog840

for.cond586:                                      ; preds = %if.then569, %for.cond586
  %indvars.iv1349 = phi i64 [ %indvars.iv.next1350, %for.cond586 ], [ %idxprom531, %if.then569 ]
  %l.28.in = phi i32 [ %l.28, %for.cond586 ], [ %68, %if.then569 ]
  %indvars.iv.next1350 = add i64 %indvars.iv1349, -11
  %l.28 = add nsw i32 %l.28.in, -11
  %arrayidx588 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1350
  %75 = load i32* %arrayidx588, align 4, !tbaa !0
  %cmp589 = icmp eq i32 %75, 13
  br i1 %cmp589, label %for.cond586, label %for.end593

for.end593:                                       ; preds = %for.cond586
  %cmp594 = icmp eq i32 %l.28, %0
  br i1 %cmp594, label %return, label %sw.epilog840

sw.bb600:                                         ; preds = %if.else513
  %arrayidx602 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7
  %76 = load i32* %arrayidx602, align 4, !tbaa !0
  %77 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom603 = sext i32 %77 to i64
  %arrayidx604 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom603
  %78 = load i32* %arrayidx604, align 4, !tbaa !0
  %cmp605 = icmp eq i32 %76, %78
  br i1 %cmp605, label %if.then606, label %if.else635

if.then606:                                       ; preds = %sw.bb600
  %cmp607 = icmp slt i32 %77, %0
  br i1 %cmp607, label %for.cond610, label %for.cond623

for.cond610:                                      ; preds = %if.then606, %for.cond610
  %indvars.iv1351 = phi i64 [ %indvars.iv.next1352, %for.cond610 ], [ %idxprom603, %if.then606 ]
  %l.29.in = phi i32 [ %l.29, %for.cond610 ], [ %77, %if.then606 ]
  %indvars.iv.next1352 = add i64 %indvars.iv1351, 12
  %l.29 = add nsw i32 %l.29.in, 12
  %arrayidx612 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1352
  %79 = load i32* %arrayidx612, align 4, !tbaa !0
  %cmp613 = icmp eq i32 %79, 13
  br i1 %cmp613, label %for.cond610, label %for.end617

for.end617:                                       ; preds = %for.cond610
  %cmp618 = icmp eq i32 %l.29, %0
  br i1 %cmp618, label %return, label %sw.epilog840

for.cond623:                                      ; preds = %if.then606, %for.cond623
  %indvars.iv1353 = phi i64 [ %indvars.iv.next1354, %for.cond623 ], [ %idxprom603, %if.then606 ]
  %l.30.in = phi i32 [ %l.30, %for.cond623 ], [ %77, %if.then606 ]
  %indvars.iv.next1354 = add i64 %indvars.iv1353, -12
  %l.30 = add nsw i32 %l.30.in, -12
  %arrayidx625 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1354
  %80 = load i32* %arrayidx625, align 4, !tbaa !0
  %cmp626 = icmp eq i32 %80, 13
  br i1 %cmp626, label %for.cond623, label %for.end630

for.end630:                                       ; preds = %for.cond623
  %cmp631 = icmp eq i32 %l.30, %0
  br i1 %cmp631, label %return, label %sw.epilog840

if.else635:                                       ; preds = %sw.bb600
  %arrayidx637 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7
  %81 = load i32* %arrayidx637, align 4, !tbaa !0
  %arrayidx639 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom603
  %82 = load i32* %arrayidx639, align 4, !tbaa !0
  %cmp640 = icmp eq i32 %81, %82
  br i1 %cmp640, label %if.then641, label %sw.epilog840

if.then641:                                       ; preds = %if.else635
  %cmp642 = icmp slt i32 %77, %0
  br i1 %cmp642, label %for.cond645, label %for.cond658

for.cond645:                                      ; preds = %if.then641, %for.cond645
  %indvars.iv1355 = phi i64 [ %indvars.iv.next1356, %for.cond645 ], [ %idxprom603, %if.then641 ]
  %l.31.in = phi i32 [ %l.31, %for.cond645 ], [ %77, %if.then641 ]
  %indvars.iv.next1356 = add i64 %indvars.iv1355, 1
  %l.31 = add nsw i32 %l.31.in, 1
  %arrayidx647 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1356
  %83 = load i32* %arrayidx647, align 4, !tbaa !0
  %cmp648 = icmp eq i32 %83, 13
  br i1 %cmp648, label %for.cond645, label %for.end652

for.end652:                                       ; preds = %for.cond645
  %cmp653 = icmp eq i32 %l.31, %0
  br i1 %cmp653, label %return, label %sw.epilog840

for.cond658:                                      ; preds = %if.then641, %for.cond658
  %indvars.iv1357 = phi i64 [ %indvars.iv.next1358, %for.cond658 ], [ %idxprom603, %if.then641 ]
  %l.32.in = phi i32 [ %l.32, %for.cond658 ], [ %77, %if.then641 ]
  %indvars.iv.next1358 = add i64 %indvars.iv1357, -1
  %l.32 = add nsw i32 %l.32.in, -1
  %arrayidx660 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1358
  %84 = load i32* %arrayidx660, align 4, !tbaa !0
  %cmp661 = icmp eq i32 %84, 13
  br i1 %cmp661, label %for.cond658, label %for.end665

for.end665:                                       ; preds = %for.cond658
  %cmp666 = icmp eq i32 %l.32, %0
  br i1 %cmp666, label %return, label %sw.epilog840

for.cond673:                                      ; preds = %for.body675
  %85 = trunc i64 %indvars.iv.next1360 to i32
  %cmp674 = icmp slt i32 %85, 8
  br i1 %cmp674, label %for.body675, label %sw.epilog840

for.body675:                                      ; preds = %for.cond673.preheader, %for.cond673
  %indvars.iv1359 = phi i64 [ 0, %for.cond673.preheader ], [ %indvars.iv.next1360, %for.cond673 ]
  %arrayidx677 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv1359
  %86 = load i32* %arrayidx677, align 4, !tbaa !0
  %add678 = add nsw i32 %86, %64
  %cmp679 = icmp eq i32 %add678, %0
  %indvars.iv.next1360 = add i64 %indvars.iv1359, 1
  br i1 %cmp679, label %return, label %for.cond673

sw.bb685:                                         ; preds = %if.else513
  %arrayidx687 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom7
  %87 = load i32* %arrayidx687, align 4, !tbaa !0
  %88 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom688 = sext i32 %88 to i64
  %arrayidx689 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom688
  %89 = load i32* %arrayidx689, align 4, !tbaa !0
  %cmp690 = icmp eq i32 %87, %89
  br i1 %cmp690, label %if.then691, label %if.else720

if.then691:                                       ; preds = %sw.bb685
  %cmp692 = icmp slt i32 %88, %0
  br i1 %cmp692, label %for.cond695, label %for.cond708

for.cond695:                                      ; preds = %if.then691, %for.cond695
  %indvars.iv1361 = phi i64 [ %indvars.iv.next1362, %for.cond695 ], [ %idxprom688, %if.then691 ]
  %l.34.in = phi i32 [ %l.34, %for.cond695 ], [ %88, %if.then691 ]
  %indvars.iv.next1362 = add i64 %indvars.iv1361, 12
  %l.34 = add nsw i32 %l.34.in, 12
  %arrayidx697 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1362
  %90 = load i32* %arrayidx697, align 4, !tbaa !0
  %cmp698 = icmp eq i32 %90, 13
  br i1 %cmp698, label %for.cond695, label %for.end702

for.end702:                                       ; preds = %for.cond695
  %cmp703 = icmp eq i32 %l.34, %0
  br i1 %cmp703, label %return, label %sw.epilog840

for.cond708:                                      ; preds = %if.then691, %for.cond708
  %indvars.iv1363 = phi i64 [ %indvars.iv.next1364, %for.cond708 ], [ %idxprom688, %if.then691 ]
  %l.35.in = phi i32 [ %l.35, %for.cond708 ], [ %88, %if.then691 ]
  %indvars.iv.next1364 = add i64 %indvars.iv1363, -12
  %l.35 = add nsw i32 %l.35.in, -12
  %arrayidx710 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1364
  %91 = load i32* %arrayidx710, align 4, !tbaa !0
  %cmp711 = icmp eq i32 %91, 13
  br i1 %cmp711, label %for.cond708, label %for.end715

for.end715:                                       ; preds = %for.cond708
  %cmp716 = icmp eq i32 %l.35, %0
  br i1 %cmp716, label %return, label %sw.epilog840

if.else720:                                       ; preds = %sw.bb685
  %arrayidx722 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom7
  %92 = load i32* %arrayidx722, align 4, !tbaa !0
  %arrayidx724 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom688
  %93 = load i32* %arrayidx724, align 4, !tbaa !0
  %cmp725 = icmp eq i32 %92, %93
  br i1 %cmp725, label %if.then726, label %if.else755

if.then726:                                       ; preds = %if.else720
  %cmp727 = icmp slt i32 %88, %0
  br i1 %cmp727, label %for.cond730, label %for.cond743

for.cond730:                                      ; preds = %if.then726, %for.cond730
  %indvars.iv1365 = phi i64 [ %indvars.iv.next1366, %for.cond730 ], [ %idxprom688, %if.then726 ]
  %l.36.in = phi i32 [ %l.36, %for.cond730 ], [ %88, %if.then726 ]
  %indvars.iv.next1366 = add i64 %indvars.iv1365, 1
  %l.36 = add nsw i32 %l.36.in, 1
  %arrayidx732 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1366
  %94 = load i32* %arrayidx732, align 4, !tbaa !0
  %cmp733 = icmp eq i32 %94, 13
  br i1 %cmp733, label %for.cond730, label %for.end737

for.end737:                                       ; preds = %for.cond730
  %cmp738 = icmp eq i32 %l.36, %0
  br i1 %cmp738, label %return, label %sw.epilog840

for.cond743:                                      ; preds = %if.then726, %for.cond743
  %indvars.iv1367 = phi i64 [ %indvars.iv.next1368, %for.cond743 ], [ %idxprom688, %if.then726 ]
  %l.37.in = phi i32 [ %l.37, %for.cond743 ], [ %88, %if.then726 ]
  %indvars.iv.next1368 = add i64 %indvars.iv1367, -1
  %l.37 = add nsw i32 %l.37.in, -1
  %arrayidx745 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1368
  %95 = load i32* %arrayidx745, align 4, !tbaa !0
  %cmp746 = icmp eq i32 %95, 13
  br i1 %cmp746, label %for.cond743, label %for.end750

for.end750:                                       ; preds = %for.cond743
  %cmp751 = icmp eq i32 %l.37, %0
  br i1 %cmp751, label %return, label %sw.epilog840

if.else755:                                       ; preds = %if.else720
  %arrayidx757 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom7
  %96 = load i32* %arrayidx757, align 4, !tbaa !0
  %arrayidx759 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom688
  %97 = load i32* %arrayidx759, align 4, !tbaa !0
  %cmp760 = icmp eq i32 %96, %97
  br i1 %cmp760, label %if.then761, label %if.else790

if.then761:                                       ; preds = %if.else755
  %cmp762 = icmp slt i32 %88, %0
  br i1 %cmp762, label %for.cond765, label %for.cond778

for.cond765:                                      ; preds = %if.then761, %for.cond765
  %indvars.iv1369 = phi i64 [ %indvars.iv.next1370, %for.cond765 ], [ %idxprom688, %if.then761 ]
  %l.38.in = phi i32 [ %l.38, %for.cond765 ], [ %88, %if.then761 ]
  %indvars.iv.next1370 = add i64 %indvars.iv1369, 13
  %l.38 = add nsw i32 %l.38.in, 13
  %arrayidx767 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1370
  %98 = load i32* %arrayidx767, align 4, !tbaa !0
  %cmp768 = icmp eq i32 %98, 13
  br i1 %cmp768, label %for.cond765, label %for.end772

for.end772:                                       ; preds = %for.cond765
  %cmp773 = icmp eq i32 %l.38, %0
  br i1 %cmp773, label %return, label %sw.epilog840

for.cond778:                                      ; preds = %if.then761, %for.cond778
  %indvars.iv1371 = phi i64 [ %indvars.iv.next1372, %for.cond778 ], [ %idxprom688, %if.then761 ]
  %l.39.in = phi i32 [ %l.39, %for.cond778 ], [ %88, %if.then761 ]
  %indvars.iv.next1372 = add i64 %indvars.iv1371, -13
  %l.39 = add nsw i32 %l.39.in, -13
  %arrayidx780 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1372
  %99 = load i32* %arrayidx780, align 4, !tbaa !0
  %cmp781 = icmp eq i32 %99, 13
  br i1 %cmp781, label %for.cond778, label %for.end785

for.end785:                                       ; preds = %for.cond778
  %cmp786 = icmp eq i32 %l.39, %0
  br i1 %cmp786, label %return, label %sw.epilog840

if.else790:                                       ; preds = %if.else755
  %arrayidx792 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom7
  %100 = load i32* %arrayidx792, align 4, !tbaa !0
  %arrayidx794 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom688
  %101 = load i32* %arrayidx794, align 4, !tbaa !0
  %cmp795 = icmp eq i32 %100, %101
  br i1 %cmp795, label %if.then796, label %sw.epilog840

if.then796:                                       ; preds = %if.else790
  %cmp797 = icmp slt i32 %88, %0
  br i1 %cmp797, label %for.cond800, label %for.cond813

for.cond800:                                      ; preds = %if.then796, %for.cond800
  %indvars.iv1373 = phi i64 [ %indvars.iv.next1374, %for.cond800 ], [ %idxprom688, %if.then796 ]
  %l.40.in = phi i32 [ %l.40, %for.cond800 ], [ %88, %if.then796 ]
  %indvars.iv.next1374 = add i64 %indvars.iv1373, 11
  %l.40 = add nsw i32 %l.40.in, 11
  %arrayidx802 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1374
  %102 = load i32* %arrayidx802, align 4, !tbaa !0
  %cmp803 = icmp eq i32 %102, 13
  br i1 %cmp803, label %for.cond800, label %for.end807

for.end807:                                       ; preds = %for.cond800
  %cmp808 = icmp eq i32 %l.40, %0
  br i1 %cmp808, label %return, label %sw.epilog840

for.cond813:                                      ; preds = %if.then796, %for.cond813
  %indvars.iv1375 = phi i64 [ %indvars.iv.next1376, %for.cond813 ], [ %idxprom688, %if.then796 ]
  %l.41.in = phi i32 [ %l.41, %for.cond813 ], [ %88, %if.then796 ]
  %indvars.iv.next1376 = add i64 %indvars.iv1375, -11
  %l.41 = add nsw i32 %l.41.in, -11
  %arrayidx815 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1376
  %103 = load i32* %arrayidx815, align 4, !tbaa !0
  %cmp816 = icmp eq i32 %103, 13
  br i1 %cmp816, label %for.cond813, label %for.end820

for.end820:                                       ; preds = %for.cond813
  %cmp821 = icmp eq i32 %l.41, %0
  br i1 %cmp821, label %return, label %sw.epilog840

sw.bb829:                                         ; preds = %if.else513
  %castled832 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4
  %104 = load i32* %castled832, align 4, !tbaa !0
  %tobool833 = icmp eq i32 %104, 0
  br i1 %tobool833, label %sw.epilog840, label %if.then834

if.then834:                                       ; preds = %sw.bb829
  %105 = load i32* @bking_loc, align 4, !tbaa !0
  %call835 = tail call i32 @is_attacked(i32 %105, i32 1) #2
  %not.tobool836 = icmp ne i32 %call835, 0
  %.1245 = zext i1 %not.tobool836 to i32
  br label %return

sw.epilog840:                                     ; preds = %for.cond673, %sw.bb829, %for.end715, %for.end702, %for.end785, %for.end772, %for.end807, %for.end820, %if.else790, %for.end737, %for.end750, %for.end630, %for.end617, %for.end652, %for.end665, %if.else635, %for.end558, %for.end545, %for.end580, %for.end593, %if.else563, %lor.lhs.false521, %if.else513
  %cmp841 = icmp eq i32 %1, 0
  br i1 %cmp841, label %return, label %if.end843

if.end843:                                        ; preds = %sw.epilog840
  %idxprom844 = sext i32 %1 to i64
  %arrayidx845 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom844
  %106 = load i32* %arrayidx845, align 4, !tbaa !0
  %107 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom846 = sext i32 %107 to i64
  %arrayidx847 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %idxprom846
  %108 = load i32* %arrayidx847, align 4, !tbaa !0
  %cmp848 = icmp eq i32 %106, %108
  br i1 %cmp848, label %if.then849, label %if.else890

if.then849:                                       ; preds = %if.end843
  %cmp850 = icmp sgt i32 %107, %1
  br i1 %cmp850, label %for.cond853, label %for.cond872

for.cond853:                                      ; preds = %if.then849, %for.cond853
  %indvars.iv1327 = phi i64 [ %indvars.iv.next1328, %for.cond853 ], [ %idxprom846, %if.then849 ]
  %indvars.iv.next1328 = add i64 %indvars.iv1327, -1
  %arrayidx855 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1328
  %109 = load i32* %arrayidx855, align 4, !tbaa !0
  switch i32 %109, label %return [
    i32 13, label %for.cond853
    i32 7, label %return.loopexit1262
    i32 9, label %return.loopexit1262
  ]

for.cond872:                                      ; preds = %if.then849, %for.cond872
  %indvars.iv1329 = phi i64 [ %indvars.iv.next1330, %for.cond872 ], [ %idxprom846, %if.then849 ]
  %indvars.iv.next1330 = add i64 %indvars.iv1329, 1
  %arrayidx874 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1330
  %110 = load i32* %arrayidx874, align 4, !tbaa !0
  switch i32 %110, label %return [
    i32 13, label %for.cond872
    i32 7, label %return.loopexit1264
    i32 9, label %return.loopexit1264
  ]

if.else890:                                       ; preds = %if.end843
  %arrayidx892 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom844
  %111 = load i32* %arrayidx892, align 4, !tbaa !0
  %arrayidx894 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %idxprom846
  %112 = load i32* %arrayidx894, align 4, !tbaa !0
  %cmp895 = icmp eq i32 %111, %112
  br i1 %cmp895, label %if.then896, label %if.else937

if.then896:                                       ; preds = %if.else890
  %cmp897 = icmp sgt i32 %107, %1
  br i1 %cmp897, label %for.cond900, label %for.cond919

for.cond900:                                      ; preds = %if.then896, %for.cond900
  %indvars.iv1331 = phi i64 [ %indvars.iv.next1332, %for.cond900 ], [ %idxprom846, %if.then896 ]
  %indvars.iv.next1332 = add i64 %indvars.iv1331, -12
  %arrayidx902 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1332
  %113 = load i32* %arrayidx902, align 4, !tbaa !0
  switch i32 %113, label %return [
    i32 13, label %for.cond900
    i32 7, label %return.loopexit1266
    i32 9, label %return.loopexit1266
  ]

for.cond919:                                      ; preds = %if.then896, %for.cond919
  %indvars.iv1333 = phi i64 [ %indvars.iv.next1334, %for.cond919 ], [ %idxprom846, %if.then896 ]
  %indvars.iv.next1334 = add i64 %indvars.iv1333, 12
  %arrayidx921 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1334
  %114 = load i32* %arrayidx921, align 4, !tbaa !0
  switch i32 %114, label %return [
    i32 13, label %for.cond919
    i32 7, label %return.loopexit1268
    i32 9, label %return.loopexit1268
  ]

if.else937:                                       ; preds = %if.else890
  %arrayidx939 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom844
  %115 = load i32* %arrayidx939, align 4, !tbaa !0
  %arrayidx941 = getelementptr inbounds [144 x i32]* @Xdiagl, i64 0, i64 %idxprom846
  %116 = load i32* %arrayidx941, align 4, !tbaa !0
  %cmp942 = icmp eq i32 %115, %116
  br i1 %cmp942, label %if.then943, label %if.else984

if.then943:                                       ; preds = %if.else937
  %cmp944 = icmp sgt i32 %107, %1
  br i1 %cmp944, label %for.cond947, label %for.cond966

for.cond947:                                      ; preds = %if.then943, %for.cond947
  %indvars.iv1335 = phi i64 [ %indvars.iv.next1336, %for.cond947 ], [ %idxprom846, %if.then943 ]
  %indvars.iv.next1336 = add i64 %indvars.iv1335, -13
  %arrayidx949 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1336
  %117 = load i32* %arrayidx949, align 4, !tbaa !0
  switch i32 %117, label %return [
    i32 13, label %for.cond947
    i32 11, label %return.loopexit1270
    i32 9, label %return.loopexit1270
  ]

for.cond966:                                      ; preds = %if.then943, %for.cond966
  %indvars.iv1337 = phi i64 [ %indvars.iv.next1338, %for.cond966 ], [ %idxprom846, %if.then943 ]
  %indvars.iv.next1338 = add i64 %indvars.iv1337, 13
  %arrayidx968 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1338
  %118 = load i32* %arrayidx968, align 4, !tbaa !0
  switch i32 %118, label %return [
    i32 13, label %for.cond966
    i32 11, label %return.loopexit1272
    i32 9, label %return.loopexit1272
  ]

if.else984:                                       ; preds = %if.else937
  %arrayidx986 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom844
  %119 = load i32* %arrayidx986, align 4, !tbaa !0
  %arrayidx988 = getelementptr inbounds [144 x i32]* @Xdiagr, i64 0, i64 %idxprom846
  %120 = load i32* %arrayidx988, align 4, !tbaa !0
  %cmp989 = icmp eq i32 %119, %120
  br i1 %cmp989, label %if.then990, label %return

if.then990:                                       ; preds = %if.else984
  %cmp991 = icmp sgt i32 %107, %1
  br i1 %cmp991, label %for.cond994, label %for.cond1013

for.cond994:                                      ; preds = %if.then990, %for.cond994
  %indvars.iv1339 = phi i64 [ %indvars.iv.next1340, %for.cond994 ], [ %idxprom846, %if.then990 ]
  %indvars.iv.next1340 = add i64 %indvars.iv1339, -11
  %arrayidx996 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1340
  %121 = load i32* %arrayidx996, align 4, !tbaa !0
  switch i32 %121, label %return [
    i32 13, label %for.cond994
    i32 11, label %return.loopexit1274
    i32 9, label %return.loopexit1274
  ]

for.cond1013:                                     ; preds = %if.then990, %for.cond1013
  %indvars.iv1341 = phi i64 [ %indvars.iv.next1342, %for.cond1013 ], [ %idxprom846, %if.then990 ]
  %indvars.iv.next1342 = add i64 %indvars.iv1341, 11
  %arrayidx1015 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %indvars.iv.next1342
  %122 = load i32* %arrayidx1015, align 4, !tbaa !0
  switch i32 %122, label %return [
    i32 13, label %for.cond1013
    i32 11, label %return.loopexit1276
    i32 9, label %return.loopexit1276
  ]

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
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @extended_in_check() #0 {
entry:
  %0 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else81

if.then2:                                         ; preds = %if.end
  %2 = load i32* @wking_loc, align 4, !tbaa !0
  %sub = add nsw i32 %2, -12
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %4 = and i32 %3, -3
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %return, label %if.end6

if.end6:                                          ; preds = %if.then2
  %sub7 = add nsw i32 %2, -1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom8
  %6 = load i32* %arrayidx9, align 4, !tbaa !0
  %7 = and i32 %6, -3
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %return, label %if.end14

if.end14:                                         ; preds = %if.end6
  %add = add nsw i32 %2, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom15
  %9 = load i32* %arrayidx16, align 4, !tbaa !0
  %10 = and i32 %9, -3
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %return, label %if.end21

if.end21:                                         ; preds = %if.end14
  %add22 = add nsw i32 %2, 12
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom23
  %12 = load i32* %arrayidx24, align 4, !tbaa !0
  %13 = and i32 %12, -3
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %return, label %if.end29

if.end29:                                         ; preds = %if.end21
  %add30 = add nsw i32 %2, 13
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom31
  %15 = load i32* %arrayidx32, align 4, !tbaa !0
  switch i32 %15, label %if.end39 [
    i32 12, label %return
    i32 10, label %return
    i32 2, label %return
  ]

if.end39:                                         ; preds = %if.end29
  %add40 = add nsw i32 %2, 11
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom41
  %16 = load i32* %arrayidx42, align 4, !tbaa !0
  switch i32 %16, label %if.end49 [
    i32 12, label %return
    i32 10, label %return
    i32 2, label %return
  ]

if.end49:                                         ; preds = %if.end39
  %sub50 = add nsw i32 %2, -11
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom51
  %17 = load i32* %arrayidx52, align 4, !tbaa !0
  switch i32 %17, label %if.end57 [
    i32 12, label %return
    i32 10, label %return
  ]

if.end57:                                         ; preds = %if.end49
  %sub58 = add nsw i32 %2, -13
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom59
  %18 = load i32* %arrayidx60, align 4, !tbaa !0
  switch i32 %18, label %for.body [
    i32 12, label %return
    i32 10, label %return
  ]

for.cond:                                         ; preds = %for.body
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp66 = icmp slt i32 %19, 8
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %if.end57, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end57 ]
  %arrayidx68 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv
  %20 = load i32* %arrayidx68, align 4, !tbaa !0
  %add69 = add nsw i32 %20, %2
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom70
  %21 = load i32* %arrayidx71, align 4, !tbaa !0
  %cmp72 = icmp eq i32 %21, 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp72, label %return, label %for.cond

for.end:                                          ; preds = %for.cond
  %call = tail call i32 @is_attacked(i32 %2, i32 0) #2
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.then75

if.then75:                                        ; preds = %for.end
  %22 = load i32* @Variant, align 4, !tbaa !0
  switch i32 %22, label %if.else [
    i32 4, label %return
    i32 2, label %return
  ]

if.else:                                          ; preds = %if.then75
  br label %return

if.else81:                                        ; preds = %if.end
  %23 = load i32* @bking_loc, align 4, !tbaa !0
  %sub82 = add nsw i32 %23, -12
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom83
  %24 = load i32* %arrayidx84, align 4, !tbaa !0
  switch i32 %24, label %if.end89 [
    i32 9, label %return
    i32 7, label %return
  ]

if.end89:                                         ; preds = %if.else81
  %sub90 = add nsw i32 %23, -1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom91
  %25 = load i32* %arrayidx92, align 4, !tbaa !0
  switch i32 %25, label %if.end97 [
    i32 9, label %return
    i32 7, label %return
  ]

if.end97:                                         ; preds = %if.end89
  %add98 = add nsw i32 %23, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom99
  %26 = load i32* %arrayidx100, align 4, !tbaa !0
  switch i32 %26, label %if.end105 [
    i32 9, label %return
    i32 7, label %return
  ]

if.end105:                                        ; preds = %if.end97
  %add106 = add nsw i32 %23, 12
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom107
  %27 = load i32* %arrayidx108, align 4, !tbaa !0
  switch i32 %27, label %if.end113 [
    i32 9, label %return
    i32 7, label %return
  ]

if.end113:                                        ; preds = %if.end105
  %sub114 = add nsw i32 %23, -13
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom115
  %28 = load i32* %arrayidx116, align 4, !tbaa !0
  %29 = and i32 %28, -3
  %30 = icmp eq i32 %29, 9
  %cmp121 = icmp eq i32 %28, 1
  %or.cond189 = or i1 %30, %cmp121
  br i1 %or.cond189, label %return, label %if.end123

if.end123:                                        ; preds = %if.end113
  %sub124 = add nsw i32 %23, -11
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom125
  %31 = load i32* %arrayidx126, align 4, !tbaa !0
  %32 = and i32 %31, -3
  %33 = icmp eq i32 %32, 9
  %cmp131 = icmp eq i32 %31, 1
  %or.cond191 = or i1 %33, %cmp131
  br i1 %or.cond191, label %return, label %if.end133

if.end133:                                        ; preds = %if.end123
  %add134 = add nsw i32 %23, 11
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom135
  %34 = load i32* %arrayidx136, align 4, !tbaa !0
  %35 = and i32 %34, -3
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %return, label %if.end141

if.end141:                                        ; preds = %if.end133
  %add142 = add nsw i32 %23, 13
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom143
  %37 = load i32* %arrayidx144, align 4, !tbaa !0
  %38 = and i32 %37, -3
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %return, label %for.body152

for.cond150:                                      ; preds = %for.body152
  %40 = trunc i64 %indvars.iv.next243 to i32
  %cmp151 = icmp slt i32 %40, 8
  br i1 %cmp151, label %for.body152, label %for.end163

for.body152:                                      ; preds = %if.end141, %for.cond150
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %for.cond150 ], [ 0, %if.end141 ]
  %arrayidx154 = getelementptr inbounds [8 x i32]* @extended_in_check.knight_o, i64 0, i64 %indvars.iv242
  %41 = load i32* %arrayidx154, align 4, !tbaa !0
  %add155 = add nsw i32 %41, %23
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom156
  %42 = load i32* %arrayidx157, align 4, !tbaa !0
  %cmp158 = icmp eq i32 %42, 3
  %indvars.iv.next243 = add i64 %indvars.iv242, 1
  br i1 %cmp158, label %return, label %for.cond150

for.end163:                                       ; preds = %for.cond150
  %call164 = tail call i32 @is_attacked(i32 %23, i32 1) #2
  %tobool165 = icmp eq i32 %call164, 0
  br i1 %tobool165, label %return, label %if.then166

if.then166:                                       ; preds = %for.end163
  %43 = load i32* @Variant, align 4, !tbaa !0
  switch i32 %43, label %if.else171 [
    i32 4, label %return
    i32 2, label %return
  ]

if.else171:                                       ; preds = %if.then166
  br label %return

return:                                           ; preds = %for.body152, %for.body, %for.end163, %for.end, %if.then166, %if.then166, %if.end141, %if.end133, %if.end123, %if.end113, %if.end105, %if.end105, %if.end97, %if.end97, %if.end89, %if.end89, %if.else81, %if.else81, %if.then75, %if.then75, %if.end57, %if.end57, %if.end49, %if.end49, %if.end39, %if.end39, %if.end39, %if.end29, %if.end29, %if.end29, %if.end21, %if.end14, %if.end6, %if.then2, %entry, %if.else171, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 1, %if.else171 ], [ 0, %entry ], [ 2, %if.then2 ], [ 2, %if.end6 ], [ 2, %if.end14 ], [ 2, %if.end21 ], [ 2, %if.end29 ], [ 2, %if.end29 ], [ 2, %if.end29 ], [ 2, %if.end39 ], [ 2, %if.end39 ], [ 2, %if.end39 ], [ 2, %if.end49 ], [ 2, %if.end49 ], [ 2, %if.end57 ], [ 2, %if.end57 ], [ 2, %if.then75 ], [ 2, %if.then75 ], [ 2, %if.else81 ], [ 2, %if.else81 ], [ 2, %if.end89 ], [ 2, %if.end89 ], [ 2, %if.end97 ], [ 2, %if.end97 ], [ 2, %if.end105 ], [ 2, %if.end105 ], [ 2, %if.end113 ], [ 2, %if.end123 ], [ 2, %if.end133 ], [ 2, %if.end141 ], [ 2, %if.then166 ], [ 2, %if.then166 ], [ 0, %for.end ], [ 0, %for.end163 ], [ 2, %for.body ], [ 2, %for.body152 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @make(%struct.move_s* nocapture %moves, i32 %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %ep1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 5
  %0 = load i32* %ep1, align 4, !tbaa !0
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0
  %1 = load i32* %from4, align 4, !tbaa !0
  %target7 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1
  %2 = load i32* %target7, align 4, !tbaa !0
  %promoted13 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3
  %3 = load i32* %promoted13, align 4, !tbaa !0
  %castled16 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4
  %4 = load i32* %castled16, align 4, !tbaa !0
  %5 = load i32* @ep_square, align 4, !tbaa !0
  %6 = load i32* @ply, align 4, !tbaa !0
  %idxprom17 = sext i32 %6 to i64
  %epsq = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 2
  store i32 %5, i32* %epsq, align 4, !tbaa !0
  store i32 0, i32* @ep_square, align 4, !tbaa !0
  %7 = load i32* @fifty, align 4, !tbaa !0
  %fifty = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 3
  store i32 %7, i32* %fifty, align 4, !tbaa !0
  %idxprom21 = sext i32 %1 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21
  %8 = load i32* %arrayidx22, align 4, !tbaa !0
  %.off = add i32 %8, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %entry
  %idxprom27 = sext i32 %2 to i64
  %arrayidx28 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom27
  %9 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %9, 13
  %inc = add nsw i32 %7, 1
  %inc. = select i1 %cmp29, i32 %inc, i32 0
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false26, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc., %lor.lhs.false26 ]
  store i32 %storemerge, i32* @fifty, align 4, !tbaa !0
  %cmp30 = icmp eq i32 %1, 0
  br i1 %cmp30, label %if.then31, label %if.else57

if.then31:                                        ; preds = %if.end
  %10 = load i32* @piece_count, align 4, !tbaa !0
  %inc32 = add nsw i32 %10, 1
  store i32 %inc32, i32* @piece_count, align 4, !tbaa !0
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then31
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %if.then31 ]
  %find_slot.0 = phi i32 [ %inc36, %for.cond ], [ 1, %if.then31 ]
  %arrayidx34 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %11 = load i32* %arrayidx34, align 4, !tbaa !0
  %cmp35 = icmp eq i32 %11, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc36 = add nsw i32 %find_slot.0, 1
  br i1 %cmp35, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 %2, i32* %arrayidx34, align 4, !tbaa !0
  %arrayidx40 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %indvars.iv
  %12 = load i32* %arrayidx40, align 4, !tbaa !0
  %was_promoted = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 1
  store i32 %12, i32* %was_promoted, align 4, !tbaa !0
  store i32 0, i32* %arrayidx40, align 4, !tbaa !0
  %idxprom45 = sext i32 %2 to i64
  %arrayidx46 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom45
  store i32 %find_slot.0, i32* %arrayidx46, align 4, !tbaa !0
  %13 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool = icmp eq i32 %13, 0
  %cond = zext i1 %not.tobool to i32
  tail call void @DropremoveHolding(i32 %3, i32 %cond) #2
  %idxprom47 = sext i32 %3 to i64
  %arrayidx48 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom47
  %14 = load i32* %arrayidx48, align 4, !tbaa !0
  %15 = load i32* @Material, align 4, !tbaa !0
  %add = add nsw i32 %15, %14
  store i32 %add, i32* @Material, align 4, !tbaa !0
  %arrayidx50 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 %3, i32* %arrayidx50, align 4, !tbaa !0
  %arrayidx54 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom47, i64 %idxprom45
  %16 = load i32* %arrayidx54, align 4, !tbaa !0
  %17 = load i32* @hash, align 4, !tbaa !0
  %xor = xor i32 %17, %16
  store i32 %xor, i32* @hash, align 4, !tbaa !0
  %18 = load i32* @white_to_move, align 4, !tbaa !0
  %xor55 = xor i32 %18, 1
  store i32 %xor55, i32* @white_to_move, align 4, !tbaa !0
  %19 = load i32* @ply, align 4, !tbaa !0
  %inc56 = add nsw i32 %19, 1
  store i32 %inc56, i32* @ply, align 4, !tbaa !0
  br label %return

if.else57:                                        ; preds = %if.end
  %idxprom58 = sext i32 %2 to i64
  %arrayidx59 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom58
  %20 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom60 = sext i32 %20 to i64
  %arrayidx61 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom60
  %21 = load i32* %arrayidx61, align 4, !tbaa !0
  %was_promoted64 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 1
  store i32 %21, i32* %was_promoted64, align 4, !tbaa !0
  %cap_num = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 0
  store i32 %20, i32* %cap_num, align 4, !tbaa !0
  %arrayidx72 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom60
  store i32 0, i32* %arrayidx72, align 4, !tbaa !0
  %arrayidx74 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom21
  %22 = load i32* %arrayidx74, align 4, !tbaa !0
  %idxprom75 = sext i32 %22 to i64
  %arrayidx76 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom75
  store i32 %2, i32* %arrayidx76, align 4, !tbaa !0
  store i32 %22, i32* %arrayidx59, align 4, !tbaa !0
  store i32 0, i32* %arrayidx74, align 4, !tbaa !0
  %tobool83 = icmp ne i32 %0, 0
  br i1 %tobool83, label %if.end119, label %if.then84

if.then84:                                        ; preds = %if.else57
  %arrayidx86 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  %23 = load i32* %arrayidx86, align 4, !tbaa !0
  %cond454 = icmp eq i32 %23, 13
  br i1 %cond454, label %if.end119, label %sw.default

sw.default:                                       ; preds = %if.then84
  %24 = load i32* @Variant, align 4, !tbaa !0
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %if.then90, label %if.end107

if.then90:                                        ; preds = %sw.default
  %tobool94 = icmp eq i32 %21, 0
  br i1 %tobool94, label %if.else100, label %if.then95

if.then95:                                        ; preds = %if.then90
  %call = tail call i32 @SwitchPromoted(i32 %23) #2
  %26 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool98 = icmp eq i32 %26, 0
  %cond99 = zext i1 %not.tobool98 to i32
  tail call void @addHolding(i32 %call, i32 %cond99) #2
  br label %if.end107

if.else100:                                       ; preds = %if.then90
  %call103 = tail call i32 @SwitchColor(i32 %23) #2
  %27 = load i32* @white_to_move, align 4, !tbaa !0
  %not.tobool104 = icmp eq i32 %27, 0
  %cond105 = zext i1 %not.tobool104 to i32
  tail call void @addHolding(i32 %call103, i32 %cond105) #2
  br label %if.end107

if.end107:                                        ; preds = %if.then95, %if.else100, %sw.default
  %28 = load i32* %arrayidx86, align 4, !tbaa !0
  %idxprom110 = sext i32 %28 to i64
  %arrayidx111 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom110
  %29 = load i32* %arrayidx111, align 4, !tbaa !0
  %30 = load i32* @Material, align 4, !tbaa !0
  %sub = sub nsw i32 %30, %29
  store i32 %sub, i32* @Material, align 4, !tbaa !0
  %arrayidx117 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom110, i64 %idxprom58
  %31 = load i32* %arrayidx117, align 4, !tbaa !0
  %32 = load i32* @hash, align 4, !tbaa !0
  %xor118 = xor i32 %32, %31
  store i32 %xor118, i32* @hash, align 4, !tbaa !0
  %33 = load i32* @piece_count, align 4, !tbaa !0
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* @piece_count, align 4, !tbaa !0
  %.pre = load i32* %arrayidx22, align 4, !tbaa !0
  br label %if.end119

if.end119:                                        ; preds = %if.end107, %if.then84, %if.else57
  %34 = phi i32 [ %.pre, %if.end107 ], [ %8, %if.then84 ], [ %8, %if.else57 ]
  switch i32 %34, label %if.then340 [
    i32 1, label %if.then123
    i32 2, label %if.then230
    i32 5, label %if.then373
    i32 6, label %if.else413
  ]

if.then123:                                       ; preds = %if.end119
  %tobool124 = icmp eq i32 %3, 0
  br i1 %tobool124, label %if.end154, label %if.then125

if.then125:                                       ; preds = %if.then123
  %arrayidx127 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 %3, i32* %arrayidx127, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx131 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %35 = load i32* %arrayidx131, align 4, !tbaa !0
  %inc132 = add nsw i32 %35, 1
  store i32 %inc132, i32* %arrayidx131, align 4, !tbaa !0
  %arrayidx134 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %36 = load i32* %arrayidx134, align 4, !tbaa !0
  %inc135 = add nsw i32 %36, 1
  store i32 %inc135, i32* %arrayidx134, align 4, !tbaa !0
  %37 = load i32* @white_to_move, align 4, !tbaa !0
  %xor136 = xor i32 %37, 1
  store i32 %xor136, i32* @white_to_move, align 4, !tbaa !0
  %38 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom139 = sext i32 %38 to i64
  %arrayidx140 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom139
  store i32 1, i32* %arrayidx140, align 4, !tbaa !0
  %arrayidx142 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21
  %39 = load i32* %arrayidx142, align 4, !tbaa !0
  %40 = load i32* @hash, align 4, !tbaa !0
  %xor143 = xor i32 %40, %39
  %idxprom145 = sext i32 %3 to i64
  %arrayidx147 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom145, i64 %idxprom58
  %41 = load i32* %arrayidx147, align 4, !tbaa !0
  %xor148 = xor i32 %xor143, %41
  store i32 %xor148, i32* @hash, align 4, !tbaa !0
  %42 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !tbaa !0
  %43 = load i32* @Material, align 4, !tbaa !0
  %sub149 = sub nsw i32 %43, %42
  %arrayidx151 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom145
  %44 = load i32* %arrayidx151, align 4, !tbaa !0
  %add152 = add nsw i32 %sub149, %44
  store i32 %add152, i32* @Material, align 4, !tbaa !0
  %45 = load i32* @ply, align 4, !tbaa !0
  %inc153 = add nsw i32 %45, 1
  store i32 %inc153, i32* @ply, align 4, !tbaa !0
  br label %return

if.end154:                                        ; preds = %if.then123
  br i1 %tobool83, label %if.then156, label %if.end202

if.then156:                                       ; preds = %if.end154
  %arrayidx158 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21
  %46 = load i32* %arrayidx158, align 4, !tbaa !0
  %47 = load i32* @hash, align 4, !tbaa !0
  %xor159 = xor i32 %47, %46
  %sub160 = add nsw i32 %2, -12
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom161
  %48 = load i32* %arrayidx162, align 4, !tbaa !0
  %xor163 = xor i32 %xor159, %48
  %arrayidx165 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom58
  %49 = load i32* %arrayidx165, align 4, !tbaa !0
  %xor166 = xor i32 %xor163, %49
  store i32 %xor166, i32* @hash, align 4, !tbaa !0
  %50 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !tbaa !0
  %51 = load i32* @Material, align 4, !tbaa !0
  %sub167 = sub nsw i32 %51, %50
  store i32 %sub167, i32* @Material, align 4, !tbaa !0
  %arrayidx169 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 1, i32* %arrayidx169, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  tail call void @addHolding(i32 1, i32 0) #2
  %52 = load i32* @piece_count, align 4, !tbaa !0
  %dec172 = add nsw i32 %52, -1
  store i32 %dec172, i32* @piece_count, align 4, !tbaa !0
  %arrayidx175 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom161
  store i32 13, i32* %arrayidx175, align 4, !tbaa !0
  %arrayidx177 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %53 = load i32* %arrayidx177, align 4, !tbaa !0
  %inc178 = add nsw i32 %53, 1
  store i32 %inc178, i32* %arrayidx177, align 4, !tbaa !0
  %arrayidx180 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %54 = load i32* %arrayidx180, align 4, !tbaa !0
  %inc181 = add nsw i32 %54, 1
  store i32 %inc181, i32* %arrayidx180, align 4, !tbaa !0
  %arrayidx184 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom161
  %55 = load i32* %arrayidx184, align 4, !tbaa !0
  %inc185 = add nsw i32 %55, 1
  store i32 %inc185, i32* %arrayidx184, align 4, !tbaa !0
  %56 = load i32* @white_to_move, align 4, !tbaa !0
  %xor186 = xor i32 %56, 1
  store i32 %xor186, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx189 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom161
  %57 = load i32* %arrayidx189, align 4, !tbaa !0
  %58 = load i32* @ply, align 4, !tbaa !0
  %idxprom190 = sext i32 %58 to i64
  %cap_num192 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom190, i32 0
  store i32 %57, i32* %cap_num192, align 4, !tbaa !0
  %idxprom196 = sext i32 %57 to i64
  %arrayidx197 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom196
  store i32 0, i32* %arrayidx197, align 4, !tbaa !0
  store i32 0, i32* %arrayidx189, align 4, !tbaa !0
  %inc201 = add nsw i32 %58, 1
  store i32 %inc201, i32* @ply, align 4, !tbaa !0
  br label %return

if.end202:                                        ; preds = %if.end154
  %add203 = add nsw i32 %1, 24
  %cmp204 = icmp eq i32 %2, %add203
  br i1 %cmp204, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.end202
  %add206 = add nsw i32 %1, 12
  store i32 %add206, i32* @ep_square, align 4, !tbaa !0
  br label %if.end207

if.end207:                                        ; preds = %if.end202, %if.then205
  %arrayidx209 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21
  %59 = load i32* %arrayidx209, align 4, !tbaa !0
  %60 = load i32* @hash, align 4, !tbaa !0
  %xor210 = xor i32 %60, %59
  %arrayidx212 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom58
  %61 = load i32* %arrayidx212, align 4, !tbaa !0
  %xor213 = xor i32 %xor210, %61
  store i32 %xor213, i32* @hash, align 4, !tbaa !0
  %arrayidx215 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 1, i32* %arrayidx215, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx219 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %62 = load i32* %arrayidx219, align 4, !tbaa !0
  %inc220 = add nsw i32 %62, 1
  store i32 %inc220, i32* %arrayidx219, align 4, !tbaa !0
  %arrayidx222 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %63 = load i32* %arrayidx222, align 4, !tbaa !0
  %inc223 = add nsw i32 %63, 1
  store i32 %inc223, i32* %arrayidx222, align 4, !tbaa !0
  %64 = load i32* @white_to_move, align 4, !tbaa !0
  %xor224 = xor i32 %64, 1
  store i32 %xor224, i32* @white_to_move, align 4, !tbaa !0
  %65 = load i32* @ply, align 4, !tbaa !0
  %inc225 = add nsw i32 %65, 1
  store i32 %inc225, i32* @ply, align 4, !tbaa !0
  br label %return

if.then230:                                       ; preds = %if.end119
  %tobool231 = icmp eq i32 %3, 0
  br i1 %tobool231, label %if.end261, label %if.then232

if.then232:                                       ; preds = %if.then230
  %arrayidx234 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 %3, i32* %arrayidx234, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx238 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %66 = load i32* %arrayidx238, align 4, !tbaa !0
  %inc239 = add nsw i32 %66, 1
  store i32 %inc239, i32* %arrayidx238, align 4, !tbaa !0
  %arrayidx241 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %67 = load i32* %arrayidx241, align 4, !tbaa !0
  %inc242 = add nsw i32 %67, 1
  store i32 %inc242, i32* %arrayidx241, align 4, !tbaa !0
  %68 = load i32* @white_to_move, align 4, !tbaa !0
  %xor243 = xor i32 %68, 1
  store i32 %xor243, i32* @white_to_move, align 4, !tbaa !0
  %69 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom246 = sext i32 %69 to i64
  %arrayidx247 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom246
  store i32 1, i32* %arrayidx247, align 4, !tbaa !0
  %arrayidx249 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21
  %70 = load i32* %arrayidx249, align 4, !tbaa !0
  %71 = load i32* @hash, align 4, !tbaa !0
  %xor250 = xor i32 %71, %70
  %idxprom252 = sext i32 %3 to i64
  %arrayidx254 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom252, i64 %idxprom58
  %72 = load i32* %arrayidx254, align 4, !tbaa !0
  %xor255 = xor i32 %xor250, %72
  store i32 %xor255, i32* @hash, align 4, !tbaa !0
  %73 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !tbaa !0
  %74 = load i32* @Material, align 4, !tbaa !0
  %sub256 = sub nsw i32 %74, %73
  %arrayidx258 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom252
  %75 = load i32* %arrayidx258, align 4, !tbaa !0
  %add259 = add nsw i32 %sub256, %75
  store i32 %add259, i32* @Material, align 4, !tbaa !0
  %76 = load i32* @ply, align 4, !tbaa !0
  %inc260 = add nsw i32 %76, 1
  store i32 %inc260, i32* @ply, align 4, !tbaa !0
  br label %return

if.end261:                                        ; preds = %if.then230
  br i1 %tobool83, label %if.then263, label %if.end309

if.then263:                                       ; preds = %if.end261
  %arrayidx265 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21
  %77 = load i32* %arrayidx265, align 4, !tbaa !0
  %78 = load i32* @hash, align 4, !tbaa !0
  %xor266 = xor i32 %78, %77
  %add267 = add nsw i32 %2, 12
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom268
  %79 = load i32* %arrayidx269, align 4, !tbaa !0
  %xor270 = xor i32 %xor266, %79
  %arrayidx272 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom58
  %80 = load i32* %arrayidx272, align 4, !tbaa !0
  %xor273 = xor i32 %xor270, %80
  store i32 %xor273, i32* @hash, align 4, !tbaa !0
  %81 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !tbaa !0
  %82 = load i32* @Material, align 4, !tbaa !0
  %sub274 = sub nsw i32 %82, %81
  store i32 %sub274, i32* @Material, align 4, !tbaa !0
  %arrayidx276 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 2, i32* %arrayidx276, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  tail call void @addHolding(i32 2, i32 1) #2
  %83 = load i32* @piece_count, align 4, !tbaa !0
  %dec279 = add nsw i32 %83, -1
  store i32 %dec279, i32* @piece_count, align 4, !tbaa !0
  %arrayidx282 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom268
  store i32 13, i32* %arrayidx282, align 4, !tbaa !0
  %arrayidx284 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %84 = load i32* %arrayidx284, align 4, !tbaa !0
  %inc285 = add nsw i32 %84, 1
  store i32 %inc285, i32* %arrayidx284, align 4, !tbaa !0
  %arrayidx287 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %85 = load i32* %arrayidx287, align 4, !tbaa !0
  %inc288 = add nsw i32 %85, 1
  store i32 %inc288, i32* %arrayidx287, align 4, !tbaa !0
  %arrayidx291 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom268
  %86 = load i32* %arrayidx291, align 4, !tbaa !0
  %inc292 = add nsw i32 %86, 1
  store i32 %inc292, i32* %arrayidx291, align 4, !tbaa !0
  %87 = load i32* @white_to_move, align 4, !tbaa !0
  %xor293 = xor i32 %87, 1
  store i32 %xor293, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx296 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom268
  %88 = load i32* %arrayidx296, align 4, !tbaa !0
  %89 = load i32* @ply, align 4, !tbaa !0
  %idxprom297 = sext i32 %89 to i64
  %cap_num299 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom297, i32 0
  store i32 %88, i32* %cap_num299, align 4, !tbaa !0
  %idxprom303 = sext i32 %88 to i64
  %arrayidx304 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom303
  store i32 0, i32* %arrayidx304, align 4, !tbaa !0
  store i32 0, i32* %arrayidx296, align 4, !tbaa !0
  %inc308 = add nsw i32 %89, 1
  store i32 %inc308, i32* @ply, align 4, !tbaa !0
  br label %return

if.end309:                                        ; preds = %if.end261
  %sub310 = add nsw i32 %1, -24
  %cmp311 = icmp eq i32 %2, %sub310
  br i1 %cmp311, label %if.then312, label %if.end314

if.then312:                                       ; preds = %if.end309
  %sub313 = add nsw i32 %1, -12
  store i32 %sub313, i32* @ep_square, align 4, !tbaa !0
  br label %if.end314

if.end314:                                        ; preds = %if.end309, %if.then312
  %arrayidx316 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 2, i32* %arrayidx316, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx320 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %90 = load i32* %arrayidx320, align 4, !tbaa !0
  %inc321 = add nsw i32 %90, 1
  store i32 %inc321, i32* %arrayidx320, align 4, !tbaa !0
  %arrayidx323 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %91 = load i32* %arrayidx323, align 4, !tbaa !0
  %inc324 = add nsw i32 %91, 1
  store i32 %inc324, i32* %arrayidx323, align 4, !tbaa !0
  %92 = load i32* @white_to_move, align 4, !tbaa !0
  %xor325 = xor i32 %92, 1
  store i32 %xor325, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx327 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21
  %93 = load i32* %arrayidx327, align 4, !tbaa !0
  %94 = load i32* @hash, align 4, !tbaa !0
  %xor328 = xor i32 %94, %93
  %arrayidx330 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom58
  %95 = load i32* %arrayidx330, align 4, !tbaa !0
  %xor331 = xor i32 %xor328, %95
  store i32 %xor331, i32* @hash, align 4, !tbaa !0
  %96 = load i32* @ply, align 4, !tbaa !0
  %inc332 = add nsw i32 %96, 1
  store i32 %inc332, i32* @ply, align 4, !tbaa !0
  br label %return

if.then340:                                       ; preds = %if.end119
  %idxprom344 = sext i32 %34 to i64
  %arrayidx346 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom344, i64 %idxprom21
  %97 = load i32* %arrayidx346, align 4, !tbaa !0
  %98 = load i32* @hash, align 4, !tbaa !0
  %xor347 = xor i32 %98, %97
  %arrayidx353 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom344, i64 %idxprom58
  %99 = load i32* %arrayidx353, align 4, !tbaa !0
  %xor354 = xor i32 %99, %xor347
  store i32 %xor354, i32* @hash, align 4, !tbaa !0
  %arrayidx358 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 %34, i32* %arrayidx358, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx362 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %100 = load i32* %arrayidx362, align 4, !tbaa !0
  %inc363 = add nsw i32 %100, 1
  store i32 %inc363, i32* %arrayidx362, align 4, !tbaa !0
  %arrayidx365 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %101 = load i32* %arrayidx365, align 4, !tbaa !0
  %inc366 = add nsw i32 %101, 1
  store i32 %inc366, i32* %arrayidx365, align 4, !tbaa !0
  %102 = load i32* @white_to_move, align 4, !tbaa !0
  %xor367 = xor i32 %102, 1
  store i32 %xor367, i32* @white_to_move, align 4, !tbaa !0
  %103 = load i32* @ply, align 4, !tbaa !0
  %inc368 = add nsw i32 %103, 1
  store i32 %inc368, i32* @ply, align 4, !tbaa !0
  br label %return

if.then373:                                       ; preds = %if.end119
  store i32 %2, i32* @wking_loc, align 4, !tbaa !0
  %arrayidx375 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 5, i32* %arrayidx375, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx379 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %104 = load i32* %arrayidx379, align 4, !tbaa !0
  %inc380 = add nsw i32 %104, 1
  store i32 %inc380, i32* %arrayidx379, align 4, !tbaa !0
  %arrayidx382 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %105 = load i32* %arrayidx382, align 4, !tbaa !0
  %inc383 = add nsw i32 %105, 1
  store i32 %inc383, i32* %arrayidx382, align 4, !tbaa !0
  %106 = load i32* @white_to_move, align 4, !tbaa !0
  %xor384 = xor i32 %106, 1
  store i32 %xor384, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx386 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom21
  %107 = load i32* %arrayidx386, align 4, !tbaa !0
  %108 = load i32* @hash, align 4, !tbaa !0
  %xor387 = xor i32 %108, %107
  %arrayidx389 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom58
  %109 = load i32* %arrayidx389, align 4, !tbaa !0
  %xor390 = xor i32 %xor387, %109
  store i32 %xor390, i32* @hash, align 4, !tbaa !0
  switch i32 %4, label %if.end411 [
    i32 1, label %if.then392
    i32 2, label %if.then402
  ]

if.then392:                                       ; preds = %if.then373
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !tbaa !0
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !tbaa !0
  %110 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !tbaa !0
  %inc393 = add nsw i32 %110, 1
  store i32 %inc393, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !tbaa !0
  %111 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !tbaa !0
  %inc394 = add nsw i32 %111, 1
  store i32 %inc394, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !tbaa !0
  store i32 1, i32* @white_castled, align 4, !tbaa !0
  %112 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 33), align 4, !tbaa !0
  %idxprom395 = sext i32 %112 to i64
  %arrayidx396 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom395
  store i32 31, i32* %arrayidx396, align 4, !tbaa !0
  store i32 %112, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 31), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 33), align 4, !tbaa !0
  %113 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 33), align 4, !tbaa !0
  %xor397 = xor i32 %xor390, %113
  %114 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 31), align 4, !tbaa !0
  %xor398 = xor i32 %xor397, %114
  store i32 %xor398, i32* @hash, align 4, !tbaa !0
  %115 = load i32* @ply, align 4, !tbaa !0
  %inc399 = add nsw i32 %115, 1
  store i32 %inc399, i32* @ply, align 4, !tbaa !0
  br label %return

if.then402:                                       ; preds = %if.then373
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 26), align 4, !tbaa !0
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 29), align 4, !tbaa !0
  %116 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !tbaa !0
  %inc403 = add nsw i32 %116, 1
  store i32 %inc403, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !tbaa !0
  %117 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !tbaa !0
  %inc404 = add nsw i32 %117, 1
  store i32 %inc404, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !tbaa !0
  store i32 2, i32* @white_castled, align 4, !tbaa !0
  %118 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 26), align 4, !tbaa !0
  %idxprom405 = sext i32 %118 to i64
  %arrayidx406 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom405
  store i32 29, i32* %arrayidx406, align 4, !tbaa !0
  store i32 %118, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 29), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 26), align 4, !tbaa !0
  %119 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 26), align 4, !tbaa !0
  %xor407 = xor i32 %xor390, %119
  %120 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 29), align 4, !tbaa !0
  %xor408 = xor i32 %xor407, %120
  store i32 %xor408, i32* @hash, align 4, !tbaa !0
  %121 = load i32* @ply, align 4, !tbaa !0
  %inc409 = add nsw i32 %121, 1
  store i32 %inc409, i32* @ply, align 4, !tbaa !0
  br label %return

if.end411:                                        ; preds = %if.then373
  %122 = load i32* @ply, align 4, !tbaa !0
  %inc412 = add nsw i32 %122, 1
  store i32 %inc412, i32* @ply, align 4, !tbaa !0
  br label %return

if.else413:                                       ; preds = %if.end119
  store i32 %2, i32* @bking_loc, align 4, !tbaa !0
  %arrayidx415 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom58
  store i32 6, i32* %arrayidx415, align 4, !tbaa !0
  store i32 13, i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx419 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom58
  %123 = load i32* %arrayidx419, align 4, !tbaa !0
  %inc420 = add nsw i32 %123, 1
  store i32 %inc420, i32* %arrayidx419, align 4, !tbaa !0
  %arrayidx422 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %124 = load i32* %arrayidx422, align 4, !tbaa !0
  %inc423 = add nsw i32 %124, 1
  store i32 %inc423, i32* %arrayidx422, align 4, !tbaa !0
  %125 = load i32* @white_to_move, align 4, !tbaa !0
  %xor424 = xor i32 %125, 1
  store i32 %xor424, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx426 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom21
  %126 = load i32* %arrayidx426, align 4, !tbaa !0
  %127 = load i32* @hash, align 4, !tbaa !0
  %xor427 = xor i32 %127, %126
  %arrayidx429 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom58
  %128 = load i32* %arrayidx429, align 4, !tbaa !0
  %xor430 = xor i32 %xor427, %128
  store i32 %xor430, i32* @hash, align 4, !tbaa !0
  switch i32 %4, label %if.end452 [
    i32 3, label %if.then432
    i32 4, label %if.then442
  ]

if.then432:                                       ; preds = %if.else413
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !tbaa !0
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !tbaa !0
  %129 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !tbaa !0
  %inc433 = add nsw i32 %129, 1
  store i32 %inc433, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !tbaa !0
  %130 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !tbaa !0
  %inc434 = add nsw i32 %130, 1
  store i32 %inc434, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !tbaa !0
  store i32 3, i32* @black_castled, align 4, !tbaa !0
  %131 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 117), align 4, !tbaa !0
  %idxprom435 = sext i32 %131 to i64
  %arrayidx436 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom435
  store i32 115, i32* %arrayidx436, align 4, !tbaa !0
  store i32 %131, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 115), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 117), align 4, !tbaa !0
  %132 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 117), align 4, !tbaa !0
  %xor437 = xor i32 %xor430, %132
  %133 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 115), align 4, !tbaa !0
  %xor438 = xor i32 %xor437, %133
  store i32 %xor438, i32* @hash, align 4, !tbaa !0
  %134 = load i32* @ply, align 4, !tbaa !0
  %inc439 = add nsw i32 %134, 1
  store i32 %inc439, i32* @ply, align 4, !tbaa !0
  br label %return

if.then442:                                       ; preds = %if.else413
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 110), align 4, !tbaa !0
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 113), align 4, !tbaa !0
  %135 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !tbaa !0
  %inc443 = add nsw i32 %135, 1
  store i32 %inc443, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !tbaa !0
  %136 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !tbaa !0
  %inc444 = add nsw i32 %136, 1
  store i32 %inc444, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !tbaa !0
  store i32 4, i32* @black_castled, align 4, !tbaa !0
  %137 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 110), align 4, !tbaa !0
  %idxprom445 = sext i32 %137 to i64
  %arrayidx446 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom445
  store i32 113, i32* %arrayidx446, align 4, !tbaa !0
  store i32 %137, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 113), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 110), align 4, !tbaa !0
  %138 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 110), align 4, !tbaa !0
  %xor447 = xor i32 %xor430, %138
  %139 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 113), align 4, !tbaa !0
  %xor448 = xor i32 %xor447, %139
  store i32 %xor448, i32* @hash, align 4, !tbaa !0
  %140 = load i32* @ply, align 4, !tbaa !0
  %inc449 = add nsw i32 %140, 1
  store i32 %inc449, i32* @ply, align 4, !tbaa !0
  br label %return

if.end452:                                        ; preds = %if.else413
  %141 = load i32* @ply, align 4, !tbaa !0
  %inc453 = add nsw i32 %141, 1
  store i32 %inc453, i32* @ply, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end452, %if.then442, %if.then432, %if.end411, %if.then402, %if.then392, %if.then340, %if.end314, %if.then263, %if.then232, %if.end207, %if.then156, %if.then125, %for.end
  ret void
}

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
  %0 = load i32* @gfrom, align 4, !tbaa !0
  %1 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.move_s** @genfor, align 8, !tbaa !3
  %from = getelementptr inbounds %struct.move_s* %2, i64 %idxprom, i32 0
  store i32 %0, i32* %from, align 4, !tbaa !0
  %3 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom1 = sext i32 %3 to i64
  %target = getelementptr inbounds %struct.move_s* %2, i64 %idxprom1, i32 1
  store i32 %Ptarget, i32* %target, align 4, !tbaa !0
  %4 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom3 = sext i32 %4 to i64
  %captured = getelementptr inbounds %struct.move_s* %2, i64 %idxprom3, i32 2
  store i32 13, i32* %captured, align 4, !tbaa !0
  %5 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom5 = sext i32 %5 to i64
  %castled = getelementptr inbounds %struct.move_s* %2, i64 %idxprom5, i32 4
  store i32 0, i32* %castled, align 4, !tbaa !0
  %6 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom7 = sext i32 %6 to i64
  %promoted = getelementptr inbounds %struct.move_s* %2, i64 %idxprom7, i32 3
  store i32 %Ppromoted, i32* %promoted, align 4, !tbaa !0
  %7 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom9 = sext i32 %7 to i64
  %ep = getelementptr inbounds %struct.move_s* %2, i64 %idxprom9, i32 5
  store i32 0, i32* %ep, align 4, !tbaa !0
  %8 = load i32* @numb_moves, align 4, !tbaa !0
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @numb_moves, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @add_capture(i32 %Ptarget, i32 %Pcaptured, i32 %Ppromoted, i32 %Pep) #0 {
entry:
  %0 = load i32* @Variant, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %Pcaptured.off = add i32 %Pcaptured, -5
  %1 = icmp ult i32 %Pcaptured.off, 2
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @kingcap, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry, %land.lhs.true
  %cmp3 = icmp eq i32 %Pcaptured, 13
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.else
  store i32 1, i32* @fcaptures, align 4, !tbaa !1
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %2 = load i32* @gfrom, align 4, !tbaa !0
  %3 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.move_s** @genfor, align 8, !tbaa !3
  %from = getelementptr inbounds %struct.move_s* %4, i64 %idxprom, i32 0
  store i32 %2, i32* %from, align 4, !tbaa !0
  %5 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom6 = sext i32 %5 to i64
  %target = getelementptr inbounds %struct.move_s* %4, i64 %idxprom6, i32 1
  store i32 %Ptarget, i32* %target, align 4, !tbaa !0
  %6 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom8 = sext i32 %6 to i64
  %captured = getelementptr inbounds %struct.move_s* %4, i64 %idxprom8, i32 2
  store i32 %Pcaptured, i32* %captured, align 4, !tbaa !0
  %7 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom10 = sext i32 %7 to i64
  %castled = getelementptr inbounds %struct.move_s* %4, i64 %idxprom10, i32 4
  store i32 0, i32* %castled, align 4, !tbaa !0
  %8 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom12 = sext i32 %8 to i64
  %promoted = getelementptr inbounds %struct.move_s* %4, i64 %idxprom12, i32 3
  store i32 %Ppromoted, i32* %promoted, align 4, !tbaa !0
  %9 = load i32* @numb_moves, align 4, !tbaa !0
  %idxprom14 = sext i32 %9 to i64
  %ep = getelementptr inbounds %struct.move_s* %4, i64 %idxprom14, i32 5
  store i32 %Pep, i32* %ep, align 4, !tbaa !0
  %10 = load i32* @numb_moves, align 4, !tbaa !0
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @numb_moves, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unmake(%struct.move_s* nocapture %moves, i32 %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %ep1 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 5
  %0 = load i32* %ep1, align 4, !tbaa !0
  %from4 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 0
  %1 = load i32* %from4, align 4, !tbaa !0
  %target7 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 1
  %2 = load i32* %target7, align 4, !tbaa !0
  %captured10 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 2
  %3 = load i32* %captured10, align 4, !tbaa !0
  %promoted13 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 3
  %4 = load i32* %promoted13, align 4, !tbaa !0
  %castled16 = getelementptr inbounds %struct.move_s* %moves, i64 %idxprom, i32 4
  %5 = load i32* %castled16, align 4, !tbaa !0
  %6 = load i32* @ply, align 4, !tbaa !0
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @ply, align 4, !tbaa !0
  %idxprom17 = sext i32 %dec to i64
  %epsq = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 2
  %7 = load i32* %epsq, align 4, !tbaa !0
  store i32 %7, i32* @ep_square, align 4, !tbaa !0
  %fifty = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 3
  %8 = load i32* %fifty, align 4, !tbaa !0
  store i32 %8, i32* @fifty, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  %idxprom21 = sext i32 %2 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom21
  %9 = load i32* %arrayidx22, align 4, !tbaa !0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom23 = sext i32 %9 to i64
  %arrayidx24 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom23
  store i32 0, i32* %arrayidx24, align 4, !tbaa !0
  %was_promoted = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 1
  %10 = load i32* %was_promoted, align 4, !tbaa !0
  %arrayidx30 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom23
  store i32 %10, i32* %arrayidx30, align 4, !tbaa !0
  store i32 0, i32* %arrayidx22, align 4, !tbaa !0
  %11 = load i32* @piece_count, align 4, !tbaa !0
  %dec33 = add nsw i32 %11, -1
  store i32 %dec33, i32* @piece_count, align 4, !tbaa !0
  %12 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool = icmp ne i32 %12, 0
  %cond = zext i1 %tobool to i32
  tail call void @DropaddHolding(i32 %4, i32 %cond) #2
  %idxprom34 = sext i32 %4 to i64
  %arrayidx35 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom34
  %13 = load i32* %arrayidx35, align 4, !tbaa !0
  %14 = load i32* @Material, align 4, !tbaa !0
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* @Material, align 4, !tbaa !0
  %arrayidx37 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21
  store i32 %3, i32* %arrayidx37, align 4, !tbaa !0
  %arrayidx41 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom34, i64 %idxprom21
  %15 = load i32* %arrayidx41, align 4, !tbaa !0
  %16 = load i32* @hash, align 4, !tbaa !0
  %xor = xor i32 %16, %15
  store i32 %xor, i32* @hash, align 4, !tbaa !0
  %17 = load i32* @white_to_move, align 4, !tbaa !0
  %xor42 = xor i32 %17, 1
  store i32 %xor42, i32* @white_to_move, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %idxprom45 = sext i32 %1 to i64
  %arrayidx46 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom45
  store i32 %9, i32* %arrayidx46, align 4, !tbaa !0
  %cap_num = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 0
  %18 = load i32* %cap_num, align 4, !tbaa !0
  store i32 %18, i32* %arrayidx22, align 4, !tbaa !0
  %idxprom53 = sext i32 %18 to i64
  %arrayidx54 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom53
  store i32 %2, i32* %arrayidx54, align 4, !tbaa !0
  %19 = load i32* %arrayidx46, align 4, !tbaa !0
  %idxprom57 = sext i32 %19 to i64
  %arrayidx58 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom57
  store i32 %1, i32* %arrayidx58, align 4, !tbaa !0
  %was_promoted61 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom17, i32 1
  %20 = load i32* %was_promoted61, align 4, !tbaa !0
  %arrayidx65 = getelementptr inbounds [62 x i32]* @is_promoted, i64 0, i64 %idxprom53
  store i32 %20, i32* %arrayidx65, align 4, !tbaa !0
  %tobool66 = icmp ne i32 %0, 0
  %cond400 = icmp eq i32 %3, 13
  %or.cond = or i1 %tobool66, %cond400
  br i1 %or.cond, label %if.end91, label %sw.default

sw.default:                                       ; preds = %if.else
  %21 = load i32* @Variant, align 4, !tbaa !0
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %if.then70, label %if.end83

if.then70:                                        ; preds = %sw.default
  %tobool75 = icmp eq i32 %20, 0
  br i1 %tobool75, label %if.else79, label %if.then76

if.then76:                                        ; preds = %if.then70
  %call = tail call i32 @SwitchPromoted(i32 %3) #2
  %23 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool77 = icmp ne i32 %23, 0
  %cond78 = zext i1 %tobool77 to i32
  tail call void @removeHolding(i32 %call, i32 %cond78) #2
  br label %if.end83

if.else79:                                        ; preds = %if.then70
  %call80 = tail call i32 @SwitchColor(i32 %3) #2
  %24 = load i32* @white_to_move, align 4, !tbaa !0
  %tobool81 = icmp ne i32 %24, 0
  %cond82 = zext i1 %tobool81 to i32
  tail call void @removeHolding(i32 %call80, i32 %cond82) #2
  br label %if.end83

if.end83:                                         ; preds = %if.then76, %if.else79, %sw.default
  %idxprom85 = sext i32 %3 to i64
  %arrayidx87 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom85, i64 %idxprom21
  %25 = load i32* %arrayidx87, align 4, !tbaa !0
  %26 = load i32* @hash, align 4, !tbaa !0
  %xor88 = xor i32 %26, %25
  store i32 %xor88, i32* @hash, align 4, !tbaa !0
  %arrayidx90 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom85
  %27 = load i32* %arrayidx90, align 4, !tbaa !0
  %28 = load i32* @Material, align 4, !tbaa !0
  %add = add nsw i32 %28, %27
  store i32 %add, i32* @Material, align 4, !tbaa !0
  %29 = load i32* @piece_count, align 4, !tbaa !0
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* @piece_count, align 4, !tbaa !0
  br label %if.end91

if.end91:                                         ; preds = %if.end83, %if.else
  %arrayidx93 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom21
  %30 = load i32* %arrayidx93, align 4, !tbaa !0
  switch i32 %30, label %land.lhs.true236 [
    i32 1, label %if.then95
    i32 2, label %if.then164
    i32 5, label %if.end266
    i32 6, label %if.end266
  ]

if.then95:                                        ; preds = %if.end91
  br i1 %tobool66, label %if.then97, label %if.end142

if.then97:                                        ; preds = %if.then95
  %arrayidx99 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21
  %31 = load i32* %arrayidx99, align 4, !tbaa !0
  %32 = load i32* @hash, align 4, !tbaa !0
  %xor100 = xor i32 %32, %31
  %arrayidx102 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom45
  %33 = load i32* %arrayidx102, align 4, !tbaa !0
  %xor103 = xor i32 %xor100, %33
  %sub104 = add nsw i32 %2, -12
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom105
  %34 = load i32* %arrayidx106, align 4, !tbaa !0
  %xor107 = xor i32 %xor103, %34
  store i32 %xor107, i32* @hash, align 4, !tbaa !0
  store i32 13, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx111 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 1, i32* %arrayidx111, align 4, !tbaa !0
  %35 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !tbaa !0
  %36 = load i32* @Material, align 4, !tbaa !0
  %add112 = add nsw i32 %36, %35
  store i32 %add112, i32* @Material, align 4, !tbaa !0
  tail call void @removeHolding(i32 1, i32 0) #2
  %37 = load i32* @piece_count, align 4, !tbaa !0
  %inc113 = add nsw i32 %37, 1
  store i32 %inc113, i32* @piece_count, align 4, !tbaa !0
  %arrayidx116 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom105
  store i32 2, i32* %arrayidx116, align 4, !tbaa !0
  %arrayidx118 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %38 = load i32* %arrayidx118, align 4, !tbaa !0
  %dec119 = add nsw i32 %38, -1
  store i32 %dec119, i32* %arrayidx118, align 4, !tbaa !0
  %arrayidx121 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %39 = load i32* %arrayidx121, align 4, !tbaa !0
  %dec122 = add nsw i32 %39, -1
  store i32 %dec122, i32* %arrayidx121, align 4, !tbaa !0
  %arrayidx125 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom105
  %40 = load i32* %arrayidx125, align 4, !tbaa !0
  %dec126 = add nsw i32 %40, -1
  store i32 %dec126, i32* %arrayidx125, align 4, !tbaa !0
  %41 = load i32* @white_to_move, align 4, !tbaa !0
  %xor127 = xor i32 %41, 1
  store i32 %xor127, i32* @white_to_move, align 4, !tbaa !0
  %42 = load i32* @ply, align 4, !tbaa !0
  %idxprom128 = sext i32 %42 to i64
  %cap_num130 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom128, i32 0
  %43 = load i32* %cap_num130, align 4, !tbaa !0
  %arrayidx133 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom105
  store i32 %43, i32* %arrayidx133, align 4, !tbaa !0
  %idxprom138 = sext i32 %43 to i64
  %arrayidx139 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom138
  store i32 %sub104, i32* %arrayidx139, align 4, !tbaa !0
  store i32 0, i32* %arrayidx22, align 4, !tbaa !0
  br label %return

if.end142:                                        ; preds = %if.then95
  %arrayidx144 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom45
  %44 = load i32* %arrayidx144, align 4, !tbaa !0
  %45 = load i32* @hash, align 4, !tbaa !0
  %xor145 = xor i32 %45, %44
  %arrayidx147 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom21
  %46 = load i32* %arrayidx147, align 4, !tbaa !0
  %xor148 = xor i32 %xor145, %46
  store i32 %xor148, i32* @hash, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx152 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 1, i32* %arrayidx152, align 4, !tbaa !0
  %arrayidx154 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %47 = load i32* %arrayidx154, align 4, !tbaa !0
  %dec155 = add nsw i32 %47, -1
  store i32 %dec155, i32* %arrayidx154, align 4, !tbaa !0
  %arrayidx157 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %48 = load i32* %arrayidx157, align 4, !tbaa !0
  %dec158 = add nsw i32 %48, -1
  store i32 %dec158, i32* %arrayidx157, align 4, !tbaa !0
  %49 = load i32* @white_to_move, align 4, !tbaa !0
  %xor159 = xor i32 %49, 1
  store i32 %xor159, i32* @white_to_move, align 4, !tbaa !0
  br label %return

if.then164:                                       ; preds = %if.end91
  br i1 %tobool66, label %if.then166, label %if.end211

if.then166:                                       ; preds = %if.then164
  %arrayidx168 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21
  %50 = load i32* %arrayidx168, align 4, !tbaa !0
  %51 = load i32* @hash, align 4, !tbaa !0
  %xor169 = xor i32 %51, %50
  %arrayidx171 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom45
  %52 = load i32* %arrayidx171, align 4, !tbaa !0
  %xor172 = xor i32 %xor169, %52
  %add173 = add nsw i32 %2, 12
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom174
  %53 = load i32* %arrayidx175, align 4, !tbaa !0
  %xor176 = xor i32 %xor172, %53
  store i32 %xor176, i32* @hash, align 4, !tbaa !0
  store i32 13, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx180 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 2, i32* %arrayidx180, align 4, !tbaa !0
  %54 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !tbaa !0
  %55 = load i32* @Material, align 4, !tbaa !0
  %add181 = add nsw i32 %55, %54
  store i32 %add181, i32* @Material, align 4, !tbaa !0
  tail call void @removeHolding(i32 2, i32 1) #2
  %56 = load i32* @piece_count, align 4, !tbaa !0
  %inc182 = add nsw i32 %56, 1
  store i32 %inc182, i32* @piece_count, align 4, !tbaa !0
  %arrayidx185 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom174
  store i32 1, i32* %arrayidx185, align 4, !tbaa !0
  %arrayidx187 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %57 = load i32* %arrayidx187, align 4, !tbaa !0
  %dec188 = add nsw i32 %57, -1
  store i32 %dec188, i32* %arrayidx187, align 4, !tbaa !0
  %arrayidx190 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %58 = load i32* %arrayidx190, align 4, !tbaa !0
  %dec191 = add nsw i32 %58, -1
  store i32 %dec191, i32* %arrayidx190, align 4, !tbaa !0
  %arrayidx194 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom174
  %59 = load i32* %arrayidx194, align 4, !tbaa !0
  %dec195 = add nsw i32 %59, -1
  store i32 %dec195, i32* %arrayidx194, align 4, !tbaa !0
  %60 = load i32* @white_to_move, align 4, !tbaa !0
  %xor196 = xor i32 %60, 1
  store i32 %xor196, i32* @white_to_move, align 4, !tbaa !0
  %61 = load i32* @ply, align 4, !tbaa !0
  %idxprom197 = sext i32 %61 to i64
  %cap_num199 = getelementptr inbounds [300 x %struct.move_x]* @path_x, i64 0, i64 %idxprom197, i32 0
  %62 = load i32* %cap_num199, align 4, !tbaa !0
  %arrayidx202 = getelementptr inbounds [144 x i32]* @squares, i64 0, i64 %idxprom174
  store i32 %62, i32* %arrayidx202, align 4, !tbaa !0
  %idxprom207 = sext i32 %62 to i64
  %arrayidx208 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom207
  store i32 %add173, i32* %arrayidx208, align 4, !tbaa !0
  store i32 0, i32* %arrayidx22, align 4, !tbaa !0
  br label %return

if.end211:                                        ; preds = %if.then164
  %arrayidx213 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom45
  %63 = load i32* %arrayidx213, align 4, !tbaa !0
  %64 = load i32* @hash, align 4, !tbaa !0
  %xor214 = xor i32 %64, %63
  %arrayidx216 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom21
  %65 = load i32* %arrayidx216, align 4, !tbaa !0
  %xor217 = xor i32 %xor214, %65
  store i32 %xor217, i32* @hash, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx221 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 2, i32* %arrayidx221, align 4, !tbaa !0
  %arrayidx223 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %66 = load i32* %arrayidx223, align 4, !tbaa !0
  %dec224 = add nsw i32 %66, -1
  store i32 %dec224, i32* %arrayidx223, align 4, !tbaa !0
  %arrayidx226 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %67 = load i32* %arrayidx226, align 4, !tbaa !0
  %dec227 = add nsw i32 %67, -1
  store i32 %dec227, i32* %arrayidx226, align 4, !tbaa !0
  %68 = load i32* @white_to_move, align 4, !tbaa !0
  %xor228 = xor i32 %68, 1
  store i32 %xor228, i32* @white_to_move, align 4, !tbaa !0
  br label %return

land.lhs.true236:                                 ; preds = %if.end91
  %tobool237 = icmp eq i32 %4, 0
  br i1 %tobool237, label %if.then238, label %if.then268

if.then238:                                       ; preds = %land.lhs.true236
  %arrayidx242 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 %30, i32* %arrayidx242, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx246 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %69 = load i32* %arrayidx246, align 4, !tbaa !0
  %dec247 = add nsw i32 %69, -1
  store i32 %dec247, i32* %arrayidx246, align 4, !tbaa !0
  %arrayidx249 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %70 = load i32* %arrayidx249, align 4, !tbaa !0
  %dec250 = add nsw i32 %70, -1
  store i32 %dec250, i32* %arrayidx249, align 4, !tbaa !0
  %71 = load i32* @white_to_move, align 4, !tbaa !0
  %xor251 = xor i32 %71, 1
  store i32 %xor251, i32* @white_to_move, align 4, !tbaa !0
  %72 = load i32* %arrayidx242, align 4, !tbaa !0
  %idxprom255 = sext i32 %72 to i64
  %arrayidx257 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom255, i64 %idxprom21
  %73 = load i32* %arrayidx257, align 4, !tbaa !0
  %74 = load i32* @hash, align 4, !tbaa !0
  %xor258 = xor i32 %74, %73
  %arrayidx264 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom255, i64 %idxprom45
  %75 = load i32* %arrayidx264, align 4, !tbaa !0
  %xor265 = xor i32 %75, %xor258
  store i32 %xor265, i32* @hash, align 4, !tbaa !0
  br label %return

if.end266:                                        ; preds = %if.end91, %if.end91
  %tobool267 = icmp eq i32 %4, 0
  br i1 %tobool267, label %if.end320, label %if.then268

if.then268:                                       ; preds = %land.lhs.true236, %if.end266
  %rem520 = and i32 %30, 1
  %tobool271 = icmp eq i32 %rem520, 0
  store i32 %3, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx276 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  br i1 %tobool271, label %if.end296, label %if.then272

if.then272:                                       ; preds = %if.then268
  store i32 1, i32* %arrayidx276, align 4, !tbaa !0
  %arrayidx278 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %76 = load i32* %arrayidx278, align 4, !tbaa !0
  %dec279 = add nsw i32 %76, -1
  store i32 %dec279, i32* %arrayidx278, align 4, !tbaa !0
  %arrayidx281 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %77 = load i32* %arrayidx281, align 4, !tbaa !0
  %dec282 = add nsw i32 %77, -1
  store i32 %dec282, i32* %arrayidx281, align 4, !tbaa !0
  %78 = load i32* @white_to_move, align 4, !tbaa !0
  %xor283 = xor i32 %78, 1
  store i32 %xor283, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx285 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 1, i64 %idxprom45
  %79 = load i32* %arrayidx285, align 4, !tbaa !0
  %80 = load i32* @hash, align 4, !tbaa !0
  %xor286 = xor i32 %80, %79
  %idxprom288 = sext i32 %4 to i64
  %arrayidx290 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom288, i64 %idxprom21
  %81 = load i32* %arrayidx290, align 4, !tbaa !0
  %xor291 = xor i32 %xor286, %81
  store i32 %xor291, i32* @hash, align 4, !tbaa !0
  %arrayidx293 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom288
  %82 = load i32* %arrayidx293, align 4, !tbaa !0
  %83 = load i32* @Material, align 4, !tbaa !0
  %sub294 = sub nsw i32 %83, %82
  %84 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 1), align 4, !tbaa !0
  %add295 = add nsw i32 %sub294, %84
  store i32 %add295, i32* @Material, align 4, !tbaa !0
  br label %return

if.end296:                                        ; preds = %if.then268
  store i32 2, i32* %arrayidx276, align 4, !tbaa !0
  %arrayidx302 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %85 = load i32* %arrayidx302, align 4, !tbaa !0
  %dec303 = add nsw i32 %85, -1
  store i32 %dec303, i32* %arrayidx302, align 4, !tbaa !0
  %arrayidx305 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %86 = load i32* %arrayidx305, align 4, !tbaa !0
  %dec306 = add nsw i32 %86, -1
  store i32 %dec306, i32* %arrayidx305, align 4, !tbaa !0
  %87 = load i32* @white_to_move, align 4, !tbaa !0
  %xor307 = xor i32 %87, 1
  store i32 %xor307, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx309 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 2, i64 %idxprom45
  %88 = load i32* %arrayidx309, align 4, !tbaa !0
  %89 = load i32* @hash, align 4, !tbaa !0
  %xor310 = xor i32 %89, %88
  %idxprom312 = sext i32 %4 to i64
  %arrayidx314 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 %idxprom312, i64 %idxprom21
  %90 = load i32* %arrayidx314, align 4, !tbaa !0
  %xor315 = xor i32 %xor310, %90
  store i32 %xor315, i32* @hash, align 4, !tbaa !0
  %arrayidx317 = getelementptr inbounds [14 x i32]* @material, i64 0, i64 %idxprom312
  %91 = load i32* %arrayidx317, align 4, !tbaa !0
  %92 = load i32* @Material, align 4, !tbaa !0
  %sub318 = sub nsw i32 %92, %91
  %93 = load i32* getelementptr inbounds ([14 x i32]* @material, i64 0, i64 2), align 4, !tbaa !0
  %add319 = add nsw i32 %sub318, %93
  store i32 %add319, i32* @Material, align 4, !tbaa !0
  br label %return

if.end320:                                        ; preds = %if.end266
  %cmp323 = icmp eq i32 %30, 5
  br i1 %cmp323, label %if.then324, label %if.else361

if.then324:                                       ; preds = %if.end320
  store i32 %1, i32* @wking_loc, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx328 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 5, i32* %arrayidx328, align 4, !tbaa !0
  %arrayidx330 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %94 = load i32* %arrayidx330, align 4, !tbaa !0
  %dec331 = add nsw i32 %94, -1
  store i32 %dec331, i32* %arrayidx330, align 4, !tbaa !0
  %arrayidx333 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %95 = load i32* %arrayidx333, align 4, !tbaa !0
  %dec334 = add nsw i32 %95, -1
  store i32 %dec334, i32* %arrayidx333, align 4, !tbaa !0
  %96 = load i32* @white_to_move, align 4, !tbaa !0
  %xor335 = xor i32 %96, 1
  store i32 %xor335, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx337 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom45
  %97 = load i32* %arrayidx337, align 4, !tbaa !0
  %98 = load i32* @hash, align 4, !tbaa !0
  %xor338 = xor i32 %98, %97
  %arrayidx340 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 5, i64 %idxprom21
  %99 = load i32* %arrayidx340, align 4, !tbaa !0
  %xor341 = xor i32 %xor338, %99
  store i32 %xor341, i32* @hash, align 4, !tbaa !0
  switch i32 %5, label %return [
    i32 1, label %if.then343
    i32 2, label %if.then352
  ]

if.then343:                                       ; preds = %if.then324
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !tbaa !0
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !tbaa !0
  %100 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !tbaa !0
  %dec344 = add nsw i32 %100, -1
  store i32 %dec344, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 33), align 4, !tbaa !0
  %101 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !tbaa !0
  %dec345 = add nsw i32 %101, -1
  store i32 %dec345, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 31), align 4, !tbaa !0
  store i32 0, i32* @white_castled, align 4, !tbaa !0
  %102 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 31), align 4, !tbaa !0
  store i32 %102, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 33), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 31), align 4, !tbaa !0
  %idxprom346 = sext i32 %102 to i64
  %arrayidx347 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom346
  store i32 33, i32* %arrayidx347, align 4, !tbaa !0
  %103 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 33), align 4, !tbaa !0
  %xor348 = xor i32 %xor341, %103
  %104 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 31), align 4, !tbaa !0
  %xor349 = xor i32 %xor348, %104
  store i32 %xor349, i32* @hash, align 4, !tbaa !0
  br label %return

if.then352:                                       ; preds = %if.then324
  store i32 7, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 26), align 4, !tbaa !0
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 29), align 4, !tbaa !0
  %105 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !tbaa !0
  %dec353 = add nsw i32 %105, -1
  store i32 %dec353, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 26), align 4, !tbaa !0
  %106 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !tbaa !0
  %dec354 = add nsw i32 %106, -1
  store i32 %dec354, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 29), align 4, !tbaa !0
  store i32 0, i32* @white_castled, align 4, !tbaa !0
  %107 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 29), align 4, !tbaa !0
  store i32 %107, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 26), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 29), align 4, !tbaa !0
  %idxprom355 = sext i32 %107 to i64
  %arrayidx356 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom355
  store i32 26, i32* %arrayidx356, align 4, !tbaa !0
  %108 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 29), align 4, !tbaa !0
  %xor357 = xor i32 %xor341, %108
  %109 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 7, i64 26), align 4, !tbaa !0
  %xor358 = xor i32 %xor357, %109
  store i32 %xor358, i32* @hash, align 4, !tbaa !0
  br label %return

if.else361:                                       ; preds = %if.end320
  store i32 %1, i32* @bking_loc, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx365 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom45
  store i32 6, i32* %arrayidx365, align 4, !tbaa !0
  %arrayidx367 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom21
  %110 = load i32* %arrayidx367, align 4, !tbaa !0
  %dec368 = add nsw i32 %110, -1
  store i32 %dec368, i32* %arrayidx367, align 4, !tbaa !0
  %arrayidx370 = getelementptr inbounds [144 x i32]* @moved, i64 0, i64 %idxprom45
  %111 = load i32* %arrayidx370, align 4, !tbaa !0
  %dec371 = add nsw i32 %111, -1
  store i32 %dec371, i32* %arrayidx370, align 4, !tbaa !0
  %112 = load i32* @white_to_move, align 4, !tbaa !0
  %xor372 = xor i32 %112, 1
  store i32 %xor372, i32* @white_to_move, align 4, !tbaa !0
  %arrayidx374 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom45
  %113 = load i32* %arrayidx374, align 4, !tbaa !0
  %114 = load i32* @hash, align 4, !tbaa !0
  %xor375 = xor i32 %114, %113
  %arrayidx377 = getelementptr inbounds [14 x [144 x i32]]* @zobrist, i64 0, i64 6, i64 %idxprom21
  %115 = load i32* %arrayidx377, align 4, !tbaa !0
  %xor378 = xor i32 %xor375, %115
  store i32 %xor378, i32* @hash, align 4, !tbaa !0
  switch i32 %5, label %return [
    i32 3, label %if.then380
    i32 4, label %if.then389
  ]

if.then380:                                       ; preds = %if.else361
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !tbaa !0
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !tbaa !0
  %116 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !tbaa !0
  %dec381 = add nsw i32 %116, -1
  store i32 %dec381, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 117), align 4, !tbaa !0
  %117 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !tbaa !0
  %dec382 = add nsw i32 %117, -1
  store i32 %dec382, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 115), align 4, !tbaa !0
  store i32 0, i32* @black_castled, align 4, !tbaa !0
  %118 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 115), align 4, !tbaa !0
  store i32 %118, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 117), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 115), align 4, !tbaa !0
  %idxprom383 = sext i32 %118 to i64
  %arrayidx384 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom383
  store i32 117, i32* %arrayidx384, align 4, !tbaa !0
  %119 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 117), align 4, !tbaa !0
  %xor385 = xor i32 %xor378, %119
  %120 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 115), align 4, !tbaa !0
  %xor386 = xor i32 %xor385, %120
  store i32 %xor386, i32* @hash, align 4, !tbaa !0
  br label %return

if.then389:                                       ; preds = %if.else361
  store i32 8, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 110), align 4, !tbaa !0
  store i32 13, i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 113), align 4, !tbaa !0
  %121 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !tbaa !0
  %dec390 = add nsw i32 %121, -1
  store i32 %dec390, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 110), align 4, !tbaa !0
  %122 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !tbaa !0
  %dec391 = add nsw i32 %122, -1
  store i32 %dec391, i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 113), align 4, !tbaa !0
  store i32 0, i32* @black_castled, align 4, !tbaa !0
  %123 = load i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 113), align 4, !tbaa !0
  store i32 %123, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 110), align 4, !tbaa !0
  store i32 0, i32* getelementptr inbounds ([144 x i32]* @squares, i64 0, i64 113), align 4, !tbaa !0
  %idxprom392 = sext i32 %123 to i64
  %arrayidx393 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %idxprom392
  store i32 110, i32* %arrayidx393, align 4, !tbaa !0
  %124 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 110), align 4, !tbaa !0
  %xor394 = xor i32 %xor378, %124
  %125 = load i32* getelementptr inbounds ([14 x [144 x i32]]* @zobrist, i64 0, i64 8, i64 113), align 4, !tbaa !0
  %xor395 = xor i32 %xor394, %125
  store i32 %xor395, i32* @hash, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else361, %if.then324, %if.then389, %if.then380, %if.then352, %if.then343, %if.end296, %if.then272, %if.then238, %if.end211, %if.then166, %if.end142, %if.then97, %if.then
  ret void
}

; Function Attrs: optsize
declare void @DropaddHolding(i32, i32) #1

; Function Attrs: optsize
declare void @removeHolding(i32, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

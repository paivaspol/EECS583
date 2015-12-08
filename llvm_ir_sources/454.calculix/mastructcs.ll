; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/mastructcs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"C3D20R\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"C3D20 \00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"C3D8R \00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"C3D8  \00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"CYCLIC\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"SUBCYCLIC\00", align 1
@.str6 = private unnamed_addr constant [31 x i8] c"error in mastruct: zero column\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"%d*2147483647+%d\0A\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"%f\0A\0A\00", align 1
@str = private unnamed_addr constant [20 x i8] c"number of equations\00"
@str15 = private unnamed_addr constant [34 x i8] c"number of nonzero matrix elements\00"
@str16 = private unnamed_addr constant [28 x i8] c"total length of the skyline\00"
@str17 = private unnamed_addr constant [39 x i8] c"percentage of nonzero skyline elements\00"
@str18 = private unnamed_addr constant [43 x i8] c"*ERROR: no degrees of freedom in the model\00"

; Function Attrs: nounwind optsize uwtable
define void @mastructcs(i32* nocapture %nk, i32* nocapture %kon, i32* nocapture %ipkon, i8* %lakon, i32 %lakonLen, i32* nocapture %ne, i32* nocapture %nodeboun, i32* nocapture %ndirboun, i32* nocapture %nboun, i32* nocapture %ipompc, i32* %nodempc, i32* %nmpc, i32* nocapture %nactdof, i32* %icol, i32* nocapture %jq, i32** nocapture %mast1p, i32** nocapture %irowp, i32* nocapture %isolver, i32* nocapture %neq, i32* nocapture %nnn, i32* %ikmpc, i32* nocapture %ilmpc, i32* %ikcol, i32* %ipointer, i32* nocapture %nsky, i32* nocapture %nzs, i32* nocapture %nmethod, i32* %ics, i32* %ns, i8* %labmpc, i32 %labmpcLen) #0 {
entry:
  %id = alloca i32, align 4
  %jdof1 = alloca i32, align 4
  %jdof2 = alloca i32, align 4
  %idof1 = alloca i32, align 4
  %idof2 = alloca i32, align 4
  %id1 = alloca i32, align 4
  %id2 = alloca i32, align 4
  %nmast = alloca i32, align 4
  %ifree = alloca i32, align 4
  %itot = alloca i32, align 4
  %nzs_ = alloca i32, align 4
  %kflag = alloca i32, align 4
  %isize = alloca i32, align 4
  %mast1 = alloca i32*, align 8
  %irow = alloca i32*, align 8
  %inode = alloca i32, align 4
  %inode1 = alloca i32, align 4
  %inode2 = alloca i32, align 4
  %kdof1 = alloca i32, align 4
  %kdof2 = alloca i32, align 4
  %0 = load i32** %mast1p, align 8, !tbaa !0
  store i32* %0, i32** %mast1, align 8, !tbaa !0
  %1 = load i32** %irowp, align 8, !tbaa !0
  store i32* %1, i32** %irow, align 8, !tbaa !0
  store i32 2, i32* %kflag, align 4, !tbaa !3
  %2 = load i32* %nzs, align 4, !tbaa !3
  store i32 %2, i32* %nzs_, align 4, !tbaa !3
  %3 = load i32* %nk, align 4, !tbaa !3
  %cmp1255 = icmp sgt i32 %3, 0
  br i1 %cmp1255, label %for.body, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body, %entry
  %4 = load i32* %ne, align 4, !tbaa !3
  %cmp21252 = icmp sgt i32 %4, 0
  br i1 %cmp21252, label %for.body3, label %for.cond55.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv1300 = phi i64 [ %indvars.iv.next1301, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %nactdof, i64 %indvars.iv1300
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next1301 = add i64 %indvars.iv1300, 1
  %5 = load i32* %nk, align 4, !tbaa !3
  %mul = shl nsw i32 %5, 2
  %6 = trunc i64 %indvars.iv.next1301 to i32
  %cmp = icmp slt i32 %6, %mul
  br i1 %cmp, label %for.body, label %for.cond1.preheader

for.cond55.preheader:                             ; preds = %for.inc52, %for.cond1.preheader
  %7 = load i32* %nmpc, align 4, !tbaa !3
  %cmp561248 = icmp sgt i32 %7, 0
  br i1 %cmp561248, label %for.body57, label %for.cond83.preheader

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc52
  %8 = phi i32 [ %17, %for.inc52 ], [ %4, %for.cond1.preheader ]
  %indvars.iv1298 = phi i64 [ %indvars.iv.next1299, %for.inc52 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv1298
  %9 = load i32* %arrayidx5, align 4, !tbaa !3
  %cmp6 = icmp slt i32 %9, 0
  br i1 %cmp6, label %for.inc52, label %if.end

if.end:                                           ; preds = %for.body3
  %10 = trunc i64 %indvars.iv1298 to i32
  %mul9 = shl nsw i32 %10, 3
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds i8* %lakon, i64 %idxprom10
  %call = call i32 @strcmp1(i8* %arrayidx11, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #4
  %cmp12 = icmp eq i32 %call, 0
  br i1 %cmp12, label %if.end33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call16 = call i32 @strcmp1(i8* %arrayidx11, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end33, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %call22 = call i32 @strcmp1(i8* %arrayidx11, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.end33, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.else
  %call28 = call i32 @strcmp1(i8* %arrayidx11, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp29 = icmp eq i32 %call28, 0
  %.1191 = select i1 %cmp29, i32 8, i32 10
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false24, %if.else, %if.end, %lor.lhs.false
  %nope.0 = phi i32 [ 20, %lor.lhs.false ], [ 20, %if.end ], [ 8, %if.else ], [ %.1191, %lor.lhs.false24 ]
  %11 = sext i32 %9 to i64
  br label %for.body36

for.body36:                                       ; preds = %if.end33, %for.inc49
  %indvars.iv1295 = phi i64 [ 0, %if.end33 ], [ %indvars.iv.next1296, %for.inc49 ]
  %12 = add nsw i64 %indvars.iv1295, %11
  %arrayidx38 = getelementptr inbounds i32* %kon, i64 %12
  %13 = load i32* %arrayidx38, align 4, !tbaa !3
  %sub = shl i32 %13, 2
  %mul42 = add i32 %sub, -4
  %14 = sext i32 %mul42 to i64
  br label %for.body41

for.body41:                                       ; preds = %for.body41, %for.body36
  %indvars.iv1291 = phi i64 [ 1, %for.body36 ], [ %indvars.iv.next1292, %for.body41 ]
  %15 = add nsw i64 %14, %indvars.iv1291
  %arrayidx45 = getelementptr inbounds i32* %nactdof, i64 %15
  store i32 1, i32* %arrayidx45, align 4, !tbaa !3
  %indvars.iv.next1292 = add i64 %indvars.iv1291, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1292 to i32
  %exitcond1294 = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond1294, label %for.inc49, label %for.body41

for.inc49:                                        ; preds = %for.body41
  %indvars.iv.next1296 = add i64 %indvars.iv1295, 1
  %16 = trunc i64 %indvars.iv.next1296 to i32
  %cmp35 = icmp slt i32 %16, %nope.0
  br i1 %cmp35, label %for.body36, label %for.inc52.loopexit

for.inc52.loopexit:                               ; preds = %for.inc49
  %.pre1309 = load i32* %ne, align 4, !tbaa !3
  br label %for.inc52

for.inc52:                                        ; preds = %for.inc52.loopexit, %for.body3
  %17 = phi i32 [ %.pre1309, %for.inc52.loopexit ], [ %8, %for.body3 ]
  %indvars.iv.next1299 = add i64 %indvars.iv1298, 1
  %18 = trunc i64 %indvars.iv.next1299 to i32
  %cmp2 = icmp slt i32 %18, %17
  br i1 %cmp2, label %for.body3, label %for.cond55.preheader

for.cond83.preheader:                             ; preds = %for.inc80, %for.cond55.preheader
  %19 = phi i32 [ %7, %for.cond55.preheader ], [ %26, %for.inc80 ]
  %20 = load i32* %nboun, align 4, !tbaa !3
  %cmp841246 = icmp sgt i32 %20, 0
  br i1 %cmp841246, label %for.body85, label %for.cond98.preheader

for.body57:                                       ; preds = %for.cond55.preheader, %for.inc80
  %indvars.iv1289 = phi i64 [ %indvars.iv.next1290, %for.inc80 ], [ 0, %for.cond55.preheader ]
  %arrayidx59 = getelementptr inbounds i32* %ipompc, i64 %indvars.iv1289
  %21 = load i32* %arrayidx59, align 4, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.body, %for.body57
  %index.0.in = phi i32 [ %21, %for.body57 ], [ %25, %do.body ]
  %22 = mul i32 %index.0.in, 3
  %mul61 = add i32 %22, -3
  %idxprom62 = sext i32 %mul61 to i64
  %arrayidx63 = getelementptr inbounds i32* %nodempc, i64 %idxprom62
  %23 = load i32* %arrayidx63, align 4, !tbaa !3
  %mul64 = shl i32 %23, 2
  %add66 = add i32 %22, -2
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds i32* %nodempc, i64 %idxprom67
  %24 = load i32* %arrayidx68, align 4, !tbaa !3
  %add69 = add i32 %24, -4
  %sub70 = add i32 %add69, %mul64
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i32* %nactdof, i64 %idxprom71
  store i32 1, i32* %arrayidx72, align 4, !tbaa !3
  %add74 = add i32 %22, -1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds i32* %nodempc, i64 %idxprom75
  %25 = load i32* %arrayidx76, align 4, !tbaa !3
  %cmp77 = icmp eq i32 %25, 0
  br i1 %cmp77, label %for.inc80, label %do.body

for.inc80:                                        ; preds = %do.body
  %indvars.iv.next1290 = add i64 %indvars.iv1289, 1
  %26 = load i32* %nmpc, align 4, !tbaa !3
  %27 = trunc i64 %indvars.iv.next1290 to i32
  %cmp56 = icmp slt i32 %27, %26
  br i1 %cmp56, label %for.body57, label %for.cond83.preheader

for.cond83.for.cond98.preheader_crit_edge:        ; preds = %for.body85
  %.pre = load i32* %nmpc, align 4, !tbaa !3
  br label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %for.cond83.for.cond98.preheader_crit_edge, %for.cond83.preheader
  %28 = phi i32 [ %.pre, %for.cond83.for.cond98.preheader_crit_edge ], [ %19, %for.cond83.preheader ]
  %cmp991244 = icmp sgt i32 %28, 0
  br i1 %cmp991244, label %for.body100, label %for.end118

for.body85:                                       ; preds = %for.cond83.preheader, %for.body85
  %indvars.iv1287 = phi i64 [ %indvars.iv.next1288, %for.body85 ], [ 0, %for.cond83.preheader ]
  %arrayidx87 = getelementptr inbounds i32* %nodeboun, i64 %indvars.iv1287
  %29 = load i32* %arrayidx87, align 4, !tbaa !3
  %sub88 = shl i32 %29, 2
  %mul89 = add i32 %sub88, -4
  %arrayidx91 = getelementptr inbounds i32* %ndirboun, i64 %indvars.iv1287
  %30 = load i32* %arrayidx91, align 4, !tbaa !3
  %add92 = add nsw i32 %mul89, %30
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds i32* %nactdof, i64 %idxprom93
  store i32 0, i32* %arrayidx94, align 4, !tbaa !3
  %indvars.iv.next1288 = add i64 %indvars.iv1287, 1
  %31 = load i32* %nboun, align 4, !tbaa !3
  %32 = trunc i64 %indvars.iv.next1288 to i32
  %cmp84 = icmp slt i32 %32, %31
  br i1 %cmp84, label %for.body85, label %for.cond83.for.cond98.preheader_crit_edge

for.body100:                                      ; preds = %for.cond98.preheader, %for.body100
  %indvars.iv1285 = phi i64 [ %indvars.iv.next1286, %for.body100 ], [ 0, %for.cond98.preheader ]
  %arrayidx102 = getelementptr inbounds i32* %ipompc, i64 %indvars.iv1285
  %33 = load i32* %arrayidx102, align 4, !tbaa !3
  %34 = mul i32 %33, 3
  %mul104 = add i32 %34, -3
  %idxprom105 = sext i32 %mul104 to i64
  %arrayidx106 = getelementptr inbounds i32* %nodempc, i64 %idxprom105
  %35 = load i32* %arrayidx106, align 4, !tbaa !3
  %mul107 = shl i32 %35, 2
  %add109 = add i32 %34, -2
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds i32* %nodempc, i64 %idxprom110
  %36 = load i32* %arrayidx111, align 4, !tbaa !3
  %add112 = add i32 %36, -4
  %sub113 = add i32 %add112, %mul107
  %idxprom114 = sext i32 %sub113 to i64
  %arrayidx115 = getelementptr inbounds i32* %nactdof, i64 %idxprom114
  store i32 0, i32* %arrayidx115, align 4, !tbaa !3
  %indvars.iv.next1286 = add i64 %indvars.iv1285, 1
  %37 = load i32* %nmpc, align 4, !tbaa !3
  %38 = trunc i64 %indvars.iv.next1286 to i32
  %cmp99 = icmp slt i32 %38, %37
  br i1 %cmp99, label %for.body100, label %for.end118

for.end118:                                       ; preds = %for.body100, %for.cond98.preheader
  store i32 0, i32* %neq, align 4, !tbaa !3
  %39 = load i32* %nk, align 4, !tbaa !3
  %cmp1201242 = icmp sgt i32 %39, 0
  br i1 %cmp1201242, label %for.cond122.preheader, label %for.end148.thread

for.end148.thread:                                ; preds = %for.end118
  store i32 0, i32* %ifree, align 4, !tbaa !3
  br label %for.cond158.preheader

for.cond122.preheader:                            ; preds = %for.end118, %for.inc146
  %indvars.iv1283 = phi i64 [ %indvars.iv.next1284, %for.inc146 ], [ 0, %for.end118 ]
  %arrayidx126 = getelementptr inbounds i32* %nnn, i64 %indvars.iv1283
  br label %for.body124

for.body124:                                      ; preds = %for.inc143, %for.cond122.preheader
  %j.11241 = phi i32 [ 1, %for.cond122.preheader ], [ %inc144, %for.inc143 ]
  %40 = load i32* %arrayidx126, align 4, !tbaa !3
  %mul127 = shl i32 %40, 2
  %add128 = add i32 %j.11241, -4
  %sub129 = add i32 %add128, %mul127
  %idxprom130 = sext i32 %sub129 to i64
  %arrayidx131 = getelementptr inbounds i32* %nactdof, i64 %idxprom130
  %41 = load i32* %arrayidx131, align 4, !tbaa !3
  %cmp132 = icmp eq i32 %41, 0
  br i1 %cmp132, label %for.inc143, label %if.then133

if.then133:                                       ; preds = %for.body124
  %42 = load i32* %neq, align 4, !tbaa !3
  %inc134 = add nsw i32 %42, 1
  store i32 %inc134, i32* %neq, align 4, !tbaa !3
  %43 = load i32* %arrayidx126, align 4, !tbaa !3
  %mul137 = shl i32 %43, 2
  %sub139 = add i32 %add128, %mul137
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds i32* %nactdof, i64 %idxprom140
  store i32 %inc134, i32* %arrayidx141, align 4, !tbaa !3
  br label %for.inc143

for.inc143:                                       ; preds = %for.body124, %if.then133
  %inc144 = add nsw i32 %j.11241, 1
  %exitcond1282 = icmp eq i32 %inc144, 4
  br i1 %exitcond1282, label %for.inc146, label %for.body124

for.inc146:                                       ; preds = %for.inc143
  %indvars.iv.next1284 = add i64 %indvars.iv1283, 1
  %44 = load i32* %nk, align 4, !tbaa !3
  %45 = trunc i64 %indvars.iv.next1284 to i32
  %cmp120 = icmp slt i32 %45, %44
  br i1 %cmp120, label %for.cond122.preheader, label %for.end148

for.end148:                                       ; preds = %for.inc146
  store i32 0, i32* %ifree, align 4, !tbaa !3
  %cmp1511239 = icmp sgt i32 %44, 0
  br i1 %cmp1511239, label %for.body152, label %for.cond158.preheader

for.cond158.preheader:                            ; preds = %for.body152, %for.end148.thread, %for.end148
  %46 = load i32* %ne, align 4, !tbaa !3
  %cmp1591236 = icmp sgt i32 %46, 0
  br i1 %cmp1591236, label %for.body160.lr.ph, label %for.end646

for.body160.lr.ph:                                ; preds = %for.cond158.preheader
  %arrayidx438 = getelementptr inbounds i32* %ns, i64 3
  br label %for.body160

for.body152:                                      ; preds = %for.end148, %for.body152
  %indvars.iv1280 = phi i64 [ %indvars.iv.next1281, %for.body152 ], [ 0, %for.end148 ]
  %arrayidx154 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv1280
  store i32 0, i32* %arrayidx154, align 4, !tbaa !3
  %indvars.iv.next1281 = add i64 %indvars.iv1280, 1
  %47 = load i32* %nk, align 4, !tbaa !3
  %mul150 = mul nsw i32 %47, 6
  %48 = trunc i64 %indvars.iv.next1281 to i32
  %cmp151 = icmp slt i32 %48, %mul150
  br i1 %cmp151, label %for.body152, label %for.cond158.preheader

for.body160:                                      ; preds = %for.body160.lr.ph, %for.inc644
  %49 = phi i32 [ %46, %for.body160.lr.ph ], [ %159, %for.inc644 ]
  %indvars.iv1278 = phi i64 [ 0, %for.body160.lr.ph ], [ %indvars.iv.next1279, %for.inc644 ]
  %arrayidx162 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv1278
  %50 = load i32* %arrayidx162, align 4, !tbaa !3
  %cmp163 = icmp slt i32 %50, 0
  br i1 %cmp163, label %for.inc644, label %if.end165

if.end165:                                        ; preds = %for.body160
  %51 = trunc i64 %indvars.iv1278 to i32
  %mul168 = shl nsw i32 %51, 3
  %idxprom169 = sext i32 %mul168 to i64
  %arrayidx170 = getelementptr inbounds i8* %lakon, i64 %idxprom169
  %call171 = call i32 @strcmp1(i8* %arrayidx170, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #4
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.end195, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %if.end165
  %call177 = call i32 @strcmp1(i8* %arrayidx170, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %if.end195, label %if.else180

if.else180:                                       ; preds = %lor.lhs.false173
  %call184 = call i32 @strcmp1(i8* %arrayidx170, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp185 = icmp eq i32 %call184, 0
  br i1 %cmp185, label %if.end195, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %if.else180
  %call190 = call i32 @strcmp1(i8* %arrayidx170, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp191 = icmp eq i32 %call190, 0
  %.1192 = select i1 %cmp191, i32 24, i32 30
  br label %if.end195

if.end195:                                        ; preds = %lor.lhs.false186, %if.else180, %if.end165, %lor.lhs.false173
  %nope.1 = phi i32 [ 60, %lor.lhs.false173 ], [ 60, %if.end165 ], [ 24, %if.else180 ], [ %.1192, %lor.lhs.false186 ]
  br label %for.body199

for.body199:                                      ; preds = %if.end195, %for.inc641
  %jj.01235 = phi i32 [ 0, %if.end195 ], [ %inc642, %for.inc641 ]
  %div = sdiv i32 %jj.01235, 3
  %52 = mul i32 %div, -3
  %sub201 = add i32 %52, %jj.01235
  %add202 = add nsw i32 %div, %50
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds i32* %kon, i64 %idxprom203
  %53 = load i32* %arrayidx204, align 4, !tbaa !3
  %sub205 = shl i32 %53, 2
  %add207 = add i32 %sub205, -3
  %add208 = add i32 %add207, %sub201
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds i32* %nactdof, i64 %idxprom209
  %54 = load i32* %arrayidx210, align 4, !tbaa !3
  store i32 %54, i32* %jdof1, align 4, !tbaa !3
  %cmp2131233 = icmp slt i32 %jj.01235, %nope.1
  br i1 %cmp2131233, label %for.body214.lr.ph, label %for.inc641

for.body214.lr.ph:                                ; preds = %for.body199
  %mul329 = mul nsw i32 %53, 7
  %add330 = add i32 %sub201, -6
  %sub331 = add i32 %add330, %mul329
  %add240 = add nsw i32 %mul329, %sub201
  br label %for.body214

for.body214:                                      ; preds = %for.inc638.for.body214_crit_edge, %for.body214.lr.ph
  %55 = phi i32 [ %54, %for.body214.lr.ph ], [ %.pre1313, %for.inc638.for.body214_crit_edge ]
  %ll.01234 = phi i32 [ %jj.01235, %for.body214.lr.ph ], [ %inc639, %for.inc638.for.body214_crit_edge ]
  %div215 = sdiv i32 %ll.01234, 3
  %56 = mul i32 %div215, -3
  %sub217 = add i32 %56, %ll.01234
  %add218 = add nsw i32 %div215, %50
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds i32* %kon, i64 %idxprom219
  %57 = load i32* %arrayidx220, align 4, !tbaa !3
  %sub221 = shl i32 %57, 2
  %add223 = add i32 %sub221, -3
  %add224 = add i32 %add223, %sub217
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds i32* %nactdof, i64 %idxprom225
  %58 = load i32* %arrayidx226, align 4, !tbaa !3
  store i32 %58, i32* %jdof2, align 4, !tbaa !3
  %cmp227 = icmp eq i32 %55, 0
  %cmp228 = icmp eq i32 %58, 0
  %or.cond = or i1 %cmp227, %cmp228
  br i1 %or.cond, label %if.else232, label %if.then229

if.then229:                                       ; preds = %for.body214
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %jdof1, i32* %jdof2, i32* %ifree, i32* %nzs_) #4
  %59 = load i32* %jdof1, align 4, !tbaa !3
  %60 = load i32* %neq, align 4, !tbaa !3
  %add230 = add nsw i32 %60, %59
  store i32 %add230, i32* %kdof1, align 4, !tbaa !3
  %61 = load i32* %jdof2, align 4, !tbaa !3
  %add231 = add nsw i32 %60, %61
  store i32 %add231, i32* %kdof2, align 4, !tbaa !3
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %kdof1, i32* %kdof2, i32* %ifree, i32* %nzs_) #4
  br label %for.inc638

if.else232:                                       ; preds = %for.body214
  %62 = or i32 %55, %58
  %brmerge = icmp eq i32 %62, 0
  br i1 %brmerge, label %if.else328, label %if.then236

if.then236:                                       ; preds = %if.else232
  br i1 %cmp227, label %if.then238, label %if.else242

if.then238:                                       ; preds = %if.then236
  store i32 %58, i32* %idof1, align 4, !tbaa !3
  br label %if.end246

if.else242:                                       ; preds = %if.then236
  store i32 %55, i32* %idof1, align 4, !tbaa !3
  %mul243 = mul nsw i32 %57, 7
  %add244 = add nsw i32 %mul243, %sub217
  br label %if.end246

if.end246:                                        ; preds = %if.else242, %if.then238
  %storemerge1177.in = phi i32 [ %add244, %if.else242 ], [ %add240, %if.then238 ]
  %storemerge1177 = add nsw i32 %storemerge1177.in, -6
  store i32 %storemerge1177, i32* %idof2, align 4, !tbaa !3
  %63 = load i32* %nmpc, align 4, !tbaa !3
  %cmp247 = icmp sgt i32 %63, 0
  br i1 %cmp247, label %if.then248, label %for.inc638

if.then248:                                       ; preds = %if.end246
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id) #4
  %64 = load i32* %id, align 4, !tbaa !3
  %cmp249 = icmp sgt i32 %64, 0
  br i1 %cmp249, label %land.lhs.true250, label %for.inc638

land.lhs.true250:                                 ; preds = %if.then248
  %sub251 = add nsw i32 %64, -1
  %idxprom252 = sext i32 %sub251 to i64
  %arrayidx253 = getelementptr inbounds i32* %ikmpc, i64 %idxprom252
  %65 = load i32* %arrayidx253, align 4, !tbaa !3
  %66 = load i32* %idof2, align 4, !tbaa !3
  %cmp254 = icmp eq i32 %65, %66
  br i1 %cmp254, label %if.then255, label %for.inc638

if.then255:                                       ; preds = %land.lhs.true250
  %arrayidx258 = getelementptr inbounds i32* %ilmpc, i64 %idxprom252
  %67 = load i32* %arrayidx258, align 4, !tbaa !3
  store i32 %67, i32* %id1, align 4, !tbaa !3
  %sub259 = add nsw i32 %67, -1
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr inbounds i32* %ipompc, i64 %idxprom260
  %68 = load i32* %arrayidx261, align 4, !tbaa !3
  %mul262 = mul nsw i32 %68, 3
  %sub263 = add nsw i32 %mul262, -1
  %idxprom264 = sext i32 %sub263 to i64
  %arrayidx265 = getelementptr inbounds i32* %nodempc, i64 %idxprom264
  %69 = load i32* %arrayidx265, align 4, !tbaa !3
  %cmp266 = icmp eq i32 %69, 0
  br i1 %cmp266, label %for.inc638, label %while.body

while.body:                                       ; preds = %if.then255, %if.end318.while.body_crit_edge
  %70 = phi i32 [ %.pre1316, %if.end318.while.body_crit_edge ], [ %67, %if.then255 ]
  %index.1 = phi i32 [ %86, %if.end318.while.body_crit_edge ], [ %69, %if.then255 ]
  %mul269 = mul nsw i32 %index.1, 3
  %sub270 = add nsw i32 %mul269, -3
  %idxprom271 = sext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds i32* %nodempc, i64 %idxprom271
  %71 = load i32* %arrayidx272, align 4, !tbaa !3
  store i32 %71, i32* %inode, align 4, !tbaa !3
  %72 = mul i32 %70, 20
  %mul274 = add i32 %72, -20
  %idxprom275 = sext i32 %mul274 to i64
  %arrayidx276 = getelementptr inbounds i8* %labmpc, i64 %idxprom275
  %call277 = call i32 @strcmp1(i8* %arrayidx276, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %if.end299, label %if.else280

if.else280:                                       ; preds = %while.body
  %73 = load i32* %id1, align 4, !tbaa !3
  %74 = mul i32 %73, 20
  %mul282 = add i32 %74, -20
  %idxprom283 = sext i32 %mul282 to i64
  %arrayidx284 = getelementptr inbounds i8* %labmpc, i64 %idxprom283
  %call285 = call i32 @strcmp1(i8* %arrayidx284, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #4
  %cmp286 = icmp eq i32 %call285, 0
  br i1 %cmp286, label %if.then287, label %if.end299

if.then287:                                       ; preds = %if.else280
  call void @nident_(i32* %ics, i32* %inode, i32* %arrayidx438, i32* %id) #4
  %75 = load i32* %id, align 4, !tbaa !3
  %cmp289 = icmp sgt i32 %75, 0
  br i1 %cmp289, label %if.then290, label %if.end299

if.then290:                                       ; preds = %if.then287
  %sub291 = add nsw i32 %75, -1
  %idxprom292 = sext i32 %sub291 to i64
  %arrayidx293 = getelementptr inbounds i32* %ics, i64 %idxprom292
  %76 = load i32* %arrayidx293, align 4, !tbaa !3
  %77 = load i32* %inode, align 4, !tbaa !3
  %cmp294 = icmp eq i32 %76, %77
  %. = zext i1 %cmp294 to i32
  br label %if.end299

if.end299:                                        ; preds = %if.then287, %if.else280, %while.body, %if.then290
  %icomplex.0 = phi i32 [ %., %if.then290 ], [ 1, %while.body ], [ 0, %if.else280 ], [ 0, %if.then287 ]
  %78 = load i32* %inode, align 4, !tbaa !3
  %mul300 = shl i32 %78, 2
  %sub302 = add nsw i32 %mul269, -2
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds i32* %nodempc, i64 %idxprom303
  %79 = load i32* %arrayidx304, align 4, !tbaa !3
  %add305 = add i32 %79, -4
  %sub306 = add i32 %add305, %mul300
  %idxprom307 = sext i32 %sub306 to i64
  %arrayidx308 = getelementptr inbounds i32* %nactdof, i64 %idxprom307
  %80 = load i32* %arrayidx308, align 4, !tbaa !3
  store i32 %80, i32* %idof2, align 4, !tbaa !3
  %cmp309 = icmp eq i32 %80, 0
  br i1 %cmp309, label %if.end318, label %if.then310

if.then310:                                       ; preds = %if.end299
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  %81 = load i32* %idof1, align 4, !tbaa !3
  %82 = load i32* %neq, align 4, !tbaa !3
  %add311 = add nsw i32 %82, %81
  store i32 %add311, i32* %kdof1, align 4, !tbaa !3
  %83 = load i32* %idof2, align 4, !tbaa !3
  %add312 = add nsw i32 %82, %83
  store i32 %add312, i32* %kdof2, align 4, !tbaa !3
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %kdof1, i32* %kdof2, i32* %ifree, i32* %nzs_) #4
  %cmp313 = icmp eq i32 %icomplex.0, 1
  br i1 %cmp313, label %land.lhs.true314, label %if.end318

land.lhs.true314:                                 ; preds = %if.then310
  %84 = load i32* %idof1, align 4, !tbaa !3
  %85 = load i32* %idof2, align 4, !tbaa !3
  %cmp315 = icmp eq i32 %84, %85
  br i1 %cmp315, label %if.end318, label %if.then316

if.then316:                                       ; preds = %land.lhs.true314
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %kdof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %kdof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end318

if.end318:                                        ; preds = %land.lhs.true314, %if.end299, %if.then310, %if.then316
  %sub320 = add nsw i32 %mul269, -1
  %idxprom321 = sext i32 %sub320 to i64
  %arrayidx322 = getelementptr inbounds i32* %nodempc, i64 %idxprom321
  %86 = load i32* %arrayidx322, align 4, !tbaa !3
  %cmp323 = icmp eq i32 %86, 0
  br i1 %cmp323, label %for.inc638, label %if.end318.while.body_crit_edge

if.end318.while.body_crit_edge:                   ; preds = %if.end318
  %.pre1316 = load i32* %id1, align 4, !tbaa !3
  br label %while.body

if.else328:                                       ; preds = %if.else232
  store i32 %sub331, i32* %idof1, align 4, !tbaa !3
  %mul332 = mul nsw i32 %57, 7
  %add333 = add i32 %sub217, -6
  %sub334 = add i32 %add333, %mul332
  store i32 %sub334, i32* %idof2, align 4, !tbaa !3
  %87 = load i32* %nmpc, align 4, !tbaa !3
  %cmp335 = icmp sgt i32 %87, 0
  br i1 %cmp335, label %if.then336, label %for.inc638

if.then336:                                       ; preds = %if.else328
  call void @nident_(i32* %ikmpc, i32* %idof1, i32* %nmpc, i32* %id1) #4
  %88 = load i32* %id1, align 4, !tbaa !3
  %cmp337 = icmp sgt i32 %88, 0
  br i1 %cmp337, label %land.lhs.true338, label %if.end344

land.lhs.true338:                                 ; preds = %if.then336
  %sub339 = add nsw i32 %88, -1
  %idxprom340 = sext i32 %sub339 to i64
  %arrayidx341 = getelementptr inbounds i32* %ikmpc, i64 %idxprom340
  %89 = load i32* %arrayidx341, align 4, !tbaa !3
  %90 = load i32* %idof1, align 4, !tbaa !3
  %cmp342 = icmp eq i32 %89, %90
  %.1178 = zext i1 %cmp342 to i32
  br label %if.end344

if.end344:                                        ; preds = %land.lhs.true338, %if.then336
  %mpc1.0 = phi i32 [ 0, %if.then336 ], [ %.1178, %land.lhs.true338 ]
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id2) #4
  %91 = load i32* %id2, align 4, !tbaa !3
  %cmp345 = icmp sgt i32 %91, 0
  br i1 %cmp345, label %if.end353, label %for.inc638

if.end353:                                        ; preds = %if.end344
  %sub347 = add nsw i32 %91, -1
  %idxprom348 = sext i32 %sub347 to i64
  %arrayidx349 = getelementptr inbounds i32* %ikmpc, i64 %idxprom348
  %92 = load i32* %arrayidx349, align 4, !tbaa !3
  %93 = load i32* %idof2, align 4, !tbaa !3
  %cmp350 = icmp eq i32 %92, %93
  %cmp354 = icmp eq i32 %mpc1.0, 1
  %or.cond1180 = and i1 %cmp354, %cmp350
  br i1 %or.cond1180, label %if.then357, label %for.inc638

if.then357:                                       ; preds = %if.end353
  %94 = load i32* %id1, align 4, !tbaa !3
  %sub358 = add nsw i32 %94, -1
  %idxprom359 = sext i32 %sub358 to i64
  %arrayidx360 = getelementptr inbounds i32* %ilmpc, i64 %idxprom359
  %95 = load i32* %arrayidx360, align 4, !tbaa !3
  store i32 %95, i32* %id1, align 4, !tbaa !3
  %arrayidx363 = getelementptr inbounds i32* %ilmpc, i64 %idxprom348
  %96 = load i32* %arrayidx363, align 4, !tbaa !3
  store i32 %96, i32* %id2, align 4, !tbaa !3
  %cmp364 = icmp eq i32 %95, %96
  %sub366 = add nsw i32 %95, -1
  %idxprom367 = sext i32 %sub366 to i64
  %arrayidx368 = getelementptr inbounds i32* %ipompc, i64 %idxprom367
  %97 = load i32* %arrayidx368, align 4, !tbaa !3
  %mul369 = mul nsw i32 %97, 3
  %sub370 = add nsw i32 %mul369, -1
  %idxprom371 = sext i32 %sub370 to i64
  %arrayidx372 = getelementptr inbounds i32* %nodempc, i64 %idxprom371
  %98 = load i32* %arrayidx372, align 4, !tbaa !3
  %cmp373 = icmp eq i32 %98, 0
  br i1 %cmp364, label %if.then365, label %if.else491

if.then365:                                       ; preds = %if.then357
  br i1 %cmp373, label %for.inc638, label %while.body376

while.body376:                                    ; preds = %if.then365, %while.end482.while.body376_crit_edge
  %99 = phi i32 [ %.pre1314, %while.end482.while.body376_crit_edge ], [ %95, %if.then365 ]
  %index1.0 = phi i32 [ %126, %while.end482.while.body376_crit_edge ], [ %98, %if.then365 ]
  %mul377 = mul nsw i32 %index1.0, 3
  %sub378 = add nsw i32 %mul377, -3
  %idxprom379 = sext i32 %sub378 to i64
  %arrayidx380 = getelementptr inbounds i32* %nodempc, i64 %idxprom379
  %100 = load i32* %arrayidx380, align 4, !tbaa !3
  store i32 %100, i32* %inode1, align 4, !tbaa !3
  %101 = mul i32 %99, 20
  %mul382 = add i32 %101, -20
  %idxprom383 = sext i32 %mul382 to i64
  %arrayidx384 = getelementptr inbounds i8* %labmpc, i64 %idxprom383
  %call385 = call i32 @strcmp1(i8* %arrayidx384, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp386 = icmp eq i32 %call385, 0
  br i1 %cmp386, label %if.end407, label %if.else388

if.else388:                                       ; preds = %while.body376
  %102 = load i32* %id1, align 4, !tbaa !3
  %103 = mul i32 %102, 20
  %mul390 = add i32 %103, -20
  %idxprom391 = sext i32 %mul390 to i64
  %arrayidx392 = getelementptr inbounds i8* %labmpc, i64 %idxprom391
  %call393 = call i32 @strcmp1(i8* %arrayidx392, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #4
  %cmp394 = icmp eq i32 %call393, 0
  br i1 %cmp394, label %if.then395, label %if.end407

if.then395:                                       ; preds = %if.else388
  call void @nident_(i32* %ics, i32* %inode1, i32* %arrayidx438, i32* %id) #4
  %104 = load i32* %id, align 4, !tbaa !3
  %cmp397 = icmp sgt i32 %104, 0
  br i1 %cmp397, label %if.then398, label %if.end407

if.then398:                                       ; preds = %if.then395
  %sub399 = add nsw i32 %104, -1
  %idxprom400 = sext i32 %sub399 to i64
  %arrayidx401 = getelementptr inbounds i32* %ics, i64 %idxprom400
  %105 = load i32* %arrayidx401, align 4, !tbaa !3
  %106 = load i32* %inode1, align 4, !tbaa !3
  %cmp402 = icmp eq i32 %105, %106
  %.1181 = zext i1 %cmp402 to i32
  br label %if.end407

if.end407:                                        ; preds = %if.then395, %if.else388, %while.body376, %if.then398
  %icomplex1.0 = phi i32 [ %.1181, %if.then398 ], [ 1, %while.body376 ], [ 0, %if.else388 ], [ 0, %if.then395 ]
  %107 = load i32* %inode1, align 4, !tbaa !3
  %mul408 = shl i32 %107, 2
  %sub410 = add nsw i32 %mul377, -2
  %idxprom411 = sext i32 %sub410 to i64
  %arrayidx412 = getelementptr inbounds i32* %nodempc, i64 %idxprom411
  %108 = load i32* %arrayidx412, align 4, !tbaa !3
  %add413 = add i32 %108, -4
  %sub414 = add i32 %add413, %mul408
  %idxprom415 = sext i32 %sub414 to i64
  %arrayidx416 = getelementptr inbounds i32* %nactdof, i64 %idxprom415
  %109 = load i32* %arrayidx416, align 4, !tbaa !3
  store i32 %109, i32* %idof1, align 4, !tbaa !3
  %cmp465 = icmp eq i32 %icomplex1.0, 1
  %cmp469 = icmp eq i32 %icomplex1.0, 0
  br label %while.body418

while.body418:                                    ; preds = %if.end474, %if.end407
  %index2.0 = phi i32 [ %index1.0, %if.end407 ], [ %125, %if.end474 ]
  %mul419 = mul nsw i32 %index2.0, 3
  %sub420 = add nsw i32 %mul419, -3
  %idxprom421 = sext i32 %sub420 to i64
  %arrayidx422 = getelementptr inbounds i32* %nodempc, i64 %idxprom421
  %110 = load i32* %arrayidx422, align 4, !tbaa !3
  store i32 %110, i32* %inode2, align 4, !tbaa !3
  %111 = load i32* %id1, align 4, !tbaa !3
  %112 = mul i32 %111, 20
  %mul424 = add i32 %112, -20
  %idxprom425 = sext i32 %mul424 to i64
  %arrayidx426 = getelementptr inbounds i8* %labmpc, i64 %idxprom425
  %call427 = call i32 @strcmp1(i8* %arrayidx426, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp428 = icmp eq i32 %call427, 0
  br i1 %cmp428, label %if.end449, label %if.else430

if.else430:                                       ; preds = %while.body418
  %113 = load i32* %id1, align 4, !tbaa !3
  %114 = mul i32 %113, 20
  %mul432 = add i32 %114, -20
  %idxprom433 = sext i32 %mul432 to i64
  %arrayidx434 = getelementptr inbounds i8* %labmpc, i64 %idxprom433
  %call435 = call i32 @strcmp1(i8* %arrayidx434, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #4
  %cmp436 = icmp eq i32 %call435, 0
  br i1 %cmp436, label %if.then437, label %if.end449

if.then437:                                       ; preds = %if.else430
  call void @nident_(i32* %ics, i32* %inode2, i32* %arrayidx438, i32* %id) #4
  %115 = load i32* %id, align 4, !tbaa !3
  %cmp439 = icmp sgt i32 %115, 0
  br i1 %cmp439, label %if.then440, label %if.end449

if.then440:                                       ; preds = %if.then437
  %sub441 = add nsw i32 %115, -1
  %idxprom442 = sext i32 %sub441 to i64
  %arrayidx443 = getelementptr inbounds i32* %ics, i64 %idxprom442
  %116 = load i32* %arrayidx443, align 4, !tbaa !3
  %117 = load i32* %inode2, align 4, !tbaa !3
  %cmp444 = icmp eq i32 %116, %117
  %.1182 = zext i1 %cmp444 to i32
  br label %if.end449

if.end449:                                        ; preds = %if.then437, %if.else430, %while.body418, %if.then440
  %icomplex2.0 = phi i32 [ %.1182, %if.then440 ], [ 1, %while.body418 ], [ 0, %if.else430 ], [ 0, %if.then437 ]
  %118 = load i32* %inode2, align 4, !tbaa !3
  %mul450 = shl i32 %118, 2
  %sub452 = add nsw i32 %mul419, -2
  %idxprom453 = sext i32 %sub452 to i64
  %arrayidx454 = getelementptr inbounds i32* %nodempc, i64 %idxprom453
  %119 = load i32* %arrayidx454, align 4, !tbaa !3
  %add455 = add i32 %119, -4
  %sub456 = add i32 %add455, %mul450
  %idxprom457 = sext i32 %sub456 to i64
  %arrayidx458 = getelementptr inbounds i32* %nactdof, i64 %idxprom457
  %120 = load i32* %arrayidx458, align 4, !tbaa !3
  store i32 %120, i32* %idof2, align 4, !tbaa !3
  %121 = load i32* %idof1, align 4, !tbaa !3
  %cmp459 = icmp eq i32 %121, 0
  %cmp461 = icmp eq i32 %120, 0
  %or.cond1183 = or i1 %cmp459, %cmp461
  br i1 %or.cond1183, label %if.end474, label %if.then462

if.then462:                                       ; preds = %if.end449
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  %122 = load i32* %idof1, align 4, !tbaa !3
  %123 = load i32* %neq, align 4, !tbaa !3
  %add463 = add nsw i32 %123, %122
  store i32 %add463, i32* %kdof1, align 4, !tbaa !3
  %124 = load i32* %idof2, align 4, !tbaa !3
  %add464 = add nsw i32 %123, %124
  store i32 %add464, i32* %kdof2, align 4, !tbaa !3
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %kdof1, i32* %kdof2, i32* %ifree, i32* %nzs_) #4
  %cmp467 = icmp eq i32 %icomplex2.0, 1
  %or.cond1184 = or i1 %cmp465, %cmp467
  %cmp471 = icmp eq i32 %icomplex2.0, 0
  %or.cond1185 = or i1 %cmp469, %cmp471
  %or.cond1319 = and i1 %or.cond1184, %or.cond1185
  br i1 %or.cond1319, label %if.then472, label %if.end474

if.then472:                                       ; preds = %if.then462
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %kdof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %kdof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end474

if.end474:                                        ; preds = %if.then462, %if.end449, %if.then472
  %sub476 = add nsw i32 %mul419, -1
  %idxprom477 = sext i32 %sub476 to i64
  %arrayidx478 = getelementptr inbounds i32* %nodempc, i64 %idxprom477
  %125 = load i32* %arrayidx478, align 4, !tbaa !3
  %cmp479 = icmp eq i32 %125, 0
  br i1 %cmp479, label %while.end482, label %while.body418

while.end482:                                     ; preds = %if.end474
  %sub484 = add nsw i32 %mul377, -1
  %idxprom485 = sext i32 %sub484 to i64
  %arrayidx486 = getelementptr inbounds i32* %nodempc, i64 %idxprom485
  %126 = load i32* %arrayidx486, align 4, !tbaa !3
  %cmp487 = icmp eq i32 %126, 0
  br i1 %cmp487, label %for.inc638, label %while.end482.while.body376_crit_edge

while.end482.while.body376_crit_edge:             ; preds = %while.end482
  %.pre1314 = load i32* %id1, align 4, !tbaa !3
  br label %while.body376

if.else491:                                       ; preds = %if.then357
  br i1 %cmp373, label %for.inc638, label %while.body502

while.body502:                                    ; preds = %if.else491, %while.body502.backedge
  %127 = phi i32 [ %.pre1308, %while.body502.backedge ], [ %95, %if.else491 ]
  %index1.1 = phi i32 [ %index1.1.be, %while.body502.backedge ], [ %98, %if.else491 ]
  %mul503 = mul nsw i32 %index1.1, 3
  %sub504 = add nsw i32 %mul503, -3
  %idxprom505 = sext i32 %sub504 to i64
  %arrayidx506 = getelementptr inbounds i32* %nodempc, i64 %idxprom505
  %128 = load i32* %arrayidx506, align 4, !tbaa !3
  store i32 %128, i32* %inode1, align 4, !tbaa !3
  %129 = mul i32 %127, 20
  %mul508 = add i32 %129, -20
  %idxprom509 = sext i32 %mul508 to i64
  %arrayidx510 = getelementptr inbounds i8* %labmpc, i64 %idxprom509
  %call511 = call i32 @strcmp1(i8* %arrayidx510, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp512 = icmp eq i32 %call511, 0
  br i1 %cmp512, label %if.end533, label %if.else514

if.else514:                                       ; preds = %while.body502
  %130 = load i32* %id1, align 4, !tbaa !3
  %131 = mul i32 %130, 20
  %mul516 = add i32 %131, -20
  %idxprom517 = sext i32 %mul516 to i64
  %arrayidx518 = getelementptr inbounds i8* %labmpc, i64 %idxprom517
  %call519 = call i32 @strcmp1(i8* %arrayidx518, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #4
  %cmp520 = icmp eq i32 %call519, 0
  br i1 %cmp520, label %if.then521, label %if.end533

if.then521:                                       ; preds = %if.else514
  call void @nident_(i32* %ics, i32* %inode1, i32* %arrayidx438, i32* %id) #4
  %132 = load i32* %id, align 4, !tbaa !3
  %cmp523 = icmp sgt i32 %132, 0
  br i1 %cmp523, label %if.then524, label %if.end533

if.then524:                                       ; preds = %if.then521
  %sub525 = add nsw i32 %132, -1
  %idxprom526 = sext i32 %sub525 to i64
  %arrayidx527 = getelementptr inbounds i32* %ics, i64 %idxprom526
  %133 = load i32* %arrayidx527, align 4, !tbaa !3
  %134 = load i32* %inode1, align 4, !tbaa !3
  %cmp528 = icmp eq i32 %133, %134
  %.1186 = zext i1 %cmp528 to i32
  br label %if.end533

if.end533:                                        ; preds = %if.then521, %if.else514, %while.body502, %if.then524
  %icomplex1.1 = phi i32 [ %.1186, %if.then524 ], [ 1, %while.body502 ], [ 0, %if.else514 ], [ 0, %if.then521 ]
  %135 = load i32* %inode1, align 4, !tbaa !3
  %mul534 = shl i32 %135, 2
  %sub536 = add nsw i32 %mul503, -2
  %idxprom537 = sext i32 %sub536 to i64
  %arrayidx538 = getelementptr inbounds i32* %nodempc, i64 %idxprom537
  %136 = load i32* %arrayidx538, align 4, !tbaa !3
  %add539 = add i32 %136, -4
  %sub540 = add i32 %add539, %mul534
  %idxprom541 = sext i32 %sub540 to i64
  %arrayidx542 = getelementptr inbounds i32* %nactdof, i64 %idxprom541
  %137 = load i32* %arrayidx542, align 4, !tbaa !3
  store i32 %137, i32* %idof1, align 4, !tbaa !3
  %138 = load i32* %id2, align 4, !tbaa !3
  %sub543 = add nsw i32 %138, -1
  %idxprom544 = sext i32 %sub543 to i64
  %arrayidx545 = getelementptr inbounds i32* %ipompc, i64 %idxprom544
  %139 = load i32* %arrayidx545, align 4, !tbaa !3
  %mul546 = mul nsw i32 %139, 3
  %sub547 = add nsw i32 %mul546, -1
  %idxprom548 = sext i32 %sub547 to i64
  %arrayidx549 = getelementptr inbounds i32* %nodempc, i64 %idxprom548
  %140 = load i32* %arrayidx549, align 4, !tbaa !3
  %cmp550 = icmp eq i32 %140, 0
  br i1 %cmp550, label %if.then551, label %while.body561.preheader

while.body561.preheader:                          ; preds = %if.end533
  %cmp608 = icmp eq i32 %icomplex1.1, 1
  %cmp612 = icmp eq i32 %icomplex1.1, 0
  br label %while.body561

if.then551:                                       ; preds = %if.end533
  %sub553 = add nsw i32 %mul503, -1
  %idxprom554 = sext i32 %sub553 to i64
  %arrayidx555 = getelementptr inbounds i32* %nodempc, i64 %idxprom554
  %141 = load i32* %arrayidx555, align 4, !tbaa !3
  %cmp556 = icmp eq i32 %141, 0
  br i1 %cmp556, label %for.inc638, label %while.body502.backedge

while.body502.backedge:                           ; preds = %if.then551, %while.end625
  %index1.1.be = phi i32 [ %141, %if.then551 ], [ %158, %while.end625 ]
  %.pre1308 = load i32* %id1, align 4, !tbaa !3
  br label %while.body502

while.body561:                                    ; preds = %if.end617.while.body561_crit_edge, %while.body561.preheader
  %142 = phi i32 [ %.pre1315, %if.end617.while.body561_crit_edge ], [ %138, %while.body561.preheader ]
  %index2.1 = phi i32 [ %157, %if.end617.while.body561_crit_edge ], [ %140, %while.body561.preheader ]
  %mul562 = mul nsw i32 %index2.1, 3
  %sub563 = add nsw i32 %mul562, -3
  %idxprom564 = sext i32 %sub563 to i64
  %arrayidx565 = getelementptr inbounds i32* %nodempc, i64 %idxprom564
  %143 = load i32* %arrayidx565, align 4, !tbaa !3
  store i32 %143, i32* %inode2, align 4, !tbaa !3
  %144 = mul i32 %142, 20
  %mul567 = add i32 %144, -20
  %idxprom568 = sext i32 %mul567 to i64
  %arrayidx569 = getelementptr inbounds i8* %labmpc, i64 %idxprom568
  %call570 = call i32 @strcmp1(i8* %arrayidx569, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp571 = icmp eq i32 %call570, 0
  br i1 %cmp571, label %if.end592, label %if.else573

if.else573:                                       ; preds = %while.body561
  %145 = load i32* %id2, align 4, !tbaa !3
  %146 = mul i32 %145, 20
  %mul575 = add i32 %146, -20
  %idxprom576 = sext i32 %mul575 to i64
  %arrayidx577 = getelementptr inbounds i8* %labmpc, i64 %idxprom576
  %call578 = call i32 @strcmp1(i8* %arrayidx577, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #4
  %cmp579 = icmp eq i32 %call578, 0
  br i1 %cmp579, label %if.then580, label %if.end592

if.then580:                                       ; preds = %if.else573
  call void @nident_(i32* %ics, i32* %inode2, i32* %arrayidx438, i32* %id) #4
  %147 = load i32* %id, align 4, !tbaa !3
  %cmp582 = icmp sgt i32 %147, 0
  br i1 %cmp582, label %if.then583, label %if.end592

if.then583:                                       ; preds = %if.then580
  %sub584 = add nsw i32 %147, -1
  %idxprom585 = sext i32 %sub584 to i64
  %arrayidx586 = getelementptr inbounds i32* %ics, i64 %idxprom585
  %148 = load i32* %arrayidx586, align 4, !tbaa !3
  %149 = load i32* %inode2, align 4, !tbaa !3
  %cmp587 = icmp eq i32 %148, %149
  %.1187 = zext i1 %cmp587 to i32
  br label %if.end592

if.end592:                                        ; preds = %if.then580, %if.else573, %while.body561, %if.then583
  %icomplex2.1 = phi i32 [ %.1187, %if.then583 ], [ 1, %while.body561 ], [ 0, %if.else573 ], [ 0, %if.then580 ]
  %150 = load i32* %inode2, align 4, !tbaa !3
  %mul593 = shl i32 %150, 2
  %sub595 = add nsw i32 %mul562, -2
  %idxprom596 = sext i32 %sub595 to i64
  %arrayidx597 = getelementptr inbounds i32* %nodempc, i64 %idxprom596
  %151 = load i32* %arrayidx597, align 4, !tbaa !3
  %add598 = add i32 %151, -4
  %sub599 = add i32 %add598, %mul593
  %idxprom600 = sext i32 %sub599 to i64
  %arrayidx601 = getelementptr inbounds i32* %nactdof, i64 %idxprom600
  %152 = load i32* %arrayidx601, align 4, !tbaa !3
  store i32 %152, i32* %idof2, align 4, !tbaa !3
  %153 = load i32* %idof1, align 4, !tbaa !3
  %cmp602 = icmp eq i32 %153, 0
  %cmp604 = icmp eq i32 %152, 0
  %or.cond1188 = or i1 %cmp602, %cmp604
  br i1 %or.cond1188, label %if.end617, label %if.then605

if.then605:                                       ; preds = %if.end592
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  %154 = load i32* %idof1, align 4, !tbaa !3
  %155 = load i32* %neq, align 4, !tbaa !3
  %add606 = add nsw i32 %155, %154
  store i32 %add606, i32* %kdof1, align 4, !tbaa !3
  %156 = load i32* %idof2, align 4, !tbaa !3
  %add607 = add nsw i32 %155, %156
  store i32 %add607, i32* %kdof2, align 4, !tbaa !3
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %kdof1, i32* %kdof2, i32* %ifree, i32* %nzs_) #4
  %cmp610 = icmp eq i32 %icomplex2.1, 1
  %or.cond1189 = or i1 %cmp608, %cmp610
  %cmp614 = icmp eq i32 %icomplex2.1, 0
  %or.cond1190 = or i1 %cmp612, %cmp614
  %or.cond1320 = and i1 %or.cond1189, %or.cond1190
  br i1 %or.cond1320, label %if.then615, label %if.end617

if.then615:                                       ; preds = %if.then605
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %kdof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %kdof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end617

if.end617:                                        ; preds = %if.then605, %if.end592, %if.then615
  %sub619 = add nsw i32 %mul562, -1
  %idxprom620 = sext i32 %sub619 to i64
  %arrayidx621 = getelementptr inbounds i32* %nodempc, i64 %idxprom620
  %157 = load i32* %arrayidx621, align 4, !tbaa !3
  %cmp622 = icmp eq i32 %157, 0
  br i1 %cmp622, label %while.end625, label %if.end617.while.body561_crit_edge

if.end617.while.body561_crit_edge:                ; preds = %if.end617
  %.pre1315 = load i32* %id2, align 4, !tbaa !3
  br label %while.body561

while.end625:                                     ; preds = %if.end617
  %sub627 = add nsw i32 %mul503, -1
  %idxprom628 = sext i32 %sub627 to i64
  %arrayidx629 = getelementptr inbounds i32* %nodempc, i64 %idxprom628
  %158 = load i32* %arrayidx629, align 4, !tbaa !3
  %cmp630 = icmp eq i32 %158, 0
  br i1 %cmp630, label %for.inc638, label %while.body502.backedge

for.inc638:                                       ; preds = %while.end482, %if.then551, %while.end625, %if.end318, %if.end344, %if.else328, %if.then229, %if.end353, %if.end246, %land.lhs.true250, %if.then248, %if.else491, %if.then365, %if.then255
  %inc639 = add nsw i32 %ll.01234, 1
  %exitcond = icmp eq i32 %inc639, %nope.1
  br i1 %exitcond, label %for.inc641, label %for.inc638.for.body214_crit_edge

for.inc638.for.body214_crit_edge:                 ; preds = %for.inc638
  %.pre1313 = load i32* %jdof1, align 4, !tbaa !3
  br label %for.body214

for.inc641:                                       ; preds = %for.inc638, %for.body199
  %inc642 = add nsw i32 %jj.01235, 1
  %cmp198 = icmp slt i32 %inc642, %nope.1
  br i1 %cmp198, label %for.body199, label %for.inc644.loopexit

for.inc644.loopexit:                              ; preds = %for.inc641
  %.pre1307 = load i32* %ne, align 4, !tbaa !3
  br label %for.inc644

for.inc644:                                       ; preds = %for.inc644.loopexit, %for.body160
  %159 = phi i32 [ %.pre1307, %for.inc644.loopexit ], [ %49, %for.body160 ]
  %indvars.iv.next1279 = add i64 %indvars.iv1278, 1
  %160 = trunc i64 %indvars.iv.next1279 to i32
  %cmp159 = icmp slt i32 %160, %159
  br i1 %cmp159, label %for.body160, label %for.end646

for.end646:                                       ; preds = %for.inc644, %for.cond158.preheader
  %161 = load i32* %neq, align 4, !tbaa !3
  %mul647 = shl nsw i32 %161, 1
  store i32 %mul647, i32* %neq, align 4, !tbaa !3
  %cmp6491229 = icmp sgt i32 %161, 0
  br i1 %cmp6491229, label %for.body650, label %for.cond708.preheader

for.cond708.preheader:                            ; preds = %for.end694, %for.end646
  store i32 0, i32* %nsky, align 4, !tbaa !3
  %162 = load i32* %neq, align 4, !tbaa !3
  %cmp7091217 = icmp sgt i32 %162, 1
  br i1 %cmp7091217, label %for.body710.lr.ph, label %for.end727

for.body710.lr.ph:                                ; preds = %for.cond708.preheader
  %163 = load i32** %mast1, align 8, !tbaa !0
  br label %for.body710

for.body650:                                      ; preds = %for.end646, %for.end694
  %indvars.iv1275 = phi i64 [ %175, %for.end694 ], [ 0, %for.end646 ]
  store i32 0, i32* %itot, align 4, !tbaa !3
  %arrayidx652 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv1275
  %164 = load i32* %arrayidx652, align 4, !tbaa !3
  %cmp653 = icmp eq i32 %164, 0
  br i1 %cmp653, label %if.then654, label %if.end656

if.then654:                                       ; preds = %for.body650
  %call655 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0)) #4
  call void (...)* @stop_() #4
  %.pre1305 = load i32* %arrayidx652, align 4, !tbaa !3
  %.pre1306.pre = load i32* %itot, align 4, !tbaa !3
  br label %if.end656

if.end656:                                        ; preds = %for.body650, %if.then654
  %.pre1306 = phi i32 [ %.pre1306.pre, %if.then654 ], [ 0, %for.body650 ]
  %165 = phi i32 [ %.pre1305, %if.then654 ], [ %164, %for.body650 ]
  %166 = load i32** %mast1, align 8, !tbaa !0
  %167 = load i32** %irow, align 8, !tbaa !0
  br label %while.body659

while.body659:                                    ; preds = %while.body659, %if.end656
  %168 = phi i32 [ %.pre1306, %if.end656 ], [ %inc660, %while.body659 ]
  %istart.0 = phi i32 [ %165, %if.end656 ], [ %170, %while.body659 ]
  %inc660 = add nsw i32 %168, 1
  store i32 %inc660, i32* %itot, align 4, !tbaa !3
  %sub661 = add nsw i32 %istart.0, -1
  %idxprom662 = sext i32 %sub661 to i64
  %arrayidx663 = getelementptr inbounds i32* %166, i64 %idxprom662
  %169 = load i32* %arrayidx663, align 4, !tbaa !3
  %idxprom665 = sext i32 %168 to i64
  %arrayidx666 = getelementptr inbounds i32* %ikcol, i64 %idxprom665
  store i32 %169, i32* %arrayidx666, align 4, !tbaa !3
  %arrayidx669 = getelementptr inbounds i32* %167, i64 %idxprom662
  %170 = load i32* %arrayidx669, align 4, !tbaa !3
  %cmp670 = icmp eq i32 %170, 0
  br i1 %cmp670, label %while.end673, label %while.body659

while.end673:                                     ; preds = %while.body659
  call void @isortii_(i32* %ikcol, i32* %icol, i32* %itot, i32* %kflag) #4
  %171 = load i32* %arrayidx652, align 4, !tbaa !3
  %172 = load i32* %itot, align 4, !tbaa !3
  %sub6771223 = add nsw i32 %172, -1
  %cmp6781224 = icmp sgt i32 %sub6771223, 0
  %173 = load i32** %mast1, align 8, !tbaa !0
  %174 = load i32** %irow, align 8, !tbaa !0
  %175 = add i64 %indvars.iv1275, 1
  br i1 %cmp6781224, label %for.body679, label %while.end673.for.end694_crit_edge

while.end673.for.end694_crit_edge:                ; preds = %while.end673
  %.pre1317 = trunc i64 %175 to i32
  br label %for.end694

for.body679:                                      ; preds = %while.end673, %for.body679
  %indvars.iv1273 = phi i64 [ %indvars.iv.next1274, %for.body679 ], [ 0, %while.end673 ]
  %istart.11225 = phi i32 [ %177, %for.body679 ], [ %171, %while.end673 ]
  %arrayidx681 = getelementptr inbounds i32* %ikcol, i64 %indvars.iv1273
  %176 = load i32* %arrayidx681, align 4, !tbaa !3
  %sub682 = add nsw i32 %istart.11225, -1
  %idxprom683 = sext i32 %sub682 to i64
  %arrayidx684 = getelementptr inbounds i32* %173, i64 %idxprom683
  store i32 %176, i32* %arrayidx684, align 4, !tbaa !3
  %arrayidx687 = getelementptr inbounds i32* %174, i64 %idxprom683
  %177 = load i32* %arrayidx687, align 4, !tbaa !3
  %178 = trunc i64 %175 to i32
  store i32 %178, i32* %arrayidx687, align 4, !tbaa !3
  %indvars.iv.next1274 = add i64 %indvars.iv1273, 1
  %179 = load i32* %itot, align 4, !tbaa !3
  %sub677 = add nsw i32 %179, -1
  %180 = trunc i64 %indvars.iv.next1274 to i32
  %cmp678 = icmp slt i32 %180, %sub677
  br i1 %cmp678, label %for.body679, label %for.end694

for.end694:                                       ; preds = %for.body679, %while.end673.for.end694_crit_edge
  %.pre-phi = phi i32 [ %.pre1317, %while.end673.for.end694_crit_edge ], [ %178, %for.body679 ]
  %sub677.lcssa = phi i32 [ %sub6771223, %while.end673.for.end694_crit_edge ], [ %sub677, %for.body679 ]
  %istart.1.lcssa = phi i32 [ %171, %while.end673.for.end694_crit_edge ], [ %177, %for.body679 ]
  %idxprom696 = sext i32 %sub677.lcssa to i64
  %arrayidx697 = getelementptr inbounds i32* %ikcol, i64 %idxprom696
  %181 = load i32* %arrayidx697, align 4, !tbaa !3
  %sub698 = add nsw i32 %istart.1.lcssa, -1
  %idxprom699 = sext i32 %sub698 to i64
  %arrayidx700 = getelementptr inbounds i32* %173, i64 %idxprom699
  store i32 %181, i32* %arrayidx700, align 4, !tbaa !3
  %arrayidx704 = getelementptr inbounds i32* %174, i64 %idxprom699
  store i32 %.pre-phi, i32* %arrayidx704, align 4, !tbaa !3
  %182 = load i32* %neq, align 4, !tbaa !3
  %cmp649 = icmp slt i32 %.pre-phi, %182
  br i1 %cmp649, label %for.body650, label %for.cond708.preheader

for.body710:                                      ; preds = %for.body710.lr.ph, %if.end723
  %indvars.iv1269 = phi i64 [ 1, %for.body710.lr.ph ], [ %indvars.iv.next1270, %if.end723 ]
  %nsky_exp.01220 = phi i32 [ 0, %for.body710.lr.ph ], [ %nsky_exp.1, %if.end723 ]
  %183 = phi i32 [ 0, %for.body710.lr.ph ], [ %add724, %if.end723 ]
  %indvars.iv.next1270 = add i64 %indvars.iv1269, 1
  %arrayidx713 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv1269
  %184 = load i32* %arrayidx713, align 4, !tbaa !3
  %sub714 = add nsw i32 %184, -1
  %idxprom715 = sext i32 %sub714 to i64
  %arrayidx716 = getelementptr inbounds i32* %163, i64 %idxprom715
  %185 = load i32* %arrayidx716, align 4, !tbaa !3
  %186 = trunc i64 %indvars.iv.next1270 to i32
  %sub717 = sub nsw i32 %186, %185
  %sub718 = sub nsw i32 2147483647, %183
  %cmp719 = icmp slt i32 %sub718, %sub717
  br i1 %cmp719, label %if.then720, label %if.end723

if.then720:                                       ; preds = %for.body710
  %inc721 = add nsw i32 %nsky_exp.01220, 1
  %sub722 = add nsw i32 %sub717, -2147483647
  br label %if.end723

if.end723:                                        ; preds = %if.then720, %for.body710
  %nsky_exp.1 = phi i32 [ %inc721, %if.then720 ], [ %nsky_exp.01220, %for.body710 ]
  %nsky_inc.0 = phi i32 [ %sub722, %if.then720 ], [ %sub717, %for.body710 ]
  %add724 = add nsw i32 %183, %nsky_inc.0
  store i32 %add724, i32* %nsky, align 4, !tbaa !3
  %187 = load i32* %neq, align 4, !tbaa !3
  %cmp709 = icmp slt i32 %186, %187
  br i1 %cmp709, label %for.body710, label %for.end727

for.end727:                                       ; preds = %if.end723, %for.cond708.preheader
  %.lcssa1216 = phi i32 [ %162, %for.cond708.preheader ], [ %187, %if.end723 ]
  %nsky_exp.0.lcssa = phi i32 [ 0, %for.cond708.preheader ], [ %nsky_exp.1, %if.end723 ]
  %cmp728 = icmp eq i32 %.lcssa1216, 0
  br i1 %cmp728, label %if.then729, label %if.end731

if.then729:                                       ; preds = %for.end727
  %puts1176 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str18, i64 0, i64 0))
  call void (...)* @stop_() #4
  br label %if.end731

if.end731:                                        ; preds = %if.then729, %for.end727
  %puts = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str, i64 0, i64 0))
  %188 = load i32* %neq, align 4, !tbaa !3
  %call733 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i32 %188) #4
  %puts1173 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str15, i64 0, i64 0))
  %189 = load i32* %ifree, align 4, !tbaa !3
  %call735 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i32 %189) #4
  %puts1174 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str16, i64 0, i64 0))
  %190 = load i32* %nsky, align 4, !tbaa !3
  %call737 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0), i32 %nsky_exp.0.lcssa, i32 %190) #4
  %puts1175 = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str17, i64 0, i64 0))
  %191 = load i32* %ifree, align 4, !tbaa !3
  %conv = sitofp i32 %191 to double
  %192 = load i32* %nsky, align 4, !tbaa !3
  %193 = load i32* %neq, align 4, !tbaa !3
  %add739 = add nsw i32 %193, %192
  %conv740 = sitofp i32 %add739 to double
  %conv741 = sitofp i32 %nsky_exp.0.lcssa to double
  %mul742 = fmul double %conv741, 0x41DFFFFFFFC00000
  %add743 = fadd double %mul742, %conv740
  %div744 = fdiv double %conv, %add743
  %mul745 = fmul double %div744, 1.000000e+02
  %call746 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), double %mul745) #4
  %194 = load i32* %ifree, align 4, !tbaa !3
  store i32 %194, i32* %nmast, align 4, !tbaa !3
  %195 = load i32** %mast1, align 8, !tbaa !0
  %196 = load i32** %irow, align 8, !tbaa !0
  call void @isortii_(i32* %195, i32* %196, i32* %nmast, i32* %kflag) #4
  %197 = load i32* %neq, align 4, !tbaa !3
  %cmp7481214 = icmp sgt i32 %197, 1
  br i1 %cmp7481214, label %for.body750, label %for.cond756.preheader

for.cond756.preheader:                            ; preds = %for.body750, %if.end731
  %198 = phi i32 [ %197, %if.end731 ], [ %202, %for.body750 ]
  %199 = load i32* %nmast, align 4, !tbaa !3
  %cmp7571207 = icmp sgt i32 %199, 0
  br i1 %cmp7571207, label %for.body759.lr.ph, label %for.end807

for.body759.lr.ph:                                ; preds = %for.cond756.preheader
  %200 = load i32** %mast1, align 8, !tbaa !0
  %201 = load i32** %irow, align 8, !tbaa !0
  br label %for.body759

for.body750:                                      ; preds = %if.end731, %for.body750
  %indvars.iv1266 = phi i64 [ %indvars.iv.next1267, %for.body750 ], [ 1, %if.end731 ]
  %arrayidx752 = getelementptr inbounds i32* %icol, i64 %indvars.iv1266
  store i32 0, i32* %arrayidx752, align 4, !tbaa !3
  %indvars.iv.next1267 = add i64 %indvars.iv1266, 1
  %202 = load i32* %neq, align 4, !tbaa !3
  %203 = trunc i64 %indvars.iv.next1267 to i32
  %cmp748 = icmp slt i32 %203, %202
  br i1 %cmp748, label %for.body750, label %for.cond756.preheader

for.body759:                                      ; preds = %for.body759.lr.ph, %for.inc805
  %204 = phi i32 [ %199, %for.body759.lr.ph ], [ %214, %for.inc805 ]
  %indvars.iv1264 = phi i64 [ 0, %for.body759.lr.ph ], [ %indvars.iv.next1265, %for.inc805 ]
  %k.11209 = phi i32 [ 0, %for.body759.lr.ph ], [ %k.3, %for.inc805 ]
  %isubtract.01208 = phi i32 [ 0, %for.body759.lr.ph ], [ %isubtract.1, %for.inc805 ]
  %arrayidx761 = getelementptr inbounds i32* %200, i64 %indvars.iv1264
  %205 = load i32* %arrayidx761, align 4, !tbaa !3
  %arrayidx763 = getelementptr inbounds i32* %201, i64 %indvars.iv1264
  %206 = load i32* %arrayidx763, align 4, !tbaa !3
  %cmp764 = icmp eq i32 %205, %206
  br i1 %cmp764, label %if.then766, label %if.else768

if.then766:                                       ; preds = %for.body759
  %inc767 = add nsw i32 %isubtract.01208, 1
  br label %for.inc805

if.else768:                                       ; preds = %for.body759
  %207 = trunc i64 %indvars.iv1264 to i32
  %sub771 = sub nsw i32 %207, %isubtract.01208
  %idxprom772 = sext i32 %sub771 to i64
  %arrayidx773 = getelementptr inbounds i32* %200, i64 %idxprom772
  store i32 %205, i32* %arrayidx773, align 4, !tbaa !3
  %208 = load i32* %arrayidx763, align 4, !tbaa !3
  %arrayidx778 = getelementptr inbounds i32* %201, i64 %idxprom772
  store i32 %208, i32* %arrayidx778, align 4, !tbaa !3
  %209 = load i32* %arrayidx761, align 4, !tbaa !3
  %cmp781 = icmp eq i32 %k.11209, %209
  br i1 %cmp781, label %if.end799, label %for.cond784.preheader

for.cond784.preheader:                            ; preds = %if.else768
  %cmp7871203 = icmp slt i32 %k.11209, %209
  br i1 %cmp7871203, label %for.body789.lr.ph, label %if.end799

for.body789.lr.ph:                                ; preds = %for.cond784.preheader
  %add790 = sub i32 1, %isubtract.01208
  %sub791 = add i32 %add790, %207
  %210 = sext i32 %k.11209 to i64
  br label %for.body789

for.body789:                                      ; preds = %for.body789.lr.ph, %for.body789
  %indvars.iv1261 = phi i64 [ %210, %for.body789.lr.ph ], [ %indvars.iv.next1262, %for.body789 ]
  %arrayidx793 = getelementptr inbounds i32* %jq, i64 %indvars.iv1261
  store i32 %sub791, i32* %arrayidx793, align 4, !tbaa !3
  %indvars.iv.next1262 = add i64 %indvars.iv1261, 1
  %211 = load i32* %arrayidx761, align 4, !tbaa !3
  %212 = trunc i64 %indvars.iv.next1262 to i32
  %cmp787 = icmp slt i32 %212, %211
  br i1 %cmp787, label %for.body789, label %if.end799

if.end799:                                        ; preds = %for.cond784.preheader, %for.body789, %if.else768
  %k.2 = phi i32 [ %k.11209, %if.else768 ], [ %209, %for.cond784.preheader ], [ %211, %for.body789 ]
  %sub800 = add nsw i32 %k.2, -1
  %idxprom801 = sext i32 %sub800 to i64
  %arrayidx802 = getelementptr inbounds i32* %icol, i64 %idxprom801
  %213 = load i32* %arrayidx802, align 4, !tbaa !3
  %inc803 = add nsw i32 %213, 1
  store i32 %inc803, i32* %arrayidx802, align 4, !tbaa !3
  %.pre1304 = load i32* %nmast, align 4, !tbaa !3
  br label %for.inc805

for.inc805:                                       ; preds = %if.then766, %if.end799
  %214 = phi i32 [ %204, %if.then766 ], [ %.pre1304, %if.end799 ]
  %isubtract.1 = phi i32 [ %inc767, %if.then766 ], [ %isubtract.01208, %if.end799 ]
  %k.3 = phi i32 [ %k.11209, %if.then766 ], [ %k.2, %if.end799 ]
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 1
  %215 = trunc i64 %indvars.iv.next1265 to i32
  %cmp757 = icmp slt i32 %215, %214
  br i1 %cmp757, label %for.body759, label %for.cond756.for.end807_crit_edge

for.cond756.for.end807_crit_edge:                 ; preds = %for.inc805
  %.pre1302 = load i32* %neq, align 4, !tbaa !3
  br label %for.end807

for.end807:                                       ; preds = %for.cond756.for.end807_crit_edge, %for.cond756.preheader
  %216 = phi i32 [ %.pre1302, %for.cond756.for.end807_crit_edge ], [ %198, %for.cond756.preheader ]
  %.lcssa1206 = phi i32 [ %214, %for.cond756.for.end807_crit_edge ], [ %199, %for.cond756.preheader ]
  %k.1.lcssa = phi i32 [ %k.3, %for.cond756.for.end807_crit_edge ], [ 0, %for.cond756.preheader ]
  %isubtract.0.lcssa = phi i32 [ %isubtract.1, %for.cond756.for.end807_crit_edge ], [ 0, %for.cond756.preheader ]
  %sub808 = sub nsw i32 %.lcssa1206, %isubtract.0.lcssa
  store i32 %sub808, i32* %nmast, align 4, !tbaa !3
  %add8101198 = add nsw i32 %216, 1
  %cmp8111199 = icmp slt i32 %k.1.lcssa, %add8101198
  br i1 %cmp8111199, label %for.body813.lr.ph, label %for.cond820.preheader

for.body813.lr.ph:                                ; preds = %for.end807
  %add814 = add nsw i32 %sub808, 1
  %217 = sext i32 %k.1.lcssa to i64
  br label %for.body813

for.cond820.preheader:                            ; preds = %for.body813, %for.end807
  %218 = phi i32 [ %216, %for.end807 ], [ %219, %for.body813 ]
  %cmp8211196 = icmp sgt i32 %218, 0
  br i1 %cmp8211196, label %for.body823, label %for.end852

for.body813:                                      ; preds = %for.body813.lr.ph, %for.body813
  %indvars.iv1258 = phi i64 [ %217, %for.body813.lr.ph ], [ %indvars.iv.next1259, %for.body813 ]
  %arrayidx816 = getelementptr inbounds i32* %jq, i64 %indvars.iv1258
  store i32 %add814, i32* %arrayidx816, align 4, !tbaa !3
  %indvars.iv.next1259 = add i64 %indvars.iv1258, 1
  %219 = load i32* %neq, align 4, !tbaa !3
  %220 = trunc i64 %indvars.iv1258 to i32
  %cmp811 = icmp slt i32 %220, %219
  br i1 %cmp811, label %for.body813, label %for.cond820.preheader

for.body823:                                      ; preds = %for.cond820.backedge, %for.cond820.preheader
  %221 = phi i32 [ %218, %for.cond820.preheader ], [ %224, %for.cond820.backedge ]
  %indvars.iv = phi i64 [ 0, %for.cond820.preheader ], [ %indvars.iv.next, %for.cond820.backedge ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx826 = getelementptr inbounds i32* %jq, i64 %indvars.iv.next
  %222 = load i32* %arrayidx826, align 4, !tbaa !3
  %arrayidx828 = getelementptr inbounds i32* %jq, i64 %indvars.iv
  %223 = load i32* %arrayidx828, align 4, !tbaa !3
  %sub829 = sub nsw i32 %222, %223
  %cmp830 = icmp sgt i32 %sub829, 0
  br i1 %cmp830, label %if.then832, label %for.cond820.backedge

for.cond820.backedge:                             ; preds = %for.body823, %if.then832
  %224 = phi i32 [ %221, %for.body823 ], [ %.pre1303, %if.then832 ]
  %225 = trunc i64 %indvars.iv.next to i32
  %cmp821 = icmp slt i32 %225, %224
  br i1 %cmp821, label %for.body823, label %for.end852

if.then832:                                       ; preds = %for.body823
  store i32 %sub829, i32* %isize, align 4, !tbaa !3
  %sub841 = add nsw i32 %223, -1
  %idxprom842 = sext i32 %sub841 to i64
  %226 = load i32** %irow, align 8, !tbaa !0
  %arrayidx843 = getelementptr inbounds i32* %226, i64 %idxprom842
  %227 = load i32** %mast1, align 8, !tbaa !0
  %arrayidx848 = getelementptr inbounds i32* %227, i64 %idxprom842
  call void @isortii_(i32* %arrayidx843, i32* %arrayidx848, i32* %isize, i32* %kflag) #4
  %.pre1303 = load i32* %neq, align 4, !tbaa !3
  br label %for.cond820.backedge

for.end852:                                       ; preds = %for.cond820.backedge, %for.cond820.preheader
  %.lcssa = phi i32 [ %218, %for.cond820.preheader ], [ %224, %for.cond820.backedge ]
  %sub853 = add nsw i32 %.lcssa, -1
  %idxprom854 = sext i32 %sub853 to i64
  %arrayidx855 = getelementptr inbounds i32* %jq, i64 %idxprom854
  %228 = load i32* %arrayidx855, align 4, !tbaa !3
  %sub856 = add nsw i32 %228, -1
  store i32 %sub856, i32* %nzs, align 4, !tbaa !3
  %229 = load i32** %mast1, align 8, !tbaa !0
  store i32* %229, i32** %mast1p, align 8, !tbaa !0
  %230 = load i32** %irow, align 8, !tbaa !0
  store i32* %230, i32** %irowp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #1

; Function Attrs: optsize
declare void @insert(i32*, i32**, i32**, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @nident_(i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @stop_(...) #1

; Function Attrs: optsize
declare void @isortii_(i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}

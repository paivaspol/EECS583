; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/mastruct.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"%d\0A\0A\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"%d*2147483647+%d\0A\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"%f\0A\0A\00", align 1
@str15 = private unnamed_addr constant [34 x i8] c"number of nonzero matrix elements\00"
@str17 = private unnamed_addr constant [39 x i8] c"percentage of nonzero skyline elements\00"
@str19 = private unnamed_addr constant [31 x i8] c"error in mastruct: zero column\00"
@str20 = private unnamed_addr constant [20 x i8] c"number of equations\00"
@str21 = private unnamed_addr constant [28 x i8] c"total length of the skyline\00"
@str22 = private unnamed_addr constant [43 x i8] c"*ERROR: no degrees of freedom in the model\00"

; Function Attrs: nounwind optsize uwtable
define void @mastruct(i32* nocapture %nk, i32* nocapture %kon, i32* nocapture %ipkon, i8* %lakon, i32* nocapture %ne, i32* nocapture %nodeboun, i32* nocapture %ndirboun, i32* nocapture %nboun, i32* nocapture %ipompc, i32* %nodempc, i32* %nmpc, i32* %nactdof, i32* %icol, i32* nocapture %jq, i32** nocapture %mast1p, i32** nocapture %irowp, i32* nocapture %isolver, i32* nocapture %neq, i32* nocapture %nnn, i32* %ikmpc, i32* nocapture %ilmpc, i32* %ikcol, i32* %ipointer, i32* nocapture %nsky, i32* nocapture %nzs, i32* nocapture %nmethod, i32* nocapture %ithermal) #0 {
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
  %0 = load i32** %mast1p, align 8, !tbaa !0
  store i32* %0, i32** %mast1, align 8, !tbaa !0
  %1 = load i32** %irowp, align 8, !tbaa !0
  store i32* %1, i32** %irow, align 8, !tbaa !0
  store i32 2, i32* %kflag, align 4, !tbaa !3
  %2 = load i32* %nzs, align 4, !tbaa !3
  store i32 %2, i32* %nzs_, align 4, !tbaa !3
  %3 = load i32* %nk, align 4, !tbaa !3
  %cmp2465 = icmp sgt i32 %3, 0
  br i1 %cmp2465, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv2543 = phi i64 [ %indvars.iv.next2544, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %nactdof, i64 %indvars.iv2543
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next2544 = add i64 %indvars.iv2543, 1
  %4 = load i32* %nk, align 4, !tbaa !3
  %mul = shl nsw i32 %4, 2
  %5 = trunc i64 %indvars.iv.next2544 to i32
  %cmp = icmp slt i32 %5, %mul
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %6 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %6, 2
  %cmp2 = icmp eq i32 %6, 3
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %for.cond3.preheader, label %if.end76

for.cond3.preheader:                              ; preds = %for.end
  %7 = load i32* %ne, align 4, !tbaa !3
  %cmp42462 = icmp sgt i32 %7, 0
  br i1 %cmp42462, label %for.body5, label %if.end76

for.body5:                                        ; preds = %for.cond3.preheader, %for.inc73
  %8 = phi i32 [ %17, %for.inc73 ], [ %7, %for.cond3.preheader ]
  %indvars.iv2541 = phi i64 [ %indvars.iv.next2542, %for.inc73 ], [ 0, %for.cond3.preheader ]
  %arrayidx7 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv2541
  %9 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %for.inc73, label %if.end

if.end:                                           ; preds = %for.body5
  %10 = trunc i64 %indvars.iv2541 to i32
  %mul12 = shl nsw i32 %10, 3
  %add2336 = or i32 %mul12, 3
  %idxprom13 = sext i32 %add2336 to i64
  %arrayidx14 = getelementptr inbounds i8* %lakon, i64 %idxprom13
  %call = call i32 @strcmp1(i8* %arrayidx14, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.end53, label %if.else

if.else:                                          ; preds = %if.end
  %call21 = call i32 @strcmp1(i8* %arrayidx14, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.end53, label %if.else24

if.else24:                                        ; preds = %if.else
  %call29 = call i32 @strcmp1(i8* %arrayidx14, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.end53, label %if.else32

if.else32:                                        ; preds = %if.else24
  %call37 = call i32 @strcmp1(i8* %arrayidx14, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.end53, label %if.else40

if.else40:                                        ; preds = %if.else32
  %call45 = call i32 @strcmp1(i8* %arrayidx14, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp46 = icmp eq i32 %call45, 0
  %. = select i1 %cmp46, i32 15, i32 6
  br label %if.end53

if.end53:                                         ; preds = %if.else40, %if.else32, %if.else24, %if.else, %if.end
  %nope.0 = phi i32 [ 20, %if.end ], [ 8, %if.else ], [ 10, %if.else24 ], [ 4, %if.else32 ], [ %., %if.else40 ]
  %11 = sext i32 %9 to i64
  br label %for.body56

for.body56:                                       ; preds = %if.end53, %for.inc70
  %indvars.iv2538 = phi i64 [ 0, %if.end53 ], [ %indvars.iv.next2539, %for.inc70 ]
  %12 = add nsw i64 %indvars.iv2538, %11
  %arrayidx59 = getelementptr inbounds i32* %kon, i64 %12
  %13 = load i32* %arrayidx59, align 4, !tbaa !3
  %sub = shl i32 %13, 2
  %mul63 = add i32 %sub, -4
  %14 = sext i32 %mul63 to i64
  br label %for.body62

for.body62:                                       ; preds = %for.body62, %for.body56
  %indvars.iv2533 = phi i64 [ 1, %for.body56 ], [ %indvars.iv.next2534, %for.body62 ]
  %15 = add nsw i64 %14, %indvars.iv2533
  %arrayidx66 = getelementptr inbounds i32* %nactdof, i64 %15
  store i32 1, i32* %arrayidx66, align 4, !tbaa !3
  %indvars.iv.next2534 = add i64 %indvars.iv2533, 1
  %lftr.wideiv2536 = trunc i64 %indvars.iv.next2534 to i32
  %exitcond2537 = icmp eq i32 %lftr.wideiv2536, 4
  br i1 %exitcond2537, label %for.inc70, label %for.body62

for.inc70:                                        ; preds = %for.body62
  %indvars.iv.next2539 = add i64 %indvars.iv2538, 1
  %16 = trunc i64 %indvars.iv.next2539 to i32
  %cmp55 = icmp slt i32 %16, %nope.0
  br i1 %cmp55, label %for.body56, label %for.inc73.loopexit

for.inc73.loopexit:                               ; preds = %for.inc70
  %.pre2558 = load i32* %ne, align 4, !tbaa !3
  br label %for.inc73

for.inc73:                                        ; preds = %for.inc73.loopexit, %for.body5
  %17 = phi i32 [ %.pre2558, %for.inc73.loopexit ], [ %8, %for.body5 ]
  %indvars.iv.next2542 = add i64 %indvars.iv2541, 1
  %18 = trunc i64 %indvars.iv.next2542 to i32
  %cmp4 = icmp slt i32 %18, %17
  br i1 %cmp4, label %for.body5, label %for.cond3.if.end76thread-pre-split_crit_edge

for.cond3.if.end76thread-pre-split_crit_edge:     ; preds = %for.inc73
  %.pr.pre = load i32* %ithermal, align 4, !tbaa !3
  br label %if.end76

if.end76:                                         ; preds = %for.cond3.preheader, %for.cond3.if.end76thread-pre-split_crit_edge, %for.end
  %19 = phi i32 [ %6, %for.end ], [ %.pr.pre, %for.cond3.if.end76thread-pre-split_crit_edge ], [ %6, %for.cond3.preheader ]
  %cmp77 = icmp sgt i32 %19, 1
  br i1 %cmp77, label %for.cond79.preheader, label %for.cond151.preheader

for.cond79.preheader:                             ; preds = %if.end76
  %20 = load i32* %ne, align 4, !tbaa !3
  %cmp802458 = icmp sgt i32 %20, 0
  br i1 %cmp802458, label %for.body81, label %for.cond151.preheader

for.cond151.preheader:                            ; preds = %for.cond79.preheader, %for.inc147, %if.end76
  %21 = load i32* %nmpc, align 4, !tbaa !3
  %cmp1522455 = icmp sgt i32 %21, 0
  br i1 %cmp1522455, label %for.body153, label %for.cond179.preheader

for.body81:                                       ; preds = %for.cond79.preheader, %for.inc147
  %22 = phi i32 [ %29, %for.inc147 ], [ %20, %for.cond79.preheader ]
  %indvars.iv2531 = phi i64 [ %indvars.iv.next2532, %for.inc147 ], [ 0, %for.cond79.preheader ]
  %arrayidx83 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv2531
  %23 = load i32* %arrayidx83, align 4, !tbaa !3
  %cmp84 = icmp slt i32 %23, 0
  br i1 %cmp84, label %for.inc147, label %if.end86

if.end86:                                         ; preds = %for.body81
  %24 = trunc i64 %indvars.iv2531 to i32
  %mul89 = shl nsw i32 %24, 3
  %add902335 = or i32 %mul89, 3
  %idxprom91 = sext i32 %add902335 to i64
  %arrayidx92 = getelementptr inbounds i8* %lakon, i64 %idxprom91
  %call93 = call i32 @strcmp1(i8* %arrayidx92, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.end133, label %if.else96

if.else96:                                        ; preds = %if.end86
  %call101 = call i32 @strcmp1(i8* %arrayidx92, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.end133, label %if.else104

if.else104:                                       ; preds = %if.else96
  %call109 = call i32 @strcmp1(i8* %arrayidx92, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.end133, label %if.else112

if.else112:                                       ; preds = %if.else104
  %call117 = call i32 @strcmp1(i8* %arrayidx92, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %if.end133, label %if.else120

if.else120:                                       ; preds = %if.else112
  %call125 = call i32 @strcmp1(i8* %arrayidx92, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp126 = icmp eq i32 %call125, 0
  %.2338 = select i1 %cmp126, i32 15, i32 6
  br label %if.end133

if.end133:                                        ; preds = %if.else120, %if.else112, %if.else104, %if.else96, %if.end86
  %nope.1 = phi i32 [ 20, %if.end86 ], [ 8, %if.else96 ], [ 10, %if.else104 ], [ 4, %if.else112 ], [ %.2338, %if.else120 ]
  %25 = sext i32 %23 to i64
  br label %for.body136

for.body136:                                      ; preds = %if.end133, %for.body136
  %indvars.iv2528 = phi i64 [ 0, %if.end133 ], [ %indvars.iv.next2529, %for.body136 ]
  %26 = add nsw i64 %indvars.iv2528, %25
  %arrayidx139 = getelementptr inbounds i32* %kon, i64 %26
  %27 = load i32* %arrayidx139, align 4, !tbaa !3
  %sub140 = shl i32 %27, 2
  %mul141 = add i32 %sub140, -4
  %idxprom142 = sext i32 %mul141 to i64
  %arrayidx143 = getelementptr inbounds i32* %nactdof, i64 %idxprom142
  store i32 1, i32* %arrayidx143, align 4, !tbaa !3
  %indvars.iv.next2529 = add i64 %indvars.iv2528, 1
  %28 = trunc i64 %indvars.iv.next2529 to i32
  %cmp135 = icmp slt i32 %28, %nope.1
  br i1 %cmp135, label %for.body136, label %for.inc147.loopexit

for.inc147.loopexit:                              ; preds = %for.body136
  %.pre2556 = load i32* %ne, align 4, !tbaa !3
  br label %for.inc147

for.inc147:                                       ; preds = %for.inc147.loopexit, %for.body81
  %29 = phi i32 [ %.pre2556, %for.inc147.loopexit ], [ %22, %for.body81 ]
  %indvars.iv.next2532 = add i64 %indvars.iv2531, 1
  %30 = trunc i64 %indvars.iv.next2532 to i32
  %cmp80 = icmp slt i32 %30, %29
  br i1 %cmp80, label %for.body81, label %for.cond151.preheader

for.cond179.preheader:                            ; preds = %for.inc176, %for.cond151.preheader
  %31 = phi i32 [ %21, %for.cond151.preheader ], [ %38, %for.inc176 ]
  %32 = load i32* %nboun, align 4, !tbaa !3
  %cmp1802453 = icmp sgt i32 %32, 0
  br i1 %cmp1802453, label %for.body181, label %for.cond199.preheader

for.body153:                                      ; preds = %for.cond151.preheader, %for.inc176
  %indvars.iv2526 = phi i64 [ %indvars.iv.next2527, %for.inc176 ], [ 0, %for.cond151.preheader ]
  %arrayidx155 = getelementptr inbounds i32* %ipompc, i64 %indvars.iv2526
  %33 = load i32* %arrayidx155, align 4, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.body, %for.body153
  %index.0.in = phi i32 [ %33, %for.body153 ], [ %37, %do.body ]
  %34 = mul i32 %index.0.in, 3
  %mul157 = add i32 %34, -3
  %idxprom158 = sext i32 %mul157 to i64
  %arrayidx159 = getelementptr inbounds i32* %nodempc, i64 %idxprom158
  %35 = load i32* %arrayidx159, align 4, !tbaa !3
  %mul160 = shl i32 %35, 2
  %add162 = add i32 %34, -2
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds i32* %nodempc, i64 %idxprom163
  %36 = load i32* %arrayidx164, align 4, !tbaa !3
  %add165 = add i32 %36, -4
  %sub166 = add i32 %add165, %mul160
  %idxprom167 = sext i32 %sub166 to i64
  %arrayidx168 = getelementptr inbounds i32* %nactdof, i64 %idxprom167
  store i32 1, i32* %arrayidx168, align 4, !tbaa !3
  %add170 = add i32 %34, -1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds i32* %nodempc, i64 %idxprom171
  %37 = load i32* %arrayidx172, align 4, !tbaa !3
  %cmp173 = icmp eq i32 %37, 0
  br i1 %cmp173, label %for.inc176, label %do.body

for.inc176:                                       ; preds = %do.body
  %indvars.iv.next2527 = add i64 %indvars.iv2526, 1
  %38 = load i32* %nmpc, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next2527 to i32
  %cmp152 = icmp slt i32 %39, %38
  br i1 %cmp152, label %for.body153, label %for.cond179.preheader

for.cond179.for.cond199.preheader_crit_edge:      ; preds = %for.inc196
  %.pre = load i32* %nmpc, align 4, !tbaa !3
  br label %for.cond199.preheader

for.cond199.preheader:                            ; preds = %for.cond179.for.cond199.preheader_crit_edge, %for.cond179.preheader
  %40 = phi i32 [ %.pre, %for.cond179.for.cond199.preheader_crit_edge ], [ %31, %for.cond179.preheader ]
  %cmp2002451 = icmp sgt i32 %40, 0
  br i1 %cmp2002451, label %for.body201, label %for.end219

for.body181:                                      ; preds = %for.cond179.preheader, %for.inc196
  %41 = phi i32 [ %44, %for.inc196 ], [ %32, %for.cond179.preheader ]
  %indvars.iv2524 = phi i64 [ %indvars.iv.next2525, %for.inc196 ], [ 0, %for.cond179.preheader ]
  %arrayidx183 = getelementptr inbounds i32* %ndirboun, i64 %indvars.iv2524
  %42 = load i32* %arrayidx183, align 4, !tbaa !3
  %cmp184 = icmp sgt i32 %42, 3
  br i1 %cmp184, label %for.inc196, label %if.end186

if.end186:                                        ; preds = %for.body181
  %arrayidx188 = getelementptr inbounds i32* %nodeboun, i64 %indvars.iv2524
  %43 = load i32* %arrayidx188, align 4, !tbaa !3
  %sub189 = shl i32 %43, 2
  %mul190 = add i32 %42, -4
  %add193 = add i32 %mul190, %sub189
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds i32* %nactdof, i64 %idxprom194
  store i32 0, i32* %arrayidx195, align 4, !tbaa !3
  %.pre2555 = load i32* %nboun, align 4, !tbaa !3
  br label %for.inc196

for.inc196:                                       ; preds = %for.body181, %if.end186
  %44 = phi i32 [ %41, %for.body181 ], [ %.pre2555, %if.end186 ]
  %indvars.iv.next2525 = add i64 %indvars.iv2524, 1
  %45 = trunc i64 %indvars.iv.next2525 to i32
  %cmp180 = icmp slt i32 %45, %44
  br i1 %cmp180, label %for.body181, label %for.cond179.for.cond199.preheader_crit_edge

for.body201:                                      ; preds = %for.cond199.preheader, %for.body201
  %indvars.iv2522 = phi i64 [ %indvars.iv.next2523, %for.body201 ], [ 0, %for.cond199.preheader ]
  %arrayidx203 = getelementptr inbounds i32* %ipompc, i64 %indvars.iv2522
  %46 = load i32* %arrayidx203, align 4, !tbaa !3
  %47 = mul i32 %46, 3
  %mul205 = add i32 %47, -3
  %idxprom206 = sext i32 %mul205 to i64
  %arrayidx207 = getelementptr inbounds i32* %nodempc, i64 %idxprom206
  %48 = load i32* %arrayidx207, align 4, !tbaa !3
  %mul208 = shl i32 %48, 2
  %add210 = add i32 %47, -2
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds i32* %nodempc, i64 %idxprom211
  %49 = load i32* %arrayidx212, align 4, !tbaa !3
  %add213 = add i32 %49, -4
  %sub214 = add i32 %add213, %mul208
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds i32* %nactdof, i64 %idxprom215
  store i32 0, i32* %arrayidx216, align 4, !tbaa !3
  %indvars.iv.next2523 = add i64 %indvars.iv2522, 1
  %50 = load i32* %nmpc, align 4, !tbaa !3
  %51 = trunc i64 %indvars.iv.next2523 to i32
  %cmp200 = icmp slt i32 %51, %50
  br i1 %cmp200, label %for.body201, label %for.end219

for.end219:                                       ; preds = %for.body201, %for.cond199.preheader
  store i32 0, i32* %neq, align 4, !tbaa !3
  %52 = load i32* %ithermal, align 4, !tbaa !3
  %cmp220 = icmp slt i32 %52, 2
  %cmp222 = icmp eq i32 %52, 3
  %or.cond2339 = or i1 %cmp220, %cmp222
  br i1 %or.cond2339, label %for.cond224.preheader, label %if.end254

for.cond224.preheader:                            ; preds = %for.end219
  %53 = load i32* %nk, align 4, !tbaa !3
  %cmp2252449 = icmp sgt i32 %53, 0
  br i1 %cmp2252449, label %for.cond227.preheader, label %if.end254

for.cond227.preheader:                            ; preds = %for.cond224.preheader, %for.inc251
  %indvars.iv2520 = phi i64 [ %indvars.iv.next2521, %for.inc251 ], [ 0, %for.cond224.preheader ]
  %arrayidx231 = getelementptr inbounds i32* %nnn, i64 %indvars.iv2520
  br label %for.body229

for.body229:                                      ; preds = %for.inc248, %for.cond227.preheader
  %j.22448 = phi i32 [ 1, %for.cond227.preheader ], [ %inc249, %for.inc248 ]
  %54 = load i32* %arrayidx231, align 4, !tbaa !3
  %mul232 = shl i32 %54, 2
  %add233 = add i32 %j.22448, -4
  %sub234 = add i32 %add233, %mul232
  %idxprom235 = sext i32 %sub234 to i64
  %arrayidx236 = getelementptr inbounds i32* %nactdof, i64 %idxprom235
  %55 = load i32* %arrayidx236, align 4, !tbaa !3
  %cmp237 = icmp eq i32 %55, 0
  br i1 %cmp237, label %for.inc248, label %if.then238

if.then238:                                       ; preds = %for.body229
  %56 = load i32* %neq, align 4, !tbaa !3
  %inc239 = add nsw i32 %56, 1
  store i32 %inc239, i32* %neq, align 4, !tbaa !3
  %57 = load i32* %arrayidx231, align 4, !tbaa !3
  %mul242 = shl i32 %57, 2
  %sub244 = add i32 %add233, %mul242
  %idxprom245 = sext i32 %sub244 to i64
  %arrayidx246 = getelementptr inbounds i32* %nactdof, i64 %idxprom245
  store i32 %inc239, i32* %arrayidx246, align 4, !tbaa !3
  br label %for.inc248

for.inc248:                                       ; preds = %for.body229, %if.then238
  %inc249 = add nsw i32 %j.22448, 1
  %exitcond2519 = icmp eq i32 %inc249, 4
  br i1 %exitcond2519, label %for.inc251, label %for.body229

for.inc251:                                       ; preds = %for.inc248
  %indvars.iv.next2521 = add i64 %indvars.iv2520, 1
  %58 = load i32* %nk, align 4, !tbaa !3
  %59 = trunc i64 %indvars.iv.next2521 to i32
  %cmp225 = icmp slt i32 %59, %58
  br i1 %cmp225, label %for.cond227.preheader, label %for.cond224.if.end254thread-pre-split_crit_edge

for.cond224.if.end254thread-pre-split_crit_edge:  ; preds = %for.inc251
  %.pr2362.pre = load i32* %ithermal, align 4, !tbaa !3
  br label %if.end254

if.end254:                                        ; preds = %for.cond224.preheader, %for.cond224.if.end254thread-pre-split_crit_edge, %for.end219
  %60 = phi i32 [ %52, %for.end219 ], [ %.pr2362.pre, %for.cond224.if.end254thread-pre-split_crit_edge ], [ %52, %for.cond224.preheader ]
  %cmp255 = icmp sgt i32 %60, 1
  br i1 %cmp255, label %for.cond257.preheader, label %if.end279

for.cond257.preheader:                            ; preds = %if.end254
  %61 = load i32* %nk, align 4, !tbaa !3
  %cmp2582446 = icmp sgt i32 %61, 0
  br i1 %cmp2582446, label %for.body259, label %if.end279

for.body259:                                      ; preds = %for.cond257.preheader, %for.inc276
  %62 = phi i32 [ %67, %for.inc276 ], [ %61, %for.cond257.preheader ]
  %indvars.iv2517 = phi i64 [ %indvars.iv.next2518, %for.inc276 ], [ 0, %for.cond257.preheader ]
  %arrayidx261 = getelementptr inbounds i32* %nnn, i64 %indvars.iv2517
  %63 = load i32* %arrayidx261, align 4, !tbaa !3
  %mul262 = shl i32 %63, 2
  %sub263 = add nsw i32 %mul262, -4
  %idxprom264 = sext i32 %sub263 to i64
  %arrayidx265 = getelementptr inbounds i32* %nactdof, i64 %idxprom264
  %64 = load i32* %arrayidx265, align 4, !tbaa !3
  %cmp266 = icmp eq i32 %64, 0
  br i1 %cmp266, label %for.inc276, label %if.then267

if.then267:                                       ; preds = %for.body259
  %65 = load i32* %neq, align 4, !tbaa !3
  %inc268 = add nsw i32 %65, 1
  store i32 %inc268, i32* %neq, align 4, !tbaa !3
  %66 = load i32* %arrayidx261, align 4, !tbaa !3
  %mul271 = shl i32 %66, 2
  %sub272 = add nsw i32 %mul271, -4
  %idxprom273 = sext i32 %sub272 to i64
  %arrayidx274 = getelementptr inbounds i32* %nactdof, i64 %idxprom273
  store i32 %inc268, i32* %arrayidx274, align 4, !tbaa !3
  %.pre2553 = load i32* %nk, align 4, !tbaa !3
  br label %for.inc276

for.inc276:                                       ; preds = %for.body259, %if.then267
  %67 = phi i32 [ %62, %for.body259 ], [ %.pre2553, %if.then267 ]
  %indvars.iv.next2518 = add i64 %indvars.iv2517, 1
  %68 = trunc i64 %indvars.iv.next2518 to i32
  %cmp258 = icmp slt i32 %68, %67
  br i1 %cmp258, label %for.body259, label %if.end279

if.end279:                                        ; preds = %for.cond257.preheader, %for.inc276, %if.end254
  store i32 0, i32* %ifree, align 4, !tbaa !3
  %69 = load i32* %isolver, align 4, !tbaa !3
  %cmp280 = icmp eq i32 %69, 1
  %70 = load i32* %nk, align 4, !tbaa !3
  %cmp2842390 = icmp sgt i32 %70, 0
  br i1 %cmp280, label %for.cond282.preheader, label %for.cond820.preheader

for.cond820.preheader:                            ; preds = %if.end279
  br i1 %cmp2842390, label %for.body823, label %for.end828

for.cond282.preheader:                            ; preds = %if.end279
  br i1 %cmp2842390, label %for.body285, label %for.cond292.preheader

for.cond292.preheader:                            ; preds = %for.body285, %for.cond282.preheader
  %71 = load i32* %ne, align 4, !tbaa !3
  %cmp2932387 = icmp sgt i32 %71, 0
  br i1 %cmp2932387, label %for.body294, label %for.end783

for.body285:                                      ; preds = %for.cond282.preheader, %for.body285
  %indvars.iv2476 = phi i64 [ %indvars.iv.next2477, %for.body285 ], [ 0, %for.cond282.preheader ]
  %indvars.iv.next2477 = add i64 %indvars.iv2476, 1
  %arrayidx288 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv2476
  %72 = trunc i64 %indvars.iv.next2477 to i32
  store i32 %72, i32* %arrayidx288, align 4, !tbaa !3
  %73 = load i32* %nk, align 4, !tbaa !3
  %mul283 = shl nsw i32 %73, 2
  %cmp284 = icmp slt i32 %72, %mul283
  br i1 %cmp284, label %for.body285, label %for.cond292.preheader

for.body294:                                      ; preds = %for.cond292.preheader, %for.inc781
  %74 = phi i32 [ %132, %for.inc781 ], [ %71, %for.cond292.preheader ]
  %indvars.iv2474 = phi i64 [ %indvars.iv.next2475, %for.inc781 ], [ 0, %for.cond292.preheader ]
  %arrayidx296 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv2474
  %75 = load i32* %arrayidx296, align 4, !tbaa !3
  %cmp297 = icmp slt i32 %75, 0
  br i1 %cmp297, label %for.inc781, label %if.end299

if.end299:                                        ; preds = %for.body294
  %76 = trunc i64 %indvars.iv2474 to i32
  %mul302 = shl nsw i32 %76, 3
  %add3032333 = or i32 %mul302, 3
  %idxprom304 = sext i32 %add3032333 to i64
  %arrayidx305 = getelementptr inbounds i8* %lakon, i64 %idxprom304
  %call306 = call i32 @strcmp1(i8* %arrayidx305, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp307 = icmp eq i32 %call306, 0
  br i1 %cmp307, label %if.end346, label %if.else309

if.else309:                                       ; preds = %if.end299
  %call314 = call i32 @strcmp1(i8* %arrayidx305, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp315 = icmp eq i32 %call314, 0
  br i1 %cmp315, label %if.end346, label %if.else317

if.else317:                                       ; preds = %if.else309
  %call322 = call i32 @strcmp1(i8* %arrayidx305, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp323 = icmp eq i32 %call322, 0
  br i1 %cmp323, label %if.end346, label %if.else325

if.else325:                                       ; preds = %if.else317
  %call330 = call i32 @strcmp1(i8* %arrayidx305, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp331 = icmp eq i32 %call330, 0
  br i1 %cmp331, label %if.end346, label %if.else333

if.else333:                                       ; preds = %if.else325
  %call338 = call i32 @strcmp1(i8* %arrayidx305, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp339 = icmp eq i32 %call338, 0
  %.2340 = select i1 %cmp339, i32 45, i32 18
  br label %if.end346

if.end346:                                        ; preds = %if.else333, %if.else325, %if.else317, %if.else309, %if.end299
  %nope.2 = phi i32 [ 60, %if.end299 ], [ 24, %if.else309 ], [ 30, %if.else317 ], [ 12, %if.else325 ], [ %.2340, %if.else333 ]
  br label %for.body350

for.body350:                                      ; preds = %if.end346, %for.inc778
  %jj.02386 = phi i32 [ 0, %if.end346 ], [ %inc779, %for.inc778 ]
  %div = sdiv i32 %jj.02386, 3
  %77 = mul i32 %div, -3
  %sub352 = add i32 %77, %jj.02386
  %add353 = add nsw i32 %div, %75
  %idxprom354 = sext i32 %add353 to i64
  %arrayidx355 = getelementptr inbounds i32* %kon, i64 %idxprom354
  %78 = load i32* %arrayidx355, align 4, !tbaa !3
  %sub356 = shl i32 %78, 2
  %add358 = add i32 %sub356, -3
  %add359 = add i32 %add358, %sub352
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds i32* %nactdof, i64 %idxprom360
  %79 = load i32* %arrayidx361, align 4, !tbaa !3
  store i32 %79, i32* %jdof1, align 4, !tbaa !3
  %cmp3642384 = icmp slt i32 %jj.02386, %nope.2
  br i1 %cmp3642384, label %for.body365.lr.ph, label %for.inc778

for.body365.lr.ph:                                ; preds = %for.body350
  %mul518 = mul nsw i32 %78, 7
  %add519 = add i32 %sub352, -6
  %sub520 = add i32 %add519, %mul518
  %add424 = add nsw i32 %mul518, %sub352
  br label %for.body365

for.body365:                                      ; preds = %for.inc775.for.body365_crit_edge, %for.body365.lr.ph
  %80 = phi i32 [ %79, %for.body365.lr.ph ], [ %.pre2560, %for.inc775.for.body365_crit_edge ]
  %ll.02385 = phi i32 [ %jj.02386, %for.body365.lr.ph ], [ %inc776, %for.inc775.for.body365_crit_edge ]
  %div366 = sdiv i32 %ll.02385, 3
  %81 = mul i32 %div366, -3
  %sub368 = add i32 %81, %ll.02385
  %add369 = add nsw i32 %div366, %75
  %idxprom370 = sext i32 %add369 to i64
  %arrayidx371 = getelementptr inbounds i32* %kon, i64 %idxprom370
  %82 = load i32* %arrayidx371, align 4, !tbaa !3
  %sub372 = shl i32 %82, 2
  %add374 = add i32 %sub372, -3
  %add375 = add i32 %add374, %sub368
  %idxprom376 = sext i32 %add375 to i64
  %arrayidx377 = getelementptr inbounds i32* %nactdof, i64 %idxprom376
  %83 = load i32* %arrayidx377, align 4, !tbaa !3
  store i32 %83, i32* %jdof2, align 4, !tbaa !3
  %cmp378 = icmp eq i32 %80, 0
  %cmp379 = icmp eq i32 %83, 0
  %or.cond2341 = or i1 %cmp378, %cmp379
  br i1 %or.cond2341, label %if.else416, label %if.then380

if.then380:                                       ; preds = %for.body365
  %cmp381 = icmp sge i32 %80, %83
  %cond = select i1 %cmp381, i32 %80, i32 %83
  %sub382 = add nsw i32 %cond, -1
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds i32* %ipointer, i64 %idxprom383
  %84 = load i32* %arrayidx384, align 4, !tbaa !3
  %cmp385 = icmp sle i32 %80, %83
  %cond389 = select i1 %cmp385, i32 %80, i32 %83
  %cmp390 = icmp sgt i32 %84, %cond389
  %cond389. = select i1 %cmp390, i32 %cond389, i32 %84
  store i32 %cond389., i32* %arrayidx384, align 4, !tbaa !3
  br label %for.inc775

if.else416:                                       ; preds = %for.body365
  %85 = or i32 %80, %83
  %brmerge = icmp eq i32 %85, 0
  br i1 %brmerge, label %if.else517, label %if.then420

if.then420:                                       ; preds = %if.else416
  br i1 %cmp378, label %if.then422, label %if.else426

if.then422:                                       ; preds = %if.then420
  store i32 %83, i32* %idof1, align 4, !tbaa !3
  br label %if.end430

if.else426:                                       ; preds = %if.then420
  store i32 %80, i32* %idof1, align 4, !tbaa !3
  %mul427 = mul nsw i32 %82, 7
  %add428 = add nsw i32 %mul427, %sub368
  br label %if.end430

if.end430:                                        ; preds = %if.else426, %if.then422
  %storemerge2334.in = phi i32 [ %add428, %if.else426 ], [ %add424, %if.then422 ]
  %storemerge2334 = add nsw i32 %storemerge2334.in, -6
  store i32 %storemerge2334, i32* %idof2, align 4, !tbaa !3
  %86 = load i32* %nmpc, align 4, !tbaa !3
  %cmp431 = icmp sgt i32 %86, 0
  br i1 %cmp431, label %if.then432, label %for.inc775

if.then432:                                       ; preds = %if.end430
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id) #4
  %87 = load i32* %id, align 4, !tbaa !3
  %cmp433 = icmp sgt i32 %87, 0
  br i1 %cmp433, label %land.lhs.true434, label %for.inc775

land.lhs.true434:                                 ; preds = %if.then432
  %sub435 = add nsw i32 %87, -1
  %idxprom436 = sext i32 %sub435 to i64
  %arrayidx437 = getelementptr inbounds i32* %ikmpc, i64 %idxprom436
  %88 = load i32* %arrayidx437, align 4, !tbaa !3
  %89 = load i32* %idof2, align 4, !tbaa !3
  %cmp438 = icmp eq i32 %88, %89
  br i1 %cmp438, label %if.then439, label %for.inc775

if.then439:                                       ; preds = %land.lhs.true434
  %arrayidx442 = getelementptr inbounds i32* %ilmpc, i64 %idxprom436
  %90 = load i32* %arrayidx442, align 4, !tbaa !3
  store i32 %90, i32* %id, align 4, !tbaa !3
  %sub443 = add nsw i32 %90, -1
  %idxprom444 = sext i32 %sub443 to i64
  %arrayidx445 = getelementptr inbounds i32* %ipompc, i64 %idxprom444
  %91 = load i32* %arrayidx445, align 4, !tbaa !3
  %mul446 = mul nsw i32 %91, 3
  %sub447 = add nsw i32 %mul446, -1
  %idxprom448 = sext i32 %sub447 to i64
  %arrayidx449 = getelementptr inbounds i32* %nodempc, i64 %idxprom448
  %92 = load i32* %arrayidx449, align 4, !tbaa !3
  %cmp450 = icmp eq i32 %92, 0
  br i1 %cmp450, label %for.inc775, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then439
  %93 = load i32* %idof1, align 4, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end507
  %index.1 = phi i32 [ %98, %if.end507 ], [ %92, %while.body.preheader ]
  %mul453 = mul nsw i32 %index.1, 3
  %sub454 = add nsw i32 %mul453, -3
  %idxprom455 = sext i32 %sub454 to i64
  %arrayidx456 = getelementptr inbounds i32* %nodempc, i64 %idxprom455
  %94 = load i32* %arrayidx456, align 4, !tbaa !3
  %mul457 = shl i32 %94, 2
  %sub459 = add nsw i32 %mul453, -2
  %idxprom460 = sext i32 %sub459 to i64
  %arrayidx461 = getelementptr inbounds i32* %nodempc, i64 %idxprom460
  %95 = load i32* %arrayidx461, align 4, !tbaa !3
  %add462 = add i32 %95, -4
  %sub463 = add i32 %add462, %mul457
  %idxprom464 = sext i32 %sub463 to i64
  %arrayidx465 = getelementptr inbounds i32* %nactdof, i64 %idxprom464
  %96 = load i32* %arrayidx465, align 4, !tbaa !3
  %cmp466 = icmp eq i32 %96, 0
  br i1 %cmp466, label %if.end507, label %if.then467

if.then467:                                       ; preds = %while.body
  %cmp468 = icmp sge i32 %93, %96
  %cond472 = select i1 %cmp468, i32 %93, i32 %96
  %sub473 = add nsw i32 %cond472, -1
  %idxprom474 = sext i32 %sub473 to i64
  %arrayidx475 = getelementptr inbounds i32* %ipointer, i64 %idxprom474
  %97 = load i32* %arrayidx475, align 4, !tbaa !3
  %cmp476 = icmp sle i32 %93, %96
  %cond480 = select i1 %cmp476, i32 %93, i32 %96
  %cmp481 = icmp sgt i32 %97, %cond480
  %cond480. = select i1 %cmp481, i32 %cond480, i32 %97
  store i32 %cond480., i32* %arrayidx475, align 4, !tbaa !3
  br label %if.end507

if.end507:                                        ; preds = %while.body, %if.then467
  %sub509 = add nsw i32 %mul453, -1
  %idxprom510 = sext i32 %sub509 to i64
  %arrayidx511 = getelementptr inbounds i32* %nodempc, i64 %idxprom510
  %98 = load i32* %arrayidx511, align 4, !tbaa !3
  %cmp512 = icmp eq i32 %98, 0
  br i1 %cmp512, label %for.inc775.loopexit, label %while.body

if.else517:                                       ; preds = %if.else416
  store i32 %sub520, i32* %idof1, align 4, !tbaa !3
  %mul521 = mul nsw i32 %82, 7
  %add522 = add i32 %sub368, -6
  %sub523 = add i32 %add522, %mul521
  store i32 %sub523, i32* %idof2, align 4, !tbaa !3
  %99 = load i32* %nmpc, align 4, !tbaa !3
  %cmp524 = icmp sgt i32 %99, 0
  br i1 %cmp524, label %if.then525, label %for.inc775

if.then525:                                       ; preds = %if.else517
  call void @nident_(i32* %ikmpc, i32* %idof1, i32* %nmpc, i32* %id1) #4
  %100 = load i32* %id1, align 4, !tbaa !3
  %cmp526 = icmp sgt i32 %100, 0
  br i1 %cmp526, label %land.lhs.true527, label %if.end533

land.lhs.true527:                                 ; preds = %if.then525
  %sub528 = add nsw i32 %100, -1
  %idxprom529 = sext i32 %sub528 to i64
  %arrayidx530 = getelementptr inbounds i32* %ikmpc, i64 %idxprom529
  %101 = load i32* %arrayidx530, align 4, !tbaa !3
  %102 = load i32* %idof1, align 4, !tbaa !3
  %cmp531 = icmp eq i32 %101, %102
  %.2342 = zext i1 %cmp531 to i32
  br label %if.end533

if.end533:                                        ; preds = %land.lhs.true527, %if.then525
  %mpc1.0 = phi i32 [ 0, %if.then525 ], [ %.2342, %land.lhs.true527 ]
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id2) #4
  %103 = load i32* %id2, align 4, !tbaa !3
  %cmp534 = icmp sgt i32 %103, 0
  br i1 %cmp534, label %if.end542, label %for.inc775

if.end542:                                        ; preds = %if.end533
  %sub536 = add nsw i32 %103, -1
  %idxprom537 = sext i32 %sub536 to i64
  %arrayidx538 = getelementptr inbounds i32* %ikmpc, i64 %idxprom537
  %104 = load i32* %arrayidx538, align 4, !tbaa !3
  %105 = load i32* %idof2, align 4, !tbaa !3
  %cmp539 = icmp eq i32 %104, %105
  %cmp543 = icmp eq i32 %mpc1.0, 1
  %or.cond2344 = and i1 %cmp543, %cmp539
  br i1 %or.cond2344, label %if.then546, label %for.inc775

if.then546:                                       ; preds = %if.end542
  %106 = load i32* %id1, align 4, !tbaa !3
  %sub547 = add nsw i32 %106, -1
  %idxprom548 = sext i32 %sub547 to i64
  %arrayidx549 = getelementptr inbounds i32* %ilmpc, i64 %idxprom548
  %107 = load i32* %arrayidx549, align 4, !tbaa !3
  store i32 %107, i32* %id1, align 4, !tbaa !3
  %arrayidx552 = getelementptr inbounds i32* %ilmpc, i64 %idxprom537
  %108 = load i32* %arrayidx552, align 4, !tbaa !3
  store i32 %108, i32* %id2, align 4, !tbaa !3
  %cmp553 = icmp eq i32 %107, %108
  %sub555 = add nsw i32 %107, -1
  %idxprom556 = sext i32 %sub555 to i64
  %arrayidx557 = getelementptr inbounds i32* %ipompc, i64 %idxprom556
  %109 = load i32* %arrayidx557, align 4, !tbaa !3
  %mul558 = mul nsw i32 %109, 3
  %sub559 = add nsw i32 %mul558, -1
  %idxprom560 = sext i32 %sub559 to i64
  %arrayidx561 = getelementptr inbounds i32* %nodempc, i64 %idxprom560
  %110 = load i32* %arrayidx561, align 4, !tbaa !3
  %cmp562 = icmp eq i32 %110, 0
  br i1 %cmp553, label %if.then554, label %if.else654

if.then554:                                       ; preds = %if.then546
  br i1 %cmp562, label %for.inc775, label %while.body565

while.body565:                                    ; preds = %if.then554, %while.end645
  %index1.0 = phi i32 [ %119, %while.end645 ], [ %110, %if.then554 ]
  %mul566 = mul nsw i32 %index1.0, 3
  %sub567 = add nsw i32 %mul566, -3
  %idxprom568 = sext i32 %sub567 to i64
  %arrayidx569 = getelementptr inbounds i32* %nodempc, i64 %idxprom568
  %111 = load i32* %arrayidx569, align 4, !tbaa !3
  %mul570 = shl i32 %111, 2
  %sub572 = add nsw i32 %mul566, -2
  %idxprom573 = sext i32 %sub572 to i64
  %arrayidx574 = getelementptr inbounds i32* %nodempc, i64 %idxprom573
  %112 = load i32* %arrayidx574, align 4, !tbaa !3
  %add575 = add i32 %112, -4
  %sub576 = add i32 %add575, %mul570
  %idxprom577 = sext i32 %sub576 to i64
  %arrayidx578 = getelementptr inbounds i32* %nactdof, i64 %idxprom577
  %113 = load i32* %arrayidx578, align 4, !tbaa !3
  %cmp594 = icmp eq i32 %113, 0
  br label %while.body580

while.body580:                                    ; preds = %if.end637, %while.body565
  %index2.0 = phi i32 [ %index1.0, %while.body565 ], [ %118, %if.end637 ]
  %mul581 = mul nsw i32 %index2.0, 3
  %sub582 = add nsw i32 %mul581, -3
  %idxprom583 = sext i32 %sub582 to i64
  %arrayidx584 = getelementptr inbounds i32* %nodempc, i64 %idxprom583
  %114 = load i32* %arrayidx584, align 4, !tbaa !3
  %mul585 = shl i32 %114, 2
  %sub587 = add nsw i32 %mul581, -2
  %idxprom588 = sext i32 %sub587 to i64
  %arrayidx589 = getelementptr inbounds i32* %nodempc, i64 %idxprom588
  %115 = load i32* %arrayidx589, align 4, !tbaa !3
  %add590 = add i32 %115, -4
  %sub591 = add i32 %add590, %mul585
  %idxprom592 = sext i32 %sub591 to i64
  %arrayidx593 = getelementptr inbounds i32* %nactdof, i64 %idxprom592
  %116 = load i32* %arrayidx593, align 4, !tbaa !3
  %cmp596 = icmp eq i32 %116, 0
  %or.cond2345 = or i1 %cmp594, %cmp596
  br i1 %or.cond2345, label %if.end637, label %if.then597

if.then597:                                       ; preds = %while.body580
  %cmp598 = icmp sge i32 %113, %116
  %cond602 = select i1 %cmp598, i32 %113, i32 %116
  %sub603 = add nsw i32 %cond602, -1
  %idxprom604 = sext i32 %sub603 to i64
  %arrayidx605 = getelementptr inbounds i32* %ipointer, i64 %idxprom604
  %117 = load i32* %arrayidx605, align 4, !tbaa !3
  %cmp606 = icmp sle i32 %113, %116
  %cond610 = select i1 %cmp606, i32 %113, i32 %116
  %cmp611 = icmp sgt i32 %117, %cond610
  %cond610. = select i1 %cmp611, i32 %cond610, i32 %117
  store i32 %cond610., i32* %arrayidx605, align 4, !tbaa !3
  br label %if.end637

if.end637:                                        ; preds = %while.body580, %if.then597
  %sub639 = add nsw i32 %mul581, -1
  %idxprom640 = sext i32 %sub639 to i64
  %arrayidx641 = getelementptr inbounds i32* %nodempc, i64 %idxprom640
  %118 = load i32* %arrayidx641, align 4, !tbaa !3
  %cmp642 = icmp eq i32 %118, 0
  br i1 %cmp642, label %while.end645, label %while.body580

while.end645:                                     ; preds = %if.end637
  %sub647 = add nsw i32 %mul566, -1
  %idxprom648 = sext i32 %sub647 to i64
  %arrayidx649 = getelementptr inbounds i32* %nodempc, i64 %idxprom648
  %119 = load i32* %arrayidx649, align 4, !tbaa !3
  %cmp650 = icmp eq i32 %119, 0
  br i1 %cmp650, label %for.inc775.loopexit2382, label %while.body565

if.else654:                                       ; preds = %if.then546
  br i1 %cmp562, label %for.inc775, label %while.body665.preheader

while.body665.preheader:                          ; preds = %if.else654
  %sub679 = add nsw i32 %108, -1
  %idxprom680 = sext i32 %sub679 to i64
  %arrayidx681 = getelementptr inbounds i32* %ipompc, i64 %idxprom680
  br label %while.body665

while.body665:                                    ; preds = %while.end762, %if.then687, %while.body665.preheader
  %index1.1 = phi i32 [ %110, %while.body665.preheader ], [ %125, %if.then687 ], [ %131, %while.end762 ]
  %mul666 = mul nsw i32 %index1.1, 3
  %sub667 = add nsw i32 %mul666, -3
  %idxprom668 = sext i32 %sub667 to i64
  %arrayidx669 = getelementptr inbounds i32* %nodempc, i64 %idxprom668
  %120 = load i32* %arrayidx669, align 4, !tbaa !3
  %mul670 = shl i32 %120, 2
  %sub672 = add nsw i32 %mul666, -2
  %idxprom673 = sext i32 %sub672 to i64
  %arrayidx674 = getelementptr inbounds i32* %nodempc, i64 %idxprom673
  %121 = load i32* %arrayidx674, align 4, !tbaa !3
  %add675 = add i32 %121, -4
  %sub676 = add i32 %add675, %mul670
  %idxprom677 = sext i32 %sub676 to i64
  %arrayidx678 = getelementptr inbounds i32* %nactdof, i64 %idxprom677
  %122 = load i32* %arrayidx678, align 4, !tbaa !3
  %123 = load i32* %arrayidx681, align 4, !tbaa !3
  %mul682 = mul nsw i32 %123, 3
  %sub683 = add nsw i32 %mul682, -1
  %idxprom684 = sext i32 %sub683 to i64
  %arrayidx685 = getelementptr inbounds i32* %nodempc, i64 %idxprom684
  %124 = load i32* %arrayidx685, align 4, !tbaa !3
  %cmp686 = icmp eq i32 %124, 0
  br i1 %cmp686, label %if.then687, label %while.body697.preheader

while.body697.preheader:                          ; preds = %while.body665
  %cmp711 = icmp eq i32 %122, 0
  br label %while.body697

if.then687:                                       ; preds = %while.body665
  %sub689 = add nsw i32 %mul666, -1
  %idxprom690 = sext i32 %sub689 to i64
  %arrayidx691 = getelementptr inbounds i32* %nodempc, i64 %idxprom690
  %125 = load i32* %arrayidx691, align 4, !tbaa !3
  %cmp692 = icmp eq i32 %125, 0
  br i1 %cmp692, label %for.inc775.loopexit2379, label %while.body665

while.body697:                                    ; preds = %while.body697.preheader, %if.end754
  %index2.1 = phi i32 [ %130, %if.end754 ], [ %124, %while.body697.preheader ]
  %mul698 = mul nsw i32 %index2.1, 3
  %sub699 = add nsw i32 %mul698, -3
  %idxprom700 = sext i32 %sub699 to i64
  %arrayidx701 = getelementptr inbounds i32* %nodempc, i64 %idxprom700
  %126 = load i32* %arrayidx701, align 4, !tbaa !3
  %mul702 = shl i32 %126, 2
  %sub704 = add nsw i32 %mul698, -2
  %idxprom705 = sext i32 %sub704 to i64
  %arrayidx706 = getelementptr inbounds i32* %nodempc, i64 %idxprom705
  %127 = load i32* %arrayidx706, align 4, !tbaa !3
  %add707 = add i32 %127, -4
  %sub708 = add i32 %add707, %mul702
  %idxprom709 = sext i32 %sub708 to i64
  %arrayidx710 = getelementptr inbounds i32* %nactdof, i64 %idxprom709
  %128 = load i32* %arrayidx710, align 4, !tbaa !3
  %cmp713 = icmp eq i32 %128, 0
  %or.cond2346 = or i1 %cmp711, %cmp713
  br i1 %or.cond2346, label %if.end754, label %if.then714

if.then714:                                       ; preds = %while.body697
  %cmp715 = icmp sge i32 %122, %128
  %cond719 = select i1 %cmp715, i32 %122, i32 %128
  %sub720 = add nsw i32 %cond719, -1
  %idxprom721 = sext i32 %sub720 to i64
  %arrayidx722 = getelementptr inbounds i32* %ipointer, i64 %idxprom721
  %129 = load i32* %arrayidx722, align 4, !tbaa !3
  %cmp723 = icmp sle i32 %122, %128
  %cond727 = select i1 %cmp723, i32 %122, i32 %128
  %cmp728 = icmp sgt i32 %129, %cond727
  %cond727. = select i1 %cmp728, i32 %cond727, i32 %129
  store i32 %cond727., i32* %arrayidx722, align 4, !tbaa !3
  br label %if.end754

if.end754:                                        ; preds = %while.body697, %if.then714
  %sub756 = add nsw i32 %mul698, -1
  %idxprom757 = sext i32 %sub756 to i64
  %arrayidx758 = getelementptr inbounds i32* %nodempc, i64 %idxprom757
  %130 = load i32* %arrayidx758, align 4, !tbaa !3
  %cmp759 = icmp eq i32 %130, 0
  br i1 %cmp759, label %while.end762, label %while.body697

while.end762:                                     ; preds = %if.end754
  store i32 %128, i32* %idof2, align 4, !tbaa !3
  %sub764 = add nsw i32 %mul666, -1
  %idxprom765 = sext i32 %sub764 to i64
  %arrayidx766 = getelementptr inbounds i32* %nodempc, i64 %idxprom765
  %131 = load i32* %arrayidx766, align 4, !tbaa !3
  %cmp767 = icmp eq i32 %131, 0
  br i1 %cmp767, label %for.inc775.loopexit2379, label %while.body665

for.inc775.loopexit:                              ; preds = %if.end507
  store i32 %96, i32* %idof2, align 4, !tbaa !3
  br label %for.inc775

for.inc775.loopexit2379:                          ; preds = %while.end762, %if.then687
  store i32 %122, i32* %idof1, align 4, !tbaa !3
  br label %for.inc775

for.inc775.loopexit2382:                          ; preds = %while.end645
  store i32 %116, i32* %idof2, align 4, !tbaa !3
  store i32 %113, i32* %idof1, align 4, !tbaa !3
  br label %for.inc775

for.inc775:                                       ; preds = %for.inc775.loopexit2382, %for.inc775.loopexit2379, %for.inc775.loopexit, %if.end533, %if.else517, %if.then380, %if.end542, %if.end430, %land.lhs.true434, %if.then432, %if.else654, %if.then554, %if.then439
  %inc776 = add nsw i32 %ll.02385, 1
  %exitcond = icmp eq i32 %inc776, %nope.2
  br i1 %exitcond, label %for.inc778, label %for.inc775.for.body365_crit_edge

for.inc775.for.body365_crit_edge:                 ; preds = %for.inc775
  %.pre2560 = load i32* %jdof1, align 4, !tbaa !3
  br label %for.body365

for.inc778:                                       ; preds = %for.inc775, %for.body350
  %inc779 = add nsw i32 %jj.02386, 1
  %cmp349 = icmp slt i32 %inc779, %nope.2
  br i1 %cmp349, label %for.body350, label %for.inc781.loopexit

for.inc781.loopexit:                              ; preds = %for.inc778
  %.pre2559 = load i32* %ne, align 4, !tbaa !3
  br label %for.inc781

for.inc781:                                       ; preds = %for.body294, %for.inc781.loopexit
  %132 = phi i32 [ %.pre2559, %for.inc781.loopexit ], [ %74, %for.body294 ]
  %indvars.iv.next2475 = add i64 %indvars.iv2474, 1
  %133 = trunc i64 %indvars.iv.next2475 to i32
  %cmp293 = icmp slt i32 %133, %132
  br i1 %cmp293, label %for.body294, label %for.end783

for.end783:                                       ; preds = %for.inc781, %for.cond292.preheader
  store i32 0, i32* %icol, align 4, !tbaa !3
  %134 = load i32* %neq, align 4, !tbaa !3
  %cmp7862375 = icmp sgt i32 %134, 1
  br i1 %cmp7862375, label %for.body787, label %for.end804

for.body787:                                      ; preds = %for.end783, %for.body787
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body787 ], [ 1, %for.end783 ]
  %arrayidx789 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv
  %135 = load i32* %arrayidx789, align 4, !tbaa !3
  %arrayidx791 = getelementptr inbounds i32* %jq, i64 %indvars.iv
  store i32 %135, i32* %arrayidx791, align 4, !tbaa !3
  %136 = add nsw i64 %indvars.iv, -1
  %arrayidx794 = getelementptr inbounds i32* %icol, i64 %136
  %137 = load i32* %arrayidx794, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %138 = trunc i64 %indvars.iv.next to i32
  %sub798 = sub i32 %138, %135
  %add799 = add i32 %sub798, %137
  %arrayidx801 = getelementptr inbounds i32* %icol, i64 %indvars.iv
  store i32 %add799, i32* %arrayidx801, align 4, !tbaa !3
  %139 = load i32* %neq, align 4, !tbaa !3
  %cmp786 = icmp slt i32 %138, %139
  br i1 %cmp786, label %for.body787, label %for.end804

for.end804:                                       ; preds = %for.body787, %for.end783
  %.lcssa = phi i32 [ %134, %for.end783 ], [ %139, %for.body787 ]
  %sub805 = add nsw i32 %.lcssa, -1
  %idxprom806 = sext i32 %sub805 to i64
  %arrayidx807 = getelementptr inbounds i32* %icol, i64 %idxprom806
  %140 = load i32* %arrayidx807, align 4, !tbaa !3
  store i32 %140, i32* %nsky, align 4, !tbaa !3
  %141 = load i32* %neq, align 4, !tbaa !3
  %cmp808 = icmp eq i32 %141, 0
  br i1 %cmp808, label %if.then809, label %if.end811

if.then809:                                       ; preds = %for.end804
  %puts2332 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str22, i64 0, i64 0))
  call void (...)* @stop_() #4
  br label %if.end811

if.end811:                                        ; preds = %if.then809, %for.end804
  %puts2330 = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str20, i64 0, i64 0))
  %142 = load i32* %neq, align 4, !tbaa !3
  %call813 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 %142) #4
  %puts2331 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str21, i64 0, i64 0))
  %143 = load i32* %neq, align 4, !tbaa !3
  %sub815 = add nsw i32 %143, -1
  %idxprom816 = sext i32 %sub815 to i64
  %arrayidx817 = getelementptr inbounds i32* %icol, i64 %idxprom816
  %144 = load i32* %arrayidx817, align 4, !tbaa !3
  %call818 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i32 %144) #4
  br label %if.end1718

for.body823:                                      ; preds = %for.cond820.preheader, %for.body823
  %indvars.iv2515 = phi i64 [ %indvars.iv.next2516, %for.body823 ], [ 0, %for.cond820.preheader ]
  %arrayidx825 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv2515
  store i32 0, i32* %arrayidx825, align 4, !tbaa !3
  %indvars.iv.next2516 = add i64 %indvars.iv2515, 1
  %145 = load i32* %nk, align 4, !tbaa !3
  %mul821 = shl nsw i32 %145, 2
  %146 = trunc i64 %indvars.iv.next2516 to i32
  %cmp822 = icmp slt i32 %146, %mul821
  br i1 %cmp822, label %for.body823, label %for.end828

for.end828:                                       ; preds = %for.body823, %for.cond820.preheader
  %147 = load i32* %ithermal, align 4, !tbaa !3
  %cmp829 = icmp slt i32 %147, 2
  %cmp831 = icmp eq i32 %147, 3
  %or.cond2347 = or i1 %cmp829, %cmp831
  br i1 %or.cond2347, label %for.cond833.preheader, label %if.end1177

for.cond833.preheader:                            ; preds = %for.end828
  %148 = load i32* %ne, align 4, !tbaa !3
  %cmp8342441 = icmp sgt i32 %148, 0
  br i1 %cmp8342441, label %for.body835, label %if.end1177

for.body835:                                      ; preds = %for.cond833.preheader, %for.inc1174
  %149 = phi i32 [ %205, %for.inc1174 ], [ %148, %for.cond833.preheader ]
  %indvars.iv2513 = phi i64 [ %indvars.iv.next2514, %for.inc1174 ], [ 0, %for.cond833.preheader ]
  %arrayidx837 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv2513
  %150 = load i32* %arrayidx837, align 4, !tbaa !3
  %cmp838 = icmp slt i32 %150, 0
  br i1 %cmp838, label %for.inc1174, label %if.end840

if.end840:                                        ; preds = %for.body835
  %151 = trunc i64 %indvars.iv2513 to i32
  %mul843 = shl nsw i32 %151, 3
  %add8442328 = or i32 %mul843, 3
  %idxprom845 = sext i32 %add8442328 to i64
  %arrayidx846 = getelementptr inbounds i8* %lakon, i64 %idxprom845
  %call847 = call i32 @strcmp1(i8* %arrayidx846, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp848 = icmp eq i32 %call847, 0
  br i1 %cmp848, label %if.end887, label %if.else850

if.else850:                                       ; preds = %if.end840
  %call855 = call i32 @strcmp1(i8* %arrayidx846, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp856 = icmp eq i32 %call855, 0
  br i1 %cmp856, label %if.end887, label %if.else858

if.else858:                                       ; preds = %if.else850
  %call863 = call i32 @strcmp1(i8* %arrayidx846, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp864 = icmp eq i32 %call863, 0
  br i1 %cmp864, label %if.end887, label %if.else866

if.else866:                                       ; preds = %if.else858
  %call871 = call i32 @strcmp1(i8* %arrayidx846, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp872 = icmp eq i32 %call871, 0
  br i1 %cmp872, label %if.end887, label %if.else874

if.else874:                                       ; preds = %if.else866
  %call879 = call i32 @strcmp1(i8* %arrayidx846, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp880 = icmp eq i32 %call879, 0
  %.2348 = select i1 %cmp880, i32 45, i32 18
  br label %if.end887

if.end887:                                        ; preds = %if.else874, %if.else866, %if.else858, %if.else850, %if.end840
  %nope.3 = phi i32 [ 60, %if.end840 ], [ 24, %if.else850 ], [ 30, %if.else858 ], [ 12, %if.else866 ], [ %.2348, %if.else874 ]
  br label %for.body891

for.body891:                                      ; preds = %if.end887, %for.inc1171
  %jj.12440 = phi i32 [ 0, %if.end887 ], [ %inc1172, %for.inc1171 ]
  %div892 = sdiv i32 %jj.12440, 3
  %152 = mul i32 %div892, -3
  %sub894 = add i32 %152, %jj.12440
  %add895 = add nsw i32 %div892, %150
  %idxprom896 = sext i32 %add895 to i64
  %arrayidx897 = getelementptr inbounds i32* %kon, i64 %idxprom896
  %153 = load i32* %arrayidx897, align 4, !tbaa !3
  %sub898 = shl i32 %153, 2
  %add900 = add i32 %sub898, -3
  %add901 = add i32 %add900, %sub894
  %idxprom902 = sext i32 %add901 to i64
  %arrayidx903 = getelementptr inbounds i32* %nactdof, i64 %idxprom902
  %154 = load i32* %arrayidx903, align 4, !tbaa !3
  store i32 %154, i32* %jdof1, align 4, !tbaa !3
  %cmp9062438 = icmp slt i32 %jj.12440, %nope.3
  br i1 %cmp9062438, label %for.body907.lr.ph, label %for.inc1171

for.body907.lr.ph:                                ; preds = %for.body891
  %mul989 = mul nsw i32 %153, 7
  %add990 = add i32 %sub894, -6
  %sub991 = add i32 %add990, %mul989
  %add932 = add nsw i32 %mul989, %sub894
  br label %for.body907

for.body907:                                      ; preds = %for.inc1168.for.body907_crit_edge, %for.body907.lr.ph
  %155 = phi i32 [ %154, %for.body907.lr.ph ], [ %.pre2569, %for.inc1168.for.body907_crit_edge ]
  %ll.12439 = phi i32 [ %jj.12440, %for.body907.lr.ph ], [ %inc1169, %for.inc1168.for.body907_crit_edge ]
  %div908 = sdiv i32 %ll.12439, 3
  %156 = mul i32 %div908, -3
  %sub910 = add i32 %156, %ll.12439
  %add911 = add nsw i32 %div908, %150
  %idxprom912 = sext i32 %add911 to i64
  %arrayidx913 = getelementptr inbounds i32* %kon, i64 %idxprom912
  %157 = load i32* %arrayidx913, align 4, !tbaa !3
  %sub914 = shl i32 %157, 2
  %add916 = add i32 %sub914, -3
  %add917 = add i32 %add916, %sub910
  %idxprom918 = sext i32 %add917 to i64
  %arrayidx919 = getelementptr inbounds i32* %nactdof, i64 %idxprom918
  %158 = load i32* %arrayidx919, align 4, !tbaa !3
  store i32 %158, i32* %jdof2, align 4, !tbaa !3
  %cmp920 = icmp eq i32 %155, 0
  %cmp922 = icmp eq i32 %158, 0
  %or.cond2349 = or i1 %cmp920, %cmp922
  br i1 %or.cond2349, label %if.else924, label %if.then923

if.then923:                                       ; preds = %for.body907
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %jdof1, i32* %jdof2, i32* %ifree, i32* %nzs_) #4
  br label %for.inc1168

if.else924:                                       ; preds = %for.body907
  %159 = or i32 %155, %158
  %brmerge2373 = icmp eq i32 %159, 0
  br i1 %brmerge2373, label %if.else988, label %if.then928

if.then928:                                       ; preds = %if.else924
  br i1 %cmp920, label %if.then930, label %if.else934

if.then930:                                       ; preds = %if.then928
  store i32 %158, i32* %idof1, align 4, !tbaa !3
  br label %if.end938

if.else934:                                       ; preds = %if.then928
  store i32 %155, i32* %idof1, align 4, !tbaa !3
  %mul935 = mul nsw i32 %157, 7
  %add936 = add nsw i32 %mul935, %sub910
  br label %if.end938

if.end938:                                        ; preds = %if.else934, %if.then930
  %storemerge2329.in = phi i32 [ %add936, %if.else934 ], [ %add932, %if.then930 ]
  %storemerge2329 = add nsw i32 %storemerge2329.in, -6
  store i32 %storemerge2329, i32* %idof2, align 4, !tbaa !3
  %160 = load i32* %nmpc, align 4, !tbaa !3
  %cmp939 = icmp sgt i32 %160, 0
  br i1 %cmp939, label %if.then940, label %for.inc1168

if.then940:                                       ; preds = %if.end938
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id) #4
  %161 = load i32* %id, align 4, !tbaa !3
  %cmp941 = icmp sgt i32 %161, 0
  br i1 %cmp941, label %land.lhs.true942, label %for.inc1168

land.lhs.true942:                                 ; preds = %if.then940
  %sub943 = add nsw i32 %161, -1
  %idxprom944 = sext i32 %sub943 to i64
  %arrayidx945 = getelementptr inbounds i32* %ikmpc, i64 %idxprom944
  %162 = load i32* %arrayidx945, align 4, !tbaa !3
  %163 = load i32* %idof2, align 4, !tbaa !3
  %cmp946 = icmp eq i32 %162, %163
  br i1 %cmp946, label %if.then947, label %for.inc1168

if.then947:                                       ; preds = %land.lhs.true942
  %arrayidx950 = getelementptr inbounds i32* %ilmpc, i64 %idxprom944
  %164 = load i32* %arrayidx950, align 4, !tbaa !3
  store i32 %164, i32* %id, align 4, !tbaa !3
  %sub951 = add nsw i32 %164, -1
  %idxprom952 = sext i32 %sub951 to i64
  %arrayidx953 = getelementptr inbounds i32* %ipompc, i64 %idxprom952
  %165 = load i32* %arrayidx953, align 4, !tbaa !3
  %mul954 = mul nsw i32 %165, 3
  %sub955 = add nsw i32 %mul954, -1
  %idxprom956 = sext i32 %sub955 to i64
  %arrayidx957 = getelementptr inbounds i32* %nodempc, i64 %idxprom956
  %166 = load i32* %arrayidx957, align 4, !tbaa !3
  %cmp958 = icmp eq i32 %166, 0
  br i1 %cmp958, label %for.inc1168, label %while.body961

while.body961:                                    ; preds = %if.then947, %if.end977
  %index.2 = phi i32 [ %170, %if.end977 ], [ %166, %if.then947 ]
  %mul962 = mul nsw i32 %index.2, 3
  %sub963 = add nsw i32 %mul962, -3
  %idxprom964 = sext i32 %sub963 to i64
  %arrayidx965 = getelementptr inbounds i32* %nodempc, i64 %idxprom964
  %167 = load i32* %arrayidx965, align 4, !tbaa !3
  %mul966 = shl i32 %167, 2
  %sub968 = add nsw i32 %mul962, -2
  %idxprom969 = sext i32 %sub968 to i64
  %arrayidx970 = getelementptr inbounds i32* %nodempc, i64 %idxprom969
  %168 = load i32* %arrayidx970, align 4, !tbaa !3
  %add971 = add i32 %168, -4
  %sub972 = add i32 %add971, %mul966
  %idxprom973 = sext i32 %sub972 to i64
  %arrayidx974 = getelementptr inbounds i32* %nactdof, i64 %idxprom973
  %169 = load i32* %arrayidx974, align 4, !tbaa !3
  store i32 %169, i32* %idof2, align 4, !tbaa !3
  %cmp975 = icmp eq i32 %169, 0
  br i1 %cmp975, label %if.end977, label %if.then976

if.then976:                                       ; preds = %while.body961
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end977

if.end977:                                        ; preds = %while.body961, %if.then976
  %sub979 = add nsw i32 %mul962, -1
  %idxprom980 = sext i32 %sub979 to i64
  %arrayidx981 = getelementptr inbounds i32* %nodempc, i64 %idxprom980
  %170 = load i32* %arrayidx981, align 4, !tbaa !3
  %cmp982 = icmp eq i32 %170, 0
  br i1 %cmp982, label %for.inc1168, label %while.body961

if.else988:                                       ; preds = %if.else924
  store i32 %sub991, i32* %idof1, align 4, !tbaa !3
  %mul992 = mul nsw i32 %157, 7
  %add993 = add i32 %sub910, -6
  %sub994 = add i32 %add993, %mul992
  store i32 %sub994, i32* %idof2, align 4, !tbaa !3
  %171 = load i32* %nmpc, align 4, !tbaa !3
  %cmp995 = icmp sgt i32 %171, 0
  br i1 %cmp995, label %if.then996, label %for.inc1168

if.then996:                                       ; preds = %if.else988
  call void @nident_(i32* %ikmpc, i32* %idof1, i32* %nmpc, i32* %id1) #4
  %172 = load i32* %id1, align 4, !tbaa !3
  %cmp997 = icmp sgt i32 %172, 0
  br i1 %cmp997, label %land.lhs.true998, label %if.end1004

land.lhs.true998:                                 ; preds = %if.then996
  %sub999 = add nsw i32 %172, -1
  %idxprom1000 = sext i32 %sub999 to i64
  %arrayidx1001 = getelementptr inbounds i32* %ikmpc, i64 %idxprom1000
  %173 = load i32* %arrayidx1001, align 4, !tbaa !3
  %174 = load i32* %idof1, align 4, !tbaa !3
  %cmp1002 = icmp eq i32 %173, %174
  %.2350 = zext i1 %cmp1002 to i32
  br label %if.end1004

if.end1004:                                       ; preds = %land.lhs.true998, %if.then996
  %mpc1.2 = phi i32 [ 0, %if.then996 ], [ %.2350, %land.lhs.true998 ]
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id2) #4
  %175 = load i32* %id2, align 4, !tbaa !3
  %cmp1005 = icmp sgt i32 %175, 0
  br i1 %cmp1005, label %if.end1013, label %for.inc1168

if.end1013:                                       ; preds = %if.end1004
  %sub1007 = add nsw i32 %175, -1
  %idxprom1008 = sext i32 %sub1007 to i64
  %arrayidx1009 = getelementptr inbounds i32* %ikmpc, i64 %idxprom1008
  %176 = load i32* %arrayidx1009, align 4, !tbaa !3
  %177 = load i32* %idof2, align 4, !tbaa !3
  %cmp1010 = icmp eq i32 %176, %177
  %cmp1014 = icmp eq i32 %mpc1.2, 1
  %or.cond2352 = and i1 %cmp1014, %cmp1010
  br i1 %or.cond2352, label %if.then1017, label %for.inc1168

if.then1017:                                      ; preds = %if.end1013
  %178 = load i32* %id1, align 4, !tbaa !3
  %sub1018 = add nsw i32 %178, -1
  %idxprom1019 = sext i32 %sub1018 to i64
  %arrayidx1020 = getelementptr inbounds i32* %ilmpc, i64 %idxprom1019
  %179 = load i32* %arrayidx1020, align 4, !tbaa !3
  store i32 %179, i32* %id1, align 4, !tbaa !3
  %arrayidx1023 = getelementptr inbounds i32* %ilmpc, i64 %idxprom1008
  %180 = load i32* %arrayidx1023, align 4, !tbaa !3
  store i32 %180, i32* %id2, align 4, !tbaa !3
  %cmp1024 = icmp eq i32 %179, %180
  %sub1026 = add nsw i32 %179, -1
  %idxprom1027 = sext i32 %sub1026 to i64
  %arrayidx1028 = getelementptr inbounds i32* %ipompc, i64 %idxprom1027
  %181 = load i32* %arrayidx1028, align 4, !tbaa !3
  %mul1029 = mul nsw i32 %181, 3
  %sub1030 = add nsw i32 %mul1029, -1
  %idxprom1031 = sext i32 %sub1030 to i64
  %arrayidx1032 = getelementptr inbounds i32* %nodempc, i64 %idxprom1031
  %182 = load i32* %arrayidx1032, align 4, !tbaa !3
  %cmp1033 = icmp eq i32 %182, 0
  br i1 %cmp1024, label %if.then1025, label %if.else1086

if.then1025:                                      ; preds = %if.then1017
  br i1 %cmp1033, label %for.inc1168, label %while.body1036

while.body1036:                                   ; preds = %if.then1025, %while.end1077
  %index1.2 = phi i32 [ %191, %while.end1077 ], [ %182, %if.then1025 ]
  %mul1037 = mul nsw i32 %index1.2, 3
  %sub1038 = add nsw i32 %mul1037, -3
  %idxprom1039 = sext i32 %sub1038 to i64
  %arrayidx1040 = getelementptr inbounds i32* %nodempc, i64 %idxprom1039
  %183 = load i32* %arrayidx1040, align 4, !tbaa !3
  %mul1041 = shl i32 %183, 2
  %sub1043 = add nsw i32 %mul1037, -2
  %idxprom1044 = sext i32 %sub1043 to i64
  %arrayidx1045 = getelementptr inbounds i32* %nodempc, i64 %idxprom1044
  %184 = load i32* %arrayidx1045, align 4, !tbaa !3
  %add1046 = add i32 %184, -4
  %sub1047 = add i32 %add1046, %mul1041
  %idxprom1048 = sext i32 %sub1047 to i64
  %arrayidx1049 = getelementptr inbounds i32* %nactdof, i64 %idxprom1048
  %185 = load i32* %arrayidx1049, align 4, !tbaa !3
  store i32 %185, i32* %idof1, align 4, !tbaa !3
  br label %while.body1051

while.body1051:                                   ; preds = %if.end1069.while.body1051_crit_edge, %while.body1036
  %186 = phi i32 [ %185, %while.body1036 ], [ %.pre2570, %if.end1069.while.body1051_crit_edge ]
  %index2.2 = phi i32 [ %index1.2, %while.body1036 ], [ %190, %if.end1069.while.body1051_crit_edge ]
  %mul1052 = mul nsw i32 %index2.2, 3
  %sub1053 = add nsw i32 %mul1052, -3
  %idxprom1054 = sext i32 %sub1053 to i64
  %arrayidx1055 = getelementptr inbounds i32* %nodempc, i64 %idxprom1054
  %187 = load i32* %arrayidx1055, align 4, !tbaa !3
  %mul1056 = shl i32 %187, 2
  %sub1058 = add nsw i32 %mul1052, -2
  %idxprom1059 = sext i32 %sub1058 to i64
  %arrayidx1060 = getelementptr inbounds i32* %nodempc, i64 %idxprom1059
  %188 = load i32* %arrayidx1060, align 4, !tbaa !3
  %add1061 = add i32 %188, -4
  %sub1062 = add i32 %add1061, %mul1056
  %idxprom1063 = sext i32 %sub1062 to i64
  %arrayidx1064 = getelementptr inbounds i32* %nactdof, i64 %idxprom1063
  %189 = load i32* %arrayidx1064, align 4, !tbaa !3
  store i32 %189, i32* %idof2, align 4, !tbaa !3
  %cmp1065 = icmp eq i32 %186, 0
  %cmp1067 = icmp eq i32 %189, 0
  %or.cond2353 = or i1 %cmp1065, %cmp1067
  br i1 %or.cond2353, label %if.end1069, label %if.then1068

if.then1068:                                      ; preds = %while.body1051
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end1069

if.end1069:                                       ; preds = %while.body1051, %if.then1068
  %sub1071 = add nsw i32 %mul1052, -1
  %idxprom1072 = sext i32 %sub1071 to i64
  %arrayidx1073 = getelementptr inbounds i32* %nodempc, i64 %idxprom1072
  %190 = load i32* %arrayidx1073, align 4, !tbaa !3
  %cmp1074 = icmp eq i32 %190, 0
  br i1 %cmp1074, label %while.end1077, label %if.end1069.while.body1051_crit_edge

if.end1069.while.body1051_crit_edge:              ; preds = %if.end1069
  %.pre2570 = load i32* %idof1, align 4, !tbaa !3
  br label %while.body1051

while.end1077:                                    ; preds = %if.end1069
  %sub1079 = add nsw i32 %mul1037, -1
  %idxprom1080 = sext i32 %sub1079 to i64
  %arrayidx1081 = getelementptr inbounds i32* %nodempc, i64 %idxprom1080
  %191 = load i32* %arrayidx1081, align 4, !tbaa !3
  %cmp1082 = icmp eq i32 %191, 0
  br i1 %cmp1082, label %for.inc1168, label %while.body1036

if.else1086:                                      ; preds = %if.then1017
  br i1 %cmp1033, label %for.inc1168, label %while.body1097

while.body1097:                                   ; preds = %while.end1155.while.body1097.backedge_crit_edge, %if.then1119, %if.else1086
  %192 = phi i32 [ %180, %if.else1086 ], [ %.pre2552.pre, %while.end1155.while.body1097.backedge_crit_edge ], [ %192, %if.then1119 ]
  %index1.3 = phi i32 [ %182, %if.else1086 ], [ %204, %while.end1155.while.body1097.backedge_crit_edge ], [ %198, %if.then1119 ]
  %mul1098 = mul nsw i32 %index1.3, 3
  %sub1099 = add nsw i32 %mul1098, -3
  %idxprom1100 = sext i32 %sub1099 to i64
  %arrayidx1101 = getelementptr inbounds i32* %nodempc, i64 %idxprom1100
  %193 = load i32* %arrayidx1101, align 4, !tbaa !3
  %mul1102 = shl i32 %193, 2
  %sub1104 = add nsw i32 %mul1098, -2
  %idxprom1105 = sext i32 %sub1104 to i64
  %arrayidx1106 = getelementptr inbounds i32* %nodempc, i64 %idxprom1105
  %194 = load i32* %arrayidx1106, align 4, !tbaa !3
  %add1107 = add i32 %194, -4
  %sub1108 = add i32 %add1107, %mul1102
  %idxprom1109 = sext i32 %sub1108 to i64
  %arrayidx1110 = getelementptr inbounds i32* %nactdof, i64 %idxprom1109
  %195 = load i32* %arrayidx1110, align 4, !tbaa !3
  store i32 %195, i32* %idof1, align 4, !tbaa !3
  %sub1111 = add nsw i32 %192, -1
  %idxprom1112 = sext i32 %sub1111 to i64
  %arrayidx1113 = getelementptr inbounds i32* %ipompc, i64 %idxprom1112
  %196 = load i32* %arrayidx1113, align 4, !tbaa !3
  %mul1114 = mul nsw i32 %196, 3
  %sub1115 = add nsw i32 %mul1114, -1
  %idxprom1116 = sext i32 %sub1115 to i64
  %arrayidx1117 = getelementptr inbounds i32* %nodempc, i64 %idxprom1116
  %197 = load i32* %arrayidx1117, align 4, !tbaa !3
  %cmp1118 = icmp eq i32 %197, 0
  br i1 %cmp1118, label %if.then1119, label %while.body1129

if.then1119:                                      ; preds = %while.body1097
  %sub1121 = add nsw i32 %mul1098, -1
  %idxprom1122 = sext i32 %sub1121 to i64
  %arrayidx1123 = getelementptr inbounds i32* %nodempc, i64 %idxprom1122
  %198 = load i32* %arrayidx1123, align 4, !tbaa !3
  %cmp1124 = icmp eq i32 %198, 0
  br i1 %cmp1124, label %for.inc1168, label %while.body1097

while.body1129:                                   ; preds = %while.body1097, %if.end1147.while.body1129_crit_edge
  %199 = phi i32 [ %.pre2571, %if.end1147.while.body1129_crit_edge ], [ %195, %while.body1097 ]
  %index2.3 = phi i32 [ %203, %if.end1147.while.body1129_crit_edge ], [ %197, %while.body1097 ]
  %mul1130 = mul nsw i32 %index2.3, 3
  %sub1131 = add nsw i32 %mul1130, -3
  %idxprom1132 = sext i32 %sub1131 to i64
  %arrayidx1133 = getelementptr inbounds i32* %nodempc, i64 %idxprom1132
  %200 = load i32* %arrayidx1133, align 4, !tbaa !3
  %mul1134 = shl i32 %200, 2
  %sub1136 = add nsw i32 %mul1130, -2
  %idxprom1137 = sext i32 %sub1136 to i64
  %arrayidx1138 = getelementptr inbounds i32* %nodempc, i64 %idxprom1137
  %201 = load i32* %arrayidx1138, align 4, !tbaa !3
  %add1139 = add i32 %201, -4
  %sub1140 = add i32 %add1139, %mul1134
  %idxprom1141 = sext i32 %sub1140 to i64
  %arrayidx1142 = getelementptr inbounds i32* %nactdof, i64 %idxprom1141
  %202 = load i32* %arrayidx1142, align 4, !tbaa !3
  store i32 %202, i32* %idof2, align 4, !tbaa !3
  %cmp1143 = icmp eq i32 %199, 0
  %cmp1145 = icmp eq i32 %202, 0
  %or.cond2354 = or i1 %cmp1143, %cmp1145
  br i1 %or.cond2354, label %if.end1147, label %if.then1146

if.then1146:                                      ; preds = %while.body1129
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end1147

if.end1147:                                       ; preds = %while.body1129, %if.then1146
  %sub1149 = add nsw i32 %mul1130, -1
  %idxprom1150 = sext i32 %sub1149 to i64
  %arrayidx1151 = getelementptr inbounds i32* %nodempc, i64 %idxprom1150
  %203 = load i32* %arrayidx1151, align 4, !tbaa !3
  %cmp1152 = icmp eq i32 %203, 0
  br i1 %cmp1152, label %while.end1155, label %if.end1147.while.body1129_crit_edge

if.end1147.while.body1129_crit_edge:              ; preds = %if.end1147
  %.pre2571 = load i32* %idof1, align 4, !tbaa !3
  br label %while.body1129

while.end1155:                                    ; preds = %if.end1147
  %sub1157 = add nsw i32 %mul1098, -1
  %idxprom1158 = sext i32 %sub1157 to i64
  %arrayidx1159 = getelementptr inbounds i32* %nodempc, i64 %idxprom1158
  %204 = load i32* %arrayidx1159, align 4, !tbaa !3
  %cmp1160 = icmp eq i32 %204, 0
  br i1 %cmp1160, label %for.inc1168, label %while.end1155.while.body1097.backedge_crit_edge

while.end1155.while.body1097.backedge_crit_edge:  ; preds = %while.end1155
  %.pre2552.pre = load i32* %id2, align 4, !tbaa !3
  br label %while.body1097

for.inc1168:                                      ; preds = %while.end1077, %if.then1119, %while.end1155, %if.end977, %if.end1004, %if.else988, %if.then923, %if.end1013, %if.end938, %land.lhs.true942, %if.then940, %if.else1086, %if.then1025, %if.then947
  %inc1169 = add nsw i32 %ll.12439, 1
  %exitcond2512 = icmp eq i32 %inc1169, %nope.3
  br i1 %exitcond2512, label %for.inc1171, label %for.inc1168.for.body907_crit_edge

for.inc1168.for.body907_crit_edge:                ; preds = %for.inc1168
  %.pre2569 = load i32* %jdof1, align 4, !tbaa !3
  br label %for.body907

for.inc1171:                                      ; preds = %for.inc1168, %for.body891
  %inc1172 = add nsw i32 %jj.12440, 1
  %cmp890 = icmp slt i32 %inc1172, %nope.3
  br i1 %cmp890, label %for.body891, label %for.inc1174.loopexit

for.inc1174.loopexit:                             ; preds = %for.inc1171
  %.pre2568 = load i32* %ne, align 4, !tbaa !3
  br label %for.inc1174

for.inc1174:                                      ; preds = %for.body835, %for.inc1174.loopexit
  %205 = phi i32 [ %.pre2568, %for.inc1174.loopexit ], [ %149, %for.body835 ]
  %indvars.iv.next2514 = add i64 %indvars.iv2513, 1
  %206 = trunc i64 %indvars.iv.next2514 to i32
  %cmp834 = icmp slt i32 %206, %205
  br i1 %cmp834, label %for.body835, label %for.cond833.if.end1177thread-pre-split_crit_edge

for.cond833.if.end1177thread-pre-split_crit_edge: ; preds = %for.inc1174
  %.pr2369.pre = load i32* %ithermal, align 4, !tbaa !3
  br label %if.end1177

if.end1177:                                       ; preds = %for.cond833.preheader, %for.cond833.if.end1177thread-pre-split_crit_edge, %for.end828
  %207 = phi i32 [ %147, %for.end828 ], [ %.pr2369.pre, %for.cond833.if.end1177thread-pre-split_crit_edge ], [ %147, %for.cond833.preheader ]
  %cmp1178 = icmp sgt i32 %207, 1
  br i1 %cmp1178, label %for.cond1180.preheader, label %for.cond1509.preheader

for.cond1180.preheader:                           ; preds = %if.end1177
  %208 = load i32* %ne, align 4, !tbaa !3
  %cmp11812434 = icmp sgt i32 %208, 0
  br i1 %cmp11812434, label %for.body1182, label %for.cond1509.preheader

for.cond1509.preheader:                           ; preds = %for.cond1180.preheader, %for.inc1505, %if.end1177
  %209 = load i32* %neq, align 4, !tbaa !3
  %cmp15102427 = icmp sgt i32 %209, 0
  br i1 %cmp15102427, label %for.body1511, label %for.cond1569.preheader

for.body1182:                                     ; preds = %for.cond1180.preheader, %for.inc1505
  %210 = phi i32 [ %269, %for.inc1505 ], [ %208, %for.cond1180.preheader ]
  %indvars.iv2510 = phi i64 [ %indvars.iv.next2511, %for.inc1505 ], [ 0, %for.cond1180.preheader ]
  %arrayidx1184 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv2510
  %211 = load i32* %arrayidx1184, align 4, !tbaa !3
  %cmp1185 = icmp slt i32 %211, 0
  br i1 %cmp1185, label %for.inc1505, label %if.end1187

if.end1187:                                       ; preds = %for.body1182
  %212 = trunc i64 %indvars.iv2510 to i32
  %mul1190 = shl nsw i32 %212, 3
  %add11912326 = or i32 %mul1190, 3
  %idxprom1192 = sext i32 %add11912326 to i64
  %arrayidx1193 = getelementptr inbounds i8* %lakon, i64 %idxprom1192
  %call1194 = call i32 @strcmp1(i8* %arrayidx1193, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp1195 = icmp eq i32 %call1194, 0
  br i1 %cmp1195, label %if.end1234, label %if.else1197

if.else1197:                                      ; preds = %if.end1187
  %call1202 = call i32 @strcmp1(i8* %arrayidx1193, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp1203 = icmp eq i32 %call1202, 0
  br i1 %cmp1203, label %if.end1234, label %if.else1205

if.else1205:                                      ; preds = %if.else1197
  %call1210 = call i32 @strcmp1(i8* %arrayidx1193, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp1211 = icmp eq i32 %call1210, 0
  br i1 %cmp1211, label %if.end1234, label %if.else1213

if.else1213:                                      ; preds = %if.else1205
  %call1218 = call i32 @strcmp1(i8* %arrayidx1193, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp1219 = icmp eq i32 %call1218, 0
  br i1 %cmp1219, label %if.end1234, label %if.else1221

if.else1221:                                      ; preds = %if.else1213
  %call1226 = call i32 @strcmp1(i8* %arrayidx1193, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp1227 = icmp eq i32 %call1226, 0
  %.2355 = select i1 %cmp1227, i32 15, i32 6
  br label %if.end1234

if.end1234:                                       ; preds = %if.else1221, %if.else1213, %if.else1205, %if.else1197, %if.end1187
  %nope.4 = phi i32 [ 20, %if.end1187 ], [ 8, %if.else1197 ], [ 10, %if.else1205 ], [ 4, %if.else1213 ], [ %.2355, %if.else1221 ]
  %213 = sext i32 %211 to i64
  br label %for.body1237

for.body1237:                                     ; preds = %if.end1234, %for.inc1502
  %indvars.iv2507 = phi i64 [ 0, %if.end1234 ], [ %indvars.iv.next2508, %for.inc1502 ]
  %214 = add nsw i64 %indvars.iv2507, %213
  %arrayidx1240 = getelementptr inbounds i32* %kon, i64 %214
  %215 = load i32* %arrayidx1240, align 4, !tbaa !3
  %sub1241 = shl i32 %215, 2
  %mul1242 = add i32 %sub1241, -4
  %idxprom1243 = sext i32 %mul1242 to i64
  %arrayidx1244 = getelementptr inbounds i32* %nactdof, i64 %idxprom1243
  %216 = load i32* %arrayidx1244, align 4, !tbaa !3
  store i32 %216, i32* %jdof1, align 4, !tbaa !3
  %217 = trunc i64 %indvars.iv2507 to i32
  %cmp12462431 = icmp slt i32 %217, %nope.4
  br i1 %cmp12462431, label %for.body1247.lr.ph, label %for.inc1502

for.body1247.lr.ph:                               ; preds = %for.body1237
  %mul1322 = mul nsw i32 %215, 7
  %sub1323 = add nsw i32 %mul1322, -7
  br label %for.body1247

for.body1247:                                     ; preds = %for.inc1499.for.body1247_crit_edge, %for.body1247.lr.ph
  %218 = phi i32 [ %216, %for.body1247.lr.ph ], [ %.pre2565, %for.inc1499.for.body1247_crit_edge ]
  %indvars.iv2503 = phi i64 [ %indvars.iv2507, %for.body1247.lr.ph ], [ %indvars.iv.next2504, %for.inc1499.for.body1247_crit_edge ]
  %219 = add nsw i64 %indvars.iv2503, %213
  %arrayidx1250 = getelementptr inbounds i32* %kon, i64 %219
  %220 = load i32* %arrayidx1250, align 4, !tbaa !3
  %sub1251 = shl i32 %220, 2
  %mul1252 = add i32 %sub1251, -4
  %idxprom1253 = sext i32 %mul1252 to i64
  %arrayidx1254 = getelementptr inbounds i32* %nactdof, i64 %idxprom1253
  %221 = load i32* %arrayidx1254, align 4, !tbaa !3
  store i32 %221, i32* %jdof2, align 4, !tbaa !3
  %cmp1255 = icmp eq i32 %218, 0
  %cmp1257 = icmp eq i32 %221, 0
  %or.cond2356 = or i1 %cmp1255, %cmp1257
  br i1 %or.cond2356, label %if.else1259, label %if.then1258

if.then1258:                                      ; preds = %for.body1247
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %jdof1, i32* %jdof2, i32* %ifree, i32* %nzs_) #4
  br label %for.inc1499

if.else1259:                                      ; preds = %for.body1247
  %222 = or i32 %218, %221
  %brmerge2374 = icmp eq i32 %222, 0
  br i1 %brmerge2374, label %if.else1321, label %if.then1263

if.then1263:                                      ; preds = %if.else1259
  %storemerge2337 = select i1 %cmp1255, i32 %221, i32 %218
  %storemerge2327.in.in = select i1 %cmp1255, i32 %215, i32 %220
  store i32 %storemerge2337, i32* %idof1, align 4, !tbaa !3
  %storemerge2327.in = mul nsw i32 %storemerge2327.in.in, 7
  %storemerge2327 = add nsw i32 %storemerge2327.in, -7
  store i32 %storemerge2327, i32* %idof2, align 4, !tbaa !3
  %223 = load i32* %nmpc, align 4, !tbaa !3
  %cmp1272 = icmp sgt i32 %223, 0
  br i1 %cmp1272, label %if.then1273, label %for.inc1499

if.then1273:                                      ; preds = %if.then1263
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id) #4
  %224 = load i32* %id, align 4, !tbaa !3
  %cmp1274 = icmp sgt i32 %224, 0
  br i1 %cmp1274, label %land.lhs.true1275, label %for.inc1499

land.lhs.true1275:                                ; preds = %if.then1273
  %sub1276 = add nsw i32 %224, -1
  %idxprom1277 = sext i32 %sub1276 to i64
  %arrayidx1278 = getelementptr inbounds i32* %ikmpc, i64 %idxprom1277
  %225 = load i32* %arrayidx1278, align 4, !tbaa !3
  %226 = load i32* %idof2, align 4, !tbaa !3
  %cmp1279 = icmp eq i32 %225, %226
  br i1 %cmp1279, label %if.then1280, label %for.inc1499

if.then1280:                                      ; preds = %land.lhs.true1275
  %arrayidx1283 = getelementptr inbounds i32* %ilmpc, i64 %idxprom1277
  %227 = load i32* %arrayidx1283, align 4, !tbaa !3
  store i32 %227, i32* %id, align 4, !tbaa !3
  %sub1284 = add nsw i32 %227, -1
  %idxprom1285 = sext i32 %sub1284 to i64
  %arrayidx1286 = getelementptr inbounds i32* %ipompc, i64 %idxprom1285
  %228 = load i32* %arrayidx1286, align 4, !tbaa !3
  %mul1287 = mul nsw i32 %228, 3
  %sub1288 = add nsw i32 %mul1287, -1
  %idxprom1289 = sext i32 %sub1288 to i64
  %arrayidx1290 = getelementptr inbounds i32* %nodempc, i64 %idxprom1289
  %229 = load i32* %arrayidx1290, align 4, !tbaa !3
  %cmp1291 = icmp eq i32 %229, 0
  br i1 %cmp1291, label %for.inc1499, label %while.body1294

while.body1294:                                   ; preds = %if.then1280, %if.end1310
  %index.3 = phi i32 [ %233, %if.end1310 ], [ %229, %if.then1280 ]
  %mul1295 = mul nsw i32 %index.3, 3
  %sub1296 = add nsw i32 %mul1295, -3
  %idxprom1297 = sext i32 %sub1296 to i64
  %arrayidx1298 = getelementptr inbounds i32* %nodempc, i64 %idxprom1297
  %230 = load i32* %arrayidx1298, align 4, !tbaa !3
  %mul1299 = shl i32 %230, 2
  %sub1301 = add nsw i32 %mul1295, -2
  %idxprom1302 = sext i32 %sub1301 to i64
  %arrayidx1303 = getelementptr inbounds i32* %nodempc, i64 %idxprom1302
  %231 = load i32* %arrayidx1303, align 4, !tbaa !3
  %add1304 = add i32 %231, -4
  %sub1305 = add i32 %add1304, %mul1299
  %idxprom1306 = sext i32 %sub1305 to i64
  %arrayidx1307 = getelementptr inbounds i32* %nactdof, i64 %idxprom1306
  %232 = load i32* %arrayidx1307, align 4, !tbaa !3
  store i32 %232, i32* %idof2, align 4, !tbaa !3
  %cmp1308 = icmp eq i32 %232, 0
  br i1 %cmp1308, label %if.end1310, label %if.then1309

if.then1309:                                      ; preds = %while.body1294
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end1310

if.end1310:                                       ; preds = %while.body1294, %if.then1309
  %sub1312 = add nsw i32 %mul1295, -1
  %idxprom1313 = sext i32 %sub1312 to i64
  %arrayidx1314 = getelementptr inbounds i32* %nodempc, i64 %idxprom1313
  %233 = load i32* %arrayidx1314, align 4, !tbaa !3
  %cmp1315 = icmp eq i32 %233, 0
  br i1 %cmp1315, label %for.inc1499, label %while.body1294

if.else1321:                                      ; preds = %if.else1259
  store i32 %sub1323, i32* %idof1, align 4, !tbaa !3
  %mul1324 = mul nsw i32 %220, 7
  %sub1325 = add nsw i32 %mul1324, -7
  store i32 %sub1325, i32* %idof2, align 4, !tbaa !3
  %234 = load i32* %nmpc, align 4, !tbaa !3
  %cmp1326 = icmp sgt i32 %234, 0
  br i1 %cmp1326, label %if.then1327, label %for.inc1499

if.then1327:                                      ; preds = %if.else1321
  call void @nident_(i32* %ikmpc, i32* %idof1, i32* %nmpc, i32* %id1) #4
  %235 = load i32* %id1, align 4, !tbaa !3
  %cmp1328 = icmp sgt i32 %235, 0
  br i1 %cmp1328, label %land.lhs.true1329, label %if.end1335

land.lhs.true1329:                                ; preds = %if.then1327
  %sub1330 = add nsw i32 %235, -1
  %idxprom1331 = sext i32 %sub1330 to i64
  %arrayidx1332 = getelementptr inbounds i32* %ikmpc, i64 %idxprom1331
  %236 = load i32* %arrayidx1332, align 4, !tbaa !3
  %237 = load i32* %idof1, align 4, !tbaa !3
  %cmp1333 = icmp eq i32 %236, %237
  %.2357 = zext i1 %cmp1333 to i32
  br label %if.end1335

if.end1335:                                       ; preds = %land.lhs.true1329, %if.then1327
  %mpc1.4 = phi i32 [ 0, %if.then1327 ], [ %.2357, %land.lhs.true1329 ]
  call void @nident_(i32* %ikmpc, i32* %idof2, i32* %nmpc, i32* %id2) #4
  %238 = load i32* %id2, align 4, !tbaa !3
  %cmp1336 = icmp sgt i32 %238, 0
  br i1 %cmp1336, label %if.end1344, label %for.inc1499

if.end1344:                                       ; preds = %if.end1335
  %sub1338 = add nsw i32 %238, -1
  %idxprom1339 = sext i32 %sub1338 to i64
  %arrayidx1340 = getelementptr inbounds i32* %ikmpc, i64 %idxprom1339
  %239 = load i32* %arrayidx1340, align 4, !tbaa !3
  %240 = load i32* %idof2, align 4, !tbaa !3
  %cmp1341 = icmp eq i32 %239, %240
  %cmp1345 = icmp eq i32 %mpc1.4, 1
  %or.cond2359 = and i1 %cmp1345, %cmp1341
  br i1 %or.cond2359, label %if.then1348, label %for.inc1499

if.then1348:                                      ; preds = %if.end1344
  %241 = load i32* %id1, align 4, !tbaa !3
  %sub1349 = add nsw i32 %241, -1
  %idxprom1350 = sext i32 %sub1349 to i64
  %arrayidx1351 = getelementptr inbounds i32* %ilmpc, i64 %idxprom1350
  %242 = load i32* %arrayidx1351, align 4, !tbaa !3
  store i32 %242, i32* %id1, align 4, !tbaa !3
  %arrayidx1354 = getelementptr inbounds i32* %ilmpc, i64 %idxprom1339
  %243 = load i32* %arrayidx1354, align 4, !tbaa !3
  store i32 %243, i32* %id2, align 4, !tbaa !3
  %cmp1355 = icmp eq i32 %242, %243
  %sub1357 = add nsw i32 %242, -1
  %idxprom1358 = sext i32 %sub1357 to i64
  %arrayidx1359 = getelementptr inbounds i32* %ipompc, i64 %idxprom1358
  %244 = load i32* %arrayidx1359, align 4, !tbaa !3
  %mul1360 = mul nsw i32 %244, 3
  %sub1361 = add nsw i32 %mul1360, -1
  %idxprom1362 = sext i32 %sub1361 to i64
  %arrayidx1363 = getelementptr inbounds i32* %nodempc, i64 %idxprom1362
  %245 = load i32* %arrayidx1363, align 4, !tbaa !3
  %cmp1364 = icmp eq i32 %245, 0
  br i1 %cmp1355, label %if.then1356, label %if.else1417

if.then1356:                                      ; preds = %if.then1348
  br i1 %cmp1364, label %for.inc1499, label %while.body1367

while.body1367:                                   ; preds = %if.then1356, %while.end1408
  %index1.4 = phi i32 [ %254, %while.end1408 ], [ %245, %if.then1356 ]
  %mul1368 = mul nsw i32 %index1.4, 3
  %sub1369 = add nsw i32 %mul1368, -3
  %idxprom1370 = sext i32 %sub1369 to i64
  %arrayidx1371 = getelementptr inbounds i32* %nodempc, i64 %idxprom1370
  %246 = load i32* %arrayidx1371, align 4, !tbaa !3
  %mul1372 = shl i32 %246, 2
  %sub1374 = add nsw i32 %mul1368, -2
  %idxprom1375 = sext i32 %sub1374 to i64
  %arrayidx1376 = getelementptr inbounds i32* %nodempc, i64 %idxprom1375
  %247 = load i32* %arrayidx1376, align 4, !tbaa !3
  %add1377 = add i32 %247, -4
  %sub1378 = add i32 %add1377, %mul1372
  %idxprom1379 = sext i32 %sub1378 to i64
  %arrayidx1380 = getelementptr inbounds i32* %nactdof, i64 %idxprom1379
  %248 = load i32* %arrayidx1380, align 4, !tbaa !3
  store i32 %248, i32* %idof1, align 4, !tbaa !3
  br label %while.body1382

while.body1382:                                   ; preds = %if.end1400.while.body1382_crit_edge, %while.body1367
  %249 = phi i32 [ %248, %while.body1367 ], [ %.pre2566, %if.end1400.while.body1382_crit_edge ]
  %index2.4 = phi i32 [ %index1.4, %while.body1367 ], [ %253, %if.end1400.while.body1382_crit_edge ]
  %mul1383 = mul nsw i32 %index2.4, 3
  %sub1384 = add nsw i32 %mul1383, -3
  %idxprom1385 = sext i32 %sub1384 to i64
  %arrayidx1386 = getelementptr inbounds i32* %nodempc, i64 %idxprom1385
  %250 = load i32* %arrayidx1386, align 4, !tbaa !3
  %mul1387 = shl i32 %250, 2
  %sub1389 = add nsw i32 %mul1383, -2
  %idxprom1390 = sext i32 %sub1389 to i64
  %arrayidx1391 = getelementptr inbounds i32* %nodempc, i64 %idxprom1390
  %251 = load i32* %arrayidx1391, align 4, !tbaa !3
  %add1392 = add i32 %251, -4
  %sub1393 = add i32 %add1392, %mul1387
  %idxprom1394 = sext i32 %sub1393 to i64
  %arrayidx1395 = getelementptr inbounds i32* %nactdof, i64 %idxprom1394
  %252 = load i32* %arrayidx1395, align 4, !tbaa !3
  store i32 %252, i32* %idof2, align 4, !tbaa !3
  %cmp1396 = icmp eq i32 %249, 0
  %cmp1398 = icmp eq i32 %252, 0
  %or.cond2360 = or i1 %cmp1396, %cmp1398
  br i1 %or.cond2360, label %if.end1400, label %if.then1399

if.then1399:                                      ; preds = %while.body1382
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end1400

if.end1400:                                       ; preds = %while.body1382, %if.then1399
  %sub1402 = add nsw i32 %mul1383, -1
  %idxprom1403 = sext i32 %sub1402 to i64
  %arrayidx1404 = getelementptr inbounds i32* %nodempc, i64 %idxprom1403
  %253 = load i32* %arrayidx1404, align 4, !tbaa !3
  %cmp1405 = icmp eq i32 %253, 0
  br i1 %cmp1405, label %while.end1408, label %if.end1400.while.body1382_crit_edge

if.end1400.while.body1382_crit_edge:              ; preds = %if.end1400
  %.pre2566 = load i32* %idof1, align 4, !tbaa !3
  br label %while.body1382

while.end1408:                                    ; preds = %if.end1400
  %sub1410 = add nsw i32 %mul1368, -1
  %idxprom1411 = sext i32 %sub1410 to i64
  %arrayidx1412 = getelementptr inbounds i32* %nodempc, i64 %idxprom1411
  %254 = load i32* %arrayidx1412, align 4, !tbaa !3
  %cmp1413 = icmp eq i32 %254, 0
  br i1 %cmp1413, label %for.inc1499, label %while.body1367

if.else1417:                                      ; preds = %if.then1348
  br i1 %cmp1364, label %for.inc1499, label %while.body1428

while.body1428:                                   ; preds = %while.end1486.while.body1428.backedge_crit_edge, %if.then1450, %if.else1417
  %255 = phi i32 [ %243, %if.else1417 ], [ %.pre2550.pre, %while.end1486.while.body1428.backedge_crit_edge ], [ %255, %if.then1450 ]
  %index1.5 = phi i32 [ %245, %if.else1417 ], [ %267, %while.end1486.while.body1428.backedge_crit_edge ], [ %261, %if.then1450 ]
  %mul1429 = mul nsw i32 %index1.5, 3
  %sub1430 = add nsw i32 %mul1429, -3
  %idxprom1431 = sext i32 %sub1430 to i64
  %arrayidx1432 = getelementptr inbounds i32* %nodempc, i64 %idxprom1431
  %256 = load i32* %arrayidx1432, align 4, !tbaa !3
  %mul1433 = shl i32 %256, 2
  %sub1435 = add nsw i32 %mul1429, -2
  %idxprom1436 = sext i32 %sub1435 to i64
  %arrayidx1437 = getelementptr inbounds i32* %nodempc, i64 %idxprom1436
  %257 = load i32* %arrayidx1437, align 4, !tbaa !3
  %add1438 = add i32 %257, -4
  %sub1439 = add i32 %add1438, %mul1433
  %idxprom1440 = sext i32 %sub1439 to i64
  %arrayidx1441 = getelementptr inbounds i32* %nactdof, i64 %idxprom1440
  %258 = load i32* %arrayidx1441, align 4, !tbaa !3
  store i32 %258, i32* %idof1, align 4, !tbaa !3
  %sub1442 = add nsw i32 %255, -1
  %idxprom1443 = sext i32 %sub1442 to i64
  %arrayidx1444 = getelementptr inbounds i32* %ipompc, i64 %idxprom1443
  %259 = load i32* %arrayidx1444, align 4, !tbaa !3
  %mul1445 = mul nsw i32 %259, 3
  %sub1446 = add nsw i32 %mul1445, -1
  %idxprom1447 = sext i32 %sub1446 to i64
  %arrayidx1448 = getelementptr inbounds i32* %nodempc, i64 %idxprom1447
  %260 = load i32* %arrayidx1448, align 4, !tbaa !3
  %cmp1449 = icmp eq i32 %260, 0
  br i1 %cmp1449, label %if.then1450, label %while.body1460

if.then1450:                                      ; preds = %while.body1428
  %sub1452 = add nsw i32 %mul1429, -1
  %idxprom1453 = sext i32 %sub1452 to i64
  %arrayidx1454 = getelementptr inbounds i32* %nodempc, i64 %idxprom1453
  %261 = load i32* %arrayidx1454, align 4, !tbaa !3
  %cmp1455 = icmp eq i32 %261, 0
  br i1 %cmp1455, label %for.inc1499, label %while.body1428

while.body1460:                                   ; preds = %while.body1428, %if.end1478.while.body1460_crit_edge
  %262 = phi i32 [ %.pre2567, %if.end1478.while.body1460_crit_edge ], [ %258, %while.body1428 ]
  %index2.5 = phi i32 [ %266, %if.end1478.while.body1460_crit_edge ], [ %260, %while.body1428 ]
  %mul1461 = mul nsw i32 %index2.5, 3
  %sub1462 = add nsw i32 %mul1461, -3
  %idxprom1463 = sext i32 %sub1462 to i64
  %arrayidx1464 = getelementptr inbounds i32* %nodempc, i64 %idxprom1463
  %263 = load i32* %arrayidx1464, align 4, !tbaa !3
  %mul1465 = shl i32 %263, 2
  %sub1467 = add nsw i32 %mul1461, -2
  %idxprom1468 = sext i32 %sub1467 to i64
  %arrayidx1469 = getelementptr inbounds i32* %nodempc, i64 %idxprom1468
  %264 = load i32* %arrayidx1469, align 4, !tbaa !3
  %add1470 = add i32 %264, -4
  %sub1471 = add i32 %add1470, %mul1465
  %idxprom1472 = sext i32 %sub1471 to i64
  %arrayidx1473 = getelementptr inbounds i32* %nactdof, i64 %idxprom1472
  %265 = load i32* %arrayidx1473, align 4, !tbaa !3
  store i32 %265, i32* %idof2, align 4, !tbaa !3
  %cmp1474 = icmp eq i32 %262, 0
  %cmp1476 = icmp eq i32 %265, 0
  %or.cond2361 = or i1 %cmp1474, %cmp1476
  br i1 %or.cond2361, label %if.end1478, label %if.then1477

if.then1477:                                      ; preds = %while.body1460
  call void @insert(i32* %ipointer, i32** %mast1, i32** %irow, i32* %idof1, i32* %idof2, i32* %ifree, i32* %nzs_) #4
  br label %if.end1478

if.end1478:                                       ; preds = %while.body1460, %if.then1477
  %sub1480 = add nsw i32 %mul1461, -1
  %idxprom1481 = sext i32 %sub1480 to i64
  %arrayidx1482 = getelementptr inbounds i32* %nodempc, i64 %idxprom1481
  %266 = load i32* %arrayidx1482, align 4, !tbaa !3
  %cmp1483 = icmp eq i32 %266, 0
  br i1 %cmp1483, label %while.end1486, label %if.end1478.while.body1460_crit_edge

if.end1478.while.body1460_crit_edge:              ; preds = %if.end1478
  %.pre2567 = load i32* %idof1, align 4, !tbaa !3
  br label %while.body1460

while.end1486:                                    ; preds = %if.end1478
  %sub1488 = add nsw i32 %mul1429, -1
  %idxprom1489 = sext i32 %sub1488 to i64
  %arrayidx1490 = getelementptr inbounds i32* %nodempc, i64 %idxprom1489
  %267 = load i32* %arrayidx1490, align 4, !tbaa !3
  %cmp1491 = icmp eq i32 %267, 0
  br i1 %cmp1491, label %for.inc1499, label %while.end1486.while.body1428.backedge_crit_edge

while.end1486.while.body1428.backedge_crit_edge:  ; preds = %while.end1486
  %.pre2550.pre = load i32* %id2, align 4, !tbaa !3
  br label %while.body1428

for.inc1499:                                      ; preds = %while.end1408, %if.then1450, %while.end1486, %if.end1310, %if.end1335, %if.else1321, %if.then1258, %if.end1344, %if.then1263, %land.lhs.true1275, %if.then1273, %if.else1417, %if.then1356, %if.then1280
  %indvars.iv.next2504 = add i64 %indvars.iv2503, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2504 to i32
  %exitcond2506 = icmp eq i32 %lftr.wideiv, %nope.4
  br i1 %exitcond2506, label %for.inc1502, label %for.inc1499.for.body1247_crit_edge

for.inc1499.for.body1247_crit_edge:               ; preds = %for.inc1499
  %.pre2565 = load i32* %jdof1, align 4, !tbaa !3
  br label %for.body1247

for.inc1502:                                      ; preds = %for.inc1499, %for.body1237
  %indvars.iv.next2508 = add i64 %indvars.iv2507, 1
  %268 = trunc i64 %indvars.iv.next2508 to i32
  %cmp1236 = icmp slt i32 %268, %nope.4
  br i1 %cmp1236, label %for.body1237, label %for.inc1505.loopexit

for.inc1505.loopexit:                             ; preds = %for.inc1502
  %.pre2564 = load i32* %ne, align 4, !tbaa !3
  br label %for.inc1505

for.inc1505:                                      ; preds = %for.body1182, %for.inc1505.loopexit
  %269 = phi i32 [ %.pre2564, %for.inc1505.loopexit ], [ %210, %for.body1182 ]
  %indvars.iv.next2511 = add i64 %indvars.iv2510, 1
  %270 = trunc i64 %indvars.iv.next2511 to i32
  %cmp1181 = icmp slt i32 %270, %269
  br i1 %cmp1181, label %for.body1182, label %for.cond1509.preheader

for.cond1569.preheader:                           ; preds = %for.end1555, %for.cond1509.preheader
  store i32 0, i32* %nsky, align 4, !tbaa !3
  %271 = load i32* %neq, align 4, !tbaa !3
  %cmp15702415 = icmp sgt i32 %271, 1
  br i1 %cmp15702415, label %for.body1571.lr.ph, label %for.end1588

for.body1571.lr.ph:                               ; preds = %for.cond1569.preheader
  %272 = load i32** %mast1, align 8, !tbaa !0
  br label %for.body1571

for.body1511:                                     ; preds = %for.cond1509.preheader, %for.end1555
  %indvars.iv2498 = phi i64 [ %284, %for.end1555 ], [ 0, %for.cond1509.preheader ]
  store i32 0, i32* %itot, align 4, !tbaa !3
  %arrayidx1513 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv2498
  %273 = load i32* %arrayidx1513, align 4, !tbaa !3
  %cmp1514 = icmp eq i32 %273, 0
  br i1 %cmp1514, label %if.then1515, label %if.end1517

if.then1515:                                      ; preds = %for.body1511
  %puts2325 = call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str19, i64 0, i64 0))
  call void (...)* @stop_() #4
  %.pre2548 = load i32* %arrayidx1513, align 4, !tbaa !3
  %.pre2549.pre = load i32* %itot, align 4, !tbaa !3
  br label %if.end1517

if.end1517:                                       ; preds = %for.body1511, %if.then1515
  %.pre2549 = phi i32 [ %.pre2549.pre, %if.then1515 ], [ 0, %for.body1511 ]
  %274 = phi i32 [ %.pre2548, %if.then1515 ], [ %273, %for.body1511 ]
  %275 = load i32** %mast1, align 8, !tbaa !0
  %276 = load i32** %irow, align 8, !tbaa !0
  br label %while.body1520

while.body1520:                                   ; preds = %while.body1520, %if.end1517
  %277 = phi i32 [ %.pre2549, %if.end1517 ], [ %inc1521, %while.body1520 ]
  %istart.0 = phi i32 [ %274, %if.end1517 ], [ %279, %while.body1520 ]
  %inc1521 = add nsw i32 %277, 1
  store i32 %inc1521, i32* %itot, align 4, !tbaa !3
  %sub1522 = add nsw i32 %istart.0, -1
  %idxprom1523 = sext i32 %sub1522 to i64
  %arrayidx1524 = getelementptr inbounds i32* %275, i64 %idxprom1523
  %278 = load i32* %arrayidx1524, align 4, !tbaa !3
  %idxprom1526 = sext i32 %277 to i64
  %arrayidx1527 = getelementptr inbounds i32* %ikcol, i64 %idxprom1526
  store i32 %278, i32* %arrayidx1527, align 4, !tbaa !3
  %arrayidx1530 = getelementptr inbounds i32* %276, i64 %idxprom1523
  %279 = load i32* %arrayidx1530, align 4, !tbaa !3
  %cmp1531 = icmp eq i32 %279, 0
  br i1 %cmp1531, label %while.end1534, label %while.body1520

while.end1534:                                    ; preds = %while.body1520
  call void @isortii_(i32* %ikcol, i32* %icol, i32* %itot, i32* %kflag) #4
  %280 = load i32* %arrayidx1513, align 4, !tbaa !3
  %281 = load i32* %itot, align 4, !tbaa !3
  %sub15382421 = add nsw i32 %281, -1
  %cmp15392422 = icmp sgt i32 %sub15382421, 0
  %282 = load i32** %mast1, align 8, !tbaa !0
  %283 = load i32** %irow, align 8, !tbaa !0
  %284 = add i64 %indvars.iv2498, 1
  br i1 %cmp15392422, label %for.body1540, label %while.end1534.for.end1555_crit_edge

while.end1534.for.end1555_crit_edge:              ; preds = %while.end1534
  %.pre2574 = trunc i64 %284 to i32
  br label %for.end1555

for.body1540:                                     ; preds = %while.end1534, %for.body1540
  %indvars.iv2496 = phi i64 [ %indvars.iv.next2497, %for.body1540 ], [ 0, %while.end1534 ]
  %istart.12424 = phi i32 [ %286, %for.body1540 ], [ %280, %while.end1534 ]
  %arrayidx1542 = getelementptr inbounds i32* %ikcol, i64 %indvars.iv2496
  %285 = load i32* %arrayidx1542, align 4, !tbaa !3
  %sub1543 = add nsw i32 %istart.12424, -1
  %idxprom1544 = sext i32 %sub1543 to i64
  %arrayidx1545 = getelementptr inbounds i32* %282, i64 %idxprom1544
  store i32 %285, i32* %arrayidx1545, align 4, !tbaa !3
  %arrayidx1548 = getelementptr inbounds i32* %283, i64 %idxprom1544
  %286 = load i32* %arrayidx1548, align 4, !tbaa !3
  %287 = trunc i64 %284 to i32
  store i32 %287, i32* %arrayidx1548, align 4, !tbaa !3
  %indvars.iv.next2497 = add i64 %indvars.iv2496, 1
  %288 = load i32* %itot, align 4, !tbaa !3
  %sub1538 = add nsw i32 %288, -1
  %289 = trunc i64 %indvars.iv.next2497 to i32
  %cmp1539 = icmp slt i32 %289, %sub1538
  br i1 %cmp1539, label %for.body1540, label %for.end1555

for.end1555:                                      ; preds = %for.body1540, %while.end1534.for.end1555_crit_edge
  %.pre-phi = phi i32 [ %.pre2574, %while.end1534.for.end1555_crit_edge ], [ %287, %for.body1540 ]
  %sub1538.lcssa = phi i32 [ %sub15382421, %while.end1534.for.end1555_crit_edge ], [ %sub1538, %for.body1540 ]
  %istart.1.lcssa = phi i32 [ %280, %while.end1534.for.end1555_crit_edge ], [ %286, %for.body1540 ]
  %idxprom1557 = sext i32 %sub1538.lcssa to i64
  %arrayidx1558 = getelementptr inbounds i32* %ikcol, i64 %idxprom1557
  %290 = load i32* %arrayidx1558, align 4, !tbaa !3
  %sub1559 = add nsw i32 %istart.1.lcssa, -1
  %idxprom1560 = sext i32 %sub1559 to i64
  %arrayidx1561 = getelementptr inbounds i32* %282, i64 %idxprom1560
  store i32 %290, i32* %arrayidx1561, align 4, !tbaa !3
  %arrayidx1565 = getelementptr inbounds i32* %283, i64 %idxprom1560
  store i32 %.pre-phi, i32* %arrayidx1565, align 4, !tbaa !3
  %291 = load i32* %neq, align 4, !tbaa !3
  %cmp1510 = icmp slt i32 %.pre-phi, %291
  br i1 %cmp1510, label %for.body1511, label %for.cond1569.preheader

for.body1571:                                     ; preds = %for.body1571.lr.ph, %if.end1584
  %indvars.iv2492 = phi i64 [ 1, %for.body1571.lr.ph ], [ %indvars.iv.next2493, %if.end1584 ]
  %nsky_exp.02418 = phi i32 [ 0, %for.body1571.lr.ph ], [ %nsky_exp.1, %if.end1584 ]
  %292 = phi i32 [ 0, %for.body1571.lr.ph ], [ %add1585, %if.end1584 ]
  %indvars.iv.next2493 = add i64 %indvars.iv2492, 1
  %arrayidx1574 = getelementptr inbounds i32* %ipointer, i64 %indvars.iv2492
  %293 = load i32* %arrayidx1574, align 4, !tbaa !3
  %sub1575 = add nsw i32 %293, -1
  %idxprom1576 = sext i32 %sub1575 to i64
  %arrayidx1577 = getelementptr inbounds i32* %272, i64 %idxprom1576
  %294 = load i32* %arrayidx1577, align 4, !tbaa !3
  %295 = trunc i64 %indvars.iv.next2493 to i32
  %sub1578 = sub nsw i32 %295, %294
  %sub1579 = sub nsw i32 2147483647, %292
  %cmp1580 = icmp slt i32 %sub1579, %sub1578
  br i1 %cmp1580, label %if.then1581, label %if.end1584

if.then1581:                                      ; preds = %for.body1571
  %inc1582 = add nsw i32 %nsky_exp.02418, 1
  %sub1583 = add nsw i32 %sub1578, -2147483647
  br label %if.end1584

if.end1584:                                       ; preds = %if.then1581, %for.body1571
  %nsky_exp.1 = phi i32 [ %inc1582, %if.then1581 ], [ %nsky_exp.02418, %for.body1571 ]
  %nsky_inc.0 = phi i32 [ %sub1583, %if.then1581 ], [ %sub1578, %for.body1571 ]
  %add1585 = add nsw i32 %292, %nsky_inc.0
  store i32 %add1585, i32* %nsky, align 4, !tbaa !3
  %296 = load i32* %neq, align 4, !tbaa !3
  %cmp1570 = icmp slt i32 %295, %296
  br i1 %cmp1570, label %for.body1571, label %for.end1588

for.end1588:                                      ; preds = %if.end1584, %for.cond1569.preheader
  %.lcssa2414 = phi i32 [ %271, %for.cond1569.preheader ], [ %296, %if.end1584 ]
  %nsky_exp.0.lcssa = phi i32 [ 0, %for.cond1569.preheader ], [ %nsky_exp.1, %if.end1584 ]
  %cmp1589 = icmp eq i32 %.lcssa2414, 0
  br i1 %cmp1589, label %if.then1590, label %if.end1592

if.then1590:                                      ; preds = %for.end1588
  %puts2324 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str22, i64 0, i64 0))
  call void (...)* @stop_() #4
  br label %if.end1592

if.end1592:                                       ; preds = %if.then1590, %for.end1588
  %puts = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str20, i64 0, i64 0))
  %297 = load i32* %neq, align 4, !tbaa !3
  %call1594 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 %297) #4
  %puts2321 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str15, i64 0, i64 0))
  %298 = load i32* %ifree, align 4, !tbaa !3
  %call1596 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 %298) #4
  %puts2322 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str21, i64 0, i64 0))
  %299 = load i32* %nsky, align 4, !tbaa !3
  %call1598 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0), i32 %nsky_exp.0.lcssa, i32 %299) #4
  %puts2323 = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str17, i64 0, i64 0))
  %300 = load i32* %ifree, align 4, !tbaa !3
  %conv = sitofp i32 %300 to double
  %301 = load i32* %nsky, align 4, !tbaa !3
  %302 = load i32* %neq, align 4, !tbaa !3
  %add1600 = add nsw i32 %302, %301
  %conv1601 = sitofp i32 %add1600 to double
  %conv1602 = sitofp i32 %nsky_exp.0.lcssa to double
  %mul1603 = fmul double %conv1602, 0x41DFFFFFFFC00000
  %add1604 = fadd double %mul1603, %conv1601
  %div1605 = fdiv double %conv, %add1604
  %mul1606 = fmul double %div1605, 1.000000e+02
  %call1607 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), double %mul1606) #4
  %303 = load i32* %ifree, align 4, !tbaa !3
  store i32 %303, i32* %nmast, align 4, !tbaa !3
  %304 = load i32** %mast1, align 8, !tbaa !0
  %305 = load i32** %irow, align 8, !tbaa !0
  call void @isortii_(i32* %304, i32* %305, i32* %nmast, i32* %kflag) #4
  %306 = load i32* %neq, align 4, !tbaa !3
  %cmp16092412 = icmp sgt i32 %306, 1
  br i1 %cmp16092412, label %for.body1611, label %for.cond1617.preheader

for.cond1617.preheader:                           ; preds = %for.body1611, %if.end1592
  %307 = phi i32 [ %306, %if.end1592 ], [ %311, %for.body1611 ]
  %308 = load i32* %nmast, align 4, !tbaa !3
  %cmp16182405 = icmp sgt i32 %308, 0
  br i1 %cmp16182405, label %for.body1620.lr.ph, label %for.end1668

for.body1620.lr.ph:                               ; preds = %for.cond1617.preheader
  %309 = load i32** %mast1, align 8, !tbaa !0
  %310 = load i32** %irow, align 8, !tbaa !0
  br label %for.body1620

for.body1611:                                     ; preds = %if.end1592, %for.body1611
  %indvars.iv2489 = phi i64 [ %indvars.iv.next2490, %for.body1611 ], [ 1, %if.end1592 ]
  %arrayidx1613 = getelementptr inbounds i32* %icol, i64 %indvars.iv2489
  store i32 0, i32* %arrayidx1613, align 4, !tbaa !3
  %indvars.iv.next2490 = add i64 %indvars.iv2489, 1
  %311 = load i32* %neq, align 4, !tbaa !3
  %312 = trunc i64 %indvars.iv.next2490 to i32
  %cmp1609 = icmp slt i32 %312, %311
  br i1 %cmp1609, label %for.body1611, label %for.cond1617.preheader

for.body1620:                                     ; preds = %for.body1620.lr.ph, %for.inc1666
  %313 = phi i32 [ %308, %for.body1620.lr.ph ], [ %323, %for.inc1666 ]
  %indvars.iv2487 = phi i64 [ 0, %for.body1620.lr.ph ], [ %indvars.iv.next2488, %for.inc1666 ]
  %isubtract.02407 = phi i32 [ 0, %for.body1620.lr.ph ], [ %isubtract.1, %for.inc1666 ]
  %k.12406 = phi i32 [ 0, %for.body1620.lr.ph ], [ %k.3, %for.inc1666 ]
  %arrayidx1622 = getelementptr inbounds i32* %309, i64 %indvars.iv2487
  %314 = load i32* %arrayidx1622, align 4, !tbaa !3
  %arrayidx1624 = getelementptr inbounds i32* %310, i64 %indvars.iv2487
  %315 = load i32* %arrayidx1624, align 4, !tbaa !3
  %cmp1625 = icmp eq i32 %314, %315
  br i1 %cmp1625, label %if.then1627, label %if.else1629

if.then1627:                                      ; preds = %for.body1620
  %inc1628 = add nsw i32 %isubtract.02407, 1
  br label %for.inc1666

if.else1629:                                      ; preds = %for.body1620
  %316 = trunc i64 %indvars.iv2487 to i32
  %sub1632 = sub nsw i32 %316, %isubtract.02407
  %idxprom1633 = sext i32 %sub1632 to i64
  %arrayidx1634 = getelementptr inbounds i32* %309, i64 %idxprom1633
  store i32 %314, i32* %arrayidx1634, align 4, !tbaa !3
  %317 = load i32* %arrayidx1624, align 4, !tbaa !3
  %arrayidx1639 = getelementptr inbounds i32* %310, i64 %idxprom1633
  store i32 %317, i32* %arrayidx1639, align 4, !tbaa !3
  %318 = load i32* %arrayidx1622, align 4, !tbaa !3
  %cmp1642 = icmp eq i32 %k.12406, %318
  br i1 %cmp1642, label %if.end1660, label %for.cond1645.preheader

for.cond1645.preheader:                           ; preds = %if.else1629
  %cmp16482401 = icmp slt i32 %k.12406, %318
  br i1 %cmp16482401, label %for.body1650.lr.ph, label %if.end1660

for.body1650.lr.ph:                               ; preds = %for.cond1645.preheader
  %add1651 = sub i32 1, %isubtract.02407
  %sub1652 = add i32 %add1651, %316
  %319 = sext i32 %k.12406 to i64
  br label %for.body1650

for.body1650:                                     ; preds = %for.body1650.lr.ph, %for.body1650
  %indvars.iv2484 = phi i64 [ %319, %for.body1650.lr.ph ], [ %indvars.iv.next2485, %for.body1650 ]
  %arrayidx1654 = getelementptr inbounds i32* %jq, i64 %indvars.iv2484
  store i32 %sub1652, i32* %arrayidx1654, align 4, !tbaa !3
  %indvars.iv.next2485 = add i64 %indvars.iv2484, 1
  %320 = load i32* %arrayidx1622, align 4, !tbaa !3
  %321 = trunc i64 %indvars.iv.next2485 to i32
  %cmp1648 = icmp slt i32 %321, %320
  br i1 %cmp1648, label %for.body1650, label %if.end1660

if.end1660:                                       ; preds = %for.cond1645.preheader, %for.body1650, %if.else1629
  %k.2 = phi i32 [ %k.12406, %if.else1629 ], [ %318, %for.cond1645.preheader ], [ %320, %for.body1650 ]
  %sub1661 = add nsw i32 %k.2, -1
  %idxprom1662 = sext i32 %sub1661 to i64
  %arrayidx1663 = getelementptr inbounds i32* %icol, i64 %idxprom1662
  %322 = load i32* %arrayidx1663, align 4, !tbaa !3
  %inc1664 = add nsw i32 %322, 1
  store i32 %inc1664, i32* %arrayidx1663, align 4, !tbaa !3
  %.pre2547 = load i32* %nmast, align 4, !tbaa !3
  br label %for.inc1666

for.inc1666:                                      ; preds = %if.then1627, %if.end1660
  %323 = phi i32 [ %313, %if.then1627 ], [ %.pre2547, %if.end1660 ]
  %k.3 = phi i32 [ %k.12406, %if.then1627 ], [ %k.2, %if.end1660 ]
  %isubtract.1 = phi i32 [ %inc1628, %if.then1627 ], [ %isubtract.02407, %if.end1660 ]
  %indvars.iv.next2488 = add i64 %indvars.iv2487, 1
  %324 = trunc i64 %indvars.iv.next2488 to i32
  %cmp1618 = icmp slt i32 %324, %323
  br i1 %cmp1618, label %for.body1620, label %for.cond1617.for.end1668_crit_edge

for.cond1617.for.end1668_crit_edge:               ; preds = %for.inc1666
  %.pre2545 = load i32* %neq, align 4, !tbaa !3
  br label %for.end1668

for.end1668:                                      ; preds = %for.cond1617.for.end1668_crit_edge, %for.cond1617.preheader
  %325 = phi i32 [ %.pre2545, %for.cond1617.for.end1668_crit_edge ], [ %307, %for.cond1617.preheader ]
  %.lcssa2404 = phi i32 [ %323, %for.cond1617.for.end1668_crit_edge ], [ %308, %for.cond1617.preheader ]
  %isubtract.0.lcssa = phi i32 [ %isubtract.1, %for.cond1617.for.end1668_crit_edge ], [ 0, %for.cond1617.preheader ]
  %k.1.lcssa = phi i32 [ %k.3, %for.cond1617.for.end1668_crit_edge ], [ 0, %for.cond1617.preheader ]
  %sub1669 = sub nsw i32 %.lcssa2404, %isubtract.0.lcssa
  store i32 %sub1669, i32* %nmast, align 4, !tbaa !3
  %add16712396 = add nsw i32 %325, 1
  %cmp16722397 = icmp slt i32 %k.1.lcssa, %add16712396
  br i1 %cmp16722397, label %for.body1674.lr.ph, label %for.cond1681.preheader

for.body1674.lr.ph:                               ; preds = %for.end1668
  %add1675 = add nsw i32 %sub1669, 1
  %326 = sext i32 %k.1.lcssa to i64
  br label %for.body1674

for.cond1681.preheader:                           ; preds = %for.body1674, %for.end1668
  %327 = phi i32 [ %325, %for.end1668 ], [ %328, %for.body1674 ]
  %cmp16822393 = icmp sgt i32 %327, 0
  br i1 %cmp16822393, label %for.body1684, label %for.end1713

for.body1674:                                     ; preds = %for.body1674.lr.ph, %for.body1674
  %indvars.iv2481 = phi i64 [ %326, %for.body1674.lr.ph ], [ %indvars.iv.next2482, %for.body1674 ]
  %arrayidx1677 = getelementptr inbounds i32* %jq, i64 %indvars.iv2481
  store i32 %add1675, i32* %arrayidx1677, align 4, !tbaa !3
  %indvars.iv.next2482 = add i64 %indvars.iv2481, 1
  %328 = load i32* %neq, align 4, !tbaa !3
  %329 = trunc i64 %indvars.iv2481 to i32
  %cmp1672 = icmp slt i32 %329, %328
  br i1 %cmp1672, label %for.body1674, label %for.cond1681.preheader

for.body1684:                                     ; preds = %for.cond1681.backedge, %for.cond1681.preheader
  %330 = phi i32 [ %327, %for.cond1681.preheader ], [ %333, %for.cond1681.backedge ]
  %indvars.iv2479 = phi i64 [ 0, %for.cond1681.preheader ], [ %indvars.iv.next2480, %for.cond1681.backedge ]
  %indvars.iv.next2480 = add i64 %indvars.iv2479, 1
  %arrayidx1687 = getelementptr inbounds i32* %jq, i64 %indvars.iv.next2480
  %331 = load i32* %arrayidx1687, align 4, !tbaa !3
  %arrayidx1689 = getelementptr inbounds i32* %jq, i64 %indvars.iv2479
  %332 = load i32* %arrayidx1689, align 4, !tbaa !3
  %sub1690 = sub nsw i32 %331, %332
  %cmp1691 = icmp sgt i32 %sub1690, 0
  br i1 %cmp1691, label %if.then1693, label %for.cond1681.backedge

for.cond1681.backedge:                            ; preds = %for.body1684, %if.then1693
  %333 = phi i32 [ %330, %for.body1684 ], [ %.pre2546, %if.then1693 ]
  %334 = trunc i64 %indvars.iv.next2480 to i32
  %cmp1682 = icmp slt i32 %334, %333
  br i1 %cmp1682, label %for.body1684, label %for.end1713

if.then1693:                                      ; preds = %for.body1684
  store i32 %sub1690, i32* %isize, align 4, !tbaa !3
  %sub1702 = add nsw i32 %332, -1
  %idxprom1703 = sext i32 %sub1702 to i64
  %335 = load i32** %irow, align 8, !tbaa !0
  %arrayidx1704 = getelementptr inbounds i32* %335, i64 %idxprom1703
  %336 = load i32** %mast1, align 8, !tbaa !0
  %arrayidx1709 = getelementptr inbounds i32* %336, i64 %idxprom1703
  call void @isortii_(i32* %arrayidx1704, i32* %arrayidx1709, i32* %isize, i32* %kflag) #4
  %.pre2546 = load i32* %neq, align 4, !tbaa !3
  br label %for.cond1681.backedge

for.end1713:                                      ; preds = %for.cond1681.backedge, %for.cond1681.preheader
  %.lcssa2392 = phi i32 [ %327, %for.cond1681.preheader ], [ %333, %for.cond1681.backedge ]
  %sub1714 = add nsw i32 %.lcssa2392, -1
  %idxprom1715 = sext i32 %sub1714 to i64
  %arrayidx1716 = getelementptr inbounds i32* %jq, i64 %idxprom1715
  %337 = load i32* %arrayidx1716, align 4, !tbaa !3
  %sub1717 = add nsw i32 %337, -1
  store i32 %sub1717, i32* %nzs, align 4, !tbaa !3
  br label %if.end1718

if.end1718:                                       ; preds = %for.end1713, %if.end811
  %338 = load i32** %mast1, align 8, !tbaa !0
  store i32* %338, i32** %mast1p, align 8, !tbaa !0
  %339 = load i32** %irow, align 8, !tbaa !0
  store i32* %339, i32** %irowp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #1

; Function Attrs: optsize
declare void @nident_(i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @stop_(...) #1

; Function Attrs: optsize
declare void @insert(i32*, i32**, i32**, i32*, i32*, i32*, i32*) #1

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
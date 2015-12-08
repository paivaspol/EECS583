; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/cascade.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [126 x i8] c"*ERROR in cascade: the DOF corresponding to \0A node %d in direction %d is detected on the \0A dependent side of a MPC and a SPC\0A\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"                    \00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"CYCLIC\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"SUBCYCLIC\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"RIGID\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"PLANE\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"STRAIGHT\00", align 1
@.str9 = private unnamed_addr constant [55 x i8] c"*INFO in cascade: reallocating nodempc; new size = %d\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"*ERROR in cascade: zero coefficient on the\00"
@str12 = private unnamed_addr constant [37 x i8] c"       dependent side of an equation\00"
@str13 = private unnamed_addr constant [34 x i8] c"*INFO in cascade: linear MPCs and\00"
@str14 = private unnamed_addr constant [44 x i8] c"       nonlinear MPCs depend on each other\0A\00"

; Function Attrs: nounwind optsize uwtable
define void @cascade(i32* nocapture %ipompc, double** nocapture %coefmpcp, i32** nocapture %nodempcp, i32* %nmpc, i32* nocapture %mpcfree, i32* nocapture %nodeboun, i32* nocapture %ndirboun, i32* %nboun, i32* %ikmpc, i32* nocapture %ilmpc, i32* %ikboun, i32* nocapture %ilboun, i32* nocapture %mpcend, i32* nocapture %mpcmult, i8* %labmpc, i32 %labmpcLen, i32* nocapture %nk, i32* nocapture %memmpc_, i32* nocapture %icascade, i32* nocapture %maxlenmpc, i32* nocapture %callfrommain) #0 {
entry:
  %id = alloca i32, align 4
  %idof = alloca i32, align 4
  %0 = load i32** %nodempcp, align 8, !tbaa !0
  %1 = load double** %coefmpcp, align 8, !tbaa !0
  %2 = load i32* %nmpc, align 4, !tbaa !3
  %conv = sext i32 %2 to i64
  %call = call i8* @u_calloc(i64 %conv, i64 4) #5
  %3 = bitcast i8* %call to i32*
  store i32 0, i32* %icascade, align 4, !tbaa !3
  %4 = load i32* %nmpc, align 4, !tbaa !3
  %cmp706 = icmp sgt i32 %4, 0
  br i1 %cmp706, label %for.body, label %for.cond85.outer

for.cond27.preheader:                             ; preds = %for.inc
  %cmp28703 = icmp sgt i32 %9, 0
  br i1 %cmp28703, label %for.body30, label %for.cond85.outer

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv732 = phi i64 [ 0, %entry ], [ %indvars.iv.next733, %for.inc ]
  %5 = load i32* %nboun, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %for.body
  store i32 0, i32* %id, align 4, !tbaa !3
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %ikmpc, i64 %indvars.iv732
  call void @nident_(i32* %ikboun, i32* %arrayidx, i32* %nboun, i32* %id) #5
  %.pr = load i32* %id, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %.pr, 0
  br i1 %cmp4, label %if.then6, label %for.inc

if.then6:                                         ; preds = %if.end
  %sub = add nsw i32 %.pr, -1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds i32* %ikboun, i64 %idxprom7
  %6 = load i32* %arrayidx8, align 4, !tbaa !3
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %6, %7
  br i1 %cmp11, label %if.then13, label %for.inc

if.then13:                                        ; preds = %if.then6
  %sub16 = add nsw i32 %6, -1
  %div = sdiv i32 %sub16, 7
  %add = add nsw i32 %div, 1
  %8 = mul i32 %div, -3
  %sub23 = add i32 %8, %6
  %call24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([126 x i8]* @.str, i64 0, i64 0), i32 %add, i32 %sub23) #5
  call void (...)* @stop_() #5
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end, %if.end.thread, %if.then13
  %indvars.iv.next733 = add i64 %indvars.iv732, 1
  %9 = load i32* %nmpc, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next733 to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.body, label %for.cond27.preheader

for.body30:                                       ; preds = %for.cond27.preheader, %for.inc82
  %indvars.iv730 = phi i64 [ %indvars.iv.next731, %for.inc82 ], [ 0, %for.cond27.preheader ]
  %sext734 = mul i64 %indvars.iv730, 85899345920
  %idxprom32 = ashr exact i64 %sext734, 32
  %arrayidx33 = getelementptr inbounds i8* %labmpc, i64 %idxprom32
  %call34 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body30
  %call40 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #5
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then50, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %call47 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.else53

if.then50:                                        ; preds = %lor.lhs.false43, %lor.lhs.false, %for.body30
  %arrayidx52 = getelementptr inbounds i32* %3, i64 %indvars.iv730
  store i32 0, i32* %arrayidx52, align 4, !tbaa !3
  br label %for.inc82

if.else53:                                        ; preds = %lor.lhs.false43
  %call57 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #5
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then74, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.else53
  %call64 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #5
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then74, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false60
  %call71 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #5
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.else77

if.then74:                                        ; preds = %lor.lhs.false67, %lor.lhs.false60, %if.else53
  %arrayidx76 = getelementptr inbounds i32* %3, i64 %indvars.iv730
  store i32 1, i32* %arrayidx76, align 4, !tbaa !3
  br label %for.inc82

if.else77:                                        ; preds = %lor.lhs.false67
  %arrayidx79 = getelementptr inbounds i32* %3, i64 %indvars.iv730
  store i32 1, i32* %arrayidx79, align 4, !tbaa !3
  store i32 1, i32* %icascade, align 4, !tbaa !3
  br label %for.inc82

for.inc82:                                        ; preds = %if.then50, %if.else77, %if.then74
  %indvars.iv.next731 = add i64 %indvars.iv730, 1
  %11 = load i32* %nmpc, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next731 to i32
  %cmp28 = icmp slt i32 %12, %11
  br i1 %cmp28, label %for.body30, label %for.cond85.outer

for.cond85:                                       ; preds = %for.cond85.outer, %for.end422
  %ichange.0 = phi i32 [ 0, %for.end422 ], [ %ichange.0.ph, %for.cond85.outer ]
  %i.2 = phi i32 [ 0, %for.end422 ], [ %i.2.ph, %for.cond85.outer ]
  %cmp86 = icmp slt i32 %i.2, %70
  br i1 %cmp86, label %for.body88, label %for.end422

for.body88:                                       ; preds = %for.cond85
  %idxprom89 = sext i32 %i.2 to i64
  %arrayidx90 = getelementptr inbounds i32* %3, i64 %idxprom89
  %13 = load i32* %arrayidx90, align 4, !tbaa !3
  %cmp91 = icmp eq i32 %13, 1
  %arrayidx97 = getelementptr inbounds i32* %ipompc, i64 %idxprom89
  %14 = load i32* %arrayidx97, align 4, !tbaa !3
  %mul98 = mul nsw i32 %14, 3
  %sub99 = add nsw i32 %mul98, -1
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom100
  %15 = load i32* %arrayidx101, align 4, !tbaa !3
  %cmp102 = icmp eq i32 %15, 0
  br i1 %cmp102, label %for.inc420, label %do.body106.outer

do.body106.outer:                                 ; preds = %for.body88, %if.then153
  %idepend.2.ph = phi i32 [ %idepend.3, %if.then153 ], [ %idepend.1.ph, %for.body88 ]
  %index.0.ph = phi i32 [ %27, %if.then153 ], [ %15, %for.body88 ]
  br label %do.body106

do.body106:                                       ; preds = %do.body106.outer, %if.else277
  %index.0 = phi i32 [ %50, %if.else277 ], [ %index.0.ph, %do.body106.outer ]
  %mul107 = mul nsw i32 %index.0, 3
  %sub108 = add nsw i32 %mul107, -3
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom109
  %16 = load i32* %arrayidx110, align 4, !tbaa !3
  %17 = mul i32 %16, 7
  %mul112 = add i32 %17, -7
  %sub114 = add nsw i32 %mul107, -2
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom115
  %18 = load i32* %arrayidx116, align 4, !tbaa !3
  %add117 = add nsw i32 %mul112, %18
  store i32 %add117, i32* %idof, align 4, !tbaa !3
  call void @nident_(i32* %ikmpc, i32* %idof, i32* %nmpc, i32* %id) #5
  %19 = load i32* %id, align 4, !tbaa !3
  %cmp118 = icmp sgt i32 %19, 0
  br i1 %cmp118, label %land.lhs.true, label %if.else277

land.lhs.true:                                    ; preds = %do.body106
  %sub120 = add nsw i32 %19, -1
  %idxprom121 = sext i32 %sub120 to i64
  %arrayidx122 = getelementptr inbounds i32* %ikmpc, i64 %idxprom121
  %20 = load i32* %arrayidx122, align 4, !tbaa !3
  %21 = load i32* %idof, align 4, !tbaa !3
  %cmp123 = icmp eq i32 %20, %21
  br i1 %cmp123, label %if.then125, label %if.else277

if.then125:                                       ; preds = %land.lhs.true
  %sub127 = add nsw i32 %mul107, -1
  %idxprom128 = sext i32 %sub127 to i64
  %arrayidx129 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom128
  %22 = load i32* %arrayidx129, align 4, !tbaa !3
  %sub130 = add nsw i32 %index.0, -1
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds double* %coefmpc.1.ph, i64 %idxprom131
  %23 = load double* %arrayidx132, align 8, !tbaa !4
  %arrayidx135 = getelementptr inbounds i32* %ilmpc, i64 %idxprom121
  %24 = load i32* %arrayidx135, align 4, !tbaa !3
  %sub136 = add nsw i32 %24, -1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds i32* %3, i64 %idxprom137
  %25 = load i32* %arrayidx138, align 4, !tbaa !3
  %cmp139 = icmp eq i32 %25, 1
  %or.cond = or i1 %cmp139, %cmp91
  br i1 %or.cond, label %if.then144, label %if.end164

if.then144:                                       ; preds = %if.then125
  store i32 2, i32* %icascade, align 4, !tbaa !3
  %cmp145 = icmp eq i32 %idepend.2.ph, 0
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %if.then144
  %puts662 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str13, i64 0, i64 0))
  %puts663 = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str14, i64 0, i64 0))
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %if.then144
  %idepend.3 = phi i32 [ 1, %if.then147 ], [ %idepend.2.ph, %if.then144 ]
  %26 = load i32* %callfrommain, align 4, !tbaa !3
  %cmp151 = icmp eq i32 %26, 1
  br i1 %cmp151, label %if.then153, label %if.end164

if.then153:                                       ; preds = %if.end150
  %27 = load i32* %arrayidx129, align 4, !tbaa !3
  %cmp158 = icmp eq i32 %27, 0
  br i1 %cmp158, label %for.inc420, label %do.body106.outer

if.end164:                                        ; preds = %if.end150, %if.then125
  %idepend.4 = phi i32 [ %idepend.2.ph, %if.then125 ], [ %idepend.3, %if.end150 ]
  %mul165 = mul nsw i32 %i.2, 20
  %idxprom166 = sext i32 %mul165 to i64
  %arrayidx167 = getelementptr inbounds i8* %labmpc, i64 %idxprom166
  %call168 = call i32 @strcmp1(i8* %arrayidx167, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %land.lhs.true171, label %if.end184

land.lhs.true171:                                 ; preds = %if.end164
  %mul173 = mul nsw i32 %sub136, 20
  %idxprom174 = sext i32 %mul173 to i64
  %arrayidx175 = getelementptr inbounds i8* %labmpc, i64 %idxprom174
  %call176 = call i32 @strcmp1(i8* %arrayidx175, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #5
  %cmp177 = icmp eq i32 %call176, 0
  br i1 %cmp177, label %if.then179, label %if.end184

if.then179:                                       ; preds = %land.lhs.true171
  %call183 = call i32 @strcpy1(i8* %arrayidx167, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 9) #5
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %land.lhs.true171, %if.end164
  %arrayidx187 = getelementptr inbounds i32* %ipompc, i64 %idxprom137
  %28 = load i32* %arrayidx187, align 4, !tbaa !3
  %sub188 = fsub double -0.000000e+00, %23
  %sub189 = add nsw i32 %28, -1
  %idxprom190 = sext i32 %sub189 to i64
  %arrayidx191 = getelementptr inbounds double* %coefmpc.1.ph, i64 %idxprom190
  %29 = load double* %arrayidx191, align 8, !tbaa !4
  %div192 = fdiv double %sub188, %29
  %mul193 = mul nsw i32 %28, 3
  %sub194 = add nsw i32 %mul193, -1
  %idxprom195 = sext i32 %sub194 to i64
  %arrayidx196 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom195
  %30 = load i32* %arrayidx196, align 4, !tbaa !3
  br label %do.body197.outer

do.body197.outer:                                 ; preds = %for.end266, %if.end184
  %nodempc.2.ph = phi i32* [ %nodempc.1.ph, %if.end184 ], [ %42, %for.end266 ]
  %index.1.ph = phi i32 [ %index.0, %if.end184 ], [ %36, %for.end266 ]
  %indexnew.0.ph = phi i32 [ %30, %if.end184 ], [ %34, %for.end266 ]
  %coefmpc.2.ph = phi double* [ %coefmpc.1.ph, %if.end184 ], [ %45, %for.end266 ]
  br label %do.body197

do.body197:                                       ; preds = %do.body197.outer, %if.then227
  %index.1 = phi i32 [ %36, %if.then227 ], [ %index.1.ph, %do.body197.outer ]
  %indexnew.0 = phi i32 [ %34, %if.then227 ], [ %indexnew.0.ph, %do.body197.outer ]
  %sub198 = add nsw i32 %indexnew.0, -1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom199
  %31 = load double* %arrayidx200, align 8, !tbaa !4
  %mul201 = fmul double %div192, %31
  %sub202 = add nsw i32 %index.1, -1
  %idxprom203 = sext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom203
  store double %mul201, double* %arrayidx204, align 8, !tbaa !4
  %mul205 = mul nsw i32 %indexnew.0, 3
  %sub206 = add nsw i32 %mul205, -3
  %idxprom207 = sext i32 %sub206 to i64
  %arrayidx208 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom207
  %32 = load i32* %arrayidx208, align 4, !tbaa !3
  %mul209 = mul nsw i32 %index.1, 3
  %sub210 = add nsw i32 %mul209, -3
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom211
  store i32 %32, i32* %arrayidx212, align 4, !tbaa !3
  %sub214 = add nsw i32 %mul205, -2
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom215
  %33 = load i32* %arrayidx216, align 4, !tbaa !3
  %sub218 = add nsw i32 %mul209, -2
  %idxprom219 = sext i32 %sub218 to i64
  %arrayidx220 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom219
  store i32 %33, i32* %arrayidx220, align 4, !tbaa !3
  %sub222 = add nsw i32 %mul205, -1
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom223
  %34 = load i32* %arrayidx224, align 4, !tbaa !3
  %cmp225 = icmp eq i32 %34, 0
  br i1 %cmp225, label %if.end291, label %if.then227

if.then227:                                       ; preds = %do.body197
  %35 = load i32* %mpcfree, align 4, !tbaa !3
  %sub229 = add nsw i32 %mul209, -1
  %idxprom230 = sext i32 %sub229 to i64
  %arrayidx231 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom230
  store i32 %35, i32* %arrayidx231, align 4, !tbaa !3
  %36 = load i32* %mpcfree, align 4, !tbaa !3
  %mul232 = mul nsw i32 %36, 3
  %sub233 = add nsw i32 %mul232, -1
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom234
  %37 = load i32* %arrayidx235, align 4, !tbaa !3
  store i32 %37, i32* %mpcfree, align 4, !tbaa !3
  %cmp236 = icmp eq i32 %37, 0
  br i1 %cmp236, label %if.then238, label %do.body197

if.then238:                                       ; preds = %if.then227
  %38 = load i32* %memmpc_, align 4, !tbaa !3
  %add239 = add nsw i32 %38, 1
  store i32 %add239, i32* %mpcfree, align 4, !tbaa !3
  store i32 %add239, i32* %arrayidx235, align 4, !tbaa !3
  %39 = load i32* %memmpc_, align 4, !tbaa !3
  %conv244 = sitofp i32 %39 to double
  %mul245 = fmul double %conv244, 1.100000e+00
  %conv246 = fptosi double %mul245 to i32
  store i32 %conv246, i32* %memmpc_, align 4, !tbaa !3
  %call247 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %conv246) #5
  %40 = bitcast i32* %nodempc.2.ph to i8*
  %41 = load i32* %memmpc_, align 4, !tbaa !3
  %mul248 = mul nsw i32 %41, 3
  %conv249 = sext i32 %mul248 to i64
  %mul250 = shl nsw i64 %conv249, 2
  %call251 = call i8* @realloc(i8* %40, i64 %mul250) #5
  %42 = bitcast i8* %call251 to i32*
  %43 = bitcast double* %coefmpc.2.ph to i8*
  %44 = load i32* %memmpc_, align 4, !tbaa !3
  %conv252 = sext i32 %44 to i64
  %mul253 = shl nsw i64 %conv252, 3
  %call254 = call i8* @realloc(i8* %43, i64 %mul253) #5
  %45 = bitcast i8* %call254 to double*
  %46 = load i32* %mpcfree, align 4, !tbaa !3
  %47 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp256678 = icmp slt i32 %46, %47
  br i1 %cmp256678, label %for.body258.lr.ph, label %for.end266

for.body258.lr.ph:                                ; preds = %if.then238
  %48 = sext i32 %46 to i64
  br label %for.body258

for.body258:                                      ; preds = %for.body258.lr.ph, %for.body258
  %indvars.iv726 = phi i64 [ %48, %for.body258.lr.ph ], [ %indvars.iv.next727, %for.body258 ]
  %indvars.iv.next727 = add i64 %indvars.iv726, 1
  %sub261 = mul i64 %indvars.iv726, 12884901888
  %sext = add i64 %sub261, -4294967296
  %idxprom262 = ashr exact i64 %sext, 32
  %arrayidx263 = getelementptr inbounds i32* %42, i64 %idxprom262
  %49 = trunc i64 %indvars.iv.next727 to i32
  store i32 %49, i32* %arrayidx263, align 4, !tbaa !3
  %cmp256 = icmp slt i32 %49, %47
  br i1 %cmp256, label %for.body258, label %for.end266

for.end266:                                       ; preds = %for.body258, %if.then238
  %mul267 = mul nsw i32 %47, 3
  %sub268 = add nsw i32 %mul267, -1
  %idxprom269 = sext i32 %sub268 to i64
  %arrayidx270 = getelementptr inbounds i32* %42, i64 %idxprom269
  store i32 0, i32* %arrayidx270, align 4, !tbaa !3
  br label %do.body197.outer

if.else277:                                       ; preds = %land.lhs.true, %do.body106
  %sub279 = add nsw i32 %mul107, -1
  %idxprom280 = sext i32 %sub279 to i64
  %arrayidx281 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom280
  %50 = load i32* %arrayidx281, align 4, !tbaa !3
  %cmp282 = icmp eq i32 %50, 0
  br i1 %cmp282, label %for.inc420, label %do.body106

if.end291:                                        ; preds = %do.body197
  %sub274 = add nsw i32 %mul209, -1
  %idxprom275 = sext i32 %sub274 to i64
  %arrayidx276 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom275
  store i32 %22, i32* %arrayidx276, align 4, !tbaa !3
  %51 = load i32* %arrayidx97, align 4, !tbaa !3
  br label %do.body294

do.body294:                                       ; preds = %do.end364, %if.end291
  %index1.0 = phi i32 [ %51, %if.end291 ], [ %63, %do.end364 ]
  %mul295 = mul nsw i32 %index1.0, 3
  %sub296 = add nsw i32 %mul295, -1
  %idxprom297 = sext i32 %sub296 to i64
  %arrayidx298 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom297
  %52 = load i32* %arrayidx298, align 4, !tbaa !3
  %cmp299 = icmp eq i32 %52, 0
  br i1 %cmp299, label %do.end374, label %do.body303.preheader

do.body303.preheader:                             ; preds = %do.body294
  %sub305 = add nsw i32 %mul295, -3
  %idxprom306 = sext i32 %sub305 to i64
  %arrayidx307 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom306
  %sub316 = add nsw i32 %mul295, -2
  %idxprom317 = sext i32 %sub316 to i64
  %arrayidx318 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom317
  %sub329 = add nsw i32 %index1.0, -1
  %idxprom330 = sext i32 %sub329 to i64
  %arrayidx331 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom330
  br label %do.body303.outer

do.body303.outer:                                 ; preds = %do.body303.preheader, %if.else353
  %index2.0.ph = phi i32 [ %62, %if.else353 ], [ %52, %do.body303.preheader ]
  %index2old.0.ph = phi i32 [ %index2.0, %if.else353 ], [ %index1.0, %do.body303.preheader ]
  %mul337 = mul nsw i32 %index2old.0.ph, 3
  %sub338 = add nsw i32 %mul337, -1
  %idxprom339 = sext i32 %sub338 to i64
  %arrayidx340 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom339
  br label %do.body303

do.body303:                                       ; preds = %if.then325, %do.body303.outer
  %index2.0 = phi i32 [ %index2.0.ph, %do.body303.outer ], [ %61, %if.then325 ]
  %53 = load i32* %arrayidx307, align 4, !tbaa !3
  %mul308 = mul nsw i32 %index2.0, 3
  %sub309 = add nsw i32 %mul308, -3
  %idxprom310 = sext i32 %sub309 to i64
  %arrayidx311 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom310
  %54 = load i32* %arrayidx311, align 4, !tbaa !3
  %cmp312 = icmp eq i32 %53, %54
  br i1 %cmp312, label %land.lhs.true314, label %if.else353

land.lhs.true314:                                 ; preds = %do.body303
  %55 = load i32* %arrayidx318, align 4, !tbaa !3
  %sub320 = add nsw i32 %mul308, -2
  %idxprom321 = sext i32 %sub320 to i64
  %arrayidx322 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom321
  %56 = load i32* %arrayidx322, align 4, !tbaa !3
  %cmp323 = icmp eq i32 %55, %56
  br i1 %cmp323, label %if.then325, label %if.else353

if.then325:                                       ; preds = %land.lhs.true314
  %sub326 = add nsw i32 %index2.0, -1
  %idxprom327 = sext i32 %sub326 to i64
  %arrayidx328 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom327
  %57 = load double* %arrayidx328, align 8, !tbaa !4
  %58 = load double* %arrayidx331, align 8, !tbaa !4
  %add332 = fadd double %57, %58
  store double %add332, double* %arrayidx331, align 8, !tbaa !4
  %sub334 = add nsw i32 %mul308, -1
  %idxprom335 = sext i32 %sub334 to i64
  %arrayidx336 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom335
  %59 = load i32* %arrayidx336, align 4, !tbaa !3
  store i32 %59, i32* %arrayidx340, align 4, !tbaa !3
  %60 = load i32* %mpcfree, align 4, !tbaa !3
  store i32 %60, i32* %arrayidx336, align 4, !tbaa !3
  store i32 %index2.0, i32* %mpcfree, align 4, !tbaa !3
  %61 = load i32* %arrayidx340, align 4, !tbaa !3
  %cmp349 = icmp eq i32 %61, 0
  br i1 %cmp349, label %do.end364, label %do.body303

if.else353:                                       ; preds = %land.lhs.true314, %do.body303
  %sub355 = add nsw i32 %mul308, -1
  %idxprom356 = sext i32 %sub355 to i64
  %arrayidx357 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom356
  %62 = load i32* %arrayidx357, align 4, !tbaa !3
  %cmp358 = icmp eq i32 %62, 0
  br i1 %cmp358, label %do.end364, label %do.body303.outer

do.end364:                                        ; preds = %if.else353, %if.then325
  %63 = load i32* %arrayidx298, align 4, !tbaa !3
  %cmp369 = icmp eq i32 %63, 0
  br i1 %cmp369, label %do.end374, label %do.body294

do.end374:                                        ; preds = %do.end364, %do.body294
  %64 = load i32* %arrayidx97, align 4, !tbaa !3
  br label %do.body377

do.body377:                                       ; preds = %if.end413, %do.end374
  %index1.1 = phi i32 [ %64, %do.end374 ], [ %index1.2, %if.end413 ]
  %index1old.0 = phi i32 [ 0, %do.end374 ], [ %index1old.1, %if.end413 ]
  %sub378 = add nsw i32 %index1.1, -1
  %idxprom379 = sext i32 %sub378 to i64
  %arrayidx380 = getelementptr inbounds double* %coefmpc.2.ph, i64 %idxprom379
  %65 = load double* %arrayidx380, align 8, !tbaa !4
  %call381 = call double @fabs(double %65) #6
  %cmp382 = fcmp olt double %call381, 1.000000e-10
  br i1 %cmp382, label %if.then384, label %if.else408

if.then384:                                       ; preds = %do.body377
  %cmp385 = icmp eq i32 %index1old.0, 0
  br i1 %cmp385, label %if.then387, label %if.else390

if.then387:                                       ; preds = %if.then384
  %puts = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str, i64 0, i64 0))
  %puts661 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str12, i64 0, i64 0))
  call void (...)* @stop_() #5
  br label %if.end413

if.else390:                                       ; preds = %if.then384
  %mul391 = mul nsw i32 %index1.1, 3
  %sub392 = add nsw i32 %mul391, -1
  %idxprom393 = sext i32 %sub392 to i64
  %arrayidx394 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom393
  %66 = load i32* %arrayidx394, align 4, !tbaa !3
  %mul395 = mul nsw i32 %index1old.0, 3
  %sub396 = add nsw i32 %mul395, -1
  %idxprom397 = sext i32 %sub396 to i64
  %arrayidx398 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom397
  store i32 %66, i32* %arrayidx398, align 4, !tbaa !3
  %67 = load i32* %mpcfree, align 4, !tbaa !3
  store i32 %67, i32* %arrayidx394, align 4, !tbaa !3
  store i32 %index1.1, i32* %mpcfree, align 4, !tbaa !3
  %68 = load i32* %arrayidx398, align 4, !tbaa !3
  br label %if.end413

if.else408:                                       ; preds = %do.body377
  %mul409 = mul nsw i32 %index1.1, 3
  %sub410 = add nsw i32 %mul409, -1
  %idxprom411 = sext i32 %sub410 to i64
  %arrayidx412 = getelementptr inbounds i32* %nodempc.2.ph, i64 %idxprom411
  %69 = load i32* %arrayidx412, align 4, !tbaa !3
  br label %if.end413

if.end413:                                        ; preds = %if.then387, %if.else390, %if.else408
  %index1.2 = phi i32 [ %index1.1, %if.then387 ], [ %68, %if.else390 ], [ %69, %if.else408 ]
  %index1old.1 = phi i32 [ 0, %if.then387 ], [ %index1old.0, %if.else390 ], [ %index1.1, %if.else408 ]
  %cmp414 = icmp eq i32 %index1.2, 0
  br i1 %cmp414, label %for.inc420, label %do.body377

for.inc420:                                       ; preds = %if.end413, %if.else277, %if.then153, %for.body88
  %nodempc.4 = phi i32* [ %nodempc.1.ph, %for.body88 ], [ %nodempc.1.ph, %if.then153 ], [ %nodempc.1.ph, %if.else277 ], [ %nodempc.2.ph, %if.end413 ]
  %idepend.6 = phi i32 [ %idepend.1.ph, %for.body88 ], [ %idepend.3, %if.then153 ], [ %idepend.2.ph, %if.else277 ], [ %idepend.4, %if.end413 ]
  %ichange.2 = phi i32 [ %ichange.0, %for.body88 ], [ %ichange.0, %if.then153 ], [ %ichange.0, %if.else277 ], [ 1, %if.end413 ]
  %coefmpc.4 = phi double* [ %coefmpc.1.ph, %for.body88 ], [ %coefmpc.1.ph, %if.then153 ], [ %coefmpc.1.ph, %if.else277 ], [ %coefmpc.2.ph, %if.end413 ]
  %inc421 = add nsw i32 %i.2, 1
  %.pre = load i32* %nmpc, align 4, !tbaa !3
  br label %for.cond85.outer

for.cond85.outer:                                 ; preds = %entry, %for.cond27.preheader, %for.inc82, %for.inc420
  %70 = phi i32 [ %.pre, %for.inc420 ], [ %9, %for.cond27.preheader ], [ %11, %for.inc82 ], [ %4, %entry ]
  %nodempc.1.ph = phi i32* [ %nodempc.4, %for.inc420 ], [ %0, %for.cond27.preheader ], [ %0, %for.inc82 ], [ %0, %entry ]
  %idepend.1.ph = phi i32 [ %idepend.6, %for.inc420 ], [ 0, %for.cond27.preheader ], [ 0, %for.inc82 ], [ 0, %entry ]
  %ichange.0.ph = phi i32 [ %ichange.2, %for.inc420 ], [ 0, %for.cond27.preheader ], [ 0, %for.inc82 ], [ 0, %entry ]
  %i.2.ph = phi i32 [ %inc421, %for.inc420 ], [ 0, %for.cond27.preheader ], [ 0, %for.inc82 ], [ 0, %entry ]
  %coefmpc.1.ph = phi double* [ %coefmpc.4, %for.inc420 ], [ %1, %for.cond27.preheader ], [ %1, %for.inc82 ], [ %1, %entry ]
  br label %for.cond85

for.end422:                                       ; preds = %for.cond85
  %cmp423 = icmp eq i32 %ichange.0, 0
  br i1 %cmp423, label %do.end428, label %for.cond85

do.end428:                                        ; preds = %for.end422
  store i32 0, i32* %mpcend, align 4, !tbaa !3
  store i32 0, i32* %mpcmult, align 4, !tbaa !3
  store i32 0, i32* %maxlenmpc, align 4, !tbaa !3
  %71 = load i32* %nmpc, align 4, !tbaa !3
  %cmp430674 = icmp sgt i32 %71, 0
  br i1 %cmp430674, label %for.body432, label %for.end463

for.body432:                                      ; preds = %do.end428, %if.then443
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then443 ], [ 0, %do.end428 ]
  %arrayidx434 = getelementptr inbounds i32* %ipompc, i64 %indvars.iv
  %72 = load i32* %arrayidx434, align 4, !tbaa !3
  %73 = load i32* %mpcend, align 4, !tbaa !3
  %cmp435 = icmp slt i32 %73, %72
  %.664 = select i1 %cmp435, i32 %72, i32 %73
  store i32 %.664, i32* %mpcend, align 4, !tbaa !3
  %mul437668 = mul nsw i32 %72, 3
  %sub438669 = add nsw i32 %mul437668, -1
  %idxprom439670 = sext i32 %sub438669 to i64
  %arrayidx440671 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom439670
  %74 = load i32* %arrayidx440671, align 4, !tbaa !3
  %cmp441672 = icmp eq i32 %74, 0
  br i1 %cmp441672, label %if.then443, label %if.end453

if.then443:                                       ; preds = %if.end453, %for.body432
  %nterm.0.lcssa = phi i32 [ 1, %for.body432 ], [ %inc460, %if.end453 ]
  %sub444 = add nsw i32 %nterm.0.lcssa, -1
  %mul445 = mul nsw i32 %sub444, %nterm.0.lcssa
  %75 = load i32* %mpcmult, align 4, !tbaa !3
  %add446 = add nsw i32 %75, %mul445
  store i32 %add446, i32* %mpcmult, align 4, !tbaa !3
  %76 = load i32* %maxlenmpc, align 4, !tbaa !3
  %cmp447 = icmp slt i32 %76, %nterm.0.lcssa
  %nterm.0. = select i1 %cmp447, i32 %nterm.0.lcssa, i32 %76
  store i32 %nterm.0., i32* %maxlenmpc, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %77 = load i32* %nmpc, align 4, !tbaa !3
  %78 = trunc i64 %indvars.iv.next to i32
  %cmp430 = icmp slt i32 %78, %77
  br i1 %cmp430, label %for.body432, label %for.end463

if.end453:                                        ; preds = %for.body432, %if.end453
  %79 = phi i32 [ %.665, %if.end453 ], [ %.664, %for.body432 ]
  %80 = phi i32 [ %81, %if.end453 ], [ %74, %for.body432 ]
  %nterm.0673 = phi i32 [ %inc460, %if.end453 ], [ 1, %for.body432 ]
  %cmp454 = icmp slt i32 %79, %80
  %.665 = select i1 %cmp454, i32 %80, i32 %79
  store i32 %.665, i32* %mpcend, align 4, !tbaa !3
  %inc460 = add nsw i32 %nterm.0673, 1
  %mul437 = mul nsw i32 %80, 3
  %sub438 = add nsw i32 %mul437, -1
  %idxprom439 = sext i32 %sub438 to i64
  %arrayidx440 = getelementptr inbounds i32* %nodempc.1.ph, i64 %idxprom439
  %81 = load i32* %arrayidx440, align 4, !tbaa !3
  %cmp441 = icmp eq i32 %81, 0
  br i1 %cmp441, label %if.then443, label %if.end453

for.end463:                                       ; preds = %if.then443, %do.end428
  call void @free(i8* %call) #5
  store i32* %nodempc.1.ph, i32** %nodempcp, align 8, !tbaa !0
  store double* %coefmpc.1.ph, double** %coefmpcp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: optsize
declare void @nident_(i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @stop_(...) #1

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @strcpy1(i8*, i8*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

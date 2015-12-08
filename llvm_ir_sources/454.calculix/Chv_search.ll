; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_maxabsInDiagonal11(%p,%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [92 x i8] c"\0A fatal error in Chv_maxabsInDiagonal11(%p,%p,%d,%p)\0A type = SPOOLES_REAL, bad symflag %d \0A\00", align 1
@.str2 = private unnamed_addr constant [95 x i8] c"\0A fatal error in Chv_maxabsInDiagonal11(%p,%p,%d,%p)\0A type = SPOOLES_COMPLEX, bad symflag %d \0A\00", align 1
@.str3 = private unnamed_addr constant [105 x i8] c"\0A fatal error in Chv_maxabsInDiagonal11(%p,%p,%d,%p)\0A bad type, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Chv_maxabsInRow11(%p,%d,%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [91 x i8] c"\0A fatal error in Chv_maxabsInRow11(%p,%d,%p,%d,%p)\0A type is SPOOLES_REAL, bad symflag %d \0A\00", align 1
@.str6 = private unnamed_addr constant [94 x i8] c"\0A fatal error in Chv_maxabsInRow11(%p,%d,%p,%d,%p)\0A type is SPOOLES_COMPLEX, bad symflag %d \0A\00", align 1
@.str7 = private unnamed_addr constant [103 x i8] c"\0A fatal error in Chv_maxabsInRow11(%p,%d,%p,%d,%p)\0A bad type, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [66 x i8] c"\0A fatal error in Chv_maxabsInColumn11(%p,%d,%p,%d,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [106 x i8] c"\0A fatal error in Chv_maxabsInColumn11(%p,%d,%p,%d,%p)\0A bad type, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Chv_maxabsInRow(%p,%d,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [99 x i8] c"\0A fatal error in Chv_maxabsInRow(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX \0A\00", align 1
@.str12 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Chv_maxabsInColumn(%p,%d,%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [64 x i8] c"\0A fatal error in Chv_maxabsInColumn(%p,%d,%p)\0A bad symflag %d \0A\00", align 1
@.str14 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Chv_quasimax(%p,%p,%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [133 x i8] c"\0A fatal error in Chv_quasimax(%p,%p,%p,%d,%p,%p)\0A chv->symflag =  %d\0A chevron is not symmetric or hermitian\0A method cannot be used \0A\00", align 1
@.str16 = private unnamed_addr constant [71 x i8] c"\0A fatal error in Chv_fastBunchParlettPivot(%p,%p,%d,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInDiagonal11(%struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i32* %mark, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %pmaxval, null
  %or.cond224 = or i1 %or.cond, %cmp3
  br i1 %or.cond224, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #5
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else133 [
    i32 1, label %if.then6
    i32 2, label %if.then58
  ]

if.then6:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %2 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %2, label %if.else50 [
    i32 2, label %if.then8
    i32 0, label %if.then28
  ]

if.then8:                                         ; preds = %if.then6
  %3 = load i32* %nD, align 4, !tbaa !3
  %4 = load i32* %nL, align 4, !tbaa !3
  %cmp12230 = icmp sgt i32 %3, 0
  br i1 %cmp12230, label %for.body.lr.ph, label %if.end136

for.body.lr.ph:                                   ; preds = %if.then8
  %5 = load i32* %nU, align 4, !tbaa !3
  %add = add i32 %3, -1
  %sub = add i32 %add, %4
  %6 = add i32 %4, %5
  %7 = shl i32 %3, 1
  %8 = add i32 %6, %7
  %9 = sext i32 %8 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end23
  %indvars.iv265 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next266, %if.end23 ]
  %indvars.iv = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next, %if.end23 ]
  %off.0234 = phi i32 [ %sub, %for.body.lr.ph ], [ %add24, %if.end23 ]
  %jcol.0232 = phi i32 [ -1, %for.body.lr.ph ], [ %jcol.1, %if.end23 ]
  %maxval.0231 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %if.end23 ]
  %indvars.iv.next = add i64 %indvars.iv, -2
  %arrayidx = getelementptr inbounds i32* %mark, i64 %indvars.iv265
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %10, %tag
  br i1 %cmp13, label %if.then14, label %if.end23

if.then14:                                        ; preds = %for.body
  %idxprom15 = sext i32 %off.0234 to i64
  %arrayidx16 = getelementptr inbounds double* %call4, i64 %idxprom15
  %11 = load double* %arrayidx16, align 8, !tbaa !4
  %call17 = call double @fabs(double %11) #7
  %cmp18 = icmp eq i32 %jcol.0232, -1
  %cmp20 = fcmp olt double %maxval.0231, %call17
  %or.cond225 = or i1 %cmp18, %cmp20
  %call17.maxval.0 = select i1 %or.cond225, double %call17, double %maxval.0231
  %12 = trunc i64 %indvars.iv265 to i32
  %jj.0.jcol.0 = select i1 %or.cond225, i32 %12, i32 %jcol.0232
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %for.body
  %maxval.1 = phi double [ %maxval.0231, %for.body ], [ %call17.maxval.0, %if.then14 ]
  %jcol.1 = phi i32 [ %jcol.0232, %for.body ], [ %jj.0.jcol.0, %if.then14 ]
  %13 = trunc i64 %indvars.iv.next to i32
  %add24 = add nsw i32 %13, %off.0234
  %indvars.iv.next266 = add i64 %indvars.iv265, 1
  %14 = trunc i64 %indvars.iv.next266 to i32
  %cmp12 = icmp slt i32 %14, %3
  br i1 %cmp12, label %for.body, label %if.end136

if.then28:                                        ; preds = %if.then6
  %15 = load i32* %nD, align 4, !tbaa !3
  %cmp31238 = icmp sgt i32 %15, 0
  br i1 %cmp31238, label %for.body32.lr.ph, label %if.end136

for.body32.lr.ph:                                 ; preds = %if.then28
  %16 = load i32* %nU, align 4, !tbaa !3
  %add29 = add nsw i32 %16, %15
  %17 = sext i32 %add29 to i64
  br label %for.body32

for.body32:                                       ; preds = %for.body32.lr.ph, %if.end45
  %indvars.iv269 = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next270, %if.end45 ]
  %indvars.iv267 = phi i64 [ %17, %for.body32.lr.ph ], [ %indvars.iv.next268, %if.end45 ]
  %off.1242 = phi i32 [ 0, %for.body32.lr.ph ], [ %add46, %if.end45 ]
  %jcol.2240 = phi i32 [ -1, %for.body32.lr.ph ], [ %jcol.3, %if.end45 ]
  %maxval.2239 = phi double [ 0.000000e+00, %for.body32.lr.ph ], [ %maxval.3, %if.end45 ]
  %arrayidx34 = getelementptr inbounds i32* %mark, i64 %indvars.iv269
  %18 = load i32* %arrayidx34, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %18, %tag
  br i1 %cmp35, label %if.then36, label %if.end45

if.then36:                                        ; preds = %for.body32
  %idxprom37 = sext i32 %off.1242 to i64
  %arrayidx38 = getelementptr inbounds double* %call4, i64 %idxprom37
  %19 = load double* %arrayidx38, align 8, !tbaa !4
  %call39 = call double @fabs(double %19) #7
  %cmp40 = icmp eq i32 %jcol.2240, -1
  %cmp42 = fcmp olt double %maxval.2239, %call39
  %or.cond226 = or i1 %cmp40, %cmp42
  %call39.maxval.2 = select i1 %or.cond226, double %call39, double %maxval.2239
  %20 = trunc i64 %indvars.iv269 to i32
  %jj.1.jcol.2 = select i1 %or.cond226, i32 %20, i32 %jcol.2240
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %for.body32
  %maxval.3 = phi double [ %maxval.2239, %for.body32 ], [ %call39.maxval.2, %if.then36 ]
  %jcol.3 = phi i32 [ %jcol.2240, %for.body32 ], [ %jj.1.jcol.2, %if.then36 ]
  %21 = trunc i64 %indvars.iv267 to i32
  %add46 = add nsw i32 %21, %off.1242
  %indvars.iv.next268 = add i64 %indvars.iv267, -1
  %indvars.iv.next270 = add i64 %indvars.iv269, 1
  %22 = trunc i64 %indvars.iv.next270 to i32
  %cmp31 = icmp slt i32 %22, %15
  br i1 %cmp31, label %for.body32, label %if.end136

if.else50:                                        ; preds = %if.then6
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([92 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval, i32 %2) #5
  call void @exit(i32 -1) #6
  unreachable

if.then58:                                        ; preds = %if.end
  %symflag59 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %24 = load i32* %symflag59, align 4, !tbaa !3
  switch i32 %24, label %if.else128 [
    i32 2, label %if.then61
    i32 0, label %if.then100
    i32 1, label %if.then100
  ]

if.then61:                                        ; preds = %if.then58
  %25 = load i32* %nD, align 4, !tbaa !3
  %26 = load i32* %nL, align 4, !tbaa !3
  %cmp69248 = icmp sgt i32 %25, 0
  br i1 %cmp69248, label %for.body70.lr.ph, label %if.end136

for.body70.lr.ph:                                 ; preds = %if.then61
  %27 = load i32* %nU, align 4, !tbaa !3
  %add62 = add i32 %25, -1
  %sub63 = add i32 %add62, %26
  %28 = add i32 %26, %27
  %29 = shl i32 %25, 1
  %30 = add i32 %28, %29
  %31 = sext i32 %30 to i64
  br label %for.body70

for.body70:                                       ; preds = %for.body70.lr.ph, %if.end88
  %32 = phi i32 [ %25, %for.body70.lr.ph ], [ %37, %if.end88 ]
  %indvars.iv273 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next274, %if.end88 ]
  %indvars.iv271 = phi i64 [ %31, %for.body70.lr.ph ], [ %indvars.iv.next272, %if.end88 ]
  %off.2252 = phi i32 [ %sub63, %for.body70.lr.ph ], [ %add89, %if.end88 ]
  %jcol.4250 = phi i32 [ -1, %for.body70.lr.ph ], [ %jcol.5, %if.end88 ]
  %maxval.4249 = phi double [ 0.000000e+00, %for.body70.lr.ph ], [ %maxval.5, %if.end88 ]
  %indvars.iv.next272 = add i64 %indvars.iv271, -2
  %arrayidx72 = getelementptr inbounds i32* %mark, i64 %indvars.iv273
  %33 = load i32* %arrayidx72, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %33, %tag
  br i1 %cmp73, label %if.then74, label %if.end88

if.then74:                                        ; preds = %for.body70
  %mul75 = shl nsw i32 %off.2252, 1
  %idxprom76 = sext i32 %mul75 to i64
  %arrayidx77 = getelementptr inbounds double* %call4, i64 %idxprom76
  %34 = load double* %arrayidx77, align 8, !tbaa !4
  %add79223 = or i32 %mul75, 1
  %idxprom80 = sext i32 %add79223 to i64
  %arrayidx81 = getelementptr inbounds double* %call4, i64 %idxprom80
  %35 = load double* %arrayidx81, align 8, !tbaa !4
  %call82 = call double @Zabs(double %34, double %35) #5
  %cmp83 = icmp eq i32 %jcol.4250, -1
  %cmp85 = fcmp olt double %maxval.4249, %call82
  %or.cond227 = or i1 %cmp83, %cmp85
  %call82.maxval.4 = select i1 %or.cond227, double %call82, double %maxval.4249
  %36 = trunc i64 %indvars.iv273 to i32
  %jj.2.jcol.4 = select i1 %or.cond227, i32 %36, i32 %jcol.4250
  %.pre = load i32* %nD, align 4, !tbaa !3
  br label %if.end88

if.end88:                                         ; preds = %if.then74, %for.body70
  %37 = phi i32 [ %32, %for.body70 ], [ %.pre, %if.then74 ]
  %maxval.5 = phi double [ %maxval.4249, %for.body70 ], [ %call82.maxval.4, %if.then74 ]
  %jcol.5 = phi i32 [ %jcol.4250, %for.body70 ], [ %jj.2.jcol.4, %if.then74 ]
  %38 = trunc i64 %indvars.iv.next272 to i32
  %add89 = add nsw i32 %38, %off.2252
  %indvars.iv.next274 = add i64 %indvars.iv273, 1
  %39 = trunc i64 %indvars.iv.next274 to i32
  %cmp69 = icmp slt i32 %39, %37
  br i1 %cmp69, label %for.body70, label %if.end136

if.then100:                                       ; preds = %if.then58, %if.then58
  %40 = load i32* %nD, align 4, !tbaa !3
  %cmp103257 = icmp sgt i32 %40, 0
  br i1 %cmp103257, label %for.body104.lr.ph, label %if.end136

for.body104.lr.ph:                                ; preds = %if.then100
  %41 = load i32* %nU, align 4, !tbaa !3
  %add101 = add nsw i32 %41, %40
  %42 = sext i32 %add101 to i64
  br label %for.body104

for.body104:                                      ; preds = %for.body104.lr.ph, %if.end122
  %43 = phi i32 [ %40, %for.body104.lr.ph ], [ %48, %if.end122 ]
  %indvars.iv277 = phi i64 [ 0, %for.body104.lr.ph ], [ %indvars.iv.next278, %if.end122 ]
  %indvars.iv275 = phi i64 [ %42, %for.body104.lr.ph ], [ %indvars.iv.next276, %if.end122 ]
  %off.3261 = phi i32 [ 0, %for.body104.lr.ph ], [ %add123, %if.end122 ]
  %jcol.6259 = phi i32 [ -1, %for.body104.lr.ph ], [ %jcol.7, %if.end122 ]
  %maxval.6258 = phi double [ 0.000000e+00, %for.body104.lr.ph ], [ %maxval.7, %if.end122 ]
  %arrayidx106 = getelementptr inbounds i32* %mark, i64 %indvars.iv277
  %44 = load i32* %arrayidx106, align 4, !tbaa !3
  %cmp107 = icmp eq i32 %44, %tag
  br i1 %cmp107, label %if.then108, label %if.end122

if.then108:                                       ; preds = %for.body104
  %mul109 = shl nsw i32 %off.3261, 1
  %idxprom110 = sext i32 %mul109 to i64
  %arrayidx111 = getelementptr inbounds double* %call4, i64 %idxprom110
  %45 = load double* %arrayidx111, align 8, !tbaa !4
  %add113222 = or i32 %mul109, 1
  %idxprom114 = sext i32 %add113222 to i64
  %arrayidx115 = getelementptr inbounds double* %call4, i64 %idxprom114
  %46 = load double* %arrayidx115, align 8, !tbaa !4
  %call116 = call double @Zabs(double %45, double %46) #5
  %cmp117 = icmp eq i32 %jcol.6259, -1
  %cmp119 = fcmp olt double %maxval.6258, %call116
  %or.cond228 = or i1 %cmp117, %cmp119
  %call116.maxval.6 = select i1 %or.cond228, double %call116, double %maxval.6258
  %47 = trunc i64 %indvars.iv277 to i32
  %jj.3.jcol.6 = select i1 %or.cond228, i32 %47, i32 %jcol.6259
  %.pre279 = load i32* %nD, align 4, !tbaa !3
  br label %if.end122

if.end122:                                        ; preds = %if.then108, %for.body104
  %48 = phi i32 [ %43, %for.body104 ], [ %.pre279, %if.then108 ]
  %maxval.7 = phi double [ %maxval.6258, %for.body104 ], [ %call116.maxval.6, %if.then108 ]
  %jcol.7 = phi i32 [ %jcol.6259, %for.body104 ], [ %jj.3.jcol.6, %if.then108 ]
  %49 = trunc i64 %indvars.iv275 to i32
  %add123 = add nsw i32 %49, %off.3261
  %indvars.iv.next276 = add i64 %indvars.iv275, -1
  %indvars.iv.next278 = add i64 %indvars.iv277, 1
  %50 = trunc i64 %indvars.iv.next278 to i32
  %cmp103 = icmp slt i32 %50, %48
  br i1 %cmp103, label %for.body104, label %if.end136

if.else128:                                       ; preds = %if.then58
  %51 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([95 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval, i32 %24) #5
  call void @exit(i32 -1) #6
  unreachable

if.else133:                                       ; preds = %if.end
  %52 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([105 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end136:                                        ; preds = %if.then100, %if.end122, %if.then61, %if.end88, %if.then28, %if.end45, %if.then8, %if.end23
  %maxval.8 = phi double [ 0.000000e+00, %if.then8 ], [ %maxval.1, %if.end23 ], [ 0.000000e+00, %if.then28 ], [ %maxval.3, %if.end45 ], [ 0.000000e+00, %if.then61 ], [ %maxval.5, %if.end88 ], [ 0.000000e+00, %if.then100 ], [ %maxval.7, %if.end122 ]
  %jcol.8 = phi i32 [ -1, %if.then8 ], [ %jcol.1, %if.end23 ], [ -1, %if.then28 ], [ %jcol.3, %if.end45 ], [ -1, %if.then61 ], [ %jcol.5, %if.end88 ], [ -1, %if.then100 ], [ %jcol.7, %if.end122 ]
  store double %maxval.8, double* %pmaxval, align 8, !tbaa !4
  ret i32 %jcol.8
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %colmark, null
  %or.cond394 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %pmaxval, null
  %or.cond395 = or i1 %or.cond394, %cmp5
  br i1 %or.cond395, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %call6 = call double* @Chv_entries(%struct._Chv* %chv) #5
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else229 [
    i32 1, label %if.then8
    i32 2, label %if.then102
  ]

if.then8:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %2 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %2, label %if.else94 [
    i32 2, label %if.then10
    i32 0, label %if.then51
  ]

if.then10:                                        ; preds = %if.then8
  %3 = load i32* %nD, align 4, !tbaa !3
  %4 = load i32* %nL, align 4, !tbaa !3
  %add = xor i32 %irow, -1
  %sub = add i32 %3, %add
  %sub11 = add i32 %sub, %4
  %cmp15410 = icmp sgt i32 %irow, 0
  br i1 %cmp15410, label %for.body.lr.ph, label %for.cond29.preheader

for.body.lr.ph:                                   ; preds = %if.then10
  %5 = load i32* %nU, align 4, !tbaa !3
  %6 = add i32 %4, %5
  %7 = shl i32 %3, 1
  %8 = add i32 %6, %7
  %9 = add i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = add i32 %irow, -1
  %12 = add i32 %8, -3
  %13 = mul i32 %11, %12
  %14 = add i32 %5, %13
  %15 = mul i32 %3, 3
  %16 = add i32 %14, %15
  %17 = shl i32 %4, 1
  %18 = add i32 %16, %17
  %19 = add i32 %18, -2
  %20 = add i32 %irow, -2
  %21 = mul i32 %11, %20
  %22 = and i32 %21, -2
  br label %for.body

for.cond.for.cond29.preheader_crit_edge:          ; preds = %if.end26
  %23 = sub i32 %19, %irow
  %24 = sub i32 %23, %22
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.cond.for.cond29.preheader_crit_edge, %if.then10
  %off.0.lcssa = phi i32 [ %24, %for.cond.for.cond29.preheader_crit_edge ], [ %sub11, %if.then10 ]
  %jcol.0.lcssa = phi i32 [ %jcol.1, %for.cond.for.cond29.preheader_crit_edge ], [ -1, %if.then10 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond29.preheader_crit_edge ], [ 0.000000e+00, %if.then10 ]
  %cmp30404 = icmp sgt i32 %3, %irow
  br i1 %cmp30404, label %for.body31.lr.ph, label %if.end232

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %25 = sext i32 %off.0.lcssa to i64
  %26 = sext i32 %irow to i64
  br label %for.body31

for.body:                                         ; preds = %if.end26, %for.body.lr.ph
  %indvars.iv477 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next478, %if.end26 ]
  %indvars.iv474 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next475, %if.end26 ]
  %off.0414 = phi i32 [ %sub11, %for.body.lr.ph ], [ %add27, %if.end26 ]
  %jcol.0412 = phi i32 [ -1, %for.body.lr.ph ], [ %jcol.1, %if.end26 ]
  %maxval.0411 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %if.end26 ]
  %arrayidx = getelementptr inbounds i32* %colmark, i64 %indvars.iv477
  %27 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %27, %tag
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %for.body
  %idxprom18 = sext i32 %off.0414 to i64
  %arrayidx19 = getelementptr inbounds double* %call6, i64 %idxprom18
  %28 = load double* %arrayidx19, align 8, !tbaa !4
  %call20 = call double @fabs(double %28) #7
  %cmp21 = icmp eq i32 %jcol.0412, -1
  %cmp23 = fcmp olt double %maxval.0411, %call20
  %or.cond396 = or i1 %cmp21, %cmp23
  %call20.maxval.0 = select i1 %or.cond396, double %call20, double %maxval.0411
  %29 = trunc i64 %indvars.iv477 to i32
  %jj.0.jcol.0 = select i1 %or.cond396, i32 %29, i32 %jcol.0412
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %for.body
  %maxval.1 = phi double [ %maxval.0411, %for.body ], [ %call20.maxval.0, %if.then17 ]
  %jcol.1 = phi i32 [ %jcol.0412, %for.body ], [ %jj.0.jcol.0, %if.then17 ]
  %30 = trunc i64 %indvars.iv474 to i32
  %add27 = add nsw i32 %30, %off.0414
  %indvars.iv.next478 = add i64 %indvars.iv477, 1
  %indvars.iv.next475 = add i64 %indvars.iv474, -2
  %lftr.wideiv = trunc i64 %indvars.iv.next478 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %irow
  br i1 %exitcond, label %for.cond.for.cond29.preheader_crit_edge, label %for.body

for.body31:                                       ; preds = %for.body31.lr.ph, %for.inc45
  %indvars.iv472 = phi i64 [ %26, %for.body31.lr.ph ], [ %indvars.iv.next473, %for.inc45 ]
  %indvars.iv = phi i64 [ %25, %for.body31.lr.ph ], [ %indvars.iv.next, %for.inc45 ]
  %jcol.2406 = phi i32 [ %jcol.0.lcssa, %for.body31.lr.ph ], [ %jcol.3, %for.inc45 ]
  %maxval.2405 = phi double [ %maxval.0.lcssa, %for.body31.lr.ph ], [ %maxval.3, %for.inc45 ]
  %arrayidx33 = getelementptr inbounds i32* %colmark, i64 %indvars.iv472
  %31 = load i32* %arrayidx33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %31, %tag
  br i1 %cmp34, label %if.then35, label %for.inc45

if.then35:                                        ; preds = %for.body31
  %arrayidx37 = getelementptr inbounds double* %call6, i64 %indvars.iv
  %32 = load double* %arrayidx37, align 8, !tbaa !4
  %call38 = call double @fabs(double %32) #7
  %cmp39 = icmp eq i32 %jcol.2406, -1
  %cmp41 = fcmp olt double %maxval.2405, %call38
  %or.cond397 = or i1 %cmp39, %cmp41
  %call38.maxval.2 = select i1 %or.cond397, double %call38, double %maxval.2405
  %33 = trunc i64 %indvars.iv472 to i32
  %jj.1.jcol.2 = select i1 %or.cond397, i32 %33, i32 %jcol.2406
  br label %for.inc45

for.inc45:                                        ; preds = %if.then35, %for.body31
  %maxval.3 = phi double [ %maxval.2405, %for.body31 ], [ %call38.maxval.2, %if.then35 ]
  %jcol.3 = phi i32 [ %jcol.2406, %for.body31 ], [ %jj.1.jcol.2, %if.then35 ]
  %indvars.iv.next473 = add i64 %indvars.iv472, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %34 = trunc i64 %indvars.iv.next473 to i32
  %cmp30 = icmp slt i32 %34, %3
  br i1 %cmp30, label %for.body31, label %if.end232

if.then51:                                        ; preds = %if.then8
  %cmp55428 = icmp sgt i32 %irow, 0
  br i1 %cmp55428, label %for.body56.lr.ph, label %if.then51.for.cond74.preheader_crit_edge

if.then51.for.cond74.preheader_crit_edge:         ; preds = %if.then51
  %.pre512 = load i32* %nD, align 4, !tbaa !3
  br label %for.cond74.preheader

for.body56.lr.ph:                                 ; preds = %if.then51
  %35 = load i32* %nU, align 4, !tbaa !3
  %36 = load i32* %nD, align 4, !tbaa !3
  %add52 = add nsw i32 %35, %36
  %37 = sext i32 %add52 to i64
  %38 = add i32 %add52, %irow
  %39 = add i32 %irow, -1
  %40 = add i32 %add52, -2
  %41 = mul i32 %39, %40
  %42 = add i32 %38, %41
  %43 = zext i32 %39 to i33
  %44 = add i32 %irow, -2
  %45 = zext i32 %44 to i33
  %46 = mul i33 %43, %45
  %47 = lshr i33 %46, 1
  %48 = trunc i33 %47 to i32
  br label %for.body56

for.cond54.for.cond74.preheader_crit_edge:        ; preds = %if.end69
  %49 = add i32 %42, -1
  %50 = sub i32 %49, %48
  br label %for.cond74.preheader

for.cond74.preheader:                             ; preds = %if.then51.for.cond74.preheader_crit_edge, %for.cond54.for.cond74.preheader_crit_edge
  %51 = phi i32 [ %36, %for.cond54.for.cond74.preheader_crit_edge ], [ %.pre512, %if.then51.for.cond74.preheader_crit_edge ]
  %off.2.lcssa = phi i32 [ %50, %for.cond54.for.cond74.preheader_crit_edge ], [ %irow, %if.then51.for.cond74.preheader_crit_edge ]
  %jcol.4.lcssa = phi i32 [ %jcol.5, %for.cond54.for.cond74.preheader_crit_edge ], [ -1, %if.then51.for.cond74.preheader_crit_edge ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond54.for.cond74.preheader_crit_edge ], [ 0.000000e+00, %if.then51.for.cond74.preheader_crit_edge ]
  %cmp75420 = icmp sgt i32 %51, %irow
  br i1 %cmp75420, label %for.body76.lr.ph, label %if.end232

for.body76.lr.ph:                                 ; preds = %for.cond74.preheader
  %52 = sext i32 %off.2.lcssa to i64
  %53 = sext i32 %irow to i64
  br label %for.body76

for.body56:                                       ; preds = %if.end69, %for.body56.lr.ph
  %indvars.iv485 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next486, %if.end69 ]
  %indvars.iv483 = phi i64 [ %37, %for.body56.lr.ph ], [ %indvars.iv.next484, %if.end69 ]
  %off.2432 = phi i32 [ %irow, %for.body56.lr.ph ], [ %add70, %if.end69 ]
  %jcol.4430 = phi i32 [ -1, %for.body56.lr.ph ], [ %jcol.5, %if.end69 ]
  %maxval.4429 = phi double [ 0.000000e+00, %for.body56.lr.ph ], [ %maxval.5, %if.end69 ]
  %indvars.iv.next484 = add i64 %indvars.iv483, -1
  %arrayidx58 = getelementptr inbounds i32* %colmark, i64 %indvars.iv485
  %54 = load i32* %arrayidx58, align 4, !tbaa !3
  %cmp59 = icmp eq i32 %54, %tag
  br i1 %cmp59, label %if.then60, label %if.end69

if.then60:                                        ; preds = %for.body56
  %idxprom61 = sext i32 %off.2432 to i64
  %arrayidx62 = getelementptr inbounds double* %call6, i64 %idxprom61
  %55 = load double* %arrayidx62, align 8, !tbaa !4
  %call63 = call double @fabs(double %55) #7
  %cmp64 = icmp eq i32 %jcol.4430, -1
  %cmp66 = fcmp olt double %maxval.4429, %call63
  %or.cond398 = or i1 %cmp64, %cmp66
  %call63.maxval.4 = select i1 %or.cond398, double %call63, double %maxval.4429
  %56 = trunc i64 %indvars.iv485 to i32
  %jj.2.jcol.4 = select i1 %or.cond398, i32 %56, i32 %jcol.4430
  br label %if.end69

if.end69:                                         ; preds = %if.then60, %for.body56
  %maxval.5 = phi double [ %maxval.4429, %for.body56 ], [ %call63.maxval.4, %if.then60 ]
  %jcol.5 = phi i32 [ %jcol.4430, %for.body56 ], [ %jj.2.jcol.4, %if.then60 ]
  %57 = trunc i64 %indvars.iv.next484 to i32
  %add70 = add nsw i32 %57, %off.2432
  %indvars.iv.next486 = add i64 %indvars.iv485, 1
  %lftr.wideiv487 = trunc i64 %indvars.iv.next486 to i32
  %exitcond488 = icmp eq i32 %lftr.wideiv487, %irow
  br i1 %exitcond488, label %for.cond54.for.cond74.preheader_crit_edge, label %for.body56

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc90
  %indvars.iv481 = phi i64 [ %53, %for.body76.lr.ph ], [ %indvars.iv.next482, %for.inc90 ]
  %indvars.iv479 = phi i64 [ %52, %for.body76.lr.ph ], [ %indvars.iv.next480, %for.inc90 ]
  %jcol.6422 = phi i32 [ %jcol.4.lcssa, %for.body76.lr.ph ], [ %jcol.7, %for.inc90 ]
  %maxval.6421 = phi double [ %maxval.4.lcssa, %for.body76.lr.ph ], [ %maxval.7, %for.inc90 ]
  %arrayidx78 = getelementptr inbounds i32* %colmark, i64 %indvars.iv481
  %58 = load i32* %arrayidx78, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %58, %tag
  br i1 %cmp79, label %if.then80, label %for.inc90

if.then80:                                        ; preds = %for.body76
  %arrayidx82 = getelementptr inbounds double* %call6, i64 %indvars.iv479
  %59 = load double* %arrayidx82, align 8, !tbaa !4
  %call83 = call double @fabs(double %59) #7
  %cmp84 = icmp eq i32 %jcol.6422, -1
  %cmp86 = fcmp olt double %maxval.6421, %call83
  %or.cond399 = or i1 %cmp84, %cmp86
  %call83.maxval.6 = select i1 %or.cond399, double %call83, double %maxval.6421
  %60 = trunc i64 %indvars.iv481 to i32
  %jj.3.jcol.6 = select i1 %or.cond399, i32 %60, i32 %jcol.6422
  br label %for.inc90

for.inc90:                                        ; preds = %if.then80, %for.body76
  %maxval.7 = phi double [ %maxval.6421, %for.body76 ], [ %call83.maxval.6, %if.then80 ]
  %jcol.7 = phi i32 [ %jcol.6422, %for.body76 ], [ %jj.3.jcol.6, %if.then80 ]
  %indvars.iv.next482 = add i64 %indvars.iv481, 1
  %indvars.iv.next480 = add i64 %indvars.iv479, 1
  %61 = trunc i64 %indvars.iv.next482 to i32
  %cmp75 = icmp slt i32 %61, %51
  br i1 %cmp75, label %for.body76, label %if.end232

if.else94:                                        ; preds = %if.then8
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([91 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval, i32 %2) #5
  call void @exit(i32 -1) #6
  unreachable

if.then102:                                       ; preds = %if.end
  %symflag103 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %63 = load i32* %symflag103, align 4, !tbaa !3
  switch i32 %63, label %if.else224 [
    i32 2, label %if.then105
    i32 0, label %if.then170
    i32 1, label %if.then170
  ]

if.then105:                                       ; preds = %if.then102
  %64 = load i32* %nD, align 4, !tbaa !3
  %65 = load i32* %nL, align 4, !tbaa !3
  %add106 = xor i32 %irow, -1
  %sub107 = add i32 %64, %add106
  %sub108 = add i32 %sub107, %65
  %cmp114445 = icmp sgt i32 %irow, 0
  br i1 %cmp114445, label %for.body115.lr.ph, label %for.cond139.preheader

for.body115.lr.ph:                                ; preds = %if.then105
  %66 = load i32* %nU, align 4, !tbaa !3
  %67 = add i32 %65, %66
  %68 = shl i32 %64, 1
  %69 = add i32 %67, %68
  %70 = add i32 %69, -1
  %71 = sext i32 %70 to i64
  %72 = add i32 %irow, -1
  %73 = add i32 %69, -3
  %74 = mul i32 %72, %73
  %75 = add i32 %66, %74
  %76 = mul i32 %64, 3
  %77 = add i32 %75, %76
  %78 = shl i32 %65, 1
  %79 = add i32 %77, %78
  %80 = add i32 %79, -2
  %81 = add i32 %irow, -2
  %82 = mul i32 %72, %81
  %83 = and i32 %82, -2
  br label %for.body115

for.cond113.for.cond139.preheader_crit_edge:      ; preds = %if.end133
  %84 = sub i32 %80, %irow
  %85 = sub i32 %84, %83
  %.pre = load i32* %nD, align 4, !tbaa !3
  br label %for.cond139.preheader

for.cond139.preheader:                            ; preds = %for.cond113.for.cond139.preheader_crit_edge, %if.then105
  %86 = phi i32 [ %.pre, %for.cond113.for.cond139.preheader_crit_edge ], [ %64, %if.then105 ]
  %off.4.lcssa = phi i32 [ %85, %for.cond113.for.cond139.preheader_crit_edge ], [ %sub108, %if.then105 ]
  %jcol.8.lcssa = phi i32 [ %jcol.9, %for.cond113.for.cond139.preheader_crit_edge ], [ -1, %if.then105 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond113.for.cond139.preheader_crit_edge ], [ 0.000000e+00, %if.then105 ]
  %cmp140438 = icmp sgt i32 %86, %irow
  br i1 %cmp140438, label %for.body141.lr.ph, label %if.end232

for.body141.lr.ph:                                ; preds = %for.cond139.preheader
  %87 = sext i32 %off.4.lcssa to i64
  %88 = sext i32 %irow to i64
  br label %for.body141

for.body115:                                      ; preds = %if.end133, %for.body115.lr.ph
  %indvars.iv496 = phi i64 [ 0, %for.body115.lr.ph ], [ %indvars.iv.next497, %if.end133 ]
  %indvars.iv493 = phi i64 [ %71, %for.body115.lr.ph ], [ %indvars.iv.next494, %if.end133 ]
  %off.4449 = phi i32 [ %sub108, %for.body115.lr.ph ], [ %add134, %if.end133 ]
  %jcol.8447 = phi i32 [ -1, %for.body115.lr.ph ], [ %jcol.9, %if.end133 ]
  %maxval.8446 = phi double [ 0.000000e+00, %for.body115.lr.ph ], [ %maxval.9, %if.end133 ]
  %arrayidx117 = getelementptr inbounds i32* %colmark, i64 %indvars.iv496
  %89 = load i32* %arrayidx117, align 4, !tbaa !3
  %cmp118 = icmp eq i32 %89, %tag
  br i1 %cmp118, label %if.then119, label %if.end133

if.then119:                                       ; preds = %for.body115
  %mul120 = shl nsw i32 %off.4449, 1
  %idxprom121 = sext i32 %mul120 to i64
  %arrayidx122 = getelementptr inbounds double* %call6, i64 %idxprom121
  %90 = load double* %arrayidx122, align 8, !tbaa !4
  %add124393 = or i32 %mul120, 1
  %idxprom125 = sext i32 %add124393 to i64
  %arrayidx126 = getelementptr inbounds double* %call6, i64 %idxprom125
  %91 = load double* %arrayidx126, align 8, !tbaa !4
  %call127 = call double @Zabs(double %90, double %91) #5
  %cmp128 = icmp eq i32 %jcol.8447, -1
  %cmp130 = fcmp olt double %maxval.8446, %call127
  %or.cond400 = or i1 %cmp128, %cmp130
  %call127.maxval.8 = select i1 %or.cond400, double %call127, double %maxval.8446
  %92 = trunc i64 %indvars.iv496 to i32
  %jj.4.jcol.8 = select i1 %or.cond400, i32 %92, i32 %jcol.8447
  br label %if.end133

if.end133:                                        ; preds = %if.then119, %for.body115
  %maxval.9 = phi double [ %maxval.8446, %for.body115 ], [ %call127.maxval.8, %if.then119 ]
  %jcol.9 = phi i32 [ %jcol.8447, %for.body115 ], [ %jj.4.jcol.8, %if.then119 ]
  %93 = trunc i64 %indvars.iv493 to i32
  %add134 = add nsw i32 %93, %off.4449
  %indvars.iv.next497 = add i64 %indvars.iv496, 1
  %indvars.iv.next494 = add i64 %indvars.iv493, -2
  %lftr.wideiv498 = trunc i64 %indvars.iv.next497 to i32
  %exitcond499 = icmp eq i32 %lftr.wideiv498, %irow
  br i1 %exitcond499, label %for.cond113.for.cond139.preheader_crit_edge, label %for.body115

for.body141:                                      ; preds = %for.body141.lr.ph, %for.inc160
  %94 = phi i32 [ %86, %for.body141.lr.ph ], [ %100, %for.inc160 ]
  %indvars.iv491 = phi i64 [ %88, %for.body141.lr.ph ], [ %indvars.iv.next492, %for.inc160 ]
  %indvars.iv489 = phi i64 [ %87, %for.body141.lr.ph ], [ %indvars.iv.next490, %for.inc160 ]
  %jcol.10440 = phi i32 [ %jcol.8.lcssa, %for.body141.lr.ph ], [ %jcol.11, %for.inc160 ]
  %maxval.10439 = phi double [ %maxval.8.lcssa, %for.body141.lr.ph ], [ %maxval.11, %for.inc160 ]
  %arrayidx143 = getelementptr inbounds i32* %colmark, i64 %indvars.iv491
  %95 = load i32* %arrayidx143, align 4, !tbaa !3
  %cmp144 = icmp eq i32 %95, %tag
  br i1 %cmp144, label %if.then145, label %for.inc160

if.then145:                                       ; preds = %for.body141
  %96 = trunc i64 %indvars.iv489 to i32
  %mul146 = shl nsw i32 %96, 1
  %idxprom147 = sext i32 %mul146 to i64
  %arrayidx148 = getelementptr inbounds double* %call6, i64 %idxprom147
  %97 = load double* %arrayidx148, align 8, !tbaa !4
  %add150392 = or i32 %mul146, 1
  %idxprom151 = sext i32 %add150392 to i64
  %arrayidx152 = getelementptr inbounds double* %call6, i64 %idxprom151
  %98 = load double* %arrayidx152, align 8, !tbaa !4
  %call153 = call double @Zabs(double %97, double %98) #5
  %cmp154 = icmp eq i32 %jcol.10440, -1
  %cmp156 = fcmp olt double %maxval.10439, %call153
  %or.cond401 = or i1 %cmp154, %cmp156
  %call153.maxval.10 = select i1 %or.cond401, double %call153, double %maxval.10439
  %99 = trunc i64 %indvars.iv491 to i32
  %jj.5.jcol.10 = select i1 %or.cond401, i32 %99, i32 %jcol.10440
  %.pre510 = load i32* %nD, align 4, !tbaa !3
  br label %for.inc160

for.inc160:                                       ; preds = %if.then145, %for.body141
  %100 = phi i32 [ %94, %for.body141 ], [ %.pre510, %if.then145 ]
  %maxval.11 = phi double [ %maxval.10439, %for.body141 ], [ %call153.maxval.10, %if.then145 ]
  %jcol.11 = phi i32 [ %jcol.10440, %for.body141 ], [ %jj.5.jcol.10, %if.then145 ]
  %indvars.iv.next492 = add i64 %indvars.iv491, 1
  %indvars.iv.next490 = add i64 %indvars.iv489, 1
  %101 = trunc i64 %indvars.iv.next492 to i32
  %cmp140 = icmp slt i32 %101, %100
  br i1 %cmp140, label %for.body141, label %if.end232

if.then170:                                       ; preds = %if.then102, %if.then102
  %cmp174463 = icmp sgt i32 %irow, 0
  br i1 %cmp174463, label %for.body175.lr.ph, label %for.cond199.preheader

for.body175.lr.ph:                                ; preds = %if.then170
  %102 = load i32* %nU, align 4, !tbaa !3
  %103 = load i32* %nD, align 4, !tbaa !3
  %add171 = add nsw i32 %102, %103
  %104 = sext i32 %add171 to i64
  %105 = add i32 %add171, %irow
  %106 = add i32 %irow, -1
  %107 = add i32 %add171, -2
  %108 = mul i32 %106, %107
  %109 = add i32 %105, %108
  %110 = zext i32 %106 to i33
  %111 = add i32 %irow, -2
  %112 = zext i32 %111 to i33
  %113 = mul i33 %110, %112
  %114 = lshr i33 %113, 1
  %115 = trunc i33 %114 to i32
  br label %for.body175

for.cond173.for.cond199.preheader_crit_edge:      ; preds = %if.end193
  %116 = add i32 %109, -1
  %117 = sub i32 %116, %115
  br label %for.cond199.preheader

for.cond199.preheader:                            ; preds = %if.then170, %for.cond173.for.cond199.preheader_crit_edge
  %off.6.lcssa = phi i32 [ %117, %for.cond173.for.cond199.preheader_crit_edge ], [ %irow, %if.then170 ]
  %jcol.12.lcssa = phi i32 [ %jcol.13, %for.cond173.for.cond199.preheader_crit_edge ], [ -1, %if.then170 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond173.for.cond199.preheader_crit_edge ], [ 0.000000e+00, %if.then170 ]
  %118 = load i32* %nD, align 4, !tbaa !3
  %cmp200455 = icmp sgt i32 %118, %irow
  br i1 %cmp200455, label %for.body201.lr.ph, label %if.end232

for.body201.lr.ph:                                ; preds = %for.cond199.preheader
  %119 = sext i32 %off.6.lcssa to i64
  %120 = sext i32 %irow to i64
  br label %for.body201

for.body175:                                      ; preds = %if.end193, %for.body175.lr.ph
  %indvars.iv506 = phi i64 [ 0, %for.body175.lr.ph ], [ %indvars.iv.next507, %if.end193 ]
  %indvars.iv504 = phi i64 [ %104, %for.body175.lr.ph ], [ %indvars.iv.next505, %if.end193 ]
  %off.6467 = phi i32 [ %irow, %for.body175.lr.ph ], [ %add194, %if.end193 ]
  %jcol.12465 = phi i32 [ -1, %for.body175.lr.ph ], [ %jcol.13, %if.end193 ]
  %maxval.12464 = phi double [ 0.000000e+00, %for.body175.lr.ph ], [ %maxval.13, %if.end193 ]
  %indvars.iv.next505 = add i64 %indvars.iv504, -1
  %arrayidx177 = getelementptr inbounds i32* %colmark, i64 %indvars.iv506
  %121 = load i32* %arrayidx177, align 4, !tbaa !3
  %cmp178 = icmp eq i32 %121, %tag
  br i1 %cmp178, label %if.then179, label %if.end193

if.then179:                                       ; preds = %for.body175
  %mul180 = shl nsw i32 %off.6467, 1
  %idxprom181 = sext i32 %mul180 to i64
  %arrayidx182 = getelementptr inbounds double* %call6, i64 %idxprom181
  %122 = load double* %arrayidx182, align 8, !tbaa !4
  %add184391 = or i32 %mul180, 1
  %idxprom185 = sext i32 %add184391 to i64
  %arrayidx186 = getelementptr inbounds double* %call6, i64 %idxprom185
  %123 = load double* %arrayidx186, align 8, !tbaa !4
  %call187 = call double @Zabs(double %122, double %123) #5
  %cmp188 = icmp eq i32 %jcol.12465, -1
  %cmp190 = fcmp olt double %maxval.12464, %call187
  %or.cond402 = or i1 %cmp188, %cmp190
  %call187.maxval.12 = select i1 %or.cond402, double %call187, double %maxval.12464
  %124 = trunc i64 %indvars.iv506 to i32
  %jj.6.jcol.12 = select i1 %or.cond402, i32 %124, i32 %jcol.12465
  br label %if.end193

if.end193:                                        ; preds = %if.then179, %for.body175
  %maxval.13 = phi double [ %maxval.12464, %for.body175 ], [ %call187.maxval.12, %if.then179 ]
  %jcol.13 = phi i32 [ %jcol.12465, %for.body175 ], [ %jj.6.jcol.12, %if.then179 ]
  %125 = trunc i64 %indvars.iv.next505 to i32
  %add194 = add nsw i32 %125, %off.6467
  %indvars.iv.next507 = add i64 %indvars.iv506, 1
  %lftr.wideiv508 = trunc i64 %indvars.iv.next507 to i32
  %exitcond509 = icmp eq i32 %lftr.wideiv508, %irow
  br i1 %exitcond509, label %for.cond173.for.cond199.preheader_crit_edge, label %for.body175

for.body201:                                      ; preds = %for.body201.lr.ph, %for.inc220
  %126 = phi i32 [ %118, %for.body201.lr.ph ], [ %132, %for.inc220 ]
  %indvars.iv502 = phi i64 [ %120, %for.body201.lr.ph ], [ %indvars.iv.next503, %for.inc220 ]
  %indvars.iv500 = phi i64 [ %119, %for.body201.lr.ph ], [ %indvars.iv.next501, %for.inc220 ]
  %jcol.14457 = phi i32 [ %jcol.12.lcssa, %for.body201.lr.ph ], [ %jcol.15, %for.inc220 ]
  %maxval.14456 = phi double [ %maxval.12.lcssa, %for.body201.lr.ph ], [ %maxval.15, %for.inc220 ]
  %arrayidx203 = getelementptr inbounds i32* %colmark, i64 %indvars.iv502
  %127 = load i32* %arrayidx203, align 4, !tbaa !3
  %cmp204 = icmp eq i32 %127, %tag
  br i1 %cmp204, label %if.then205, label %for.inc220

if.then205:                                       ; preds = %for.body201
  %128 = trunc i64 %indvars.iv500 to i32
  %mul206 = shl nsw i32 %128, 1
  %idxprom207 = sext i32 %mul206 to i64
  %arrayidx208 = getelementptr inbounds double* %call6, i64 %idxprom207
  %129 = load double* %arrayidx208, align 8, !tbaa !4
  %add210390 = or i32 %mul206, 1
  %idxprom211 = sext i32 %add210390 to i64
  %arrayidx212 = getelementptr inbounds double* %call6, i64 %idxprom211
  %130 = load double* %arrayidx212, align 8, !tbaa !4
  %call213 = call double @Zabs(double %129, double %130) #5
  %cmp214 = icmp eq i32 %jcol.14457, -1
  %cmp216 = fcmp olt double %maxval.14456, %call213
  %or.cond403 = or i1 %cmp214, %cmp216
  %call213.maxval.14 = select i1 %or.cond403, double %call213, double %maxval.14456
  %131 = trunc i64 %indvars.iv502 to i32
  %jj.7.jcol.14 = select i1 %or.cond403, i32 %131, i32 %jcol.14457
  %.pre511 = load i32* %nD, align 4, !tbaa !3
  br label %for.inc220

for.inc220:                                       ; preds = %if.then205, %for.body201
  %132 = phi i32 [ %126, %for.body201 ], [ %.pre511, %if.then205 ]
  %maxval.15 = phi double [ %maxval.14456, %for.body201 ], [ %call213.maxval.14, %if.then205 ]
  %jcol.15 = phi i32 [ %jcol.14457, %for.body201 ], [ %jj.7.jcol.14, %if.then205 ]
  %indvars.iv.next503 = add i64 %indvars.iv502, 1
  %indvars.iv.next501 = add i64 %indvars.iv500, 1
  %133 = trunc i64 %indvars.iv.next503 to i32
  %cmp200 = icmp slt i32 %133, %132
  br i1 %cmp200, label %for.body201, label %if.end232

if.else224:                                       ; preds = %if.then102
  %134 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([94 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval, i32 %63) #5
  call void @exit(i32 -1) #6
  unreachable

if.else229:                                       ; preds = %if.end
  %135 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([103 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end232:                                        ; preds = %for.cond199.preheader, %for.inc220, %for.cond139.preheader, %for.inc160, %for.cond74.preheader, %for.inc90, %for.cond29.preheader, %for.inc45
  %maxval.16 = phi double [ %maxval.0.lcssa, %for.cond29.preheader ], [ %maxval.3, %for.inc45 ], [ %maxval.4.lcssa, %for.cond74.preheader ], [ %maxval.7, %for.inc90 ], [ %maxval.8.lcssa, %for.cond139.preheader ], [ %maxval.11, %for.inc160 ], [ %maxval.12.lcssa, %for.cond199.preheader ], [ %maxval.15, %for.inc220 ]
  %jcol.16 = phi i32 [ %jcol.0.lcssa, %for.cond29.preheader ], [ %jcol.3, %for.inc45 ], [ %jcol.4.lcssa, %for.cond74.preheader ], [ %jcol.7, %for.inc90 ], [ %jcol.8.lcssa, %for.cond139.preheader ], [ %jcol.11, %for.inc160 ], [ %jcol.12.lcssa, %for.cond199.preheader ], [ %jcol.15, %for.inc220 ]
  store double %maxval.16, double* %pmaxval, align 8, !tbaa !4
  ret i32 %jcol.16
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInColumn11(%struct._Chv* %chv, i32 %jcol, i32* %rowmark, i32 %tag, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %jcol, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %rowmark, null
  %or.cond376 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %pmaxval, null
  %or.cond377 = or i1 %or.cond376, %cmp5
  br i1 %or.cond377, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, i32* %rowmark, i32 %tag, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %call6 = call double* @Chv_entries(%struct._Chv* %chv) #5
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else223 [
    i32 1, label %if.then8
    i32 2, label %if.then99
  ]

if.then8:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %2 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %2, label %if.end226 [
    i32 2, label %if.then10
    i32 0, label %if.then50
  ]

if.then10:                                        ; preds = %if.then8
  %3 = load i32* %nD, align 4, !tbaa !3
  %4 = load i32* %nL, align 4, !tbaa !3
  %add = add i32 %jcol, -1
  %add11 = add i32 %add, %3
  %sub = add i32 %add11, %4
  %cmp15392 = icmp sgt i32 %jcol, 0
  br i1 %cmp15392, label %for.body.lr.ph, label %for.cond29.preheader

for.body.lr.ph:                                   ; preds = %if.then10
  %5 = load i32* %nU, align 4, !tbaa !3
  %6 = add i32 %4, %5
  %7 = shl i32 %3, 1
  %8 = add i32 %6, %7
  %9 = add i32 %8, -3
  %10 = sext i32 %9 to i64
  %11 = add i32 %5, %jcol
  %12 = add i32 %8, -5
  %13 = mul i32 %add, %12
  %14 = add i32 %11, %13
  %15 = mul i32 %3, 3
  %16 = add i32 %14, %15
  %17 = shl i32 %4, 1
  %18 = add i32 %16, %17
  %19 = add i32 %jcol, -2
  %20 = mul i32 %add, %19
  %21 = and i32 %20, -2
  br label %for.body

for.cond.for.cond29.preheader_crit_edge:          ; preds = %if.end26
  %22 = add i32 %18, -4
  %23 = sub i32 %22, %21
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.cond.for.cond29.preheader_crit_edge, %if.then10
  %off.0.lcssa = phi i32 [ %23, %for.cond.for.cond29.preheader_crit_edge ], [ %sub, %if.then10 ]
  %irow.0.lcssa = phi i32 [ %irow.1, %for.cond.for.cond29.preheader_crit_edge ], [ -1, %if.then10 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond29.preheader_crit_edge ], [ 0.000000e+00, %if.then10 ]
  %cmp30386 = icmp sgt i32 %3, %jcol
  br i1 %cmp30386, label %for.body31.lr.ph, label %if.end226

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %24 = sext i32 %off.0.lcssa to i64
  %25 = sext i32 %jcol to i64
  br label %for.body31

for.body:                                         ; preds = %if.end26, %for.body.lr.ph
  %indvars.iv459 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next460, %if.end26 ]
  %indvars.iv456 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next457, %if.end26 ]
  %off.0396 = phi i32 [ %sub, %for.body.lr.ph ], [ %add27, %if.end26 ]
  %irow.0394 = phi i32 [ -1, %for.body.lr.ph ], [ %irow.1, %if.end26 ]
  %maxval.0393 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %if.end26 ]
  %arrayidx = getelementptr inbounds i32* %rowmark, i64 %indvars.iv459
  %26 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %26, %tag
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %for.body
  %idxprom18 = sext i32 %off.0396 to i64
  %arrayidx19 = getelementptr inbounds double* %call6, i64 %idxprom18
  %27 = load double* %arrayidx19, align 8, !tbaa !4
  %call20 = call double @fabs(double %27) #7
  %cmp21 = icmp eq i32 %irow.0394, -1
  %cmp23 = fcmp olt double %maxval.0393, %call20
  %or.cond378 = or i1 %cmp21, %cmp23
  %call20.maxval.0 = select i1 %or.cond378, double %call20, double %maxval.0393
  %28 = trunc i64 %indvars.iv459 to i32
  %ii.0.irow.0 = select i1 %or.cond378, i32 %28, i32 %irow.0394
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %for.body
  %maxval.1 = phi double [ %maxval.0393, %for.body ], [ %call20.maxval.0, %if.then17 ]
  %irow.1 = phi i32 [ %irow.0394, %for.body ], [ %ii.0.irow.0, %if.then17 ]
  %29 = trunc i64 %indvars.iv456 to i32
  %add27 = add nsw i32 %29, %off.0396
  %indvars.iv.next460 = add i64 %indvars.iv459, 1
  %indvars.iv.next457 = add i64 %indvars.iv456, -2
  %lftr.wideiv = trunc i64 %indvars.iv.next460 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %jcol
  br i1 %exitcond, label %for.cond.for.cond29.preheader_crit_edge, label %for.body

for.body31:                                       ; preds = %for.body31.lr.ph, %for.inc45
  %indvars.iv454 = phi i64 [ %25, %for.body31.lr.ph ], [ %indvars.iv.next455, %for.inc45 ]
  %indvars.iv = phi i64 [ %24, %for.body31.lr.ph ], [ %indvars.iv.next, %for.inc45 ]
  %irow.2388 = phi i32 [ %irow.0.lcssa, %for.body31.lr.ph ], [ %irow.3, %for.inc45 ]
  %maxval.2387 = phi double [ %maxval.0.lcssa, %for.body31.lr.ph ], [ %maxval.3, %for.inc45 ]
  %arrayidx33 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv454
  %30 = load i32* %arrayidx33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %30, %tag
  br i1 %cmp34, label %if.then35, label %for.inc45

if.then35:                                        ; preds = %for.body31
  %arrayidx37 = getelementptr inbounds double* %call6, i64 %indvars.iv
  %31 = load double* %arrayidx37, align 8, !tbaa !4
  %call38 = call double @fabs(double %31) #7
  %cmp39 = icmp eq i32 %irow.2388, -1
  %cmp41 = fcmp olt double %maxval.2387, %call38
  %or.cond379 = or i1 %cmp39, %cmp41
  %call38.maxval.2 = select i1 %or.cond379, double %call38, double %maxval.2387
  %32 = trunc i64 %indvars.iv454 to i32
  %ii.1.irow.2 = select i1 %or.cond379, i32 %32, i32 %irow.2388
  br label %for.inc45

for.inc45:                                        ; preds = %if.then35, %for.body31
  %maxval.3 = phi double [ %maxval.2387, %for.body31 ], [ %call38.maxval.2, %if.then35 ]
  %irow.3 = phi i32 [ %irow.2388, %for.body31 ], [ %ii.1.irow.2, %if.then35 ]
  %indvars.iv.next455 = add i64 %indvars.iv454, 1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %33 = trunc i64 %indvars.iv.next455 to i32
  %cmp30 = icmp slt i32 %33, %3
  br i1 %cmp30, label %for.body31, label %if.end226

if.then50:                                        ; preds = %if.then8
  %cmp54410 = icmp sgt i32 %jcol, 0
  br i1 %cmp54410, label %for.body55.lr.ph, label %if.then50.for.cond74.preheader_crit_edge

if.then50.for.cond74.preheader_crit_edge:         ; preds = %if.then50
  %.pre494 = load i32* %nD, align 4, !tbaa !3
  br label %for.cond74.preheader

for.body55.lr.ph:                                 ; preds = %if.then50
  %34 = load i32* %nU, align 4, !tbaa !3
  %35 = load i32* %nD, align 4, !tbaa !3
  %add51 = add nsw i32 %34, %35
  %36 = sext i32 %add51 to i64
  %37 = add i32 %add51, %jcol
  %38 = add i32 %jcol, -1
  %39 = add i32 %add51, -2
  %40 = mul i32 %38, %39
  %41 = add i32 %37, %40
  %42 = zext i32 %38 to i33
  %43 = add i32 %jcol, -2
  %44 = zext i32 %43 to i33
  %45 = mul i33 %42, %44
  %46 = lshr i33 %45, 1
  %47 = trunc i33 %46 to i32
  br label %for.body55

for.cond53.for.cond74.preheader_crit_edge:        ; preds = %if.end68
  %48 = add i32 %41, -1
  %49 = sub i32 %48, %47
  br label %for.cond74.preheader

for.cond74.preheader:                             ; preds = %if.then50.for.cond74.preheader_crit_edge, %for.cond53.for.cond74.preheader_crit_edge
  %50 = phi i32 [ %35, %for.cond53.for.cond74.preheader_crit_edge ], [ %.pre494, %if.then50.for.cond74.preheader_crit_edge ]
  %off.2.lcssa = phi i32 [ %49, %for.cond53.for.cond74.preheader_crit_edge ], [ %jcol, %if.then50.for.cond74.preheader_crit_edge ]
  %irow.4.lcssa = phi i32 [ %irow.5, %for.cond53.for.cond74.preheader_crit_edge ], [ -1, %if.then50.for.cond74.preheader_crit_edge ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond53.for.cond74.preheader_crit_edge ], [ 0.000000e+00, %if.then50.for.cond74.preheader_crit_edge ]
  %cmp75402 = icmp sgt i32 %50, %jcol
  br i1 %cmp75402, label %for.body76.lr.ph, label %if.end226

for.body76.lr.ph:                                 ; preds = %for.cond74.preheader
  %51 = sext i32 %off.2.lcssa to i64
  %52 = sext i32 %jcol to i64
  br label %for.body76

for.body55:                                       ; preds = %if.end68, %for.body55.lr.ph
  %indvars.iv467 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next468, %if.end68 ]
  %indvars.iv465 = phi i64 [ %36, %for.body55.lr.ph ], [ %indvars.iv.next466, %if.end68 ]
  %off.2414 = phi i32 [ %jcol, %for.body55.lr.ph ], [ %add69, %if.end68 ]
  %irow.4412 = phi i32 [ -1, %for.body55.lr.ph ], [ %irow.5, %if.end68 ]
  %maxval.4411 = phi double [ 0.000000e+00, %for.body55.lr.ph ], [ %maxval.5, %if.end68 ]
  %indvars.iv.next466 = add i64 %indvars.iv465, -1
  %arrayidx57 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv467
  %53 = load i32* %arrayidx57, align 4, !tbaa !3
  %cmp58 = icmp eq i32 %53, %tag
  br i1 %cmp58, label %if.then59, label %if.end68

if.then59:                                        ; preds = %for.body55
  %idxprom60 = sext i32 %off.2414 to i64
  %arrayidx61 = getelementptr inbounds double* %call6, i64 %idxprom60
  %54 = load double* %arrayidx61, align 8, !tbaa !4
  %call62 = call double @fabs(double %54) #7
  %cmp63 = icmp eq i32 %irow.4412, -1
  %cmp65 = fcmp olt double %maxval.4411, %call62
  %or.cond380 = or i1 %cmp63, %cmp65
  %call62.maxval.4 = select i1 %or.cond380, double %call62, double %maxval.4411
  %55 = trunc i64 %indvars.iv467 to i32
  %ii.2.irow.4 = select i1 %or.cond380, i32 %55, i32 %irow.4412
  br label %if.end68

if.end68:                                         ; preds = %if.then59, %for.body55
  %maxval.5 = phi double [ %maxval.4411, %for.body55 ], [ %call62.maxval.4, %if.then59 ]
  %irow.5 = phi i32 [ %irow.4412, %for.body55 ], [ %ii.2.irow.4, %if.then59 ]
  %56 = trunc i64 %indvars.iv.next466 to i32
  %add69 = add nsw i32 %56, %off.2414
  %indvars.iv.next468 = add i64 %indvars.iv467, 1
  %lftr.wideiv469 = trunc i64 %indvars.iv.next468 to i32
  %exitcond470 = icmp eq i32 %lftr.wideiv469, %jcol
  br i1 %exitcond470, label %for.cond53.for.cond74.preheader_crit_edge, label %for.body55

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc90
  %indvars.iv463 = phi i64 [ %52, %for.body76.lr.ph ], [ %indvars.iv.next464, %for.inc90 ]
  %indvars.iv461 = phi i64 [ %51, %for.body76.lr.ph ], [ %indvars.iv.next462, %for.inc90 ]
  %irow.6404 = phi i32 [ %irow.4.lcssa, %for.body76.lr.ph ], [ %irow.7, %for.inc90 ]
  %maxval.6403 = phi double [ %maxval.4.lcssa, %for.body76.lr.ph ], [ %maxval.7, %for.inc90 ]
  %arrayidx78 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv463
  %57 = load i32* %arrayidx78, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %57, %tag
  br i1 %cmp79, label %if.then80, label %for.inc90

if.then80:                                        ; preds = %for.body76
  %arrayidx82 = getelementptr inbounds double* %call6, i64 %indvars.iv461
  %58 = load double* %arrayidx82, align 8, !tbaa !4
  %call83 = call double @fabs(double %58) #7
  %cmp84 = icmp eq i32 %irow.6404, -1
  %cmp86 = fcmp olt double %maxval.6403, %call83
  %or.cond381 = or i1 %cmp84, %cmp86
  %call83.maxval.6 = select i1 %or.cond381, double %call83, double %maxval.6403
  %59 = trunc i64 %indvars.iv463 to i32
  %ii.3.irow.6 = select i1 %or.cond381, i32 %59, i32 %irow.6404
  br label %for.inc90

for.inc90:                                        ; preds = %if.then80, %for.body76
  %maxval.7 = phi double [ %maxval.6403, %for.body76 ], [ %call83.maxval.6, %if.then80 ]
  %irow.7 = phi i32 [ %irow.6404, %for.body76 ], [ %ii.3.irow.6, %if.then80 ]
  %indvars.iv.next464 = add i64 %indvars.iv463, 1
  %indvars.iv.next462 = add i64 %indvars.iv461, 1
  %60 = trunc i64 %indvars.iv.next464 to i32
  %cmp75 = icmp slt i32 %60, %50
  br i1 %cmp75, label %for.body76, label %if.end226

if.then99:                                        ; preds = %if.end
  %symflag100 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %61 = load i32* %symflag100, align 4, !tbaa !3
  switch i32 %61, label %if.end226 [
    i32 2, label %if.then102
    i32 0, label %if.then167
    i32 1, label %if.then167
  ]

if.then102:                                       ; preds = %if.then99
  %62 = load i32* %nD, align 4, !tbaa !3
  %63 = load i32* %nL, align 4, !tbaa !3
  %add103 = add i32 %jcol, -1
  %add104 = add i32 %add103, %62
  %sub105 = add i32 %add104, %63
  %cmp111427 = icmp sgt i32 %jcol, 0
  br i1 %cmp111427, label %for.body112.lr.ph, label %for.cond136.preheader

for.body112.lr.ph:                                ; preds = %if.then102
  %64 = load i32* %nU, align 4, !tbaa !3
  %65 = add i32 %63, %64
  %66 = shl i32 %62, 1
  %67 = add i32 %65, %66
  %68 = add i32 %67, -3
  %69 = sext i32 %68 to i64
  %70 = add i32 %64, %jcol
  %71 = add i32 %67, -5
  %72 = mul i32 %add103, %71
  %73 = add i32 %70, %72
  %74 = mul i32 %62, 3
  %75 = add i32 %73, %74
  %76 = shl i32 %63, 1
  %77 = add i32 %75, %76
  %78 = add i32 %jcol, -2
  %79 = mul i32 %add103, %78
  %80 = and i32 %79, -2
  br label %for.body112

for.cond110.for.cond136.preheader_crit_edge:      ; preds = %if.end130
  %81 = add i32 %77, -4
  %82 = sub i32 %81, %80
  %.pre = load i32* %nD, align 4, !tbaa !3
  br label %for.cond136.preheader

for.cond136.preheader:                            ; preds = %for.cond110.for.cond136.preheader_crit_edge, %if.then102
  %83 = phi i32 [ %.pre, %for.cond110.for.cond136.preheader_crit_edge ], [ %62, %if.then102 ]
  %off.4.lcssa = phi i32 [ %82, %for.cond110.for.cond136.preheader_crit_edge ], [ %sub105, %if.then102 ]
  %irow.8.lcssa = phi i32 [ %irow.9, %for.cond110.for.cond136.preheader_crit_edge ], [ -1, %if.then102 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond110.for.cond136.preheader_crit_edge ], [ 0.000000e+00, %if.then102 ]
  %cmp137420 = icmp sgt i32 %83, %jcol
  br i1 %cmp137420, label %for.body138.lr.ph, label %if.end226

for.body138.lr.ph:                                ; preds = %for.cond136.preheader
  %84 = sext i32 %off.4.lcssa to i64
  %85 = sext i32 %jcol to i64
  br label %for.body138

for.body112:                                      ; preds = %if.end130, %for.body112.lr.ph
  %indvars.iv478 = phi i64 [ 0, %for.body112.lr.ph ], [ %indvars.iv.next479, %if.end130 ]
  %indvars.iv475 = phi i64 [ %69, %for.body112.lr.ph ], [ %indvars.iv.next476, %if.end130 ]
  %off.4431 = phi i32 [ %sub105, %for.body112.lr.ph ], [ %add131, %if.end130 ]
  %irow.8429 = phi i32 [ -1, %for.body112.lr.ph ], [ %irow.9, %if.end130 ]
  %maxval.8428 = phi double [ 0.000000e+00, %for.body112.lr.ph ], [ %maxval.9, %if.end130 ]
  %arrayidx114 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv478
  %86 = load i32* %arrayidx114, align 4, !tbaa !3
  %cmp115 = icmp eq i32 %86, %tag
  br i1 %cmp115, label %if.then116, label %if.end130

if.then116:                                       ; preds = %for.body112
  %mul117 = shl nsw i32 %off.4431, 1
  %idxprom118 = sext i32 %mul117 to i64
  %arrayidx119 = getelementptr inbounds double* %call6, i64 %idxprom118
  %87 = load double* %arrayidx119, align 8, !tbaa !4
  %add121375 = or i32 %mul117, 1
  %idxprom122 = sext i32 %add121375 to i64
  %arrayidx123 = getelementptr inbounds double* %call6, i64 %idxprom122
  %88 = load double* %arrayidx123, align 8, !tbaa !4
  %call124 = call double @Zabs(double %87, double %88) #5
  %cmp125 = icmp eq i32 %irow.8429, -1
  %cmp127 = fcmp olt double %maxval.8428, %call124
  %or.cond382 = or i1 %cmp125, %cmp127
  %call124.maxval.8 = select i1 %or.cond382, double %call124, double %maxval.8428
  %89 = trunc i64 %indvars.iv478 to i32
  %ii.4.irow.8 = select i1 %or.cond382, i32 %89, i32 %irow.8429
  br label %if.end130

if.end130:                                        ; preds = %if.then116, %for.body112
  %maxval.9 = phi double [ %maxval.8428, %for.body112 ], [ %call124.maxval.8, %if.then116 ]
  %irow.9 = phi i32 [ %irow.8429, %for.body112 ], [ %ii.4.irow.8, %if.then116 ]
  %90 = trunc i64 %indvars.iv475 to i32
  %add131 = add nsw i32 %90, %off.4431
  %indvars.iv.next479 = add i64 %indvars.iv478, 1
  %indvars.iv.next476 = add i64 %indvars.iv475, -2
  %lftr.wideiv480 = trunc i64 %indvars.iv.next479 to i32
  %exitcond481 = icmp eq i32 %lftr.wideiv480, %jcol
  br i1 %exitcond481, label %for.cond110.for.cond136.preheader_crit_edge, label %for.body112

for.body138:                                      ; preds = %for.body138.lr.ph, %for.inc157
  %91 = phi i32 [ %83, %for.body138.lr.ph ], [ %97, %for.inc157 ]
  %indvars.iv473 = phi i64 [ %85, %for.body138.lr.ph ], [ %indvars.iv.next474, %for.inc157 ]
  %indvars.iv471 = phi i64 [ %84, %for.body138.lr.ph ], [ %indvars.iv.next472, %for.inc157 ]
  %irow.10422 = phi i32 [ %irow.8.lcssa, %for.body138.lr.ph ], [ %irow.11, %for.inc157 ]
  %maxval.10421 = phi double [ %maxval.8.lcssa, %for.body138.lr.ph ], [ %maxval.11, %for.inc157 ]
  %arrayidx140 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv473
  %92 = load i32* %arrayidx140, align 4, !tbaa !3
  %cmp141 = icmp eq i32 %92, %tag
  br i1 %cmp141, label %if.then142, label %for.inc157

if.then142:                                       ; preds = %for.body138
  %93 = trunc i64 %indvars.iv471 to i32
  %mul143 = shl nsw i32 %93, 1
  %idxprom144 = sext i32 %mul143 to i64
  %arrayidx145 = getelementptr inbounds double* %call6, i64 %idxprom144
  %94 = load double* %arrayidx145, align 8, !tbaa !4
  %add147374 = or i32 %mul143, 1
  %idxprom148 = sext i32 %add147374 to i64
  %arrayidx149 = getelementptr inbounds double* %call6, i64 %idxprom148
  %95 = load double* %arrayidx149, align 8, !tbaa !4
  %call150 = call double @Zabs(double %94, double %95) #5
  %cmp151 = icmp eq i32 %irow.10422, -1
  %cmp153 = fcmp olt double %maxval.10421, %call150
  %or.cond383 = or i1 %cmp151, %cmp153
  %call150.maxval.10 = select i1 %or.cond383, double %call150, double %maxval.10421
  %96 = trunc i64 %indvars.iv473 to i32
  %ii.5.irow.10 = select i1 %or.cond383, i32 %96, i32 %irow.10422
  %.pre492 = load i32* %nD, align 4, !tbaa !3
  br label %for.inc157

for.inc157:                                       ; preds = %if.then142, %for.body138
  %97 = phi i32 [ %91, %for.body138 ], [ %.pre492, %if.then142 ]
  %maxval.11 = phi double [ %maxval.10421, %for.body138 ], [ %call150.maxval.10, %if.then142 ]
  %irow.11 = phi i32 [ %irow.10422, %for.body138 ], [ %ii.5.irow.10, %if.then142 ]
  %indvars.iv.next474 = add i64 %indvars.iv473, 1
  %indvars.iv.next472 = add i64 %indvars.iv471, -1
  %98 = trunc i64 %indvars.iv.next474 to i32
  %cmp137 = icmp slt i32 %98, %97
  br i1 %cmp137, label %for.body138, label %if.end226

if.then167:                                       ; preds = %if.then99, %if.then99
  %cmp171445 = icmp sgt i32 %jcol, 0
  br i1 %cmp171445, label %for.body172.lr.ph, label %for.cond196.preheader

for.body172.lr.ph:                                ; preds = %if.then167
  %99 = load i32* %nU, align 4, !tbaa !3
  %100 = load i32* %nD, align 4, !tbaa !3
  %add168 = add nsw i32 %99, %100
  %101 = sext i32 %add168 to i64
  %102 = add i32 %add168, %jcol
  %103 = add i32 %jcol, -1
  %104 = add i32 %add168, -2
  %105 = mul i32 %103, %104
  %106 = add i32 %102, %105
  %107 = zext i32 %103 to i33
  %108 = add i32 %jcol, -2
  %109 = zext i32 %108 to i33
  %110 = mul i33 %107, %109
  %111 = lshr i33 %110, 1
  %112 = trunc i33 %111 to i32
  br label %for.body172

for.cond170.for.cond196.preheader_crit_edge:      ; preds = %if.end190
  %113 = add i32 %106, -1
  %114 = sub i32 %113, %112
  br label %for.cond196.preheader

for.cond196.preheader:                            ; preds = %if.then167, %for.cond170.for.cond196.preheader_crit_edge
  %off.6.lcssa = phi i32 [ %114, %for.cond170.for.cond196.preheader_crit_edge ], [ %jcol, %if.then167 ]
  %irow.12.lcssa = phi i32 [ %irow.13, %for.cond170.for.cond196.preheader_crit_edge ], [ -1, %if.then167 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond170.for.cond196.preheader_crit_edge ], [ 0.000000e+00, %if.then167 ]
  %115 = load i32* %nD, align 4, !tbaa !3
  %cmp197437 = icmp sgt i32 %115, %jcol
  br i1 %cmp197437, label %for.body198.lr.ph, label %if.end226

for.body198.lr.ph:                                ; preds = %for.cond196.preheader
  %116 = sext i32 %off.6.lcssa to i64
  %117 = sext i32 %jcol to i64
  br label %for.body198

for.body172:                                      ; preds = %if.end190, %for.body172.lr.ph
  %indvars.iv488 = phi i64 [ 0, %for.body172.lr.ph ], [ %indvars.iv.next489, %if.end190 ]
  %indvars.iv486 = phi i64 [ %101, %for.body172.lr.ph ], [ %indvars.iv.next487, %if.end190 ]
  %off.6449 = phi i32 [ %jcol, %for.body172.lr.ph ], [ %add191, %if.end190 ]
  %irow.12447 = phi i32 [ -1, %for.body172.lr.ph ], [ %irow.13, %if.end190 ]
  %maxval.12446 = phi double [ 0.000000e+00, %for.body172.lr.ph ], [ %maxval.13, %if.end190 ]
  %indvars.iv.next487 = add i64 %indvars.iv486, -1
  %arrayidx174 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv488
  %118 = load i32* %arrayidx174, align 4, !tbaa !3
  %cmp175 = icmp eq i32 %118, %tag
  br i1 %cmp175, label %if.then176, label %if.end190

if.then176:                                       ; preds = %for.body172
  %mul177 = shl nsw i32 %off.6449, 1
  %idxprom178 = sext i32 %mul177 to i64
  %arrayidx179 = getelementptr inbounds double* %call6, i64 %idxprom178
  %119 = load double* %arrayidx179, align 8, !tbaa !4
  %add181373 = or i32 %mul177, 1
  %idxprom182 = sext i32 %add181373 to i64
  %arrayidx183 = getelementptr inbounds double* %call6, i64 %idxprom182
  %120 = load double* %arrayidx183, align 8, !tbaa !4
  %call184 = call double @Zabs(double %119, double %120) #5
  %cmp185 = icmp eq i32 %irow.12447, -1
  %cmp187 = fcmp olt double %maxval.12446, %call184
  %or.cond384 = or i1 %cmp185, %cmp187
  %call184.maxval.12 = select i1 %or.cond384, double %call184, double %maxval.12446
  %121 = trunc i64 %indvars.iv488 to i32
  %ii.6.irow.12 = select i1 %or.cond384, i32 %121, i32 %irow.12447
  br label %if.end190

if.end190:                                        ; preds = %if.then176, %for.body172
  %maxval.13 = phi double [ %maxval.12446, %for.body172 ], [ %call184.maxval.12, %if.then176 ]
  %irow.13 = phi i32 [ %irow.12447, %for.body172 ], [ %ii.6.irow.12, %if.then176 ]
  %122 = trunc i64 %indvars.iv.next487 to i32
  %add191 = add nsw i32 %122, %off.6449
  %indvars.iv.next489 = add i64 %indvars.iv488, 1
  %lftr.wideiv490 = trunc i64 %indvars.iv.next489 to i32
  %exitcond491 = icmp eq i32 %lftr.wideiv490, %jcol
  br i1 %exitcond491, label %for.cond170.for.cond196.preheader_crit_edge, label %for.body172

for.body198:                                      ; preds = %for.body198.lr.ph, %for.inc217
  %123 = phi i32 [ %115, %for.body198.lr.ph ], [ %129, %for.inc217 ]
  %indvars.iv484 = phi i64 [ %117, %for.body198.lr.ph ], [ %indvars.iv.next485, %for.inc217 ]
  %indvars.iv482 = phi i64 [ %116, %for.body198.lr.ph ], [ %indvars.iv.next483, %for.inc217 ]
  %irow.14439 = phi i32 [ %irow.12.lcssa, %for.body198.lr.ph ], [ %irow.15, %for.inc217 ]
  %maxval.14438 = phi double [ %maxval.12.lcssa, %for.body198.lr.ph ], [ %maxval.15, %for.inc217 ]
  %arrayidx200 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv484
  %124 = load i32* %arrayidx200, align 4, !tbaa !3
  %cmp201 = icmp eq i32 %124, %tag
  br i1 %cmp201, label %if.then202, label %for.inc217

if.then202:                                       ; preds = %for.body198
  %125 = trunc i64 %indvars.iv482 to i32
  %mul203 = shl nsw i32 %125, 1
  %idxprom204 = sext i32 %mul203 to i64
  %arrayidx205 = getelementptr inbounds double* %call6, i64 %idxprom204
  %126 = load double* %arrayidx205, align 8, !tbaa !4
  %add207372 = or i32 %mul203, 1
  %idxprom208 = sext i32 %add207372 to i64
  %arrayidx209 = getelementptr inbounds double* %call6, i64 %idxprom208
  %127 = load double* %arrayidx209, align 8, !tbaa !4
  %call210 = call double @Zabs(double %126, double %127) #5
  %cmp211 = icmp eq i32 %irow.14439, -1
  %cmp213 = fcmp olt double %maxval.14438, %call210
  %or.cond385 = or i1 %cmp211, %cmp213
  %call210.maxval.14 = select i1 %or.cond385, double %call210, double %maxval.14438
  %128 = trunc i64 %indvars.iv484 to i32
  %ii.7.irow.14 = select i1 %or.cond385, i32 %128, i32 %irow.14439
  %.pre493 = load i32* %nD, align 4, !tbaa !3
  br label %for.inc217

for.inc217:                                       ; preds = %if.then202, %for.body198
  %129 = phi i32 [ %123, %for.body198 ], [ %.pre493, %if.then202 ]
  %maxval.15 = phi double [ %maxval.14438, %for.body198 ], [ %call210.maxval.14, %if.then202 ]
  %irow.15 = phi i32 [ %irow.14439, %for.body198 ], [ %ii.7.irow.14, %if.then202 ]
  %indvars.iv.next485 = add i64 %indvars.iv484, 1
  %indvars.iv.next483 = add i64 %indvars.iv482, 1
  %130 = trunc i64 %indvars.iv.next485 to i32
  %cmp197 = icmp slt i32 %130, %129
  br i1 %cmp197, label %for.body198, label %if.end226

if.else223:                                       ; preds = %if.end
  %131 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([106 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, i32* %rowmark, i32 %tag, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end226:                                        ; preds = %for.cond196.preheader, %for.inc217, %for.cond136.preheader, %for.inc157, %for.cond74.preheader, %for.inc90, %for.cond29.preheader, %for.inc45, %if.then99, %if.then8
  %maxval.16 = phi double [ 0.000000e+00, %if.then8 ], [ 0.000000e+00, %if.then99 ], [ %maxval.0.lcssa, %for.cond29.preheader ], [ %maxval.3, %for.inc45 ], [ %maxval.4.lcssa, %for.cond74.preheader ], [ %maxval.7, %for.inc90 ], [ %maxval.8.lcssa, %for.cond136.preheader ], [ %maxval.11, %for.inc157 ], [ %maxval.12.lcssa, %for.cond196.preheader ], [ %maxval.15, %for.inc217 ]
  %irow.16 = phi i32 [ -1, %if.then8 ], [ -1, %if.then99 ], [ %irow.0.lcssa, %for.cond29.preheader ], [ %irow.3, %for.inc45 ], [ %irow.4.lcssa, %for.cond74.preheader ], [ %irow.7, %for.inc90 ], [ %irow.8.lcssa, %for.cond136.preheader ], [ %irow.11, %for.inc157 ], [ %irow.12.lcssa, %for.cond196.preheader ], [ %irow.15, %for.inc217 ]
  store double %maxval.16, double* %pmaxval, align 8, !tbaa !4
  ret i32 %irow.16
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %irow, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %pmaxval, null
  %or.cond313 = or i1 %or.cond, %cmp3
  br i1 %or.cond313, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #5
  %1 = load i32* %nD, align 4, !tbaa !3
  %2 = load i32* %nU, align 4, !tbaa !3
  %add = add i32 %2, %1
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.else182 [
    i32 1, label %if.then6
    i32 2, label %if.then78
  ]

if.then6:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %4 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %4, label %if.end186 [
    i32 2, label %if.then8
    i32 0, label %for.cond43.preheader
  ]

for.cond43.preheader:                             ; preds = %if.then6
  %cmp44346 = icmp sgt i32 %irow, 0
  br i1 %cmp44346, label %for.body45.lr.ph, label %for.cond58.preheader

for.body45.lr.ph:                                 ; preds = %for.cond43.preheader
  %5 = sext i32 %add to i64
  %6 = add i32 %add, %irow
  %7 = add i32 %irow, -1
  %8 = add i32 %add, -2
  %9 = mul i32 %7, %8
  %10 = add i32 %6, %9
  %11 = zext i32 %7 to i33
  %12 = add i32 %irow, -2
  %13 = zext i32 %12 to i33
  %14 = mul i33 %11, %13
  %15 = lshr i33 %14, 1
  %16 = trunc i33 %15 to i32
  br label %for.body45

if.then8:                                         ; preds = %if.then6
  %17 = load i32* %nL, align 4, !tbaa !3
  %add9 = xor i32 %irow, -1
  %sub = add i32 %1, %add9
  %sub10 = add i32 %sub, %17
  %cmp14328 = icmp sgt i32 %irow, 0
  br i1 %cmp14328, label %for.body.lr.ph, label %for.cond23.preheader

for.body.lr.ph:                                   ; preds = %if.then8
  %18 = add i32 %2, %17
  %19 = shl i32 %1, 1
  %20 = add i32 %18, %19
  %21 = add i32 %20, -1
  %22 = sext i32 %21 to i64
  %23 = add i32 %irow, -1
  %24 = add i32 %20, -3
  %25 = mul i32 %23, %24
  %26 = add i32 %2, %25
  %27 = mul i32 %1, 3
  %28 = add i32 %26, %27
  %29 = shl i32 %17, 1
  %30 = add i32 %28, %29
  %31 = add i32 %30, -2
  %32 = add i32 %irow, -2
  %33 = mul i32 %23, %32
  %34 = and i32 %33, -2
  br label %for.body

for.cond.for.cond23.preheader_crit_edge:          ; preds = %for.body
  %35 = sub i32 %31, %irow
  %36 = sub i32 %35, %34
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond.for.cond23.preheader_crit_edge, %if.then8
  %off.0.lcssa = phi i32 [ %36, %for.cond.for.cond23.preheader_crit_edge ], [ %sub10, %if.then8 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond23.preheader_crit_edge ], [ 0.000000e+00, %if.then8 ]
  %jcol.0.lcssa = phi i32 [ %jcol.1, %for.cond.for.cond23.preheader_crit_edge ], [ -1, %if.then8 ]
  %cmp24322 = icmp sgt i32 %add, %irow
  br i1 %cmp24322, label %for.body25.lr.ph, label %if.end186

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %37 = sext i32 %off.0.lcssa to i64
  br label %for.body25

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv390 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next391, %for.body ]
  %off.0332 = phi i32 [ %sub10, %for.body.lr.ph ], [ %add21, %for.body ]
  %maxval.0331 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %for.body ]
  %jj.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %jcol.0329 = phi i32 [ -1, %for.body.lr.ph ], [ %jcol.1, %for.body ]
  %idxprom = sext i32 %off.0332 to i64
  %arrayidx = getelementptr inbounds double* %call4, i64 %idxprom
  %38 = load double* %arrayidx, align 8, !tbaa !4
  %call15 = call double @fabs(double %38) #7
  %cmp16 = icmp eq i32 %jcol.0329, -1
  %cmp18 = fcmp olt double %maxval.0331, %call15
  %or.cond314 = or i1 %cmp16, %cmp18
  %jcol.1 = select i1 %or.cond314, i32 %jj.0330, i32 %jcol.0329
  %maxval.1 = select i1 %or.cond314, double %call15, double %maxval.0331
  %39 = trunc i64 %indvars.iv390 to i32
  %add21 = add nsw i32 %39, %off.0332
  %inc = add nsw i32 %jj.0330, 1
  %indvars.iv.next391 = add i64 %indvars.iv390, -2
  %exitcond393 = icmp eq i32 %inc, %irow
  br i1 %exitcond393, label %for.cond.for.cond23.preheader_crit_edge, label %for.body

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv = phi i64 [ %37, %for.body25.lr.ph ], [ %indvars.iv.next, %for.body25 ]
  %maxval.2325 = phi double [ %maxval.0.lcssa, %for.body25.lr.ph ], [ %maxval.3, %for.body25 ]
  %jj.1324 = phi i32 [ %irow, %for.body25.lr.ph ], [ %inc35, %for.body25 ]
  %jcol.2323 = phi i32 [ %jcol.0.lcssa, %for.body25.lr.ph ], [ %jcol.3, %for.body25 ]
  %arrayidx27 = getelementptr inbounds double* %call4, i64 %indvars.iv
  %40 = load double* %arrayidx27, align 8, !tbaa !4
  %call28 = call double @fabs(double %40) #7
  %cmp29 = icmp eq i32 %jcol.2323, -1
  %cmp31 = fcmp olt double %maxval.2325, %call28
  %or.cond315 = or i1 %cmp29, %cmp31
  %jcol.3 = select i1 %or.cond315, i32 %jj.1324, i32 %jcol.2323
  %maxval.3 = select i1 %or.cond315, double %call28, double %maxval.2325
  %inc35 = add nsw i32 %jj.1324, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %inc35, %add
  br i1 %exitcond, label %if.end186, label %for.body25

for.cond43.for.cond58.preheader_crit_edge:        ; preds = %for.body45
  %41 = add i32 %10, -1
  %42 = sub i32 %41, %16
  br label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %for.cond43.for.cond58.preheader_crit_edge, %for.cond43.preheader
  %off.2.lcssa = phi i32 [ %42, %for.cond43.for.cond58.preheader_crit_edge ], [ %irow, %for.cond43.preheader ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond43.for.cond58.preheader_crit_edge ], [ 0.000000e+00, %for.cond43.preheader ]
  %jcol.4.lcssa = phi i32 [ %jcol.5, %for.cond43.for.cond58.preheader_crit_edge ], [ -1, %for.cond43.preheader ]
  %cmp59338 = icmp sgt i32 %add, %irow
  br i1 %cmp59338, label %for.body60.lr.ph, label %if.end186

for.body60.lr.ph:                                 ; preds = %for.cond58.preheader
  %43 = sext i32 %off.2.lcssa to i64
  br label %for.body60

for.body45:                                       ; preds = %for.body45, %for.body45.lr.ph
  %indvars.iv397 = phi i64 [ %5, %for.body45.lr.ph ], [ %indvars.iv.next398, %for.body45 ]
  %off.2350 = phi i32 [ %irow, %for.body45.lr.ph ], [ %add54, %for.body45 ]
  %maxval.4349 = phi double [ 0.000000e+00, %for.body45.lr.ph ], [ %maxval.5, %for.body45 ]
  %jj.2348 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc56, %for.body45 ]
  %jcol.4347 = phi i32 [ -1, %for.body45.lr.ph ], [ %jcol.5, %for.body45 ]
  %indvars.iv.next398 = add i64 %indvars.iv397, -1
  %idxprom46 = sext i32 %off.2350 to i64
  %arrayidx47 = getelementptr inbounds double* %call4, i64 %idxprom46
  %44 = load double* %arrayidx47, align 8, !tbaa !4
  %call48 = call double @fabs(double %44) #7
  %cmp49 = icmp eq i32 %jcol.4347, -1
  %cmp51 = fcmp olt double %maxval.4349, %call48
  %or.cond316 = or i1 %cmp49, %cmp51
  %jcol.5 = select i1 %or.cond316, i32 %jj.2348, i32 %jcol.4347
  %maxval.5 = select i1 %or.cond316, double %call48, double %maxval.4349
  %45 = trunc i64 %indvars.iv.next398 to i32
  %add54 = add nsw i32 %45, %off.2350
  %inc56 = add nsw i32 %jj.2348, 1
  %exitcond399 = icmp eq i32 %inc56, %irow
  br i1 %exitcond399, label %for.cond43.for.cond58.preheader_crit_edge, label %for.body45

for.body60:                                       ; preds = %for.body60, %for.body60.lr.ph
  %indvars.iv394 = phi i64 [ %43, %for.body60.lr.ph ], [ %indvars.iv.next395, %for.body60 ]
  %maxval.6341 = phi double [ %maxval.4.lcssa, %for.body60.lr.ph ], [ %maxval.7, %for.body60 ]
  %jj.3340 = phi i32 [ %irow, %for.body60.lr.ph ], [ %inc70, %for.body60 ]
  %jcol.6339 = phi i32 [ %jcol.4.lcssa, %for.body60.lr.ph ], [ %jcol.7, %for.body60 ]
  %arrayidx62 = getelementptr inbounds double* %call4, i64 %indvars.iv394
  %46 = load double* %arrayidx62, align 8, !tbaa !4
  %call63 = call double @fabs(double %46) #7
  %cmp64 = icmp eq i32 %jcol.6339, -1
  %cmp66 = fcmp olt double %maxval.6341, %call63
  %or.cond317 = or i1 %cmp64, %cmp66
  %jcol.7 = select i1 %or.cond317, i32 %jj.3340, i32 %jcol.6339
  %maxval.7 = select i1 %or.cond317, double %call63, double %maxval.6341
  %inc70 = add nsw i32 %jj.3340, 1
  %indvars.iv.next395 = add i64 %indvars.iv394, 1
  %exitcond396 = icmp eq i32 %inc70, %add
  br i1 %exitcond396, label %if.end186, label %for.body60

if.then78:                                        ; preds = %if.end
  %symflag79 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %47 = load i32* %symflag79, align 4, !tbaa !3
  switch i32 %47, label %if.end186 [
    i32 2, label %if.then81
    i32 0, label %if.then136
    i32 1, label %if.then136
  ]

if.then81:                                        ; preds = %if.then78
  %48 = load i32* %nL, align 4, !tbaa !3
  %add82 = xor i32 %irow, -1
  %sub83 = add i32 %1, %add82
  %sub84 = add i32 %sub83, %48
  %cmp90363 = icmp sgt i32 %irow, 0
  br i1 %cmp90363, label %for.body91.lr.ph, label %for.cond110.preheader

for.body91.lr.ph:                                 ; preds = %if.then81
  %49 = add i32 %2, %48
  %50 = shl i32 %1, 1
  %51 = add i32 %49, %50
  %52 = add i32 %51, -1
  %53 = sext i32 %52 to i64
  %54 = add i32 %irow, -1
  %55 = add i32 %51, -3
  %56 = mul i32 %54, %55
  %57 = add i32 %2, %56
  %58 = mul i32 %1, 3
  %59 = add i32 %57, %58
  %60 = shl i32 %48, 1
  %61 = add i32 %59, %60
  %62 = add i32 %61, -2
  %63 = add i32 %irow, -2
  %64 = mul i32 %54, %63
  %65 = and i32 %64, -2
  br label %for.body91

for.cond89.for.cond110.preheader_crit_edge:       ; preds = %for.body91
  %66 = sub i32 %62, %irow
  %67 = sub i32 %66, %65
  br label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %for.cond89.for.cond110.preheader_crit_edge, %if.then81
  %off.4.lcssa = phi i32 [ %67, %for.cond89.for.cond110.preheader_crit_edge ], [ %sub84, %if.then81 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond89.for.cond110.preheader_crit_edge ], [ 0.000000e+00, %if.then81 ]
  %jcol.8.lcssa = phi i32 [ %jcol.9, %for.cond89.for.cond110.preheader_crit_edge ], [ -1, %if.then81 ]
  %cmp111356 = icmp sgt i32 %add, %irow
  br i1 %cmp111356, label %for.body112.lr.ph, label %if.end186

for.body112.lr.ph:                                ; preds = %for.cond110.preheader
  %68 = sext i32 %off.4.lcssa to i64
  br label %for.body112

for.body91:                                       ; preds = %for.body91, %for.body91.lr.ph
  %indvars.iv403 = phi i64 [ %53, %for.body91.lr.ph ], [ %indvars.iv.next404, %for.body91 ]
  %off.4367 = phi i32 [ %sub84, %for.body91.lr.ph ], [ %add105, %for.body91 ]
  %maxval.8366 = phi double [ 0.000000e+00, %for.body91.lr.ph ], [ %maxval.9, %for.body91 ]
  %jj.4365 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc108, %for.body91 ]
  %jcol.8364 = phi i32 [ -1, %for.body91.lr.ph ], [ %jcol.9, %for.body91 ]
  %mul92 = shl nsw i32 %off.4367, 1
  %idxprom93 = sext i32 %mul92 to i64
  %arrayidx94 = getelementptr inbounds double* %call4, i64 %idxprom93
  %69 = load double* %arrayidx94, align 8, !tbaa !4
  %add96312 = or i32 %mul92, 1
  %idxprom97 = sext i32 %add96312 to i64
  %arrayidx98 = getelementptr inbounds double* %call4, i64 %idxprom97
  %70 = load double* %arrayidx98, align 8, !tbaa !4
  %call99 = call double @Zabs(double %69, double %70) #5
  %cmp100 = icmp eq i32 %jcol.8364, -1
  %cmp102 = fcmp olt double %maxval.8366, %call99
  %or.cond318 = or i1 %cmp100, %cmp102
  %jcol.9 = select i1 %or.cond318, i32 %jj.4365, i32 %jcol.8364
  %maxval.9 = select i1 %or.cond318, double %call99, double %maxval.8366
  %71 = trunc i64 %indvars.iv403 to i32
  %add105 = add nsw i32 %71, %off.4367
  %inc108 = add nsw i32 %jj.4365, 1
  %indvars.iv.next404 = add i64 %indvars.iv403, -2
  %exitcond406 = icmp eq i32 %inc108, %irow
  br i1 %exitcond406, label %for.cond89.for.cond110.preheader_crit_edge, label %for.body91

for.body112:                                      ; preds = %for.body112, %for.body112.lr.ph
  %indvars.iv400 = phi i64 [ %68, %for.body112.lr.ph ], [ %indvars.iv.next401, %for.body112 ]
  %maxval.10359 = phi double [ %maxval.8.lcssa, %for.body112.lr.ph ], [ %maxval.11, %for.body112 ]
  %jj.5358 = phi i32 [ %irow, %for.body112.lr.ph ], [ %inc127, %for.body112 ]
  %jcol.10357 = phi i32 [ %jcol.8.lcssa, %for.body112.lr.ph ], [ %jcol.11, %for.body112 ]
  %72 = trunc i64 %indvars.iv400 to i32
  %mul113 = shl nsw i32 %72, 1
  %idxprom114 = sext i32 %mul113 to i64
  %arrayidx115 = getelementptr inbounds double* %call4, i64 %idxprom114
  %73 = load double* %arrayidx115, align 8, !tbaa !4
  %add117311 = or i32 %mul113, 1
  %idxprom118 = sext i32 %add117311 to i64
  %arrayidx119 = getelementptr inbounds double* %call4, i64 %idxprom118
  %74 = load double* %arrayidx119, align 8, !tbaa !4
  %call120 = call double @Zabs(double %73, double %74) #5
  %cmp121 = icmp eq i32 %jcol.10357, -1
  %cmp123 = fcmp olt double %maxval.10359, %call120
  %or.cond319 = or i1 %cmp121, %cmp123
  %jcol.11 = select i1 %or.cond319, i32 %jj.5358, i32 %jcol.10357
  %maxval.11 = select i1 %or.cond319, double %call120, double %maxval.10359
  %inc127 = add nsw i32 %jj.5358, 1
  %indvars.iv.next401 = add i64 %indvars.iv400, 1
  %exitcond402 = icmp eq i32 %inc127, %add
  br i1 %exitcond402, label %if.end186, label %for.body112

if.then136:                                       ; preds = %if.then78, %if.then78
  %cmp140381 = icmp sgt i32 %irow, 0
  br i1 %cmp140381, label %for.body141.lr.ph, label %for.cond160.preheader

for.body141.lr.ph:                                ; preds = %if.then136
  %75 = sext i32 %add to i64
  %76 = add i32 %add, %irow
  %77 = add i32 %irow, -1
  %78 = add i32 %add, -2
  %79 = mul i32 %77, %78
  %80 = add i32 %76, %79
  %81 = zext i32 %77 to i33
  %82 = add i32 %irow, -2
  %83 = zext i32 %82 to i33
  %84 = mul i33 %81, %83
  %85 = lshr i33 %84, 1
  %86 = trunc i33 %85 to i32
  br label %for.body141

for.cond139.for.cond160.preheader_crit_edge:      ; preds = %for.body141
  %87 = add i32 %80, -1
  %88 = sub i32 %87, %86
  br label %for.cond160.preheader

for.cond160.preheader:                            ; preds = %for.cond139.for.cond160.preheader_crit_edge, %if.then136
  %off.6.lcssa = phi i32 [ %88, %for.cond139.for.cond160.preheader_crit_edge ], [ %irow, %if.then136 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond139.for.cond160.preheader_crit_edge ], [ 0.000000e+00, %if.then136 ]
  %jcol.12.lcssa = phi i32 [ %jcol.13, %for.cond139.for.cond160.preheader_crit_edge ], [ -1, %if.then136 ]
  %cmp161373 = icmp sgt i32 %add, %irow
  br i1 %cmp161373, label %for.body162.lr.ph, label %if.end186

for.body162.lr.ph:                                ; preds = %for.cond160.preheader
  %89 = sext i32 %off.6.lcssa to i64
  br label %for.body162

for.body141:                                      ; preds = %for.body141, %for.body141.lr.ph
  %indvars.iv410 = phi i64 [ %75, %for.body141.lr.ph ], [ %indvars.iv.next411, %for.body141 ]
  %off.6385 = phi i32 [ %irow, %for.body141.lr.ph ], [ %add155, %for.body141 ]
  %maxval.12384 = phi double [ 0.000000e+00, %for.body141.lr.ph ], [ %maxval.13, %for.body141 ]
  %jj.6383 = phi i32 [ 0, %for.body141.lr.ph ], [ %inc158, %for.body141 ]
  %jcol.12382 = phi i32 [ -1, %for.body141.lr.ph ], [ %jcol.13, %for.body141 ]
  %indvars.iv.next411 = add i64 %indvars.iv410, -1
  %mul142 = shl nsw i32 %off.6385, 1
  %idxprom143 = sext i32 %mul142 to i64
  %arrayidx144 = getelementptr inbounds double* %call4, i64 %idxprom143
  %90 = load double* %arrayidx144, align 8, !tbaa !4
  %add146310 = or i32 %mul142, 1
  %idxprom147 = sext i32 %add146310 to i64
  %arrayidx148 = getelementptr inbounds double* %call4, i64 %idxprom147
  %91 = load double* %arrayidx148, align 8, !tbaa !4
  %call149 = call double @Zabs(double %90, double %91) #5
  %cmp150 = icmp eq i32 %jcol.12382, -1
  %cmp152 = fcmp olt double %maxval.12384, %call149
  %or.cond320 = or i1 %cmp150, %cmp152
  %jcol.13 = select i1 %or.cond320, i32 %jj.6383, i32 %jcol.12382
  %maxval.13 = select i1 %or.cond320, double %call149, double %maxval.12384
  %92 = trunc i64 %indvars.iv.next411 to i32
  %add155 = add nsw i32 %92, %off.6385
  %inc158 = add nsw i32 %jj.6383, 1
  %exitcond412 = icmp eq i32 %inc158, %irow
  br i1 %exitcond412, label %for.cond139.for.cond160.preheader_crit_edge, label %for.body141

for.body162:                                      ; preds = %for.body162, %for.body162.lr.ph
  %indvars.iv407 = phi i64 [ %89, %for.body162.lr.ph ], [ %indvars.iv.next408, %for.body162 ]
  %maxval.14376 = phi double [ %maxval.12.lcssa, %for.body162.lr.ph ], [ %maxval.15, %for.body162 ]
  %jj.7375 = phi i32 [ %irow, %for.body162.lr.ph ], [ %inc177, %for.body162 ]
  %jcol.14374 = phi i32 [ %jcol.12.lcssa, %for.body162.lr.ph ], [ %jcol.15, %for.body162 ]
  %93 = trunc i64 %indvars.iv407 to i32
  %mul163 = shl nsw i32 %93, 1
  %idxprom164 = sext i32 %mul163 to i64
  %arrayidx165 = getelementptr inbounds double* %call4, i64 %idxprom164
  %94 = load double* %arrayidx165, align 8, !tbaa !4
  %add167309 = or i32 %mul163, 1
  %idxprom168 = sext i32 %add167309 to i64
  %arrayidx169 = getelementptr inbounds double* %call4, i64 %idxprom168
  %95 = load double* %arrayidx169, align 8, !tbaa !4
  %call170 = call double @Zabs(double %94, double %95) #5
  %cmp171 = icmp eq i32 %jcol.14374, -1
  %cmp173 = fcmp olt double %maxval.14376, %call170
  %or.cond321 = or i1 %cmp171, %cmp173
  %jcol.15 = select i1 %or.cond321, i32 %jj.7375, i32 %jcol.14374
  %maxval.15 = select i1 %or.cond321, double %call170, double %maxval.14376
  %inc177 = add nsw i32 %jj.7375, 1
  %indvars.iv.next408 = add i64 %indvars.iv407, 1
  %exitcond409 = icmp eq i32 %inc177, %add
  br i1 %exitcond409, label %if.end186, label %for.body162

if.else182:                                       ; preds = %if.end
  %96 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %symflag183 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %97 = load i32* %symflag183, align 4, !tbaa !3
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([99 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, double* %pmaxval, i32 %97) #5
  call void @exit(i32 -1) #6
  unreachable

if.end186:                                        ; preds = %for.cond160.preheader, %for.body162, %for.cond110.preheader, %for.body112, %for.cond58.preheader, %for.body60, %for.cond23.preheader, %for.body25, %if.then78, %if.then6
  %jcol.16 = phi i32 [ -1, %if.then6 ], [ -1, %if.then78 ], [ %jcol.0.lcssa, %for.cond23.preheader ], [ %jcol.3, %for.body25 ], [ %jcol.4.lcssa, %for.cond58.preheader ], [ %jcol.7, %for.body60 ], [ %jcol.8.lcssa, %for.cond110.preheader ], [ %jcol.11, %for.body112 ], [ %jcol.12.lcssa, %for.cond160.preheader ], [ %jcol.15, %for.body162 ]
  %maxval.16 = phi double [ 0.000000e+00, %if.then6 ], [ 0.000000e+00, %if.then78 ], [ %maxval.0.lcssa, %for.cond23.preheader ], [ %maxval.3, %for.body25 ], [ %maxval.4.lcssa, %for.cond58.preheader ], [ %maxval.7, %for.body60 ], [ %maxval.8.lcssa, %for.cond110.preheader ], [ %maxval.11, %for.body112 ], [ %maxval.12.lcssa, %for.cond160.preheader ], [ %maxval.15, %for.body162 ]
  store double %maxval.16, double* %pmaxval, align 8, !tbaa !4
  ret i32 %jcol.16
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInColumn(%struct._Chv* %chv, i32 %jcol, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %jcol, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %pmaxval, null
  %or.cond313 = or i1 %or.cond, %cmp3
  br i1 %or.cond313, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, double* %pmaxval) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #5
  %1 = load i32* %nD, align 4, !tbaa !3
  %2 = load i32* %nL, align 4, !tbaa !3
  %add = add i32 %2, %1
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.else182 [
    i32 1, label %if.then6
    i32 2, label %if.then78
  ]

if.then6:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %4 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %4, label %if.end186 [
    i32 2, label %if.then8
    i32 0, label %if.then39
  ]

if.then8:                                         ; preds = %if.then6
  %add10 = add i32 %jcol, -1
  %sub = add i32 %add10, %add
  %cmp14328 = icmp sgt i32 %jcol, 0
  br i1 %cmp14328, label %for.body.lr.ph, label %for.cond23.preheader

for.body.lr.ph:                                   ; preds = %if.then8
  %5 = load i32* %nU, align 4, !tbaa !3
  %6 = add i32 %2, %5
  %7 = shl i32 %1, 1
  %8 = add i32 %6, %7
  %9 = add i32 %8, -3
  %10 = sext i32 %9 to i64
  %11 = add i32 %5, %jcol
  %12 = add i32 %8, -5
  %13 = mul i32 %add10, %12
  %14 = add i32 %11, %13
  %15 = mul i32 %1, 3
  %16 = add i32 %14, %15
  %17 = shl i32 %2, 1
  %18 = add i32 %16, %17
  %19 = add i32 %jcol, -2
  %20 = mul i32 %add10, %19
  %21 = and i32 %20, -2
  br label %for.body

for.cond.for.cond23.preheader_crit_edge:          ; preds = %for.body
  %22 = add i32 %18, -4
  %23 = sub i32 %22, %21
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond.for.cond23.preheader_crit_edge, %if.then8
  %off.0.lcssa = phi i32 [ %23, %for.cond.for.cond23.preheader_crit_edge ], [ %sub, %if.then8 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond23.preheader_crit_edge ], [ 0.000000e+00, %if.then8 ]
  %irow.0.lcssa = phi i32 [ %irow.1, %for.cond.for.cond23.preheader_crit_edge ], [ -1, %if.then8 ]
  %cmp24322 = icmp sgt i32 %add, %jcol
  br i1 %cmp24322, label %for.body25.lr.ph, label %if.end186

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %24 = sext i32 %off.0.lcssa to i64
  br label %for.body25

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv390 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next391, %for.body ]
  %off.0332 = phi i32 [ %sub, %for.body.lr.ph ], [ %add21, %for.body ]
  %maxval.0331 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %for.body ]
  %ii.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %irow.0329 = phi i32 [ -1, %for.body.lr.ph ], [ %irow.1, %for.body ]
  %idxprom = sext i32 %off.0332 to i64
  %arrayidx = getelementptr inbounds double* %call4, i64 %idxprom
  %25 = load double* %arrayidx, align 8, !tbaa !4
  %call15 = call double @fabs(double %25) #7
  %cmp16 = icmp eq i32 %irow.0329, -1
  %cmp18 = fcmp olt double %maxval.0331, %call15
  %or.cond314 = or i1 %cmp16, %cmp18
  %irow.1 = select i1 %or.cond314, i32 %ii.0330, i32 %irow.0329
  %maxval.1 = select i1 %or.cond314, double %call15, double %maxval.0331
  %26 = trunc i64 %indvars.iv390 to i32
  %add21 = add nsw i32 %26, %off.0332
  %inc = add nsw i32 %ii.0330, 1
  %indvars.iv.next391 = add i64 %indvars.iv390, -2
  %exitcond393 = icmp eq i32 %inc, %jcol
  br i1 %exitcond393, label %for.cond.for.cond23.preheader_crit_edge, label %for.body

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv = phi i64 [ %24, %for.body25.lr.ph ], [ %indvars.iv.next, %for.body25 ]
  %maxval.2325 = phi double [ %maxval.0.lcssa, %for.body25.lr.ph ], [ %maxval.3, %for.body25 ]
  %ii.1324 = phi i32 [ %jcol, %for.body25.lr.ph ], [ %inc35, %for.body25 ]
  %irow.2323 = phi i32 [ %irow.0.lcssa, %for.body25.lr.ph ], [ %irow.3, %for.body25 ]
  %arrayidx27 = getelementptr inbounds double* %call4, i64 %indvars.iv
  %27 = load double* %arrayidx27, align 8, !tbaa !4
  %call28 = call double @fabs(double %27) #7
  %cmp29 = icmp eq i32 %irow.2323, -1
  %cmp31 = fcmp olt double %maxval.2325, %call28
  %or.cond315 = or i1 %cmp29, %cmp31
  %irow.3 = select i1 %or.cond315, i32 %ii.1324, i32 %irow.2323
  %maxval.3 = select i1 %or.cond315, double %call28, double %maxval.2325
  %inc35 = add nsw i32 %ii.1324, 1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond = icmp eq i32 %inc35, %add
  br i1 %exitcond, label %if.end186, label %for.body25

if.then39:                                        ; preds = %if.then6
  %cmp43346 = icmp sgt i32 %jcol, 0
  br i1 %cmp43346, label %for.body44.lr.ph, label %for.cond58.preheader

for.body44.lr.ph:                                 ; preds = %if.then39
  %28 = load i32* %nU, align 4, !tbaa !3
  %add40 = add nsw i32 %28, %1
  %29 = sext i32 %add40 to i64
  %30 = add i32 %add40, %jcol
  %31 = add i32 %jcol, -1
  %32 = add i32 %add40, -2
  %33 = mul i32 %31, %32
  %34 = add i32 %30, %33
  %35 = zext i32 %31 to i33
  %36 = add i32 %jcol, -2
  %37 = zext i32 %36 to i33
  %38 = mul i33 %35, %37
  %39 = lshr i33 %38, 1
  %40 = trunc i33 %39 to i32
  br label %for.body44

for.cond42.for.cond58.preheader_crit_edge:        ; preds = %for.body44
  %41 = add i32 %34, -1
  %42 = sub i32 %41, %40
  br label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %for.cond42.for.cond58.preheader_crit_edge, %if.then39
  %off.2.lcssa = phi i32 [ %42, %for.cond42.for.cond58.preheader_crit_edge ], [ %jcol, %if.then39 ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond42.for.cond58.preheader_crit_edge ], [ 0.000000e+00, %if.then39 ]
  %irow.4.lcssa = phi i32 [ %irow.5, %for.cond42.for.cond58.preheader_crit_edge ], [ -1, %if.then39 ]
  %cmp59338 = icmp sgt i32 %add, %jcol
  br i1 %cmp59338, label %for.body60.lr.ph, label %if.end186

for.body60.lr.ph:                                 ; preds = %for.cond58.preheader
  %43 = sext i32 %off.2.lcssa to i64
  br label %for.body60

for.body44:                                       ; preds = %for.body44, %for.body44.lr.ph
  %indvars.iv397 = phi i64 [ %29, %for.body44.lr.ph ], [ %indvars.iv.next398, %for.body44 ]
  %off.2350 = phi i32 [ %jcol, %for.body44.lr.ph ], [ %add53, %for.body44 ]
  %maxval.4349 = phi double [ 0.000000e+00, %for.body44.lr.ph ], [ %maxval.5, %for.body44 ]
  %ii.2348 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc56, %for.body44 ]
  %irow.4347 = phi i32 [ -1, %for.body44.lr.ph ], [ %irow.5, %for.body44 ]
  %indvars.iv.next398 = add i64 %indvars.iv397, -1
  %idxprom45 = sext i32 %off.2350 to i64
  %arrayidx46 = getelementptr inbounds double* %call4, i64 %idxprom45
  %44 = load double* %arrayidx46, align 8, !tbaa !4
  %call47 = call double @fabs(double %44) #7
  %cmp48 = icmp eq i32 %irow.4347, -1
  %cmp50 = fcmp olt double %maxval.4349, %call47
  %or.cond316 = or i1 %cmp48, %cmp50
  %irow.5 = select i1 %or.cond316, i32 %ii.2348, i32 %irow.4347
  %maxval.5 = select i1 %or.cond316, double %call47, double %maxval.4349
  %45 = trunc i64 %indvars.iv.next398 to i32
  %add53 = add nsw i32 %45, %off.2350
  %inc56 = add nsw i32 %ii.2348, 1
  %exitcond399 = icmp eq i32 %inc56, %jcol
  br i1 %exitcond399, label %for.cond42.for.cond58.preheader_crit_edge, label %for.body44

for.body60:                                       ; preds = %for.body60, %for.body60.lr.ph
  %indvars.iv394 = phi i64 [ %43, %for.body60.lr.ph ], [ %indvars.iv.next395, %for.body60 ]
  %maxval.6341 = phi double [ %maxval.4.lcssa, %for.body60.lr.ph ], [ %maxval.7, %for.body60 ]
  %ii.3340 = phi i32 [ %jcol, %for.body60.lr.ph ], [ %inc70, %for.body60 ]
  %irow.6339 = phi i32 [ %irow.4.lcssa, %for.body60.lr.ph ], [ %irow.7, %for.body60 ]
  %arrayidx62 = getelementptr inbounds double* %call4, i64 %indvars.iv394
  %46 = load double* %arrayidx62, align 8, !tbaa !4
  %call63 = call double @fabs(double %46) #7
  %cmp64 = icmp eq i32 %irow.6339, -1
  %cmp66 = fcmp olt double %maxval.6341, %call63
  %or.cond317 = or i1 %cmp64, %cmp66
  %irow.7 = select i1 %or.cond317, i32 %ii.3340, i32 %irow.6339
  %maxval.7 = select i1 %or.cond317, double %call63, double %maxval.6341
  %inc70 = add nsw i32 %ii.3340, 1
  %indvars.iv.next395 = add i64 %indvars.iv394, 1
  %exitcond396 = icmp eq i32 %inc70, %add
  br i1 %exitcond396, label %if.end186, label %for.body60

if.then78:                                        ; preds = %if.end
  %symflag79 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %47 = load i32* %symflag79, align 4, !tbaa !3
  switch i32 %47, label %if.end186 [
    i32 2, label %if.then81
    i32 0, label %if.then136
    i32 1, label %if.then136
  ]

if.then81:                                        ; preds = %if.then78
  %add83 = add i32 %jcol, -1
  %sub84 = add i32 %add83, %add
  %cmp90363 = icmp sgt i32 %jcol, 0
  br i1 %cmp90363, label %for.body91.lr.ph, label %for.cond110.preheader

for.body91.lr.ph:                                 ; preds = %if.then81
  %48 = load i32* %nU, align 4, !tbaa !3
  %49 = add i32 %2, %48
  %50 = shl i32 %1, 1
  %51 = add i32 %49, %50
  %52 = add i32 %51, -3
  %53 = sext i32 %52 to i64
  %54 = add i32 %48, %jcol
  %55 = add i32 %51, -5
  %56 = mul i32 %add83, %55
  %57 = add i32 %54, %56
  %58 = mul i32 %1, 3
  %59 = add i32 %57, %58
  %60 = shl i32 %2, 1
  %61 = add i32 %59, %60
  %62 = add i32 %jcol, -2
  %63 = mul i32 %add83, %62
  %64 = and i32 %63, -2
  br label %for.body91

for.cond89.for.cond110.preheader_crit_edge:       ; preds = %for.body91
  %65 = add i32 %61, -4
  %66 = sub i32 %65, %64
  br label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %for.cond89.for.cond110.preheader_crit_edge, %if.then81
  %off.4.lcssa = phi i32 [ %66, %for.cond89.for.cond110.preheader_crit_edge ], [ %sub84, %if.then81 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond89.for.cond110.preheader_crit_edge ], [ 0.000000e+00, %if.then81 ]
  %irow.8.lcssa = phi i32 [ %irow.9, %for.cond89.for.cond110.preheader_crit_edge ], [ -1, %if.then81 ]
  %cmp111356 = icmp sgt i32 %add, %jcol
  br i1 %cmp111356, label %for.body112.lr.ph, label %if.end186

for.body112.lr.ph:                                ; preds = %for.cond110.preheader
  %67 = sext i32 %off.4.lcssa to i64
  br label %for.body112

for.body91:                                       ; preds = %for.body91, %for.body91.lr.ph
  %indvars.iv403 = phi i64 [ %53, %for.body91.lr.ph ], [ %indvars.iv.next404, %for.body91 ]
  %off.4367 = phi i32 [ %sub84, %for.body91.lr.ph ], [ %add105, %for.body91 ]
  %maxval.8366 = phi double [ 0.000000e+00, %for.body91.lr.ph ], [ %maxval.9, %for.body91 ]
  %ii.4365 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc108, %for.body91 ]
  %irow.8364 = phi i32 [ -1, %for.body91.lr.ph ], [ %irow.9, %for.body91 ]
  %mul92 = shl nsw i32 %off.4367, 1
  %idxprom93 = sext i32 %mul92 to i64
  %arrayidx94 = getelementptr inbounds double* %call4, i64 %idxprom93
  %68 = load double* %arrayidx94, align 8, !tbaa !4
  %add96312 = or i32 %mul92, 1
  %idxprom97 = sext i32 %add96312 to i64
  %arrayidx98 = getelementptr inbounds double* %call4, i64 %idxprom97
  %69 = load double* %arrayidx98, align 8, !tbaa !4
  %call99 = call double @Zabs(double %68, double %69) #5
  %cmp100 = icmp eq i32 %irow.8364, -1
  %cmp102 = fcmp olt double %maxval.8366, %call99
  %or.cond318 = or i1 %cmp100, %cmp102
  %irow.9 = select i1 %or.cond318, i32 %ii.4365, i32 %irow.8364
  %maxval.9 = select i1 %or.cond318, double %call99, double %maxval.8366
  %70 = trunc i64 %indvars.iv403 to i32
  %add105 = add nsw i32 %70, %off.4367
  %inc108 = add nsw i32 %ii.4365, 1
  %indvars.iv.next404 = add i64 %indvars.iv403, -2
  %exitcond406 = icmp eq i32 %inc108, %jcol
  br i1 %exitcond406, label %for.cond89.for.cond110.preheader_crit_edge, label %for.body91

for.body112:                                      ; preds = %for.body112, %for.body112.lr.ph
  %indvars.iv400 = phi i64 [ %67, %for.body112.lr.ph ], [ %indvars.iv.next401, %for.body112 ]
  %maxval.10359 = phi double [ %maxval.8.lcssa, %for.body112.lr.ph ], [ %maxval.11, %for.body112 ]
  %ii.5358 = phi i32 [ %jcol, %for.body112.lr.ph ], [ %inc127, %for.body112 ]
  %irow.10357 = phi i32 [ %irow.8.lcssa, %for.body112.lr.ph ], [ %irow.11, %for.body112 ]
  %71 = trunc i64 %indvars.iv400 to i32
  %mul113 = shl nsw i32 %71, 1
  %idxprom114 = sext i32 %mul113 to i64
  %arrayidx115 = getelementptr inbounds double* %call4, i64 %idxprom114
  %72 = load double* %arrayidx115, align 8, !tbaa !4
  %add117311 = or i32 %mul113, 1
  %idxprom118 = sext i32 %add117311 to i64
  %arrayidx119 = getelementptr inbounds double* %call4, i64 %idxprom118
  %73 = load double* %arrayidx119, align 8, !tbaa !4
  %call120 = call double @Zabs(double %72, double %73) #5
  %cmp121 = icmp eq i32 %irow.10357, -1
  %cmp123 = fcmp olt double %maxval.10359, %call120
  %or.cond319 = or i1 %cmp121, %cmp123
  %irow.11 = select i1 %or.cond319, i32 %ii.5358, i32 %irow.10357
  %maxval.11 = select i1 %or.cond319, double %call120, double %maxval.10359
  %inc127 = add nsw i32 %ii.5358, 1
  %indvars.iv.next401 = add i64 %indvars.iv400, -1
  %exitcond402 = icmp eq i32 %inc127, %add
  br i1 %exitcond402, label %if.end186, label %for.body112

if.then136:                                       ; preds = %if.then78, %if.then78
  %cmp140381 = icmp sgt i32 %jcol, 0
  br i1 %cmp140381, label %for.body141.lr.ph, label %for.cond160.preheader

for.body141.lr.ph:                                ; preds = %if.then136
  %74 = load i32* %nU, align 4, !tbaa !3
  %add137 = add nsw i32 %74, %1
  %75 = sext i32 %add137 to i64
  %76 = add i32 %add137, %jcol
  %77 = add i32 %jcol, -1
  %78 = add i32 %add137, -2
  %79 = mul i32 %77, %78
  %80 = add i32 %76, %79
  %81 = zext i32 %77 to i33
  %82 = add i32 %jcol, -2
  %83 = zext i32 %82 to i33
  %84 = mul i33 %81, %83
  %85 = lshr i33 %84, 1
  %86 = trunc i33 %85 to i32
  br label %for.body141

for.cond139.for.cond160.preheader_crit_edge:      ; preds = %for.body141
  %87 = add i32 %80, -1
  %88 = sub i32 %87, %86
  br label %for.cond160.preheader

for.cond160.preheader:                            ; preds = %for.cond139.for.cond160.preheader_crit_edge, %if.then136
  %off.6.lcssa = phi i32 [ %88, %for.cond139.for.cond160.preheader_crit_edge ], [ %jcol, %if.then136 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond139.for.cond160.preheader_crit_edge ], [ 0.000000e+00, %if.then136 ]
  %irow.12.lcssa = phi i32 [ %irow.13, %for.cond139.for.cond160.preheader_crit_edge ], [ -1, %if.then136 ]
  %cmp161373 = icmp sgt i32 %add, %jcol
  br i1 %cmp161373, label %for.body162.lr.ph, label %if.end186

for.body162.lr.ph:                                ; preds = %for.cond160.preheader
  %89 = sext i32 %off.6.lcssa to i64
  br label %for.body162

for.body141:                                      ; preds = %for.body141, %for.body141.lr.ph
  %indvars.iv410 = phi i64 [ %75, %for.body141.lr.ph ], [ %indvars.iv.next411, %for.body141 ]
  %off.6385 = phi i32 [ %jcol, %for.body141.lr.ph ], [ %add155, %for.body141 ]
  %maxval.12384 = phi double [ 0.000000e+00, %for.body141.lr.ph ], [ %maxval.13, %for.body141 ]
  %ii.6383 = phi i32 [ 0, %for.body141.lr.ph ], [ %inc158, %for.body141 ]
  %irow.12382 = phi i32 [ -1, %for.body141.lr.ph ], [ %irow.13, %for.body141 ]
  %indvars.iv.next411 = add i64 %indvars.iv410, -1
  %mul142 = shl nsw i32 %off.6385, 1
  %idxprom143 = sext i32 %mul142 to i64
  %arrayidx144 = getelementptr inbounds double* %call4, i64 %idxprom143
  %90 = load double* %arrayidx144, align 8, !tbaa !4
  %add146310 = or i32 %mul142, 1
  %idxprom147 = sext i32 %add146310 to i64
  %arrayidx148 = getelementptr inbounds double* %call4, i64 %idxprom147
  %91 = load double* %arrayidx148, align 8, !tbaa !4
  %call149 = call double @Zabs(double %90, double %91) #5
  %cmp150 = icmp eq i32 %irow.12382, -1
  %cmp152 = fcmp olt double %maxval.12384, %call149
  %or.cond320 = or i1 %cmp150, %cmp152
  %irow.13 = select i1 %or.cond320, i32 %ii.6383, i32 %irow.12382
  %maxval.13 = select i1 %or.cond320, double %call149, double %maxval.12384
  %92 = trunc i64 %indvars.iv.next411 to i32
  %add155 = add nsw i32 %92, %off.6385
  %inc158 = add nsw i32 %ii.6383, 1
  %exitcond412 = icmp eq i32 %inc158, %jcol
  br i1 %exitcond412, label %for.cond139.for.cond160.preheader_crit_edge, label %for.body141

for.body162:                                      ; preds = %for.body162, %for.body162.lr.ph
  %indvars.iv407 = phi i64 [ %89, %for.body162.lr.ph ], [ %indvars.iv.next408, %for.body162 ]
  %maxval.14376 = phi double [ %maxval.12.lcssa, %for.body162.lr.ph ], [ %maxval.15, %for.body162 ]
  %ii.7375 = phi i32 [ %jcol, %for.body162.lr.ph ], [ %inc177, %for.body162 ]
  %irow.14374 = phi i32 [ %irow.12.lcssa, %for.body162.lr.ph ], [ %irow.15, %for.body162 ]
  %93 = trunc i64 %indvars.iv407 to i32
  %mul163 = shl nsw i32 %93, 1
  %idxprom164 = sext i32 %mul163 to i64
  %arrayidx165 = getelementptr inbounds double* %call4, i64 %idxprom164
  %94 = load double* %arrayidx165, align 8, !tbaa !4
  %add167309 = or i32 %mul163, 1
  %idxprom168 = sext i32 %add167309 to i64
  %arrayidx169 = getelementptr inbounds double* %call4, i64 %idxprom168
  %95 = load double* %arrayidx169, align 8, !tbaa !4
  %call170 = call double @Zabs(double %94, double %95) #5
  %cmp171 = icmp eq i32 %irow.14374, -1
  %cmp173 = fcmp olt double %maxval.14376, %call170
  %or.cond321 = or i1 %cmp171, %cmp173
  %irow.15 = select i1 %or.cond321, i32 %ii.7375, i32 %irow.14374
  %maxval.15 = select i1 %or.cond321, double %call170, double %maxval.14376
  %inc177 = add nsw i32 %ii.7375, 1
  %indvars.iv.next408 = add i64 %indvars.iv407, 1
  %exitcond409 = icmp eq i32 %inc177, %add
  br i1 %exitcond409, label %if.end186, label %for.body162

if.else182:                                       ; preds = %if.end
  %96 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %symflag183 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %97 = load i32* %symflag183, align 4, !tbaa !3
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, double* %pmaxval, i32 %97) #5
  call void @exit(i32 -1) #6
  unreachable

if.end186:                                        ; preds = %for.cond160.preheader, %for.body162, %for.cond110.preheader, %for.body112, %for.cond58.preheader, %for.body60, %for.cond23.preheader, %for.body25, %if.then78, %if.then6
  %irow.16 = phi i32 [ -1, %if.then6 ], [ -1, %if.then78 ], [ %irow.0.lcssa, %for.cond23.preheader ], [ %irow.3, %for.body25 ], [ %irow.4.lcssa, %for.cond58.preheader ], [ %irow.7, %for.body60 ], [ %irow.8.lcssa, %for.cond110.preheader ], [ %irow.11, %for.body112 ], [ %irow.12.lcssa, %for.cond160.preheader ], [ %irow.15, %for.body162 ]
  %maxval.16 = phi double [ 0.000000e+00, %if.then6 ], [ 0.000000e+00, %if.then78 ], [ %maxval.0.lcssa, %for.cond23.preheader ], [ %maxval.3, %for.body25 ], [ %maxval.4.lcssa, %for.cond58.preheader ], [ %maxval.7, %for.body60 ], [ %maxval.8.lcssa, %for.cond110.preheader ], [ %maxval.11, %for.body112 ], [ %maxval.12.lcssa, %for.cond160.preheader ], [ %maxval.15, %for.body162 ]
  store double %maxval.16, double* %pmaxval, align 8, !tbaa !4
  ret i32 %irow.16
}

; Function Attrs: nounwind optsize uwtable
define double @Chv_quasimax(%struct._Chv* %chv, i32* %rowmark, i32* %colmark, i32 %tag, i32* %pirow, i32* %pjcol) #0 {
entry:
  %maxval = alloca double, align 8
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i32* %rowmark, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %colmark, null
  %or.cond75 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %pirow, null
  %or.cond76 = or i1 %or.cond75, %cmp5
  %cmp7 = icmp eq i32* %pjcol, null
  %or.cond77 = or i1 %or.cond76, %cmp7
  br i1 %or.cond77, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i32* %rowmark, i32* %colmark, i32 %tag, i32* %pirow, i32* %pjcol) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %1 = load i32* %symflag, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 2
  br i1 %cmp8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([133 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, i32* %rowmark, i32* %colmark, i32 %tag, i32* %pirow, i32* %pjcol, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end
  %nD13 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %3 = load i32* %nD13, align 4, !tbaa !3
  store i32 -1, i32* %pjcol, align 4, !tbaa !3
  store i32 -1, i32* %pirow, align 4, !tbaa !3
  store double 0.000000e+00, double* %maxval, align 8, !tbaa !4
  %cmp1478 = icmp sgt i32 %3, 0
  br i1 %cmp1478, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp14 = icmp slt i32 %4, %3
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %if.end12, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end12 ]
  %jcol.079 = phi i32 [ %inc, %for.cond ], [ 0, %if.end12 ]
  %arrayidx = getelementptr inbounds i32* %colmark, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %5, %tag
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %jcol.079, 1
  br i1 %cmp15, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %if.end12
  %jcol.0.lcssa = phi i32 [ 0, %if.end12 ], [ %jcol.079, %for.body ], [ %inc, %for.cond ]
  %cmp18 = icmp eq i32 %jcol.0.lcssa, %3
  br i1 %cmp18, label %return, label %if.end20

if.end20:                                         ; preds = %for.end
  %call21 = call i32 @Chv_maxabsInColumn11(%struct._Chv* %chv, i32 %jcol.0.lcssa, i32* %rowmark, i32 %tag, double* %maxval) #8
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %return, label %while.body

while.body:                                       ; preds = %if.end20, %if.end28
  %jcol.1 = phi i32 [ %call25, %if.end28 ], [ %jcol.0.lcssa, %if.end20 ]
  %irow.0 = phi i32 [ %call29, %if.end28 ], [ %call21, %if.end20 ]
  %call25 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %irow.0, i32* %colmark, i32 %tag, double* %maxval) #8
  %cmp26 = icmp eq i32 %call25, %jcol.1
  br i1 %cmp26, label %while.end, label %if.end28

if.end28:                                         ; preds = %while.body
  %call29 = call i32 @Chv_maxabsInColumn11(%struct._Chv* %chv, i32 %call25, i32* %rowmark, i32 %tag, double* %maxval) #8
  %cmp30 = icmp eq i32 %call29, %irow.0
  br i1 %cmp30, label %while.end, label %while.body

while.end:                                        ; preds = %if.end28, %while.body
  %jcol.2 = phi i32 [ %jcol.1, %while.body ], [ %call25, %if.end28 ]
  store i32 %jcol.2, i32* %pjcol, align 4, !tbaa !3
  store i32 %irow.0, i32* %pirow, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end20, %for.end, %while.end
  %retval.0 = load double* %maxval, align 8
  ret double %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_fastBunchParlettPivot(%struct._Chv* %chv, i32* %mark, i32 %tag, i32* %pirow, i32* %pjcol) #0 {
entry:
  %maxdiag = alloca double, align 8
  %gamma_r = alloca double, align 8
  %gamma_s = alloca double, align 8
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i32* %mark, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pirow, null
  %or.cond58 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %pjcol, null
  %or.cond59 = or i1 %or.cond58, %cmp5
  br i1 %or.cond59, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str16, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, i32* %pirow, i32* %pjcol) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %call6 = call double* @Chv_entries(%struct._Chv* %chv) #5
  store i32 -1, i32* %pjcol, align 4, !tbaa !3
  store i32 -1, i32* %pirow, align 4, !tbaa !3
  %call7 = call i32 @Chv_maxabsInDiagonal11(%struct._Chv* %chv, i32* %mark, i32 %tag, double* %maxdiag) #8
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -1, i32* %pjcol, align 4, !tbaa !3
  store i32 -1, i32* %pirow, align 4, !tbaa !3
  br label %return

if.end10:                                         ; preds = %if.end
  store double 0.000000e+00, double* %gamma_r, align 8, !tbaa !4
  %call11 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %call7, i32* %mark, i32 %tag, double* %gamma_r) #8
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 %call7, i32* %pjcol, align 4, !tbaa !3
  store i32 %call7, i32* %pirow, align 4, !tbaa !3
  br label %return

if.end14:                                         ; preds = %if.end10
  %1 = load double* %maxdiag, align 8, !tbaa !4
  %2 = load double* %gamma_r, align 8, !tbaa !4
  %mul = fmul double %2, 6.404000e-01
  %cmp15 = fcmp ult double %1, %mul
  br i1 %cmp15, label %while.body.preheader, label %if.then16

while.body.preheader:                             ; preds = %if.end14
  %call1760 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %call11, i32* %mark, i32 %tag, double* %gamma_s) #8
  %cmp1861 = icmp eq i32 %call1760, %call7
  br i1 %cmp1861, label %if.then21, label %lor.lhs.false19

if.then16:                                        ; preds = %if.end14
  store i32 %call7, i32* %pjcol, align 4, !tbaa !3
  store i32 %call7, i32* %pirow, align 4, !tbaa !3
  br label %return

lor.lhs.false19:                                  ; preds = %while.body.preheader, %if.else22
  %call1764 = phi i32 [ %call17, %if.else22 ], [ %call1760, %while.body.preheader ]
  %r.063 = phi i32 [ %s.062, %if.else22 ], [ %call7, %while.body.preheader ]
  %s.062 = phi i32 [ %call1764, %if.else22 ], [ %call11, %while.body.preheader ]
  %3 = load double* %gamma_s, align 8, !tbaa !4
  %4 = load double* %gamma_r, align 8, !tbaa !4
  %cmp20 = fcmp oeq double %3, %4
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else22, %lor.lhs.false19, %while.body.preheader
  %r.0.lcssa = phi i32 [ %call7, %while.body.preheader ], [ %r.063, %lor.lhs.false19 ], [ %s.062, %if.else22 ]
  %s.0.lcssa = phi i32 [ %call11, %while.body.preheader ], [ %s.062, %lor.lhs.false19 ], [ %call1764, %if.else22 ]
  store i32 %r.0.lcssa, i32* %pirow, align 4, !tbaa !3
  store i32 %s.0.lcssa, i32* %pjcol, align 4, !tbaa !3
  br label %return

if.else22:                                        ; preds = %lor.lhs.false19
  store double %3, double* %gamma_r, align 8, !tbaa !4
  %call17 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %call1764, i32* %mark, i32 %tag, double* %gamma_s) #8
  %cmp18 = icmp eq i32 %call17, %s.062
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

return:                                           ; preds = %if.then21, %if.then16, %if.then13, %if.then9
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

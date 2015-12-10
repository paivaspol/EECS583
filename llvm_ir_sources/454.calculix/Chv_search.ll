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
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !39), !dbg !158
  call void @llvm.dbg.value(metadata !{i32* %mark}, i64 0, metadata !40), !dbg !159
  call void @llvm.dbg.value(metadata !{i32 %tag}, i64 0, metadata !41), !dbg !160
  call void @llvm.dbg.value(metadata !{double* %pmaxval}, i64 0, metadata !42), !dbg !161
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !48), !dbg !162
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !49), !dbg !162
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !50), !dbg !162
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !163
  %cmp1 = icmp eq i32* %mark, null, !dbg !163
  %or.cond = or i1 %cmp, %cmp1, !dbg !163
  %cmp3 = icmp eq double* %pmaxval, null, !dbg !163
  %or.cond224 = or i1 %or.cond, %cmp3, !dbg !163
  br i1 %or.cond224, label %if.then, label %if.end, !dbg !163

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !164, !tbaa !166
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval) #6, !dbg !164
  call void @exit(i32 -1) #7, !dbg !169
  unreachable, !dbg !169

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !170
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !171
  call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !45), !dbg !171
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !172
  %1 = load i32* %type, align 4, !dbg !172, !tbaa !173
  switch i32 %1, label %if.else133 [
    i32 1, label %if.then6
    i32 2, label %if.then58
  ], !dbg !172

if.then6:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !174
  %2 = load i32* %symflag, align 4, !dbg !174, !tbaa !173
  switch i32 %2, label %if.else50 [
    i32 2, label %if.then8
    i32 0, label %if.then28
  ], !dbg !174

if.then8:                                         ; preds = %if.then6
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !46), !dbg !177
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !43), !dbg !180
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !181
  %3 = load i32* %nD, align 4, !dbg !181, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !49), !dbg !181
  %4 = load i32* %nL, align 4, !dbg !181, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !51), !dbg !181
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !182
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !183
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !183
  %cmp12230 = icmp sgt i32 %3, 0, !dbg !183
  br i1 %cmp12230, label %for.body.lr.ph, label %if.end136, !dbg !183

for.body.lr.ph:                                   ; preds = %if.then8
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !182
  %5 = load i32* %nU, align 4, !dbg !182, !tbaa !173
  %add = add i32 %3, -1, !dbg !181
  %sub = add i32 %add, %4, !dbg !181
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !183
  %6 = add i32 %4, %5, !dbg !183
  %7 = shl i32 %3, 1, !dbg !183
  %8 = add i32 %6, %7, !dbg !183
  %9 = sext i32 %8 to i64
  br label %for.body, !dbg !183

for.body:                                         ; preds = %for.body.lr.ph, %if.end23
  %indvars.iv265 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next266, %if.end23 ], !dbg !183
  %indvars.iv = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next, %if.end23 ]
  %off.0234 = phi i32 [ %sub, %for.body.lr.ph ], [ %add24, %if.end23 ]
  %jcol.0232 = phi i32 [ -1, %for.body.lr.ph ], [ %jcol.1, %if.end23 ]
  %maxval.0231 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %if.end23 ]
  %indvars.iv.next = add i64 %indvars.iv, -2, !dbg !183
  %arrayidx = getelementptr inbounds i32* %mark, i64 %indvars.iv265, !dbg !185
  %10 = load i32* %arrayidx, align 4, !dbg !185, !tbaa !173
  %cmp13 = icmp eq i32 %10, %tag, !dbg !185
  br i1 %cmp13, label %if.then14, label %if.end23, !dbg !185

if.then14:                                        ; preds = %for.body
  %idxprom15 = sext i32 %off.0234 to i64, !dbg !187
  %arrayidx16 = getelementptr inbounds double* %call4, i64 %idxprom15, !dbg !187
  %11 = load double* %arrayidx16, align 8, !dbg !187, !tbaa !189
  %call17 = call double @fabs(double %11) #8, !dbg !187
  call void @llvm.dbg.value(metadata !{double %call17}, i64 0, metadata !44), !dbg !187
  %cmp18 = icmp eq i32 %jcol.0232, -1, !dbg !190
  %cmp20 = fcmp olt double %maxval.0231, %call17, !dbg !190
  %or.cond225 = or i1 %cmp18, %cmp20, !dbg !190
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !46), !dbg !192
  call void @llvm.dbg.value(metadata !{double %call17}, i64 0, metadata !43), !dbg !192
  %call17.maxval.0 = select i1 %or.cond225, double %call17, double %maxval.0231, !dbg !190
  %12 = trunc i64 %indvars.iv265 to i32, !dbg !190
  %jj.0.jcol.0 = select i1 %or.cond225, i32 %12, i32 %jcol.0232, !dbg !190
  br label %if.end23, !dbg !190

if.end23:                                         ; preds = %if.then14, %for.body
  %maxval.1 = phi double [ %maxval.0231, %for.body ], [ %call17.maxval.0, %if.then14 ]
  %jcol.1 = phi i32 [ %jcol.0232, %for.body ], [ %jj.0.jcol.0, %if.then14 ]
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !194
  %add24 = add nsw i32 %13, %off.0234, !dbg !194
  call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !51), !dbg !194
  %indvars.iv.next266 = add i64 %indvars.iv265, 1, !dbg !183
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !183
  %14 = trunc i64 %indvars.iv.next266 to i32, !dbg !183
  %cmp12 = icmp slt i32 %14, %3, !dbg !183
  br i1 %cmp12, label %for.body, label %if.end136, !dbg !183

if.then28:                                        ; preds = %if.then6
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !46), !dbg !195
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !43), !dbg !197
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !198
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !199
  %15 = load i32* %nD, align 4, !dbg !199, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !199
  call void @llvm.dbg.value(metadata !{i32 %add29}, i64 0, metadata !52), !dbg !199
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !200
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !200
  %cmp31238 = icmp sgt i32 %15, 0, !dbg !200
  br i1 %cmp31238, label %for.body32.lr.ph, label %if.end136, !dbg !200

for.body32.lr.ph:                                 ; preds = %if.then28
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !199
  %16 = load i32* %nU, align 4, !dbg !199, !tbaa !173
  %add29 = add nsw i32 %16, %15, !dbg !199
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !200
  %17 = sext i32 %add29 to i64
  br label %for.body32, !dbg !200

for.body32:                                       ; preds = %for.body32.lr.ph, %if.end45
  %indvars.iv269 = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next270, %if.end45 ], !dbg !200
  %indvars.iv267 = phi i64 [ %17, %for.body32.lr.ph ], [ %indvars.iv.next268, %if.end45 ]
  %off.1242 = phi i32 [ 0, %for.body32.lr.ph ], [ %add46, %if.end45 ]
  %jcol.2240 = phi i32 [ -1, %for.body32.lr.ph ], [ %jcol.3, %if.end45 ]
  %maxval.2239 = phi double [ 0.000000e+00, %for.body32.lr.ph ], [ %maxval.3, %if.end45 ]
  %arrayidx34 = getelementptr inbounds i32* %mark, i64 %indvars.iv269, !dbg !202
  %18 = load i32* %arrayidx34, align 4, !dbg !202, !tbaa !173
  %cmp35 = icmp eq i32 %18, %tag, !dbg !202
  br i1 %cmp35, label %if.then36, label %if.end45, !dbg !202

if.then36:                                        ; preds = %for.body32
  %idxprom37 = sext i32 %off.1242 to i64, !dbg !204
  %arrayidx38 = getelementptr inbounds double* %call4, i64 %idxprom37, !dbg !204
  %19 = load double* %arrayidx38, align 8, !dbg !204, !tbaa !189
  %call39 = call double @fabs(double %19) #8, !dbg !204
  call void @llvm.dbg.value(metadata !{double %call39}, i64 0, metadata !44), !dbg !204
  %cmp40 = icmp eq i32 %jcol.2240, -1, !dbg !206
  %cmp42 = fcmp olt double %maxval.2239, %call39, !dbg !206
  %or.cond226 = or i1 %cmp40, %cmp42, !dbg !206
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !46), !dbg !207
  call void @llvm.dbg.value(metadata !{double %call39}, i64 0, metadata !43), !dbg !207
  %call39.maxval.2 = select i1 %or.cond226, double %call39, double %maxval.2239, !dbg !206
  %20 = trunc i64 %indvars.iv269 to i32, !dbg !206
  %jj.1.jcol.2 = select i1 %or.cond226, i32 %20, i32 %jcol.2240, !dbg !206
  br label %if.end45, !dbg !206

if.end45:                                         ; preds = %if.then36, %for.body32
  %maxval.3 = phi double [ %maxval.2239, %for.body32 ], [ %call39.maxval.2, %if.then36 ]
  %jcol.3 = phi i32 [ %jcol.2240, %for.body32 ], [ %jj.1.jcol.2, %if.then36 ]
  %21 = trunc i64 %indvars.iv267 to i32, !dbg !209
  %add46 = add nsw i32 %21, %off.1242, !dbg !209
  call void @llvm.dbg.value(metadata !{i32 %add46}, i64 0, metadata !51), !dbg !209
  %indvars.iv.next268 = add i64 %indvars.iv267, -1, !dbg !200
  %indvars.iv.next270 = add i64 %indvars.iv269, 1, !dbg !200
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !200
  %22 = trunc i64 %indvars.iv.next270 to i32, !dbg !200
  %cmp31 = icmp slt i32 %22, %15, !dbg !200
  br i1 %cmp31, label %for.body32, label %if.end136, !dbg !200

if.else50:                                        ; preds = %if.then6
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !210, !tbaa !166
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([92 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval, i32 %2) #6, !dbg !210
  call void @exit(i32 -1) #7, !dbg !212
  unreachable, !dbg !212

if.then58:                                        ; preds = %if.end
  %symflag59 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !213
  %24 = load i32* %symflag59, align 4, !dbg !213, !tbaa !173
  switch i32 %24, label %if.else128 [
    i32 2, label %if.then61
    i32 0, label %if.then100
    i32 1, label %if.then100
  ], !dbg !213

if.then61:                                        ; preds = %if.then58
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !46), !dbg !215
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !43), !dbg !217
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !218
  %25 = load i32* %nD, align 4, !dbg !218, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !49), !dbg !218
  %26 = load i32* %nL, align 4, !dbg !218, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32 %sub63}, i64 0, metadata !51), !dbg !218
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !219
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !220
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !220
  %cmp69248 = icmp sgt i32 %25, 0, !dbg !220
  br i1 %cmp69248, label %for.body70.lr.ph, label %if.end136, !dbg !220

for.body70.lr.ph:                                 ; preds = %if.then61
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !219
  %27 = load i32* %nU, align 4, !dbg !219, !tbaa !173
  %add62 = add i32 %25, -1, !dbg !218
  %sub63 = add i32 %add62, %26, !dbg !218
  %28 = add i32 %26, %27, !dbg !220
  %29 = shl i32 %25, 1, !dbg !220
  %30 = add i32 %28, %29, !dbg !220
  %31 = sext i32 %30 to i64
  br label %for.body70, !dbg !220

for.body70:                                       ; preds = %for.body70.lr.ph, %if.end88
  %32 = phi i32 [ %25, %for.body70.lr.ph ], [ %37, %if.end88 ]
  %indvars.iv273 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next274, %if.end88 ], !dbg !220
  %indvars.iv271 = phi i64 [ %31, %for.body70.lr.ph ], [ %indvars.iv.next272, %if.end88 ]
  %off.2252 = phi i32 [ %sub63, %for.body70.lr.ph ], [ %add89, %if.end88 ]
  %jcol.4250 = phi i32 [ -1, %for.body70.lr.ph ], [ %jcol.5, %if.end88 ]
  %maxval.4249 = phi double [ 0.000000e+00, %for.body70.lr.ph ], [ %maxval.5, %if.end88 ]
  %indvars.iv.next272 = add i64 %indvars.iv271, -2, !dbg !220
  %arrayidx72 = getelementptr inbounds i32* %mark, i64 %indvars.iv273, !dbg !222
  %33 = load i32* %arrayidx72, align 4, !dbg !222, !tbaa !173
  %cmp73 = icmp eq i32 %33, %tag, !dbg !222
  br i1 %cmp73, label %if.then74, label %if.end88, !dbg !222

if.then74:                                        ; preds = %for.body70
  %mul75 = shl nsw i32 %off.2252, 1, !dbg !224
  %idxprom76 = sext i32 %mul75 to i64, !dbg !224
  %arrayidx77 = getelementptr inbounds double* %call4, i64 %idxprom76, !dbg !224
  %34 = load double* %arrayidx77, align 8, !dbg !224, !tbaa !189
  %add79223 = or i32 %mul75, 1, !dbg !224
  %idxprom80 = sext i32 %add79223 to i64, !dbg !224
  %arrayidx81 = getelementptr inbounds double* %call4, i64 %idxprom80, !dbg !224
  %35 = load double* %arrayidx81, align 8, !dbg !224, !tbaa !189
  %call82 = call double @Zabs(double %34, double %35) #6, !dbg !224
  call void @llvm.dbg.value(metadata !{double %call82}, i64 0, metadata !44), !dbg !224
  %cmp83 = icmp eq i32 %jcol.4250, -1, !dbg !226
  %cmp85 = fcmp olt double %maxval.4249, %call82, !dbg !226
  %or.cond227 = or i1 %cmp83, %cmp85, !dbg !226
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !46), !dbg !227
  call void @llvm.dbg.value(metadata !{double %call82}, i64 0, metadata !43), !dbg !227
  %call82.maxval.4 = select i1 %or.cond227, double %call82, double %maxval.4249, !dbg !226
  %36 = trunc i64 %indvars.iv273 to i32, !dbg !226
  %jj.2.jcol.4 = select i1 %or.cond227, i32 %36, i32 %jcol.4250, !dbg !226
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !220
  %.pre = load i32* %nD, align 4, !dbg !220, !tbaa !173
  br label %if.end88, !dbg !226

if.end88:                                         ; preds = %if.then74, %for.body70
  %37 = phi i32 [ %32, %for.body70 ], [ %.pre, %if.then74 ], !dbg !229
  %maxval.5 = phi double [ %maxval.4249, %for.body70 ], [ %call82.maxval.4, %if.then74 ]
  %jcol.5 = phi i32 [ %jcol.4250, %for.body70 ], [ %jj.2.jcol.4, %if.then74 ]
  %38 = trunc i64 %indvars.iv.next272 to i32, !dbg !229
  %add89 = add nsw i32 %38, %off.2252, !dbg !229
  call void @llvm.dbg.value(metadata !{i32 %add89}, i64 0, metadata !51), !dbg !229
  %indvars.iv.next274 = add i64 %indvars.iv273, 1, !dbg !220
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !220
  %39 = trunc i64 %indvars.iv.next274 to i32, !dbg !220
  %cmp69 = icmp slt i32 %39, %37, !dbg !220
  br i1 %cmp69, label %for.body70, label %if.end136, !dbg !220

if.then100:                                       ; preds = %if.then58, %if.then58
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !46), !dbg !230
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !43), !dbg !232
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !233
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !234
  %40 = load i32* %nD, align 4, !dbg !234, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %add101}, i64 0, metadata !52), !dbg !234
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !235
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !235
  %cmp103257 = icmp sgt i32 %40, 0, !dbg !235
  br i1 %cmp103257, label %for.body104.lr.ph, label %if.end136, !dbg !235

for.body104.lr.ph:                                ; preds = %if.then100
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !50), !dbg !234
  %41 = load i32* %nU, align 4, !dbg !234, !tbaa !173
  %add101 = add nsw i32 %41, %40, !dbg !234
  %42 = sext i32 %add101 to i64
  br label %for.body104, !dbg !235

for.body104:                                      ; preds = %for.body104.lr.ph, %if.end122
  %43 = phi i32 [ %40, %for.body104.lr.ph ], [ %48, %if.end122 ]
  %indvars.iv277 = phi i64 [ 0, %for.body104.lr.ph ], [ %indvars.iv.next278, %if.end122 ], !dbg !235
  %indvars.iv275 = phi i64 [ %42, %for.body104.lr.ph ], [ %indvars.iv.next276, %if.end122 ]
  %off.3261 = phi i32 [ 0, %for.body104.lr.ph ], [ %add123, %if.end122 ]
  %jcol.6259 = phi i32 [ -1, %for.body104.lr.ph ], [ %jcol.7, %if.end122 ]
  %maxval.6258 = phi double [ 0.000000e+00, %for.body104.lr.ph ], [ %maxval.7, %if.end122 ]
  %arrayidx106 = getelementptr inbounds i32* %mark, i64 %indvars.iv277, !dbg !237
  %44 = load i32* %arrayidx106, align 4, !dbg !237, !tbaa !173
  %cmp107 = icmp eq i32 %44, %tag, !dbg !237
  br i1 %cmp107, label %if.then108, label %if.end122, !dbg !237

if.then108:                                       ; preds = %for.body104
  %mul109 = shl nsw i32 %off.3261, 1, !dbg !239
  %idxprom110 = sext i32 %mul109 to i64, !dbg !239
  %arrayidx111 = getelementptr inbounds double* %call4, i64 %idxprom110, !dbg !239
  %45 = load double* %arrayidx111, align 8, !dbg !239, !tbaa !189
  %add113222 = or i32 %mul109, 1, !dbg !239
  %idxprom114 = sext i32 %add113222 to i64, !dbg !239
  %arrayidx115 = getelementptr inbounds double* %call4, i64 %idxprom114, !dbg !239
  %46 = load double* %arrayidx115, align 8, !dbg !239, !tbaa !189
  %call116 = call double @Zabs(double %45, double %46) #6, !dbg !239
  call void @llvm.dbg.value(metadata !{double %call116}, i64 0, metadata !44), !dbg !239
  %cmp117 = icmp eq i32 %jcol.6259, -1, !dbg !241
  %cmp119 = fcmp olt double %maxval.6258, %call116, !dbg !241
  %or.cond228 = or i1 %cmp117, %cmp119, !dbg !241
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !46), !dbg !242
  call void @llvm.dbg.value(metadata !{double %call116}, i64 0, metadata !43), !dbg !242
  %call116.maxval.6 = select i1 %or.cond228, double %call116, double %maxval.6258, !dbg !241
  %47 = trunc i64 %indvars.iv277 to i32, !dbg !241
  %jj.3.jcol.6 = select i1 %or.cond228, i32 %47, i32 %jcol.6259, !dbg !241
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !235
  %.pre279 = load i32* %nD, align 4, !dbg !235, !tbaa !173
  br label %if.end122, !dbg !241

if.end122:                                        ; preds = %if.then108, %for.body104
  %48 = phi i32 [ %43, %for.body104 ], [ %.pre279, %if.then108 ], !dbg !244
  %maxval.7 = phi double [ %maxval.6258, %for.body104 ], [ %call116.maxval.6, %if.then108 ]
  %jcol.7 = phi i32 [ %jcol.6259, %for.body104 ], [ %jj.3.jcol.6, %if.then108 ]
  %49 = trunc i64 %indvars.iv275 to i32, !dbg !244
  %add123 = add nsw i32 %49, %off.3261, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %add123}, i64 0, metadata !51), !dbg !244
  %indvars.iv.next276 = add i64 %indvars.iv275, -1, !dbg !235
  %indvars.iv.next278 = add i64 %indvars.iv277, 1, !dbg !235
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !48), !dbg !235
  %50 = trunc i64 %indvars.iv.next278 to i32, !dbg !235
  %cmp103 = icmp slt i32 %50, %48, !dbg !235
  br i1 %cmp103, label %for.body104, label %if.end136, !dbg !235

if.else128:                                       ; preds = %if.then58
  %51 = load %struct._IO_FILE** @stderr, align 8, !dbg !245, !tbaa !166
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([95 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval, i32 %24) #6, !dbg !245
  call void @exit(i32 -1) #7, !dbg !247
  unreachable, !dbg !247

if.else133:                                       ; preds = %if.end
  %52 = load %struct._IO_FILE** @stderr, align 8, !dbg !248, !tbaa !166
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([105 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, double* %pmaxval) #6, !dbg !248
  call void @exit(i32 -1) #7, !dbg !250
  unreachable, !dbg !250

if.end136:                                        ; preds = %if.then100, %if.end122, %if.then61, %if.end88, %if.then28, %if.end45, %if.then8, %if.end23
  %maxval.8 = phi double [ 0.000000e+00, %if.then8 ], [ %maxval.1, %if.end23 ], [ 0.000000e+00, %if.then28 ], [ %maxval.3, %if.end45 ], [ 0.000000e+00, %if.then61 ], [ %maxval.5, %if.end88 ], [ 0.000000e+00, %if.then100 ], [ %maxval.7, %if.end122 ]
  %jcol.8 = phi i32 [ -1, %if.then8 ], [ %jcol.1, %if.end23 ], [ -1, %if.then28 ], [ %jcol.3, %if.end45 ], [ -1, %if.then61 ], [ %jcol.5, %if.end88 ], [ -1, %if.then100 ], [ %jcol.7, %if.end122 ]
  store double %maxval.8, double* %pmaxval, align 8, !dbg !251, !tbaa !189
  ret i32 %jcol.8, !dbg !252
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #4

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #4

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: optsize
declare double @Zabs(double, double) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !57), !dbg !253
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !58), !dbg !254
  call void @llvm.dbg.value(metadata !{i32* %colmark}, i64 0, metadata !59), !dbg !255
  call void @llvm.dbg.value(metadata !{i32 %tag}, i64 0, metadata !60), !dbg !256
  call void @llvm.dbg.value(metadata !{double* %pmaxval}, i64 0, metadata !61), !dbg !257
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !67), !dbg !258
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !68), !dbg !258
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !69), !dbg !258
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !259
  %cmp1 = icmp slt i32 %irow, 0, !dbg !259
  %or.cond = or i1 %cmp, %cmp1, !dbg !259
  %cmp3 = icmp eq i32* %colmark, null, !dbg !259
  %or.cond394 = or i1 %or.cond, %cmp3, !dbg !259
  %cmp5 = icmp eq double* %pmaxval, null, !dbg !259
  %or.cond395 = or i1 %or.cond394, %cmp5, !dbg !259
  br i1 %or.cond395, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !260, !tbaa !166
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval) #6, !dbg !260
  call void @exit(i32 -1) #7, !dbg !262
  unreachable, !dbg !262

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !263
  %call6 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !264
  call void @llvm.dbg.value(metadata !{double* %call6}, i64 0, metadata !64), !dbg !264
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !265
  %1 = load i32* %type, align 4, !dbg !265, !tbaa !173
  switch i32 %1, label %if.else229 [
    i32 1, label %if.then8
    i32 2, label %if.then102
  ], !dbg !265

if.then8:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !266
  %2 = load i32* %symflag, align 4, !dbg !266, !tbaa !173
  switch i32 %2, label %if.else94 [
    i32 2, label %if.then10
    i32 0, label %if.then51
  ], !dbg !266

if.then10:                                        ; preds = %if.then8
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !65), !dbg !268
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !62), !dbg !270
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !271
  %3 = load i32* %nD, align 4, !dbg !271, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !68), !dbg !271
  %4 = load i32* %nL, align 4, !dbg !271, !tbaa !173
  %add = xor i32 %irow, -1, !dbg !271
  %sub = add i32 %3, %add, !dbg !271
  %sub11 = add i32 %sub, %4, !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %sub11}, i64 0, metadata !70), !dbg !271
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !272
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !273
  %cmp15410 = icmp sgt i32 %irow, 0, !dbg !273
  br i1 %cmp15410, label %for.body.lr.ph, label %for.cond29.preheader, !dbg !273

for.body.lr.ph:                                   ; preds = %if.then10
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !272
  %5 = load i32* %nU, align 4, !dbg !272, !tbaa !173
  %6 = add i32 %4, %5, !dbg !273
  %7 = shl i32 %3, 1, !dbg !273
  %8 = add i32 %6, %7, !dbg !273
  %9 = add i32 %8, -1, !dbg !273
  %10 = sext i32 %9 to i64
  %11 = add i32 %irow, -1, !dbg !273
  %12 = add i32 %8, -3, !dbg !273
  %13 = mul i32 %11, %12, !dbg !273
  %14 = add i32 %5, %13, !dbg !273
  %15 = mul i32 %3, 3, !dbg !273
  %16 = add i32 %14, %15, !dbg !273
  %17 = shl i32 %4, 1, !dbg !273
  %18 = add i32 %16, %17, !dbg !273
  %19 = add i32 %18, -2, !dbg !273
  %20 = add i32 %irow, -2, !dbg !273
  %21 = mul i32 %11, %20, !dbg !273
  %22 = and i32 %21, -2, !dbg !273
  br label %for.body, !dbg !273

for.cond.for.cond29.preheader_crit_edge:          ; preds = %if.end26
  %23 = sub i32 %19, %irow, !dbg !273
  %24 = sub i32 %23, %22, !dbg !273
  br label %for.cond29.preheader, !dbg !273

for.cond29.preheader:                             ; preds = %for.cond.for.cond29.preheader_crit_edge, %if.then10
  %off.0.lcssa = phi i32 [ %24, %for.cond.for.cond29.preheader_crit_edge ], [ %sub11, %if.then10 ]
  %jcol.0.lcssa = phi i32 [ %jcol.1, %for.cond.for.cond29.preheader_crit_edge ], [ -1, %if.then10 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond29.preheader_crit_edge ], [ 0.000000e+00, %if.then10 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !275
  %cmp30404 = icmp sgt i32 %3, %irow, !dbg !275
  br i1 %cmp30404, label %for.body31.lr.ph, label %if.end232, !dbg !275

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !275
  %25 = sext i32 %off.0.lcssa to i64
  %26 = sext i32 %irow to i64, !dbg !275
  br label %for.body31, !dbg !275

for.body:                                         ; preds = %if.end26, %for.body.lr.ph
  %indvars.iv477 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next478, %if.end26 ], !dbg !273
  %indvars.iv474 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next475, %if.end26 ]
  %off.0414 = phi i32 [ %sub11, %for.body.lr.ph ], [ %add27, %if.end26 ]
  %jcol.0412 = phi i32 [ -1, %for.body.lr.ph ], [ %jcol.1, %if.end26 ]
  %maxval.0411 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %if.end26 ]
  %arrayidx = getelementptr inbounds i32* %colmark, i64 %indvars.iv477, !dbg !277
  %27 = load i32* %arrayidx, align 4, !dbg !277, !tbaa !173
  %cmp16 = icmp eq i32 %27, %tag, !dbg !277
  br i1 %cmp16, label %if.then17, label %if.end26, !dbg !277

if.then17:                                        ; preds = %for.body
  %idxprom18 = sext i32 %off.0414 to i64, !dbg !279
  %arrayidx19 = getelementptr inbounds double* %call6, i64 %idxprom18, !dbg !279
  %28 = load double* %arrayidx19, align 8, !dbg !279, !tbaa !189
  %call20 = call double @fabs(double %28) #8, !dbg !279
  call void @llvm.dbg.value(metadata !{double %call20}, i64 0, metadata !63), !dbg !279
  %cmp21 = icmp eq i32 %jcol.0412, -1, !dbg !281
  %cmp23 = fcmp olt double %maxval.0411, %call20, !dbg !281
  %or.cond396 = or i1 %cmp21, %cmp23, !dbg !281
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !282
  call void @llvm.dbg.value(metadata !{double %call20}, i64 0, metadata !62), !dbg !282
  %call20.maxval.0 = select i1 %or.cond396, double %call20, double %maxval.0411, !dbg !281
  %29 = trunc i64 %indvars.iv477 to i32, !dbg !281
  %jj.0.jcol.0 = select i1 %or.cond396, i32 %29, i32 %jcol.0412, !dbg !281
  br label %if.end26, !dbg !281

if.end26:                                         ; preds = %if.then17, %for.body
  %maxval.1 = phi double [ %maxval.0411, %for.body ], [ %call20.maxval.0, %if.then17 ]
  %jcol.1 = phi i32 [ %jcol.0412, %for.body ], [ %jj.0.jcol.0, %if.then17 ]
  %30 = trunc i64 %indvars.iv474 to i32, !dbg !284
  %add27 = add nsw i32 %30, %off.0414, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !70), !dbg !284
  %indvars.iv.next478 = add i64 %indvars.iv477, 1, !dbg !273
  %indvars.iv.next475 = add i64 %indvars.iv474, -2, !dbg !273
  %lftr.wideiv = trunc i64 %indvars.iv.next478 to i32, !dbg !273
  %exitcond = icmp eq i32 %lftr.wideiv, %irow, !dbg !273
  br i1 %exitcond, label %for.cond.for.cond29.preheader_crit_edge, label %for.body, !dbg !273

for.body31:                                       ; preds = %for.body31.lr.ph, %for.inc45
  %indvars.iv472 = phi i64 [ %26, %for.body31.lr.ph ], [ %indvars.iv.next473, %for.inc45 ], !dbg !275
  %indvars.iv = phi i64 [ %25, %for.body31.lr.ph ], [ %indvars.iv.next, %for.inc45 ]
  %jcol.2406 = phi i32 [ %jcol.0.lcssa, %for.body31.lr.ph ], [ %jcol.3, %for.inc45 ]
  %maxval.2405 = phi double [ %maxval.0.lcssa, %for.body31.lr.ph ], [ %maxval.3, %for.inc45 ]
  %arrayidx33 = getelementptr inbounds i32* %colmark, i64 %indvars.iv472, !dbg !285
  %31 = load i32* %arrayidx33, align 4, !dbg !285, !tbaa !173
  %cmp34 = icmp eq i32 %31, %tag, !dbg !285
  br i1 %cmp34, label %if.then35, label %for.inc45, !dbg !285

if.then35:                                        ; preds = %for.body31
  %arrayidx37 = getelementptr inbounds double* %call6, i64 %indvars.iv, !dbg !287
  %32 = load double* %arrayidx37, align 8, !dbg !287, !tbaa !189
  %call38 = call double @fabs(double %32) #8, !dbg !287
  call void @llvm.dbg.value(metadata !{double %call38}, i64 0, metadata !63), !dbg !287
  %cmp39 = icmp eq i32 %jcol.2406, -1, !dbg !289
  %cmp41 = fcmp olt double %maxval.2405, %call38, !dbg !289
  %or.cond397 = or i1 %cmp39, %cmp41, !dbg !289
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !290
  call void @llvm.dbg.value(metadata !{double %call38}, i64 0, metadata !62), !dbg !290
  %call38.maxval.2 = select i1 %or.cond397, double %call38, double %maxval.2405, !dbg !289
  %33 = trunc i64 %indvars.iv472 to i32, !dbg !289
  %jj.1.jcol.2 = select i1 %or.cond397, i32 %33, i32 %jcol.2406, !dbg !289
  br label %for.inc45, !dbg !289

for.inc45:                                        ; preds = %if.then35, %for.body31
  %maxval.3 = phi double [ %maxval.2405, %for.body31 ], [ %call38.maxval.2, %if.then35 ]
  %jcol.3 = phi i32 [ %jcol.2406, %for.body31 ], [ %jj.1.jcol.2, %if.then35 ]
  %indvars.iv.next473 = add i64 %indvars.iv472, 1, !dbg !275
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !275
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !275
  %34 = trunc i64 %indvars.iv.next473 to i32, !dbg !275
  %cmp30 = icmp slt i32 %34, %3, !dbg !275
  br i1 %cmp30, label %for.body31, label %if.end232, !dbg !275

if.then51:                                        ; preds = %if.then8
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !65), !dbg !292
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !62), !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !70), !dbg !295
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !296
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !296
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !297
  %cmp55428 = icmp sgt i32 %irow, 0, !dbg !297
  br i1 %cmp55428, label %for.body56.lr.ph, label %if.then51.for.cond74.preheader_crit_edge, !dbg !297

if.then51.for.cond74.preheader_crit_edge:         ; preds = %if.then51
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !299
  %.pre512 = load i32* %nD, align 4, !dbg !299, !tbaa !173
  br label %for.cond74.preheader, !dbg !297

for.body56.lr.ph:                                 ; preds = %if.then51
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !296
  %35 = load i32* %nU, align 4, !dbg !296, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !296
  %36 = load i32* %nD, align 4, !dbg !296, !tbaa !173
  %add52 = add nsw i32 %35, %36, !dbg !296
  %37 = sext i32 %add52 to i64
  %38 = add i32 %add52, %irow, !dbg !297
  %39 = add i32 %irow, -1, !dbg !297
  %40 = add i32 %add52, -2, !dbg !297
  %41 = mul i32 %39, %40, !dbg !297
  %42 = add i32 %38, %41, !dbg !297
  %43 = zext i32 %39 to i33, !dbg !297
  %44 = add i32 %irow, -2, !dbg !297
  %45 = zext i32 %44 to i33, !dbg !297
  %46 = mul i33 %43, %45, !dbg !297
  %47 = lshr i33 %46, 1, !dbg !297
  %48 = trunc i33 %47 to i32, !dbg !297
  br label %for.body56, !dbg !297

for.cond54.for.cond74.preheader_crit_edge:        ; preds = %if.end69
  %49 = add i32 %42, -1, !dbg !297
  %50 = sub i32 %49, %48, !dbg !297
  br label %for.cond74.preheader, !dbg !297

for.cond74.preheader:                             ; preds = %if.then51.for.cond74.preheader_crit_edge, %for.cond54.for.cond74.preheader_crit_edge
  %51 = phi i32 [ %36, %for.cond54.for.cond74.preheader_crit_edge ], [ %.pre512, %if.then51.for.cond74.preheader_crit_edge ]
  %off.2.lcssa = phi i32 [ %50, %for.cond54.for.cond74.preheader_crit_edge ], [ %irow, %if.then51.for.cond74.preheader_crit_edge ]
  %jcol.4.lcssa = phi i32 [ %jcol.5, %for.cond54.for.cond74.preheader_crit_edge ], [ -1, %if.then51.for.cond74.preheader_crit_edge ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond54.for.cond74.preheader_crit_edge ], [ 0.000000e+00, %if.then51.for.cond74.preheader_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !299
  %cmp75420 = icmp sgt i32 %51, %irow, !dbg !299
  br i1 %cmp75420, label %for.body76.lr.ph, label %if.end232, !dbg !299

for.body76.lr.ph:                                 ; preds = %for.cond74.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !299
  %52 = sext i32 %off.2.lcssa to i64
  %53 = sext i32 %irow to i64, !dbg !299
  br label %for.body76, !dbg !299

for.body56:                                       ; preds = %if.end69, %for.body56.lr.ph
  %indvars.iv485 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next486, %if.end69 ], !dbg !297
  %indvars.iv483 = phi i64 [ %37, %for.body56.lr.ph ], [ %indvars.iv.next484, %if.end69 ]
  %off.2432 = phi i32 [ %irow, %for.body56.lr.ph ], [ %add70, %if.end69 ]
  %jcol.4430 = phi i32 [ -1, %for.body56.lr.ph ], [ %jcol.5, %if.end69 ]
  %maxval.4429 = phi double [ 0.000000e+00, %for.body56.lr.ph ], [ %maxval.5, %if.end69 ]
  %indvars.iv.next484 = add i64 %indvars.iv483, -1, !dbg !297
  %arrayidx58 = getelementptr inbounds i32* %colmark, i64 %indvars.iv485, !dbg !301
  %54 = load i32* %arrayidx58, align 4, !dbg !301, !tbaa !173
  %cmp59 = icmp eq i32 %54, %tag, !dbg !301
  br i1 %cmp59, label %if.then60, label %if.end69, !dbg !301

if.then60:                                        ; preds = %for.body56
  %idxprom61 = sext i32 %off.2432 to i64, !dbg !303
  %arrayidx62 = getelementptr inbounds double* %call6, i64 %idxprom61, !dbg !303
  %55 = load double* %arrayidx62, align 8, !dbg !303, !tbaa !189
  %call63 = call double @fabs(double %55) #8, !dbg !303
  call void @llvm.dbg.value(metadata !{double %call63}, i64 0, metadata !63), !dbg !303
  %cmp64 = icmp eq i32 %jcol.4430, -1, !dbg !305
  %cmp66 = fcmp olt double %maxval.4429, %call63, !dbg !305
  %or.cond398 = or i1 %cmp64, %cmp66, !dbg !305
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !306
  call void @llvm.dbg.value(metadata !{double %call63}, i64 0, metadata !62), !dbg !306
  %call63.maxval.4 = select i1 %or.cond398, double %call63, double %maxval.4429, !dbg !305
  %56 = trunc i64 %indvars.iv485 to i32, !dbg !305
  %jj.2.jcol.4 = select i1 %or.cond398, i32 %56, i32 %jcol.4430, !dbg !305
  br label %if.end69, !dbg !305

if.end69:                                         ; preds = %if.then60, %for.body56
  %maxval.5 = phi double [ %maxval.4429, %for.body56 ], [ %call63.maxval.4, %if.then60 ]
  %jcol.5 = phi i32 [ %jcol.4430, %for.body56 ], [ %jj.2.jcol.4, %if.then60 ]
  %57 = trunc i64 %indvars.iv.next484 to i32, !dbg !308
  %add70 = add nsw i32 %57, %off.2432, !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !70), !dbg !308
  %indvars.iv.next486 = add i64 %indvars.iv485, 1, !dbg !297
  %lftr.wideiv487 = trunc i64 %indvars.iv.next486 to i32, !dbg !297
  %exitcond488 = icmp eq i32 %lftr.wideiv487, %irow, !dbg !297
  br i1 %exitcond488, label %for.cond54.for.cond74.preheader_crit_edge, label %for.body56, !dbg !297

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc90
  %indvars.iv481 = phi i64 [ %53, %for.body76.lr.ph ], [ %indvars.iv.next482, %for.inc90 ], !dbg !299
  %indvars.iv479 = phi i64 [ %52, %for.body76.lr.ph ], [ %indvars.iv.next480, %for.inc90 ]
  %jcol.6422 = phi i32 [ %jcol.4.lcssa, %for.body76.lr.ph ], [ %jcol.7, %for.inc90 ]
  %maxval.6421 = phi double [ %maxval.4.lcssa, %for.body76.lr.ph ], [ %maxval.7, %for.inc90 ]
  %arrayidx78 = getelementptr inbounds i32* %colmark, i64 %indvars.iv481, !dbg !309
  %58 = load i32* %arrayidx78, align 4, !dbg !309, !tbaa !173
  %cmp79 = icmp eq i32 %58, %tag, !dbg !309
  br i1 %cmp79, label %if.then80, label %for.inc90, !dbg !309

if.then80:                                        ; preds = %for.body76
  %arrayidx82 = getelementptr inbounds double* %call6, i64 %indvars.iv479, !dbg !311
  %59 = load double* %arrayidx82, align 8, !dbg !311, !tbaa !189
  %call83 = call double @fabs(double %59) #8, !dbg !311
  call void @llvm.dbg.value(metadata !{double %call83}, i64 0, metadata !63), !dbg !311
  %cmp84 = icmp eq i32 %jcol.6422, -1, !dbg !313
  %cmp86 = fcmp olt double %maxval.6421, %call83, !dbg !313
  %or.cond399 = or i1 %cmp84, %cmp86, !dbg !313
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !314
  call void @llvm.dbg.value(metadata !{double %call83}, i64 0, metadata !62), !dbg !314
  %call83.maxval.6 = select i1 %or.cond399, double %call83, double %maxval.6421, !dbg !313
  %60 = trunc i64 %indvars.iv481 to i32, !dbg !313
  %jj.3.jcol.6 = select i1 %or.cond399, i32 %60, i32 %jcol.6422, !dbg !313
  br label %for.inc90, !dbg !313

for.inc90:                                        ; preds = %if.then80, %for.body76
  %maxval.7 = phi double [ %maxval.6421, %for.body76 ], [ %call83.maxval.6, %if.then80 ]
  %jcol.7 = phi i32 [ %jcol.6422, %for.body76 ], [ %jj.3.jcol.6, %if.then80 ]
  %indvars.iv.next482 = add i64 %indvars.iv481, 1, !dbg !299
  %indvars.iv.next480 = add i64 %indvars.iv479, 1, !dbg !299
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !299
  %61 = trunc i64 %indvars.iv.next482 to i32, !dbg !299
  %cmp75 = icmp slt i32 %61, %51, !dbg !299
  br i1 %cmp75, label %for.body76, label %if.end232, !dbg !299

if.else94:                                        ; preds = %if.then8
  %62 = load %struct._IO_FILE** @stderr, align 8, !dbg !316, !tbaa !166
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([91 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval, i32 %2) #6, !dbg !316
  call void @exit(i32 -1) #7, !dbg !318
  unreachable, !dbg !318

if.then102:                                       ; preds = %if.end
  %symflag103 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !319
  %63 = load i32* %symflag103, align 4, !dbg !319, !tbaa !173
  switch i32 %63, label %if.else224 [
    i32 2, label %if.then105
    i32 0, label %if.then170
    i32 1, label %if.then170
  ], !dbg !319

if.then105:                                       ; preds = %if.then102
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !65), !dbg !321
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !62), !dbg !323
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !324
  %64 = load i32* %nD, align 4, !dbg !324, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !68), !dbg !324
  %65 = load i32* %nL, align 4, !dbg !324, !tbaa !173
  %add106 = xor i32 %irow, -1, !dbg !324
  %sub107 = add i32 %64, %add106, !dbg !324
  %sub108 = add i32 %sub107, %65, !dbg !324
  call void @llvm.dbg.value(metadata !{i32 %sub108}, i64 0, metadata !70), !dbg !324
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !325
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !326
  %cmp114445 = icmp sgt i32 %irow, 0, !dbg !326
  br i1 %cmp114445, label %for.body115.lr.ph, label %for.cond139.preheader, !dbg !326

for.body115.lr.ph:                                ; preds = %if.then105
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !325
  %66 = load i32* %nU, align 4, !dbg !325, !tbaa !173
  %67 = add i32 %65, %66, !dbg !326
  %68 = shl i32 %64, 1, !dbg !326
  %69 = add i32 %67, %68, !dbg !326
  %70 = add i32 %69, -1, !dbg !326
  %71 = sext i32 %70 to i64
  %72 = add i32 %irow, -1, !dbg !326
  %73 = add i32 %69, -3, !dbg !326
  %74 = mul i32 %72, %73, !dbg !326
  %75 = add i32 %66, %74, !dbg !326
  %76 = mul i32 %64, 3, !dbg !326
  %77 = add i32 %75, %76, !dbg !326
  %78 = shl i32 %65, 1, !dbg !326
  %79 = add i32 %77, %78, !dbg !326
  %80 = add i32 %79, -2, !dbg !326
  %81 = add i32 %irow, -2, !dbg !326
  %82 = mul i32 %72, %81, !dbg !326
  %83 = and i32 %82, -2, !dbg !326
  br label %for.body115, !dbg !326

for.cond113.for.cond139.preheader_crit_edge:      ; preds = %if.end133
  %84 = sub i32 %80, %irow, !dbg !326
  %85 = sub i32 %84, %83, !dbg !326
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !328
  %.pre = load i32* %nD, align 4, !dbg !328, !tbaa !173
  br label %for.cond139.preheader, !dbg !326

for.cond139.preheader:                            ; preds = %for.cond113.for.cond139.preheader_crit_edge, %if.then105
  %86 = phi i32 [ %.pre, %for.cond113.for.cond139.preheader_crit_edge ], [ %64, %if.then105 ]
  %off.4.lcssa = phi i32 [ %85, %for.cond113.for.cond139.preheader_crit_edge ], [ %sub108, %if.then105 ]
  %jcol.8.lcssa = phi i32 [ %jcol.9, %for.cond113.for.cond139.preheader_crit_edge ], [ -1, %if.then105 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond113.for.cond139.preheader_crit_edge ], [ 0.000000e+00, %if.then105 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !328
  %cmp140438 = icmp sgt i32 %86, %irow, !dbg !328
  br i1 %cmp140438, label %for.body141.lr.ph, label %if.end232, !dbg !328

for.body141.lr.ph:                                ; preds = %for.cond139.preheader
  %87 = sext i32 %off.4.lcssa to i64
  %88 = sext i32 %irow to i64, !dbg !328
  br label %for.body141, !dbg !328

for.body115:                                      ; preds = %if.end133, %for.body115.lr.ph
  %indvars.iv496 = phi i64 [ 0, %for.body115.lr.ph ], [ %indvars.iv.next497, %if.end133 ], !dbg !326
  %indvars.iv493 = phi i64 [ %71, %for.body115.lr.ph ], [ %indvars.iv.next494, %if.end133 ]
  %off.4449 = phi i32 [ %sub108, %for.body115.lr.ph ], [ %add134, %if.end133 ]
  %jcol.8447 = phi i32 [ -1, %for.body115.lr.ph ], [ %jcol.9, %if.end133 ]
  %maxval.8446 = phi double [ 0.000000e+00, %for.body115.lr.ph ], [ %maxval.9, %if.end133 ]
  %arrayidx117 = getelementptr inbounds i32* %colmark, i64 %indvars.iv496, !dbg !330
  %89 = load i32* %arrayidx117, align 4, !dbg !330, !tbaa !173
  %cmp118 = icmp eq i32 %89, %tag, !dbg !330
  br i1 %cmp118, label %if.then119, label %if.end133, !dbg !330

if.then119:                                       ; preds = %for.body115
  %mul120 = shl nsw i32 %off.4449, 1, !dbg !332
  %idxprom121 = sext i32 %mul120 to i64, !dbg !332
  %arrayidx122 = getelementptr inbounds double* %call6, i64 %idxprom121, !dbg !332
  %90 = load double* %arrayidx122, align 8, !dbg !332, !tbaa !189
  %add124393 = or i32 %mul120, 1, !dbg !332
  %idxprom125 = sext i32 %add124393 to i64, !dbg !332
  %arrayidx126 = getelementptr inbounds double* %call6, i64 %idxprom125, !dbg !332
  %91 = load double* %arrayidx126, align 8, !dbg !332, !tbaa !189
  %call127 = call double @Zabs(double %90, double %91) #6, !dbg !332
  call void @llvm.dbg.value(metadata !{double %call127}, i64 0, metadata !63), !dbg !332
  %cmp128 = icmp eq i32 %jcol.8447, -1, !dbg !334
  %cmp130 = fcmp olt double %maxval.8446, %call127, !dbg !334
  %or.cond400 = or i1 %cmp128, %cmp130, !dbg !334
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !335
  call void @llvm.dbg.value(metadata !{double %call127}, i64 0, metadata !62), !dbg !335
  %call127.maxval.8 = select i1 %or.cond400, double %call127, double %maxval.8446, !dbg !334
  %92 = trunc i64 %indvars.iv496 to i32, !dbg !334
  %jj.4.jcol.8 = select i1 %or.cond400, i32 %92, i32 %jcol.8447, !dbg !334
  br label %if.end133, !dbg !334

if.end133:                                        ; preds = %if.then119, %for.body115
  %maxval.9 = phi double [ %maxval.8446, %for.body115 ], [ %call127.maxval.8, %if.then119 ]
  %jcol.9 = phi i32 [ %jcol.8447, %for.body115 ], [ %jj.4.jcol.8, %if.then119 ]
  %93 = trunc i64 %indvars.iv493 to i32, !dbg !337
  %add134 = add nsw i32 %93, %off.4449, !dbg !337
  call void @llvm.dbg.value(metadata !{i32 %85}, i64 0, metadata !70), !dbg !337
  %indvars.iv.next497 = add i64 %indvars.iv496, 1, !dbg !326
  %indvars.iv.next494 = add i64 %indvars.iv493, -2, !dbg !326
  %lftr.wideiv498 = trunc i64 %indvars.iv.next497 to i32, !dbg !326
  %exitcond499 = icmp eq i32 %lftr.wideiv498, %irow, !dbg !326
  br i1 %exitcond499, label %for.cond113.for.cond139.preheader_crit_edge, label %for.body115, !dbg !326

for.body141:                                      ; preds = %for.body141.lr.ph, %for.inc160
  %94 = phi i32 [ %86, %for.body141.lr.ph ], [ %100, %for.inc160 ]
  %indvars.iv491 = phi i64 [ %88, %for.body141.lr.ph ], [ %indvars.iv.next492, %for.inc160 ], !dbg !328
  %indvars.iv489 = phi i64 [ %87, %for.body141.lr.ph ], [ %indvars.iv.next490, %for.inc160 ]
  %jcol.10440 = phi i32 [ %jcol.8.lcssa, %for.body141.lr.ph ], [ %jcol.11, %for.inc160 ]
  %maxval.10439 = phi double [ %maxval.8.lcssa, %for.body141.lr.ph ], [ %maxval.11, %for.inc160 ]
  %arrayidx143 = getelementptr inbounds i32* %colmark, i64 %indvars.iv491, !dbg !338
  %95 = load i32* %arrayidx143, align 4, !dbg !338, !tbaa !173
  %cmp144 = icmp eq i32 %95, %tag, !dbg !338
  br i1 %cmp144, label %if.then145, label %for.inc160, !dbg !338

if.then145:                                       ; preds = %for.body141
  %96 = trunc i64 %indvars.iv489 to i32, !dbg !340
  %mul146 = shl nsw i32 %96, 1, !dbg !340
  %idxprom147 = sext i32 %mul146 to i64, !dbg !340
  %arrayidx148 = getelementptr inbounds double* %call6, i64 %idxprom147, !dbg !340
  %97 = load double* %arrayidx148, align 8, !dbg !340, !tbaa !189
  %add150392 = or i32 %mul146, 1, !dbg !340
  %idxprom151 = sext i32 %add150392 to i64, !dbg !340
  %arrayidx152 = getelementptr inbounds double* %call6, i64 %idxprom151, !dbg !340
  %98 = load double* %arrayidx152, align 8, !dbg !340, !tbaa !189
  %call153 = call double @Zabs(double %97, double %98) #6, !dbg !340
  call void @llvm.dbg.value(metadata !{double %call153}, i64 0, metadata !63), !dbg !340
  %cmp154 = icmp eq i32 %jcol.10440, -1, !dbg !342
  %cmp156 = fcmp olt double %maxval.10439, %call153, !dbg !342
  %or.cond401 = or i1 %cmp154, %cmp156, !dbg !342
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !343
  call void @llvm.dbg.value(metadata !{double %call153}, i64 0, metadata !62), !dbg !343
  %call153.maxval.10 = select i1 %or.cond401, double %call153, double %maxval.10439, !dbg !342
  %99 = trunc i64 %indvars.iv491 to i32, !dbg !342
  %jj.5.jcol.10 = select i1 %or.cond401, i32 %99, i32 %jcol.10440, !dbg !342
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !328
  %.pre510 = load i32* %nD, align 4, !dbg !328, !tbaa !173
  br label %for.inc160, !dbg !342

for.inc160:                                       ; preds = %if.then145, %for.body141
  %100 = phi i32 [ %94, %for.body141 ], [ %.pre510, %if.then145 ], !dbg !328
  %maxval.11 = phi double [ %maxval.10439, %for.body141 ], [ %call153.maxval.10, %if.then145 ]
  %jcol.11 = phi i32 [ %jcol.10440, %for.body141 ], [ %jj.5.jcol.10, %if.then145 ]
  %indvars.iv.next492 = add i64 %indvars.iv491, 1, !dbg !328
  %indvars.iv.next490 = add i64 %indvars.iv489, 1, !dbg !328
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !328
  %101 = trunc i64 %indvars.iv.next492 to i32, !dbg !328
  %cmp140 = icmp slt i32 %101, %100, !dbg !328
  br i1 %cmp140, label %for.body141, label %if.end232, !dbg !328

if.then170:                                       ; preds = %if.then102, %if.then102
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !65), !dbg !345
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !62), !dbg !347
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !70), !dbg !348
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !349
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !349
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !350
  %cmp174463 = icmp sgt i32 %irow, 0, !dbg !350
  br i1 %cmp174463, label %for.body175.lr.ph, label %for.cond199.preheader, !dbg !350

for.body175.lr.ph:                                ; preds = %if.then170
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !69), !dbg !349
  %102 = load i32* %nU, align 4, !dbg !349, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !349
  %103 = load i32* %nD, align 4, !dbg !349, !tbaa !173
  %add171 = add nsw i32 %102, %103, !dbg !349
  %104 = sext i32 %add171 to i64
  %105 = add i32 %add171, %irow, !dbg !350
  %106 = add i32 %irow, -1, !dbg !350
  %107 = add i32 %add171, -2, !dbg !350
  %108 = mul i32 %106, %107, !dbg !350
  %109 = add i32 %105, %108, !dbg !350
  %110 = zext i32 %106 to i33, !dbg !350
  %111 = add i32 %irow, -2, !dbg !350
  %112 = zext i32 %111 to i33, !dbg !350
  %113 = mul i33 %110, %112, !dbg !350
  %114 = lshr i33 %113, 1, !dbg !350
  %115 = trunc i33 %114 to i32, !dbg !350
  br label %for.body175, !dbg !350

for.cond173.for.cond199.preheader_crit_edge:      ; preds = %if.end193
  %116 = add i32 %109, -1, !dbg !350
  %117 = sub i32 %116, %115, !dbg !350
  br label %for.cond199.preheader, !dbg !350

for.cond199.preheader:                            ; preds = %if.then170, %for.cond173.for.cond199.preheader_crit_edge
  %off.6.lcssa = phi i32 [ %117, %for.cond173.for.cond199.preheader_crit_edge ], [ %irow, %if.then170 ]
  %jcol.12.lcssa = phi i32 [ %jcol.13, %for.cond173.for.cond199.preheader_crit_edge ], [ -1, %if.then170 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond173.for.cond199.preheader_crit_edge ], [ 0.000000e+00, %if.then170 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !352
  %118 = load i32* %nD, align 4, !dbg !352, !tbaa !173
  %cmp200455 = icmp sgt i32 %118, %irow, !dbg !352
  br i1 %cmp200455, label %for.body201.lr.ph, label %if.end232, !dbg !352

for.body201.lr.ph:                                ; preds = %for.cond199.preheader
  %119 = sext i32 %off.6.lcssa to i64
  %120 = sext i32 %irow to i64, !dbg !352
  br label %for.body201, !dbg !352

for.body175:                                      ; preds = %if.end193, %for.body175.lr.ph
  %indvars.iv506 = phi i64 [ 0, %for.body175.lr.ph ], [ %indvars.iv.next507, %if.end193 ], !dbg !350
  %indvars.iv504 = phi i64 [ %104, %for.body175.lr.ph ], [ %indvars.iv.next505, %if.end193 ]
  %off.6467 = phi i32 [ %irow, %for.body175.lr.ph ], [ %add194, %if.end193 ]
  %jcol.12465 = phi i32 [ -1, %for.body175.lr.ph ], [ %jcol.13, %if.end193 ]
  %maxval.12464 = phi double [ 0.000000e+00, %for.body175.lr.ph ], [ %maxval.13, %if.end193 ]
  %indvars.iv.next505 = add i64 %indvars.iv504, -1, !dbg !350
  %arrayidx177 = getelementptr inbounds i32* %colmark, i64 %indvars.iv506, !dbg !354
  %121 = load i32* %arrayidx177, align 4, !dbg !354, !tbaa !173
  %cmp178 = icmp eq i32 %121, %tag, !dbg !354
  br i1 %cmp178, label %if.then179, label %if.end193, !dbg !354

if.then179:                                       ; preds = %for.body175
  %mul180 = shl nsw i32 %off.6467, 1, !dbg !356
  %idxprom181 = sext i32 %mul180 to i64, !dbg !356
  %arrayidx182 = getelementptr inbounds double* %call6, i64 %idxprom181, !dbg !356
  %122 = load double* %arrayidx182, align 8, !dbg !356, !tbaa !189
  %add184391 = or i32 %mul180, 1, !dbg !356
  %idxprom185 = sext i32 %add184391 to i64, !dbg !356
  %arrayidx186 = getelementptr inbounds double* %call6, i64 %idxprom185, !dbg !356
  %123 = load double* %arrayidx186, align 8, !dbg !356, !tbaa !189
  %call187 = call double @Zabs(double %122, double %123) #6, !dbg !356
  call void @llvm.dbg.value(metadata !{double %call187}, i64 0, metadata !63), !dbg !356
  %cmp188 = icmp eq i32 %jcol.12465, -1, !dbg !358
  %cmp190 = fcmp olt double %maxval.12464, %call187, !dbg !358
  %or.cond402 = or i1 %cmp188, %cmp190, !dbg !358
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !359
  call void @llvm.dbg.value(metadata !{double %call187}, i64 0, metadata !62), !dbg !359
  %call187.maxval.12 = select i1 %or.cond402, double %call187, double %maxval.12464, !dbg !358
  %124 = trunc i64 %indvars.iv506 to i32, !dbg !358
  %jj.6.jcol.12 = select i1 %or.cond402, i32 %124, i32 %jcol.12465, !dbg !358
  br label %if.end193, !dbg !358

if.end193:                                        ; preds = %if.then179, %for.body175
  %maxval.13 = phi double [ %maxval.12464, %for.body175 ], [ %call187.maxval.12, %if.then179 ]
  %jcol.13 = phi i32 [ %jcol.12465, %for.body175 ], [ %jj.6.jcol.12, %if.then179 ]
  %125 = trunc i64 %indvars.iv.next505 to i32, !dbg !361
  %add194 = add nsw i32 %125, %off.6467, !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %117}, i64 0, metadata !70), !dbg !361
  %indvars.iv.next507 = add i64 %indvars.iv506, 1, !dbg !350
  %lftr.wideiv508 = trunc i64 %indvars.iv.next507 to i32, !dbg !350
  %exitcond509 = icmp eq i32 %lftr.wideiv508, %irow, !dbg !350
  br i1 %exitcond509, label %for.cond173.for.cond199.preheader_crit_edge, label %for.body175, !dbg !350

for.body201:                                      ; preds = %for.body201.lr.ph, %for.inc220
  %126 = phi i32 [ %118, %for.body201.lr.ph ], [ %132, %for.inc220 ]
  %indvars.iv502 = phi i64 [ %120, %for.body201.lr.ph ], [ %indvars.iv.next503, %for.inc220 ], !dbg !352
  %indvars.iv500 = phi i64 [ %119, %for.body201.lr.ph ], [ %indvars.iv.next501, %for.inc220 ]
  %jcol.14457 = phi i32 [ %jcol.12.lcssa, %for.body201.lr.ph ], [ %jcol.15, %for.inc220 ]
  %maxval.14456 = phi double [ %maxval.12.lcssa, %for.body201.lr.ph ], [ %maxval.15, %for.inc220 ]
  %arrayidx203 = getelementptr inbounds i32* %colmark, i64 %indvars.iv502, !dbg !362
  %127 = load i32* %arrayidx203, align 4, !dbg !362, !tbaa !173
  %cmp204 = icmp eq i32 %127, %tag, !dbg !362
  br i1 %cmp204, label %if.then205, label %for.inc220, !dbg !362

if.then205:                                       ; preds = %for.body201
  %128 = trunc i64 %indvars.iv500 to i32, !dbg !364
  %mul206 = shl nsw i32 %128, 1, !dbg !364
  %idxprom207 = sext i32 %mul206 to i64, !dbg !364
  %arrayidx208 = getelementptr inbounds double* %call6, i64 %idxprom207, !dbg !364
  %129 = load double* %arrayidx208, align 8, !dbg !364, !tbaa !189
  %add210390 = or i32 %mul206, 1, !dbg !364
  %idxprom211 = sext i32 %add210390 to i64, !dbg !364
  %arrayidx212 = getelementptr inbounds double* %call6, i64 %idxprom211, !dbg !364
  %130 = load double* %arrayidx212, align 8, !dbg !364, !tbaa !189
  %call213 = call double @Zabs(double %129, double %130) #6, !dbg !364
  call void @llvm.dbg.value(metadata !{double %call213}, i64 0, metadata !63), !dbg !364
  %cmp214 = icmp eq i32 %jcol.14457, -1, !dbg !366
  %cmp216 = fcmp olt double %maxval.14456, %call213, !dbg !366
  %or.cond403 = or i1 %cmp214, %cmp216, !dbg !366
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !65), !dbg !367
  call void @llvm.dbg.value(metadata !{double %call213}, i64 0, metadata !62), !dbg !367
  %call213.maxval.14 = select i1 %or.cond403, double %call213, double %maxval.14456, !dbg !366
  %131 = trunc i64 %indvars.iv502 to i32, !dbg !366
  %jj.7.jcol.14 = select i1 %or.cond403, i32 %131, i32 %jcol.14457, !dbg !366
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !352
  %.pre511 = load i32* %nD, align 4, !dbg !352, !tbaa !173
  br label %for.inc220, !dbg !366

for.inc220:                                       ; preds = %if.then205, %for.body201
  %132 = phi i32 [ %126, %for.body201 ], [ %.pre511, %if.then205 ], !dbg !352
  %maxval.15 = phi double [ %maxval.14456, %for.body201 ], [ %call213.maxval.14, %if.then205 ]
  %jcol.15 = phi i32 [ %jcol.14457, %for.body201 ], [ %jj.7.jcol.14, %if.then205 ]
  %indvars.iv.next503 = add i64 %indvars.iv502, 1, !dbg !352
  %indvars.iv.next501 = add i64 %indvars.iv500, 1, !dbg !352
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !67), !dbg !352
  %133 = trunc i64 %indvars.iv.next503 to i32, !dbg !352
  %cmp200 = icmp slt i32 %133, %132, !dbg !352
  br i1 %cmp200, label %for.body201, label %if.end232, !dbg !352

if.else224:                                       ; preds = %if.then102
  %134 = load %struct._IO_FILE** @stderr, align 8, !dbg !369, !tbaa !166
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([94 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval, i32 %63) #6, !dbg !369
  call void @exit(i32 -1) #7, !dbg !371
  unreachable, !dbg !371

if.else229:                                       ; preds = %if.end
  %135 = load %struct._IO_FILE** @stderr, align 8, !dbg !372, !tbaa !166
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([103 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32* %colmark, i32 %tag, double* %pmaxval) #6, !dbg !372
  call void @exit(i32 -1) #7, !dbg !374
  unreachable, !dbg !374

if.end232:                                        ; preds = %for.cond199.preheader, %for.inc220, %for.cond139.preheader, %for.inc160, %for.cond74.preheader, %for.inc90, %for.cond29.preheader, %for.inc45
  %maxval.16 = phi double [ %maxval.0.lcssa, %for.cond29.preheader ], [ %maxval.3, %for.inc45 ], [ %maxval.4.lcssa, %for.cond74.preheader ], [ %maxval.7, %for.inc90 ], [ %maxval.8.lcssa, %for.cond139.preheader ], [ %maxval.11, %for.inc160 ], [ %maxval.12.lcssa, %for.cond199.preheader ], [ %maxval.15, %for.inc220 ]
  %jcol.16 = phi i32 [ %jcol.0.lcssa, %for.cond29.preheader ], [ %jcol.3, %for.inc45 ], [ %jcol.4.lcssa, %for.cond74.preheader ], [ %jcol.7, %for.inc90 ], [ %jcol.8.lcssa, %for.cond139.preheader ], [ %jcol.11, %for.inc160 ], [ %jcol.12.lcssa, %for.cond199.preheader ], [ %jcol.15, %for.inc220 ]
  store double %maxval.16, double* %pmaxval, align 8, !dbg !375, !tbaa !189
  ret i32 %jcol.16, !dbg !376
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInColumn11(%struct._Chv* %chv, i32 %jcol, i32* %rowmark, i32 %tag, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !74), !dbg !377
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !75), !dbg !378
  call void @llvm.dbg.value(metadata !{i32* %rowmark}, i64 0, metadata !76), !dbg !379
  call void @llvm.dbg.value(metadata !{i32 %tag}, i64 0, metadata !77), !dbg !380
  call void @llvm.dbg.value(metadata !{double* %pmaxval}, i64 0, metadata !78), !dbg !381
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !84), !dbg !382
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !85), !dbg !382
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !86), !dbg !382
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !383
  %cmp1 = icmp slt i32 %jcol, 0, !dbg !383
  %or.cond = or i1 %cmp, %cmp1, !dbg !383
  %cmp3 = icmp eq i32* %rowmark, null, !dbg !383
  %or.cond376 = or i1 %or.cond, %cmp3, !dbg !383
  %cmp5 = icmp eq double* %pmaxval, null, !dbg !383
  %or.cond377 = or i1 %or.cond376, %cmp5, !dbg !383
  br i1 %or.cond377, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !384, !tbaa !166
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, i32* %rowmark, i32 %tag, double* %pmaxval) #6, !dbg !384
  call void @exit(i32 -1) #7, !dbg !386
  unreachable, !dbg !386

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !387
  %call6 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !388
  call void @llvm.dbg.value(metadata !{double* %call6}, i64 0, metadata !81), !dbg !388
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !82), !dbg !389
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !79), !dbg !390
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !391
  %1 = load i32* %type, align 4, !dbg !391, !tbaa !173
  switch i32 %1, label %if.else223 [
    i32 1, label %if.then8
    i32 2, label %if.then99
  ], !dbg !391

if.then8:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !392
  %2 = load i32* %symflag, align 4, !dbg !392, !tbaa !173
  switch i32 %2, label %if.end226 [
    i32 2, label %if.then10
    i32 0, label %if.then50
  ], !dbg !392

if.then10:                                        ; preds = %if.then8
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !79), !dbg !394
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !396
  %3 = load i32* %nD, align 4, !dbg !396, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !85), !dbg !396
  %4 = load i32* %nL, align 4, !dbg !396, !tbaa !173
  %add = add i32 %jcol, -1, !dbg !396
  %add11 = add i32 %add, %3, !dbg !396
  %sub = add i32 %add11, %4, !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !87), !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !397
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !398
  %cmp15392 = icmp sgt i32 %jcol, 0, !dbg !398
  br i1 %cmp15392, label %for.body.lr.ph, label %for.cond29.preheader, !dbg !398

for.body.lr.ph:                                   ; preds = %if.then10
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !397
  %5 = load i32* %nU, align 4, !dbg !397, !tbaa !173
  %6 = add i32 %4, %5, !dbg !398
  %7 = shl i32 %3, 1, !dbg !398
  %8 = add i32 %6, %7, !dbg !398
  %9 = add i32 %8, -3, !dbg !398
  %10 = sext i32 %9 to i64
  %11 = add i32 %5, %jcol, !dbg !398
  %12 = add i32 %8, -5, !dbg !398
  %13 = mul i32 %add, %12, !dbg !398
  %14 = add i32 %11, %13, !dbg !398
  %15 = mul i32 %3, 3, !dbg !398
  %16 = add i32 %14, %15, !dbg !398
  %17 = shl i32 %4, 1, !dbg !398
  %18 = add i32 %16, %17, !dbg !398
  %19 = add i32 %jcol, -2, !dbg !398
  %20 = mul i32 %add, %19, !dbg !398
  %21 = and i32 %20, -2, !dbg !398
  br label %for.body, !dbg !398

for.cond.for.cond29.preheader_crit_edge:          ; preds = %if.end26
  %22 = add i32 %18, -4, !dbg !398
  %23 = sub i32 %22, %21, !dbg !398
  br label %for.cond29.preheader, !dbg !398

for.cond29.preheader:                             ; preds = %for.cond.for.cond29.preheader_crit_edge, %if.then10
  %off.0.lcssa = phi i32 [ %23, %for.cond.for.cond29.preheader_crit_edge ], [ %sub, %if.then10 ]
  %irow.0.lcssa = phi i32 [ %irow.1, %for.cond.for.cond29.preheader_crit_edge ], [ -1, %if.then10 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond29.preheader_crit_edge ], [ 0.000000e+00, %if.then10 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !400
  %cmp30386 = icmp sgt i32 %3, %jcol, !dbg !400
  br i1 %cmp30386, label %for.body31.lr.ph, label %if.end226, !dbg !400

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !400
  %24 = sext i32 %off.0.lcssa to i64
  %25 = sext i32 %jcol to i64, !dbg !400
  br label %for.body31, !dbg !400

for.body:                                         ; preds = %if.end26, %for.body.lr.ph
  %indvars.iv459 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next460, %if.end26 ], !dbg !398
  %indvars.iv456 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next457, %if.end26 ]
  %off.0396 = phi i32 [ %sub, %for.body.lr.ph ], [ %add27, %if.end26 ]
  %irow.0394 = phi i32 [ -1, %for.body.lr.ph ], [ %irow.1, %if.end26 ]
  %maxval.0393 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %if.end26 ]
  %arrayidx = getelementptr inbounds i32* %rowmark, i64 %indvars.iv459, !dbg !402
  %26 = load i32* %arrayidx, align 4, !dbg !402, !tbaa !173
  %cmp16 = icmp eq i32 %26, %tag, !dbg !402
  br i1 %cmp16, label %if.then17, label %if.end26, !dbg !402

if.then17:                                        ; preds = %for.body
  %idxprom18 = sext i32 %off.0396 to i64, !dbg !404
  %arrayidx19 = getelementptr inbounds double* %call6, i64 %idxprom18, !dbg !404
  %27 = load double* %arrayidx19, align 8, !dbg !404, !tbaa !189
  %call20 = call double @fabs(double %27) #8, !dbg !404
  call void @llvm.dbg.value(metadata !{double %call20}, i64 0, metadata !80), !dbg !404
  %cmp21 = icmp eq i32 %irow.0394, -1, !dbg !406
  %cmp23 = fcmp olt double %maxval.0393, %call20, !dbg !406
  %or.cond378 = or i1 %cmp21, %cmp23, !dbg !406
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !407
  call void @llvm.dbg.value(metadata !{double %call20}, i64 0, metadata !79), !dbg !407
  %call20.maxval.0 = select i1 %or.cond378, double %call20, double %maxval.0393, !dbg !406
  %28 = trunc i64 %indvars.iv459 to i32, !dbg !406
  %ii.0.irow.0 = select i1 %or.cond378, i32 %28, i32 %irow.0394, !dbg !406
  br label %if.end26, !dbg !406

if.end26:                                         ; preds = %if.then17, %for.body
  %maxval.1 = phi double [ %maxval.0393, %for.body ], [ %call20.maxval.0, %if.then17 ]
  %irow.1 = phi i32 [ %irow.0394, %for.body ], [ %ii.0.irow.0, %if.then17 ]
  %29 = trunc i64 %indvars.iv456 to i32, !dbg !409
  %add27 = add nsw i32 %29, %off.0396, !dbg !409
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !87), !dbg !409
  %indvars.iv.next460 = add i64 %indvars.iv459, 1, !dbg !398
  %indvars.iv.next457 = add i64 %indvars.iv456, -2, !dbg !398
  %lftr.wideiv = trunc i64 %indvars.iv.next460 to i32, !dbg !398
  %exitcond = icmp eq i32 %lftr.wideiv, %jcol, !dbg !398
  br i1 %exitcond, label %for.cond.for.cond29.preheader_crit_edge, label %for.body, !dbg !398

for.body31:                                       ; preds = %for.body31.lr.ph, %for.inc45
  %indvars.iv454 = phi i64 [ %25, %for.body31.lr.ph ], [ %indvars.iv.next455, %for.inc45 ], !dbg !400
  %indvars.iv = phi i64 [ %24, %for.body31.lr.ph ], [ %indvars.iv.next, %for.inc45 ]
  %irow.2388 = phi i32 [ %irow.0.lcssa, %for.body31.lr.ph ], [ %irow.3, %for.inc45 ]
  %maxval.2387 = phi double [ %maxval.0.lcssa, %for.body31.lr.ph ], [ %maxval.3, %for.inc45 ]
  %arrayidx33 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv454, !dbg !410
  %30 = load i32* %arrayidx33, align 4, !dbg !410, !tbaa !173
  %cmp34 = icmp eq i32 %30, %tag, !dbg !410
  br i1 %cmp34, label %if.then35, label %for.inc45, !dbg !410

if.then35:                                        ; preds = %for.body31
  %arrayidx37 = getelementptr inbounds double* %call6, i64 %indvars.iv, !dbg !412
  %31 = load double* %arrayidx37, align 8, !dbg !412, !tbaa !189
  %call38 = call double @fabs(double %31) #8, !dbg !412
  call void @llvm.dbg.value(metadata !{double %call38}, i64 0, metadata !80), !dbg !412
  %cmp39 = icmp eq i32 %irow.2388, -1, !dbg !414
  %cmp41 = fcmp olt double %maxval.2387, %call38, !dbg !414
  %or.cond379 = or i1 %cmp39, %cmp41, !dbg !414
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !415
  call void @llvm.dbg.value(metadata !{double %call38}, i64 0, metadata !79), !dbg !415
  %call38.maxval.2 = select i1 %or.cond379, double %call38, double %maxval.2387, !dbg !414
  %32 = trunc i64 %indvars.iv454 to i32, !dbg !414
  %ii.1.irow.2 = select i1 %or.cond379, i32 %32, i32 %irow.2388, !dbg !414
  br label %for.inc45, !dbg !414

for.inc45:                                        ; preds = %if.then35, %for.body31
  %maxval.3 = phi double [ %maxval.2387, %for.body31 ], [ %call38.maxval.2, %if.then35 ]
  %irow.3 = phi i32 [ %irow.2388, %for.body31 ], [ %ii.1.irow.2, %if.then35 ]
  %indvars.iv.next455 = add i64 %indvars.iv454, 1, !dbg !400
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !400
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !400
  %33 = trunc i64 %indvars.iv.next455 to i32, !dbg !400
  %cmp30 = icmp slt i32 %33, %3, !dbg !400
  br i1 %cmp30, label %for.body31, label %if.end226, !dbg !400

if.then50:                                        ; preds = %if.then8
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !79), !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !87), !dbg !419
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !420
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !420
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !421
  %cmp54410 = icmp sgt i32 %jcol, 0, !dbg !421
  br i1 %cmp54410, label %for.body55.lr.ph, label %if.then50.for.cond74.preheader_crit_edge, !dbg !421

if.then50.for.cond74.preheader_crit_edge:         ; preds = %if.then50
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !423
  %.pre494 = load i32* %nD, align 4, !dbg !423, !tbaa !173
  br label %for.cond74.preheader, !dbg !421

for.body55.lr.ph:                                 ; preds = %if.then50
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !420
  %34 = load i32* %nU, align 4, !dbg !420, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !420
  %35 = load i32* %nD, align 4, !dbg !420, !tbaa !173
  %add51 = add nsw i32 %34, %35, !dbg !420
  %36 = sext i32 %add51 to i64
  %37 = add i32 %add51, %jcol, !dbg !421
  %38 = add i32 %jcol, -1, !dbg !421
  %39 = add i32 %add51, -2, !dbg !421
  %40 = mul i32 %38, %39, !dbg !421
  %41 = add i32 %37, %40, !dbg !421
  %42 = zext i32 %38 to i33, !dbg !421
  %43 = add i32 %jcol, -2, !dbg !421
  %44 = zext i32 %43 to i33, !dbg !421
  %45 = mul i33 %42, %44, !dbg !421
  %46 = lshr i33 %45, 1, !dbg !421
  %47 = trunc i33 %46 to i32, !dbg !421
  br label %for.body55, !dbg !421

for.cond53.for.cond74.preheader_crit_edge:        ; preds = %if.end68
  %48 = add i32 %41, -1, !dbg !421
  %49 = sub i32 %48, %47, !dbg !421
  br label %for.cond74.preheader, !dbg !421

for.cond74.preheader:                             ; preds = %if.then50.for.cond74.preheader_crit_edge, %for.cond53.for.cond74.preheader_crit_edge
  %50 = phi i32 [ %35, %for.cond53.for.cond74.preheader_crit_edge ], [ %.pre494, %if.then50.for.cond74.preheader_crit_edge ]
  %off.2.lcssa = phi i32 [ %49, %for.cond53.for.cond74.preheader_crit_edge ], [ %jcol, %if.then50.for.cond74.preheader_crit_edge ]
  %irow.4.lcssa = phi i32 [ %irow.5, %for.cond53.for.cond74.preheader_crit_edge ], [ -1, %if.then50.for.cond74.preheader_crit_edge ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond53.for.cond74.preheader_crit_edge ], [ 0.000000e+00, %if.then50.for.cond74.preheader_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !423
  %cmp75402 = icmp sgt i32 %50, %jcol, !dbg !423
  br i1 %cmp75402, label %for.body76.lr.ph, label %if.end226, !dbg !423

for.body76.lr.ph:                                 ; preds = %for.cond74.preheader
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !423
  %51 = sext i32 %off.2.lcssa to i64
  %52 = sext i32 %jcol to i64, !dbg !423
  br label %for.body76, !dbg !423

for.body55:                                       ; preds = %if.end68, %for.body55.lr.ph
  %indvars.iv467 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next468, %if.end68 ], !dbg !421
  %indvars.iv465 = phi i64 [ %36, %for.body55.lr.ph ], [ %indvars.iv.next466, %if.end68 ]
  %off.2414 = phi i32 [ %jcol, %for.body55.lr.ph ], [ %add69, %if.end68 ]
  %irow.4412 = phi i32 [ -1, %for.body55.lr.ph ], [ %irow.5, %if.end68 ]
  %maxval.4411 = phi double [ 0.000000e+00, %for.body55.lr.ph ], [ %maxval.5, %if.end68 ]
  %indvars.iv.next466 = add i64 %indvars.iv465, -1, !dbg !421
  %arrayidx57 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv467, !dbg !425
  %53 = load i32* %arrayidx57, align 4, !dbg !425, !tbaa !173
  %cmp58 = icmp eq i32 %53, %tag, !dbg !425
  br i1 %cmp58, label %if.then59, label %if.end68, !dbg !425

if.then59:                                        ; preds = %for.body55
  %idxprom60 = sext i32 %off.2414 to i64, !dbg !427
  %arrayidx61 = getelementptr inbounds double* %call6, i64 %idxprom60, !dbg !427
  %54 = load double* %arrayidx61, align 8, !dbg !427, !tbaa !189
  %call62 = call double @fabs(double %54) #8, !dbg !427
  call void @llvm.dbg.value(metadata !{double %call62}, i64 0, metadata !80), !dbg !427
  %cmp63 = icmp eq i32 %irow.4412, -1, !dbg !429
  %cmp65 = fcmp olt double %maxval.4411, %call62, !dbg !429
  %or.cond380 = or i1 %cmp63, %cmp65, !dbg !429
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !430
  call void @llvm.dbg.value(metadata !{double %call62}, i64 0, metadata !79), !dbg !430
  %call62.maxval.4 = select i1 %or.cond380, double %call62, double %maxval.4411, !dbg !429
  %55 = trunc i64 %indvars.iv467 to i32, !dbg !429
  %ii.2.irow.4 = select i1 %or.cond380, i32 %55, i32 %irow.4412, !dbg !429
  br label %if.end68, !dbg !429

if.end68:                                         ; preds = %if.then59, %for.body55
  %maxval.5 = phi double [ %maxval.4411, %for.body55 ], [ %call62.maxval.4, %if.then59 ]
  %irow.5 = phi i32 [ %irow.4412, %for.body55 ], [ %ii.2.irow.4, %if.then59 ]
  %56 = trunc i64 %indvars.iv.next466 to i32, !dbg !432
  %add69 = add nsw i32 %56, %off.2414, !dbg !432
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !87), !dbg !432
  %indvars.iv.next468 = add i64 %indvars.iv467, 1, !dbg !421
  %lftr.wideiv469 = trunc i64 %indvars.iv.next468 to i32, !dbg !421
  %exitcond470 = icmp eq i32 %lftr.wideiv469, %jcol, !dbg !421
  br i1 %exitcond470, label %for.cond53.for.cond74.preheader_crit_edge, label %for.body55, !dbg !421

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc90
  %indvars.iv463 = phi i64 [ %52, %for.body76.lr.ph ], [ %indvars.iv.next464, %for.inc90 ], !dbg !423
  %indvars.iv461 = phi i64 [ %51, %for.body76.lr.ph ], [ %indvars.iv.next462, %for.inc90 ]
  %irow.6404 = phi i32 [ %irow.4.lcssa, %for.body76.lr.ph ], [ %irow.7, %for.inc90 ]
  %maxval.6403 = phi double [ %maxval.4.lcssa, %for.body76.lr.ph ], [ %maxval.7, %for.inc90 ]
  %arrayidx78 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv463, !dbg !433
  %57 = load i32* %arrayidx78, align 4, !dbg !433, !tbaa !173
  %cmp79 = icmp eq i32 %57, %tag, !dbg !433
  br i1 %cmp79, label %if.then80, label %for.inc90, !dbg !433

if.then80:                                        ; preds = %for.body76
  %arrayidx82 = getelementptr inbounds double* %call6, i64 %indvars.iv461, !dbg !435
  %58 = load double* %arrayidx82, align 8, !dbg !435, !tbaa !189
  %call83 = call double @fabs(double %58) #8, !dbg !435
  call void @llvm.dbg.value(metadata !{double %call83}, i64 0, metadata !80), !dbg !435
  %cmp84 = icmp eq i32 %irow.6404, -1, !dbg !437
  %cmp86 = fcmp olt double %maxval.6403, %call83, !dbg !437
  %or.cond381 = or i1 %cmp84, %cmp86, !dbg !437
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !438
  call void @llvm.dbg.value(metadata !{double %call83}, i64 0, metadata !79), !dbg !438
  %call83.maxval.6 = select i1 %or.cond381, double %call83, double %maxval.6403, !dbg !437
  %59 = trunc i64 %indvars.iv463 to i32, !dbg !437
  %ii.3.irow.6 = select i1 %or.cond381, i32 %59, i32 %irow.6404, !dbg !437
  br label %for.inc90, !dbg !437

for.inc90:                                        ; preds = %if.then80, %for.body76
  %maxval.7 = phi double [ %maxval.6403, %for.body76 ], [ %call83.maxval.6, %if.then80 ]
  %irow.7 = phi i32 [ %irow.6404, %for.body76 ], [ %ii.3.irow.6, %if.then80 ]
  %indvars.iv.next464 = add i64 %indvars.iv463, 1, !dbg !423
  %indvars.iv.next462 = add i64 %indvars.iv461, 1, !dbg !423
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !423
  %60 = trunc i64 %indvars.iv.next464 to i32, !dbg !423
  %cmp75 = icmp slt i32 %60, %50, !dbg !423
  br i1 %cmp75, label %for.body76, label %if.end226, !dbg !423

if.then99:                                        ; preds = %if.end
  %symflag100 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !440
  %61 = load i32* %symflag100, align 4, !dbg !440, !tbaa !173
  switch i32 %61, label %if.end226 [
    i32 2, label %if.then102
    i32 0, label %if.then167
    i32 1, label %if.then167
  ], !dbg !440

if.then102:                                       ; preds = %if.then99
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !79), !dbg !442
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !444
  %62 = load i32* %nD, align 4, !dbg !444, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !85), !dbg !444
  %63 = load i32* %nL, align 4, !dbg !444, !tbaa !173
  %add103 = add i32 %jcol, -1, !dbg !444
  %add104 = add i32 %add103, %62, !dbg !444
  %sub105 = add i32 %add104, %63, !dbg !444
  call void @llvm.dbg.value(metadata !{i32 %sub105}, i64 0, metadata !87), !dbg !444
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !445
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !446
  %cmp111427 = icmp sgt i32 %jcol, 0, !dbg !446
  br i1 %cmp111427, label %for.body112.lr.ph, label %for.cond136.preheader, !dbg !446

for.body112.lr.ph:                                ; preds = %if.then102
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !445
  %64 = load i32* %nU, align 4, !dbg !445, !tbaa !173
  %65 = add i32 %63, %64, !dbg !446
  %66 = shl i32 %62, 1, !dbg !446
  %67 = add i32 %65, %66, !dbg !446
  %68 = add i32 %67, -3, !dbg !446
  %69 = sext i32 %68 to i64
  %70 = add i32 %64, %jcol, !dbg !446
  %71 = add i32 %67, -5, !dbg !446
  %72 = mul i32 %add103, %71, !dbg !446
  %73 = add i32 %70, %72, !dbg !446
  %74 = mul i32 %62, 3, !dbg !446
  %75 = add i32 %73, %74, !dbg !446
  %76 = shl i32 %63, 1, !dbg !446
  %77 = add i32 %75, %76, !dbg !446
  %78 = add i32 %jcol, -2, !dbg !446
  %79 = mul i32 %add103, %78, !dbg !446
  %80 = and i32 %79, -2, !dbg !446
  br label %for.body112, !dbg !446

for.cond110.for.cond136.preheader_crit_edge:      ; preds = %if.end130
  %81 = add i32 %77, -4, !dbg !446
  %82 = sub i32 %81, %80, !dbg !446
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !448
  %.pre = load i32* %nD, align 4, !dbg !448, !tbaa !173
  br label %for.cond136.preheader, !dbg !446

for.cond136.preheader:                            ; preds = %for.cond110.for.cond136.preheader_crit_edge, %if.then102
  %83 = phi i32 [ %.pre, %for.cond110.for.cond136.preheader_crit_edge ], [ %62, %if.then102 ]
  %off.4.lcssa = phi i32 [ %82, %for.cond110.for.cond136.preheader_crit_edge ], [ %sub105, %if.then102 ]
  %irow.8.lcssa = phi i32 [ %irow.9, %for.cond110.for.cond136.preheader_crit_edge ], [ -1, %if.then102 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond110.for.cond136.preheader_crit_edge ], [ 0.000000e+00, %if.then102 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !448
  %cmp137420 = icmp sgt i32 %83, %jcol, !dbg !448
  br i1 %cmp137420, label %for.body138.lr.ph, label %if.end226, !dbg !448

for.body138.lr.ph:                                ; preds = %for.cond136.preheader
  %84 = sext i32 %off.4.lcssa to i64
  %85 = sext i32 %jcol to i64, !dbg !448
  br label %for.body138, !dbg !448

for.body112:                                      ; preds = %if.end130, %for.body112.lr.ph
  %indvars.iv478 = phi i64 [ 0, %for.body112.lr.ph ], [ %indvars.iv.next479, %if.end130 ], !dbg !446
  %indvars.iv475 = phi i64 [ %69, %for.body112.lr.ph ], [ %indvars.iv.next476, %if.end130 ]
  %off.4431 = phi i32 [ %sub105, %for.body112.lr.ph ], [ %add131, %if.end130 ]
  %irow.8429 = phi i32 [ -1, %for.body112.lr.ph ], [ %irow.9, %if.end130 ]
  %maxval.8428 = phi double [ 0.000000e+00, %for.body112.lr.ph ], [ %maxval.9, %if.end130 ]
  %arrayidx114 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv478, !dbg !450
  %86 = load i32* %arrayidx114, align 4, !dbg !450, !tbaa !173
  %cmp115 = icmp eq i32 %86, %tag, !dbg !450
  br i1 %cmp115, label %if.then116, label %if.end130, !dbg !450

if.then116:                                       ; preds = %for.body112
  %mul117 = shl nsw i32 %off.4431, 1, !dbg !452
  %idxprom118 = sext i32 %mul117 to i64, !dbg !452
  %arrayidx119 = getelementptr inbounds double* %call6, i64 %idxprom118, !dbg !452
  %87 = load double* %arrayidx119, align 8, !dbg !452, !tbaa !189
  %add121375 = or i32 %mul117, 1, !dbg !452
  %idxprom122 = sext i32 %add121375 to i64, !dbg !452
  %arrayidx123 = getelementptr inbounds double* %call6, i64 %idxprom122, !dbg !452
  %88 = load double* %arrayidx123, align 8, !dbg !452, !tbaa !189
  %call124 = call double @Zabs(double %87, double %88) #6, !dbg !452
  call void @llvm.dbg.value(metadata !{double %call124}, i64 0, metadata !80), !dbg !452
  %cmp125 = icmp eq i32 %irow.8429, -1, !dbg !454
  %cmp127 = fcmp olt double %maxval.8428, %call124, !dbg !454
  %or.cond382 = or i1 %cmp125, %cmp127, !dbg !454
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !455
  call void @llvm.dbg.value(metadata !{double %call124}, i64 0, metadata !79), !dbg !455
  %call124.maxval.8 = select i1 %or.cond382, double %call124, double %maxval.8428, !dbg !454
  %89 = trunc i64 %indvars.iv478 to i32, !dbg !454
  %ii.4.irow.8 = select i1 %or.cond382, i32 %89, i32 %irow.8429, !dbg !454
  br label %if.end130, !dbg !454

if.end130:                                        ; preds = %if.then116, %for.body112
  %maxval.9 = phi double [ %maxval.8428, %for.body112 ], [ %call124.maxval.8, %if.then116 ]
  %irow.9 = phi i32 [ %irow.8429, %for.body112 ], [ %ii.4.irow.8, %if.then116 ]
  %90 = trunc i64 %indvars.iv475 to i32, !dbg !457
  %add131 = add nsw i32 %90, %off.4431, !dbg !457
  call void @llvm.dbg.value(metadata !{i32 %82}, i64 0, metadata !87), !dbg !457
  %indvars.iv.next479 = add i64 %indvars.iv478, 1, !dbg !446
  %indvars.iv.next476 = add i64 %indvars.iv475, -2, !dbg !446
  %lftr.wideiv480 = trunc i64 %indvars.iv.next479 to i32, !dbg !446
  %exitcond481 = icmp eq i32 %lftr.wideiv480, %jcol, !dbg !446
  br i1 %exitcond481, label %for.cond110.for.cond136.preheader_crit_edge, label %for.body112, !dbg !446

for.body138:                                      ; preds = %for.body138.lr.ph, %for.inc157
  %91 = phi i32 [ %83, %for.body138.lr.ph ], [ %97, %for.inc157 ]
  %indvars.iv473 = phi i64 [ %85, %for.body138.lr.ph ], [ %indvars.iv.next474, %for.inc157 ], !dbg !448
  %indvars.iv471 = phi i64 [ %84, %for.body138.lr.ph ], [ %indvars.iv.next472, %for.inc157 ]
  %irow.10422 = phi i32 [ %irow.8.lcssa, %for.body138.lr.ph ], [ %irow.11, %for.inc157 ]
  %maxval.10421 = phi double [ %maxval.8.lcssa, %for.body138.lr.ph ], [ %maxval.11, %for.inc157 ]
  %arrayidx140 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv473, !dbg !458
  %92 = load i32* %arrayidx140, align 4, !dbg !458, !tbaa !173
  %cmp141 = icmp eq i32 %92, %tag, !dbg !458
  br i1 %cmp141, label %if.then142, label %for.inc157, !dbg !458

if.then142:                                       ; preds = %for.body138
  %93 = trunc i64 %indvars.iv471 to i32, !dbg !460
  %mul143 = shl nsw i32 %93, 1, !dbg !460
  %idxprom144 = sext i32 %mul143 to i64, !dbg !460
  %arrayidx145 = getelementptr inbounds double* %call6, i64 %idxprom144, !dbg !460
  %94 = load double* %arrayidx145, align 8, !dbg !460, !tbaa !189
  %add147374 = or i32 %mul143, 1, !dbg !460
  %idxprom148 = sext i32 %add147374 to i64, !dbg !460
  %arrayidx149 = getelementptr inbounds double* %call6, i64 %idxprom148, !dbg !460
  %95 = load double* %arrayidx149, align 8, !dbg !460, !tbaa !189
  %call150 = call double @Zabs(double %94, double %95) #6, !dbg !460
  call void @llvm.dbg.value(metadata !{double %call150}, i64 0, metadata !80), !dbg !460
  %cmp151 = icmp eq i32 %irow.10422, -1, !dbg !462
  %cmp153 = fcmp olt double %maxval.10421, %call150, !dbg !462
  %or.cond383 = or i1 %cmp151, %cmp153, !dbg !462
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !463
  call void @llvm.dbg.value(metadata !{double %call150}, i64 0, metadata !79), !dbg !463
  %call150.maxval.10 = select i1 %or.cond383, double %call150, double %maxval.10421, !dbg !462
  %96 = trunc i64 %indvars.iv473 to i32, !dbg !462
  %ii.5.irow.10 = select i1 %or.cond383, i32 %96, i32 %irow.10422, !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !448
  %.pre492 = load i32* %nD, align 4, !dbg !448, !tbaa !173
  br label %for.inc157, !dbg !462

for.inc157:                                       ; preds = %if.then142, %for.body138
  %97 = phi i32 [ %91, %for.body138 ], [ %.pre492, %if.then142 ], !dbg !448
  %maxval.11 = phi double [ %maxval.10421, %for.body138 ], [ %call150.maxval.10, %if.then142 ]
  %irow.11 = phi i32 [ %irow.10422, %for.body138 ], [ %ii.5.irow.10, %if.then142 ]
  %indvars.iv.next474 = add i64 %indvars.iv473, 1, !dbg !448
  %indvars.iv.next472 = add i64 %indvars.iv471, -1, !dbg !448
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !448
  %98 = trunc i64 %indvars.iv.next474 to i32, !dbg !448
  %cmp137 = icmp slt i32 %98, %97, !dbg !448
  br i1 %cmp137, label %for.body138, label %if.end226, !dbg !448

if.then167:                                       ; preds = %if.then99, %if.then99
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !79), !dbg !465
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !87), !dbg !467
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !468
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !468
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !469
  %cmp171445 = icmp sgt i32 %jcol, 0, !dbg !469
  br i1 %cmp171445, label %for.body172.lr.ph, label %for.cond196.preheader, !dbg !469

for.body172.lr.ph:                                ; preds = %if.then167
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !86), !dbg !468
  %99 = load i32* %nU, align 4, !dbg !468, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !468
  %100 = load i32* %nD, align 4, !dbg !468, !tbaa !173
  %add168 = add nsw i32 %99, %100, !dbg !468
  %101 = sext i32 %add168 to i64
  %102 = add i32 %add168, %jcol, !dbg !469
  %103 = add i32 %jcol, -1, !dbg !469
  %104 = add i32 %add168, -2, !dbg !469
  %105 = mul i32 %103, %104, !dbg !469
  %106 = add i32 %102, %105, !dbg !469
  %107 = zext i32 %103 to i33, !dbg !469
  %108 = add i32 %jcol, -2, !dbg !469
  %109 = zext i32 %108 to i33, !dbg !469
  %110 = mul i33 %107, %109, !dbg !469
  %111 = lshr i33 %110, 1, !dbg !469
  %112 = trunc i33 %111 to i32, !dbg !469
  br label %for.body172, !dbg !469

for.cond170.for.cond196.preheader_crit_edge:      ; preds = %if.end190
  %113 = add i32 %106, -1, !dbg !469
  %114 = sub i32 %113, %112, !dbg !469
  br label %for.cond196.preheader, !dbg !469

for.cond196.preheader:                            ; preds = %if.then167, %for.cond170.for.cond196.preheader_crit_edge
  %off.6.lcssa = phi i32 [ %114, %for.cond170.for.cond196.preheader_crit_edge ], [ %jcol, %if.then167 ]
  %irow.12.lcssa = phi i32 [ %irow.13, %for.cond170.for.cond196.preheader_crit_edge ], [ -1, %if.then167 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond170.for.cond196.preheader_crit_edge ], [ 0.000000e+00, %if.then167 ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !471
  %115 = load i32* %nD, align 4, !dbg !471, !tbaa !173
  %cmp197437 = icmp sgt i32 %115, %jcol, !dbg !471
  br i1 %cmp197437, label %for.body198.lr.ph, label %if.end226, !dbg !471

for.body198.lr.ph:                                ; preds = %for.cond196.preheader
  %116 = sext i32 %off.6.lcssa to i64
  %117 = sext i32 %jcol to i64, !dbg !471
  br label %for.body198, !dbg !471

for.body172:                                      ; preds = %if.end190, %for.body172.lr.ph
  %indvars.iv488 = phi i64 [ 0, %for.body172.lr.ph ], [ %indvars.iv.next489, %if.end190 ], !dbg !469
  %indvars.iv486 = phi i64 [ %101, %for.body172.lr.ph ], [ %indvars.iv.next487, %if.end190 ]
  %off.6449 = phi i32 [ %jcol, %for.body172.lr.ph ], [ %add191, %if.end190 ]
  %irow.12447 = phi i32 [ -1, %for.body172.lr.ph ], [ %irow.13, %if.end190 ]
  %maxval.12446 = phi double [ 0.000000e+00, %for.body172.lr.ph ], [ %maxval.13, %if.end190 ]
  %indvars.iv.next487 = add i64 %indvars.iv486, -1, !dbg !469
  %arrayidx174 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv488, !dbg !473
  %118 = load i32* %arrayidx174, align 4, !dbg !473, !tbaa !173
  %cmp175 = icmp eq i32 %118, %tag, !dbg !473
  br i1 %cmp175, label %if.then176, label %if.end190, !dbg !473

if.then176:                                       ; preds = %for.body172
  %mul177 = shl nsw i32 %off.6449, 1, !dbg !475
  %idxprom178 = sext i32 %mul177 to i64, !dbg !475
  %arrayidx179 = getelementptr inbounds double* %call6, i64 %idxprom178, !dbg !475
  %119 = load double* %arrayidx179, align 8, !dbg !475, !tbaa !189
  %add181373 = or i32 %mul177, 1, !dbg !475
  %idxprom182 = sext i32 %add181373 to i64, !dbg !475
  %arrayidx183 = getelementptr inbounds double* %call6, i64 %idxprom182, !dbg !475
  %120 = load double* %arrayidx183, align 8, !dbg !475, !tbaa !189
  %call184 = call double @Zabs(double %119, double %120) #6, !dbg !475
  call void @llvm.dbg.value(metadata !{double %call184}, i64 0, metadata !80), !dbg !475
  %cmp185 = icmp eq i32 %irow.12447, -1, !dbg !477
  %cmp187 = fcmp olt double %maxval.12446, %call184, !dbg !477
  %or.cond384 = or i1 %cmp185, %cmp187, !dbg !477
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !478
  call void @llvm.dbg.value(metadata !{double %call184}, i64 0, metadata !79), !dbg !478
  %call184.maxval.12 = select i1 %or.cond384, double %call184, double %maxval.12446, !dbg !477
  %121 = trunc i64 %indvars.iv488 to i32, !dbg !477
  %ii.6.irow.12 = select i1 %or.cond384, i32 %121, i32 %irow.12447, !dbg !477
  br label %if.end190, !dbg !477

if.end190:                                        ; preds = %if.then176, %for.body172
  %maxval.13 = phi double [ %maxval.12446, %for.body172 ], [ %call184.maxval.12, %if.then176 ]
  %irow.13 = phi i32 [ %irow.12447, %for.body172 ], [ %ii.6.irow.12, %if.then176 ]
  %122 = trunc i64 %indvars.iv.next487 to i32, !dbg !480
  %add191 = add nsw i32 %122, %off.6449, !dbg !480
  call void @llvm.dbg.value(metadata !{i32 %114}, i64 0, metadata !87), !dbg !480
  %indvars.iv.next489 = add i64 %indvars.iv488, 1, !dbg !469
  %lftr.wideiv490 = trunc i64 %indvars.iv.next489 to i32, !dbg !469
  %exitcond491 = icmp eq i32 %lftr.wideiv490, %jcol, !dbg !469
  br i1 %exitcond491, label %for.cond170.for.cond196.preheader_crit_edge, label %for.body172, !dbg !469

for.body198:                                      ; preds = %for.body198.lr.ph, %for.inc217
  %123 = phi i32 [ %115, %for.body198.lr.ph ], [ %129, %for.inc217 ]
  %indvars.iv484 = phi i64 [ %117, %for.body198.lr.ph ], [ %indvars.iv.next485, %for.inc217 ], !dbg !471
  %indvars.iv482 = phi i64 [ %116, %for.body198.lr.ph ], [ %indvars.iv.next483, %for.inc217 ]
  %irow.14439 = phi i32 [ %irow.12.lcssa, %for.body198.lr.ph ], [ %irow.15, %for.inc217 ]
  %maxval.14438 = phi double [ %maxval.12.lcssa, %for.body198.lr.ph ], [ %maxval.15, %for.inc217 ]
  %arrayidx200 = getelementptr inbounds i32* %rowmark, i64 %indvars.iv484, !dbg !481
  %124 = load i32* %arrayidx200, align 4, !dbg !481, !tbaa !173
  %cmp201 = icmp eq i32 %124, %tag, !dbg !481
  br i1 %cmp201, label %if.then202, label %for.inc217, !dbg !481

if.then202:                                       ; preds = %for.body198
  %125 = trunc i64 %indvars.iv482 to i32, !dbg !483
  %mul203 = shl nsw i32 %125, 1, !dbg !483
  %idxprom204 = sext i32 %mul203 to i64, !dbg !483
  %arrayidx205 = getelementptr inbounds double* %call6, i64 %idxprom204, !dbg !483
  %126 = load double* %arrayidx205, align 8, !dbg !483, !tbaa !189
  %add207372 = or i32 %mul203, 1, !dbg !483
  %idxprom208 = sext i32 %add207372 to i64, !dbg !483
  %arrayidx209 = getelementptr inbounds double* %call6, i64 %idxprom208, !dbg !483
  %127 = load double* %arrayidx209, align 8, !dbg !483, !tbaa !189
  %call210 = call double @Zabs(double %126, double %127) #6, !dbg !483
  call void @llvm.dbg.value(metadata !{double %call210}, i64 0, metadata !80), !dbg !483
  %cmp211 = icmp eq i32 %irow.14439, -1, !dbg !485
  %cmp213 = fcmp olt double %maxval.14438, %call210, !dbg !485
  %or.cond385 = or i1 %cmp211, %cmp213, !dbg !485
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !82), !dbg !486
  call void @llvm.dbg.value(metadata !{double %call210}, i64 0, metadata !79), !dbg !486
  %call210.maxval.14 = select i1 %or.cond385, double %call210, double %maxval.14438, !dbg !485
  %128 = trunc i64 %indvars.iv484 to i32, !dbg !485
  %ii.7.irow.14 = select i1 %or.cond385, i32 %128, i32 %irow.14439, !dbg !485
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !471
  %.pre493 = load i32* %nD, align 4, !dbg !471, !tbaa !173
  br label %for.inc217, !dbg !485

for.inc217:                                       ; preds = %if.then202, %for.body198
  %129 = phi i32 [ %123, %for.body198 ], [ %.pre493, %if.then202 ], !dbg !471
  %maxval.15 = phi double [ %maxval.14438, %for.body198 ], [ %call210.maxval.14, %if.then202 ]
  %irow.15 = phi i32 [ %irow.14439, %for.body198 ], [ %ii.7.irow.14, %if.then202 ]
  %indvars.iv.next485 = add i64 %indvars.iv484, 1, !dbg !471
  %indvars.iv.next483 = add i64 %indvars.iv482, 1, !dbg !471
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !84), !dbg !471
  %130 = trunc i64 %indvars.iv.next485 to i32, !dbg !471
  %cmp197 = icmp slt i32 %130, %129, !dbg !471
  br i1 %cmp197, label %for.body198, label %if.end226, !dbg !471

if.else223:                                       ; preds = %if.end
  %131 = load %struct._IO_FILE** @stderr, align 8, !dbg !488, !tbaa !166
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([106 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, i32* %rowmark, i32 %tag, double* %pmaxval) #6, !dbg !488
  call void @exit(i32 -1) #7, !dbg !490
  unreachable, !dbg !490

if.end226:                                        ; preds = %for.cond196.preheader, %for.inc217, %for.cond136.preheader, %for.inc157, %for.cond74.preheader, %for.inc90, %for.cond29.preheader, %for.inc45, %if.then99, %if.then8
  %maxval.16 = phi double [ 0.000000e+00, %if.then8 ], [ 0.000000e+00, %if.then99 ], [ %maxval.0.lcssa, %for.cond29.preheader ], [ %maxval.3, %for.inc45 ], [ %maxval.4.lcssa, %for.cond74.preheader ], [ %maxval.7, %for.inc90 ], [ %maxval.8.lcssa, %for.cond136.preheader ], [ %maxval.11, %for.inc157 ], [ %maxval.12.lcssa, %for.cond196.preheader ], [ %maxval.15, %for.inc217 ]
  %irow.16 = phi i32 [ -1, %if.then8 ], [ -1, %if.then99 ], [ %irow.0.lcssa, %for.cond29.preheader ], [ %irow.3, %for.inc45 ], [ %irow.4.lcssa, %for.cond74.preheader ], [ %irow.7, %for.inc90 ], [ %irow.8.lcssa, %for.cond136.preheader ], [ %irow.11, %for.inc157 ], [ %irow.12.lcssa, %for.cond196.preheader ], [ %irow.15, %for.inc217 ]
  store double %maxval.16, double* %pmaxval, align 8, !dbg !491, !tbaa !189
  ret i32 %irow.16, !dbg !492
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %irow, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !93), !dbg !493
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !94), !dbg !494
  call void @llvm.dbg.value(metadata !{double* %pmaxval}, i64 0, metadata !95), !dbg !495
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !102), !dbg !496
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !103), !dbg !496
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !104), !dbg !496
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !497
  %cmp1 = icmp slt i32 %irow, 0, !dbg !497
  %or.cond = or i1 %cmp, %cmp1, !dbg !497
  %cmp3 = icmp eq double* %pmaxval, null, !dbg !497
  %or.cond313 = or i1 %or.cond, %cmp3, !dbg !497
  br i1 %or.cond313, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !498, !tbaa !166
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, double* %pmaxval) #6, !dbg !498
  call void @exit(i32 -1) #7, !dbg !500
  unreachable, !dbg !500

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !501
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !502
  call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !98), !dbg !502
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !102), !dbg !503
  %1 = load i32* %nD, align 4, !dbg !503, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !104), !dbg !503
  %2 = load i32* %nU, align 4, !dbg !503, !tbaa !173
  %add = add i32 %2, %1, !dbg !503
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !101), !dbg !503
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !99), !dbg !504
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !96), !dbg !505
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !506
  %3 = load i32* %type, align 4, !dbg !506, !tbaa !173
  switch i32 %3, label %if.else182 [
    i32 1, label %if.then6
    i32 2, label %if.then78
  ], !dbg !506

if.then6:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !507
  %4 = load i32* %symflag, align 4, !dbg !507, !tbaa !173
  switch i32 %4, label %if.end186 [
    i32 2, label %if.then8
    i32 0, label %for.cond43.preheader
  ], !dbg !507

for.cond43.preheader:                             ; preds = %if.then6
  %cmp44346 = icmp sgt i32 %irow, 0, !dbg !509
  br i1 %cmp44346, label %for.body45.lr.ph, label %for.cond58.preheader, !dbg !509

for.body45.lr.ph:                                 ; preds = %for.cond43.preheader
  %5 = sext i32 %add to i64
  %6 = add i32 %add, %irow, !dbg !509
  %7 = add i32 %irow, -1, !dbg !509
  %8 = add i32 %add, -2, !dbg !509
  %9 = mul i32 %7, %8, !dbg !509
  %10 = add i32 %6, %9, !dbg !509
  %11 = zext i32 %7 to i33, !dbg !509
  %12 = add i32 %irow, -2, !dbg !509
  %13 = zext i32 %12 to i33, !dbg !509
  %14 = mul i33 %11, %13, !dbg !509
  %15 = lshr i33 %14, 1, !dbg !509
  %16 = trunc i33 %15 to i32, !dbg !509
  br label %for.body45, !dbg !509

if.then8:                                         ; preds = %if.then6
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !99), !dbg !512
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !96), !dbg !514
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !103), !dbg !515
  %17 = load i32* %nL, align 4, !dbg !515, !tbaa !173
  %add9 = xor i32 %irow, -1, !dbg !515
  %sub = add i32 %1, %add9, !dbg !515
  %sub10 = add i32 %sub, %17, !dbg !515
  call void @llvm.dbg.value(metadata !{i32 %sub10}, i64 0, metadata !105), !dbg !515
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !100), !dbg !516
  %cmp14328 = icmp sgt i32 %irow, 0, !dbg !516
  br i1 %cmp14328, label %for.body.lr.ph, label %for.cond23.preheader, !dbg !516

for.body.lr.ph:                                   ; preds = %if.then8
  %18 = add i32 %2, %17, !dbg !516
  %19 = shl i32 %1, 1, !dbg !516
  %20 = add i32 %18, %19, !dbg !516
  %21 = add i32 %20, -1, !dbg !516
  %22 = sext i32 %21 to i64
  %23 = add i32 %irow, -1, !dbg !516
  %24 = add i32 %20, -3, !dbg !516
  %25 = mul i32 %23, %24, !dbg !516
  %26 = add i32 %2, %25, !dbg !516
  %27 = mul i32 %1, 3, !dbg !516
  %28 = add i32 %26, %27, !dbg !516
  %29 = shl i32 %17, 1, !dbg !516
  %30 = add i32 %28, %29, !dbg !516
  %31 = add i32 %30, -2, !dbg !516
  %32 = add i32 %irow, -2, !dbg !516
  %33 = mul i32 %23, %32, !dbg !516
  %34 = and i32 %33, -2, !dbg !516
  br label %for.body, !dbg !516

for.cond.for.cond23.preheader_crit_edge:          ; preds = %for.body
  %35 = sub i32 %31, %irow, !dbg !516
  %36 = sub i32 %35, %34, !dbg !516
  br label %for.cond23.preheader, !dbg !516

for.cond23.preheader:                             ; preds = %for.cond.for.cond23.preheader_crit_edge, %if.then8
  %off.0.lcssa = phi i32 [ %36, %for.cond.for.cond23.preheader_crit_edge ], [ %sub10, %if.then8 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond23.preheader_crit_edge ], [ 0.000000e+00, %if.then8 ]
  %jcol.0.lcssa = phi i32 [ %jcol.1, %for.cond.for.cond23.preheader_crit_edge ], [ -1, %if.then8 ]
  %cmp24322 = icmp sgt i32 %add, %irow, !dbg !518
  br i1 %cmp24322, label %for.body25.lr.ph, label %if.end186, !dbg !518

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %37 = sext i32 %off.0.lcssa to i64
  br label %for.body25, !dbg !518

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv390 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next391, %for.body ]
  %off.0332 = phi i32 [ %sub10, %for.body.lr.ph ], [ %add21, %for.body ]
  %maxval.0331 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %for.body ]
  %jj.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %jcol.0329 = phi i32 [ -1, %for.body.lr.ph ], [ %jcol.1, %for.body ]
  %idxprom = sext i32 %off.0332 to i64, !dbg !520
  %arrayidx = getelementptr inbounds double* %call4, i64 %idxprom, !dbg !520
  %38 = load double* %arrayidx, align 8, !dbg !520, !tbaa !189
  %call15 = call double @fabs(double %38) #8, !dbg !520
  call void @llvm.dbg.value(metadata !{double %call15}, i64 0, metadata !97), !dbg !520
  %cmp16 = icmp eq i32 %jcol.0329, -1, !dbg !522
  %cmp18 = fcmp olt double %maxval.0331, %call15, !dbg !522
  %or.cond314 = or i1 %cmp16, %cmp18, !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %jj.0330}, i64 0, metadata !99), !dbg !523
  call void @llvm.dbg.value(metadata !{double %call15}, i64 0, metadata !96), !dbg !523
  %jcol.1 = select i1 %or.cond314, i32 %jj.0330, i32 %jcol.0329, !dbg !522
  %maxval.1 = select i1 %or.cond314, double %call15, double %maxval.0331, !dbg !522
  %39 = trunc i64 %indvars.iv390 to i32, !dbg !525
  %add21 = add nsw i32 %39, %off.0332, !dbg !525
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !105), !dbg !525
  %inc = add nsw i32 %jj.0330, 1, !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !100), !dbg !516
  %indvars.iv.next391 = add i64 %indvars.iv390, -2, !dbg !516
  %exitcond393 = icmp eq i32 %inc, %irow, !dbg !516
  br i1 %exitcond393, label %for.cond.for.cond23.preheader_crit_edge, label %for.body, !dbg !516

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv = phi i64 [ %37, %for.body25.lr.ph ], [ %indvars.iv.next, %for.body25 ]
  %maxval.2325 = phi double [ %maxval.0.lcssa, %for.body25.lr.ph ], [ %maxval.3, %for.body25 ]
  %jj.1324 = phi i32 [ %irow, %for.body25.lr.ph ], [ %inc35, %for.body25 ]
  %jcol.2323 = phi i32 [ %jcol.0.lcssa, %for.body25.lr.ph ], [ %jcol.3, %for.body25 ]
  %arrayidx27 = getelementptr inbounds double* %call4, i64 %indvars.iv, !dbg !526
  %40 = load double* %arrayidx27, align 8, !dbg !526, !tbaa !189
  %call28 = call double @fabs(double %40) #8, !dbg !526
  call void @llvm.dbg.value(metadata !{double %call28}, i64 0, metadata !97), !dbg !526
  %cmp29 = icmp eq i32 %jcol.2323, -1, !dbg !528
  %cmp31 = fcmp olt double %maxval.2325, %call28, !dbg !528
  %or.cond315 = or i1 %cmp29, %cmp31, !dbg !528
  call void @llvm.dbg.value(metadata !{i32 %jj.1324}, i64 0, metadata !99), !dbg !529
  call void @llvm.dbg.value(metadata !{double %call28}, i64 0, metadata !96), !dbg !529
  %jcol.3 = select i1 %or.cond315, i32 %jj.1324, i32 %jcol.2323, !dbg !528
  %maxval.3 = select i1 %or.cond315, double %call28, double %maxval.2325, !dbg !528
  %inc35 = add nsw i32 %jj.1324, 1, !dbg !518
  call void @llvm.dbg.value(metadata !{i32 %inc35}, i64 0, metadata !100), !dbg !518
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !518
  %exitcond = icmp eq i32 %inc35, %add, !dbg !518
  br i1 %exitcond, label %if.end186, label %for.body25, !dbg !518

for.cond43.for.cond58.preheader_crit_edge:        ; preds = %for.body45
  %41 = add i32 %10, -1, !dbg !509
  %42 = sub i32 %41, %16, !dbg !509
  br label %for.cond58.preheader, !dbg !509

for.cond58.preheader:                             ; preds = %for.cond43.for.cond58.preheader_crit_edge, %for.cond43.preheader
  %off.2.lcssa = phi i32 [ %42, %for.cond43.for.cond58.preheader_crit_edge ], [ %irow, %for.cond43.preheader ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond43.for.cond58.preheader_crit_edge ], [ 0.000000e+00, %for.cond43.preheader ]
  %jcol.4.lcssa = phi i32 [ %jcol.5, %for.cond43.for.cond58.preheader_crit_edge ], [ -1, %for.cond43.preheader ]
  %cmp59338 = icmp sgt i32 %add, %irow, !dbg !531
  br i1 %cmp59338, label %for.body60.lr.ph, label %if.end186, !dbg !531

for.body60.lr.ph:                                 ; preds = %for.cond58.preheader
  %43 = sext i32 %off.2.lcssa to i64
  br label %for.body60, !dbg !531

for.body45:                                       ; preds = %for.body45, %for.body45.lr.ph
  %indvars.iv397 = phi i64 [ %5, %for.body45.lr.ph ], [ %indvars.iv.next398, %for.body45 ]
  %off.2350 = phi i32 [ %irow, %for.body45.lr.ph ], [ %add54, %for.body45 ]
  %maxval.4349 = phi double [ 0.000000e+00, %for.body45.lr.ph ], [ %maxval.5, %for.body45 ]
  %jj.2348 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc56, %for.body45 ]
  %jcol.4347 = phi i32 [ -1, %for.body45.lr.ph ], [ %jcol.5, %for.body45 ]
  %indvars.iv.next398 = add i64 %indvars.iv397, -1, !dbg !509
  %idxprom46 = sext i32 %off.2350 to i64, !dbg !533
  %arrayidx47 = getelementptr inbounds double* %call4, i64 %idxprom46, !dbg !533
  %44 = load double* %arrayidx47, align 8, !dbg !533, !tbaa !189
  %call48 = call double @fabs(double %44) #8, !dbg !533
  call void @llvm.dbg.value(metadata !{double %call48}, i64 0, metadata !97), !dbg !533
  %cmp49 = icmp eq i32 %jcol.4347, -1, !dbg !535
  %cmp51 = fcmp olt double %maxval.4349, %call48, !dbg !535
  %or.cond316 = or i1 %cmp49, %cmp51, !dbg !535
  call void @llvm.dbg.value(metadata !{i32 %jj.2348}, i64 0, metadata !99), !dbg !536
  call void @llvm.dbg.value(metadata !{double %call48}, i64 0, metadata !96), !dbg !536
  %jcol.5 = select i1 %or.cond316, i32 %jj.2348, i32 %jcol.4347, !dbg !535
  %maxval.5 = select i1 %or.cond316, double %call48, double %maxval.4349, !dbg !535
  %45 = trunc i64 %indvars.iv.next398 to i32, !dbg !538
  %add54 = add nsw i32 %45, %off.2350, !dbg !538
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !105), !dbg !538
  %inc56 = add nsw i32 %jj.2348, 1, !dbg !509
  call void @llvm.dbg.value(metadata !{i32 %inc56}, i64 0, metadata !100), !dbg !509
  %exitcond399 = icmp eq i32 %inc56, %irow, !dbg !509
  br i1 %exitcond399, label %for.cond43.for.cond58.preheader_crit_edge, label %for.body45, !dbg !509

for.body60:                                       ; preds = %for.body60, %for.body60.lr.ph
  %indvars.iv394 = phi i64 [ %43, %for.body60.lr.ph ], [ %indvars.iv.next395, %for.body60 ]
  %maxval.6341 = phi double [ %maxval.4.lcssa, %for.body60.lr.ph ], [ %maxval.7, %for.body60 ]
  %jj.3340 = phi i32 [ %irow, %for.body60.lr.ph ], [ %inc70, %for.body60 ]
  %jcol.6339 = phi i32 [ %jcol.4.lcssa, %for.body60.lr.ph ], [ %jcol.7, %for.body60 ]
  %arrayidx62 = getelementptr inbounds double* %call4, i64 %indvars.iv394, !dbg !539
  %46 = load double* %arrayidx62, align 8, !dbg !539, !tbaa !189
  %call63 = call double @fabs(double %46) #8, !dbg !539
  call void @llvm.dbg.value(metadata !{double %call63}, i64 0, metadata !97), !dbg !539
  %cmp64 = icmp eq i32 %jcol.6339, -1, !dbg !541
  %cmp66 = fcmp olt double %maxval.6341, %call63, !dbg !541
  %or.cond317 = or i1 %cmp64, %cmp66, !dbg !541
  call void @llvm.dbg.value(metadata !{i32 %jj.3340}, i64 0, metadata !99), !dbg !542
  call void @llvm.dbg.value(metadata !{double %call63}, i64 0, metadata !96), !dbg !542
  %jcol.7 = select i1 %or.cond317, i32 %jj.3340, i32 %jcol.6339, !dbg !541
  %maxval.7 = select i1 %or.cond317, double %call63, double %maxval.6341, !dbg !541
  %inc70 = add nsw i32 %jj.3340, 1, !dbg !531
  call void @llvm.dbg.value(metadata !{i32 %inc70}, i64 0, metadata !100), !dbg !531
  %indvars.iv.next395 = add i64 %indvars.iv394, 1, !dbg !531
  %exitcond396 = icmp eq i32 %inc70, %add, !dbg !531
  br i1 %exitcond396, label %if.end186, label %for.body60, !dbg !531

if.then78:                                        ; preds = %if.end
  %symflag79 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !544
  %47 = load i32* %symflag79, align 4, !dbg !544, !tbaa !173
  switch i32 %47, label %if.end186 [
    i32 2, label %if.then81
    i32 0, label %if.then136
    i32 1, label %if.then136
  ], !dbg !544

if.then81:                                        ; preds = %if.then78
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !99), !dbg !546
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !96), !dbg !548
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !103), !dbg !549
  %48 = load i32* %nL, align 4, !dbg !549, !tbaa !173
  %add82 = xor i32 %irow, -1, !dbg !549
  %sub83 = add i32 %1, %add82, !dbg !549
  %sub84 = add i32 %sub83, %48, !dbg !549
  call void @llvm.dbg.value(metadata !{i32 %sub84}, i64 0, metadata !105), !dbg !549
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !100), !dbg !550
  %cmp90363 = icmp sgt i32 %irow, 0, !dbg !550
  br i1 %cmp90363, label %for.body91.lr.ph, label %for.cond110.preheader, !dbg !550

for.body91.lr.ph:                                 ; preds = %if.then81
  %49 = add i32 %2, %48, !dbg !550
  %50 = shl i32 %1, 1, !dbg !550
  %51 = add i32 %49, %50, !dbg !550
  %52 = add i32 %51, -1, !dbg !550
  %53 = sext i32 %52 to i64
  %54 = add i32 %irow, -1, !dbg !550
  %55 = add i32 %51, -3, !dbg !550
  %56 = mul i32 %54, %55, !dbg !550
  %57 = add i32 %2, %56, !dbg !550
  %58 = mul i32 %1, 3, !dbg !550
  %59 = add i32 %57, %58, !dbg !550
  %60 = shl i32 %48, 1, !dbg !550
  %61 = add i32 %59, %60, !dbg !550
  %62 = add i32 %61, -2, !dbg !550
  %63 = add i32 %irow, -2, !dbg !550
  %64 = mul i32 %54, %63, !dbg !550
  %65 = and i32 %64, -2, !dbg !550
  br label %for.body91, !dbg !550

for.cond89.for.cond110.preheader_crit_edge:       ; preds = %for.body91
  %66 = sub i32 %62, %irow, !dbg !550
  %67 = sub i32 %66, %65, !dbg !550
  br label %for.cond110.preheader, !dbg !550

for.cond110.preheader:                            ; preds = %for.cond89.for.cond110.preheader_crit_edge, %if.then81
  %off.4.lcssa = phi i32 [ %67, %for.cond89.for.cond110.preheader_crit_edge ], [ %sub84, %if.then81 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond89.for.cond110.preheader_crit_edge ], [ 0.000000e+00, %if.then81 ]
  %jcol.8.lcssa = phi i32 [ %jcol.9, %for.cond89.for.cond110.preheader_crit_edge ], [ -1, %if.then81 ]
  %cmp111356 = icmp sgt i32 %add, %irow, !dbg !552
  br i1 %cmp111356, label %for.body112.lr.ph, label %if.end186, !dbg !552

for.body112.lr.ph:                                ; preds = %for.cond110.preheader
  %68 = sext i32 %off.4.lcssa to i64
  br label %for.body112, !dbg !552

for.body91:                                       ; preds = %for.body91, %for.body91.lr.ph
  %indvars.iv403 = phi i64 [ %53, %for.body91.lr.ph ], [ %indvars.iv.next404, %for.body91 ]
  %off.4367 = phi i32 [ %sub84, %for.body91.lr.ph ], [ %add105, %for.body91 ]
  %maxval.8366 = phi double [ 0.000000e+00, %for.body91.lr.ph ], [ %maxval.9, %for.body91 ]
  %jj.4365 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc108, %for.body91 ]
  %jcol.8364 = phi i32 [ -1, %for.body91.lr.ph ], [ %jcol.9, %for.body91 ]
  %mul92 = shl nsw i32 %off.4367, 1, !dbg !554
  %idxprom93 = sext i32 %mul92 to i64, !dbg !554
  %arrayidx94 = getelementptr inbounds double* %call4, i64 %idxprom93, !dbg !554
  %69 = load double* %arrayidx94, align 8, !dbg !554, !tbaa !189
  %add96312 = or i32 %mul92, 1, !dbg !554
  %idxprom97 = sext i32 %add96312 to i64, !dbg !554
  %arrayidx98 = getelementptr inbounds double* %call4, i64 %idxprom97, !dbg !554
  %70 = load double* %arrayidx98, align 8, !dbg !554, !tbaa !189
  %call99 = call double @Zabs(double %69, double %70) #6, !dbg !554
  call void @llvm.dbg.value(metadata !{double %call99}, i64 0, metadata !97), !dbg !554
  %cmp100 = icmp eq i32 %jcol.8364, -1, !dbg !556
  %cmp102 = fcmp olt double %maxval.8366, %call99, !dbg !556
  %or.cond318 = or i1 %cmp100, %cmp102, !dbg !556
  call void @llvm.dbg.value(metadata !{i32 %jj.4365}, i64 0, metadata !99), !dbg !557
  call void @llvm.dbg.value(metadata !{double %call99}, i64 0, metadata !96), !dbg !557
  %jcol.9 = select i1 %or.cond318, i32 %jj.4365, i32 %jcol.8364, !dbg !556
  %maxval.9 = select i1 %or.cond318, double %call99, double %maxval.8366, !dbg !556
  %71 = trunc i64 %indvars.iv403 to i32, !dbg !559
  %add105 = add nsw i32 %71, %off.4367, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %67}, i64 0, metadata !105), !dbg !559
  %inc108 = add nsw i32 %jj.4365, 1, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %inc108}, i64 0, metadata !100), !dbg !550
  %indvars.iv.next404 = add i64 %indvars.iv403, -2, !dbg !550
  %exitcond406 = icmp eq i32 %inc108, %irow, !dbg !550
  br i1 %exitcond406, label %for.cond89.for.cond110.preheader_crit_edge, label %for.body91, !dbg !550

for.body112:                                      ; preds = %for.body112, %for.body112.lr.ph
  %indvars.iv400 = phi i64 [ %68, %for.body112.lr.ph ], [ %indvars.iv.next401, %for.body112 ]
  %maxval.10359 = phi double [ %maxval.8.lcssa, %for.body112.lr.ph ], [ %maxval.11, %for.body112 ]
  %jj.5358 = phi i32 [ %irow, %for.body112.lr.ph ], [ %inc127, %for.body112 ]
  %jcol.10357 = phi i32 [ %jcol.8.lcssa, %for.body112.lr.ph ], [ %jcol.11, %for.body112 ]
  %72 = trunc i64 %indvars.iv400 to i32, !dbg !560
  %mul113 = shl nsw i32 %72, 1, !dbg !560
  %idxprom114 = sext i32 %mul113 to i64, !dbg !560
  %arrayidx115 = getelementptr inbounds double* %call4, i64 %idxprom114, !dbg !560
  %73 = load double* %arrayidx115, align 8, !dbg !560, !tbaa !189
  %add117311 = or i32 %mul113, 1, !dbg !560
  %idxprom118 = sext i32 %add117311 to i64, !dbg !560
  %arrayidx119 = getelementptr inbounds double* %call4, i64 %idxprom118, !dbg !560
  %74 = load double* %arrayidx119, align 8, !dbg !560, !tbaa !189
  %call120 = call double @Zabs(double %73, double %74) #6, !dbg !560
  call void @llvm.dbg.value(metadata !{double %call120}, i64 0, metadata !97), !dbg !560
  %cmp121 = icmp eq i32 %jcol.10357, -1, !dbg !562
  %cmp123 = fcmp olt double %maxval.10359, %call120, !dbg !562
  %or.cond319 = or i1 %cmp121, %cmp123, !dbg !562
  call void @llvm.dbg.value(metadata !{i32 %jj.5358}, i64 0, metadata !99), !dbg !563
  call void @llvm.dbg.value(metadata !{double %call120}, i64 0, metadata !96), !dbg !563
  %jcol.11 = select i1 %or.cond319, i32 %jj.5358, i32 %jcol.10357, !dbg !562
  %maxval.11 = select i1 %or.cond319, double %call120, double %maxval.10359, !dbg !562
  %inc127 = add nsw i32 %jj.5358, 1, !dbg !552
  call void @llvm.dbg.value(metadata !{i32 %inc127}, i64 0, metadata !100), !dbg !552
  %indvars.iv.next401 = add i64 %indvars.iv400, 1, !dbg !552
  %exitcond402 = icmp eq i32 %inc127, %add, !dbg !552
  br i1 %exitcond402, label %if.end186, label %for.body112, !dbg !552

if.then136:                                       ; preds = %if.then78, %if.then78
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !99), !dbg !565
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !96), !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !105), !dbg !568
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !102), !dbg !569
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !104), !dbg !569
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !100), !dbg !570
  %cmp140381 = icmp sgt i32 %irow, 0, !dbg !570
  br i1 %cmp140381, label %for.body141.lr.ph, label %for.cond160.preheader, !dbg !570

for.body141.lr.ph:                                ; preds = %if.then136
  %75 = sext i32 %add to i64
  %76 = add i32 %add, %irow, !dbg !570
  %77 = add i32 %irow, -1, !dbg !570
  %78 = add i32 %add, -2, !dbg !570
  %79 = mul i32 %77, %78, !dbg !570
  %80 = add i32 %76, %79, !dbg !570
  %81 = zext i32 %77 to i33, !dbg !570
  %82 = add i32 %irow, -2, !dbg !570
  %83 = zext i32 %82 to i33, !dbg !570
  %84 = mul i33 %81, %83, !dbg !570
  %85 = lshr i33 %84, 1, !dbg !570
  %86 = trunc i33 %85 to i32, !dbg !570
  br label %for.body141, !dbg !570

for.cond139.for.cond160.preheader_crit_edge:      ; preds = %for.body141
  %87 = add i32 %80, -1, !dbg !570
  %88 = sub i32 %87, %86, !dbg !570
  br label %for.cond160.preheader, !dbg !570

for.cond160.preheader:                            ; preds = %for.cond139.for.cond160.preheader_crit_edge, %if.then136
  %off.6.lcssa = phi i32 [ %88, %for.cond139.for.cond160.preheader_crit_edge ], [ %irow, %if.then136 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond139.for.cond160.preheader_crit_edge ], [ 0.000000e+00, %if.then136 ]
  %jcol.12.lcssa = phi i32 [ %jcol.13, %for.cond139.for.cond160.preheader_crit_edge ], [ -1, %if.then136 ]
  %cmp161373 = icmp sgt i32 %add, %irow, !dbg !572
  br i1 %cmp161373, label %for.body162.lr.ph, label %if.end186, !dbg !572

for.body162.lr.ph:                                ; preds = %for.cond160.preheader
  %89 = sext i32 %off.6.lcssa to i64
  br label %for.body162, !dbg !572

for.body141:                                      ; preds = %for.body141, %for.body141.lr.ph
  %indvars.iv410 = phi i64 [ %75, %for.body141.lr.ph ], [ %indvars.iv.next411, %for.body141 ]
  %off.6385 = phi i32 [ %irow, %for.body141.lr.ph ], [ %add155, %for.body141 ]
  %maxval.12384 = phi double [ 0.000000e+00, %for.body141.lr.ph ], [ %maxval.13, %for.body141 ]
  %jj.6383 = phi i32 [ 0, %for.body141.lr.ph ], [ %inc158, %for.body141 ]
  %jcol.12382 = phi i32 [ -1, %for.body141.lr.ph ], [ %jcol.13, %for.body141 ]
  %indvars.iv.next411 = add i64 %indvars.iv410, -1, !dbg !570
  %mul142 = shl nsw i32 %off.6385, 1, !dbg !574
  %idxprom143 = sext i32 %mul142 to i64, !dbg !574
  %arrayidx144 = getelementptr inbounds double* %call4, i64 %idxprom143, !dbg !574
  %90 = load double* %arrayidx144, align 8, !dbg !574, !tbaa !189
  %add146310 = or i32 %mul142, 1, !dbg !574
  %idxprom147 = sext i32 %add146310 to i64, !dbg !574
  %arrayidx148 = getelementptr inbounds double* %call4, i64 %idxprom147, !dbg !574
  %91 = load double* %arrayidx148, align 8, !dbg !574, !tbaa !189
  %call149 = call double @Zabs(double %90, double %91) #6, !dbg !574
  call void @llvm.dbg.value(metadata !{double %call149}, i64 0, metadata !97), !dbg !574
  %cmp150 = icmp eq i32 %jcol.12382, -1, !dbg !576
  %cmp152 = fcmp olt double %maxval.12384, %call149, !dbg !576
  %or.cond320 = or i1 %cmp150, %cmp152, !dbg !576
  call void @llvm.dbg.value(metadata !{i32 %jj.6383}, i64 0, metadata !99), !dbg !577
  call void @llvm.dbg.value(metadata !{double %call149}, i64 0, metadata !96), !dbg !577
  %jcol.13 = select i1 %or.cond320, i32 %jj.6383, i32 %jcol.12382, !dbg !576
  %maxval.13 = select i1 %or.cond320, double %call149, double %maxval.12384, !dbg !576
  %92 = trunc i64 %indvars.iv.next411 to i32, !dbg !579
  %add155 = add nsw i32 %92, %off.6385, !dbg !579
  call void @llvm.dbg.value(metadata !{i32 %88}, i64 0, metadata !105), !dbg !579
  %inc158 = add nsw i32 %jj.6383, 1, !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %inc158}, i64 0, metadata !100), !dbg !570
  %exitcond412 = icmp eq i32 %inc158, %irow, !dbg !570
  br i1 %exitcond412, label %for.cond139.for.cond160.preheader_crit_edge, label %for.body141, !dbg !570

for.body162:                                      ; preds = %for.body162, %for.body162.lr.ph
  %indvars.iv407 = phi i64 [ %89, %for.body162.lr.ph ], [ %indvars.iv.next408, %for.body162 ]
  %maxval.14376 = phi double [ %maxval.12.lcssa, %for.body162.lr.ph ], [ %maxval.15, %for.body162 ]
  %jj.7375 = phi i32 [ %irow, %for.body162.lr.ph ], [ %inc177, %for.body162 ]
  %jcol.14374 = phi i32 [ %jcol.12.lcssa, %for.body162.lr.ph ], [ %jcol.15, %for.body162 ]
  %93 = trunc i64 %indvars.iv407 to i32, !dbg !580
  %mul163 = shl nsw i32 %93, 1, !dbg !580
  %idxprom164 = sext i32 %mul163 to i64, !dbg !580
  %arrayidx165 = getelementptr inbounds double* %call4, i64 %idxprom164, !dbg !580
  %94 = load double* %arrayidx165, align 8, !dbg !580, !tbaa !189
  %add167309 = or i32 %mul163, 1, !dbg !580
  %idxprom168 = sext i32 %add167309 to i64, !dbg !580
  %arrayidx169 = getelementptr inbounds double* %call4, i64 %idxprom168, !dbg !580
  %95 = load double* %arrayidx169, align 8, !dbg !580, !tbaa !189
  %call170 = call double @Zabs(double %94, double %95) #6, !dbg !580
  call void @llvm.dbg.value(metadata !{double %call170}, i64 0, metadata !97), !dbg !580
  %cmp171 = icmp eq i32 %jcol.14374, -1, !dbg !582
  %cmp173 = fcmp olt double %maxval.14376, %call170, !dbg !582
  %or.cond321 = or i1 %cmp171, %cmp173, !dbg !582
  call void @llvm.dbg.value(metadata !{i32 %jj.7375}, i64 0, metadata !99), !dbg !583
  call void @llvm.dbg.value(metadata !{double %call170}, i64 0, metadata !96), !dbg !583
  %jcol.15 = select i1 %or.cond321, i32 %jj.7375, i32 %jcol.14374, !dbg !582
  %maxval.15 = select i1 %or.cond321, double %call170, double %maxval.14376, !dbg !582
  %inc177 = add nsw i32 %jj.7375, 1, !dbg !572
  call void @llvm.dbg.value(metadata !{i32 %inc177}, i64 0, metadata !100), !dbg !572
  %indvars.iv.next408 = add i64 %indvars.iv407, 1, !dbg !572
  %exitcond409 = icmp eq i32 %inc177, %add, !dbg !572
  br i1 %exitcond409, label %if.end186, label %for.body162, !dbg !572

if.else182:                                       ; preds = %if.end
  %96 = load %struct._IO_FILE** @stderr, align 8, !dbg !585, !tbaa !166
  %symflag183 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !585
  %97 = load i32* %symflag183, align 4, !dbg !585, !tbaa !173
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([99 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, double* %pmaxval, i32 %97) #6, !dbg !585
  call void @exit(i32 -1) #7, !dbg !587
  unreachable, !dbg !587

if.end186:                                        ; preds = %for.cond160.preheader, %for.body162, %for.cond110.preheader, %for.body112, %for.cond58.preheader, %for.body60, %for.cond23.preheader, %for.body25, %if.then78, %if.then6
  %jcol.16 = phi i32 [ -1, %if.then6 ], [ -1, %if.then78 ], [ %jcol.0.lcssa, %for.cond23.preheader ], [ %jcol.3, %for.body25 ], [ %jcol.4.lcssa, %for.cond58.preheader ], [ %jcol.7, %for.body60 ], [ %jcol.8.lcssa, %for.cond110.preheader ], [ %jcol.11, %for.body112 ], [ %jcol.12.lcssa, %for.cond160.preheader ], [ %jcol.15, %for.body162 ]
  %maxval.16 = phi double [ 0.000000e+00, %if.then6 ], [ 0.000000e+00, %if.then78 ], [ %maxval.0.lcssa, %for.cond23.preheader ], [ %maxval.3, %for.body25 ], [ %maxval.4.lcssa, %for.cond58.preheader ], [ %maxval.7, %for.body60 ], [ %maxval.8.lcssa, %for.cond110.preheader ], [ %maxval.11, %for.body112 ], [ %maxval.12.lcssa, %for.cond160.preheader ], [ %maxval.15, %for.body162 ]
  store double %maxval.16, double* %pmaxval, align 8, !dbg !588, !tbaa !189
  ret i32 %jcol.16, !dbg !589
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_maxabsInColumn(%struct._Chv* %chv, i32 %jcol, double* %pmaxval) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !109), !dbg !590
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !110), !dbg !591
  call void @llvm.dbg.value(metadata !{double* %pmaxval}, i64 0, metadata !111), !dbg !592
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !117), !dbg !593
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !118), !dbg !593
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !120), !dbg !593
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !594
  %cmp1 = icmp slt i32 %jcol, 0, !dbg !594
  %or.cond = or i1 %cmp, %cmp1, !dbg !594
  %cmp3 = icmp eq double* %pmaxval, null, !dbg !594
  %or.cond313 = or i1 %or.cond, %cmp3, !dbg !594
  br i1 %or.cond313, label %if.then, label %if.end, !dbg !594

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !595, !tbaa !166
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, double* %pmaxval) #6, !dbg !595
  call void @exit(i32 -1) #7, !dbg !597
  unreachable, !dbg !597

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !598
  %call4 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !599
  call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !114), !dbg !599
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !117), !dbg !600
  %1 = load i32* %nD, align 4, !dbg !600, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !118), !dbg !600
  %2 = load i32* %nL, align 4, !dbg !600, !tbaa !173
  %add = add i32 %2, %1, !dbg !600
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !119), !dbg !600
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !115), !dbg !601
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !112), !dbg !602
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !603
  %3 = load i32* %type, align 4, !dbg !603, !tbaa !173
  switch i32 %3, label %if.else182 [
    i32 1, label %if.then6
    i32 2, label %if.then78
  ], !dbg !603

if.then6:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !604
  %4 = load i32* %symflag, align 4, !dbg !604, !tbaa !173
  switch i32 %4, label %if.end186 [
    i32 2, label %if.then8
    i32 0, label %if.then39
  ], !dbg !604

if.then8:                                         ; preds = %if.then6
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !112), !dbg !606
  %add10 = add i32 %jcol, -1, !dbg !608
  %sub = add i32 %add10, %add, !dbg !608
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !121), !dbg !608
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !609
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !610
  %cmp14328 = icmp sgt i32 %jcol, 0, !dbg !610
  br i1 %cmp14328, label %for.body.lr.ph, label %for.cond23.preheader, !dbg !610

for.body.lr.ph:                                   ; preds = %if.then8
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !609
  %5 = load i32* %nU, align 4, !dbg !609, !tbaa !173
  %6 = add i32 %2, %5, !dbg !610
  %7 = shl i32 %1, 1, !dbg !610
  %8 = add i32 %6, %7, !dbg !610
  %9 = add i32 %8, -3, !dbg !610
  %10 = sext i32 %9 to i64
  %11 = add i32 %5, %jcol, !dbg !610
  %12 = add i32 %8, -5, !dbg !610
  %13 = mul i32 %add10, %12, !dbg !610
  %14 = add i32 %11, %13, !dbg !610
  %15 = mul i32 %1, 3, !dbg !610
  %16 = add i32 %14, %15, !dbg !610
  %17 = shl i32 %2, 1, !dbg !610
  %18 = add i32 %16, %17, !dbg !610
  %19 = add i32 %jcol, -2, !dbg !610
  %20 = mul i32 %add10, %19, !dbg !610
  %21 = and i32 %20, -2, !dbg !610
  br label %for.body, !dbg !610

for.cond.for.cond23.preheader_crit_edge:          ; preds = %for.body
  %22 = add i32 %18, -4, !dbg !610
  %23 = sub i32 %22, %21, !dbg !610
  br label %for.cond23.preheader, !dbg !610

for.cond23.preheader:                             ; preds = %for.cond.for.cond23.preheader_crit_edge, %if.then8
  %off.0.lcssa = phi i32 [ %23, %for.cond.for.cond23.preheader_crit_edge ], [ %sub, %if.then8 ]
  %maxval.0.lcssa = phi double [ %maxval.1, %for.cond.for.cond23.preheader_crit_edge ], [ 0.000000e+00, %if.then8 ]
  %irow.0.lcssa = phi i32 [ %irow.1, %for.cond.for.cond23.preheader_crit_edge ], [ -1, %if.then8 ]
  %cmp24322 = icmp sgt i32 %add, %jcol, !dbg !612
  br i1 %cmp24322, label %for.body25.lr.ph, label %if.end186, !dbg !612

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %24 = sext i32 %off.0.lcssa to i64
  br label %for.body25, !dbg !612

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv390 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next391, %for.body ]
  %off.0332 = phi i32 [ %sub, %for.body.lr.ph ], [ %add21, %for.body ]
  %maxval.0331 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %maxval.1, %for.body ]
  %ii.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %irow.0329 = phi i32 [ -1, %for.body.lr.ph ], [ %irow.1, %for.body ]
  %idxprom = sext i32 %off.0332 to i64, !dbg !614
  %arrayidx = getelementptr inbounds double* %call4, i64 %idxprom, !dbg !614
  %25 = load double* %arrayidx, align 8, !dbg !614, !tbaa !189
  %call15 = call double @fabs(double %25) #8, !dbg !614
  call void @llvm.dbg.value(metadata !{double %call15}, i64 0, metadata !113), !dbg !614
  %cmp16 = icmp eq i32 %irow.0329, -1, !dbg !616
  %cmp18 = fcmp olt double %maxval.0331, %call15, !dbg !616
  %or.cond314 = or i1 %cmp16, %cmp18, !dbg !616
  call void @llvm.dbg.value(metadata !{i32 %ii.0330}, i64 0, metadata !115), !dbg !617
  call void @llvm.dbg.value(metadata !{double %call15}, i64 0, metadata !112), !dbg !617
  %irow.1 = select i1 %or.cond314, i32 %ii.0330, i32 %irow.0329, !dbg !616
  %maxval.1 = select i1 %or.cond314, double %call15, double %maxval.0331, !dbg !616
  %26 = trunc i64 %indvars.iv390 to i32, !dbg !619
  %add21 = add nsw i32 %26, %off.0332, !dbg !619
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !121), !dbg !619
  %inc = add nsw i32 %ii.0330, 1, !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !116), !dbg !610
  %indvars.iv.next391 = add i64 %indvars.iv390, -2, !dbg !610
  %exitcond393 = icmp eq i32 %inc, %jcol, !dbg !610
  br i1 %exitcond393, label %for.cond.for.cond23.preheader_crit_edge, label %for.body, !dbg !610

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv = phi i64 [ %24, %for.body25.lr.ph ], [ %indvars.iv.next, %for.body25 ]
  %maxval.2325 = phi double [ %maxval.0.lcssa, %for.body25.lr.ph ], [ %maxval.3, %for.body25 ]
  %ii.1324 = phi i32 [ %jcol, %for.body25.lr.ph ], [ %inc35, %for.body25 ]
  %irow.2323 = phi i32 [ %irow.0.lcssa, %for.body25.lr.ph ], [ %irow.3, %for.body25 ]
  %arrayidx27 = getelementptr inbounds double* %call4, i64 %indvars.iv, !dbg !620
  %27 = load double* %arrayidx27, align 8, !dbg !620, !tbaa !189
  %call28 = call double @fabs(double %27) #8, !dbg !620
  call void @llvm.dbg.value(metadata !{double %call28}, i64 0, metadata !113), !dbg !620
  %cmp29 = icmp eq i32 %irow.2323, -1, !dbg !622
  %cmp31 = fcmp olt double %maxval.2325, %call28, !dbg !622
  %or.cond315 = or i1 %cmp29, %cmp31, !dbg !622
  call void @llvm.dbg.value(metadata !{i32 %ii.1324}, i64 0, metadata !115), !dbg !623
  call void @llvm.dbg.value(metadata !{double %call28}, i64 0, metadata !112), !dbg !623
  %irow.3 = select i1 %or.cond315, i32 %ii.1324, i32 %irow.2323, !dbg !622
  %maxval.3 = select i1 %or.cond315, double %call28, double %maxval.2325, !dbg !622
  %inc35 = add nsw i32 %ii.1324, 1, !dbg !612
  call void @llvm.dbg.value(metadata !{i32 %inc35}, i64 0, metadata !116), !dbg !612
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !612
  %exitcond = icmp eq i32 %inc35, %add, !dbg !612
  br i1 %exitcond, label %if.end186, label %for.body25, !dbg !612

if.then39:                                        ; preds = %if.then6
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !112), !dbg !625
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !121), !dbg !627
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !628
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !629
  %cmp43346 = icmp sgt i32 %jcol, 0, !dbg !629
  br i1 %cmp43346, label %for.body44.lr.ph, label %for.cond58.preheader, !dbg !629

for.body44.lr.ph:                                 ; preds = %if.then39
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !628
  %28 = load i32* %nU, align 4, !dbg !628, !tbaa !173
  %add40 = add nsw i32 %28, %1, !dbg !628
  %29 = sext i32 %add40 to i64
  %30 = add i32 %add40, %jcol, !dbg !629
  %31 = add i32 %jcol, -1, !dbg !629
  %32 = add i32 %add40, -2, !dbg !629
  %33 = mul i32 %31, %32, !dbg !629
  %34 = add i32 %30, %33, !dbg !629
  %35 = zext i32 %31 to i33, !dbg !629
  %36 = add i32 %jcol, -2, !dbg !629
  %37 = zext i32 %36 to i33, !dbg !629
  %38 = mul i33 %35, %37, !dbg !629
  %39 = lshr i33 %38, 1, !dbg !629
  %40 = trunc i33 %39 to i32, !dbg !629
  br label %for.body44, !dbg !629

for.cond42.for.cond58.preheader_crit_edge:        ; preds = %for.body44
  %41 = add i32 %34, -1, !dbg !629
  %42 = sub i32 %41, %40, !dbg !629
  br label %for.cond58.preheader, !dbg !629

for.cond58.preheader:                             ; preds = %for.cond42.for.cond58.preheader_crit_edge, %if.then39
  %off.2.lcssa = phi i32 [ %42, %for.cond42.for.cond58.preheader_crit_edge ], [ %jcol, %if.then39 ]
  %maxval.4.lcssa = phi double [ %maxval.5, %for.cond42.for.cond58.preheader_crit_edge ], [ 0.000000e+00, %if.then39 ]
  %irow.4.lcssa = phi i32 [ %irow.5, %for.cond42.for.cond58.preheader_crit_edge ], [ -1, %if.then39 ]
  %cmp59338 = icmp sgt i32 %add, %jcol, !dbg !631
  br i1 %cmp59338, label %for.body60.lr.ph, label %if.end186, !dbg !631

for.body60.lr.ph:                                 ; preds = %for.cond58.preheader
  %43 = sext i32 %off.2.lcssa to i64
  br label %for.body60, !dbg !631

for.body44:                                       ; preds = %for.body44, %for.body44.lr.ph
  %indvars.iv397 = phi i64 [ %29, %for.body44.lr.ph ], [ %indvars.iv.next398, %for.body44 ]
  %off.2350 = phi i32 [ %jcol, %for.body44.lr.ph ], [ %add53, %for.body44 ]
  %maxval.4349 = phi double [ 0.000000e+00, %for.body44.lr.ph ], [ %maxval.5, %for.body44 ]
  %ii.2348 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc56, %for.body44 ]
  %irow.4347 = phi i32 [ -1, %for.body44.lr.ph ], [ %irow.5, %for.body44 ]
  %indvars.iv.next398 = add i64 %indvars.iv397, -1, !dbg !629
  %idxprom45 = sext i32 %off.2350 to i64, !dbg !633
  %arrayidx46 = getelementptr inbounds double* %call4, i64 %idxprom45, !dbg !633
  %44 = load double* %arrayidx46, align 8, !dbg !633, !tbaa !189
  %call47 = call double @fabs(double %44) #8, !dbg !633
  call void @llvm.dbg.value(metadata !{double %call47}, i64 0, metadata !113), !dbg !633
  %cmp48 = icmp eq i32 %irow.4347, -1, !dbg !635
  %cmp50 = fcmp olt double %maxval.4349, %call47, !dbg !635
  %or.cond316 = or i1 %cmp48, %cmp50, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %ii.2348}, i64 0, metadata !115), !dbg !636
  call void @llvm.dbg.value(metadata !{double %call47}, i64 0, metadata !112), !dbg !636
  %irow.5 = select i1 %or.cond316, i32 %ii.2348, i32 %irow.4347, !dbg !635
  %maxval.5 = select i1 %or.cond316, double %call47, double %maxval.4349, !dbg !635
  %45 = trunc i64 %indvars.iv.next398 to i32, !dbg !638
  %add53 = add nsw i32 %45, %off.2350, !dbg !638
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !121), !dbg !638
  %inc56 = add nsw i32 %ii.2348, 1, !dbg !629
  call void @llvm.dbg.value(metadata !{i32 %inc56}, i64 0, metadata !116), !dbg !629
  %exitcond399 = icmp eq i32 %inc56, %jcol, !dbg !629
  br i1 %exitcond399, label %for.cond42.for.cond58.preheader_crit_edge, label %for.body44, !dbg !629

for.body60:                                       ; preds = %for.body60, %for.body60.lr.ph
  %indvars.iv394 = phi i64 [ %43, %for.body60.lr.ph ], [ %indvars.iv.next395, %for.body60 ]
  %maxval.6341 = phi double [ %maxval.4.lcssa, %for.body60.lr.ph ], [ %maxval.7, %for.body60 ]
  %ii.3340 = phi i32 [ %jcol, %for.body60.lr.ph ], [ %inc70, %for.body60 ]
  %irow.6339 = phi i32 [ %irow.4.lcssa, %for.body60.lr.ph ], [ %irow.7, %for.body60 ]
  %arrayidx62 = getelementptr inbounds double* %call4, i64 %indvars.iv394, !dbg !639
  %46 = load double* %arrayidx62, align 8, !dbg !639, !tbaa !189
  %call63 = call double @fabs(double %46) #8, !dbg !639
  call void @llvm.dbg.value(metadata !{double %call63}, i64 0, metadata !113), !dbg !639
  %cmp64 = icmp eq i32 %irow.6339, -1, !dbg !641
  %cmp66 = fcmp olt double %maxval.6341, %call63, !dbg !641
  %or.cond317 = or i1 %cmp64, %cmp66, !dbg !641
  call void @llvm.dbg.value(metadata !{i32 %ii.3340}, i64 0, metadata !115), !dbg !642
  call void @llvm.dbg.value(metadata !{double %call63}, i64 0, metadata !112), !dbg !642
  %irow.7 = select i1 %or.cond317, i32 %ii.3340, i32 %irow.6339, !dbg !641
  %maxval.7 = select i1 %or.cond317, double %call63, double %maxval.6341, !dbg !641
  %inc70 = add nsw i32 %ii.3340, 1, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %inc70}, i64 0, metadata !116), !dbg !631
  %indvars.iv.next395 = add i64 %indvars.iv394, 1, !dbg !631
  %exitcond396 = icmp eq i32 %inc70, %add, !dbg !631
  br i1 %exitcond396, label %if.end186, label %for.body60, !dbg !631

if.then78:                                        ; preds = %if.end
  %symflag79 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !644
  %47 = load i32* %symflag79, align 4, !dbg !644, !tbaa !173
  switch i32 %47, label %if.end186 [
    i32 2, label %if.then81
    i32 0, label %if.then136
    i32 1, label %if.then136
  ], !dbg !644

if.then81:                                        ; preds = %if.then78
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !112), !dbg !646
  %add83 = add i32 %jcol, -1, !dbg !648
  %sub84 = add i32 %add83, %add, !dbg !648
  call void @llvm.dbg.value(metadata !{i32 %sub84}, i64 0, metadata !121), !dbg !648
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !649
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !650
  %cmp90363 = icmp sgt i32 %jcol, 0, !dbg !650
  br i1 %cmp90363, label %for.body91.lr.ph, label %for.cond110.preheader, !dbg !650

for.body91.lr.ph:                                 ; preds = %if.then81
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !649
  %48 = load i32* %nU, align 4, !dbg !649, !tbaa !173
  %49 = add i32 %2, %48, !dbg !650
  %50 = shl i32 %1, 1, !dbg !650
  %51 = add i32 %49, %50, !dbg !650
  %52 = add i32 %51, -3, !dbg !650
  %53 = sext i32 %52 to i64
  %54 = add i32 %48, %jcol, !dbg !650
  %55 = add i32 %51, -5, !dbg !650
  %56 = mul i32 %add83, %55, !dbg !650
  %57 = add i32 %54, %56, !dbg !650
  %58 = mul i32 %1, 3, !dbg !650
  %59 = add i32 %57, %58, !dbg !650
  %60 = shl i32 %2, 1, !dbg !650
  %61 = add i32 %59, %60, !dbg !650
  %62 = add i32 %jcol, -2, !dbg !650
  %63 = mul i32 %add83, %62, !dbg !650
  %64 = and i32 %63, -2, !dbg !650
  br label %for.body91, !dbg !650

for.cond89.for.cond110.preheader_crit_edge:       ; preds = %for.body91
  %65 = add i32 %61, -4, !dbg !650
  %66 = sub i32 %65, %64, !dbg !650
  br label %for.cond110.preheader, !dbg !650

for.cond110.preheader:                            ; preds = %for.cond89.for.cond110.preheader_crit_edge, %if.then81
  %off.4.lcssa = phi i32 [ %66, %for.cond89.for.cond110.preheader_crit_edge ], [ %sub84, %if.then81 ]
  %maxval.8.lcssa = phi double [ %maxval.9, %for.cond89.for.cond110.preheader_crit_edge ], [ 0.000000e+00, %if.then81 ]
  %irow.8.lcssa = phi i32 [ %irow.9, %for.cond89.for.cond110.preheader_crit_edge ], [ -1, %if.then81 ]
  %cmp111356 = icmp sgt i32 %add, %jcol, !dbg !652
  br i1 %cmp111356, label %for.body112.lr.ph, label %if.end186, !dbg !652

for.body112.lr.ph:                                ; preds = %for.cond110.preheader
  %67 = sext i32 %off.4.lcssa to i64
  br label %for.body112, !dbg !652

for.body91:                                       ; preds = %for.body91, %for.body91.lr.ph
  %indvars.iv403 = phi i64 [ %53, %for.body91.lr.ph ], [ %indvars.iv.next404, %for.body91 ]
  %off.4367 = phi i32 [ %sub84, %for.body91.lr.ph ], [ %add105, %for.body91 ]
  %maxval.8366 = phi double [ 0.000000e+00, %for.body91.lr.ph ], [ %maxval.9, %for.body91 ]
  %ii.4365 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc108, %for.body91 ]
  %irow.8364 = phi i32 [ -1, %for.body91.lr.ph ], [ %irow.9, %for.body91 ]
  %mul92 = shl nsw i32 %off.4367, 1, !dbg !654
  %idxprom93 = sext i32 %mul92 to i64, !dbg !654
  %arrayidx94 = getelementptr inbounds double* %call4, i64 %idxprom93, !dbg !654
  %68 = load double* %arrayidx94, align 8, !dbg !654, !tbaa !189
  %add96312 = or i32 %mul92, 1, !dbg !654
  %idxprom97 = sext i32 %add96312 to i64, !dbg !654
  %arrayidx98 = getelementptr inbounds double* %call4, i64 %idxprom97, !dbg !654
  %69 = load double* %arrayidx98, align 8, !dbg !654, !tbaa !189
  %call99 = call double @Zabs(double %68, double %69) #6, !dbg !654
  call void @llvm.dbg.value(metadata !{double %call99}, i64 0, metadata !113), !dbg !654
  %cmp100 = icmp eq i32 %irow.8364, -1, !dbg !656
  %cmp102 = fcmp olt double %maxval.8366, %call99, !dbg !656
  %or.cond318 = or i1 %cmp100, %cmp102, !dbg !656
  call void @llvm.dbg.value(metadata !{i32 %ii.4365}, i64 0, metadata !115), !dbg !657
  call void @llvm.dbg.value(metadata !{double %call99}, i64 0, metadata !112), !dbg !657
  %irow.9 = select i1 %or.cond318, i32 %ii.4365, i32 %irow.8364, !dbg !656
  %maxval.9 = select i1 %or.cond318, double %call99, double %maxval.8366, !dbg !656
  %70 = trunc i64 %indvars.iv403 to i32, !dbg !659
  %add105 = add nsw i32 %70, %off.4367, !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %66}, i64 0, metadata !121), !dbg !659
  %inc108 = add nsw i32 %ii.4365, 1, !dbg !650
  call void @llvm.dbg.value(metadata !{i32 %inc108}, i64 0, metadata !116), !dbg !650
  %indvars.iv.next404 = add i64 %indvars.iv403, -2, !dbg !650
  %exitcond406 = icmp eq i32 %inc108, %jcol, !dbg !650
  br i1 %exitcond406, label %for.cond89.for.cond110.preheader_crit_edge, label %for.body91, !dbg !650

for.body112:                                      ; preds = %for.body112, %for.body112.lr.ph
  %indvars.iv400 = phi i64 [ %67, %for.body112.lr.ph ], [ %indvars.iv.next401, %for.body112 ]
  %maxval.10359 = phi double [ %maxval.8.lcssa, %for.body112.lr.ph ], [ %maxval.11, %for.body112 ]
  %ii.5358 = phi i32 [ %jcol, %for.body112.lr.ph ], [ %inc127, %for.body112 ]
  %irow.10357 = phi i32 [ %irow.8.lcssa, %for.body112.lr.ph ], [ %irow.11, %for.body112 ]
  %71 = trunc i64 %indvars.iv400 to i32, !dbg !660
  %mul113 = shl nsw i32 %71, 1, !dbg !660
  %idxprom114 = sext i32 %mul113 to i64, !dbg !660
  %arrayidx115 = getelementptr inbounds double* %call4, i64 %idxprom114, !dbg !660
  %72 = load double* %arrayidx115, align 8, !dbg !660, !tbaa !189
  %add117311 = or i32 %mul113, 1, !dbg !660
  %idxprom118 = sext i32 %add117311 to i64, !dbg !660
  %arrayidx119 = getelementptr inbounds double* %call4, i64 %idxprom118, !dbg !660
  %73 = load double* %arrayidx119, align 8, !dbg !660, !tbaa !189
  %call120 = call double @Zabs(double %72, double %73) #6, !dbg !660
  call void @llvm.dbg.value(metadata !{double %call120}, i64 0, metadata !113), !dbg !660
  %cmp121 = icmp eq i32 %irow.10357, -1, !dbg !662
  %cmp123 = fcmp olt double %maxval.10359, %call120, !dbg !662
  %or.cond319 = or i1 %cmp121, %cmp123, !dbg !662
  call void @llvm.dbg.value(metadata !{i32 %ii.5358}, i64 0, metadata !115), !dbg !663
  call void @llvm.dbg.value(metadata !{double %call120}, i64 0, metadata !112), !dbg !663
  %irow.11 = select i1 %or.cond319, i32 %ii.5358, i32 %irow.10357, !dbg !662
  %maxval.11 = select i1 %or.cond319, double %call120, double %maxval.10359, !dbg !662
  %inc127 = add nsw i32 %ii.5358, 1, !dbg !652
  call void @llvm.dbg.value(metadata !{i32 %inc127}, i64 0, metadata !116), !dbg !652
  %indvars.iv.next401 = add i64 %indvars.iv400, -1, !dbg !652
  %exitcond402 = icmp eq i32 %inc127, %add, !dbg !652
  br i1 %exitcond402, label %if.end186, label %for.body112, !dbg !652

if.then136:                                       ; preds = %if.then78, %if.then78
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !112), !dbg !665
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !121), !dbg !667
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !117), !dbg !668
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !668
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !669
  %cmp140381 = icmp sgt i32 %jcol, 0, !dbg !669
  br i1 %cmp140381, label %for.body141.lr.ph, label %for.cond160.preheader, !dbg !669

for.body141.lr.ph:                                ; preds = %if.then136
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !120), !dbg !668
  %74 = load i32* %nU, align 4, !dbg !668, !tbaa !173
  %add137 = add nsw i32 %74, %1, !dbg !668
  %75 = sext i32 %add137 to i64
  %76 = add i32 %add137, %jcol, !dbg !669
  %77 = add i32 %jcol, -1, !dbg !669
  %78 = add i32 %add137, -2, !dbg !669
  %79 = mul i32 %77, %78, !dbg !669
  %80 = add i32 %76, %79, !dbg !669
  %81 = zext i32 %77 to i33, !dbg !669
  %82 = add i32 %jcol, -2, !dbg !669
  %83 = zext i32 %82 to i33, !dbg !669
  %84 = mul i33 %81, %83, !dbg !669
  %85 = lshr i33 %84, 1, !dbg !669
  %86 = trunc i33 %85 to i32, !dbg !669
  br label %for.body141, !dbg !669

for.cond139.for.cond160.preheader_crit_edge:      ; preds = %for.body141
  %87 = add i32 %80, -1, !dbg !669
  %88 = sub i32 %87, %86, !dbg !669
  br label %for.cond160.preheader, !dbg !669

for.cond160.preheader:                            ; preds = %for.cond139.for.cond160.preheader_crit_edge, %if.then136
  %off.6.lcssa = phi i32 [ %88, %for.cond139.for.cond160.preheader_crit_edge ], [ %jcol, %if.then136 ]
  %maxval.12.lcssa = phi double [ %maxval.13, %for.cond139.for.cond160.preheader_crit_edge ], [ 0.000000e+00, %if.then136 ]
  %irow.12.lcssa = phi i32 [ %irow.13, %for.cond139.for.cond160.preheader_crit_edge ], [ -1, %if.then136 ]
  %cmp161373 = icmp sgt i32 %add, %jcol, !dbg !671
  br i1 %cmp161373, label %for.body162.lr.ph, label %if.end186, !dbg !671

for.body162.lr.ph:                                ; preds = %for.cond160.preheader
  %89 = sext i32 %off.6.lcssa to i64
  br label %for.body162, !dbg !671

for.body141:                                      ; preds = %for.body141, %for.body141.lr.ph
  %indvars.iv410 = phi i64 [ %75, %for.body141.lr.ph ], [ %indvars.iv.next411, %for.body141 ]
  %off.6385 = phi i32 [ %jcol, %for.body141.lr.ph ], [ %add155, %for.body141 ]
  %maxval.12384 = phi double [ 0.000000e+00, %for.body141.lr.ph ], [ %maxval.13, %for.body141 ]
  %ii.6383 = phi i32 [ 0, %for.body141.lr.ph ], [ %inc158, %for.body141 ]
  %irow.12382 = phi i32 [ -1, %for.body141.lr.ph ], [ %irow.13, %for.body141 ]
  %indvars.iv.next411 = add i64 %indvars.iv410, -1, !dbg !669
  %mul142 = shl nsw i32 %off.6385, 1, !dbg !673
  %idxprom143 = sext i32 %mul142 to i64, !dbg !673
  %arrayidx144 = getelementptr inbounds double* %call4, i64 %idxprom143, !dbg !673
  %90 = load double* %arrayidx144, align 8, !dbg !673, !tbaa !189
  %add146310 = or i32 %mul142, 1, !dbg !673
  %idxprom147 = sext i32 %add146310 to i64, !dbg !673
  %arrayidx148 = getelementptr inbounds double* %call4, i64 %idxprom147, !dbg !673
  %91 = load double* %arrayidx148, align 8, !dbg !673, !tbaa !189
  %call149 = call double @Zabs(double %90, double %91) #6, !dbg !673
  call void @llvm.dbg.value(metadata !{double %call149}, i64 0, metadata !113), !dbg !673
  %cmp150 = icmp eq i32 %irow.12382, -1, !dbg !675
  %cmp152 = fcmp olt double %maxval.12384, %call149, !dbg !675
  %or.cond320 = or i1 %cmp150, %cmp152, !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %ii.6383}, i64 0, metadata !115), !dbg !676
  call void @llvm.dbg.value(metadata !{double %call149}, i64 0, metadata !112), !dbg !676
  %irow.13 = select i1 %or.cond320, i32 %ii.6383, i32 %irow.12382, !dbg !675
  %maxval.13 = select i1 %or.cond320, double %call149, double %maxval.12384, !dbg !675
  %92 = trunc i64 %indvars.iv.next411 to i32, !dbg !678
  %add155 = add nsw i32 %92, %off.6385, !dbg !678
  call void @llvm.dbg.value(metadata !{i32 %88}, i64 0, metadata !121), !dbg !678
  %inc158 = add nsw i32 %ii.6383, 1, !dbg !669
  call void @llvm.dbg.value(metadata !{i32 %inc158}, i64 0, metadata !116), !dbg !669
  %exitcond412 = icmp eq i32 %inc158, %jcol, !dbg !669
  br i1 %exitcond412, label %for.cond139.for.cond160.preheader_crit_edge, label %for.body141, !dbg !669

for.body162:                                      ; preds = %for.body162, %for.body162.lr.ph
  %indvars.iv407 = phi i64 [ %89, %for.body162.lr.ph ], [ %indvars.iv.next408, %for.body162 ]
  %maxval.14376 = phi double [ %maxval.12.lcssa, %for.body162.lr.ph ], [ %maxval.15, %for.body162 ]
  %ii.7375 = phi i32 [ %jcol, %for.body162.lr.ph ], [ %inc177, %for.body162 ]
  %irow.14374 = phi i32 [ %irow.12.lcssa, %for.body162.lr.ph ], [ %irow.15, %for.body162 ]
  %93 = trunc i64 %indvars.iv407 to i32, !dbg !679
  %mul163 = shl nsw i32 %93, 1, !dbg !679
  %idxprom164 = sext i32 %mul163 to i64, !dbg !679
  %arrayidx165 = getelementptr inbounds double* %call4, i64 %idxprom164, !dbg !679
  %94 = load double* %arrayidx165, align 8, !dbg !679, !tbaa !189
  %add167309 = or i32 %mul163, 1, !dbg !679
  %idxprom168 = sext i32 %add167309 to i64, !dbg !679
  %arrayidx169 = getelementptr inbounds double* %call4, i64 %idxprom168, !dbg !679
  %95 = load double* %arrayidx169, align 8, !dbg !679, !tbaa !189
  %call170 = call double @Zabs(double %94, double %95) #6, !dbg !679
  call void @llvm.dbg.value(metadata !{double %call170}, i64 0, metadata !113), !dbg !679
  %cmp171 = icmp eq i32 %irow.14374, -1, !dbg !681
  %cmp173 = fcmp olt double %maxval.14376, %call170, !dbg !681
  %or.cond321 = or i1 %cmp171, %cmp173, !dbg !681
  call void @llvm.dbg.value(metadata !{i32 %ii.7375}, i64 0, metadata !115), !dbg !682
  call void @llvm.dbg.value(metadata !{double %call170}, i64 0, metadata !112), !dbg !682
  %irow.15 = select i1 %or.cond321, i32 %ii.7375, i32 %irow.14374, !dbg !681
  %maxval.15 = select i1 %or.cond321, double %call170, double %maxval.14376, !dbg !681
  %inc177 = add nsw i32 %ii.7375, 1, !dbg !671
  call void @llvm.dbg.value(metadata !{i32 %inc177}, i64 0, metadata !116), !dbg !671
  %indvars.iv.next408 = add i64 %indvars.iv407, 1, !dbg !671
  %exitcond409 = icmp eq i32 %inc177, %add, !dbg !671
  br i1 %exitcond409, label %if.end186, label %for.body162, !dbg !671

if.else182:                                       ; preds = %if.end
  %96 = load %struct._IO_FILE** @stderr, align 8, !dbg !684, !tbaa !166
  %symflag183 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !684
  %97 = load i32* %symflag183, align 4, !dbg !684, !tbaa !173
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chv, i32 %jcol, double* %pmaxval, i32 %97) #6, !dbg !684
  call void @exit(i32 -1) #7, !dbg !686
  unreachable, !dbg !686

if.end186:                                        ; preds = %for.cond160.preheader, %for.body162, %for.cond110.preheader, %for.body112, %for.cond58.preheader, %for.body60, %for.cond23.preheader, %for.body25, %if.then78, %if.then6
  %irow.16 = phi i32 [ -1, %if.then6 ], [ -1, %if.then78 ], [ %irow.0.lcssa, %for.cond23.preheader ], [ %irow.3, %for.body25 ], [ %irow.4.lcssa, %for.cond58.preheader ], [ %irow.7, %for.body60 ], [ %irow.8.lcssa, %for.cond110.preheader ], [ %irow.11, %for.body112 ], [ %irow.12.lcssa, %for.cond160.preheader ], [ %irow.15, %for.body162 ]
  %maxval.16 = phi double [ 0.000000e+00, %if.then6 ], [ 0.000000e+00, %if.then78 ], [ %maxval.0.lcssa, %for.cond23.preheader ], [ %maxval.3, %for.body25 ], [ %maxval.4.lcssa, %for.cond58.preheader ], [ %maxval.7, %for.body60 ], [ %maxval.8.lcssa, %for.cond110.preheader ], [ %maxval.11, %for.body112 ], [ %maxval.12.lcssa, %for.cond160.preheader ], [ %maxval.15, %for.body162 ]
  store double %maxval.16, double* %pmaxval, align 8, !dbg !687, !tbaa !189
  ret i32 %irow.16, !dbg !688
}

; Function Attrs: nounwind optsize uwtable
define double @Chv_quasimax(%struct._Chv* %chv, i32* %rowmark, i32* %colmark, i32 %tag, i32* %pirow, i32* %pjcol) #0 {
entry:
  %maxval = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !127), !dbg !689
  call void @llvm.dbg.value(metadata !{i32* %rowmark}, i64 0, metadata !128), !dbg !690
  call void @llvm.dbg.value(metadata !{i32* %colmark}, i64 0, metadata !129), !dbg !691
  call void @llvm.dbg.value(metadata !{i32 %tag}, i64 0, metadata !130), !dbg !692
  call void @llvm.dbg.value(metadata !{i32* %pirow}, i64 0, metadata !131), !dbg !693
  call void @llvm.dbg.value(metadata !{i32* %pjcol}, i64 0, metadata !132), !dbg !694
  call void @llvm.dbg.declare(metadata !{double* %maxval}, metadata !133), !dbg !695
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !696
  %cmp1 = icmp eq i32* %rowmark, null, !dbg !696
  %or.cond = or i1 %cmp, %cmp1, !dbg !696
  %cmp3 = icmp eq i32* %colmark, null, !dbg !696
  %or.cond75 = or i1 %or.cond, %cmp3, !dbg !696
  %cmp5 = icmp eq i32* %pirow, null, !dbg !696
  %or.cond76 = or i1 %or.cond75, %cmp5, !dbg !696
  %cmp7 = icmp eq i32* %pjcol, null, !dbg !696
  %or.cond77 = or i1 %or.cond76, %cmp7, !dbg !696
  br i1 %or.cond77, label %if.then, label %if.end, !dbg !696

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !697, !tbaa !166
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i32* %rowmark, i32* %colmark, i32 %tag, i32* %pirow, i32* %pjcol) #6, !dbg !697
  call void @exit(i32 -1) #7, !dbg !699
  unreachable, !dbg !699

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !700
  %1 = load i32* %symflag, align 4, !dbg !700, !tbaa !173
  %cmp8 = icmp eq i32 %1, 2, !dbg !700
  br i1 %cmp8, label %if.end12, label %if.then9, !dbg !700

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !701, !tbaa !166
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([133 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, i32* %rowmark, i32* %colmark, i32 %tag, i32* %pirow, i32* %pjcol, i32 %1) #6, !dbg !701
  call void @exit(i32 -1) #7, !dbg !703
  unreachable, !dbg !703

if.end12:                                         ; preds = %if.end
  %nD13 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !704
  %3 = load i32* %nD13, align 4, !dbg !704, !tbaa !173
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !136), !dbg !704
  store i32 -1, i32* %pjcol, align 4, !dbg !705, !tbaa !173
  store i32 -1, i32* %pirow, align 4, !dbg !705, !tbaa !173
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !133), !dbg !706
  store double 0.000000e+00, double* %maxval, align 8, !dbg !706, !tbaa !189
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !707
  %cmp1478 = icmp sgt i32 %3, 0, !dbg !707
  br i1 %cmp1478, label %for.body, label %for.end, !dbg !707

for.cond:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !707
  %cmp14 = icmp slt i32 %4, %3, !dbg !707
  br i1 %cmp14, label %for.body, label %for.end, !dbg !707

for.body:                                         ; preds = %if.end12, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end12 ]
  %jcol.079 = phi i32 [ %inc, %for.cond ], [ 0, %if.end12 ]
  %arrayidx = getelementptr inbounds i32* %colmark, i64 %indvars.iv, !dbg !709
  %5 = load i32* %arrayidx, align 4, !dbg !709, !tbaa !173
  %cmp15 = icmp eq i32 %5, %tag, !dbg !709
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !707
  %inc = add nsw i32 %jcol.079, 1, !dbg !707
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !135), !dbg !707
  br i1 %cmp15, label %for.end, label %for.cond, !dbg !709

for.end:                                          ; preds = %for.cond, %for.body, %if.end12
  %jcol.0.lcssa = phi i32 [ 0, %if.end12 ], [ %jcol.079, %for.body ], [ %inc, %for.cond ]
  %cmp18 = icmp eq i32 %jcol.0.lcssa, %3, !dbg !711
  br i1 %cmp18, label %return, label %if.end20, !dbg !711

if.end20:                                         ; preds = %for.end
  %call21 = call i32 @Chv_maxabsInColumn11(%struct._Chv* %chv, i32 %jcol.0.lcssa, i32* %rowmark, i32 %tag, double* %maxval) #9, !dbg !712
  call void @llvm.dbg.value(metadata !{i32 %call21}, i64 0, metadata !134), !dbg !712
  %cmp22 = icmp eq i32 %call21, -1, !dbg !713
  br i1 %cmp22, label %return, label %while.body, !dbg !713

while.body:                                       ; preds = %if.end20, %if.end28
  %jcol.1 = phi i32 [ %call25, %if.end28 ], [ %jcol.0.lcssa, %if.end20 ]
  %irow.0 = phi i32 [ %call29, %if.end28 ], [ %call21, %if.end20 ]
  %call25 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %irow.0, i32* %colmark, i32 %tag, double* %maxval) #9, !dbg !714
  call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !137), !dbg !714
  %cmp26 = icmp eq i32 %call25, %jcol.1, !dbg !716
  br i1 %cmp26, label %while.end, label %if.end28, !dbg !716

if.end28:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !135), !dbg !717
  %call29 = call i32 @Chv_maxabsInColumn11(%struct._Chv* %chv, i32 %call25, i32* %rowmark, i32 %tag, double* %maxval) #9, !dbg !718
  call void @llvm.dbg.value(metadata !{i32 %call29}, i64 0, metadata !138), !dbg !718
  %cmp30 = icmp eq i32 %call29, %irow.0, !dbg !719
  br i1 %cmp30, label %while.end, label %while.body, !dbg !719

while.end:                                        ; preds = %if.end28, %while.body
  %jcol.2 = phi i32 [ %jcol.1, %while.body ], [ %call25, %if.end28 ]
  store i32 %jcol.2, i32* %pjcol, align 4, !dbg !720, !tbaa !173
  store i32 %irow.0, i32* %pirow, align 4, !dbg !721, !tbaa !173
  call void @llvm.dbg.value(metadata !{double* %maxval}, i64 0, metadata !133), !dbg !722
  br label %return, !dbg !722

return:                                           ; preds = %if.end20, %for.end, %while.end
  call void @llvm.dbg.value(metadata !{double* %maxval}, i64 0, metadata !133), !dbg !723
  %retval.0 = load double* %maxval, align 8, !dbg !723
  ret double %retval.0, !dbg !722
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
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !143), !dbg !725
  call void @llvm.dbg.value(metadata !{i32* %mark}, i64 0, metadata !144), !dbg !726
  call void @llvm.dbg.value(metadata !{i32 %tag}, i64 0, metadata !145), !dbg !727
  call void @llvm.dbg.value(metadata !{i32* %pirow}, i64 0, metadata !146), !dbg !728
  call void @llvm.dbg.value(metadata !{i32* %pjcol}, i64 0, metadata !147), !dbg !729
  call void @llvm.dbg.declare(metadata !{double* %maxdiag}, metadata !148), !dbg !730
  call void @llvm.dbg.declare(metadata !{double* %gamma_r}, metadata !149), !dbg !730
  call void @llvm.dbg.declare(metadata !{double* %gamma_s}, metadata !150), !dbg !730
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !152), !dbg !731
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !153), !dbg !731
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !154), !dbg !731
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !732
  %cmp1 = icmp eq i32* %mark, null, !dbg !732
  %or.cond = or i1 %cmp, %cmp1, !dbg !732
  %cmp3 = icmp eq i32* %pirow, null, !dbg !732
  %or.cond58 = or i1 %or.cond, %cmp3, !dbg !732
  %cmp5 = icmp eq i32* %pjcol, null, !dbg !732
  %or.cond59 = or i1 %or.cond58, %cmp5, !dbg !732
  br i1 %or.cond59, label %if.then, label %if.end, !dbg !732

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !733, !tbaa !166
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str16, i64 0, i64 0), %struct._Chv* %chv, i32* %mark, i32 %tag, i32* %pirow, i32* %pjcol) #6, !dbg !733
  call void @exit(i32 -1) #7, !dbg !735
  unreachable, !dbg !735

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !736
  %call6 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !737
  call void @llvm.dbg.value(metadata !{double* %call6}, i64 0, metadata !151), !dbg !737
  store i32 -1, i32* %pjcol, align 4, !dbg !738, !tbaa !173
  store i32 -1, i32* %pirow, align 4, !dbg !738, !tbaa !173
  %call7 = call i32 @Chv_maxabsInDiagonal11(%struct._Chv* %chv, i32* %mark, i32 %tag, double* %maxdiag) #9, !dbg !739
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !155), !dbg !739
  %cmp8 = icmp eq i32 %call7, -1, !dbg !740
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !740

if.then9:                                         ; preds = %if.end
  store i32 -1, i32* %pjcol, align 4, !dbg !741, !tbaa !173
  store i32 -1, i32* %pirow, align 4, !dbg !741, !tbaa !173
  br label %return, !dbg !743

if.end10:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !156), !dbg !744
  call void @llvm.dbg.value(metadata !179, i64 0, metadata !149), !dbg !745
  store double 0.000000e+00, double* %gamma_r, align 8, !dbg !745, !tbaa !189
  %call11 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %call7, i32* %mark, i32 %tag, double* %gamma_r) #9, !dbg !746
  call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !156), !dbg !746
  %cmp12 = icmp eq i32 %call11, -1, !dbg !747
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !747

if.then13:                                        ; preds = %if.end10
  store i32 %call7, i32* %pjcol, align 4, !dbg !748, !tbaa !173
  store i32 %call7, i32* %pirow, align 4, !dbg !748, !tbaa !173
  br label %return, !dbg !750

if.end14:                                         ; preds = %if.end10
  call void @llvm.dbg.value(metadata !{double* %maxdiag}, i64 0, metadata !148), !dbg !751
  %1 = load double* %maxdiag, align 8, !dbg !751, !tbaa !189
  call void @llvm.dbg.value(metadata !{double* %gamma_r}, i64 0, metadata !149), !dbg !751
  %2 = load double* %gamma_r, align 8, !dbg !751, !tbaa !189
  %mul = fmul double %2, 6.404000e-01, !dbg !751
  %cmp15 = fcmp ult double %1, %mul, !dbg !751
  br i1 %cmp15, label %while.body.preheader, label %if.then16, !dbg !751

while.body.preheader:                             ; preds = %if.end14
  %call1760 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %call11, i32* %mark, i32 %tag, double* %gamma_s) #9, !dbg !752
  call void @llvm.dbg.value(metadata !{i32 %call1760}, i64 0, metadata !157), !dbg !752
  %cmp1861 = icmp eq i32 %call1760, %call7, !dbg !755
  br i1 %cmp1861, label %if.then21, label %lor.lhs.false19, !dbg !755

if.then16:                                        ; preds = %if.end14
  store i32 %call7, i32* %pjcol, align 4, !dbg !756, !tbaa !173
  store i32 %call7, i32* %pirow, align 4, !dbg !756, !tbaa !173
  br label %return, !dbg !758

lor.lhs.false19:                                  ; preds = %while.body.preheader, %if.else22
  %call1764 = phi i32 [ %call17, %if.else22 ], [ %call1760, %while.body.preheader ]
  %r.063 = phi i32 [ %s.062, %if.else22 ], [ %call7, %while.body.preheader ]
  %s.062 = phi i32 [ %call1764, %if.else22 ], [ %call11, %while.body.preheader ]
  call void @llvm.dbg.value(metadata !{double* %gamma_s}, i64 0, metadata !150), !dbg !755
  %3 = load double* %gamma_s, align 8, !dbg !755, !tbaa !189
  call void @llvm.dbg.value(metadata !{double* %gamma_r}, i64 0, metadata !149), !dbg !755
  %4 = load double* %gamma_r, align 8, !dbg !755, !tbaa !189
  %cmp20 = fcmp oeq double %3, %4, !dbg !755
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !755

if.then21:                                        ; preds = %if.else22, %lor.lhs.false19, %while.body.preheader
  %r.0.lcssa = phi i32 [ %call7, %while.body.preheader ], [ %r.063, %lor.lhs.false19 ], [ %s.062, %if.else22 ]
  %s.0.lcssa = phi i32 [ %call11, %while.body.preheader ], [ %s.062, %lor.lhs.false19 ], [ %call1764, %if.else22 ]
  store i32 %r.0.lcssa, i32* %pirow, align 4, !dbg !759, !tbaa !173
  store i32 %s.0.lcssa, i32* %pjcol, align 4, !dbg !761, !tbaa !173
  br label %return, !dbg !762

if.else22:                                        ; preds = %lor.lhs.false19
  call void @llvm.dbg.value(metadata !{i32 %s.0.lcssa}, i64 0, metadata !155), !dbg !763
  call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !149), !dbg !765
  store double %3, double* %gamma_r, align 8, !dbg !765, !tbaa !189
  call void @llvm.dbg.value(metadata !{i32 %call1764}, i64 0, metadata !156), !dbg !766
  %call17 = call i32 @Chv_maxabsInRow11(%struct._Chv* %chv, i32 %call1764, i32* %mark, i32 %tag, double* %gamma_s) #9, !dbg !752
  call void @llvm.dbg.value(metadata !{i32 %call1764}, i64 0, metadata !157), !dbg !752
  %cmp18 = icmp eq i32 %call17, %s.062, !dbg !755
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19, !dbg !755

return:                                           ; preds = %if.then21, %if.then16, %if.then13, %if.then9
  ret void, !dbg !767
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !53, metadata !72, metadata !89, metadata !107, metadata !123, metadata !139}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_maxabsInDiagonal11", metadata !"Chv_maxabsInDiagonal11", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32*, i32, double*)* @Chv_maxabsInDiagonal11, null, null, metadata !38, i32 25} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 25] [Chv_maxabsInDiagonal11]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !21, metadata !8, metadata !24}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !12, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!39 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777237, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 21]
!40 = metadata !{i32 786689, metadata !4, metadata !"mark", metadata !5, i32 33554454, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mark] [line 22]
!41 = metadata !{i32 786689, metadata !4, metadata !"tag", metadata !5, i32 50331671, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 23]
!42 = metadata !{i32 786689, metadata !4, metadata !"pmaxval", metadata !5, i32 67108888, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxval] [line 24]
!43 = metadata !{i32 786688, metadata !4, metadata !"maxval", metadata !5, i32 26, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 26]
!44 = metadata !{i32 786688, metadata !4, metadata !"val", metadata !5, i32 26, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 26]
!45 = metadata !{i32 786688, metadata !4, metadata !"entries", metadata !5, i32 27, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 27]
!46 = metadata !{i32 786688, metadata !4, metadata !"jcol", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 28]
!47 = metadata !{i32 786688, metadata !4, metadata !"jj", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 28]
!48 = metadata !{i32 786688, metadata !4, metadata !"nD", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 28]
!49 = metadata !{i32 786688, metadata !4, metadata !"nL", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 28]
!50 = metadata !{i32 786688, metadata !4, metadata !"nU", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 28]
!51 = metadata !{i32 786688, metadata !4, metadata !"off", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 28]
!52 = metadata !{i32 786688, metadata !4, metadata !"stride", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 28]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_maxabsInRow11", metadata !"Chv_maxabsInRow11", metadata !"", i32 163, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32, i32*, i32, double*)* @Chv_maxabsInRow11, null, null, metadata !56, i32 169} ; [ DW_TAG_subprogram ] [line 163] [def] [scope 169] [Chv_maxabsInRow11]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !8, metadata !9, metadata !8, metadata !21, metadata !8, metadata !24}
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!57 = metadata !{i32 786689, metadata !53, metadata !"chv", metadata !5, i32 16777380, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 164]
!58 = metadata !{i32 786689, metadata !53, metadata !"irow", metadata !5, i32 33554597, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 165]
!59 = metadata !{i32 786689, metadata !53, metadata !"colmark", metadata !5, i32 50331814, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colmark] [line 166]
!60 = metadata !{i32 786689, metadata !53, metadata !"tag", metadata !5, i32 67109031, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 167]
!61 = metadata !{i32 786689, metadata !53, metadata !"pmaxval", metadata !5, i32 83886248, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxval] [line 168]
!62 = metadata !{i32 786688, metadata !53, metadata !"maxval", metadata !5, i32 170, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 170]
!63 = metadata !{i32 786688, metadata !53, metadata !"val", metadata !5, i32 170, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 170]
!64 = metadata !{i32 786688, metadata !53, metadata !"entries", metadata !5, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 171]
!65 = metadata !{i32 786688, metadata !53, metadata !"jcol", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 172]
!66 = metadata !{i32 786688, metadata !53, metadata !"jj", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 172]
!67 = metadata !{i32 786688, metadata !53, metadata !"nD", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 172]
!68 = metadata !{i32 786688, metadata !53, metadata !"nL", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 172]
!69 = metadata !{i32 786688, metadata !53, metadata !"nU", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 172]
!70 = metadata !{i32 786688, metadata !53, metadata !"off", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 172]
!71 = metadata !{i32 786688, metadata !53, metadata !"stride", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 172]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_maxabsInColumn11", metadata !"Chv_maxabsInColumn11", metadata !"", i32 339, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32, i32*, i32, double*)* @Chv_maxabsInColumn11, null, null, metadata !73, i32 345} ; [ DW_TAG_subprogram ] [line 339] [def] [scope 345] [Chv_maxabsInColumn11]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88}
!74 = metadata !{i32 786689, metadata !72, metadata !"chv", metadata !5, i32 16777556, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 340]
!75 = metadata !{i32 786689, metadata !72, metadata !"jcol", metadata !5, i32 33554773, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 341]
!76 = metadata !{i32 786689, metadata !72, metadata !"rowmark", metadata !5, i32 50331990, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowmark] [line 342]
!77 = metadata !{i32 786689, metadata !72, metadata !"tag", metadata !5, i32 67109207, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 343]
!78 = metadata !{i32 786689, metadata !72, metadata !"pmaxval", metadata !5, i32 83886424, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxval] [line 344]
!79 = metadata !{i32 786688, metadata !72, metadata !"maxval", metadata !5, i32 346, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 346]
!80 = metadata !{i32 786688, metadata !72, metadata !"val", metadata !5, i32 346, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 346]
!81 = metadata !{i32 786688, metadata !72, metadata !"entries", metadata !5, i32 347, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 347]
!82 = metadata !{i32 786688, metadata !72, metadata !"irow", metadata !5, i32 348, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 348]
!83 = metadata !{i32 786688, metadata !72, metadata !"ii", metadata !5, i32 348, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 348]
!84 = metadata !{i32 786688, metadata !72, metadata !"nD", metadata !5, i32 348, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 348]
!85 = metadata !{i32 786688, metadata !72, metadata !"nL", metadata !5, i32 348, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 348]
!86 = metadata !{i32 786688, metadata !72, metadata !"nU", metadata !5, i32 348, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 348]
!87 = metadata !{i32 786688, metadata !72, metadata !"off", metadata !5, i32 348, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 348]
!88 = metadata !{i32 786688, metadata !72, metadata !"stride", metadata !5, i32 348, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 348]
!89 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_maxabsInRow", metadata !"Chv_maxabsInRow", metadata !"", i32 498, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32, double*)* @Chv_maxabsInRow, null, null, metadata !92, i32 502} ; [ DW_TAG_subprogram ] [line 498] [def] [scope 502] [Chv_maxabsInRow]
!90 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{metadata !8, metadata !9, metadata !8, metadata !24}
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!93 = metadata !{i32 786689, metadata !89, metadata !"chv", metadata !5, i32 16777715, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 499]
!94 = metadata !{i32 786689, metadata !89, metadata !"irow", metadata !5, i32 33554932, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 500]
!95 = metadata !{i32 786689, metadata !89, metadata !"pmaxval", metadata !5, i32 50332149, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxval] [line 501]
!96 = metadata !{i32 786688, metadata !89, metadata !"maxval", metadata !5, i32 503, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 503]
!97 = metadata !{i32 786688, metadata !89, metadata !"val", metadata !5, i32 503, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 503]
!98 = metadata !{i32 786688, metadata !89, metadata !"entries", metadata !5, i32 504, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 504]
!99 = metadata !{i32 786688, metadata !89, metadata !"jcol", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 505]
!100 = metadata !{i32 786688, metadata !89, metadata !"jj", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 505]
!101 = metadata !{i32 786688, metadata !89, metadata !"ncol", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 505]
!102 = metadata !{i32 786688, metadata !89, metadata !"nD", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 505]
!103 = metadata !{i32 786688, metadata !89, metadata !"nL", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 505]
!104 = metadata !{i32 786688, metadata !89, metadata !"nU", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 505]
!105 = metadata !{i32 786688, metadata !89, metadata !"off", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 505]
!106 = metadata !{i32 786688, metadata !89, metadata !"stride", metadata !5, i32 505, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 505]
!107 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_maxabsInColumn", metadata !"Chv_maxabsInColumn", metadata !"", i32 643, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32, double*)* @Chv_maxabsInColumn, null, null, metadata !108, i32 647} ; [ DW_TAG_subprogram ] [line 643] [def] [scope 647] [Chv_maxabsInColumn]
!108 = metadata !{metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122}
!109 = metadata !{i32 786689, metadata !107, metadata !"chv", metadata !5, i32 16777860, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 644]
!110 = metadata !{i32 786689, metadata !107, metadata !"jcol", metadata !5, i32 33555077, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 645]
!111 = metadata !{i32 786689, metadata !107, metadata !"pmaxval", metadata !5, i32 50332294, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxval] [line 646]
!112 = metadata !{i32 786688, metadata !107, metadata !"maxval", metadata !5, i32 648, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 648]
!113 = metadata !{i32 786688, metadata !107, metadata !"val", metadata !5, i32 648, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 648]
!114 = metadata !{i32 786688, metadata !107, metadata !"entries", metadata !5, i32 649, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 649]
!115 = metadata !{i32 786688, metadata !107, metadata !"irow", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 650]
!116 = metadata !{i32 786688, metadata !107, metadata !"ii", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 650]
!117 = metadata !{i32 786688, metadata !107, metadata !"nD", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 650]
!118 = metadata !{i32 786688, metadata !107, metadata !"nL", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 650]
!119 = metadata !{i32 786688, metadata !107, metadata !"nrow", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 650]
!120 = metadata !{i32 786688, metadata !107, metadata !"nU", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 650]
!121 = metadata !{i32 786688, metadata !107, metadata !"off", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 650]
!122 = metadata !{i32 786688, metadata !107, metadata !"stride", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 650]
!123 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_quasimax", metadata !"Chv_quasimax", metadata !"", i32 782, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._Chv*, i32*, i32*, i32, i32*, i32*)* @Chv_quasimax, null, null, metadata !126, i32 789} ; [ DW_TAG_subprogram ] [line 782] [def] [scope 789] [Chv_quasimax]
!124 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{metadata !25, metadata !9, metadata !21, metadata !21, metadata !8, metadata !21, metadata !21}
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!127 = metadata !{i32 786689, metadata !123, metadata !"chv", metadata !5, i32 16777999, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 783]
!128 = metadata !{i32 786689, metadata !123, metadata !"rowmark", metadata !5, i32 33555216, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowmark] [line 784]
!129 = metadata !{i32 786689, metadata !123, metadata !"colmark", metadata !5, i32 50332433, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colmark] [line 785]
!130 = metadata !{i32 786689, metadata !123, metadata !"tag", metadata !5, i32 67109650, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 786]
!131 = metadata !{i32 786689, metadata !123, metadata !"pirow", metadata !5, i32 83886867, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pirow] [line 787]
!132 = metadata !{i32 786689, metadata !123, metadata !"pjcol", metadata !5, i32 100664084, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pjcol] [line 788]
!133 = metadata !{i32 786688, metadata !123, metadata !"maxval", metadata !5, i32 790, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 790]
!134 = metadata !{i32 786688, metadata !123, metadata !"irow", metadata !5, i32 791, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 791]
!135 = metadata !{i32 786688, metadata !123, metadata !"jcol", metadata !5, i32 791, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 791]
!136 = metadata !{i32 786688, metadata !123, metadata !"nD", metadata !5, i32 791, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 791]
!137 = metadata !{i32 786688, metadata !123, metadata !"qcol", metadata !5, i32 791, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qcol] [line 791]
!138 = metadata !{i32 786688, metadata !123, metadata !"qrow", metadata !5, i32 791, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qrow] [line 791]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_fastBunchParlettPivot", metadata !"Chv_fastBunchParlettPivot", metadata !"", i32 920, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32*, i32, i32*, i32*)* @Chv_fastBunchParlettPivot, null, null, metadata !142, i32 926} ; [ DW_TAG_subprogram ] [line 920] [def] [scope 926] [Chv_fastBunchParlettPivot]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{null, metadata !9, metadata !21, metadata !8, metadata !21, metadata !21}
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157}
!143 = metadata !{i32 786689, metadata !139, metadata !"chv", metadata !5, i32 16778137, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 921]
!144 = metadata !{i32 786689, metadata !139, metadata !"mark", metadata !5, i32 33555354, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mark] [line 922]
!145 = metadata !{i32 786689, metadata !139, metadata !"tag", metadata !5, i32 50332571, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 923]
!146 = metadata !{i32 786689, metadata !139, metadata !"pirow", metadata !5, i32 67109788, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pirow] [line 924]
!147 = metadata !{i32 786689, metadata !139, metadata !"pjcol", metadata !5, i32 83887005, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pjcol] [line 925]
!148 = metadata !{i32 786688, metadata !139, metadata !"maxdiag", metadata !5, i32 927, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxdiag] [line 927]
!149 = metadata !{i32 786688, metadata !139, metadata !"gamma_r", metadata !5, i32 927, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gamma_r] [line 927]
!150 = metadata !{i32 786688, metadata !139, metadata !"gamma_s", metadata !5, i32 927, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gamma_s] [line 927]
!151 = metadata !{i32 786688, metadata !139, metadata !"entries", metadata !5, i32 928, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 928]
!152 = metadata !{i32 786688, metadata !139, metadata !"nD", metadata !5, i32 929, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 929]
!153 = metadata !{i32 786688, metadata !139, metadata !"nL", metadata !5, i32 929, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 929]
!154 = metadata !{i32 786688, metadata !139, metadata !"nU", metadata !5, i32 929, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 929]
!155 = metadata !{i32 786688, metadata !139, metadata !"r", metadata !5, i32 929, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 929]
!156 = metadata !{i32 786688, metadata !139, metadata !"s", metadata !5, i32 929, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 929]
!157 = metadata !{i32 786688, metadata !139, metadata !"t", metadata !5, i32 929, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 929]
!158 = metadata !{i32 21, i32 0, metadata !4, null}
!159 = metadata !{i32 22, i32 0, metadata !4, null}
!160 = metadata !{i32 23, i32 0, metadata !4, null}
!161 = metadata !{i32 24, i32 0, metadata !4, null}
!162 = metadata !{i32 28, i32 0, metadata !4, null}
!163 = metadata !{i32 34, i32 0, metadata !4, null}
!164 = metadata !{i32 35, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!166 = metadata !{metadata !"any pointer", metadata !167}
!167 = metadata !{metadata !"omnipotent char", metadata !168}
!168 = metadata !{metadata !"Simple C/C++ TBAA"}
!169 = metadata !{i32 38, i32 0, metadata !165, null}
!170 = metadata !{i32 40, i32 0, metadata !4, null}
!171 = metadata !{i32 41, i32 0, metadata !4, null}
!172 = metadata !{i32 42, i32 0, metadata !4, null}
!173 = metadata !{metadata !"int", metadata !167}
!174 = metadata !{i32 43, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !4, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!176 = metadata !{i32 -1}
!177 = metadata !{i32 49, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !175, i32 43, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!179 = metadata !{double 0.000000e+00}
!180 = metadata !{i32 50, i32 0, metadata !178, null}
!181 = metadata !{i32 51, i32 0, metadata !178, null}
!182 = metadata !{i32 52, i32 0, metadata !178, null}
!183 = metadata !{i32 53, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !178, i32 53, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!185 = metadata !{i32 54, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !184, i32 53, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!187 = metadata !{i32 55, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !186, i32 54, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!189 = metadata !{metadata !"double", metadata !167}
!190 = metadata !{i32 56, i32 0, metadata !188, null}
!191 = metadata !{i32 undef}
!192 = metadata !{i32 57, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !188, i32 56, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!194 = metadata !{i32 60, i32 0, metadata !186, null}
!195 = metadata !{i32 69, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !175, i32 63, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!197 = metadata !{i32 70, i32 0, metadata !196, null}
!198 = metadata !{i32 71, i32 0, metadata !196, null}
!199 = metadata !{i32 72, i32 0, metadata !196, null}
!200 = metadata !{i32 73, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !196, i32 73, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!202 = metadata !{i32 74, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !201, i32 73, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!204 = metadata !{i32 75, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !203, i32 74, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!206 = metadata !{i32 76, i32 0, metadata !205, null}
!207 = metadata !{i32 77, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !205, i32 76, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!209 = metadata !{i32 80, i32 0, metadata !203, null}
!210 = metadata !{i32 84, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !175, i32 83, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!212 = metadata !{i32 88, i32 0, metadata !211, null}
!213 = metadata !{i32 91, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !4, i32 90, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!215 = metadata !{i32 97, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !214, i32 91, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!217 = metadata !{i32 98, i32 0, metadata !216, null}
!218 = metadata !{i32 99, i32 0, metadata !216, null}
!219 = metadata !{i32 100, i32 0, metadata !216, null}
!220 = metadata !{i32 101, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !216, i32 101, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!222 = metadata !{i32 102, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !221, i32 101, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!224 = metadata !{i32 103, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !223, i32 102, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!226 = metadata !{i32 104, i32 0, metadata !225, null}
!227 = metadata !{i32 105, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !225, i32 104, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!229 = metadata !{i32 108, i32 0, metadata !223, null}
!230 = metadata !{i32 117, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !214, i32 111, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!232 = metadata !{i32 118, i32 0, metadata !231, null}
!233 = metadata !{i32 119, i32 0, metadata !231, null}
!234 = metadata !{i32 120, i32 0, metadata !231, null}
!235 = metadata !{i32 121, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !231, i32 121, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!237 = metadata !{i32 122, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !236, i32 121, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!239 = metadata !{i32 123, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !238, i32 122, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!241 = metadata !{i32 124, i32 0, metadata !240, null}
!242 = metadata !{i32 125, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !240, i32 124, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!244 = metadata !{i32 128, i32 0, metadata !238, null}
!245 = metadata !{i32 132, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !214, i32 131, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!247 = metadata !{i32 136, i32 0, metadata !246, null}
!248 = metadata !{i32 139, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !4, i32 138, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!250 = metadata !{i32 143, i32 0, metadata !249, null}
!251 = metadata !{i32 145, i32 0, metadata !4, null}
!252 = metadata !{i32 147, i32 0, metadata !4, null}
!253 = metadata !{i32 164, i32 0, metadata !53, null}
!254 = metadata !{i32 165, i32 0, metadata !53, null}
!255 = metadata !{i32 166, i32 0, metadata !53, null}
!256 = metadata !{i32 167, i32 0, metadata !53, null}
!257 = metadata !{i32 168, i32 0, metadata !53, null}
!258 = metadata !{i32 172, i32 0, metadata !53, null}
!259 = metadata !{i32 178, i32 0, metadata !53, null}
!260 = metadata !{i32 179, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !53, i32 178, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!262 = metadata !{i32 182, i32 0, metadata !261, null}
!263 = metadata !{i32 184, i32 0, metadata !53, null}
!264 = metadata !{i32 185, i32 0, metadata !53, null}
!265 = metadata !{i32 186, i32 0, metadata !53, null}
!266 = metadata !{i32 187, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !53, i32 186, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!268 = metadata !{i32 193, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !267, i32 187, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!270 = metadata !{i32 194, i32 0, metadata !269, null}
!271 = metadata !{i32 195, i32 0, metadata !269, null}
!272 = metadata !{i32 196, i32 0, metadata !269, null}
!273 = metadata !{i32 197, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !269, i32 197, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!275 = metadata !{i32 207, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !269, i32 207, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!277 = metadata !{i32 198, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !274, i32 197, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!279 = metadata !{i32 199, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !278, i32 198, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!281 = metadata !{i32 200, i32 0, metadata !280, null}
!282 = metadata !{i32 201, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !280, i32 200, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!284 = metadata !{i32 204, i32 0, metadata !278, null}
!285 = metadata !{i32 208, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !276, i32 207, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!287 = metadata !{i32 209, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !286, i32 208, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!289 = metadata !{i32 210, i32 0, metadata !288, null}
!290 = metadata !{i32 211, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 210, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!292 = metadata !{i32 221, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !267, i32 215, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!294 = metadata !{i32 222, i32 0, metadata !293, null}
!295 = metadata !{i32 223, i32 0, metadata !293, null}
!296 = metadata !{i32 224, i32 0, metadata !293, null}
!297 = metadata !{i32 225, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !293, i32 225, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!299 = metadata !{i32 235, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !293, i32 235, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!301 = metadata !{i32 226, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !298, i32 225, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!303 = metadata !{i32 227, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !302, i32 226, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!305 = metadata !{i32 228, i32 0, metadata !304, null}
!306 = metadata !{i32 229, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !304, i32 228, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!308 = metadata !{i32 232, i32 0, metadata !302, null}
!309 = metadata !{i32 236, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !300, i32 235, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!311 = metadata !{i32 237, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !310, i32 236, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!313 = metadata !{i32 238, i32 0, metadata !312, null}
!314 = metadata !{i32 239, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !312, i32 238, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!316 = metadata !{i32 244, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !267, i32 243, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!318 = metadata !{i32 248, i32 0, metadata !317, null}
!319 = metadata !{i32 251, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !53, i32 250, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!321 = metadata !{i32 257, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !320, i32 251, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!323 = metadata !{i32 258, i32 0, metadata !322, null}
!324 = metadata !{i32 259, i32 0, metadata !322, null}
!325 = metadata !{i32 260, i32 0, metadata !322, null}
!326 = metadata !{i32 261, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !322, i32 261, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!328 = metadata !{i32 271, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !322, i32 271, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!330 = metadata !{i32 262, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !327, i32 261, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!332 = metadata !{i32 263, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !331, i32 262, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!334 = metadata !{i32 264, i32 0, metadata !333, null}
!335 = metadata !{i32 265, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !333, i32 264, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!337 = metadata !{i32 268, i32 0, metadata !331, null}
!338 = metadata !{i32 272, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !329, i32 271, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!340 = metadata !{i32 273, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 272, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!342 = metadata !{i32 274, i32 0, metadata !341, null}
!343 = metadata !{i32 275, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !341, i32 274, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!345 = metadata !{i32 285, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !320, i32 279, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!347 = metadata !{i32 286, i32 0, metadata !346, null}
!348 = metadata !{i32 287, i32 0, metadata !346, null}
!349 = metadata !{i32 288, i32 0, metadata !346, null}
!350 = metadata !{i32 289, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !346, i32 289, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!352 = metadata !{i32 299, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !346, i32 299, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!354 = metadata !{i32 290, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !351, i32 289, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!356 = metadata !{i32 291, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !355, i32 290, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!358 = metadata !{i32 292, i32 0, metadata !357, null}
!359 = metadata !{i32 293, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !357, i32 292, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!361 = metadata !{i32 296, i32 0, metadata !355, null}
!362 = metadata !{i32 300, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !353, i32 299, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!364 = metadata !{i32 301, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !363, i32 300, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!366 = metadata !{i32 302, i32 0, metadata !365, null}
!367 = metadata !{i32 303, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !365, i32 302, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!369 = metadata !{i32 308, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !320, i32 307, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!371 = metadata !{i32 312, i32 0, metadata !370, null}
!372 = metadata !{i32 315, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !53, i32 314, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!374 = metadata !{i32 319, i32 0, metadata !373, null}
!375 = metadata !{i32 321, i32 0, metadata !53, null}
!376 = metadata !{i32 323, i32 0, metadata !53, null}
!377 = metadata !{i32 340, i32 0, metadata !72, null}
!378 = metadata !{i32 341, i32 0, metadata !72, null}
!379 = metadata !{i32 342, i32 0, metadata !72, null}
!380 = metadata !{i32 343, i32 0, metadata !72, null}
!381 = metadata !{i32 344, i32 0, metadata !72, null}
!382 = metadata !{i32 348, i32 0, metadata !72, null}
!383 = metadata !{i32 354, i32 0, metadata !72, null}
!384 = metadata !{i32 355, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !72, i32 354, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!386 = metadata !{i32 358, i32 0, metadata !385, null}
!387 = metadata !{i32 360, i32 0, metadata !72, null}
!388 = metadata !{i32 361, i32 0, metadata !72, null}
!389 = metadata !{i32 362, i32 0, metadata !72, null}
!390 = metadata !{i32 363, i32 0, metadata !72, null}
!391 = metadata !{i32 364, i32 0, metadata !72, null}
!392 = metadata !{i32 365, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !72, i32 364, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!394 = metadata !{i32 371, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !393, i32 365, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!396 = metadata !{i32 372, i32 0, metadata !395, null}
!397 = metadata !{i32 373, i32 0, metadata !395, null}
!398 = metadata !{i32 374, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !395, i32 374, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!400 = metadata !{i32 384, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !395, i32 384, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!402 = metadata !{i32 375, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !399, i32 374, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!404 = metadata !{i32 376, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !403, i32 375, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!406 = metadata !{i32 377, i32 0, metadata !405, null}
!407 = metadata !{i32 378, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !405, i32 377, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!409 = metadata !{i32 381, i32 0, metadata !403, null}
!410 = metadata !{i32 385, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !401, i32 384, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!412 = metadata !{i32 386, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !411, i32 385, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!414 = metadata !{i32 387, i32 0, metadata !413, null}
!415 = metadata !{i32 388, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !413, i32 387, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!417 = metadata !{i32 398, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !393, i32 392, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!419 = metadata !{i32 399, i32 0, metadata !418, null}
!420 = metadata !{i32 400, i32 0, metadata !418, null}
!421 = metadata !{i32 401, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !418, i32 401, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!423 = metadata !{i32 411, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !418, i32 411, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!425 = metadata !{i32 402, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !422, i32 401, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!427 = metadata !{i32 403, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !426, i32 402, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!429 = metadata !{i32 404, i32 0, metadata !428, null}
!430 = metadata !{i32 405, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !428, i32 404, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!432 = metadata !{i32 408, i32 0, metadata !426, null}
!433 = metadata !{i32 412, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !424, i32 411, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!435 = metadata !{i32 413, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !434, i32 412, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!437 = metadata !{i32 414, i32 0, metadata !436, null}
!438 = metadata !{i32 415, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !436, i32 414, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!440 = metadata !{i32 421, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !72, i32 420, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!442 = metadata !{i32 427, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !441, i32 421, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!444 = metadata !{i32 428, i32 0, metadata !443, null}
!445 = metadata !{i32 429, i32 0, metadata !443, null}
!446 = metadata !{i32 430, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !443, i32 430, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!448 = metadata !{i32 440, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !443, i32 440, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!450 = metadata !{i32 431, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !447, i32 430, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!452 = metadata !{i32 432, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !451, i32 431, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!454 = metadata !{i32 433, i32 0, metadata !453, null}
!455 = metadata !{i32 434, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !453, i32 433, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!457 = metadata !{i32 437, i32 0, metadata !451, null}
!458 = metadata !{i32 441, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !449, i32 440, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!460 = metadata !{i32 442, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !459, i32 441, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!462 = metadata !{i32 443, i32 0, metadata !461, null}
!463 = metadata !{i32 444, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !461, i32 443, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!465 = metadata !{i32 454, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !441, i32 448, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!467 = metadata !{i32 455, i32 0, metadata !466, null}
!468 = metadata !{i32 456, i32 0, metadata !466, null}
!469 = metadata !{i32 457, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !466, i32 457, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!471 = metadata !{i32 467, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !466, i32 467, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!473 = metadata !{i32 458, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !470, i32 457, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!475 = metadata !{i32 459, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !474, i32 458, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!477 = metadata !{i32 460, i32 0, metadata !476, null}
!478 = metadata !{i32 461, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !1, metadata !476, i32 460, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!480 = metadata !{i32 464, i32 0, metadata !474, null}
!481 = metadata !{i32 468, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !472, i32 467, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!483 = metadata !{i32 469, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !482, i32 468, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!485 = metadata !{i32 470, i32 0, metadata !484, null}
!486 = metadata !{i32 471, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !484, i32 470, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!488 = metadata !{i32 477, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !72, i32 476, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!490 = metadata !{i32 481, i32 0, metadata !489, null}
!491 = metadata !{i32 483, i32 0, metadata !72, null}
!492 = metadata !{i32 485, i32 0, metadata !72, null}
!493 = metadata !{i32 499, i32 0, metadata !89, null}
!494 = metadata !{i32 500, i32 0, metadata !89, null}
!495 = metadata !{i32 501, i32 0, metadata !89, null}
!496 = metadata !{i32 505, i32 0, metadata !89, null}
!497 = metadata !{i32 511, i32 0, metadata !89, null}
!498 = metadata !{i32 512, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !89, i32 511, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!500 = metadata !{i32 514, i32 0, metadata !499, null}
!501 = metadata !{i32 516, i32 0, metadata !89, null}
!502 = metadata !{i32 517, i32 0, metadata !89, null}
!503 = metadata !{i32 518, i32 0, metadata !89, null}
!504 = metadata !{i32 519, i32 0, metadata !89, null}
!505 = metadata !{i32 520, i32 0, metadata !89, null}
!506 = metadata !{i32 521, i32 0, metadata !89, null}
!507 = metadata !{i32 522, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !89, i32 521, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!509 = metadata !{i32 556, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !511, i32 556, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!511 = metadata !{i32 786443, metadata !1, metadata !508, i32 546, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!512 = metadata !{i32 528, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !508, i32 522, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!514 = metadata !{i32 529, i32 0, metadata !513, null}
!515 = metadata !{i32 530, i32 0, metadata !513, null}
!516 = metadata !{i32 532, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !513, i32 532, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!518 = metadata !{i32 540, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !513, i32 540, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!520 = metadata !{i32 533, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !517, i32 532, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!522 = metadata !{i32 534, i32 0, metadata !521, null}
!523 = metadata !{i32 535, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !521, i32 534, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!525 = metadata !{i32 537, i32 0, metadata !521, null}
!526 = metadata !{i32 541, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !519, i32 540, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!528 = metadata !{i32 542, i32 0, metadata !527, null}
!529 = metadata !{i32 543, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !527, i32 542, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!531 = metadata !{i32 564, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !511, i32 564, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!533 = metadata !{i32 557, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !510, i32 556, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!535 = metadata !{i32 558, i32 0, metadata !534, null}
!536 = metadata !{i32 559, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !534, i32 558, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!538 = metadata !{i32 561, i32 0, metadata !534, null}
!539 = metadata !{i32 565, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !532, i32 564, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!541 = metadata !{i32 566, i32 0, metadata !540, null}
!542 = metadata !{i32 567, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !540, i32 566, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!544 = metadata !{i32 572, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !1, metadata !89, i32 571, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!546 = metadata !{i32 578, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !545, i32 572, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!548 = metadata !{i32 579, i32 0, metadata !547, null}
!549 = metadata !{i32 580, i32 0, metadata !547, null}
!550 = metadata !{i32 582, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !547, i32 582, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!552 = metadata !{i32 590, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !547, i32 590, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!554 = metadata !{i32 583, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !551, i32 582, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!556 = metadata !{i32 584, i32 0, metadata !555, null}
!557 = metadata !{i32 585, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !555, i32 584, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!559 = metadata !{i32 587, i32 0, metadata !555, null}
!560 = metadata !{i32 591, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !553, i32 590, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!562 = metadata !{i32 592, i32 0, metadata !561, null}
!563 = metadata !{i32 593, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !561, i32 592, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!565 = metadata !{i32 602, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !545, i32 596, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!567 = metadata !{i32 603, i32 0, metadata !566, null}
!568 = metadata !{i32 604, i32 0, metadata !566, null}
!569 = metadata !{i32 605, i32 0, metadata !566, null}
!570 = metadata !{i32 606, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !566, i32 606, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!572 = metadata !{i32 614, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !566, i32 614, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!574 = metadata !{i32 607, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !571, i32 606, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!576 = metadata !{i32 608, i32 0, metadata !575, null}
!577 = metadata !{i32 609, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !575, i32 608, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!579 = metadata !{i32 611, i32 0, metadata !575, null}
!580 = metadata !{i32 615, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !573, i32 614, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!582 = metadata !{i32 616, i32 0, metadata !581, null}
!583 = metadata !{i32 617, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !581, i32 616, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!585 = metadata !{i32 622, i32 0, metadata !586, null}
!586 = metadata !{i32 786443, metadata !1, metadata !89, i32 621, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!587 = metadata !{i32 626, i32 0, metadata !586, null}
!588 = metadata !{i32 628, i32 0, metadata !89, null}
!589 = metadata !{i32 630, i32 0, metadata !89, null}
!590 = metadata !{i32 644, i32 0, metadata !107, null}
!591 = metadata !{i32 645, i32 0, metadata !107, null}
!592 = metadata !{i32 646, i32 0, metadata !107, null}
!593 = metadata !{i32 650, i32 0, metadata !107, null}
!594 = metadata !{i32 656, i32 0, metadata !107, null}
!595 = metadata !{i32 657, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !107, i32 656, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!597 = metadata !{i32 659, i32 0, metadata !596, null}
!598 = metadata !{i32 661, i32 0, metadata !107, null}
!599 = metadata !{i32 662, i32 0, metadata !107, null}
!600 = metadata !{i32 663, i32 0, metadata !107, null}
!601 = metadata !{i32 664, i32 0, metadata !107, null}
!602 = metadata !{i32 665, i32 0, metadata !107, null}
!603 = metadata !{i32 666, i32 0, metadata !107, null}
!604 = metadata !{i32 667, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !107, i32 666, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!606 = metadata !{i32 673, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !605, i32 667, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!608 = metadata !{i32 674, i32 0, metadata !607, null}
!609 = metadata !{i32 675, i32 0, metadata !607, null}
!610 = metadata !{i32 676, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !607, i32 676, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!612 = metadata !{i32 684, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !607, i32 684, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!614 = metadata !{i32 677, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !1, metadata !611, i32 676, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!616 = metadata !{i32 678, i32 0, metadata !615, null}
!617 = metadata !{i32 679, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !615, i32 678, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!619 = metadata !{i32 681, i32 0, metadata !615, null}
!620 = metadata !{i32 685, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !613, i32 684, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!622 = metadata !{i32 686, i32 0, metadata !621, null}
!623 = metadata !{i32 687, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !1, metadata !621, i32 686, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!625 = metadata !{i32 696, i32 0, metadata !626, null}
!626 = metadata !{i32 786443, metadata !1, metadata !605, i32 690, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!627 = metadata !{i32 697, i32 0, metadata !626, null}
!628 = metadata !{i32 698, i32 0, metadata !626, null}
!629 = metadata !{i32 699, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !626, i32 699, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!631 = metadata !{i32 707, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !626, i32 707, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!633 = metadata !{i32 700, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !630, i32 699, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!635 = metadata !{i32 701, i32 0, metadata !634, null}
!636 = metadata !{i32 702, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !634, i32 701, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!638 = metadata !{i32 704, i32 0, metadata !634, null}
!639 = metadata !{i32 708, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !632, i32 707, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!641 = metadata !{i32 709, i32 0, metadata !640, null}
!642 = metadata !{i32 710, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !640, i32 709, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!644 = metadata !{i32 715, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !107, i32 714, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!646 = metadata !{i32 721, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !645, i32 715, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!648 = metadata !{i32 722, i32 0, metadata !647, null}
!649 = metadata !{i32 723, i32 0, metadata !647, null}
!650 = metadata !{i32 724, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !647, i32 724, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!652 = metadata !{i32 732, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !647, i32 732, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!654 = metadata !{i32 725, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !651, i32 724, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!656 = metadata !{i32 726, i32 0, metadata !655, null}
!657 = metadata !{i32 727, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !655, i32 726, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!659 = metadata !{i32 729, i32 0, metadata !655, null}
!660 = metadata !{i32 733, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !653, i32 732, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!662 = metadata !{i32 734, i32 0, metadata !661, null}
!663 = metadata !{i32 735, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !661, i32 734, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!665 = metadata !{i32 744, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !645, i32 738, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!667 = metadata !{i32 745, i32 0, metadata !666, null}
!668 = metadata !{i32 746, i32 0, metadata !666, null}
!669 = metadata !{i32 747, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !666, i32 747, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!671 = metadata !{i32 755, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !666, i32 755, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!673 = metadata !{i32 748, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !670, i32 747, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!675 = metadata !{i32 749, i32 0, metadata !674, null}
!676 = metadata !{i32 750, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !674, i32 749, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!678 = metadata !{i32 752, i32 0, metadata !674, null}
!679 = metadata !{i32 756, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !672, i32 755, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!681 = metadata !{i32 757, i32 0, metadata !680, null}
!682 = metadata !{i32 758, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !680, i32 757, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!684 = metadata !{i32 763, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !107, i32 762, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!686 = metadata !{i32 766, i32 0, metadata !685, null}
!687 = metadata !{i32 768, i32 0, metadata !107, null}
!688 = metadata !{i32 770, i32 0, metadata !107, null}
!689 = metadata !{i32 783, i32 0, metadata !123, null}
!690 = metadata !{i32 784, i32 0, metadata !123, null}
!691 = metadata !{i32 785, i32 0, metadata !123, null}
!692 = metadata !{i32 786, i32 0, metadata !123, null}
!693 = metadata !{i32 787, i32 0, metadata !123, null}
!694 = metadata !{i32 788, i32 0, metadata !123, null}
!695 = metadata !{i32 790, i32 0, metadata !123, null}
!696 = metadata !{i32 797, i32 0, metadata !123, null}
!697 = metadata !{i32 799, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !123, i32 798, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!699 = metadata !{i32 802, i32 0, metadata !698, null}
!700 = metadata !{i32 804, i32 0, metadata !123, null}
!701 = metadata !{i32 805, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !123, i32 804, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!703 = metadata !{i32 811, i32 0, metadata !702, null}
!704 = metadata !{i32 813, i32 0, metadata !123, null}
!705 = metadata !{i32 819, i32 0, metadata !123, null}
!706 = metadata !{i32 820, i32 0, metadata !123, null}
!707 = metadata !{i32 826, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !123, i32 826, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!709 = metadata !{i32 827, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !708, i32 826, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!711 = metadata !{i32 831, i32 0, metadata !123, null}
!712 = metadata !{i32 844, i32 0, metadata !123, null}
!713 = metadata !{i32 850, i32 0, metadata !123, null}
!714 = metadata !{i32 864, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !123, i32 858, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!716 = metadata !{i32 870, i32 0, metadata !715, null}
!717 = metadata !{i32 878, i32 0, metadata !715, null}
!718 = metadata !{i32 884, i32 0, metadata !715, null}
!719 = metadata !{i32 890, i32 0, metadata !715, null}
!720 = metadata !{i32 905, i32 0, metadata !123, null}
!721 = metadata !{i32 906, i32 0, metadata !123, null}
!722 = metadata !{i32 908, i32 0, metadata !123, null}
!723 = metadata !{i32 837, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !123, i32 831, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!725 = metadata !{i32 921, i32 0, metadata !139, null}
!726 = metadata !{i32 922, i32 0, metadata !139, null}
!727 = metadata !{i32 923, i32 0, metadata !139, null}
!728 = metadata !{i32 924, i32 0, metadata !139, null}
!729 = metadata !{i32 925, i32 0, metadata !139, null}
!730 = metadata !{i32 927, i32 0, metadata !139, null}
!731 = metadata !{i32 929, i32 0, metadata !139, null}
!732 = metadata !{i32 935, i32 0, metadata !139, null}
!733 = metadata !{i32 936, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !139, i32 935, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!735 = metadata !{i32 940, i32 0, metadata !734, null}
!736 = metadata !{i32 942, i32 0, metadata !139, null}
!737 = metadata !{i32 943, i32 0, metadata !139, null}
!738 = metadata !{i32 949, i32 0, metadata !139, null}
!739 = metadata !{i32 955, i32 0, metadata !139, null}
!740 = metadata !{i32 956, i32 0, metadata !139, null}
!741 = metadata !{i32 962, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !139, i32 956, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!743 = metadata !{i32 963, i32 0, metadata !742, null}
!744 = metadata !{i32 970, i32 0, metadata !139, null}
!745 = metadata !{i32 971, i32 0, metadata !139, null}
!746 = metadata !{i32 972, i32 0, metadata !139, null}
!747 = metadata !{i32 973, i32 0, metadata !139, null}
!748 = metadata !{i32 979, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !139, i32 973, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!750 = metadata !{i32 980, i32 0, metadata !749, null}
!751 = metadata !{i32 982, i32 0, metadata !139, null}
!752 = metadata !{i32 1004, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !754, i32 996, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!754 = metadata !{i32 786443, metadata !1, metadata !139, i32 990, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!755 = metadata !{i32 1005, i32 0, metadata !753, null}
!756 = metadata !{i32 988, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !139, i32 982, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!758 = metadata !{i32 989, i32 0, metadata !757, null}
!759 = metadata !{i32 1011, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !753, i32 1005, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!761 = metadata !{i32 1012, i32 0, metadata !760, null}
!762 = metadata !{i32 1013, i32 0, metadata !760, null}
!763 = metadata !{i32 1020, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !753, i32 1014, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_search.c]
!765 = metadata !{i32 1021, i32 0, metadata !764, null}
!766 = metadata !{i32 1022, i32 0, metadata !764, null}
!767 = metadata !{i32 1022, i32 0, metadata !139, null}

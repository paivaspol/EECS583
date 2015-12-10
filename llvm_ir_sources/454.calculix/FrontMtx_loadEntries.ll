; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@FrontMtx_loadEntries.one = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in FrontMtx_loadEntries(%p,%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A\0A # inside loadEntries for chv %d, sigma = %12.4e + i*%12.4e\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"\0A inpmtxA chevron %d : chvsize = %d\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"\0A chvind\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"\0A chvent\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"\0A inpmtxB chevron %d : chvsize = %d\00", align 1
@.str6 = private unnamed_addr constant [90 x i8] c"\0A fatal error in FrontMtx_loadEntries()\0A chevron is hermitian\0A sigma = %12.4e + %12.4e*i\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_loadEntries(%struct._Chv* %chv, %struct._Pencil* %pencil, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %one = alloca [2 x double], align 16
  %chvent = alloca double*, align 8
  %chvsize = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %chvind = alloca i32*, align 8
  %colind = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %ierr167 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !136), !dbg !177
  call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !137), !dbg !178
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !138), !dbg !179
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !139), !dbg !180
  call void @llvm.dbg.declare(metadata !{[2 x double]* %one}, metadata !142), !dbg !181
  %0 = bitcast [2 x double]* %one to i8*, !dbg !181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x double]* @FrontMtx_loadEntries.one to i8*), i64 16, i32 16, i1 false), !dbg !181
  call void @llvm.dbg.declare(metadata !{double** %chvent}, metadata !144), !dbg !182
  call void @llvm.dbg.declare(metadata !{i32* %chvsize}, metadata !145), !dbg !183
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !147), !dbg !183
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !148), !dbg !183
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !149), !dbg !183
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !150), !dbg !183
  call void @llvm.dbg.declare(metadata !{i32** %chvind}, metadata !151), !dbg !184
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !152), !dbg !184
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !185
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !185

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0, !dbg !185
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null, !dbg !185
  %or.cond = and i1 %cmp1, %cmp2, !dbg !185
  br i1 %or.cond, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !186, !tbaa !188
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, %struct._Pencil* %pencil, i32 %msglvl, %struct._IO_FILE* %msgFile) #6, !dbg !186
  call void @exit(i32 -1) #7, !dbg !191
  unreachable, !dbg !191

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp sgt i32 %msglvl, 3, !dbg !192
  br i1 %cmp3, label %if.then4, label %if.end.if.end10_crit_edge, !dbg !192

if.end.if.end10_crit_edge:                        ; preds = %if.end
  %arraydecay.pre = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0, !dbg !193
  br label %if.end10, !dbg !192

if.then4:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !194
  %2 = load i32* %id, align 4, !dbg !194, !tbaa !196
  %arrayidx = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0, !dbg !194
  %3 = load double* %arrayidx, align 8, !dbg !194, !tbaa !197
  %arrayidx7 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !194
  %4 = load double* %arrayidx7, align 8, !dbg !194, !tbaa !197
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 %2, double %3, double %4) #6, !dbg !194
  %call9 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !198
  br label %if.end10, !dbg !199

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.then4
  %arraydecay.pre-phi = phi double* [ %arraydecay.pre, %if.end.if.end10_crit_edge ], [ %arrayidx, %if.then4 ], !dbg !193
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !200
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #6, !dbg !201
  %inpmtxA11 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !202
  %5 = load %struct._InpMtx** %inpmtxA11, align 8, !dbg !202, !tbaa !188
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %5}, i64 0, metadata !140), !dbg !202
  call void @llvm.dbg.value(metadata !{double* %arraydecay.pre-phi}, i64 0, metadata !143), !dbg !193
  %inpmtxB13 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !203
  %6 = load %struct._InpMtx** %inpmtxB13, align 8, !dbg !203, !tbaa !188
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %6}, i64 0, metadata !141), !dbg !203
  %cmp14 = icmp eq %struct._InpMtx* %5, null, !dbg !204
  br i1 %cmp14, label %if.else46, label %for.cond.preheader, !dbg !204

for.cond.preheader:                               ; preds = %if.end10
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !205
  %7 = load i32* %nD, align 4, !dbg !205, !tbaa !196
  %cmp16512 = icmp sgt i32 %7, 0, !dbg !205
  br i1 %cmp16512, label %for.body.lr.ph, label %if.end145, !dbg !205

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %inputMode = getelementptr inbounds %struct._InpMtx* %5, i64 0, i32 2, !dbg !206
  %arraydecay44 = getelementptr inbounds [2 x double]* %one, i64 0, i64 0, !dbg !207
  br label %for.body, !dbg !205

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv530 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next531, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !152), !dbg !208
  %8 = load i32** %colind, align 8, !dbg !208, !tbaa !188
  %arrayidx17 = getelementptr inbounds i32* %8, i64 %indvars.iv530, !dbg !208
  %9 = load i32* %arrayidx17, align 4, !dbg !208, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !146), !dbg !208
  %10 = load i32* %inputMode, align 4, !dbg !206, !tbaa !196
  switch i32 %10, label %if.end24 [
    i32 1, label %if.then19
    i32 2, label %if.then22
  ], !dbg !206

if.then19:                                        ; preds = %for.body
  call void @InpMtx_realVector(%struct._InpMtx* %5, i32 %9, i32* %chvsize, i32** %chvind, double** %chvent) #6, !dbg !209
  br label %if.end24, !dbg !211

if.then22:                                        ; preds = %for.body
  call void @InpMtx_complexVector(%struct._InpMtx* %5, i32 %9, i32* %chvsize, i32** %chvind, double** %chvent) #6, !dbg !212
  br label %if.end24, !dbg !214

if.end24:                                         ; preds = %for.body, %if.then22, %if.then19
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !215
  %11 = load i32* %chvsize, align 4, !dbg !215, !tbaa !196
  %cmp25 = icmp sgt i32 %11, 0, !dbg !215
  br i1 %cmp25, label %if.then26, label %for.inc, !dbg !215

if.then26:                                        ; preds = %if.end24
  br i1 %cmp3, label %if.then28, label %if.end43, !dbg !216

if.then28:                                        ; preds = %if.then26
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !155), !dbg !217
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), i32 %9, i32 %11) #6, !dbg !218
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile), !dbg !219
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !220
  %13 = load i32* %chvsize, align 4, !dbg !220, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32** %chvind}, i64 0, metadata !151), !dbg !220
  %14 = load i32** %chvind, align 8, !dbg !220, !tbaa !188
  %call31 = call i32 @IVfp80(%struct._IO_FILE* %msgFile, i32 %13, i32* %14, i32 80, i32* %ierr) #6, !dbg !220
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile), !dbg !221
  %16 = load i32* %inputMode, align 4, !dbg !222, !tbaa !196
  switch i32 %16, label %if.end41 [
    i32 1, label %if.then35
    i32 2, label %if.then39
  ], !dbg !222

if.then35:                                        ; preds = %if.then28
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !223
  %17 = load i32* %chvsize, align 4, !dbg !223, !tbaa !196
  call void @llvm.dbg.value(metadata !{double** %chvent}, i64 0, metadata !144), !dbg !223
  %18 = load double** %chvent, align 8, !dbg !223, !tbaa !188
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %17, double* %18) #6, !dbg !223
  br label %if.end41, !dbg !225

if.then39:                                        ; preds = %if.then28
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !226
  %19 = load i32* %chvsize, align 4, !dbg !226, !tbaa !196
  %mul = shl nsw i32 %19, 1, !dbg !226
  call void @llvm.dbg.value(metadata !{double** %chvent}, i64 0, metadata !144), !dbg !226
  %20 = load double** %chvent, align 8, !dbg !226, !tbaa !188
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %mul, double* %20) #6, !dbg !226
  br label %if.end41, !dbg !228

if.end41:                                         ; preds = %if.then28, %if.then39, %if.then35
  %call42 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !229
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !207
  %.pre = load i32* %chvsize, align 4, !dbg !207, !tbaa !196
  br label %if.end43, !dbg !230

if.end43:                                         ; preds = %if.end41, %if.then26
  %21 = phi i32 [ %.pre, %if.end41 ], [ %11, %if.then26 ]
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !207
  call void @llvm.dbg.value(metadata !{i32** %chvind}, i64 0, metadata !151), !dbg !207
  %22 = load i32** %chvind, align 8, !dbg !207, !tbaa !188
  call void @llvm.dbg.value(metadata !{double** %chvent}, i64 0, metadata !144), !dbg !207
  %23 = load double** %chvent, align 8, !dbg !207, !tbaa !188
  call void @Chv_addChevron(%struct._Chv* %chv, double* %arraydecay44, i32 %9, i32 %21, i32* %22, double* %23) #6, !dbg !207
  br label %for.inc, !dbg !231

for.inc:                                          ; preds = %if.end24, %if.end43
  %indvars.iv.next531 = add i64 %indvars.iv530, 1, !dbg !205
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !205
  %24 = load i32* %nD, align 4, !dbg !205, !tbaa !196
  %25 = trunc i64 %indvars.iv.next531 to i32, !dbg !205
  %cmp16 = icmp slt i32 %25, %24, !dbg !205
  br i1 %cmp16, label %for.body, label %if.end145, !dbg !205

if.else46:                                        ; preds = %if.end10
  %call48 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !232
  call void @llvm.dbg.value(metadata !{double* %call48}, i64 0, metadata !160), !dbg !232
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !233
  %26 = load i32* %type, align 4, !dbg !233, !tbaa !196
  switch i32 %26, label %if.end145 [
    i32 1, label %if.then50
    i32 2, label %if.then95
  ], !dbg !233

if.then50:                                        ; preds = %if.else46
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !234
  %27 = load i32* %symflag, align 4, !dbg !234, !tbaa !196
  switch i32 %27, label %if.end145 [
    i32 0, label %if.then55
    i32 1, label %if.then55
    i32 2, label %if.then70
  ], !dbg !234

if.then55:                                        ; preds = %if.then50, %if.then50
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !236
  %28 = load i32* %nD, align 4, !dbg !236, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !164), !dbg !236
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !163), !dbg !238
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !239
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !239
  %cmp58490 = icmp sgt i32 %28, 0, !dbg !239
  br i1 %cmp58490, label %for.body59.lr.ph, label %if.end145, !dbg !239

for.body59.lr.ph:                                 ; preds = %if.then55
  %nU56 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !236
  %29 = load i32* %nU56, align 4, !dbg !236, !tbaa !196
  %add = add nsw i32 %29, %28, !dbg !236
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !239
  %30 = sext i32 %add to i64
  br label %for.body59, !dbg !239

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv522 = phi i64 [ %30, %for.body59.lr.ph ], [ %indvars.iv.next523, %for.body59 ]
  %off.0492 = phi i32 [ 0, %for.body59.lr.ph ], [ %add63, %for.body59 ]
  %ii47.0491 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc65, %for.body59 ]
  %idxprom60 = sext i32 %off.0492 to i64, !dbg !241
  %arrayidx61 = getelementptr inbounds double* %call48, i64 %idxprom60, !dbg !241
  %31 = load double* %arrayidx61, align 8, !dbg !241, !tbaa !197
  %add62 = fadd double %31, 1.000000e+00, !dbg !241
  store double %add62, double* %arrayidx61, align 8, !dbg !241, !tbaa !197
  %32 = trunc i64 %indvars.iv522 to i32, !dbg !243
  %add63 = add nsw i32 %32, %off.0492, !dbg !243
  call void @llvm.dbg.value(metadata !{i32 %add63}, i64 0, metadata !163), !dbg !243
  %indvars.iv.next523 = add i64 %indvars.iv522, -1, !dbg !239
  %inc65 = add nsw i32 %ii47.0491, 1, !dbg !239
  call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !162), !dbg !239
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !239
  %cmp58 = icmp slt i32 %inc65, %28, !dbg !239
  br i1 %cmp58, label %for.body59, label %if.end145, !dbg !239

if.then70:                                        ; preds = %if.then50
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !244
  %33 = load i32* %nD, align 4, !dbg !244, !tbaa !196
  %nL72 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !244
  %34 = load i32* %nL72, align 4, !dbg !244, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %sub78}, i64 0, metadata !163), !dbg !246
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !247
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !247
  %cmp80496 = icmp sgt i32 %33, 0, !dbg !247
  br i1 %cmp80496, label %for.body81.lr.ph, label %if.end145, !dbg !247

for.body81.lr.ph:                                 ; preds = %if.then70
  %nU74 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !244
  %add77 = add i32 %33, -1, !dbg !246
  %35 = load i32* %nU74, align 4, !dbg !244, !tbaa !196
  %sub78 = add i32 %add77, %34, !dbg !246
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !247
  %36 = add i32 %34, %35, !dbg !247
  %37 = shl i32 %33, 1, !dbg !247
  %38 = add i32 %36, %37, !dbg !247
  %39 = sext i32 %38 to i64
  br label %for.body81, !dbg !247

for.body81:                                       ; preds = %for.body81.lr.ph, %for.body81
  %indvars.iv524 = phi i64 [ %39, %for.body81.lr.ph ], [ %indvars.iv.next525, %for.body81 ]
  %off.1498 = phi i32 [ %sub78, %for.body81.lr.ph ], [ %add85, %for.body81 ]
  %ii47.1497 = phi i32 [ 0, %for.body81.lr.ph ], [ %inc88, %for.body81 ]
  %indvars.iv.next525 = add i64 %indvars.iv524, -2, !dbg !247
  %idxprom82 = sext i32 %off.1498 to i64, !dbg !249
  %arrayidx83 = getelementptr inbounds double* %call48, i64 %idxprom82, !dbg !249
  %40 = load double* %arrayidx83, align 8, !dbg !249, !tbaa !197
  %add84 = fadd double %40, 1.000000e+00, !dbg !249
  store double %add84, double* %arrayidx83, align 8, !dbg !249, !tbaa !197
  %41 = trunc i64 %indvars.iv.next525 to i32, !dbg !251
  %add85 = add nsw i32 %41, %off.1498, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %add85}, i64 0, metadata !163), !dbg !251
  %inc88 = add nsw i32 %ii47.1497, 1, !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %inc88}, i64 0, metadata !162), !dbg !247
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !247
  %cmp80 = icmp slt i32 %inc88, %33, !dbg !247
  br i1 %cmp80, label %for.body81, label %if.end145, !dbg !247

if.then95:                                        ; preds = %if.else46
  %symflag96 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !252
  %42 = load i32* %symflag96, align 4, !dbg !252, !tbaa !196
  switch i32 %42, label %if.end145 [
    i32 0, label %if.then101
    i32 1, label %if.then101
    i32 2, label %if.then119
  ], !dbg !252

if.then101:                                       ; preds = %if.then95, %if.then95
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !254
  %43 = load i32* %nD, align 4, !dbg !254, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %add103}, i64 0, metadata !164), !dbg !254
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !163), !dbg !256
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !257
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !257
  %cmp105501 = icmp sgt i32 %43, 0, !dbg !257
  br i1 %cmp105501, label %for.body106.lr.ph, label %if.end145, !dbg !257

for.body106.lr.ph:                                ; preds = %if.then101
  %nU102 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !254
  %44 = load i32* %nU102, align 4, !dbg !254, !tbaa !196
  %add103 = add nsw i32 %44, %43, !dbg !254
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !257
  %45 = sext i32 %add103 to i64
  br label %for.body106, !dbg !257

for.body106:                                      ; preds = %for.body106.lr.ph, %for.body106
  %indvars.iv526 = phi i64 [ %45, %for.body106.lr.ph ], [ %indvars.iv.next527, %for.body106 ]
  %off.2503 = phi i32 [ 0, %for.body106.lr.ph ], [ %add111, %for.body106 ]
  %ii47.2502 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc114, %for.body106 ]
  %mul107 = shl nsw i32 %off.2503, 1, !dbg !259
  %idxprom108 = sext i32 %mul107 to i64, !dbg !259
  %arrayidx109 = getelementptr inbounds double* %call48, i64 %idxprom108, !dbg !259
  %46 = load double* %arrayidx109, align 8, !dbg !259, !tbaa !197
  %add110 = fadd double %46, 1.000000e+00, !dbg !259
  store double %add110, double* %arrayidx109, align 8, !dbg !259, !tbaa !197
  %47 = trunc i64 %indvars.iv526 to i32, !dbg !261
  %add111 = add nsw i32 %47, %off.2503, !dbg !261
  call void @llvm.dbg.value(metadata !{i32 %add111}, i64 0, metadata !163), !dbg !261
  %indvars.iv.next527 = add i64 %indvars.iv526, -1, !dbg !257
  %inc114 = add nsw i32 %ii47.2502, 1, !dbg !257
  call void @llvm.dbg.value(metadata !{i32 %inc114}, i64 0, metadata !162), !dbg !257
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !257
  %cmp105 = icmp slt i32 %inc114, %43, !dbg !257
  br i1 %cmp105, label %for.body106, label %if.end145, !dbg !257

if.then119:                                       ; preds = %if.then95
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !262
  %48 = load i32* %nD, align 4, !dbg !262, !tbaa !196
  %nL121 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !262
  %49 = load i32* %nL121, align 4, !dbg !262, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %sub128}, i64 0, metadata !163), !dbg !264
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !265
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !265
  %cmp130507 = icmp sgt i32 %48, 0, !dbg !265
  br i1 %cmp130507, label %for.body131.lr.ph, label %if.end145, !dbg !265

for.body131.lr.ph:                                ; preds = %if.then119
  %nU123 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !262
  %add127 = add i32 %48, -1, !dbg !264
  %50 = load i32* %nU123, align 4, !dbg !262, !tbaa !196
  %sub128 = add i32 %add127, %49, !dbg !264
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !265
  %51 = add i32 %49, %50, !dbg !265
  %52 = shl i32 %48, 1, !dbg !265
  %53 = add i32 %51, %52, !dbg !265
  %54 = sext i32 %53 to i64
  br label %for.body131, !dbg !265

for.body131:                                      ; preds = %for.body131.lr.ph, %for.body131
  %indvars.iv528 = phi i64 [ %54, %for.body131.lr.ph ], [ %indvars.iv.next529, %for.body131 ]
  %off.3509 = phi i32 [ %sub128, %for.body131.lr.ph ], [ %add136, %for.body131 ]
  %ii47.3508 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc139, %for.body131 ]
  %indvars.iv.next529 = add i64 %indvars.iv528, -2, !dbg !265
  %mul132 = shl nsw i32 %off.3509, 1, !dbg !267
  %idxprom133 = sext i32 %mul132 to i64, !dbg !267
  %arrayidx134 = getelementptr inbounds double* %call48, i64 %idxprom133, !dbg !267
  %55 = load double* %arrayidx134, align 8, !dbg !267, !tbaa !197
  %add135 = fadd double %55, 1.000000e+00, !dbg !267
  store double %add135, double* %arrayidx134, align 8, !dbg !267, !tbaa !197
  %56 = trunc i64 %indvars.iv.next529 to i32, !dbg !269
  %add136 = add nsw i32 %56, %off.3509, !dbg !269
  call void @llvm.dbg.value(metadata !{i32 %add136}, i64 0, metadata !163), !dbg !269
  %inc139 = add nsw i32 %ii47.3508, 1, !dbg !265
  call void @llvm.dbg.value(metadata !{i32 %inc139}, i64 0, metadata !162), !dbg !265
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !265
  %cmp130 = icmp slt i32 %inc139, %48, !dbg !265
  br i1 %cmp130, label %for.body131, label %if.end145, !dbg !265

if.end145:                                        ; preds = %for.cond.preheader, %for.inc, %if.then119, %for.body131, %if.then101, %for.body106, %if.then70, %for.body81, %if.then55, %for.body59, %if.then95, %if.else46, %if.then50
  %cmp146 = icmp eq %struct._InpMtx* %6, null, !dbg !270
  br i1 %cmp146, label %if.else187, label %for.cond149.preheader, !dbg !270

for.cond149.preheader:                            ; preds = %if.end145
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !271
  %57 = load i32* %nD, align 4, !dbg !271, !tbaa !196
  %cmp150488 = icmp sgt i32 %57, 0, !dbg !271
  br i1 %cmp150488, label %for.body151.lr.ph, label %if.end317, !dbg !271

for.body151.lr.ph:                                ; preds = %for.cond149.preheader
  %inputMode154 = getelementptr inbounds %struct._InpMtx* %6, i64 0, i32 2, !dbg !272
  %inputMode172 = getelementptr inbounds %struct._InpMtx* %5, i64 0, i32 2, !dbg !273
  br label %for.body151, !dbg !271

for.body151:                                      ; preds = %for.inc184, %for.body151.lr.ph
  %indvars.iv520 = phi i64 [ 0, %for.body151.lr.ph ], [ %indvars.iv.next521, %for.inc184 ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !152), !dbg !274
  %58 = load i32** %colind, align 8, !dbg !274, !tbaa !188
  %arrayidx153 = getelementptr inbounds i32* %58, i64 %indvars.iv520, !dbg !274
  %59 = load i32* %arrayidx153, align 4, !dbg !274, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !146), !dbg !274
  %60 = load i32* %inputMode154, align 4, !dbg !272, !tbaa !196
  %cmp155 = icmp eq i32 %60, 1, !dbg !272
  br i1 %cmp155, label %if.then156, label %if.else157, !dbg !272

if.then156:                                       ; preds = %for.body151
  call void @InpMtx_realVector(%struct._InpMtx* %6, i32 %59, i32* %chvsize, i32** %chvind, double** %chvent) #6, !dbg !275
  br label %if.end162, !dbg !277

if.else157:                                       ; preds = %for.body151
  %61 = load i32* %inputMode172, align 4, !dbg !278, !tbaa !196
  %cmp159 = icmp eq i32 %61, 2, !dbg !278
  br i1 %cmp159, label %if.then160, label %if.end162, !dbg !278

if.then160:                                       ; preds = %if.else157
  call void @InpMtx_complexVector(%struct._InpMtx* %6, i32 %59, i32* %chvsize, i32** %chvind, double** %chvent) #6, !dbg !279
  br label %if.end162, !dbg !281

if.end162:                                        ; preds = %if.else157, %if.then160, %if.then156
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !282
  %62 = load i32* %chvsize, align 4, !dbg !282, !tbaa !196
  %cmp163 = icmp sgt i32 %62, 0, !dbg !282
  br i1 %cmp163, label %if.then164, label %for.inc184, !dbg !282

if.then164:                                       ; preds = %if.end162
  br i1 %cmp3, label %if.then166, label %if.end182, !dbg !283

if.then166:                                       ; preds = %if.then164
  call void @llvm.dbg.declare(metadata !{i32* %ierr167}, metadata !167), !dbg !284
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), i32 %59, i32 %62) #6, !dbg !285
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile), !dbg !286
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !287
  %64 = load i32* %chvsize, align 4, !dbg !287, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32** %chvind}, i64 0, metadata !151), !dbg !287
  %65 = load i32** %chvind, align 8, !dbg !287, !tbaa !188
  %call170 = call i32 @IVfp80(%struct._IO_FILE* %msgFile, i32 %64, i32* %65, i32 80, i32* %ierr167) #6, !dbg !287
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile), !dbg !288
  %67 = load i32* %inputMode172, align 4, !dbg !273, !tbaa !196
  switch i32 %67, label %if.end182 [
    i32 1, label %if.then174
    i32 2, label %if.then178
  ], !dbg !273

if.then174:                                       ; preds = %if.then166
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !289
  %68 = load i32* %chvsize, align 4, !dbg !289, !tbaa !196
  call void @llvm.dbg.value(metadata !{double** %chvent}, i64 0, metadata !144), !dbg !289
  %69 = load double** %chvent, align 8, !dbg !289, !tbaa !188
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %68, double* %69) #6, !dbg !289
  br label %if.end182, !dbg !291

if.then178:                                       ; preds = %if.then166
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !292
  %70 = load i32* %chvsize, align 4, !dbg !292, !tbaa !196
  %mul179 = shl nsw i32 %70, 1, !dbg !292
  call void @llvm.dbg.value(metadata !{double** %chvent}, i64 0, metadata !144), !dbg !292
  %71 = load double** %chvent, align 8, !dbg !292, !tbaa !188
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %mul179, double* %71) #6, !dbg !292
  br label %if.end182, !dbg !294

if.end182:                                        ; preds = %if.then166, %if.then174, %if.then178, %if.then164
  call void @llvm.dbg.value(metadata !{i32* %chvsize}, i64 0, metadata !145), !dbg !295
  %72 = load i32* %chvsize, align 4, !dbg !295, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32** %chvind}, i64 0, metadata !151), !dbg !295
  %73 = load i32** %chvind, align 8, !dbg !295, !tbaa !188
  call void @llvm.dbg.value(metadata !{double** %chvent}, i64 0, metadata !144), !dbg !295
  %74 = load double** %chvent, align 8, !dbg !295, !tbaa !188
  call void @Chv_addChevron(%struct._Chv* %chv, double* %arraydecay.pre-phi, i32 %59, i32 %72, i32* %73, double* %74) #6, !dbg !295
  br label %for.inc184, !dbg !296

for.inc184:                                       ; preds = %if.end162, %if.end182
  %indvars.iv.next521 = add i64 %indvars.iv520, 1, !dbg !271
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !271
  %75 = load i32* %nD, align 4, !dbg !271, !tbaa !196
  %76 = trunc i64 %indvars.iv.next521 to i32, !dbg !271
  %cmp150 = icmp slt i32 %76, %75, !dbg !271
  br i1 %cmp150, label %for.body151, label %if.end317, !dbg !271

if.else187:                                       ; preds = %if.end145
  %call192 = call double* @Chv_entries(%struct._Chv* %chv) #6, !dbg !297
  call void @llvm.dbg.value(metadata !{double* %call192}, i64 0, metadata !172), !dbg !297
  %type193 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !298
  %77 = load i32* %type193, align 4, !dbg !298, !tbaa !196
  switch i32 %77, label %if.end317 [
    i32 1, label %if.then195
    i32 2, label %if.then243
  ], !dbg !298

if.then195:                                       ; preds = %if.else187
  %symflag196 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !299
  %78 = load i32* %symflag196, align 4, !dbg !299, !tbaa !196
  switch i32 %78, label %if.end317 [
    i32 0, label %if.then198
    i32 2, label %if.then216
  ], !dbg !299

if.then198:                                       ; preds = %if.then195
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !301
  %79 = load i32* %nD, align 4, !dbg !301, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %add200}, i64 0, metadata !176), !dbg !301
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !175), !dbg !303
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !174), !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !304
  %cmp202466 = icmp sgt i32 %79, 0, !dbg !304
  br i1 %cmp202466, label %for.body203.lr.ph, label %if.end317, !dbg !304

for.body203.lr.ph:                                ; preds = %if.then198
  %nU199 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !301
  %80 = load i32* %nU199, align 4, !dbg !301, !tbaa !196
  %add200 = add nsw i32 %80, %79, !dbg !301
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !304
  %81 = sext i32 %add200 to i64
  br label %for.body203, !dbg !304

for.body203:                                      ; preds = %for.body203.lr.ph, %for.body203
  %indvars.iv = phi i64 [ %81, %for.body203.lr.ph ], [ %indvars.iv.next, %for.body203 ]
  %off190.0468 = phi i32 [ 0, %for.body203.lr.ph ], [ %add208, %for.body203 ]
  %ii189.0467 = phi i32 [ 0, %for.body203.lr.ph ], [ %inc211, %for.body203 ]
  %82 = load double* %arraydecay.pre-phi, align 8, !dbg !306, !tbaa !197
  %idxprom205 = sext i32 %off190.0468 to i64, !dbg !306
  %arrayidx206 = getelementptr inbounds double* %call192, i64 %idxprom205, !dbg !306
  %83 = load double* %arrayidx206, align 8, !dbg !306, !tbaa !197
  %add207 = fadd double %82, %83, !dbg !306
  store double %add207, double* %arrayidx206, align 8, !dbg !306, !tbaa !197
  %84 = trunc i64 %indvars.iv to i32, !dbg !308
  %add208 = add nsw i32 %84, %off190.0468, !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %add208}, i64 0, metadata !175), !dbg !308
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !304
  %inc211 = add nsw i32 %ii189.0467, 1, !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %inc211}, i64 0, metadata !174), !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !304
  %cmp202 = icmp slt i32 %inc211, %79, !dbg !304
  br i1 %cmp202, label %for.body203, label %if.end317, !dbg !304

if.then216:                                       ; preds = %if.then195
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !309
  %85 = load i32* %nD, align 4, !dbg !309, !tbaa !196
  %nL218 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !309
  %86 = load i32* %nL218, align 4, !dbg !309, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %sub225}, i64 0, metadata !175), !dbg !311
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !174), !dbg !312
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !312
  %cmp227472 = icmp sgt i32 %85, 0, !dbg !312
  br i1 %cmp227472, label %for.body228.lr.ph, label %if.end317, !dbg !312

for.body228.lr.ph:                                ; preds = %if.then216
  %nU220 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !309
  %add224 = add i32 %85, -1, !dbg !311
  %87 = load i32* %nU220, align 4, !dbg !309, !tbaa !196
  %sub225 = add i32 %add224, %86, !dbg !311
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !312
  %88 = add i32 %86, %87, !dbg !312
  %89 = shl i32 %85, 1, !dbg !312
  %90 = add i32 %88, %89, !dbg !312
  %91 = sext i32 %90 to i64
  br label %for.body228, !dbg !312

for.body228:                                      ; preds = %for.body228.lr.ph, %for.body228
  %indvars.iv514 = phi i64 [ %91, %for.body228.lr.ph ], [ %indvars.iv.next515, %for.body228 ]
  %off190.1474 = phi i32 [ %sub225, %for.body228.lr.ph ], [ %add233, %for.body228 ]
  %ii189.1473 = phi i32 [ 0, %for.body228.lr.ph ], [ %inc236, %for.body228 ]
  %indvars.iv.next515 = add i64 %indvars.iv514, -2, !dbg !312
  %92 = load double* %arraydecay.pre-phi, align 8, !dbg !314, !tbaa !197
  %idxprom230 = sext i32 %off190.1474 to i64, !dbg !314
  %arrayidx231 = getelementptr inbounds double* %call192, i64 %idxprom230, !dbg !314
  %93 = load double* %arrayidx231, align 8, !dbg !314, !tbaa !197
  %add232 = fadd double %92, %93, !dbg !314
  store double %add232, double* %arrayidx231, align 8, !dbg !314, !tbaa !197
  %94 = trunc i64 %indvars.iv.next515 to i32, !dbg !316
  %add233 = add nsw i32 %94, %off190.1474, !dbg !316
  call void @llvm.dbg.value(metadata !{i32 %add233}, i64 0, metadata !175), !dbg !316
  %inc236 = add nsw i32 %ii189.1473, 1, !dbg !312
  call void @llvm.dbg.value(metadata !{i32 %inc236}, i64 0, metadata !174), !dbg !312
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !312
  %cmp227 = icmp slt i32 %inc236, %85, !dbg !312
  br i1 %cmp227, label %for.body228, label %if.end317, !dbg !312

if.then243:                                       ; preds = %if.else187
  %symflag244 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !317
  %95 = load i32* %symflag244, align 4, !dbg !317, !tbaa !196
  switch i32 %95, label %if.end317 [
    i32 2, label %if.then284
    i32 1, label %land.lhs.true252
    i32 0, label %if.end259
  ], !dbg !317

land.lhs.true252:                                 ; preds = %if.then243
  %arrayidx253 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !319
  %96 = load double* %arrayidx253, align 8, !dbg !319, !tbaa !197
  %cmp254 = fcmp une double %96, 0.000000e+00, !dbg !319
  br i1 %cmp254, label %if.then255, label %if.end259, !dbg !319

if.then255:                                       ; preds = %land.lhs.true252
  %97 = load %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !188
  %98 = load double* %arraydecay.pre-phi, align 8, !dbg !321, !tbaa !197
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([90 x i8]* @.str6, i64 0, i64 0), double %98, double %96) #6, !dbg !321
  call void @exit(i32 -1) #7, !dbg !323
  unreachable, !dbg !323

if.end259:                                        ; preds = %if.then243, %land.lhs.true252
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !324
  %99 = load i32* %nD, align 4, !dbg !324, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %add261}, i64 0, metadata !176), !dbg !324
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !175), !dbg !325
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !174), !dbg !326
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !326
  %cmp263483 = icmp sgt i32 %99, 0, !dbg !326
  br i1 %cmp263483, label %for.body264.lr.ph, label %if.end317, !dbg !326

for.body264.lr.ph:                                ; preds = %if.end259
  %nU260 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !324
  %100 = load i32* %nU260, align 4, !dbg !324, !tbaa !196
  %add261 = add nsw i32 %100, %99, !dbg !324
  %arrayidx270 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !328
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !326
  %101 = sext i32 %add261 to i64
  br label %for.body264, !dbg !326

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %indvars.iv518 = phi i64 [ %101, %for.body264.lr.ph ], [ %indvars.iv.next519, %for.body264 ]
  %off190.2485 = phi i32 [ 0, %for.body264.lr.ph ], [ %add276, %for.body264 ]
  %ii189.2484 = phi i32 [ 0, %for.body264.lr.ph ], [ %inc279, %for.body264 ]
  %102 = load double* %arraydecay.pre-phi, align 8, !dbg !330, !tbaa !197
  %mul266 = shl nsw i32 %off190.2485, 1, !dbg !330
  %idxprom267 = sext i32 %mul266 to i64, !dbg !330
  %arrayidx268 = getelementptr inbounds double* %call192, i64 %idxprom267, !dbg !330
  %103 = load double* %arrayidx268, align 8, !dbg !330, !tbaa !197
  %add269 = fadd double %102, %103, !dbg !330
  store double %add269, double* %arrayidx268, align 8, !dbg !330, !tbaa !197
  %104 = load double* %arrayidx270, align 8, !dbg !328, !tbaa !197
  %add272465 = or i32 %mul266, 1, !dbg !328
  %idxprom273 = sext i32 %add272465 to i64, !dbg !328
  %arrayidx274 = getelementptr inbounds double* %call192, i64 %idxprom273, !dbg !328
  %105 = load double* %arrayidx274, align 8, !dbg !328, !tbaa !197
  %add275 = fadd double %104, %105, !dbg !328
  store double %add275, double* %arrayidx274, align 8, !dbg !328, !tbaa !197
  %106 = trunc i64 %indvars.iv518 to i32, !dbg !331
  %add276 = add nsw i32 %106, %off190.2485, !dbg !331
  call void @llvm.dbg.value(metadata !{i32 %add276}, i64 0, metadata !175), !dbg !331
  %indvars.iv.next519 = add i64 %indvars.iv518, -1, !dbg !326
  %inc279 = add nsw i32 %ii189.2484, 1, !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %inc279}, i64 0, metadata !174), !dbg !326
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !326
  %cmp263 = icmp slt i32 %inc279, %99, !dbg !326
  br i1 %cmp263, label %for.body264, label %if.end317, !dbg !326

if.then284:                                       ; preds = %if.then243
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !332
  %107 = load i32* %nD, align 4, !dbg !332, !tbaa !196
  %nL286 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !332
  %108 = load i32* %nL286, align 4, !dbg !332, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %sub293}, i64 0, metadata !175), !dbg !334
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !174), !dbg !335
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !335
  %cmp295478 = icmp sgt i32 %107, 0, !dbg !335
  br i1 %cmp295478, label %for.body296.lr.ph, label %if.end317, !dbg !335

for.body296.lr.ph:                                ; preds = %if.then284
  %nU288 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !332
  %add292 = add i32 %107, -1, !dbg !334
  %109 = load i32* %nU288, align 4, !dbg !332, !tbaa !196
  %sub293 = add i32 %add292, %108, !dbg !334
  %arrayidx302 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !337
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !335
  %110 = add i32 %108, %109, !dbg !335
  %111 = shl i32 %107, 1, !dbg !335
  %112 = add i32 %110, %111, !dbg !335
  %113 = sext i32 %112 to i64
  br label %for.body296, !dbg !335

for.body296:                                      ; preds = %for.body296.lr.ph, %for.body296
  %indvars.iv516 = phi i64 [ %113, %for.body296.lr.ph ], [ %indvars.iv.next517, %for.body296 ]
  %off190.3480 = phi i32 [ %sub293, %for.body296.lr.ph ], [ %add308, %for.body296 ]
  %ii189.3479 = phi i32 [ 0, %for.body296.lr.ph ], [ %inc311, %for.body296 ]
  %indvars.iv.next517 = add i64 %indvars.iv516, -2, !dbg !335
  %114 = load double* %arraydecay.pre-phi, align 8, !dbg !339, !tbaa !197
  %mul298 = shl nsw i32 %off190.3480, 1, !dbg !339
  %idxprom299 = sext i32 %mul298 to i64, !dbg !339
  %arrayidx300 = getelementptr inbounds double* %call192, i64 %idxprom299, !dbg !339
  %115 = load double* %arrayidx300, align 8, !dbg !339, !tbaa !197
  %add301 = fadd double %114, %115, !dbg !339
  store double %add301, double* %arrayidx300, align 8, !dbg !339, !tbaa !197
  %116 = load double* %arrayidx302, align 8, !dbg !337, !tbaa !197
  %add304464 = or i32 %mul298, 1, !dbg !337
  %idxprom305 = sext i32 %add304464 to i64, !dbg !337
  %arrayidx306 = getelementptr inbounds double* %call192, i64 %idxprom305, !dbg !337
  %117 = load double* %arrayidx306, align 8, !dbg !337, !tbaa !197
  %add307 = fadd double %116, %117, !dbg !337
  store double %add307, double* %arrayidx306, align 8, !dbg !337, !tbaa !197
  %118 = trunc i64 %indvars.iv.next517 to i32, !dbg !340
  %add308 = add nsw i32 %118, %off190.3480, !dbg !340
  call void @llvm.dbg.value(metadata !{i32 %add308}, i64 0, metadata !175), !dbg !340
  %inc311 = add nsw i32 %ii189.3479, 1, !dbg !335
  call void @llvm.dbg.value(metadata !{i32 %inc311}, i64 0, metadata !174), !dbg !335
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !148), !dbg !335
  %cmp295 = icmp slt i32 %inc311, %107, !dbg !335
  br i1 %cmp295, label %for.body296, label %if.end317, !dbg !335

if.end317:                                        ; preds = %for.cond149.preheader, %for.inc184, %if.end259, %for.body264, %if.then284, %for.body296, %if.then216, %for.body228, %if.then198, %for.body203, %if.then243, %if.else187, %if.then195
  ret void, !dbg !341
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #5

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #5

; Function Attrs: optsize
declare void @InpMtx_realVector(%struct._InpMtx*, i32, i32*, i32**, double**) #5

; Function Attrs: optsize
declare void @InpMtx_complexVector(%struct._InpMtx*, i32, i32*, i32**, double**) #5

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #5

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #5

; Function Attrs: optsize
declare void @Chv_addChevron(%struct._Chv*, double*, i32, i32, i32*, double*) #5

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_loadEntries", metadata !"FrontMtx_loadEntries", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._Pencil*, i32, %struct._IO_FILE*)* @FrontMtx_loadEntries, null, null, metadata !135, i32 24} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 24] [FrontMtx_loadEntries]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !38, metadata !14, metadata !78}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Chv/Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Pencil]
!39 = metadata !{i32 786454, metadata !1, null, metadata !"Pencil", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [Pencil] [line 17, size 0, align 0, offset 0] [from _Pencil]
!40 = metadata !{i32 786451, metadata !41, null, metadata !"_Pencil", i32 18, i64 320, i64 64, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Pencil] [line 18, size 320, align 64, offset 0] [from ]
!41 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Pencil/Pencil.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !73, metadata !74}
!43 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"type", i32 19, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 19, size 32, align 32, offset 0] [from int]
!44 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"symflag", i32 20, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 20, size 32, align 32, offset 32] [from int]
!45 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"inpmtxA", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [inpmtxA] [line 21, size 64, align 64, offset 64] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!47 = metadata !{i32 786454, metadata !41, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!49 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../InpMtx/InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!54 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!55 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!56 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!57 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !58} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!58 = metadata !{i32 786454, metadata !49, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!59 = metadata !{i32 786451, metadata !60, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !61, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!60 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65}
!62 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!63 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!64 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!65 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!66 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !58} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!67 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!68 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!69 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!70 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !58} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!71 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !58} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!72 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !58} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!73 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"inpmtxB", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [inpmtxB] [line 22, size 64, align 64, offset 128] [from ]
!74 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"sigma", i32 23, i64 128, i64 64, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [sigma] [line 23, size 128, align 64, offset 192] [from ]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !25, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from double]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!79 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!80 = metadata !{i32 786451, metadata !81, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !82, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!81 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!82 = metadata !{metadata !83, metadata !84, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !105, metadata !106, metadata !107, metadata !108, metadata !111, metadata !113, metadata !115, metadata !119, metadata !121, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !130, metadata !131}
!83 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!84 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!86 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!87 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!88 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!89 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!90 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!91 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!92 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!93 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!94 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!95 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!96 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!97 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !98} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!99 = metadata !{i32 786451, metadata !81, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!100 = metadata !{metadata !101, metadata !102, metadata !104}
!101 = metadata !{i32 786445, metadata !81, metadata !99, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!102 = metadata !{i32 786445, metadata !81, metadata !99, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!104 = metadata !{i32 786445, metadata !81, metadata !99, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!105 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !103} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!106 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!107 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!108 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !109} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!109 = metadata !{i32 786454, metadata !81, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!110 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!111 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !112} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!112 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!113 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !114} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!114 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!115 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !116} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!116 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !86, metadata !117, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!117 = metadata !{metadata !118}
!118 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!119 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !120} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !122} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!122 = metadata !{i32 786454, metadata !81, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!123 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!124 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!125 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!126 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!127 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !128} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!128 = metadata !{i32 786454, metadata !81, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!129 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!130 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!131 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !132} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!132 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !86, metadata !133, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!133 = metadata !{metadata !134}
!134 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !155, metadata !160, metadata !162, metadata !163, metadata !164, metadata !165, metadata !167, metadata !172, metadata !174, metadata !175, metadata !176}
!136 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777236, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 20]
!137 = metadata !{i32 786689, metadata !4, metadata !"pencil", metadata !5, i32 33554453, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 21]
!138 = metadata !{i32 786689, metadata !4, metadata !"msglvl", metadata !5, i32 50331670, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 22]
!139 = metadata !{i32 786689, metadata !4, metadata !"msgFile", metadata !5, i32 67108887, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 23]
!140 = metadata !{i32 786688, metadata !4, metadata !"inpmtxA", metadata !5, i32 25, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inpmtxA] [line 25]
!141 = metadata !{i32 786688, metadata !4, metadata !"inpmtxB", metadata !5, i32 25, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inpmtxB] [line 25]
!142 = metadata !{i32 786688, metadata !4, metadata !"one", metadata !5, i32 26, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [one] [line 26]
!143 = metadata !{i32 786688, metadata !4, metadata !"sigma", metadata !5, i32 27, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigma] [line 27]
!144 = metadata !{i32 786688, metadata !4, metadata !"chvent", metadata !5, i32 28, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chvent] [line 28]
!145 = metadata !{i32 786688, metadata !4, metadata !"chvsize", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chvsize] [line 29]
!146 = metadata !{i32 786688, metadata !4, metadata !"ichv", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 29]
!147 = metadata !{i32 786688, metadata !4, metadata !"ncol", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 29]
!148 = metadata !{i32 786688, metadata !4, metadata !"nD", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 29]
!149 = metadata !{i32 786688, metadata !4, metadata !"nL", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 29]
!150 = metadata !{i32 786688, metadata !4, metadata !"nU", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 29]
!151 = metadata !{i32 786688, metadata !4, metadata !"chvind", metadata !5, i32 30, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chvind] [line 30]
!152 = metadata !{i32 786688, metadata !4, metadata !"colind", metadata !5, i32 30, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 30]
!153 = metadata !{i32 786688, metadata !154, metadata !"ii", metadata !5, i32 60, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 60]
!154 = metadata !{i32 786443, metadata !1, metadata !4, i32 59, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!155 = metadata !{i32 786688, metadata !156, metadata !"ierr", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 76]
!156 = metadata !{i32 786443, metadata !1, metadata !157, i32 75, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!157 = metadata !{i32 786443, metadata !1, metadata !158, i32 74, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!158 = metadata !{i32 786443, metadata !1, metadata !159, i32 66, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!159 = metadata !{i32 786443, metadata !1, metadata !154, i32 66, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!160 = metadata !{i32 786688, metadata !161, metadata !"entries", metadata !5, i32 93, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 93]
!161 = metadata !{i32 786443, metadata !1, metadata !4, i32 92, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!162 = metadata !{i32 786688, metadata !161, metadata !"ii", metadata !5, i32 94, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 94]
!163 = metadata !{i32 786688, metadata !161, metadata !"off", metadata !5, i32 94, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 94]
!164 = metadata !{i32 786688, metadata !161, metadata !"stride", metadata !5, i32 94, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 94]
!165 = metadata !{i32 786688, metadata !166, metadata !"ii", metadata !5, i32 140, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 140]
!166 = metadata !{i32 786443, metadata !1, metadata !4, i32 139, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!167 = metadata !{i32 786688, metadata !168, metadata !"ierr", metadata !5, i32 156, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 156]
!168 = metadata !{i32 786443, metadata !1, metadata !169, i32 155, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!169 = metadata !{i32 786443, metadata !1, metadata !170, i32 154, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 146, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!171 = metadata !{i32 786443, metadata !1, metadata !166, i32 146, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!172 = metadata !{i32 786688, metadata !173, metadata !"entries", metadata !5, i32 172, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 172]
!173 = metadata !{i32 786443, metadata !1, metadata !4, i32 171, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!174 = metadata !{i32 786688, metadata !173, metadata !"ii", metadata !5, i32 173, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 173]
!175 = metadata !{i32 786688, metadata !173, metadata !"off", metadata !5, i32 173, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 173]
!176 = metadata !{i32 786688, metadata !173, metadata !"stride", metadata !5, i32 173, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 173]
!177 = metadata !{i32 20, i32 0, metadata !4, null}
!178 = metadata !{i32 21, i32 0, metadata !4, null}
!179 = metadata !{i32 22, i32 0, metadata !4, null}
!180 = metadata !{i32 23, i32 0, metadata !4, null}
!181 = metadata !{i32 26, i32 0, metadata !4, null}
!182 = metadata !{i32 28, i32 0, metadata !4, null}
!183 = metadata !{i32 29, i32 0, metadata !4, null}
!184 = metadata !{i32 30, i32 0, metadata !4, null}
!185 = metadata !{i32 36, i32 0, metadata !4, null}
!186 = metadata !{i32 37, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!188 = metadata !{metadata !"any pointer", metadata !189}
!189 = metadata !{metadata !"omnipotent char", metadata !190}
!190 = metadata !{metadata !"Simple C/C++ TBAA"}
!191 = metadata !{i32 40, i32 0, metadata !187, null}
!192 = metadata !{i32 42, i32 0, metadata !4, null}
!193 = metadata !{i32 57, i32 0, metadata !4, null}
!194 = metadata !{i32 43, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !4, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!196 = metadata !{metadata !"int", metadata !189}
!197 = metadata !{metadata !"double", metadata !189}
!198 = metadata !{i32 47, i32 0, metadata !195, null}
!199 = metadata !{i32 48, i32 0, metadata !195, null}
!200 = metadata !{i32 49, i32 0, metadata !4, null}
!201 = metadata !{i32 50, i32 0, metadata !4, null}
!202 = metadata !{i32 56, i32 0, metadata !4, null}
!203 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!204 = metadata !{i32 59, i32 0, metadata !4, null}
!205 = metadata !{i32 66, i32 0, metadata !159, null}
!206 = metadata !{i32 68, i32 0, metadata !158, null}
!207 = metadata !{i32 89, i32 0, metadata !157, null}
!208 = metadata !{i32 67, i32 0, metadata !158, null}
!209 = metadata !{i32 69, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !158, i32 68, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!211 = metadata !{i32 70, i32 0, metadata !210, null}
!212 = metadata !{i32 71, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !158, i32 70, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!214 = metadata !{i32 73, i32 0, metadata !213, null}
!215 = metadata !{i32 74, i32 0, metadata !158, null}
!216 = metadata !{i32 75, i32 0, metadata !157, null}
!217 = metadata !{i32 76, i32 0, metadata !156, null}
!218 = metadata !{i32 77, i32 0, metadata !156, null}
!219 = metadata !{i32 79, i32 0, metadata !156, null}
!220 = metadata !{i32 80, i32 0, metadata !156, null}
!221 = metadata !{i32 81, i32 0, metadata !156, null}
!222 = metadata !{i32 82, i32 0, metadata !156, null}
!223 = metadata !{i32 83, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !156, i32 82, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!225 = metadata !{i32 84, i32 0, metadata !224, null}
!226 = metadata !{i32 85, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !156, i32 84, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!228 = metadata !{i32 86, i32 0, metadata !227, null}
!229 = metadata !{i32 87, i32 0, metadata !156, null}
!230 = metadata !{i32 88, i32 0, metadata !156, null}
!231 = metadata !{i32 90, i32 0, metadata !157, null}
!232 = metadata !{i32 100, i32 0, metadata !161, null}
!233 = metadata !{i32 101, i32 0, metadata !161, null}
!234 = metadata !{i32 102, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !161, i32 101, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!236 = metadata !{i32 103, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !235, i32 102, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!238 = metadata !{i32 104, i32 0, metadata !237, null}
!239 = metadata !{i32 105, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !237, i32 105, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!241 = metadata !{i32 106, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !240, i32 105, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!243 = metadata !{i32 107, i32 0, metadata !242, null}
!244 = metadata !{i32 111, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !235, i32 110, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!246 = metadata !{i32 112, i32 0, metadata !245, null}
!247 = metadata !{i32 113, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !245, i32 113, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!249 = metadata !{i32 114, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !248, i32 113, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!251 = metadata !{i32 115, i32 0, metadata !250, null}
!252 = metadata !{i32 120, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !161, i32 119, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!254 = metadata !{i32 121, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 120, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!256 = metadata !{i32 122, i32 0, metadata !255, null}
!257 = metadata !{i32 123, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !255, i32 123, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!259 = metadata !{i32 124, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !258, i32 123, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!261 = metadata !{i32 125, i32 0, metadata !260, null}
!262 = metadata !{i32 129, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !253, i32 128, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!264 = metadata !{i32 130, i32 0, metadata !263, null}
!265 = metadata !{i32 131, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !263, i32 131, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!267 = metadata !{i32 132, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !266, i32 131, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!269 = metadata !{i32 133, i32 0, metadata !268, null}
!270 = metadata !{i32 139, i32 0, metadata !4, null}
!271 = metadata !{i32 146, i32 0, metadata !171, null}
!272 = metadata !{i32 148, i32 0, metadata !170, null}
!273 = metadata !{i32 162, i32 0, metadata !168, null}
!274 = metadata !{i32 147, i32 0, metadata !170, null}
!275 = metadata !{i32 149, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !170, i32 148, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!277 = metadata !{i32 150, i32 0, metadata !276, null}
!278 = metadata !{i32 150, i32 0, metadata !170, null}
!279 = metadata !{i32 151, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !170, i32 150, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!281 = metadata !{i32 153, i32 0, metadata !280, null}
!282 = metadata !{i32 154, i32 0, metadata !170, null}
!283 = metadata !{i32 155, i32 0, metadata !169, null}
!284 = metadata !{i32 156, i32 0, metadata !168, null}
!285 = metadata !{i32 157, i32 0, metadata !168, null}
!286 = metadata !{i32 159, i32 0, metadata !168, null}
!287 = metadata !{i32 160, i32 0, metadata !168, null}
!288 = metadata !{i32 161, i32 0, metadata !168, null}
!289 = metadata !{i32 163, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !168, i32 162, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!291 = metadata !{i32 164, i32 0, metadata !290, null}
!292 = metadata !{i32 165, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !168, i32 164, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!294 = metadata !{i32 166, i32 0, metadata !293, null}
!295 = metadata !{i32 168, i32 0, metadata !169, null}
!296 = metadata !{i32 169, i32 0, metadata !169, null}
!297 = metadata !{i32 179, i32 0, metadata !173, null}
!298 = metadata !{i32 180, i32 0, metadata !173, null}
!299 = metadata !{i32 181, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !173, i32 180, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!301 = metadata !{i32 182, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !300, i32 181, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!303 = metadata !{i32 183, i32 0, metadata !302, null}
!304 = metadata !{i32 184, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !302, i32 184, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!306 = metadata !{i32 185, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !305, i32 184, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!308 = metadata !{i32 186, i32 0, metadata !307, null}
!309 = metadata !{i32 190, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !300, i32 189, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!311 = metadata !{i32 191, i32 0, metadata !310, null}
!312 = metadata !{i32 192, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !310, i32 192, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!314 = metadata !{i32 193, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !313, i32 192, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!316 = metadata !{i32 194, i32 0, metadata !315, null}
!317 = metadata !{i32 199, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !173, i32 198, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!319 = metadata !{i32 200, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !318, i32 199, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!321 = metadata !{i32 201, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !320, i32 200, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!323 = metadata !{i32 206, i32 0, metadata !322, null}
!324 = metadata !{i32 208, i32 0, metadata !320, null}
!325 = metadata !{i32 209, i32 0, metadata !320, null}
!326 = metadata !{i32 210, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !320, i32 210, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!328 = metadata !{i32 212, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !327, i32 210, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!330 = metadata !{i32 211, i32 0, metadata !329, null}
!331 = metadata !{i32 213, i32 0, metadata !329, null}
!332 = metadata !{i32 217, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !318, i32 216, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!334 = metadata !{i32 218, i32 0, metadata !333, null}
!335 = metadata !{i32 219, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !333, i32 219, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!337 = metadata !{i32 221, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !336, i32 219, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_loadEntries.c]
!339 = metadata !{i32 220, i32 0, metadata !338, null}
!340 = metadata !{i32 222, i32 0, metadata !338, null}
!341 = metadata !{i32 228, i32 0, metadata !4, null}

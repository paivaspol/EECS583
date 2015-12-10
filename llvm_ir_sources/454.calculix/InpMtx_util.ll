; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in InpMtx_sortAndCompress(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in InpMtx_convertToVectors(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_dropOffdiagonalEntries(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_dropOffdiagonalEntries(%p)\0A bad coordType = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in InpMtx_dropLowerTriangle(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_dropLowerTriangle(%p)\0A bad coordType \0A\00", align 1
@.str6 = private unnamed_addr constant [58 x i8] c"\0A fatal error in InpMtx_dropUpperTriangle(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_dropUpperTriangle(%p)\0A bad coordType \0A\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_mapToLowerTriangle(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_mapToLowerTriangle(%p)\0A bad coordType\0A\00", align 1
@.str10 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_mapToUpperTriangle(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [88 x i8] c"\0A fatal error in InpMtx_mapToUpperTriangle(%p)\0A bad coordType = %d, must be 1, 2, or 3\0A\00", align 1
@.str12 = private unnamed_addr constant [76 x i8] c"\0A fatal error in InpMtx_mapToUpperTriangleH(%p)\0A input mode is not complex\0A\00", align 1
@.str13 = private unnamed_addr constant [53 x i8] c"\0A fatal error in InpMtx_checksums(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"\0A fatal error in InpMtx_checksums(%p,%p)\0A bad inputMode\0A\00", align 1
@.str15 = private unnamed_addr constant [51 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A mtx is NULL\0A\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad input mode %d\0A\00", align 1
@.str17 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad coordinate type %d\0A\00", align 1
@.str18 = private unnamed_addr constant [58 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad storage mode%d\0A\00", align 1
@.str19 = private unnamed_addr constant [60 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A nrow = %d, ncol = %d\0A\00", align 1
@.str20 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad symmetry flag%d\0A\00", align 1
@.str21 = private unnamed_addr constant [88 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A symmetryflag is Hermitian, requires complex type\0A\00", align 1
@.str22 = private unnamed_addr constant [86 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A symmetric or hermitian matrix, nrow %d, ncol%d\0A\00", align 1
@.str23 = private unnamed_addr constant [50 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A nitem = %d\0A\00", align 1
@.str24 = private unnamed_addr constant [46 x i8] c"\0A fatal error in InpMtx_range()\0A mtx is NULL\0A\00", align 1
@.str25 = private unnamed_addr constant [45 x i8] c"\0A fatal error in InpMtx_range()\0A %d entries\0A\00", align 1
@.str26 = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_range()\0A invalid coordType %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !48), !dbg !213
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !215, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !215
  tail call void @exit(i32 -1) #8, !dbg !220
  unreachable, !dbg !220

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !221
  %1 = load i32* %storageMode, align 4, !dbg !221, !tbaa !222
  %.off = add i32 %1, -2, !dbg !221
  %switch = icmp ult i32 %.off, 2, !dbg !221
  br i1 %switch, label %return, label %lor.lhs.false4, !dbg !221

lor.lhs.false4:                                   ; preds = %if.end
  %nent5 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !221
  %2 = load i32* %nent5, align 4, !dbg !221, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !50), !dbg !221
  %cmp6 = icmp eq i32 %2, 0, !dbg !221
  br i1 %cmp6, label %return, label %if.end9, !dbg !221

if.end9:                                          ; preds = %lor.lhs.false4
  %call10 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32* %call10}, i64 0, metadata !52), !dbg !223
  %call11 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !53), !dbg !224
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !225
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !49), !dbg !227
  %cmp1291 = icmp sgt i32 %2, 1, !dbg !227
  br i1 %cmp1291, label %for.body.lr.ph, label %return, !dbg !227

for.body.lr.ph:                                   ; preds = %if.end9
  %.pre = load i32* %call10, align 4, !dbg !229, !tbaa !222
  br label %for.body, !dbg !227

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.inc ], !dbg !229
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = add nsw i64 %indvars.iv, -1, !dbg !229
  %arrayidx14 = getelementptr inbounds i32* %call10, i64 %indvars.iv, !dbg !229
  %5 = load i32* %arrayidx14, align 4, !dbg !229, !tbaa !222
  %cmp15 = icmp sgt i32 %3, %5, !dbg !229
  br i1 %cmp15, label %if.then32, label %lor.lhs.false16, !dbg !229

lor.lhs.false16:                                  ; preds = %for.body
  %cmp22 = icmp eq i32 %3, %5, !dbg !229
  br i1 %cmp22, label %land.lhs.true, label %for.inc, !dbg !229

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %arrayidx25 = getelementptr inbounds i32* %call11, i64 %4, !dbg !229
  %6 = load i32* %arrayidx25, align 4, !dbg !229, !tbaa !222
  %arrayidx27 = getelementptr inbounds i32* %call11, i64 %indvars.iv, !dbg !229
  %7 = load i32* %arrayidx27, align 4, !dbg !229, !tbaa !222
  %cmp28 = icmp sgt i32 %6, %7, !dbg !229
  br i1 %cmp28, label %if.then32, label %for.inc, !dbg !229

for.inc:                                          ; preds = %lor.lhs.false16, %land.lhs.true
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !227
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !227
  %cmp12 = icmp slt i32 %8, %2, !dbg !227
  br i1 %cmp12, label %for.body, label %return, !dbg !227

if.then32:                                        ; preds = %land.lhs.true, %for.body
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !231
  %9 = load i32* %inputMode, align 4, !dbg !231, !tbaa !222
  switch i32 %9, label %return [
    i32 0, label %if.then34
    i32 1, label %if.then39
    i32 2, label %if.then46
  ], !dbg !231

if.then34:                                        ; preds = %if.then32
  %call35 = tail call i32 @IV2sortUpAndCompress(i32 %2, i32* %call10, i32* %call11) #7, !dbg !232
  store i32 %call35, i32* %nent5, align 4, !dbg !232, !tbaa !222
  br label %return, !dbg !234

if.then39:                                        ; preds = %if.then32
  %call40 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !235
  tail call void @llvm.dbg.value(metadata !{double* %call40}, i64 0, metadata !54), !dbg !235
  %call41 = tail call i32 @IV2DVsortUpAndCompress(i32 %2, i32* %call10, i32* %call11, double* %call40) #7, !dbg !236
  store i32 %call41, i32* %nent5, align 4, !dbg !236, !tbaa !222
  br label %return, !dbg !237

if.then46:                                        ; preds = %if.then32
  %call48 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !238
  tail call void @llvm.dbg.value(metadata !{double* %call48}, i64 0, metadata !57), !dbg !238
  %call49 = tail call i32 @IV2ZVsortUpAndCompress(i32 %2, i32* %call10, i32* %call11, double* %call48) #7, !dbg !239
  store i32 %call49, i32* %nent5, align 4, !dbg !239, !tbaa !222
  br label %return, !dbg !240

return:                                           ; preds = %if.end9, %for.inc, %if.end, %if.then39, %if.then46, %if.then34, %if.then32, %lor.lhs.false4
  store i32 2, i32* %storageMode, align 4, !dbg !241, !tbaa !222
  ret void, !dbg !243
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32 @IV2sortUpAndCompress(i32, i32*, i32*) #3

; Function Attrs: optsize
declare double* @InpMtx_dvec(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32 @IV2DVsortUpAndCompress(i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare i32 @IV2ZVsortUpAndCompress(i32, i32*, i32*, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !61), !dbg !244
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !245
  br i1 %cmp, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !246, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !246
  tail call void @exit(i32 -1) #8, !dbg !248
  unreachable, !dbg !248

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !249
  %1 = load i32* %storageMode, align 4, !dbg !249, !tbaa !222
  %cmp1 = icmp eq i32 %1, 3, !dbg !249
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !249

lor.lhs.false:                                    ; preds = %if.end
  %nent2 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !249
  %2 = load i32* %nent2, align 4, !dbg !249, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !71), !dbg !249
  %cmp3 = icmp eq i32 %2, 0, !dbg !249
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !249

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 3, i32* %storageMode, align 4, !dbg !250, !tbaa !222
  br label %return, !dbg !252

if.end6:                                          ; preds = %lor.lhs.false
  %cmp8 = icmp eq i32 %1, 1, !dbg !253
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !253

if.then9:                                         ; preds = %if.end6
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #9, !dbg !254
  br label %if.end10, !dbg !256

if.end10:                                         ; preds = %if.then9, %if.end6
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !62), !dbg !257
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !63), !dbg !258
  tail call void @llvm.dbg.value(metadata !259, i64 0, metadata !73), !dbg !260
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !72), !dbg !261
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !262
  %cmp13136 = icmp sgt i32 %2, 0, !dbg !262
  br i1 %cmp13136, label %for.body, label %for.end.thread, !dbg !262

for.end.thread:                                   ; preds = %if.end10
  tail call void @InpMtx_setNvector(%struct._InpMtx* %inpmtx, i32 0) #7, !dbg !264
  br label %if.then24, !dbg !265

for.body:                                         ; preds = %if.end10, %for.body
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.body ], [ 0, %if.end10 ]
  %value.0139 = phi i32 [ %value.1, %for.body ], [ -1, %if.end10 ]
  %nvector.0138 = phi i32 [ %nvector.1, %for.body ], [ 0, %if.end10 ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv147, !dbg !266
  %3 = load i32* %arrayidx, align 4, !dbg !266, !tbaa !222
  %cmp14 = icmp slt i32 %3, 0, !dbg !266
  %cmp17 = icmp eq i32 %value.0139, %3, !dbg !266
  %or.cond = or i1 %cmp14, %cmp17, !dbg !266
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !73), !dbg !268
  %.lobit = lshr i32 %3, 31, !dbg !266
  %cmp17131 = zext i1 %cmp17 to i32, !dbg !266
  %4 = or i32 %cmp17131, %.lobit, !dbg !266
  %inc = xor i32 %4, 1, !dbg !266
  %nvector.1 = add nsw i32 %inc, %nvector.0138, !dbg !266
  %value.1 = select i1 %or.cond, i32 %value.0139, i32 %3, !dbg !266
  %indvars.iv.next148 = add i64 %indvars.iv147, 1, !dbg !262
  %lftr.wideiv = trunc i64 %indvars.iv.next148 to i32, !dbg !262
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !262
  br i1 %exitcond, label %for.end, label %for.body, !dbg !262

for.end:                                          ; preds = %for.body
  tail call void @InpMtx_setNvector(%struct._InpMtx* %inpmtx, i32 %nvector.1) #7, !dbg !264
  %cmp23 = icmp slt i32 %nvector.1, 1, !dbg !265
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !265

if.then24:                                        ; preds = %for.end.thread, %for.end
  store i32 1, i32* %storageMode, align 4, !dbg !270, !tbaa !222
  tail call void @InpMtx_setNent(%struct._InpMtx* %inpmtx, i32 0) #7, !dbg !272
  br label %return, !dbg !273

if.end26:                                         ; preds = %for.end
  %call27 = tail call i32* @InpMtx_vecids(%struct._InpMtx* %inpmtx) #7, !dbg !274
  tail call void @llvm.dbg.value(metadata !{i32* %call27}, i64 0, metadata !66), !dbg !274
  %call28 = tail call i32* @InpMtx_sizes(%struct._InpMtx* %inpmtx) #7, !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32* %call28}, i64 0, metadata !65), !dbg !275
  %call29 = tail call i32* @InpMtx_offsets(%struct._InpMtx* %inpmtx) #7, !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32* %call29}, i64 0, metadata !64), !dbg !276
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !67), !dbg !277
  br i1 %cmp13136, label %for.body32, label %if.end72, !dbg !277

for.cond30:                                       ; preds = %for.body32
  %inc39 = add nsw i32 %first.0135, 1, !dbg !277
  %5 = trunc i64 %indvars.iv.next146 to i32, !dbg !277
  %cmp31 = icmp slt i32 %5, %2, !dbg !277
  br i1 %cmp31, label %for.body32, label %if.end72, !dbg !277

for.body32:                                       ; preds = %if.end26, %for.cond30
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.cond30 ], [ 0, %if.end26 ]
  %first.0135 = phi i32 [ %inc39, %for.cond30 ], [ 0, %if.end26 ]
  %arrayidx34 = getelementptr inbounds i32* %call11, i64 %indvars.iv145, !dbg !279
  %6 = load i32* %arrayidx34, align 4, !dbg !279, !tbaa !222
  %cmp35 = icmp sgt i32 %6, -1, !dbg !279
  %indvars.iv.next146 = add i64 %indvars.iv145, 1, !dbg !277
  tail call void @llvm.dbg.value(metadata !{i32 %inc39}, i64 0, metadata !67), !dbg !277
  br i1 %cmp35, label %for.cond45.outer, label %for.cond30, !dbg !279

for.cond45:                                       ; preds = %for.cond45.outer, %for.body47
  %indvars.iv = phi i64 [ %10, %for.cond45.outer ], [ %indvars.iv.next, %for.body47 ]
  %jj.0.in = phi i32 [ %jj.0.in.ph, %for.cond45.outer ], [ %jj.0, %for.body47 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !281
  %jj.0 = add nsw i32 %jj.0.in, 1, !dbg !285
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !285
  %cmp46 = icmp slt i32 %7, %2, !dbg !285
  br i1 %cmp46, label %for.body47, label %for.end64, !dbg !285

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds i32* %call11, i64 %indvars.iv.next, !dbg !281
  %8 = load i32* %arrayidx49, align 4, !dbg !281, !tbaa !222
  %cmp50 = icmp eq i32 %8, %value.2.ph, !dbg !281
  br i1 %cmp50, label %for.cond45, label %if.then51, !dbg !281

if.then51:                                        ; preds = %for.body47
  %arrayidx53 = getelementptr inbounds i32* %call27, i64 %indvars.iv141, !dbg !286
  store i32 %value.2.ph, i32* %arrayidx53, align 4, !dbg !286, !tbaa !222
  %sub = sub nsw i32 %jj.0, %jj.0.in.ph, !dbg !288
  %arrayidx55 = getelementptr inbounds i32* %call28, i64 %indvars.iv141, !dbg !288
  store i32 %sub, i32* %arrayidx55, align 4, !dbg !288, !tbaa !222
  %arrayidx57 = getelementptr inbounds i32* %call29, i64 %indvars.iv141, !dbg !289
  store i32 %jj.0.in.ph, i32* %arrayidx57, align 4, !dbg !289, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %jj.0}, i64 0, metadata !67), !dbg !290
  %9 = load i32* %arrayidx49, align 4, !dbg !291, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !73), !dbg !291
  %indvars.iv.next142 = add i64 %indvars.iv141, 1, !dbg !292
  %inc60 = add nsw i32 %id.0.ph, 1, !dbg !293
  tail call void @llvm.dbg.value(metadata !{i32 %inc60}, i64 0, metadata !68), !dbg !293
  br label %for.cond45.outer, !dbg !292

for.cond45.outer:                                 ; preds = %for.body32, %if.then51
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %if.then51 ], [ 0, %for.body32 ]
  %id.0.ph = phi i32 [ %inc60, %if.then51 ], [ 0, %for.body32 ]
  %jj.0.in.ph = phi i32 [ %jj.0, %if.then51 ], [ %first.0135, %for.body32 ]
  %value.2.ph = phi i32 [ %9, %if.then51 ], [ %6, %for.body32 ]
  %10 = sext i32 %jj.0.in.ph to i64
  br label %for.cond45

for.end64:                                        ; preds = %for.cond45
  %idxprom65 = sext i32 %id.0.ph to i64, !dbg !294
  %arrayidx66 = getelementptr inbounds i32* %call27, i64 %idxprom65, !dbg !294
  store i32 %value.2.ph, i32* %arrayidx66, align 4, !dbg !294, !tbaa !222
  %sub67 = sub nsw i32 %jj.0, %jj.0.in.ph, !dbg !295
  %arrayidx69 = getelementptr inbounds i32* %call28, i64 %idxprom65, !dbg !295
  store i32 %sub67, i32* %arrayidx69, align 4, !dbg !295, !tbaa !222
  %arrayidx71 = getelementptr inbounds i32* %call29, i64 %idxprom65, !dbg !296
  store i32 %jj.0.in.ph, i32* %arrayidx71, align 4, !dbg !296, !tbaa !222
  br label %if.end72, !dbg !297

if.end72:                                         ; preds = %if.end26, %for.cond30, %for.end64
  store i32 3, i32* %storageMode, align 4, !dbg !298, !tbaa !222
  br label %return, !dbg !299

return:                                           ; preds = %if.end72, %if.then24, %if.then4
  ret void, !dbg !299
}

; Function Attrs: optsize
declare void @InpMtx_setNvector(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_setNent(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare i32* @InpMtx_vecids(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_sizes(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_offsets(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_dropOffdiagonalEntries(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !76), !dbg !300
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !302, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !302
  tail call void @exit(i32 -1) #8, !dbg !304
  unreachable, !dbg !304

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !305
  %1 = load i32* %coordType, align 4, !dbg !305, !tbaa !222
  %.off = add i32 %1, -1, !dbg !305
  %switch = icmp ult i32 %.off, 3, !dbg !305
  br i1 %switch, label %if.end10, label %if.then7, !dbg !305

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !306, !tbaa !217
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %1) #7, !dbg !306
  tail call void @exit(i32 -1) #8, !dbg !308
  unreachable, !dbg !308

if.end10:                                         ; preds = %if.end
  %nent11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !309
  %3 = load i32* %nent11, align 4, !dbg !309, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !80), !dbg !309
  %call12 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !81), !dbg !310
  %call13 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32* %call13}, i64 0, metadata !82), !dbg !311
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !78), !dbg !312
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !313
  %4 = load i32* %inputMode, align 4, !dbg !313, !tbaa !222
  %.off291 = add i32 %4, -1, !dbg !313
  %switch292 = icmp ult i32 %.off291, 2, !dbg !313
  br i1 %switch292, label %if.then18, label %if.end20, !dbg !313

if.then18:                                        ; preds = %if.end10
  %call19 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !314
  tail call void @llvm.dbg.value(metadata !{double* %call19}, i64 0, metadata !77), !dbg !314
  br label %if.end20, !dbg !316

if.end20:                                         ; preds = %if.end10, %if.then18
  %dvec.0 = phi double* [ %call19, %if.then18 ], [ undef, %if.end10 ]
  %5 = load i32* %coordType, align 4, !dbg !317, !tbaa !222
  switch i32 %5, label %if.end169 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond67.preheader
    i32 3, label %for.cond120.preheader
  ], !dbg !317

for.cond120.preheader:                            ; preds = %if.end20
  %cmp121304 = icmp sgt i32 %3, 0, !dbg !318
  br i1 %cmp121304, label %for.body122, label %if.end169, !dbg !318

for.cond67.preheader:                             ; preds = %if.end20
  %cmp68299 = icmp sgt i32 %3, 0, !dbg !321
  br i1 %cmp68299, label %for.body69, label %if.end169, !dbg !321

for.cond.preheader:                               ; preds = %if.end20
  %cmp24295 = icmp sgt i32 %3, 0, !dbg !324
  br i1 %cmp24295, label %for.body, label %if.end169, !dbg !324

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %count.0297 = phi i32 [ %count.1, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call12, i64 %indvars.iv, !dbg !327
  %6 = load i32* %arrayidx, align 4, !dbg !327, !tbaa !222
  %arrayidx26 = getelementptr inbounds i32* %call13, i64 %indvars.iv, !dbg !327
  %7 = load i32* %arrayidx26, align 4, !dbg !327, !tbaa !222
  %cmp27 = icmp eq i32 %6, %7, !dbg !327
  br i1 %cmp27, label %if.then28, label %for.inc, !dbg !327

if.then28:                                        ; preds = %for.body
  %idxprom31 = sext i32 %count.0297 to i64, !dbg !329
  %arrayidx32 = getelementptr inbounds i32* %call12, i64 %idxprom31, !dbg !329
  store i32 %6, i32* %arrayidx32, align 4, !dbg !329, !tbaa !222
  %8 = load i32* %arrayidx26, align 4, !dbg !331, !tbaa !222
  %arrayidx36 = getelementptr inbounds i32* %call13, i64 %idxprom31, !dbg !331
  store i32 %8, i32* %arrayidx36, align 4, !dbg !331, !tbaa !222
  %9 = load i32* %inputMode, align 4, !dbg !332, !tbaa !222
  switch i32 %9, label %if.end60 [
    i32 1, label %if.then39
    i32 2, label %if.then46
  ], !dbg !332

if.then39:                                        ; preds = %if.then28
  %arrayidx41 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv, !dbg !333
  %10 = load double* %arrayidx41, align 8, !dbg !333, !tbaa !335
  %arrayidx43 = getelementptr inbounds double* %dvec.0, i64 %idxprom31, !dbg !333
  store double %10, double* %arrayidx43, align 8, !dbg !333, !tbaa !335
  br label %if.end60, !dbg !336

if.then46:                                        ; preds = %if.then28
  %11 = trunc i64 %indvars.iv to i32, !dbg !337
  %mul = shl nsw i32 %11, 1, !dbg !337
  %idxprom47 = sext i32 %mul to i64, !dbg !337
  %arrayidx48 = getelementptr inbounds double* %dvec.0, i64 %idxprom47, !dbg !337
  %12 = load double* %arrayidx48, align 8, !dbg !337, !tbaa !335
  %mul49 = shl nsw i32 %count.0297, 1, !dbg !337
  %idxprom50 = sext i32 %mul49 to i64, !dbg !337
  %arrayidx51 = getelementptr inbounds double* %dvec.0, i64 %idxprom50, !dbg !337
  store double %12, double* %arrayidx51, align 8, !dbg !337, !tbaa !335
  %add289 = or i32 %mul, 1, !dbg !339
  %idxprom53 = sext i32 %add289 to i64, !dbg !339
  %arrayidx54 = getelementptr inbounds double* %dvec.0, i64 %idxprom53, !dbg !339
  %13 = load double* %arrayidx54, align 8, !dbg !339, !tbaa !335
  %add56290 = or i32 %mul49, 1, !dbg !339
  %idxprom57 = sext i32 %add56290 to i64, !dbg !339
  %arrayidx58 = getelementptr inbounds double* %dvec.0, i64 %idxprom57, !dbg !339
  store double %13, double* %arrayidx58, align 8, !dbg !339, !tbaa !335
  br label %if.end60, !dbg !340

if.end60:                                         ; preds = %if.then28, %if.then46, %if.then39
  %inc = add nsw i32 %count.0297, 1, !dbg !341
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !78), !dbg !341
  br label %for.inc, !dbg !342

for.inc:                                          ; preds = %for.body, %if.end60
  %count.1 = phi i32 [ %inc, %if.end60 ], [ %count.0297, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !324
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !324
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !324
  br i1 %exitcond, label %if.end169, label %for.body, !dbg !324

for.body69:                                       ; preds = %for.cond67.preheader, %for.inc113
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %for.inc113 ], [ 0, %for.cond67.preheader ]
  %count.2301 = phi i32 [ %count.3, %for.inc113 ], [ 0, %for.cond67.preheader ]
  %arrayidx71 = getelementptr inbounds i32* %call12, i64 %indvars.iv308, !dbg !343
  %14 = load i32* %arrayidx71, align 4, !dbg !343, !tbaa !222
  %arrayidx73 = getelementptr inbounds i32* %call13, i64 %indvars.iv308, !dbg !343
  %15 = load i32* %arrayidx73, align 4, !dbg !343, !tbaa !222
  %cmp74 = icmp eq i32 %14, %15, !dbg !343
  br i1 %cmp74, label %if.then75, label %for.inc113, !dbg !343

if.then75:                                        ; preds = %for.body69
  %idxprom78 = sext i32 %count.2301 to i64, !dbg !345
  %arrayidx79 = getelementptr inbounds i32* %call12, i64 %idxprom78, !dbg !345
  store i32 %14, i32* %arrayidx79, align 4, !dbg !345, !tbaa !222
  %16 = load i32* %arrayidx73, align 4, !dbg !347, !tbaa !222
  %arrayidx83 = getelementptr inbounds i32* %call13, i64 %idxprom78, !dbg !347
  store i32 %16, i32* %arrayidx83, align 4, !dbg !347, !tbaa !222
  %17 = load i32* %inputMode, align 4, !dbg !348, !tbaa !222
  switch i32 %17, label %if.end110 [
    i32 1, label %if.then86
    i32 2, label %if.then94
  ], !dbg !348

if.then86:                                        ; preds = %if.then75
  %arrayidx88 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv308, !dbg !349
  %18 = load double* %arrayidx88, align 8, !dbg !349, !tbaa !335
  %arrayidx90 = getelementptr inbounds double* %dvec.0, i64 %idxprom78, !dbg !349
  store double %18, double* %arrayidx90, align 8, !dbg !349, !tbaa !335
  br label %if.end110, !dbg !351

if.then94:                                        ; preds = %if.then75
  %19 = trunc i64 %indvars.iv308 to i32, !dbg !352
  %mul95 = shl nsw i32 %19, 1, !dbg !352
  %idxprom96 = sext i32 %mul95 to i64, !dbg !352
  %arrayidx97 = getelementptr inbounds double* %dvec.0, i64 %idxprom96, !dbg !352
  %20 = load double* %arrayidx97, align 8, !dbg !352, !tbaa !335
  %mul98 = shl nsw i32 %count.2301, 1, !dbg !352
  %idxprom99 = sext i32 %mul98 to i64, !dbg !352
  %arrayidx100 = getelementptr inbounds double* %dvec.0, i64 %idxprom99, !dbg !352
  store double %20, double* %arrayidx100, align 8, !dbg !352, !tbaa !335
  %add102287 = or i32 %mul95, 1, !dbg !354
  %idxprom103 = sext i32 %add102287 to i64, !dbg !354
  %arrayidx104 = getelementptr inbounds double* %dvec.0, i64 %idxprom103, !dbg !354
  %21 = load double* %arrayidx104, align 8, !dbg !354, !tbaa !335
  %add106288 = or i32 %mul98, 1, !dbg !354
  %idxprom107 = sext i32 %add106288 to i64, !dbg !354
  %arrayidx108 = getelementptr inbounds double* %dvec.0, i64 %idxprom107, !dbg !354
  store double %21, double* %arrayidx108, align 8, !dbg !354, !tbaa !335
  br label %if.end110, !dbg !355

if.end110:                                        ; preds = %if.then75, %if.then94, %if.then86
  %inc111 = add nsw i32 %count.2301, 1, !dbg !356
  tail call void @llvm.dbg.value(metadata !{i32 %inc111}, i64 0, metadata !78), !dbg !356
  br label %for.inc113, !dbg !357

for.inc113:                                       ; preds = %for.body69, %if.end110
  %count.3 = phi i32 [ %inc111, %if.end110 ], [ %count.2301, %for.body69 ]
  %indvars.iv.next309 = add i64 %indvars.iv308, 1, !dbg !321
  %lftr.wideiv310 = trunc i64 %indvars.iv.next309 to i32, !dbg !321
  %exitcond311 = icmp eq i32 %lftr.wideiv310, %3, !dbg !321
  br i1 %exitcond311, label %if.end169, label %for.body69, !dbg !321

for.body122:                                      ; preds = %for.cond120.preheader, %for.inc164
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %for.inc164 ], [ 0, %for.cond120.preheader ]
  %count.4306 = phi i32 [ %count.5, %for.inc164 ], [ 0, %for.cond120.preheader ]
  %arrayidx124 = getelementptr inbounds i32* %call13, i64 %indvars.iv312, !dbg !358
  %22 = load i32* %arrayidx124, align 4, !dbg !358, !tbaa !222
  %cmp125 = icmp eq i32 %22, 0, !dbg !358
  br i1 %cmp125, label %if.then126, label %for.inc164, !dbg !358

if.then126:                                       ; preds = %for.body122
  %arrayidx128 = getelementptr inbounds i32* %call12, i64 %indvars.iv312, !dbg !360
  %23 = load i32* %arrayidx128, align 4, !dbg !360, !tbaa !222
  %idxprom129 = sext i32 %count.4306 to i64, !dbg !360
  %arrayidx130 = getelementptr inbounds i32* %call12, i64 %idxprom129, !dbg !360
  store i32 %23, i32* %arrayidx130, align 4, !dbg !360, !tbaa !222
  %24 = load i32* %arrayidx124, align 4, !dbg !362, !tbaa !222
  %arrayidx134 = getelementptr inbounds i32* %call13, i64 %idxprom129, !dbg !362
  store i32 %24, i32* %arrayidx134, align 4, !dbg !362, !tbaa !222
  %25 = load i32* %inputMode, align 4, !dbg !363, !tbaa !222
  switch i32 %25, label %if.end161 [
    i32 1, label %if.then137
    i32 2, label %if.then145
  ], !dbg !363

if.then137:                                       ; preds = %if.then126
  %arrayidx139 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv312, !dbg !364
  %26 = load double* %arrayidx139, align 8, !dbg !364, !tbaa !335
  %arrayidx141 = getelementptr inbounds double* %dvec.0, i64 %idxprom129, !dbg !364
  store double %26, double* %arrayidx141, align 8, !dbg !364, !tbaa !335
  br label %if.end161, !dbg !366

if.then145:                                       ; preds = %if.then126
  %27 = trunc i64 %indvars.iv312 to i32, !dbg !367
  %mul146 = shl nsw i32 %27, 1, !dbg !367
  %idxprom147 = sext i32 %mul146 to i64, !dbg !367
  %arrayidx148 = getelementptr inbounds double* %dvec.0, i64 %idxprom147, !dbg !367
  %28 = load double* %arrayidx148, align 8, !dbg !367, !tbaa !335
  %mul149 = shl nsw i32 %count.4306, 1, !dbg !367
  %idxprom150 = sext i32 %mul149 to i64, !dbg !367
  %arrayidx151 = getelementptr inbounds double* %dvec.0, i64 %idxprom150, !dbg !367
  store double %28, double* %arrayidx151, align 8, !dbg !367, !tbaa !335
  %add153285 = or i32 %mul146, 1, !dbg !369
  %idxprom154 = sext i32 %add153285 to i64, !dbg !369
  %arrayidx155 = getelementptr inbounds double* %dvec.0, i64 %idxprom154, !dbg !369
  %29 = load double* %arrayidx155, align 8, !dbg !369, !tbaa !335
  %add157286 = or i32 %mul149, 1, !dbg !369
  %idxprom158 = sext i32 %add157286 to i64, !dbg !369
  %arrayidx159 = getelementptr inbounds double* %dvec.0, i64 %idxprom158, !dbg !369
  store double %29, double* %arrayidx159, align 8, !dbg !369, !tbaa !335
  br label %if.end161, !dbg !370

if.end161:                                        ; preds = %if.then126, %if.then145, %if.then137
  %inc162 = add nsw i32 %count.4306, 1, !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32 %inc162}, i64 0, metadata !78), !dbg !371
  br label %for.inc164, !dbg !372

for.inc164:                                       ; preds = %for.body122, %if.end161
  %count.5 = phi i32 [ %inc162, %if.end161 ], [ %count.4306, %for.body122 ]
  %indvars.iv.next313 = add i64 %indvars.iv312, 1, !dbg !318
  %lftr.wideiv314 = trunc i64 %indvars.iv.next313 to i32, !dbg !318
  %exitcond315 = icmp eq i32 %lftr.wideiv314, %3, !dbg !318
  br i1 %exitcond315, label %if.end169, label %for.body122, !dbg !318

if.end169:                                        ; preds = %for.cond120.preheader, %for.inc164, %for.cond67.preheader, %for.inc113, %for.cond.preheader, %for.inc, %if.end20
  %count.6 = phi i32 [ 0, %if.end20 ], [ 0, %for.cond.preheader ], [ %count.1, %for.inc ], [ 0, %for.cond67.preheader ], [ %count.3, %for.inc113 ], [ 0, %for.cond120.preheader ], [ %count.5, %for.inc164 ]
  store i32 %count.6, i32* %nent11, align 4, !dbg !373, !tbaa !222
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !374
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %count.6) #7, !dbg !374
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !375
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %count.6) #7, !dbg !375
  %30 = load i32* %inputMode, align 4, !dbg !376, !tbaa !222
  %.off293 = add i32 %30, -1, !dbg !376
  %switch294 = icmp ult i32 %.off293, 2, !dbg !376
  br i1 %switch294, label %if.then176, label %if.end177, !dbg !376

if.then176:                                       ; preds = %if.end169
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !377
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %count.6) #7, !dbg !377
  br label %if.end177, !dbg !379

if.end177:                                        ; preds = %if.end169, %if.then176
  ret void, !dbg !380
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_dropLowerTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !85), !dbg !381
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !382
  br i1 %cmp, label %if.then, label %if.end, !dbg !382

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !383, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !383
  tail call void @exit(i32 -1) #8, !dbg !385
  unreachable, !dbg !385

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !386
  %1 = load i32* %coordType, align 4, !dbg !386, !tbaa !222
  %.off = add i32 %1, -1, !dbg !386
  %switch = icmp ult i32 %.off, 3, !dbg !386
  br i1 %switch, label %if.end9, label %if.then7, !dbg !386

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !387, !tbaa !217
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx) #7, !dbg !387
  tail call void @exit(i32 -1) #8, !dbg !389
  unreachable, !dbg !389

if.end9:                                          ; preds = %if.end
  %nent10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !390
  %3 = load i32* %nent10, align 4, !dbg !390, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !89), !dbg !390
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !391
  tail call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !90), !dbg !391
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !91), !dbg !392
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !393
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !394
  %4 = load i32* %inputMode, align 4, !dbg !394, !tbaa !222
  %.off294 = add i32 %4, -1, !dbg !394
  %switch295 = icmp ult i32 %.off294, 2, !dbg !394
  br i1 %switch295, label %if.then17, label %if.end19, !dbg !394

if.then17:                                        ; preds = %if.end9
  %call18 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !395
  tail call void @llvm.dbg.value(metadata !{double* %call18}, i64 0, metadata !86), !dbg !395
  br label %if.end19, !dbg !397

if.end19:                                         ; preds = %if.end9, %if.then17
  %dvec.0 = phi double* [ %call18, %if.then17 ], [ undef, %if.end9 ]
  %5 = load i32* %coordType, align 4, !dbg !398, !tbaa !222
  switch i32 %5, label %if.end168 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond66.preheader
    i32 3, label %for.cond119.preheader
  ], !dbg !398

for.cond119.preheader:                            ; preds = %if.end19
  %cmp120305 = icmp sgt i32 %3, 0, !dbg !399
  br i1 %cmp120305, label %for.body121, label %if.end168, !dbg !399

for.cond66.preheader:                             ; preds = %if.end19
  %cmp67300 = icmp sgt i32 %3, 0, !dbg !402
  br i1 %cmp67300, label %for.body68, label %if.end168, !dbg !402

for.cond.preheader:                               ; preds = %if.end19
  %cmp23296 = icmp sgt i32 %3, 0, !dbg !405
  br i1 %cmp23296, label %for.body, label %if.end168, !dbg !405

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %count.0298 = phi i32 [ %count.1, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv, !dbg !408
  %6 = load i32* %arrayidx, align 4, !dbg !408, !tbaa !222
  %arrayidx25 = getelementptr inbounds i32* %call12, i64 %indvars.iv, !dbg !408
  %7 = load i32* %arrayidx25, align 4, !dbg !408, !tbaa !222
  %cmp26 = icmp sgt i32 %6, %7, !dbg !408
  br i1 %cmp26, label %for.inc, label %if.then27, !dbg !408

if.then27:                                        ; preds = %for.body
  %idxprom30 = sext i32 %count.0298 to i64, !dbg !410
  %arrayidx31 = getelementptr inbounds i32* %call11, i64 %idxprom30, !dbg !410
  store i32 %6, i32* %arrayidx31, align 4, !dbg !410, !tbaa !222
  %8 = load i32* %arrayidx25, align 4, !dbg !412, !tbaa !222
  %arrayidx35 = getelementptr inbounds i32* %call12, i64 %idxprom30, !dbg !412
  store i32 %8, i32* %arrayidx35, align 4, !dbg !412, !tbaa !222
  %9 = load i32* %inputMode, align 4, !dbg !413, !tbaa !222
  switch i32 %9, label %if.end59 [
    i32 1, label %if.then38
    i32 2, label %if.then45
  ], !dbg !413

if.then38:                                        ; preds = %if.then27
  %arrayidx40 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv, !dbg !414
  %10 = load double* %arrayidx40, align 8, !dbg !414, !tbaa !335
  %arrayidx42 = getelementptr inbounds double* %dvec.0, i64 %idxprom30, !dbg !414
  store double %10, double* %arrayidx42, align 8, !dbg !414, !tbaa !335
  br label %if.end59, !dbg !416

if.then45:                                        ; preds = %if.then27
  %11 = trunc i64 %indvars.iv to i32, !dbg !417
  %mul = shl nsw i32 %11, 1, !dbg !417
  %idxprom46 = sext i32 %mul to i64, !dbg !417
  %arrayidx47 = getelementptr inbounds double* %dvec.0, i64 %idxprom46, !dbg !417
  %12 = load double* %arrayidx47, align 8, !dbg !417, !tbaa !335
  %mul48 = shl nsw i32 %count.0298, 1, !dbg !417
  %idxprom49 = sext i32 %mul48 to i64, !dbg !417
  %arrayidx50 = getelementptr inbounds double* %dvec.0, i64 %idxprom49, !dbg !417
  store double %12, double* %arrayidx50, align 8, !dbg !417, !tbaa !335
  %add292 = or i32 %mul, 1, !dbg !419
  %idxprom52 = sext i32 %add292 to i64, !dbg !419
  %arrayidx53 = getelementptr inbounds double* %dvec.0, i64 %idxprom52, !dbg !419
  %13 = load double* %arrayidx53, align 8, !dbg !419, !tbaa !335
  %add55293 = or i32 %mul48, 1, !dbg !419
  %idxprom56 = sext i32 %add55293 to i64, !dbg !419
  %arrayidx57 = getelementptr inbounds double* %dvec.0, i64 %idxprom56, !dbg !419
  store double %13, double* %arrayidx57, align 8, !dbg !419, !tbaa !335
  br label %if.end59, !dbg !420

if.end59:                                         ; preds = %if.then27, %if.then45, %if.then38
  %inc = add nsw i32 %count.0298, 1, !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !87), !dbg !421
  br label %for.inc, !dbg !422

for.inc:                                          ; preds = %for.body, %if.end59
  %count.1 = phi i32 [ %inc, %if.end59 ], [ %count.0298, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !405
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !405
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !405
  br i1 %exitcond, label %if.end168, label %for.body, !dbg !405

for.body68:                                       ; preds = %for.cond66.preheader, %for.inc112
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %count.2302 = phi i32 [ %count.3, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %arrayidx70 = getelementptr inbounds i32* %call11, i64 %indvars.iv309, !dbg !423
  %14 = load i32* %arrayidx70, align 4, !dbg !423, !tbaa !222
  %arrayidx72 = getelementptr inbounds i32* %call12, i64 %indvars.iv309, !dbg !423
  %15 = load i32* %arrayidx72, align 4, !dbg !423, !tbaa !222
  %cmp73 = icmp slt i32 %14, %15, !dbg !423
  br i1 %cmp73, label %for.inc112, label %if.then74, !dbg !423

if.then74:                                        ; preds = %for.body68
  %idxprom77 = sext i32 %count.2302 to i64, !dbg !425
  %arrayidx78 = getelementptr inbounds i32* %call11, i64 %idxprom77, !dbg !425
  store i32 %14, i32* %arrayidx78, align 4, !dbg !425, !tbaa !222
  %16 = load i32* %arrayidx72, align 4, !dbg !427, !tbaa !222
  %arrayidx82 = getelementptr inbounds i32* %call12, i64 %idxprom77, !dbg !427
  store i32 %16, i32* %arrayidx82, align 4, !dbg !427, !tbaa !222
  %17 = load i32* %inputMode, align 4, !dbg !428, !tbaa !222
  switch i32 %17, label %if.end109 [
    i32 1, label %if.then85
    i32 2, label %if.then93
  ], !dbg !428

if.then85:                                        ; preds = %if.then74
  %arrayidx87 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv309, !dbg !429
  %18 = load double* %arrayidx87, align 8, !dbg !429, !tbaa !335
  %arrayidx89 = getelementptr inbounds double* %dvec.0, i64 %idxprom77, !dbg !429
  store double %18, double* %arrayidx89, align 8, !dbg !429, !tbaa !335
  br label %if.end109, !dbg !431

if.then93:                                        ; preds = %if.then74
  %19 = trunc i64 %indvars.iv309 to i32, !dbg !432
  %mul94 = shl nsw i32 %19, 1, !dbg !432
  %idxprom95 = sext i32 %mul94 to i64, !dbg !432
  %arrayidx96 = getelementptr inbounds double* %dvec.0, i64 %idxprom95, !dbg !432
  %20 = load double* %arrayidx96, align 8, !dbg !432, !tbaa !335
  %mul97 = shl nsw i32 %count.2302, 1, !dbg !432
  %idxprom98 = sext i32 %mul97 to i64, !dbg !432
  %arrayidx99 = getelementptr inbounds double* %dvec.0, i64 %idxprom98, !dbg !432
  store double %20, double* %arrayidx99, align 8, !dbg !432, !tbaa !335
  %add101290 = or i32 %mul94, 1, !dbg !434
  %idxprom102 = sext i32 %add101290 to i64, !dbg !434
  %arrayidx103 = getelementptr inbounds double* %dvec.0, i64 %idxprom102, !dbg !434
  %21 = load double* %arrayidx103, align 8, !dbg !434, !tbaa !335
  %add105291 = or i32 %mul97, 1, !dbg !434
  %idxprom106 = sext i32 %add105291 to i64, !dbg !434
  %arrayidx107 = getelementptr inbounds double* %dvec.0, i64 %idxprom106, !dbg !434
  store double %21, double* %arrayidx107, align 8, !dbg !434, !tbaa !335
  br label %if.end109, !dbg !435

if.end109:                                        ; preds = %if.then74, %if.then93, %if.then85
  %inc110 = add nsw i32 %count.2302, 1, !dbg !436
  tail call void @llvm.dbg.value(metadata !{i32 %inc110}, i64 0, metadata !87), !dbg !436
  br label %for.inc112, !dbg !437

for.inc112:                                       ; preds = %for.body68, %if.end109
  %count.3 = phi i32 [ %inc110, %if.end109 ], [ %count.2302, %for.body68 ]
  %indvars.iv.next310 = add i64 %indvars.iv309, 1, !dbg !402
  %lftr.wideiv311 = trunc i64 %indvars.iv.next310 to i32, !dbg !402
  %exitcond312 = icmp eq i32 %lftr.wideiv311, %3, !dbg !402
  br i1 %exitcond312, label %if.end168, label %for.body68, !dbg !402

for.body121:                                      ; preds = %for.cond119.preheader, %for.inc163
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %count.4307 = phi i32 [ %count.5, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %arrayidx123 = getelementptr inbounds i32* %call12, i64 %indvars.iv313, !dbg !438
  %22 = load i32* %arrayidx123, align 4, !dbg !438, !tbaa !222
  %cmp124 = icmp sgt i32 %22, -1, !dbg !438
  br i1 %cmp124, label %if.then125, label %for.inc163, !dbg !438

if.then125:                                       ; preds = %for.body121
  %arrayidx127 = getelementptr inbounds i32* %call11, i64 %indvars.iv313, !dbg !440
  %23 = load i32* %arrayidx127, align 4, !dbg !440, !tbaa !222
  %idxprom128 = sext i32 %count.4307 to i64, !dbg !440
  %arrayidx129 = getelementptr inbounds i32* %call11, i64 %idxprom128, !dbg !440
  store i32 %23, i32* %arrayidx129, align 4, !dbg !440, !tbaa !222
  %24 = load i32* %arrayidx123, align 4, !dbg !442, !tbaa !222
  %arrayidx133 = getelementptr inbounds i32* %call12, i64 %idxprom128, !dbg !442
  store i32 %24, i32* %arrayidx133, align 4, !dbg !442, !tbaa !222
  %25 = load i32* %inputMode, align 4, !dbg !443, !tbaa !222
  switch i32 %25, label %if.end160 [
    i32 1, label %if.then136
    i32 2, label %if.then144
  ], !dbg !443

if.then136:                                       ; preds = %if.then125
  %arrayidx138 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv313, !dbg !444
  %26 = load double* %arrayidx138, align 8, !dbg !444, !tbaa !335
  %arrayidx140 = getelementptr inbounds double* %dvec.0, i64 %idxprom128, !dbg !444
  store double %26, double* %arrayidx140, align 8, !dbg !444, !tbaa !335
  br label %if.end160, !dbg !446

if.then144:                                       ; preds = %if.then125
  %27 = trunc i64 %indvars.iv313 to i32, !dbg !447
  %mul145 = shl nsw i32 %27, 1, !dbg !447
  %idxprom146 = sext i32 %mul145 to i64, !dbg !447
  %arrayidx147 = getelementptr inbounds double* %dvec.0, i64 %idxprom146, !dbg !447
  %28 = load double* %arrayidx147, align 8, !dbg !447, !tbaa !335
  %mul148 = shl nsw i32 %count.4307, 1, !dbg !447
  %idxprom149 = sext i32 %mul148 to i64, !dbg !447
  %arrayidx150 = getelementptr inbounds double* %dvec.0, i64 %idxprom149, !dbg !447
  store double %28, double* %arrayidx150, align 8, !dbg !447, !tbaa !335
  %add152288 = or i32 %mul145, 1, !dbg !449
  %idxprom153 = sext i32 %add152288 to i64, !dbg !449
  %arrayidx154 = getelementptr inbounds double* %dvec.0, i64 %idxprom153, !dbg !449
  %29 = load double* %arrayidx154, align 8, !dbg !449, !tbaa !335
  %add156289 = or i32 %mul148, 1, !dbg !449
  %idxprom157 = sext i32 %add156289 to i64, !dbg !449
  %arrayidx158 = getelementptr inbounds double* %dvec.0, i64 %idxprom157, !dbg !449
  store double %29, double* %arrayidx158, align 8, !dbg !449, !tbaa !335
  br label %if.end160, !dbg !450

if.end160:                                        ; preds = %if.then125, %if.then144, %if.then136
  %inc161 = add nsw i32 %count.4307, 1, !dbg !451
  tail call void @llvm.dbg.value(metadata !{i32 %inc161}, i64 0, metadata !87), !dbg !451
  br label %for.inc163, !dbg !452

for.inc163:                                       ; preds = %for.body121, %if.end160
  %count.5 = phi i32 [ %inc161, %if.end160 ], [ %count.4307, %for.body121 ]
  %indvars.iv.next314 = add i64 %indvars.iv313, 1, !dbg !399
  %lftr.wideiv315 = trunc i64 %indvars.iv.next314 to i32, !dbg !399
  %exitcond316 = icmp eq i32 %lftr.wideiv315, %3, !dbg !399
  br i1 %exitcond316, label %if.end168, label %for.body121, !dbg !399

if.end168:                                        ; preds = %for.cond119.preheader, %for.inc163, %for.cond66.preheader, %for.inc112, %for.cond.preheader, %for.inc, %if.end19
  %count.6 = phi i32 [ 0, %if.end19 ], [ 0, %for.cond.preheader ], [ %count.1, %for.inc ], [ 0, %for.cond66.preheader ], [ %count.3, %for.inc112 ], [ 0, %for.cond119.preheader ], [ %count.5, %for.inc163 ]
  store i32 %count.6, i32* %nent10, align 4, !dbg !453, !tbaa !222
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !454
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %count.6) #7, !dbg !454
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !455
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %count.6) #7, !dbg !455
  %30 = load i32* %inputMode, align 4, !dbg !456, !tbaa !222
  switch i32 %30, label %if.end180 [
    i32 1, label %if.then172
    i32 2, label %if.then176
  ], !dbg !456

if.then172:                                       ; preds = %if.end168
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !457
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %count.6) #7, !dbg !457
  br label %if.end180, !dbg !459

if.then176:                                       ; preds = %if.end168
  %dvecDV177 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !460
  %mul178 = shl nsw i32 %count.6, 1, !dbg !460
  tail call void @DV_setSize(%struct._DV* %dvecDV177, i32 %mul178) #7, !dbg !460
  br label %if.end180, !dbg !462

if.end180:                                        ; preds = %if.end168, %if.then176, %if.then172
  ret void, !dbg !463
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_dropUpperTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !94), !dbg !464
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !465
  br i1 %cmp, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !466, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !466
  tail call void @exit(i32 -1) #8, !dbg !468
  unreachable, !dbg !468

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !469
  %1 = load i32* %coordType, align 4, !dbg !469, !tbaa !222
  %.off = add i32 %1, -1, !dbg !469
  %switch = icmp ult i32 %.off, 3, !dbg !469
  br i1 %switch, label %if.end9, label %if.then7, !dbg !469

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !470, !tbaa !217
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* %inpmtx) #7, !dbg !470
  tail call void @exit(i32 -1) #8, !dbg !472
  unreachable, !dbg !472

if.end9:                                          ; preds = %if.end
  %nent10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !473
  %3 = load i32* %nent10, align 4, !dbg !473, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !98), !dbg !473
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !474
  tail call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !99), !dbg !474
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !475
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !100), !dbg !475
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !96), !dbg !476
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !477
  %4 = load i32* %inputMode, align 4, !dbg !477, !tbaa !222
  %.off289 = add i32 %4, -1, !dbg !477
  %switch290 = icmp ult i32 %.off289, 2, !dbg !477
  br i1 %switch290, label %if.then17, label %if.end19, !dbg !477

if.then17:                                        ; preds = %if.end9
  %call18 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !478
  tail call void @llvm.dbg.value(metadata !{double* %call18}, i64 0, metadata !95), !dbg !478
  br label %if.end19, !dbg !480

if.end19:                                         ; preds = %if.end9, %if.then17
  %dvec.0 = phi double* [ %call18, %if.then17 ], [ undef, %if.end9 ]
  %5 = load i32* %coordType, align 4, !dbg !481, !tbaa !222
  switch i32 %5, label %if.end168 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond66.preheader
    i32 3, label %for.cond119.preheader
  ], !dbg !481

for.cond119.preheader:                            ; preds = %if.end19
  %cmp120302 = icmp sgt i32 %3, 0, !dbg !482
  br i1 %cmp120302, label %for.body121, label %if.end168, !dbg !482

for.cond66.preheader:                             ; preds = %if.end19
  %cmp67297 = icmp sgt i32 %3, 0, !dbg !485
  br i1 %cmp67297, label %for.body68, label %if.end168, !dbg !485

for.cond.preheader:                               ; preds = %if.end19
  %cmp23293 = icmp sgt i32 %3, 0, !dbg !488
  br i1 %cmp23293, label %for.body, label %if.end168, !dbg !488

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %count.0295 = phi i32 [ %count.1, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv, !dbg !491
  %6 = load i32* %arrayidx, align 4, !dbg !491, !tbaa !222
  %arrayidx25 = getelementptr inbounds i32* %call12, i64 %indvars.iv, !dbg !491
  %7 = load i32* %arrayidx25, align 4, !dbg !491, !tbaa !222
  %cmp26 = icmp slt i32 %6, %7, !dbg !491
  br i1 %cmp26, label %for.inc, label %if.then27, !dbg !491

if.then27:                                        ; preds = %for.body
  %idxprom30 = sext i32 %count.0295 to i64, !dbg !493
  %arrayidx31 = getelementptr inbounds i32* %call11, i64 %idxprom30, !dbg !493
  store i32 %6, i32* %arrayidx31, align 4, !dbg !493, !tbaa !222
  %8 = load i32* %arrayidx25, align 4, !dbg !495, !tbaa !222
  %arrayidx35 = getelementptr inbounds i32* %call12, i64 %idxprom30, !dbg !495
  store i32 %8, i32* %arrayidx35, align 4, !dbg !495, !tbaa !222
  %9 = load i32* %inputMode, align 4, !dbg !496, !tbaa !222
  switch i32 %9, label %if.end59 [
    i32 1, label %if.then38
    i32 2, label %if.then45
  ], !dbg !496

if.then38:                                        ; preds = %if.then27
  %arrayidx40 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv, !dbg !497
  %10 = load double* %arrayidx40, align 8, !dbg !497, !tbaa !335
  %arrayidx42 = getelementptr inbounds double* %dvec.0, i64 %idxprom30, !dbg !497
  store double %10, double* %arrayidx42, align 8, !dbg !497, !tbaa !335
  br label %if.end59, !dbg !499

if.then45:                                        ; preds = %if.then27
  %11 = trunc i64 %indvars.iv to i32, !dbg !500
  %mul = shl nsw i32 %11, 1, !dbg !500
  %idxprom46 = sext i32 %mul to i64, !dbg !500
  %arrayidx47 = getelementptr inbounds double* %dvec.0, i64 %idxprom46, !dbg !500
  %12 = load double* %arrayidx47, align 8, !dbg !500, !tbaa !335
  %mul48 = shl nsw i32 %count.0295, 1, !dbg !500
  %idxprom49 = sext i32 %mul48 to i64, !dbg !500
  %arrayidx50 = getelementptr inbounds double* %dvec.0, i64 %idxprom49, !dbg !500
  store double %12, double* %arrayidx50, align 8, !dbg !500, !tbaa !335
  %add287 = or i32 %mul, 1, !dbg !502
  %idxprom52 = sext i32 %add287 to i64, !dbg !502
  %arrayidx53 = getelementptr inbounds double* %dvec.0, i64 %idxprom52, !dbg !502
  %13 = load double* %arrayidx53, align 8, !dbg !502, !tbaa !335
  %add55288 = or i32 %mul48, 1, !dbg !502
  %idxprom56 = sext i32 %add55288 to i64, !dbg !502
  %arrayidx57 = getelementptr inbounds double* %dvec.0, i64 %idxprom56, !dbg !502
  store double %13, double* %arrayidx57, align 8, !dbg !502, !tbaa !335
  br label %if.end59, !dbg !503

if.end59:                                         ; preds = %if.then27, %if.then45, %if.then38
  %inc = add nsw i32 %count.0295, 1, !dbg !504
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !96), !dbg !504
  br label %for.inc, !dbg !505

for.inc:                                          ; preds = %for.body, %if.end59
  %count.1 = phi i32 [ %inc, %if.end59 ], [ %count.0295, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !488
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !488
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !488
  br i1 %exitcond, label %if.end168, label %for.body, !dbg !488

for.body68:                                       ; preds = %for.cond66.preheader, %for.inc112
  %indvars.iv306 = phi i64 [ %indvars.iv.next307, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %count.2299 = phi i32 [ %count.3, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %arrayidx70 = getelementptr inbounds i32* %call11, i64 %indvars.iv306, !dbg !506
  %14 = load i32* %arrayidx70, align 4, !dbg !506, !tbaa !222
  %arrayidx72 = getelementptr inbounds i32* %call12, i64 %indvars.iv306, !dbg !506
  %15 = load i32* %arrayidx72, align 4, !dbg !506, !tbaa !222
  %cmp73 = icmp sgt i32 %14, %15, !dbg !506
  br i1 %cmp73, label %for.inc112, label %if.then74, !dbg !506

if.then74:                                        ; preds = %for.body68
  %idxprom77 = sext i32 %count.2299 to i64, !dbg !508
  %arrayidx78 = getelementptr inbounds i32* %call11, i64 %idxprom77, !dbg !508
  store i32 %14, i32* %arrayidx78, align 4, !dbg !508, !tbaa !222
  %16 = load i32* %arrayidx72, align 4, !dbg !510, !tbaa !222
  %arrayidx82 = getelementptr inbounds i32* %call12, i64 %idxprom77, !dbg !510
  store i32 %16, i32* %arrayidx82, align 4, !dbg !510, !tbaa !222
  %17 = load i32* %inputMode, align 4, !dbg !511, !tbaa !222
  switch i32 %17, label %if.end109 [
    i32 1, label %if.then85
    i32 2, label %if.then93
  ], !dbg !511

if.then85:                                        ; preds = %if.then74
  %arrayidx87 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv306, !dbg !512
  %18 = load double* %arrayidx87, align 8, !dbg !512, !tbaa !335
  %arrayidx89 = getelementptr inbounds double* %dvec.0, i64 %idxprom77, !dbg !512
  store double %18, double* %arrayidx89, align 8, !dbg !512, !tbaa !335
  br label %if.end109, !dbg !514

if.then93:                                        ; preds = %if.then74
  %19 = trunc i64 %indvars.iv306 to i32, !dbg !515
  %mul94 = shl nsw i32 %19, 1, !dbg !515
  %idxprom95 = sext i32 %mul94 to i64, !dbg !515
  %arrayidx96 = getelementptr inbounds double* %dvec.0, i64 %idxprom95, !dbg !515
  %20 = load double* %arrayidx96, align 8, !dbg !515, !tbaa !335
  %mul97 = shl nsw i32 %count.2299, 1, !dbg !515
  %idxprom98 = sext i32 %mul97 to i64, !dbg !515
  %arrayidx99 = getelementptr inbounds double* %dvec.0, i64 %idxprom98, !dbg !515
  store double %20, double* %arrayidx99, align 8, !dbg !515, !tbaa !335
  %add101285 = or i32 %mul94, 1, !dbg !517
  %idxprom102 = sext i32 %add101285 to i64, !dbg !517
  %arrayidx103 = getelementptr inbounds double* %dvec.0, i64 %idxprom102, !dbg !517
  %21 = load double* %arrayidx103, align 8, !dbg !517, !tbaa !335
  %add105286 = or i32 %mul97, 1, !dbg !517
  %idxprom106 = sext i32 %add105286 to i64, !dbg !517
  %arrayidx107 = getelementptr inbounds double* %dvec.0, i64 %idxprom106, !dbg !517
  store double %21, double* %arrayidx107, align 8, !dbg !517, !tbaa !335
  br label %if.end109, !dbg !518

if.end109:                                        ; preds = %if.then74, %if.then93, %if.then85
  %inc110 = add nsw i32 %count.2299, 1, !dbg !519
  tail call void @llvm.dbg.value(metadata !{i32 %inc110}, i64 0, metadata !96), !dbg !519
  br label %for.inc112, !dbg !520

for.inc112:                                       ; preds = %for.body68, %if.end109
  %count.3 = phi i32 [ %inc110, %if.end109 ], [ %count.2299, %for.body68 ]
  %indvars.iv.next307 = add i64 %indvars.iv306, 1, !dbg !485
  %lftr.wideiv308 = trunc i64 %indvars.iv.next307 to i32, !dbg !485
  %exitcond309 = icmp eq i32 %lftr.wideiv308, %3, !dbg !485
  br i1 %exitcond309, label %if.end168, label %for.body68, !dbg !485

for.body121:                                      ; preds = %for.cond119.preheader, %for.inc163
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %count.4304 = phi i32 [ %count.5, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %arrayidx123 = getelementptr inbounds i32* %call12, i64 %indvars.iv310, !dbg !521
  %22 = load i32* %arrayidx123, align 4, !dbg !521, !tbaa !222
  %cmp124 = icmp slt i32 %22, 1, !dbg !521
  br i1 %cmp124, label %if.then125, label %for.inc163, !dbg !521

if.then125:                                       ; preds = %for.body121
  %arrayidx127 = getelementptr inbounds i32* %call11, i64 %indvars.iv310, !dbg !523
  %23 = load i32* %arrayidx127, align 4, !dbg !523, !tbaa !222
  %idxprom128 = sext i32 %count.4304 to i64, !dbg !523
  %arrayidx129 = getelementptr inbounds i32* %call11, i64 %idxprom128, !dbg !523
  store i32 %23, i32* %arrayidx129, align 4, !dbg !523, !tbaa !222
  %24 = load i32* %arrayidx123, align 4, !dbg !525, !tbaa !222
  %arrayidx133 = getelementptr inbounds i32* %call12, i64 %idxprom128, !dbg !525
  store i32 %24, i32* %arrayidx133, align 4, !dbg !525, !tbaa !222
  %25 = load i32* %inputMode, align 4, !dbg !526, !tbaa !222
  switch i32 %25, label %if.end160 [
    i32 1, label %if.then136
    i32 2, label %if.then144
  ], !dbg !526

if.then136:                                       ; preds = %if.then125
  %arrayidx138 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv310, !dbg !527
  %26 = load double* %arrayidx138, align 8, !dbg !527, !tbaa !335
  %arrayidx140 = getelementptr inbounds double* %dvec.0, i64 %idxprom128, !dbg !527
  store double %26, double* %arrayidx140, align 8, !dbg !527, !tbaa !335
  br label %if.end160, !dbg !529

if.then144:                                       ; preds = %if.then125
  %27 = trunc i64 %indvars.iv310 to i32, !dbg !530
  %mul145 = shl nsw i32 %27, 1, !dbg !530
  %idxprom146 = sext i32 %mul145 to i64, !dbg !530
  %arrayidx147 = getelementptr inbounds double* %dvec.0, i64 %idxprom146, !dbg !530
  %28 = load double* %arrayidx147, align 8, !dbg !530, !tbaa !335
  %mul148 = shl nsw i32 %count.4304, 1, !dbg !530
  %idxprom149 = sext i32 %mul148 to i64, !dbg !530
  %arrayidx150 = getelementptr inbounds double* %dvec.0, i64 %idxprom149, !dbg !530
  store double %28, double* %arrayidx150, align 8, !dbg !530, !tbaa !335
  %add152283 = or i32 %mul145, 1, !dbg !532
  %idxprom153 = sext i32 %add152283 to i64, !dbg !532
  %arrayidx154 = getelementptr inbounds double* %dvec.0, i64 %idxprom153, !dbg !532
  %29 = load double* %arrayidx154, align 8, !dbg !532, !tbaa !335
  %add156284 = or i32 %mul148, 1, !dbg !532
  %idxprom157 = sext i32 %add156284 to i64, !dbg !532
  %arrayidx158 = getelementptr inbounds double* %dvec.0, i64 %idxprom157, !dbg !532
  store double %29, double* %arrayidx158, align 8, !dbg !532, !tbaa !335
  br label %if.end160, !dbg !533

if.end160:                                        ; preds = %if.then125, %if.then144, %if.then136
  %inc161 = add nsw i32 %count.4304, 1, !dbg !534
  tail call void @llvm.dbg.value(metadata !{i32 %inc161}, i64 0, metadata !96), !dbg !534
  br label %for.inc163, !dbg !535

for.inc163:                                       ; preds = %for.body121, %if.end160
  %count.5 = phi i32 [ %inc161, %if.end160 ], [ %count.4304, %for.body121 ]
  %indvars.iv.next311 = add i64 %indvars.iv310, 1, !dbg !482
  %lftr.wideiv312 = trunc i64 %indvars.iv.next311 to i32, !dbg !482
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %3, !dbg !482
  br i1 %exitcond313, label %if.end168, label %for.body121, !dbg !482

if.end168:                                        ; preds = %for.cond119.preheader, %for.inc163, %for.cond66.preheader, %for.inc112, %for.cond.preheader, %for.inc, %if.end19
  %count.6 = phi i32 [ 0, %if.end19 ], [ 0, %for.cond.preheader ], [ %count.1, %for.inc ], [ 0, %for.cond66.preheader ], [ %count.3, %for.inc112 ], [ 0, %for.cond119.preheader ], [ %count.5, %for.inc163 ]
  store i32 %count.6, i32* %nent10, align 4, !dbg !536, !tbaa !222
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !537
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %count.6) #7, !dbg !537
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !538
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %count.6) #7, !dbg !538
  %30 = load i32* %inputMode, align 4, !dbg !539, !tbaa !222
  %.off291 = add i32 %30, -1, !dbg !539
  %switch292 = icmp ult i32 %.off291, 2, !dbg !539
  br i1 %switch292, label %if.then175, label %if.end176, !dbg !539

if.then175:                                       ; preds = %if.end168
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !540
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %count.6) #7, !dbg !540
  br label %if.end176, !dbg !542

if.end176:                                        ; preds = %if.end168, %if.then175
  ret void, !dbg !543
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_mapToLowerTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !103), !dbg !544
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !545
  br i1 %cmp, label %if.then, label %if.end, !dbg !545

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !546, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !546
  tail call void @exit(i32 -1) #8, !dbg !548
  unreachable, !dbg !548

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !549
  %1 = load i32* %coordType, align 4, !dbg !549, !tbaa !222
  %.off = add i32 %1, -1, !dbg !549
  %switch = icmp ult i32 %.off, 3, !dbg !549
  br i1 %switch, label %if.end9, label %if.then7, !dbg !549

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !550, !tbaa !217
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* %inpmtx) #7, !dbg !550
  tail call void @exit(i32 -1) #8, !dbg !552
  unreachable, !dbg !552

if.end9:                                          ; preds = %if.end
  %nent10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !553
  %3 = load i32* %nent10, align 4, !dbg !553, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !106), !dbg !553
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !554
  tail call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !108), !dbg !554
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !555
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !109), !dbg !555
  %4 = load i32* %coordType, align 4, !dbg !556, !tbaa !222
  switch i32 %4, label %if.end67 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond29.preheader
    i32 3, label %for.cond50.preheader
  ], !dbg !556

for.cond50.preheader:                             ; preds = %if.end9
  %cmp51114 = icmp sgt i32 %3, 0, !dbg !557
  br i1 %cmp51114, label %for.body52, label %if.end67, !dbg !557

for.cond29.preheader:                             ; preds = %if.end9
  %cmp30111 = icmp sgt i32 %3, 0, !dbg !560
  br i1 %cmp30111, label %for.body31, label %if.end67, !dbg !560

for.cond.preheader:                               ; preds = %if.end9
  %cmp16108 = icmp sgt i32 %3, 0, !dbg !563
  br i1 %cmp16108, label %for.body, label %if.end67, !dbg !563

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv, !dbg !566
  %5 = load i32* %arrayidx, align 4, !dbg !566, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !107), !dbg !566
  %arrayidx18 = getelementptr inbounds i32* %call12, i64 %indvars.iv, !dbg !566
  %6 = load i32* %arrayidx18, align 4, !dbg !566, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !104), !dbg !566
  %cmp19 = icmp slt i32 %5, %6, !dbg !566
  br i1 %cmp19, label %if.then20, label %for.inc, !dbg !566

if.then20:                                        ; preds = %for.body
  store i32 %6, i32* %arrayidx, align 4, !dbg !568, !tbaa !222
  store i32 %5, i32* %arrayidx18, align 4, !dbg !570, !tbaa !222
  br label %for.inc, !dbg !571

for.inc:                                          ; preds = %for.body, %if.then20
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !563
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !563
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !563
  br i1 %exitcond, label %if.end67, label %for.body, !dbg !563

for.body31:                                       ; preds = %for.cond29.preheader, %for.inc43
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc43 ], [ 0, %for.cond29.preheader ]
  %arrayidx33 = getelementptr inbounds i32* %call12, i64 %indvars.iv116, !dbg !572
  %7 = load i32* %arrayidx33, align 4, !dbg !572, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !107), !dbg !572
  %arrayidx35 = getelementptr inbounds i32* %call11, i64 %indvars.iv116, !dbg !572
  %8 = load i32* %arrayidx35, align 4, !dbg !572, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !104), !dbg !572
  %cmp36 = icmp slt i32 %7, %8, !dbg !572
  br i1 %cmp36, label %if.then37, label %for.inc43, !dbg !572

if.then37:                                        ; preds = %for.body31
  store i32 %7, i32* %arrayidx35, align 4, !dbg !574, !tbaa !222
  store i32 %8, i32* %arrayidx33, align 4, !dbg !576, !tbaa !222
  br label %for.inc43, !dbg !577

for.inc43:                                        ; preds = %for.body31, %if.then37
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !560
  %lftr.wideiv118 = trunc i64 %indvars.iv.next117 to i32, !dbg !560
  %exitcond119 = icmp eq i32 %lftr.wideiv118, %3, !dbg !560
  br i1 %exitcond119, label %if.end67, label %for.body31, !dbg !560

for.body52:                                       ; preds = %for.cond50.preheader, %for.inc62
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.inc62 ], [ 0, %for.cond50.preheader ]
  %arrayidx54 = getelementptr inbounds i32* %call12, i64 %indvars.iv120, !dbg !578
  %9 = load i32* %arrayidx54, align 4, !dbg !578, !tbaa !222
  %cmp55 = icmp sgt i32 %9, 0, !dbg !578
  br i1 %cmp55, label %if.then56, label %for.inc62, !dbg !578

if.then56:                                        ; preds = %for.body52
  %sub = sub nsw i32 0, %9, !dbg !580
  store i32 %sub, i32* %arrayidx54, align 4, !dbg !580, !tbaa !222
  br label %for.inc62, !dbg !582

for.inc62:                                        ; preds = %for.body52, %if.then56
  %indvars.iv.next121 = add i64 %indvars.iv120, 1, !dbg !557
  %lftr.wideiv122 = trunc i64 %indvars.iv.next121 to i32, !dbg !557
  %exitcond123 = icmp eq i32 %lftr.wideiv122, %3, !dbg !557
  br i1 %exitcond123, label %if.end67, label %for.body52, !dbg !557

if.end67:                                         ; preds = %for.cond50.preheader, %for.inc62, %for.cond29.preheader, %for.inc43, %for.cond.preheader, %for.inc, %if.end9
  ret void, !dbg !583
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_mapToUpperTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !112), !dbg !584
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !585
  br i1 %cmp, label %if.then, label %if.end, !dbg !585

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !586, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !586
  tail call void @exit(i32 -1) #8, !dbg !588
  unreachable, !dbg !588

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !589
  %1 = load i32* %coordType, align 4, !dbg !589, !tbaa !222
  %.off = add i32 %1, -1, !dbg !589
  %switch = icmp ult i32 %.off, 3, !dbg !589
  br i1 %switch, label %if.end10, label %if.then7, !dbg !589

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !590, !tbaa !217
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %1) #7, !dbg !590
  tail call void @exit(i32 -1) #8, !dbg !592
  unreachable, !dbg !592

if.end10:                                         ; preds = %if.end
  %nent11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !593
  %3 = load i32* %nent11, align 4, !dbg !593, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !115), !dbg !593
  %call12 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !594
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !117), !dbg !594
  %call13 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !595
  tail call void @llvm.dbg.value(metadata !{i32* %call13}, i64 0, metadata !118), !dbg !595
  %4 = load i32* %coordType, align 4, !dbg !596, !tbaa !222
  switch i32 %4, label %if.end68 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond30.preheader
    i32 3, label %for.cond51.preheader
  ], !dbg !596

for.cond51.preheader:                             ; preds = %if.end10
  %cmp52117 = icmp sgt i32 %3, 0, !dbg !597
  br i1 %cmp52117, label %for.body53, label %if.end68, !dbg !597

for.cond30.preheader:                             ; preds = %if.end10
  %cmp31114 = icmp sgt i32 %3, 0, !dbg !600
  br i1 %cmp31114, label %for.body32, label %if.end68, !dbg !600

for.cond.preheader:                               ; preds = %if.end10
  %cmp17111 = icmp sgt i32 %3, 0, !dbg !603
  br i1 %cmp17111, label %for.body, label %if.end68, !dbg !603

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call12, i64 %indvars.iv, !dbg !606
  %5 = load i32* %arrayidx, align 4, !dbg !606, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !116), !dbg !606
  %arrayidx19 = getelementptr inbounds i32* %call13, i64 %indvars.iv, !dbg !606
  %6 = load i32* %arrayidx19, align 4, !dbg !606, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !113), !dbg !606
  %cmp20 = icmp sgt i32 %5, %6, !dbg !606
  br i1 %cmp20, label %if.then21, label %for.inc, !dbg !606

if.then21:                                        ; preds = %for.body
  store i32 %6, i32* %arrayidx, align 4, !dbg !608, !tbaa !222
  store i32 %5, i32* %arrayidx19, align 4, !dbg !610, !tbaa !222
  br label %for.inc, !dbg !611

for.inc:                                          ; preds = %for.body, %if.then21
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !603
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !603
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !603
  br i1 %exitcond, label %if.end68, label %for.body, !dbg !603

for.body32:                                       ; preds = %for.cond30.preheader, %for.inc44
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc44 ], [ 0, %for.cond30.preheader ]
  %arrayidx34 = getelementptr inbounds i32* %call13, i64 %indvars.iv119, !dbg !612
  %7 = load i32* %arrayidx34, align 4, !dbg !612, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !116), !dbg !612
  %arrayidx36 = getelementptr inbounds i32* %call12, i64 %indvars.iv119, !dbg !612
  %8 = load i32* %arrayidx36, align 4, !dbg !612, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !113), !dbg !612
  %cmp37 = icmp sgt i32 %7, %8, !dbg !612
  br i1 %cmp37, label %if.then38, label %for.inc44, !dbg !612

if.then38:                                        ; preds = %for.body32
  store i32 %7, i32* %arrayidx36, align 4, !dbg !614, !tbaa !222
  store i32 %8, i32* %arrayidx34, align 4, !dbg !616, !tbaa !222
  br label %for.inc44, !dbg !617

for.inc44:                                        ; preds = %for.body32, %if.then38
  %indvars.iv.next120 = add i64 %indvars.iv119, 1, !dbg !600
  %lftr.wideiv121 = trunc i64 %indvars.iv.next120 to i32, !dbg !600
  %exitcond122 = icmp eq i32 %lftr.wideiv121, %3, !dbg !600
  br i1 %exitcond122, label %if.end68, label %for.body32, !dbg !600

for.body53:                                       ; preds = %for.cond51.preheader, %for.inc63
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc63 ], [ 0, %for.cond51.preheader ]
  %arrayidx55 = getelementptr inbounds i32* %call13, i64 %indvars.iv123, !dbg !618
  %9 = load i32* %arrayidx55, align 4, !dbg !618, !tbaa !222
  %cmp56 = icmp slt i32 %9, 0, !dbg !618
  br i1 %cmp56, label %if.then57, label %for.inc63, !dbg !618

if.then57:                                        ; preds = %for.body53
  %sub = sub nsw i32 0, %9, !dbg !620
  store i32 %sub, i32* %arrayidx55, align 4, !dbg !620, !tbaa !222
  br label %for.inc63, !dbg !622

for.inc63:                                        ; preds = %for.body53, %if.then57
  %indvars.iv.next124 = add i64 %indvars.iv123, 1, !dbg !597
  %lftr.wideiv125 = trunc i64 %indvars.iv.next124 to i32, !dbg !597
  %exitcond126 = icmp eq i32 %lftr.wideiv125, %3, !dbg !597
  br i1 %exitcond126, label %if.end68, label %for.body53, !dbg !597

if.end68:                                         ; preds = %for.cond51.preheader, %for.inc63, %for.cond30.preheader, %for.inc44, %for.cond.preheader, %for.inc, %if.end10
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !623
  store i32 1, i32* %storageMode, align 4, !dbg !623, !tbaa !222
  ret void, !dbg !624
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_mapToUpperTriangleH(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !121), !dbg !625
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !626
  br i1 %cmp, label %if.then, label %if.end, !dbg !626

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !627, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* null) #7, !dbg !627
  tail call void @exit(i32 -1) #8, !dbg !629
  unreachable, !dbg !629

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !630
  %1 = load i32* %coordType, align 4, !dbg !630, !tbaa !222
  %.off = add i32 %1, -1, !dbg !630
  %switch = icmp ult i32 %.off, 3, !dbg !630
  br i1 %switch, label %if.end10, label %if.then7, !dbg !630

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !631, !tbaa !217
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %1) #7, !dbg !631
  tail call void @exit(i32 -1) #8, !dbg !633
  unreachable, !dbg !633

if.end10:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !634
  %3 = load i32* %inputMode, align 4, !dbg !634, !tbaa !222
  %cmp11 = icmp eq i32 %3, 2, !dbg !634
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !634

if.then12:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !635, !tbaa !217
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([76 x i8]* @.str12, i64 0, i64 0), %struct._InpMtx* %inpmtx) #7, !dbg !635
  tail call void @exit(i32 -1) #8, !dbg !637
  unreachable, !dbg !637

if.end14:                                         ; preds = %if.end10
  %nent15 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !638
  %5 = load i32* %nent15, align 4, !dbg !638, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !125), !dbg !638
  %call16 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !639
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !127), !dbg !639
  %call17 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !128), !dbg !640
  %call18 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !641
  tail call void @llvm.dbg.value(metadata !{double* %call18}, i64 0, metadata !122), !dbg !641
  %6 = load i32* %coordType, align 4, !dbg !642, !tbaa !222
  switch i32 %6, label %if.end98 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond41.preheader
    i32 3, label %for.cond71.preheader
  ], !dbg !642

for.cond71.preheader:                             ; preds = %if.end14
  %cmp72164 = icmp sgt i32 %5, 0, !dbg !643
  br i1 %cmp72164, label %for.body73, label %if.end98, !dbg !643

for.cond41.preheader:                             ; preds = %if.end14
  %cmp42161 = icmp sgt i32 %5, 0, !dbg !646
  br i1 %cmp42161, label %for.body43, label %if.end98, !dbg !646

for.cond.preheader:                               ; preds = %if.end14
  %cmp22158 = icmp sgt i32 %5, 0, !dbg !649
  br i1 %cmp22158, label %for.body, label %if.end98, !dbg !649

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call16, i64 %indvars.iv, !dbg !652
  %7 = load i32* %arrayidx, align 4, !dbg !652, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !126), !dbg !652
  %arrayidx24 = getelementptr inbounds i32* %call17, i64 %indvars.iv, !dbg !652
  %8 = load i32* %arrayidx24, align 4, !dbg !652, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !123), !dbg !652
  %cmp25 = icmp sgt i32 %7, %8, !dbg !652
  br i1 %cmp25, label %if.then26, label %for.inc, !dbg !652

if.then26:                                        ; preds = %for.body
  store i32 %8, i32* %arrayidx, align 4, !dbg !654, !tbaa !222
  store i32 %7, i32* %arrayidx24, align 4, !dbg !656, !tbaa !222
  %9 = trunc i64 %indvars.iv to i32, !dbg !657
  %mul = shl nsw i32 %9, 1, !dbg !657
  %add157 = or i32 %mul, 1, !dbg !657
  %idxprom31 = sext i32 %add157 to i64, !dbg !657
  %arrayidx32 = getelementptr inbounds double* %call18, i64 %idxprom31, !dbg !657
  %10 = load double* %arrayidx32, align 8, !dbg !657, !tbaa !335
  %sub = fsub double -0.000000e+00, %10, !dbg !657
  store double %sub, double* %arrayidx32, align 8, !dbg !657, !tbaa !335
  br label %for.inc, !dbg !658

for.inc:                                          ; preds = %for.body, %if.then26
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !649
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !649
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !649
  br i1 %exitcond, label %if.end98, label %for.body, !dbg !649

for.body43:                                       ; preds = %for.cond41.preheader, %for.inc64
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %for.inc64 ], [ 0, %for.cond41.preheader ]
  %arrayidx45 = getelementptr inbounds i32* %call17, i64 %indvars.iv166, !dbg !659
  %11 = load i32* %arrayidx45, align 4, !dbg !659, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !126), !dbg !659
  %arrayidx47 = getelementptr inbounds i32* %call16, i64 %indvars.iv166, !dbg !659
  %12 = load i32* %arrayidx47, align 4, !dbg !659, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !123), !dbg !659
  %cmp48 = icmp sgt i32 %11, %12, !dbg !659
  br i1 %cmp48, label %if.then49, label %for.inc64, !dbg !659

if.then49:                                        ; preds = %for.body43
  store i32 %11, i32* %arrayidx47, align 4, !dbg !661, !tbaa !222
  store i32 %12, i32* %arrayidx45, align 4, !dbg !663, !tbaa !222
  %13 = trunc i64 %indvars.iv166 to i32, !dbg !664
  %mul54 = shl nsw i32 %13, 1, !dbg !664
  %add55156 = or i32 %mul54, 1, !dbg !664
  %idxprom56 = sext i32 %add55156 to i64, !dbg !664
  %arrayidx57 = getelementptr inbounds double* %call18, i64 %idxprom56, !dbg !664
  %14 = load double* %arrayidx57, align 8, !dbg !664, !tbaa !335
  %sub58 = fsub double -0.000000e+00, %14, !dbg !664
  store double %sub58, double* %arrayidx57, align 8, !dbg !664, !tbaa !335
  br label %for.inc64, !dbg !665

for.inc64:                                        ; preds = %for.body43, %if.then49
  %indvars.iv.next167 = add i64 %indvars.iv166, 1, !dbg !646
  %lftr.wideiv168 = trunc i64 %indvars.iv.next167 to i32, !dbg !646
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %5, !dbg !646
  br i1 %exitcond169, label %if.end98, label %for.body43, !dbg !646

for.body73:                                       ; preds = %for.cond71.preheader, %for.inc93
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %for.inc93 ], [ 0, %for.cond71.preheader ]
  %arrayidx75 = getelementptr inbounds i32* %call17, i64 %indvars.iv170, !dbg !666
  %15 = load i32* %arrayidx75, align 4, !dbg !666, !tbaa !222
  %cmp76 = icmp slt i32 %15, 0, !dbg !666
  br i1 %cmp76, label %if.then77, label %for.inc93, !dbg !666

if.then77:                                        ; preds = %for.body73
  %sub80 = sub nsw i32 0, %15, !dbg !668
  store i32 %sub80, i32* %arrayidx75, align 4, !dbg !668, !tbaa !222
  %16 = trunc i64 %indvars.iv170 to i32, !dbg !670
  %mul83 = shl nsw i32 %16, 1, !dbg !670
  %add84155 = or i32 %mul83, 1, !dbg !670
  %idxprom85 = sext i32 %add84155 to i64, !dbg !670
  %arrayidx86 = getelementptr inbounds double* %call18, i64 %idxprom85, !dbg !670
  %17 = load double* %arrayidx86, align 8, !dbg !670, !tbaa !335
  %sub87 = fsub double -0.000000e+00, %17, !dbg !670
  store double %sub87, double* %arrayidx86, align 8, !dbg !670, !tbaa !335
  br label %for.inc93, !dbg !671

for.inc93:                                        ; preds = %for.body73, %if.then77
  %indvars.iv.next171 = add i64 %indvars.iv170, 1, !dbg !643
  %lftr.wideiv172 = trunc i64 %indvars.iv.next171 to i32, !dbg !643
  %exitcond173 = icmp eq i32 %lftr.wideiv172, %5, !dbg !643
  br i1 %exitcond173, label %if.end98, label %for.body73, !dbg !643

if.end98:                                         ; preds = %for.cond71.preheader, %for.inc93, %for.cond41.preheader, %for.inc64, %for.cond.preheader, %for.inc, %if.end14
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !672
  store i32 1, i32* %storageMode, align 4, !dbg !672, !tbaa !222
  ret void, !dbg !673
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_checksums(%struct._InpMtx* %inpmtx, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !133), !dbg !674
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !134), !dbg !675
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !676
  br i1 %cmp, label %if.then, label %if.end, !dbg !676

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !677, !tbaa !217
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str13, i64 0, i64 0), %struct._InpMtx* null, double* %sums) #7, !dbg !677
  tail call void @exit(i32 -1) #8, !dbg !679
  unreachable, !dbg !679

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !680
  %1 = load i32* %inputMode, align 4, !dbg !680, !tbaa !222
  %switch = icmp ult i32 %1, 3, !dbg !680
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !680

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !681, !tbaa !217
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, double* %sums) #7, !dbg !681
  tail call void @exit(i32 -1) #8, !dbg !683
  unreachable, !dbg !683

sw.epilog:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds double* %sums, i64 2, !dbg !684
  %arrayidx2 = getelementptr inbounds double* %sums, i64 1, !dbg !684
  %3 = bitcast double* %sums to i8*, !dbg !685
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false), !dbg !684
  %call4 = tail call i32 @InpMtx_nent(%struct._InpMtx* %inpmtx) #7, !dbg !685
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !136), !dbg !685
  %cmp5 = icmp slt i32 %call4, 1, !dbg !685
  br i1 %cmp5, label %return, label %for.body.lr.ph, !dbg !685

for.body.lr.ph:                                   ; preds = %sw.epilog
  %call8 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !686
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !137), !dbg !686
  %call9 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !138), !dbg !687
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !688
  %sums.promoted = load double* %sums, align 8, !dbg !690, !tbaa !335
  %arrayidx2.promoted = load double* %arrayidx2, align 8, !dbg !692, !tbaa !335
  br label %for.body, !dbg !688

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv99 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next100, %for.body ]
  %4 = phi double [ %arrayidx2.promoted, %for.body.lr.ph ], [ %add19, %for.body ], !dbg !690
  %5 = phi double [ %sums.promoted, %for.body.lr.ph ], [ %add, %for.body ], !dbg !690
  %arrayidx11 = getelementptr inbounds i32* %call8, i64 %indvars.iv99, !dbg !690
  %6 = load i32* %arrayidx11, align 4, !dbg !690, !tbaa !222
  %ispos = icmp sgt i32 %6, -1, !dbg !690
  %neg = sub i32 0, %6, !dbg !690
  %7 = select i1 %ispos, i32 %6, i32 %neg, !dbg !690
  %conv = sitofp i32 %7 to double, !dbg !690
  %add = fadd double %5, %conv, !dbg !690
  %arrayidx15 = getelementptr inbounds i32* %call9, i64 %indvars.iv99, !dbg !692
  %8 = load i32* %arrayidx15, align 4, !dbg !692, !tbaa !222
  %ispos86 = icmp sgt i32 %8, -1, !dbg !692
  %neg87 = sub i32 0, %8, !dbg !692
  %9 = select i1 %ispos86, i32 %8, i32 %neg87, !dbg !692
  %conv17 = sitofp i32 %9 to double, !dbg !692
  %add19 = fadd double %4, %conv17, !dbg !692
  %indvars.iv.next100 = add i64 %indvars.iv99, 1, !dbg !688
  %lftr.wideiv101 = trunc i64 %indvars.iv.next100 to i32, !dbg !688
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %call4, !dbg !688
  br i1 %exitcond102, label %for.end, label %for.body, !dbg !688

for.end:                                          ; preds = %for.body
  store double %add, double* %sums, align 8, !dbg !690, !tbaa !335
  store double %add19, double* %arrayidx2, align 8, !dbg !692, !tbaa !335
  %10 = load i32* %inputMode, align 4, !dbg !693, !tbaa !222
  switch i32 %10, label %return [
    i32 2, label %sw.bb35
    i32 1, label %sw.bb21
  ], !dbg !693

sw.bb21:                                          ; preds = %for.end
  %call22 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !694
  tail call void @llvm.dbg.value(metadata !{double* %call22}, i64 0, metadata !139), !dbg !694
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !695
  %.pre = load double* %arrayidx, align 8, !dbg !697, !tbaa !335
  br label %for.body26, !dbg !695

for.body26:                                       ; preds = %for.body26, %sw.bb21
  %11 = phi double [ %.pre, %sw.bb21 ], [ %add31, %for.body26 ], !dbg !697
  %indvars.iv95 = phi i64 [ 0, %sw.bb21 ], [ %indvars.iv.next96, %for.body26 ]
  %arrayidx28 = getelementptr inbounds double* %call22, i64 %indvars.iv95, !dbg !697
  %12 = load double* %arrayidx28, align 8, !dbg !697, !tbaa !335
  %call29 = tail call double @fabs(double %12) #10, !dbg !697
  %add31 = fadd double %call29, %11, !dbg !697
  store double %add31, double* %arrayidx, align 8, !dbg !697, !tbaa !335
  %indvars.iv.next96 = add i64 %indvars.iv95, 1, !dbg !695
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32, !dbg !695
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %call4, !dbg !695
  br i1 %exitcond98, label %return, label %for.body26, !dbg !695

sw.bb35:                                          ; preds = %for.end
  %call37 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !699
  tail call void @llvm.dbg.value(metadata !{double* %call37}, i64 0, metadata !142), !dbg !699
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !700
  br label %for.body41, !dbg !700

for.body41:                                       ; preds = %sw.bb35, %for.body41
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body41 ], [ 0, %sw.bb35 ]
  %13 = trunc i64 %indvars.iv to i32, !dbg !702
  %mul = shl nsw i32 %13, 1, !dbg !702
  %idxprom42 = sext i32 %mul to i64, !dbg !702
  %arrayidx43 = getelementptr inbounds double* %call37, i64 %idxprom42, !dbg !702
  %14 = load double* %arrayidx43, align 8, !dbg !702, !tbaa !335
  %add4585 = or i32 %mul, 1, !dbg !702
  %idxprom46 = sext i32 %add4585 to i64, !dbg !702
  %arrayidx47 = getelementptr inbounds double* %call37, i64 %idxprom46, !dbg !702
  %15 = load double* %arrayidx47, align 8, !dbg !702, !tbaa !335
  %call48 = tail call double @Zabs(double %14, double %15) #7, !dbg !702
  %16 = load double* %arrayidx, align 8, !dbg !702, !tbaa !335
  %add50 = fadd double %call48, %16, !dbg !702
  store double %add50, double* %arrayidx, align 8, !dbg !702, !tbaa !335
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !700
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !700
  %exitcond = icmp eq i32 %lftr.wideiv, %call4, !dbg !700
  br i1 %exitcond, label %return, label %for.body41, !dbg !700

return:                                           ; preds = %for.body26, %for.body41, %for.end, %sw.epilog
  ret void, !dbg !704
}

; Function Attrs: optsize
declare i32 @InpMtx_nent(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_randomMatrix(%struct._InpMtx* %mtx, i32 %inputMode, i32 %coordType, i32 %storageMode, i32 %nrow, i32 %ncol, i32 %symflag, i32 %nonzerodiag, i32 %nitem, i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %mtx}, i64 0, metadata !148), !dbg !705
  tail call void @llvm.dbg.value(metadata !{i32 %inputMode}, i64 0, metadata !149), !dbg !706
  tail call void @llvm.dbg.value(metadata !{i32 %coordType}, i64 0, metadata !150), !dbg !707
  tail call void @llvm.dbg.value(metadata !{i32 %storageMode}, i64 0, metadata !151), !dbg !708
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !152), !dbg !709
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !153), !dbg !710
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !154), !dbg !711
  tail call void @llvm.dbg.value(metadata !{i32 %nonzerodiag}, i64 0, metadata !155), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %nitem}, i64 0, metadata !156), !dbg !713
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !157), !dbg !714
  %cmp = icmp eq %struct._InpMtx* %mtx, null, !dbg !715
  br i1 %cmp, label %if.then, label %if.end, !dbg !715

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !716, !tbaa !217
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str15, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %0), !dbg !716
  br label %return, !dbg !718

if.end:                                           ; preds = %entry
  %switch = icmp ult i32 %inputMode, 3, !dbg !719
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !719

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !720, !tbaa !217
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), i32 %inputMode) #7, !dbg !720
  br label %return, !dbg !722

sw.epilog:                                        ; preds = %if.end
  %.off = add i32 %coordType, -1, !dbg !723
  %switch116 = icmp ult i32 %.off, 3, !dbg !723
  br i1 %switch116, label %sw.epilog5, label %sw.default3, !dbg !723

sw.default3:                                      ; preds = %sw.epilog
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !724, !tbaa !217
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str17, i64 0, i64 0), i32 %coordType) #7, !dbg !724
  br label %return, !dbg !726

sw.epilog5:                                       ; preds = %sw.epilog
  %.off117 = add i32 %storageMode, -1, !dbg !727
  %switch118 = icmp ult i32 %.off117, 3, !dbg !727
  br i1 %switch118, label %sw.epilog9, label %sw.default7, !dbg !727

sw.default7:                                      ; preds = %sw.epilog5
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !728, !tbaa !217
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i32 %storageMode) #7, !dbg !728
  br label %return, !dbg !730

sw.epilog9:                                       ; preds = %sw.epilog5
  %cmp10 = icmp slt i32 %nrow, 1, !dbg !731
  %cmp11 = icmp slt i32 %ncol, 1, !dbg !731
  %or.cond = or i1 %cmp10, %cmp11, !dbg !731
  br i1 %or.cond, label %if.then12, label %if.end14, !dbg !731

if.then12:                                        ; preds = %sw.epilog9
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !732, !tbaa !217
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([60 x i8]* @.str19, i64 0, i64 0), i32 %nrow, i32 %ncol) #7, !dbg !732
  br label %return, !dbg !734

if.end14:                                         ; preds = %sw.epilog9
  %switch119 = icmp ult i32 %symflag, 3, !dbg !735
  br i1 %switch119, label %sw.epilog18, label %sw.default16, !dbg !735

sw.default16:                                     ; preds = %if.end14
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !736, !tbaa !217
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([59 x i8]* @.str20, i64 0, i64 0), i32 %symflag) #7, !dbg !736
  br label %return, !dbg !738

sw.epilog18:                                      ; preds = %if.end14
  %cmp19 = icmp eq i32 %symflag, 1, !dbg !739
  %cmp19.not = xor i1 %cmp19, true, !dbg !739
  %cmp20 = icmp eq i32 %inputMode, 2, !dbg !739
  %or.cond231 = or i1 %cmp20, %cmp19.not, !dbg !739
  br i1 %or.cond231, label %if.end23, label %if.then21, !dbg !739

if.then21:                                        ; preds = %sw.epilog18
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !740, !tbaa !217
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str21, i64 0, i64 0), i64 87, i64 1, %struct._IO_FILE* %7), !dbg !740
  br label %return, !dbg !742

if.end23:                                         ; preds = %sw.epilog18
  %9 = icmp ult i32 %symflag, 2, !dbg !743
  %.not = xor i1 %9, true, !dbg !743
  %cmp28 = icmp eq i32 %nrow, %ncol, !dbg !743
  %or.cond232 = or i1 %cmp28, %.not, !dbg !743
  br i1 %or.cond232, label %if.end31, label %if.then29, !dbg !743

if.then29:                                        ; preds = %if.end23
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !744, !tbaa !217
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([86 x i8]* @.str22, i64 0, i64 0), i32 %nrow, i32 %ncol) #7, !dbg !744
  br label %return, !dbg !746

if.end31:                                         ; preds = %if.end23
  %cmp32 = icmp slt i32 %nitem, 0, !dbg !747
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !747

if.then33:                                        ; preds = %if.end31
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !748, !tbaa !217
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([50 x i8]* @.str23, i64 0, i64 0), i32 %nitem) #7, !dbg !748
  br label %return, !dbg !750

if.end35:                                         ; preds = %if.end31
  %cmp36 = icmp sle i32 %nrow, %ncol, !dbg !751
  %cond = select i1 %cmp36, i32 %nrow, i32 %ncol, !dbg !751
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !176), !dbg !751
  %cmp37 = icmp eq i32 %nonzerodiag, 1, !dbg !752
  %add = select i1 %cmp37, i32 %cond, i32 0, !dbg !752
  %add.nitem = add i32 %add, %nitem, !dbg !752
  tail call void @InpMtx_init(%struct._InpMtx* %mtx, i32 1, i32 %inputMode, i32 %add.nitem, i32 0) #7, !dbg !753
  %call40 = tail call %struct._Drand* @Drand_new() #7, !dbg !754
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %call40}, i64 0, metadata !159), !dbg !754
  tail call void @Drand_setSeed(%struct._Drand* %call40, i32 %seed) #7, !dbg !755
  %call41 = tail call i32* @IVinit(i32 %add.nitem, i32 -1) #7, !dbg !756
  tail call void @llvm.dbg.value(metadata !{i32* %call41}, i64 0, metadata !179), !dbg !756
  %call42 = tail call i32* @IVinit(i32 %add.nitem, i32 -1) #7, !dbg !757
  tail call void @llvm.dbg.value(metadata !{i32* %call42}, i64 0, metadata !178), !dbg !757
  br i1 %cmp37, label %if.then44, label %if.else, !dbg !758

if.then44:                                        ; preds = %if.end35
  tail call void @IVramp(i32 %cond, i32* %call41, i32 0, i32 1) #7, !dbg !759
  %conv = sitofp i32 %nrow to double, !dbg !761
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv) #7, !dbg !761
  %sub = sub nsw i32 %add.nitem, %cond, !dbg !762
  %idx.ext = sext i32 %cond to i64, !dbg !762
  %add.ptr = getelementptr inbounds i32* %call41, i64 %idx.ext, !dbg !762
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %sub, i32* %add.ptr) #7, !dbg !762
  %conv45 = sitofp i32 %ncol to double, !dbg !763
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv45) #7, !dbg !763
  tail call void @IVramp(i32 %cond, i32* %call42, i32 0, i32 1) #7, !dbg !764
  %add.ptr48 = getelementptr inbounds i32* %call42, i64 %idx.ext, !dbg !765
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %sub, i32* %add.ptr48) #7, !dbg !765
  br label %if.end51, !dbg !766

if.else:                                          ; preds = %if.end35
  %conv49 = sitofp i32 %nrow to double, !dbg !767
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv49) #7, !dbg !767
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %add.nitem, i32* %call41) #7, !dbg !769
  %conv50 = sitofp i32 %ncol to double, !dbg !770
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv50) #7, !dbg !770
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %add.nitem, i32* %call42) #7, !dbg !771
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then44
  %cmp58239 = icmp sgt i32 %add.nitem, 0, !dbg !772
  %or.cond245 = and i1 %9, %cmp58239, !dbg !775
  br i1 %or.cond245, label %for.body, label %if.end70, !dbg !775

for.body:                                         ; preds = %if.end51, %for.inc
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %for.inc ], [ 0, %if.end51 ]
  %arrayidx = getelementptr inbounds i32* %call41, i64 %indvars.iv241, !dbg !776
  %12 = load i32* %arrayidx, align 4, !dbg !776, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !177), !dbg !776
  %arrayidx61 = getelementptr inbounds i32* %call42, i64 %indvars.iv241, !dbg !776
  %13 = load i32* %arrayidx61, align 4, !dbg !776, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !174), !dbg !776
  %cmp62 = icmp sgt i32 %12, %13, !dbg !776
  br i1 %cmp62, label %if.then64, label %for.inc, !dbg !776

if.then64:                                        ; preds = %for.body
  store i32 %13, i32* %arrayidx, align 4, !dbg !778, !tbaa !222
  store i32 %12, i32* %arrayidx61, align 4, !dbg !780, !tbaa !222
  br label %for.inc, !dbg !781

for.inc:                                          ; preds = %for.body, %if.then64
  %indvars.iv.next242 = add i64 %indvars.iv241, 1, !dbg !772
  %lftr.wideiv243 = trunc i64 %indvars.iv.next242 to i32, !dbg !772
  %exitcond244 = icmp eq i32 %lftr.wideiv243, %add.nitem, !dbg !772
  br i1 %exitcond244, label %if.end70, label %for.body, !dbg !772

if.end70:                                         ; preds = %for.inc, %if.end51
  switch i32 %inputMode, label %if.end106 [
    i32 1, label %if.end106.thread
    i32 2, label %if.then78
  ], !dbg !782

if.end106.thread:                                 ; preds = %if.end70
  %call74 = tail call double* @DVinit(i32 %add.nitem, double 0.000000e+00) #7, !dbg !783
  tail call void @llvm.dbg.value(metadata !{double* %call74}, i64 0, metadata !158), !dbg !783
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double 1.000000e+00) #7, !dbg !785
  tail call void @Drand_fillDvector(%struct._Drand* %call40, i32 %add.nitem, double* %call74) #7, !dbg !786
  br label %sw.bb108, !dbg !787

if.then78:                                        ; preds = %if.end70
  %mul = shl nsw i32 %add.nitem, 1, !dbg !788
  %call79 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #7, !dbg !788
  tail call void @llvm.dbg.value(metadata !{double* %call79}, i64 0, metadata !158), !dbg !788
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double 1.000000e+00) #7, !dbg !790
  tail call void @Drand_fillDvector(%struct._Drand* %call40, i32 %mul, double* %call79) #7, !dbg !791
  br i1 %cmp19, label %for.cond84.preheader, label %sw.bb109, !dbg !792

for.cond84.preheader:                             ; preds = %if.then78
  %cmp85237 = icmp sgt i32 %add.nitem, 0, !dbg !793
  br i1 %cmp85237, label %for.body87, label %if.end106, !dbg !793

for.body87:                                       ; preds = %for.cond84.preheader, %for.inc100
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc100 ], [ 0, %for.cond84.preheader ]
  %arrayidx89 = getelementptr inbounds i32* %call41, i64 %indvars.iv, !dbg !796
  %14 = load i32* %arrayidx89, align 4, !dbg !796, !tbaa !222
  %arrayidx91 = getelementptr inbounds i32* %call42, i64 %indvars.iv, !dbg !796
  %15 = load i32* %arrayidx91, align 4, !dbg !796, !tbaa !222
  %cmp92 = icmp eq i32 %14, %15, !dbg !796
  br i1 %cmp92, label %if.then94, label %for.inc100, !dbg !796

if.then94:                                        ; preds = %for.body87
  %16 = trunc i64 %indvars.iv to i32, !dbg !798
  %mul95 = shl nsw i32 %16, 1, !dbg !798
  %add96230 = or i32 %mul95, 1, !dbg !798
  %idxprom97 = sext i32 %add96230 to i64, !dbg !798
  %arrayidx98 = getelementptr inbounds double* %call79, i64 %idxprom97, !dbg !798
  store double 0.000000e+00, double* %arrayidx98, align 8, !dbg !798, !tbaa !335
  br label %for.inc100, !dbg !800

for.inc100:                                       ; preds = %for.body87, %if.then94
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !793
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !793
  %exitcond = icmp eq i32 %lftr.wideiv, %add.nitem, !dbg !793
  br i1 %exitcond, label %if.end106, label %for.body87, !dbg !793

if.end106:                                        ; preds = %for.cond84.preheader, %for.inc100, %if.end70
  %dvec.0 = phi double* [ null, %if.end70 ], [ %call79, %for.inc100 ], [ %call79, %for.cond84.preheader ]
  switch i32 %inputMode, label %sw.epilog110 [
    i32 0, label %sw.bb107
    i32 1, label %sw.bb108
    i32 2, label %sw.bb109
  ], !dbg !787

sw.bb107:                                         ; preds = %if.end106
  tail call void @InpMtx_inputTriples(%struct._InpMtx* %mtx, i32 %add.nitem, i32* %call41, i32* %call42) #7, !dbg !801
  br label %sw.epilog110, !dbg !803

sw.bb108:                                         ; preds = %if.end106.thread, %if.end106
  %dvec.0233 = phi double* [ %call74, %if.end106.thread ], [ %dvec.0, %if.end106 ]
  tail call void @InpMtx_inputRealTriples(%struct._InpMtx* %mtx, i32 %add.nitem, i32* %call41, i32* %call42, double* %dvec.0233) #7, !dbg !804
  br label %sw.epilog110, !dbg !805

sw.bb109:                                         ; preds = %if.then78, %if.end106
  %dvec.0236 = phi double* [ %dvec.0, %if.end106 ], [ %call79, %if.then78 ]
  tail call void @InpMtx_inputComplexTriples(%struct._InpMtx* %mtx, i32 %add.nitem, i32* %call41, i32* %call42, double* %dvec.0236) #7, !dbg !806
  br label %sw.epilog110, !dbg !807

sw.epilog110:                                     ; preds = %if.end106, %sw.bb109, %sw.bb108, %sw.bb107
  %dvec.0234 = phi double* [ %dvec.0, %if.end106 ], [ %dvec.0236, %sw.bb109 ], [ %dvec.0233, %sw.bb108 ], [ %dvec.0, %sw.bb107 ]
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %mtx, i32 %coordType) #7, !dbg !808
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %mtx, i32 %storageMode) #7, !dbg !809
  %call111 = tail call %struct._Drand* @Drand_free(%struct._Drand* %call40) #7, !dbg !810
  tail call void @IVfree(i32* %call41) #7, !dbg !811
  tail call void @IVfree(i32* %call42) #7, !dbg !812
  %cmp112 = icmp eq double* %dvec.0234, null, !dbg !813
  br i1 %cmp112, label %return, label %if.then114, !dbg !813

if.then114:                                       ; preds = %sw.epilog110
  tail call void @DVfree(double* %dvec.0234) #7, !dbg !814
  br label %return, !dbg !816

return:                                           ; preds = %if.then114, %sw.epilog110, %if.then33, %if.then29, %if.then21, %sw.default16, %if.then12, %sw.default7, %sw.default3, %sw.default, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -5, %if.then12 ], [ -7, %if.then21 ], [ -8, %if.then29 ], [ -9, %if.then33 ], [ -6, %sw.default16 ], [ -4, %sw.default7 ], [ -3, %sw.default3 ], [ -2, %sw.default ], [ 1, %sw.epilog110 ], [ 1, %if.then114 ]
  ret i32 %retval.0, !dbg !817
}

; Function Attrs: optsize
declare void @InpMtx_init(%struct._InpMtx*, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare %struct._Drand* @Drand_new() #3

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #3

; Function Attrs: optsize
declare void @Drand_fillIvector(%struct._Drand*, i32, i32*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: optsize
declare void @Drand_fillDvector(%struct._Drand*, i32, double*) #3

; Function Attrs: optsize
declare void @InpMtx_inputTriples(%struct._InpMtx*, i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @InpMtx_inputRealTriples(%struct._InpMtx*, i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @InpMtx_inputComplexTriples(%struct._InpMtx*, i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare %struct._Drand* @Drand_free(%struct._Drand*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_range(%struct._InpMtx* %mtx, i32* %pmincol, i32* %pmaxcol, i32* %pminrow, i32* %pmaxrow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %mtx}, i64 0, metadata !184), !dbg !818
  tail call void @llvm.dbg.value(metadata !{i32* %pmincol}, i64 0, metadata !185), !dbg !819
  tail call void @llvm.dbg.value(metadata !{i32* %pmaxcol}, i64 0, metadata !186), !dbg !820
  tail call void @llvm.dbg.value(metadata !{i32* %pminrow}, i64 0, metadata !187), !dbg !821
  tail call void @llvm.dbg.value(metadata !{i32* %pmaxrow}, i64 0, metadata !188), !dbg !822
  %cmp = icmp eq %struct._InpMtx* %mtx, null, !dbg !823
  br i1 %cmp, label %if.then, label %if.end, !dbg !823

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !824, !tbaa !217
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str24, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %0), !dbg !824
  br label %return, !dbg !826

if.end:                                           ; preds = %entry
  %nent1 = getelementptr inbounds %struct._InpMtx* %mtx, i64 0, i32 4, !dbg !827
  %2 = load i32* %nent1, align 4, !dbg !827, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !193), !dbg !827
  %cmp2 = icmp slt i32 %2, 1, !dbg !827
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !827

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !828, !tbaa !217
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str25, i64 0, i64 0), i32 %2) #7, !dbg !828
  br label %return, !dbg !830

if.end5:                                          ; preds = %if.end
  %coordType = getelementptr inbounds %struct._InpMtx* %mtx, i64 0, i32 0, !dbg !831
  %4 = load i32* %coordType, align 4, !dbg !831, !tbaa !222
  switch i32 %4, label %if.else113 [
    i32 1, label %if.then7
    i32 2, label %if.then31
    i32 3, label %if.then68
  ], !dbg !831

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %mtx) #7, !dbg !832
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !194), !dbg !832
  %call9 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %mtx) #7, !dbg !833
  tail call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !196), !dbg !833
  %5 = load i32* %call8, align 4, !dbg !834, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !190), !dbg !834
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !192), !dbg !834
  %6 = load i32* %call9, align 4, !dbg !835, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !189), !dbg !835
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !191), !dbg !835
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !198), !dbg !836
  %cmp11201 = icmp sgt i32 %2, 1, !dbg !836
  br i1 %cmp11201, label %for.body, label %if.end118, !dbg !836

for.body:                                         ; preds = %if.then7, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.then7 ]
  %maxcol.0206 = phi i32 [ %maxcol.1, %for.inc ], [ %6, %if.then7 ]
  %maxrow.0205 = phi i32 [ %maxrow.1, %for.inc ], [ %5, %if.then7 ]
  %mincol.0204 = phi i32 [ %mincol.1, %for.inc ], [ %6, %if.then7 ]
  %minrow.0203 = phi i32 [ %minrow.1, %for.inc ], [ %5, %if.then7 ]
  %arrayidx12 = getelementptr inbounds i32* %call8, i64 %indvars.iv, !dbg !838
  %7 = load i32* %arrayidx12, align 4, !dbg !838, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !199), !dbg !838
  %arrayidx14 = getelementptr inbounds i32* %call9, i64 %indvars.iv, !dbg !840
  %8 = load i32* %arrayidx14, align 4, !dbg !840, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !197), !dbg !840
  %cmp15 = icmp sgt i32 %minrow.0203, %7, !dbg !841
  br i1 %cmp15, label %if.end20, label %if.else, !dbg !841

if.else:                                          ; preds = %for.body
  %cmp17 = icmp slt i32 %maxrow.0205, %7, !dbg !842
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !190), !dbg !843
  %.maxrow.0 = select i1 %cmp17, i32 %7, i32 %maxrow.0205, !dbg !842
  br label %if.end20, !dbg !842

if.end20:                                         ; preds = %if.else, %for.body
  %minrow.1 = phi i32 [ %7, %for.body ], [ %minrow.0203, %if.else ]
  %maxrow.1 = phi i32 [ %maxrow.0205, %for.body ], [ %.maxrow.0, %if.else ]
  %cmp21 = icmp sgt i32 %mincol.0204, %8, !dbg !845
  br i1 %cmp21, label %for.inc, label %if.else23, !dbg !845

if.else23:                                        ; preds = %if.end20
  %cmp24 = icmp slt i32 %maxcol.0206, %8, !dbg !846
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !189), !dbg !847
  %.maxcol.0 = select i1 %cmp24, i32 %8, i32 %maxcol.0206, !dbg !846
  br label %for.inc, !dbg !846

for.inc:                                          ; preds = %if.else23, %if.end20
  %mincol.1 = phi i32 [ %8, %if.end20 ], [ %mincol.0204, %if.else23 ]
  %maxcol.1 = phi i32 [ %maxcol.0206, %if.end20 ], [ %.maxcol.0, %if.else23 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !836
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !836
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !836
  br i1 %exitcond, label %if.end118, label %for.body, !dbg !836

if.then31:                                        ; preds = %if.end5
  %call33 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %mtx) #7, !dbg !849
  tail call void @llvm.dbg.value(metadata !{i32* %call33}, i64 0, metadata !200), !dbg !849
  %call35 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %mtx) #7, !dbg !850
  tail call void @llvm.dbg.value(metadata !{i32* %call35}, i64 0, metadata !202), !dbg !850
  %9 = load i32* %call33, align 4, !dbg !851, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !190), !dbg !851
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !192), !dbg !851
  %10 = load i32* %call35, align 4, !dbg !852, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !189), !dbg !852
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !191), !dbg !852
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !204), !dbg !853
  %cmp42211 = icmp sgt i32 %2, 1, !dbg !853
  br i1 %cmp42211, label %for.body43, label %if.end118, !dbg !853

for.body43:                                       ; preds = %if.then31, %for.inc62
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %for.inc62 ], [ 1, %if.then31 ]
  %maxcol.2216 = phi i32 [ %maxcol.3, %for.inc62 ], [ %10, %if.then31 ]
  %maxrow.2215 = phi i32 [ %maxrow.3, %for.inc62 ], [ %9, %if.then31 ]
  %mincol.2213 = phi i32 [ %mincol.3, %for.inc62 ], [ %10, %if.then31 ]
  %minrow.2212 = phi i32 [ %minrow.3, %for.inc62 ], [ %9, %if.then31 ]
  %arrayidx45 = getelementptr inbounds i32* %call33, i64 %indvars.iv232, !dbg !855
  %11 = load i32* %arrayidx45, align 4, !dbg !855, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !205), !dbg !855
  %arrayidx47 = getelementptr inbounds i32* %call35, i64 %indvars.iv232, !dbg !857
  %12 = load i32* %arrayidx47, align 4, !dbg !857, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !203), !dbg !857
  %cmp48 = icmp sgt i32 %minrow.2212, %11, !dbg !858
  br i1 %cmp48, label %if.end54, label %if.else50, !dbg !858

if.else50:                                        ; preds = %for.body43
  %cmp51 = icmp slt i32 %maxrow.2215, %11, !dbg !859
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !190), !dbg !860
  %.maxrow.2 = select i1 %cmp51, i32 %11, i32 %maxrow.2215, !dbg !859
  br label %if.end54, !dbg !859

if.end54:                                         ; preds = %if.else50, %for.body43
  %minrow.3 = phi i32 [ %11, %for.body43 ], [ %minrow.2212, %if.else50 ]
  %maxrow.3 = phi i32 [ %maxrow.2215, %for.body43 ], [ %.maxrow.2, %if.else50 ]
  %cmp55 = icmp sgt i32 %mincol.2213, %12, !dbg !862
  br i1 %cmp55, label %for.inc62, label %if.else57, !dbg !862

if.else57:                                        ; preds = %if.end54
  %cmp58 = icmp slt i32 %maxcol.2216, %12, !dbg !863
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !189), !dbg !864
  %.maxcol.2 = select i1 %cmp58, i32 %12, i32 %maxcol.2216, !dbg !863
  br label %for.inc62, !dbg !863

for.inc62:                                        ; preds = %if.else57, %if.end54
  %mincol.3 = phi i32 [ %12, %if.end54 ], [ %mincol.2213, %if.else57 ]
  %maxcol.3 = phi i32 [ %maxcol.2216, %if.end54 ], [ %.maxcol.2, %if.else57 ]
  %indvars.iv.next233 = add i64 %indvars.iv232, 1, !dbg !853
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32, !dbg !853
  %exitcond235 = icmp eq i32 %lftr.wideiv234, %2, !dbg !853
  br i1 %exitcond235, label %if.end118, label %for.body43, !dbg !853

if.then68:                                        ; preds = %if.end5
  %call69 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %mtx) #7, !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32* %call69}, i64 0, metadata !206), !dbg !866
  %call70 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %mtx) #7, !dbg !867
  tail call void @llvm.dbg.value(metadata !{i32* %call70}, i64 0, metadata !208), !dbg !867
  %13 = load i32* %call70, align 4, !dbg !868, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !211), !dbg !868
  %cmp75 = icmp sgt i32 %13, -1, !dbg !868
  %14 = load i32* %call69, align 4, !dbg !869, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !212), !dbg !869
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !209), !dbg !871
  %add = select i1 %cmp75, i32 %13, i32 0, !dbg !868
  %col71.0 = add nsw i32 %add, %14, !dbg !868
  %sub = select i1 %cmp75, i32 0, i32 %13, !dbg !868
  %row73.0 = sub nsw i32 %14, %sub, !dbg !868
  %cmp82222 = icmp sgt i32 %2, 1, !dbg !873
  br i1 %cmp82222, label %for.body83, label %if.end118, !dbg !873

for.body83:                                       ; preds = %if.then68, %for.inc110
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.inc110 ], [ 1, %if.then68 ]
  %maxcol.4226 = phi i32 [ %maxcol.5, %for.inc110 ], [ %col71.0, %if.then68 ]
  %maxrow.4225 = phi i32 [ %maxrow.5, %for.inc110 ], [ %row73.0, %if.then68 ]
  %mincol.4224 = phi i32 [ %mincol.5, %for.inc110 ], [ %col71.0, %if.then68 ]
  %minrow.4223 = phi i32 [ %minrow.5, %for.inc110 ], [ %row73.0, %if.then68 ]
  %arrayidx85 = getelementptr inbounds i32* %call70, i64 %indvars.iv236, !dbg !875
  %15 = load i32* %arrayidx85, align 4, !dbg !875, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !211), !dbg !875
  %cmp86 = icmp sgt i32 %15, -1, !dbg !875
  %arrayidx89 = getelementptr inbounds i32* %call69, i64 %indvars.iv236, !dbg !877
  %16 = load i32* %arrayidx89, align 4, !dbg !877, !tbaa !222
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !212), !dbg !877
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !209), !dbg !879
  %add90 = select i1 %cmp86, i32 %15, i32 0, !dbg !875
  %col71.1 = add nsw i32 %add90, %16, !dbg !875
  %sub94 = select i1 %cmp86, i32 0, i32 %15, !dbg !875
  %row73.1 = sub nsw i32 %16, %sub94, !dbg !875
  %cmp96 = icmp sgt i32 %minrow.4223, %row73.1, !dbg !881
  br i1 %cmp96, label %if.end102, label %if.else98, !dbg !881

if.else98:                                        ; preds = %for.body83
  %cmp99 = icmp slt i32 %maxrow.4225, %row73.1, !dbg !882
  tail call void @llvm.dbg.value(metadata !{i32 %row73.1}, i64 0, metadata !190), !dbg !883
  %row73.1.maxrow.4 = select i1 %cmp99, i32 %row73.1, i32 %maxrow.4225, !dbg !882
  br label %if.end102, !dbg !882

if.end102:                                        ; preds = %if.else98, %for.body83
  %minrow.5 = phi i32 [ %row73.1, %for.body83 ], [ %minrow.4223, %if.else98 ]
  %maxrow.5 = phi i32 [ %maxrow.4225, %for.body83 ], [ %row73.1.maxrow.4, %if.else98 ]
  %cmp103 = icmp sgt i32 %mincol.4224, %col71.1, !dbg !885
  br i1 %cmp103, label %for.inc110, label %if.else105, !dbg !885

if.else105:                                       ; preds = %if.end102
  %cmp106 = icmp slt i32 %maxcol.4226, %col71.1, !dbg !886
  tail call void @llvm.dbg.value(metadata !{i32 %col71.1}, i64 0, metadata !189), !dbg !887
  %col71.1.maxcol.4 = select i1 %cmp106, i32 %col71.1, i32 %maxcol.4226, !dbg !886
  br label %for.inc110, !dbg !886

for.inc110:                                       ; preds = %if.else105, %if.end102
  %mincol.5 = phi i32 [ %col71.1, %if.end102 ], [ %mincol.4224, %if.else105 ]
  %maxcol.5 = phi i32 [ %maxcol.4226, %if.end102 ], [ %col71.1.maxcol.4, %if.else105 ]
  %indvars.iv.next237 = add i64 %indvars.iv236, 1, !dbg !873
  %lftr.wideiv238 = trunc i64 %indvars.iv.next237 to i32, !dbg !873
  %exitcond239 = icmp eq i32 %lftr.wideiv238, %2, !dbg !873
  br i1 %exitcond239, label %if.end118, label %for.body83, !dbg !873

if.else113:                                       ; preds = %if.end5
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !889, !tbaa !217
  %call115 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([55 x i8]* @.str26, i64 0, i64 0), i32 %4) #7, !dbg !889
  br label %return, !dbg !891

if.end118:                                        ; preds = %if.then68, %for.inc110, %if.then31, %for.inc62, %if.then7, %for.inc
  %minrow.6 = phi i32 [ %5, %if.then7 ], [ %minrow.1, %for.inc ], [ %9, %if.then31 ], [ %minrow.3, %for.inc62 ], [ %row73.0, %if.then68 ], [ %minrow.5, %for.inc110 ]
  %mincol.6 = phi i32 [ %6, %if.then7 ], [ %mincol.1, %for.inc ], [ %10, %if.then31 ], [ %mincol.3, %for.inc62 ], [ %col71.0, %if.then68 ], [ %mincol.5, %for.inc110 ]
  %maxrow.6 = phi i32 [ %5, %if.then7 ], [ %maxrow.1, %for.inc ], [ %9, %if.then31 ], [ %maxrow.3, %for.inc62 ], [ %row73.0, %if.then68 ], [ %maxrow.5, %for.inc110 ]
  %maxcol.6 = phi i32 [ %6, %if.then7 ], [ %maxcol.1, %for.inc ], [ %10, %if.then31 ], [ %maxcol.3, %for.inc62 ], [ %col71.0, %if.then68 ], [ %maxcol.5, %for.inc110 ]
  %cmp119 = icmp eq i32* %pmincol, null, !dbg !892
  br i1 %cmp119, label %if.end121, label %if.then120, !dbg !892

if.then120:                                       ; preds = %if.end118
  store i32 %mincol.6, i32* %pmincol, align 4, !dbg !893, !tbaa !222
  br label %if.end121, !dbg !893

if.end121:                                        ; preds = %if.end118, %if.then120
  %cmp122 = icmp eq i32* %pmaxcol, null, !dbg !895
  br i1 %cmp122, label %if.end124, label %if.then123, !dbg !895

if.then123:                                       ; preds = %if.end121
  store i32 %maxcol.6, i32* %pmaxcol, align 4, !dbg !896, !tbaa !222
  br label %if.end124, !dbg !896

if.end124:                                        ; preds = %if.end121, %if.then123
  %cmp125 = icmp eq i32* %pminrow, null, !dbg !898
  br i1 %cmp125, label %if.end127, label %if.then126, !dbg !898

if.then126:                                       ; preds = %if.end124
  store i32 %minrow.6, i32* %pminrow, align 4, !dbg !899, !tbaa !222
  br label %if.end127, !dbg !899

if.end127:                                        ; preds = %if.end124, %if.then126
  %cmp128 = icmp eq i32* %pmaxrow, null, !dbg !901
  br i1 %cmp128, label %return, label %if.then129, !dbg !901

if.then129:                                       ; preds = %if.end127
  store i32 %maxrow.6, i32* %pmaxrow, align 4, !dbg !902, !tbaa !222
  br label %return, !dbg !902

return:                                           ; preds = %if.then129, %if.end127, %if.else113, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then3 ], [ -3, %if.else113 ], [ 1, %if.end127 ], [ 1, %if.then129 ]
  ret i32 %retval.0, !dbg !904
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !59, metadata !74, metadata !83, metadata !92, metadata !101, metadata !110, metadata !119, metadata !129, metadata !144, metadata !180}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_sortAndCompress", metadata !"InpMtx_sortAndCompress", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_sortAndCompress, null, null, metadata !47, i32 21} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 21] [InpMtx_sortAndCompress]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !21, metadata !31, metadata !32, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!33 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !57}
!48 = metadata !{i32 786689, metadata !4, metadata !"inpmtx", metadata !5, i32 16777236, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 20]
!49 = metadata !{i32 786688, metadata !4, metadata !"ient", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ient] [line 22]
!50 = metadata !{i32 786688, metadata !4, metadata !"nent", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 22]
!51 = metadata !{i32 786688, metadata !4, metadata !"sortMustBeDone", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sortMustBeDone] [line 22]
!52 = metadata !{i32 786688, metadata !4, metadata !"ivec1", metadata !5, i32 23, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 23]
!53 = metadata !{i32 786688, metadata !4, metadata !"ivec2", metadata !5, i32 23, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 23]
!54 = metadata !{i32 786688, metadata !55, metadata !"dvec", metadata !5, i32 55, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 55]
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 54, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!56 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!57 = metadata !{i32 786688, metadata !58, metadata !"dvec", metadata !5, i32 58, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 58]
!58 = metadata !{i32 786443, metadata !1, metadata !56, i32 57, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_convertToVectors", metadata !"InpMtx_convertToVectors", metadata !"", i32 75, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_convertToVectors, null, null, metadata !60, i32 77} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 77] [InpMtx_convertToVectors]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!61 = metadata !{i32 786689, metadata !59, metadata !"inpmtx", metadata !5, i32 16777292, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 76]
!62 = metadata !{i32 786688, metadata !59, metadata !"ivec1", metadata !5, i32 78, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 78]
!63 = metadata !{i32 786688, metadata !59, metadata !"ivec2", metadata !5, i32 78, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 78]
!64 = metadata !{i32 786688, metadata !59, metadata !"offsets", metadata !5, i32 78, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offsets] [line 78]
!65 = metadata !{i32 786688, metadata !59, metadata !"sizes", metadata !5, i32 78, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 78]
!66 = metadata !{i32 786688, metadata !59, metadata !"vecids", metadata !5, i32 78, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vecids] [line 78]
!67 = metadata !{i32 786688, metadata !59, metadata !"first", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 79]
!68 = metadata !{i32 786688, metadata !59, metadata !"id", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [id] [line 79]
!69 = metadata !{i32 786688, metadata !59, metadata !"ient", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ient] [line 79]
!70 = metadata !{i32 786688, metadata !59, metadata !"jj", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 79]
!71 = metadata !{i32 786688, metadata !59, metadata !"nent", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 79]
!72 = metadata !{i32 786688, metadata !59, metadata !"nvector", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvector] [line 79]
!73 = metadata !{i32 786688, metadata !59, metadata !"value", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 79]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_dropOffdiagonalEntries", metadata !"InpMtx_dropOffdiagonalEntries", metadata !"", i32 202, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_dropOffdiagonalEntries, null, null, metadata !75, i32 204} ; [ DW_TAG_subprogram ] [line 202] [def] [scope 204] [InpMtx_dropOffdiagonalEntries]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82}
!76 = metadata !{i32 786689, metadata !74, metadata !"inpmtx", metadata !5, i32 16777419, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 203]
!77 = metadata !{i32 786688, metadata !74, metadata !"dvec", metadata !5, i32 205, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 205]
!78 = metadata !{i32 786688, metadata !74, metadata !"count", metadata !5, i32 206, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 206]
!79 = metadata !{i32 786688, metadata !74, metadata !"ii", metadata !5, i32 206, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 206]
!80 = metadata !{i32 786688, metadata !74, metadata !"nent", metadata !5, i32 206, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 206]
!81 = metadata !{i32 786688, metadata !74, metadata !"ivec1", metadata !5, i32 207, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 207]
!82 = metadata !{i32 786688, metadata !74, metadata !"ivec2", metadata !5, i32 207, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 207]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_dropLowerTriangle", metadata !"InpMtx_dropLowerTriangle", metadata !"", i32 296, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_dropLowerTriangle, null, null, metadata !84, i32 298} ; [ DW_TAG_subprogram ] [line 296] [def] [scope 298] [InpMtx_dropLowerTriangle]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!85 = metadata !{i32 786689, metadata !83, metadata !"inpmtx", metadata !5, i32 16777513, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 297]
!86 = metadata !{i32 786688, metadata !83, metadata !"dvec", metadata !5, i32 299, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 299]
!87 = metadata !{i32 786688, metadata !83, metadata !"count", metadata !5, i32 300, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 300]
!88 = metadata !{i32 786688, metadata !83, metadata !"ii", metadata !5, i32 300, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 300]
!89 = metadata !{i32 786688, metadata !83, metadata !"nent", metadata !5, i32 300, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 300]
!90 = metadata !{i32 786688, metadata !83, metadata !"ivec1", metadata !5, i32 301, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 301]
!91 = metadata !{i32 786688, metadata !83, metadata !"ivec2", metadata !5, i32 301, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 301]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_dropUpperTriangle", metadata !"InpMtx_dropUpperTriangle", metadata !"", i32 396, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_dropUpperTriangle, null, null, metadata !93, i32 398} ; [ DW_TAG_subprogram ] [line 396] [def] [scope 398] [InpMtx_dropUpperTriangle]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100}
!94 = metadata !{i32 786689, metadata !92, metadata !"inpmtx", metadata !5, i32 16777613, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 397]
!95 = metadata !{i32 786688, metadata !92, metadata !"dvec", metadata !5, i32 399, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 399]
!96 = metadata !{i32 786688, metadata !92, metadata !"count", metadata !5, i32 400, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 400]
!97 = metadata !{i32 786688, metadata !92, metadata !"ii", metadata !5, i32 400, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 400]
!98 = metadata !{i32 786688, metadata !92, metadata !"nent", metadata !5, i32 400, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 400]
!99 = metadata !{i32 786688, metadata !92, metadata !"ivec1", metadata !5, i32 401, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 401]
!100 = metadata !{i32 786688, metadata !92, metadata !"ivec2", metadata !5, i32 401, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 401]
!101 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_mapToLowerTriangle", metadata !"InpMtx_mapToLowerTriangle", metadata !"", i32 489, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_mapToLowerTriangle, null, null, metadata !102, i32 491} ; [ DW_TAG_subprogram ] [line 489] [def] [scope 491] [InpMtx_mapToLowerTriangle]
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!103 = metadata !{i32 786689, metadata !101, metadata !"inpmtx", metadata !5, i32 16777706, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 490]
!104 = metadata !{i32 786688, metadata !101, metadata !"col", metadata !5, i32 492, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 492]
!105 = metadata !{i32 786688, metadata !101, metadata !"ii", metadata !5, i32 492, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 492]
!106 = metadata !{i32 786688, metadata !101, metadata !"nent", metadata !5, i32 492, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 492]
!107 = metadata !{i32 786688, metadata !101, metadata !"row", metadata !5, i32 492, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 492]
!108 = metadata !{i32 786688, metadata !101, metadata !"ivec1", metadata !5, i32 493, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 493]
!109 = metadata !{i32 786688, metadata !101, metadata !"ivec2", metadata !5, i32 493, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 493]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_mapToUpperTriangle", metadata !"InpMtx_mapToUpperTriangle", metadata !"", i32 546, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_mapToUpperTriangle, null, null, metadata !111, i32 548} ; [ DW_TAG_subprogram ] [line 546] [def] [scope 548] [InpMtx_mapToUpperTriangle]
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118}
!112 = metadata !{i32 786689, metadata !110, metadata !"inpmtx", metadata !5, i32 16777763, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 547]
!113 = metadata !{i32 786688, metadata !110, metadata !"col", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 549]
!114 = metadata !{i32 786688, metadata !110, metadata !"ii", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 549]
!115 = metadata !{i32 786688, metadata !110, metadata !"nent", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 549]
!116 = metadata !{i32 786688, metadata !110, metadata !"row", metadata !5, i32 549, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 549]
!117 = metadata !{i32 786688, metadata !110, metadata !"ivec1", metadata !5, i32 550, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 550]
!118 = metadata !{i32 786688, metadata !110, metadata !"ivec2", metadata !5, i32 550, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 550]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_mapToUpperTriangleH", metadata !"InpMtx_mapToUpperTriangleH", metadata !"", i32 607, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_mapToUpperTriangleH, null, null, metadata !120, i32 609} ; [ DW_TAG_subprogram ] [line 607] [def] [scope 609] [InpMtx_mapToUpperTriangleH]
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!121 = metadata !{i32 786689, metadata !119, metadata !"inpmtx", metadata !5, i32 16777824, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 608]
!122 = metadata !{i32 786688, metadata !119, metadata !"dvec", metadata !5, i32 610, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 610]
!123 = metadata !{i32 786688, metadata !119, metadata !"col", metadata !5, i32 611, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 611]
!124 = metadata !{i32 786688, metadata !119, metadata !"ii", metadata !5, i32 611, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 611]
!125 = metadata !{i32 786688, metadata !119, metadata !"nent", metadata !5, i32 611, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 611]
!126 = metadata !{i32 786688, metadata !119, metadata !"row", metadata !5, i32 611, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 611]
!127 = metadata !{i32 786688, metadata !119, metadata !"ivec1", metadata !5, i32 612, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 612]
!128 = metadata !{i32 786688, metadata !119, metadata !"ivec2", metadata !5, i32 612, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 612]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_checksums", metadata !"InpMtx_checksums", metadata !"", i32 683, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, double*)* @InpMtx_checksums, null, null, metadata !132, i32 686} ; [ DW_TAG_subprogram ] [line 683] [def] [scope 686] [InpMtx_checksums]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{null, metadata !8, metadata !41}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !142}
!133 = metadata !{i32 786689, metadata !129, metadata !"inpmtx", metadata !5, i32 16777900, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 684]
!134 = metadata !{i32 786689, metadata !129, metadata !"sums", metadata !5, i32 33555117, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 685]
!135 = metadata !{i32 786688, metadata !129, metadata !"ient", metadata !5, i32 687, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ient] [line 687]
!136 = metadata !{i32 786688, metadata !129, metadata !"nent", metadata !5, i32 687, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 687]
!137 = metadata !{i32 786688, metadata !129, metadata !"ivec1", metadata !5, i32 688, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 688]
!138 = metadata !{i32 786688, metadata !129, metadata !"ivec2", metadata !5, i32 688, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 688]
!139 = metadata !{i32 786688, metadata !140, metadata !"dvec", metadata !5, i32 723, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 723]
!140 = metadata !{i32 786443, metadata !1, metadata !141, i32 722, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!141 = metadata !{i32 786443, metadata !1, metadata !129, i32 719, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!142 = metadata !{i32 786688, metadata !143, metadata !"dvec", metadata !5, i32 729, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 729]
!143 = metadata !{i32 786443, metadata !1, metadata !141, i32 728, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!144 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_randomMatrix", metadata !"InpMtx_randomMatrix", metadata !"", i32 773, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @InpMtx_randomMatrix, null, null, metadata !147, i32 784} ; [ DW_TAG_subprogram ] [line 773] [def] [scope 784] [InpMtx_randomMatrix]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{metadata !14, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179}
!148 = metadata !{i32 786689, metadata !144, metadata !"mtx", metadata !5, i32 16777990, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 774]
!149 = metadata !{i32 786689, metadata !144, metadata !"inputMode", metadata !5, i32 33555207, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inputMode] [line 775]
!150 = metadata !{i32 786689, metadata !144, metadata !"coordType", metadata !5, i32 50332424, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coordType] [line 776]
!151 = metadata !{i32 786689, metadata !144, metadata !"storageMode", metadata !5, i32 67109641, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storageMode] [line 777]
!152 = metadata !{i32 786689, metadata !144, metadata !"nrow", metadata !5, i32 83886858, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 778]
!153 = metadata !{i32 786689, metadata !144, metadata !"ncol", metadata !5, i32 100664075, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 779]
!154 = metadata !{i32 786689, metadata !144, metadata !"symflag", metadata !5, i32 117441292, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 780]
!155 = metadata !{i32 786689, metadata !144, metadata !"nonzerodiag", metadata !5, i32 134218509, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nonzerodiag] [line 781]
!156 = metadata !{i32 786689, metadata !144, metadata !"nitem", metadata !5, i32 150995726, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nitem] [line 782]
!157 = metadata !{i32 786689, metadata !144, metadata !"seed", metadata !5, i32 167772943, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 783]
!158 = metadata !{i32 786688, metadata !144, metadata !"dvec", metadata !5, i32 785, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 785]
!159 = metadata !{i32 786688, metadata !144, metadata !"drand", metadata !5, i32 786, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [drand] [line 786]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Drand]
!161 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!162 = metadata !{i32 786451, metadata !163, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !164, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!163 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../Drand/Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!164 = metadata !{metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!165 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!166 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!167 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!168 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!169 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!170 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!171 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !20} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!172 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !20} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!173 = metadata !{i32 786445, metadata !163, metadata !162, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!174 = metadata !{i32 786688, metadata !144, metadata !"col", metadata !5, i32 787, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 787]
!175 = metadata !{i32 786688, metadata !144, metadata !"ii", metadata !5, i32 787, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 787]
!176 = metadata !{i32 786688, metadata !144, metadata !"neqns", metadata !5, i32 787, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 787]
!177 = metadata !{i32 786688, metadata !144, metadata !"row", metadata !5, i32 787, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 787]
!178 = metadata !{i32 786688, metadata !144, metadata !"colids", metadata !5, i32 788, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 788]
!179 = metadata !{i32 786688, metadata !144, metadata !"rowids", metadata !5, i32 788, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 788]
!180 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_range", metadata !"InpMtx_range", metadata !"", i32 981, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, i32*, i32*, i32*, i32*)* @InpMtx_range, null, null, metadata !183, i32 987} ; [ DW_TAG_subprogram ] [line 981] [def] [scope 987] [InpMtx_range]
!181 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!182 = metadata !{metadata !14, metadata !8, metadata !30, metadata !30, metadata !30, metadata !30}
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!184 = metadata !{i32 786689, metadata !180, metadata !"mtx", metadata !5, i32 16778198, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 982]
!185 = metadata !{i32 786689, metadata !180, metadata !"pmincol", metadata !5, i32 33555415, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmincol] [line 983]
!186 = metadata !{i32 786689, metadata !180, metadata !"pmaxcol", metadata !5, i32 50332632, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxcol] [line 984]
!187 = metadata !{i32 786689, metadata !180, metadata !"pminrow", metadata !5, i32 67109849, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pminrow] [line 985]
!188 = metadata !{i32 786689, metadata !180, metadata !"pmaxrow", metadata !5, i32 83887066, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxrow] [line 986]
!189 = metadata !{i32 786688, metadata !180, metadata !"maxcol", metadata !5, i32 988, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxcol] [line 988]
!190 = metadata !{i32 786688, metadata !180, metadata !"maxrow", metadata !5, i32 988, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxrow] [line 988]
!191 = metadata !{i32 786688, metadata !180, metadata !"mincol", metadata !5, i32 988, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mincol] [line 988]
!192 = metadata !{i32 786688, metadata !180, metadata !"minrow", metadata !5, i32 988, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minrow] [line 988]
!193 = metadata !{i32 786688, metadata !180, metadata !"nent", metadata !5, i32 988, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 988]
!194 = metadata !{i32 786688, metadata !195, metadata !"rowind", metadata !5, i32 1005, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 1005]
!195 = metadata !{i32 786443, metadata !1, metadata !180, i32 1004, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!196 = metadata !{i32 786688, metadata !195, metadata !"colind", metadata !5, i32 1006, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 1006]
!197 = metadata !{i32 786688, metadata !195, metadata !"col", metadata !5, i32 1007, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 1007]
!198 = metadata !{i32 786688, metadata !195, metadata !"ii", metadata !5, i32 1007, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1007]
!199 = metadata !{i32 786688, metadata !195, metadata !"row", metadata !5, i32 1007, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 1007]
!200 = metadata !{i32 786688, metadata !201, metadata !"rowind", metadata !5, i32 1026, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 1026]
!201 = metadata !{i32 786443, metadata !1, metadata !180, i32 1025, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!202 = metadata !{i32 786688, metadata !201, metadata !"colind", metadata !5, i32 1027, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 1027]
!203 = metadata !{i32 786688, metadata !201, metadata !"col", metadata !5, i32 1028, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 1028]
!204 = metadata !{i32 786688, metadata !201, metadata !"ii", metadata !5, i32 1028, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1028]
!205 = metadata !{i32 786688, metadata !201, metadata !"row", metadata !5, i32 1028, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 1028]
!206 = metadata !{i32 786688, metadata !207, metadata !"chvind", metadata !5, i32 1047, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chvind] [line 1047]
!207 = metadata !{i32 786443, metadata !1, metadata !180, i32 1046, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!208 = metadata !{i32 786688, metadata !207, metadata !"offsets", metadata !5, i32 1048, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offsets] [line 1048]
!209 = metadata !{i32 786688, metadata !207, metadata !"col", metadata !5, i32 1049, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 1049]
!210 = metadata !{i32 786688, metadata !207, metadata !"ii", metadata !5, i32 1049, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1049]
!211 = metadata !{i32 786688, metadata !207, metadata !"off", metadata !5, i32 1049, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 1049]
!212 = metadata !{i32 786688, metadata !207, metadata !"row", metadata !5, i32 1049, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 1049]
!213 = metadata !{i32 20, i32 0, metadata !4, null}
!214 = metadata !{i32 29, i32 0, metadata !4, null}
!215 = metadata !{i32 30, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!217 = metadata !{metadata !"any pointer", metadata !218}
!218 = metadata !{metadata !"omnipotent char", metadata !219}
!219 = metadata !{metadata !"Simple C/C++ TBAA"}
!220 = metadata !{i32 32, i32 0, metadata !216, null}
!221 = metadata !{i32 34, i32 0, metadata !4, null}
!222 = metadata !{metadata !"int", metadata !218}
!223 = metadata !{i32 40, i32 0, metadata !4, null}
!224 = metadata !{i32 41, i32 0, metadata !4, null}
!225 = metadata !{i32 42, i32 0, metadata !4, null}
!226 = metadata !{i32 1}
!227 = metadata !{i32 43, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!229 = metadata !{i32 44, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !228, i32 43, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!231 = metadata !{i32 52, i32 0, metadata !56, null}
!232 = metadata !{i32 53, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !56, i32 52, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!234 = metadata !{i32 54, i32 0, metadata !233, null}
!235 = metadata !{i32 55, i32 0, metadata !55, null}
!236 = metadata !{i32 56, i32 0, metadata !55, null}
!237 = metadata !{i32 57, i32 0, metadata !55, null}
!238 = metadata !{i32 58, i32 0, metadata !58, null} ; [ DW_TAG_imported_module ]
!239 = metadata !{i32 59, i32 0, metadata !58, null}
!240 = metadata !{i32 60, i32 0, metadata !58, null}
!241 = metadata !{i32 37, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!243 = metadata !{i32 64, i32 0, metadata !4, null}
!244 = metadata !{i32 76, i32 0, metadata !59, null}
!245 = metadata !{i32 85, i32 0, metadata !59, null}
!246 = metadata !{i32 86, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !59, i32 85, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!248 = metadata !{i32 88, i32 0, metadata !247, null}
!249 = metadata !{i32 90, i32 0, metadata !59, null}
!250 = metadata !{i32 91, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !59, i32 90, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!252 = metadata !{i32 92, i32 0, metadata !251, null}
!253 = metadata !{i32 94, i32 0, metadata !59, null}
!254 = metadata !{i32 95, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !59, i32 94, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!256 = metadata !{i32 96, i32 0, metadata !255, null}
!257 = metadata !{i32 97, i32 0, metadata !59, null}
!258 = metadata !{i32 98, i32 0, metadata !59, null}
!259 = metadata !{i32 -1}
!260 = metadata !{i32 104, i32 0, metadata !59, null}
!261 = metadata !{i32 105, i32 0, metadata !59, null}
!262 = metadata !{i32 106, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !59, i32 106, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!264 = metadata !{i32 126, i32 0, metadata !59, null}
!265 = metadata !{i32 127, i32 0, metadata !59, null}
!266 = metadata !{i32 107, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !263, i32 106, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!268 = metadata !{i32 108, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !267, i32 107, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!270 = metadata !{i32 133, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !59, i32 127, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!272 = metadata !{i32 134, i32 0, metadata !271, null}
!273 = metadata !{i32 135, i32 0, metadata !271, null}
!274 = metadata !{i32 137, i32 0, metadata !59, null}
!275 = metadata !{i32 138, i32 0, metadata !59, null}
!276 = metadata !{i32 139, i32 0, metadata !59, null}
!277 = metadata !{i32 146, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !59, i32 146, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!279 = metadata !{i32 147, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !278, i32 146, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!281 = metadata !{i32 155, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !283, i32 154, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!283 = metadata !{i32 786443, metadata !1, metadata !284, i32 154, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!284 = metadata !{i32 786443, metadata !1, metadata !59, i32 152, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!285 = metadata !{i32 154, i32 0, metadata !283, null}
!286 = metadata !{i32 156, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !282, i32 155, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!288 = metadata !{i32 157, i32 0, metadata !287, null}
!289 = metadata !{i32 158, i32 0, metadata !287, null}
!290 = metadata !{i32 165, i32 0, metadata !287, null}
!291 = metadata !{i32 166, i32 0, metadata !287, null}
!292 = metadata !{i32 168, i32 0, metadata !287, null}
!293 = metadata !{i32 167, i32 0, metadata !287, null}
!294 = metadata !{i32 170, i32 0, metadata !284, null}
!295 = metadata !{i32 171, i32 0, metadata !284, null}
!296 = metadata !{i32 172, i32 0, metadata !284, null}
!297 = metadata !{i32 179, i32 0, metadata !284, null}
!298 = metadata !{i32 180, i32 0, metadata !59, null}
!299 = metadata !{i32 191, i32 0, metadata !59, null}
!300 = metadata !{i32 203, i32 0, metadata !74, null}
!301 = metadata !{i32 213, i32 0, metadata !74, null}
!302 = metadata !{i32 214, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !74, i32 213, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!304 = metadata !{i32 217, i32 0, metadata !303, null}
!305 = metadata !{i32 219, i32 0, metadata !74, null}
!306 = metadata !{i32 222, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !74, i32 221, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!308 = metadata !{i32 225, i32 0, metadata !307, null}
!309 = metadata !{i32 227, i32 0, metadata !74, null}
!310 = metadata !{i32 228, i32 0, metadata !74, null}
!311 = metadata !{i32 229, i32 0, metadata !74, null}
!312 = metadata !{i32 230, i32 0, metadata !74, null}
!313 = metadata !{i32 231, i32 0, metadata !74, null}
!314 = metadata !{i32 233, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !74, i32 232, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!316 = metadata !{i32 234, i32 0, metadata !315, null}
!317 = metadata !{i32 235, i32 0, metadata !74, null}
!318 = metadata !{i32 264, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !320, i32 264, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!320 = metadata !{i32 786443, metadata !1, metadata !74, i32 263, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!321 = metadata !{i32 250, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !323, i32 250, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!323 = metadata !{i32 786443, metadata !1, metadata !74, i32 249, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!324 = metadata !{i32 236, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !326, i32 236, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!326 = metadata !{i32 786443, metadata !1, metadata !74, i32 235, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!327 = metadata !{i32 237, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !325, i32 236, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!329 = metadata !{i32 238, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !328, i32 237, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!331 = metadata !{i32 239, i32 0, metadata !330, null}
!332 = metadata !{i32 240, i32 0, metadata !330, null}
!333 = metadata !{i32 241, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !330, i32 240, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!335 = metadata !{metadata !"double", metadata !218}
!336 = metadata !{i32 242, i32 0, metadata !334, null}
!337 = metadata !{i32 243, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !330, i32 242, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!339 = metadata !{i32 244, i32 0, metadata !338, null}
!340 = metadata !{i32 245, i32 0, metadata !338, null}
!341 = metadata !{i32 246, i32 0, metadata !330, null}
!342 = metadata !{i32 247, i32 0, metadata !330, null}
!343 = metadata !{i32 251, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !322, i32 250, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!345 = metadata !{i32 252, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !344, i32 251, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!347 = metadata !{i32 253, i32 0, metadata !346, null}
!348 = metadata !{i32 254, i32 0, metadata !346, null}
!349 = metadata !{i32 255, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !346, i32 254, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!351 = metadata !{i32 256, i32 0, metadata !350, null}
!352 = metadata !{i32 257, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !346, i32 256, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!354 = metadata !{i32 258, i32 0, metadata !353, null}
!355 = metadata !{i32 259, i32 0, metadata !353, null}
!356 = metadata !{i32 260, i32 0, metadata !346, null}
!357 = metadata !{i32 261, i32 0, metadata !346, null}
!358 = metadata !{i32 265, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !319, i32 264, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!360 = metadata !{i32 266, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !359, i32 265, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!362 = metadata !{i32 267, i32 0, metadata !361, null}
!363 = metadata !{i32 268, i32 0, metadata !361, null}
!364 = metadata !{i32 269, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !361, i32 268, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!366 = metadata !{i32 270, i32 0, metadata !365, null}
!367 = metadata !{i32 271, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !361, i32 270, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!369 = metadata !{i32 272, i32 0, metadata !368, null}
!370 = metadata !{i32 273, i32 0, metadata !368, null}
!371 = metadata !{i32 274, i32 0, metadata !361, null}
!372 = metadata !{i32 275, i32 0, metadata !361, null}
!373 = metadata !{i32 278, i32 0, metadata !74, null}
!374 = metadata !{i32 279, i32 0, metadata !74, null}
!375 = metadata !{i32 280, i32 0, metadata !74, null}
!376 = metadata !{i32 281, i32 0, metadata !74, null}
!377 = metadata !{i32 283, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !74, i32 282, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!379 = metadata !{i32 284, i32 0, metadata !378, null}
!380 = metadata !{i32 285, i32 0, metadata !74, null}
!381 = metadata !{i32 297, i32 0, metadata !83, null}
!382 = metadata !{i32 307, i32 0, metadata !83, null}
!383 = metadata !{i32 308, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !83, i32 307, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!385 = metadata !{i32 310, i32 0, metadata !384, null}
!386 = metadata !{i32 312, i32 0, metadata !83, null}
!387 = metadata !{i32 315, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !83, i32 314, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!389 = metadata !{i32 317, i32 0, metadata !388, null}
!390 = metadata !{i32 319, i32 0, metadata !83, null}
!391 = metadata !{i32 320, i32 0, metadata !83, null}
!392 = metadata !{i32 321, i32 0, metadata !83, null}
!393 = metadata !{i32 322, i32 0, metadata !83, null}
!394 = metadata !{i32 323, i32 0, metadata !83, null}
!395 = metadata !{i32 325, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !83, i32 324, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!397 = metadata !{i32 326, i32 0, metadata !396, null}
!398 = metadata !{i32 327, i32 0, metadata !83, null}
!399 = metadata !{i32 363, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !401, i32 363, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!401 = metadata !{i32 786443, metadata !1, metadata !83, i32 362, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!402 = metadata !{i32 349, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !404, i32 349, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!404 = metadata !{i32 786443, metadata !1, metadata !83, i32 348, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!405 = metadata !{i32 328, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !407, i32 328, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!407 = metadata !{i32 786443, metadata !1, metadata !83, i32 327, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!408 = metadata !{i32 332, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !406, i32 328, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!410 = metadata !{i32 333, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !409, i32 332, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!412 = metadata !{i32 334, i32 0, metadata !411, null}
!413 = metadata !{i32 339, i32 0, metadata !411, null}
!414 = metadata !{i32 340, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !411, i32 339, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!416 = metadata !{i32 341, i32 0, metadata !415, null}
!417 = metadata !{i32 342, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !411, i32 341, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!419 = metadata !{i32 343, i32 0, metadata !418, null}
!420 = metadata !{i32 344, i32 0, metadata !418, null}
!421 = metadata !{i32 345, i32 0, metadata !411, null}
!422 = metadata !{i32 346, i32 0, metadata !411, null}
!423 = metadata !{i32 350, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !403, i32 349, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!425 = metadata !{i32 351, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !424, i32 350, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!427 = metadata !{i32 352, i32 0, metadata !426, null}
!428 = metadata !{i32 353, i32 0, metadata !426, null}
!429 = metadata !{i32 354, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !426, i32 353, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!431 = metadata !{i32 355, i32 0, metadata !430, null}
!432 = metadata !{i32 356, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !426, i32 355, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!434 = metadata !{i32 357, i32 0, metadata !433, null}
!435 = metadata !{i32 358, i32 0, metadata !433, null}
!436 = metadata !{i32 359, i32 0, metadata !426, null}
!437 = metadata !{i32 360, i32 0, metadata !426, null}
!438 = metadata !{i32 364, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !400, i32 363, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!440 = metadata !{i32 365, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !439, i32 364, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!442 = metadata !{i32 366, i32 0, metadata !441, null}
!443 = metadata !{i32 367, i32 0, metadata !441, null}
!444 = metadata !{i32 368, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !441, i32 367, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!446 = metadata !{i32 369, i32 0, metadata !445, null}
!447 = metadata !{i32 370, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !441, i32 369, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!449 = metadata !{i32 371, i32 0, metadata !448, null}
!450 = metadata !{i32 372, i32 0, metadata !448, null}
!451 = metadata !{i32 373, i32 0, metadata !441, null}
!452 = metadata !{i32 374, i32 0, metadata !441, null}
!453 = metadata !{i32 377, i32 0, metadata !83, null}
!454 = metadata !{i32 378, i32 0, metadata !83, null}
!455 = metadata !{i32 379, i32 0, metadata !83, null}
!456 = metadata !{i32 380, i32 0, metadata !83, null}
!457 = metadata !{i32 381, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !83, i32 380, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!459 = metadata !{i32 382, i32 0, metadata !458, null}
!460 = metadata !{i32 383, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !83, i32 382, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!462 = metadata !{i32 384, i32 0, metadata !461, null}
!463 = metadata !{i32 385, i32 0, metadata !83, null}
!464 = metadata !{i32 397, i32 0, metadata !92, null}
!465 = metadata !{i32 407, i32 0, metadata !92, null}
!466 = metadata !{i32 408, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !92, i32 407, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!468 = metadata !{i32 410, i32 0, metadata !467, null}
!469 = metadata !{i32 412, i32 0, metadata !92, null}
!470 = metadata !{i32 415, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !92, i32 414, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!472 = metadata !{i32 417, i32 0, metadata !471, null}
!473 = metadata !{i32 419, i32 0, metadata !92, null}
!474 = metadata !{i32 420, i32 0, metadata !92, null}
!475 = metadata !{i32 421, i32 0, metadata !92, null}
!476 = metadata !{i32 422, i32 0, metadata !92, null}
!477 = metadata !{i32 423, i32 0, metadata !92, null}
!478 = metadata !{i32 425, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !1, metadata !92, i32 424, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!480 = metadata !{i32 426, i32 0, metadata !479, null}
!481 = metadata !{i32 427, i32 0, metadata !92, null}
!482 = metadata !{i32 456, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !484, i32 456, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!484 = metadata !{i32 786443, metadata !1, metadata !92, i32 455, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!485 = metadata !{i32 442, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !487, i32 442, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!487 = metadata !{i32 786443, metadata !1, metadata !92, i32 441, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!488 = metadata !{i32 428, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !490, i32 428, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!490 = metadata !{i32 786443, metadata !1, metadata !92, i32 427, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!491 = metadata !{i32 429, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !489, i32 428, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!493 = metadata !{i32 430, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !492, i32 429, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!495 = metadata !{i32 431, i32 0, metadata !494, null}
!496 = metadata !{i32 432, i32 0, metadata !494, null}
!497 = metadata !{i32 433, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !494, i32 432, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!499 = metadata !{i32 434, i32 0, metadata !498, null}
!500 = metadata !{i32 435, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !494, i32 434, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!502 = metadata !{i32 436, i32 0, metadata !501, null}
!503 = metadata !{i32 437, i32 0, metadata !501, null}
!504 = metadata !{i32 438, i32 0, metadata !494, null}
!505 = metadata !{i32 439, i32 0, metadata !494, null}
!506 = metadata !{i32 443, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !486, i32 442, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!508 = metadata !{i32 444, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !507, i32 443, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!510 = metadata !{i32 445, i32 0, metadata !509, null}
!511 = metadata !{i32 446, i32 0, metadata !509, null}
!512 = metadata !{i32 447, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !509, i32 446, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!514 = metadata !{i32 448, i32 0, metadata !513, null}
!515 = metadata !{i32 449, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !509, i32 448, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!517 = metadata !{i32 450, i32 0, metadata !516, null}
!518 = metadata !{i32 451, i32 0, metadata !516, null}
!519 = metadata !{i32 452, i32 0, metadata !509, null}
!520 = metadata !{i32 453, i32 0, metadata !509, null}
!521 = metadata !{i32 457, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !483, i32 456, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!523 = metadata !{i32 458, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !522, i32 457, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!525 = metadata !{i32 459, i32 0, metadata !524, null}
!526 = metadata !{i32 460, i32 0, metadata !524, null}
!527 = metadata !{i32 461, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !524, i32 460, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!529 = metadata !{i32 462, i32 0, metadata !528, null}
!530 = metadata !{i32 463, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !524, i32 462, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!532 = metadata !{i32 464, i32 0, metadata !531, null}
!533 = metadata !{i32 465, i32 0, metadata !531, null}
!534 = metadata !{i32 466, i32 0, metadata !524, null}
!535 = metadata !{i32 467, i32 0, metadata !524, null}
!536 = metadata !{i32 470, i32 0, metadata !92, null}
!537 = metadata !{i32 471, i32 0, metadata !92, null}
!538 = metadata !{i32 472, i32 0, metadata !92, null}
!539 = metadata !{i32 473, i32 0, metadata !92, null}
!540 = metadata !{i32 475, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !92, i32 474, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!542 = metadata !{i32 476, i32 0, metadata !541, null}
!543 = metadata !{i32 478, i32 0, metadata !92, null}
!544 = metadata !{i32 490, i32 0, metadata !101, null}
!545 = metadata !{i32 499, i32 0, metadata !101, null}
!546 = metadata !{i32 500, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !101, i32 499, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!548 = metadata !{i32 502, i32 0, metadata !547, null}
!549 = metadata !{i32 504, i32 0, metadata !101, null}
!550 = metadata !{i32 507, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !101, i32 506, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!552 = metadata !{i32 509, i32 0, metadata !551, null}
!553 = metadata !{i32 511, i32 0, metadata !101, null}
!554 = metadata !{i32 512, i32 0, metadata !101, null}
!555 = metadata !{i32 513, i32 0, metadata !101, null}
!556 = metadata !{i32 514, i32 0, metadata !101, null}
!557 = metadata !{i32 529, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !559, i32 529, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!559 = metadata !{i32 786443, metadata !1, metadata !101, i32 528, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!560 = metadata !{i32 522, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !562, i32 522, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!562 = metadata !{i32 786443, metadata !1, metadata !101, i32 521, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!563 = metadata !{i32 515, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !565, i32 515, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!565 = metadata !{i32 786443, metadata !1, metadata !101, i32 514, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!566 = metadata !{i32 516, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !564, i32 515, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!568 = metadata !{i32 517, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !567, i32 516, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!570 = metadata !{i32 518, i32 0, metadata !569, null}
!571 = metadata !{i32 519, i32 0, metadata !569, null}
!572 = metadata !{i32 523, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !561, i32 522, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!574 = metadata !{i32 524, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !573, i32 523, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!576 = metadata !{i32 525, i32 0, metadata !575, null}
!577 = metadata !{i32 526, i32 0, metadata !575, null}
!578 = metadata !{i32 530, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !558, i32 529, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!580 = metadata !{i32 531, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !579, i32 530, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!582 = metadata !{i32 532, i32 0, metadata !581, null}
!583 = metadata !{i32 535, i32 0, metadata !101, null}
!584 = metadata !{i32 547, i32 0, metadata !110, null}
!585 = metadata !{i32 556, i32 0, metadata !110, null}
!586 = metadata !{i32 557, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !110, i32 556, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!588 = metadata !{i32 559, i32 0, metadata !587, null}
!589 = metadata !{i32 561, i32 0, metadata !110, null}
!590 = metadata !{i32 564, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !110, i32 563, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!592 = metadata !{i32 567, i32 0, metadata !591, null}
!593 = metadata !{i32 569, i32 0, metadata !110, null}
!594 = metadata !{i32 570, i32 0, metadata !110, null}
!595 = metadata !{i32 571, i32 0, metadata !110, null}
!596 = metadata !{i32 572, i32 0, metadata !110, null}
!597 = metadata !{i32 587, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !1, metadata !599, i32 587, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!599 = metadata !{i32 786443, metadata !1, metadata !110, i32 586, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!600 = metadata !{i32 580, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !1, metadata !602, i32 580, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!602 = metadata !{i32 786443, metadata !1, metadata !110, i32 579, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!603 = metadata !{i32 573, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !605, i32 573, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!605 = metadata !{i32 786443, metadata !1, metadata !110, i32 572, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!606 = metadata !{i32 574, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !604, i32 573, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!608 = metadata !{i32 575, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !607, i32 574, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!610 = metadata !{i32 576, i32 0, metadata !609, null}
!611 = metadata !{i32 577, i32 0, metadata !609, null}
!612 = metadata !{i32 581, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !601, i32 580, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!614 = metadata !{i32 582, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !1, metadata !613, i32 581, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!616 = metadata !{i32 583, i32 0, metadata !615, null}
!617 = metadata !{i32 584, i32 0, metadata !615, null}
!618 = metadata !{i32 588, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !598, i32 587, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!620 = metadata !{i32 589, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !619, i32 588, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!622 = metadata !{i32 590, i32 0, metadata !621, null}
!623 = metadata !{i32 593, i32 0, metadata !110, null}
!624 = metadata !{i32 595, i32 0, metadata !110, null}
!625 = metadata !{i32 608, i32 0, metadata !119, null}
!626 = metadata !{i32 618, i32 0, metadata !119, null}
!627 = metadata !{i32 619, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !119, i32 618, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!629 = metadata !{i32 621, i32 0, metadata !628, null}
!630 = metadata !{i32 623, i32 0, metadata !119, null}
!631 = metadata !{i32 626, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !119, i32 625, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!633 = metadata !{i32 629, i32 0, metadata !632, null}
!634 = metadata !{i32 631, i32 0, metadata !119, null}
!635 = metadata !{i32 632, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !119, i32 631, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!637 = metadata !{i32 634, i32 0, metadata !636, null}
!638 = metadata !{i32 636, i32 0, metadata !119, null}
!639 = metadata !{i32 637, i32 0, metadata !119, null}
!640 = metadata !{i32 638, i32 0, metadata !119, null}
!641 = metadata !{i32 639, i32 0, metadata !119, null}
!642 = metadata !{i32 640, i32 0, metadata !119, null}
!643 = metadata !{i32 657, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !645, i32 657, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!645 = metadata !{i32 786443, metadata !1, metadata !119, i32 656, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!646 = metadata !{i32 649, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !648, i32 649, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!648 = metadata !{i32 786443, metadata !1, metadata !119, i32 648, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!649 = metadata !{i32 641, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !651, i32 641, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!651 = metadata !{i32 786443, metadata !1, metadata !119, i32 640, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!652 = metadata !{i32 642, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !650, i32 641, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!654 = metadata !{i32 643, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !653, i32 642, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!656 = metadata !{i32 644, i32 0, metadata !655, null}
!657 = metadata !{i32 645, i32 0, metadata !655, null}
!658 = metadata !{i32 646, i32 0, metadata !655, null}
!659 = metadata !{i32 650, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !647, i32 649, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!661 = metadata !{i32 651, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !660, i32 650, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!663 = metadata !{i32 652, i32 0, metadata !662, null}
!664 = metadata !{i32 653, i32 0, metadata !662, null}
!665 = metadata !{i32 654, i32 0, metadata !662, null}
!666 = metadata !{i32 658, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !644, i32 657, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!668 = metadata !{i32 659, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !667, i32 658, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!670 = metadata !{i32 660, i32 0, metadata !669, null}
!671 = metadata !{i32 661, i32 0, metadata !669, null}
!672 = metadata !{i32 664, i32 0, metadata !119, null}
!673 = metadata !{i32 666, i32 0, metadata !119, null}
!674 = metadata !{i32 684, i32 0, metadata !129, null}
!675 = metadata !{i32 685, i32 0, metadata !129, null}
!676 = metadata !{i32 694, i32 0, metadata !129, null}
!677 = metadata !{i32 695, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !129, i32 694, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!679 = metadata !{i32 697, i32 0, metadata !678, null}
!680 = metadata !{i32 699, i32 0, metadata !129, null}
!681 = metadata !{i32 705, i32 0, metadata !682, null}
!682 = metadata !{i32 786443, metadata !1, metadata !129, i32 699, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!683 = metadata !{i32 707, i32 0, metadata !682, null}
!684 = metadata !{i32 709, i32 0, metadata !129, null}
!685 = metadata !{i32 710, i32 0, metadata !129, null}
!686 = metadata !{i32 713, i32 0, metadata !129, null}
!687 = metadata !{i32 714, i32 0, metadata !129, null}
!688 = metadata !{i32 715, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !129, i32 715, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!690 = metadata !{i32 716, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !1, metadata !689, i32 715, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!692 = metadata !{i32 717, i32 0, metadata !691, null}
!693 = metadata !{i32 719, i32 0, metadata !129, null}
!694 = metadata !{i32 723, i32 0, metadata !140, null}
!695 = metadata !{i32 724, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !140, i32 724, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!697 = metadata !{i32 725, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !696, i32 724, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!699 = metadata !{i32 729, i32 0, metadata !143, null}
!700 = metadata !{i32 730, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !143, i32 730, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!702 = metadata !{i32 731, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !701, i32 730, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!704 = metadata !{i32 735, i32 0, metadata !129, null}
!705 = metadata !{i32 774, i32 0, metadata !144, null}
!706 = metadata !{i32 775, i32 0, metadata !144, null}
!707 = metadata !{i32 776, i32 0, metadata !144, null}
!708 = metadata !{i32 777, i32 0, metadata !144, null}
!709 = metadata !{i32 778, i32 0, metadata !144, null}
!710 = metadata !{i32 779, i32 0, metadata !144, null}
!711 = metadata !{i32 780, i32 0, metadata !144, null}
!712 = metadata !{i32 781, i32 0, metadata !144, null}
!713 = metadata !{i32 782, i32 0, metadata !144, null}
!714 = metadata !{i32 783, i32 0, metadata !144, null}
!715 = metadata !{i32 794, i32 0, metadata !144, null}
!716 = metadata !{i32 795, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !144, i32 794, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!718 = metadata !{i32 797, i32 0, metadata !717, null}
!719 = metadata !{i32 799, i32 0, metadata !144, null}
!720 = metadata !{i32 805, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !144, i32 799, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!722 = metadata !{i32 807, i32 0, metadata !721, null}
!723 = metadata !{i32 810, i32 0, metadata !144, null}
!724 = metadata !{i32 816, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !144, i32 810, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!726 = metadata !{i32 818, i32 0, metadata !725, null}
!727 = metadata !{i32 821, i32 0, metadata !144, null}
!728 = metadata !{i32 827, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !144, i32 821, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!730 = metadata !{i32 829, i32 0, metadata !729, null}
!731 = metadata !{i32 832, i32 0, metadata !144, null}
!732 = metadata !{i32 833, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !144, i32 832, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!734 = metadata !{i32 835, i32 0, metadata !733, null}
!735 = metadata !{i32 837, i32 0, metadata !144, null}
!736 = metadata !{i32 843, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !144, i32 837, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!738 = metadata !{i32 845, i32 0, metadata !737, null}
!739 = metadata !{i32 848, i32 0, metadata !144, null}
!740 = metadata !{i32 849, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !144, i32 848, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!742 = metadata !{i32 851, i32 0, metadata !741, null}
!743 = metadata !{i32 853, i32 0, metadata !144, null}
!744 = metadata !{i32 855, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !144, i32 854, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!746 = metadata !{i32 858, i32 0, metadata !745, null}
!747 = metadata !{i32 860, i32 0, metadata !144, null}
!748 = metadata !{i32 861, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !144, i32 860, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!750 = metadata !{i32 863, i32 0, metadata !749, null}
!751 = metadata !{i32 866, i32 0, metadata !144, null}
!752 = metadata !{i32 867, i32 0, metadata !144, null}
!753 = metadata !{i32 875, i32 0, metadata !144, null}
!754 = metadata !{i32 881, i32 0, metadata !144, null}
!755 = metadata !{i32 882, i32 0, metadata !144, null}
!756 = metadata !{i32 883, i32 0, metadata !144, null}
!757 = metadata !{i32 884, i32 0, metadata !144, null}
!758 = metadata !{i32 885, i32 0, metadata !144, null}
!759 = metadata !{i32 886, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !144, i32 885, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!761 = metadata !{i32 887, i32 0, metadata !760, null}
!762 = metadata !{i32 888, i32 0, metadata !760, null}
!763 = metadata !{i32 889, i32 0, metadata !760, null}
!764 = metadata !{i32 890, i32 0, metadata !760, null}
!765 = metadata !{i32 891, i32 0, metadata !760, null}
!766 = metadata !{i32 892, i32 0, metadata !760, null}
!767 = metadata !{i32 893, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !144, i32 892, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!769 = metadata !{i32 894, i32 0, metadata !768, null}
!770 = metadata !{i32 895, i32 0, metadata !768, null}
!771 = metadata !{i32 896, i32 0, metadata !768, null}
!772 = metadata !{i32 899, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !774, i32 899, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!774 = metadata !{i32 786443, metadata !1, metadata !144, i32 898, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!775 = metadata !{i32 898, i32 0, metadata !144, null}
!776 = metadata !{i32 900, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !773, i32 899, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!778 = metadata !{i32 901, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !777, i32 900, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!780 = metadata !{i32 902, i32 0, metadata !779, null}
!781 = metadata !{i32 903, i32 0, metadata !779, null}
!782 = metadata !{i32 906, i32 0, metadata !144, null}
!783 = metadata !{i32 907, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !144, i32 906, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!785 = metadata !{i32 908, i32 0, metadata !784, null}
!786 = metadata !{i32 909, i32 0, metadata !784, null}
!787 = metadata !{i32 929, i32 0, metadata !144, null}
!788 = metadata !{i32 911, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !144, i32 910, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!790 = metadata !{i32 912, i32 0, metadata !789, null}
!791 = metadata !{i32 913, i32 0, metadata !789, null}
!792 = metadata !{i32 914, i32 0, metadata !789, null}
!793 = metadata !{i32 915, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !795, i32 915, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!795 = metadata !{i32 786443, metadata !1, metadata !789, i32 914, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!796 = metadata !{i32 916, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !794, i32 915, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!798 = metadata !{i32 917, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !797, i32 916, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!800 = metadata !{i32 918, i32 0, metadata !799, null}
!801 = metadata !{i32 931, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !144, i32 929, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!803 = metadata !{i32 932, i32 0, metadata !802, null}
!804 = metadata !{i32 934, i32 0, metadata !802, null}
!805 = metadata !{i32 935, i32 0, metadata !802, null}
!806 = metadata !{i32 937, i32 0, metadata !802, null}
!807 = metadata !{i32 938, i32 0, metadata !802, null}
!808 = metadata !{i32 945, i32 0, metadata !144, null}
!809 = metadata !{i32 946, i32 0, metadata !144, null}
!810 = metadata !{i32 952, i32 0, metadata !144, null}
!811 = metadata !{i32 953, i32 0, metadata !144, null}
!812 = metadata !{i32 954, i32 0, metadata !144, null}
!813 = metadata !{i32 955, i32 0, metadata !144, null}
!814 = metadata !{i32 956, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !144, i32 955, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!816 = metadata !{i32 957, i32 0, metadata !815, null}
!817 = metadata !{i32 958, i32 0, metadata !144, null}
!818 = metadata !{i32 982, i32 0, metadata !180, null}
!819 = metadata !{i32 983, i32 0, metadata !180, null}
!820 = metadata !{i32 984, i32 0, metadata !180, null}
!821 = metadata !{i32 985, i32 0, metadata !180, null}
!822 = metadata !{i32 986, i32 0, metadata !180, null}
!823 = metadata !{i32 994, i32 0, metadata !180, null}
!824 = metadata !{i32 995, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !180, i32 994, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!826 = metadata !{i32 997, i32 0, metadata !825, null}
!827 = metadata !{i32 999, i32 0, metadata !180, null}
!828 = metadata !{i32 1000, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !180, i32 999, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!830 = metadata !{i32 1002, i32 0, metadata !829, null}
!831 = metadata !{i32 1004, i32 0, metadata !180, null}
!832 = metadata !{i32 1005, i32 0, metadata !195, null}
!833 = metadata !{i32 1006, i32 0, metadata !195, null}
!834 = metadata !{i32 1009, i32 0, metadata !195, null}
!835 = metadata !{i32 1010, i32 0, metadata !195, null}
!836 = metadata !{i32 1011, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !195, i32 1011, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!838 = metadata !{i32 1012, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !837, i32 1011, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!840 = metadata !{i32 1013, i32 0, metadata !839, null}
!841 = metadata !{i32 1014, i32 0, metadata !839, null}
!842 = metadata !{i32 1016, i32 0, metadata !839, null}
!843 = metadata !{i32 1017, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !839, i32 1016, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!845 = metadata !{i32 1019, i32 0, metadata !839, null}
!846 = metadata !{i32 1021, i32 0, metadata !839, null}
!847 = metadata !{i32 1022, i32 0, metadata !848, null}
!848 = metadata !{i32 786443, metadata !1, metadata !839, i32 1021, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!849 = metadata !{i32 1026, i32 0, metadata !201, null}
!850 = metadata !{i32 1027, i32 0, metadata !201, null}
!851 = metadata !{i32 1030, i32 0, metadata !201, null}
!852 = metadata !{i32 1031, i32 0, metadata !201, null}
!853 = metadata !{i32 1032, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !201, i32 1032, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!855 = metadata !{i32 1033, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !854, i32 1032, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!857 = metadata !{i32 1034, i32 0, metadata !856, null}
!858 = metadata !{i32 1035, i32 0, metadata !856, null}
!859 = metadata !{i32 1037, i32 0, metadata !856, null}
!860 = metadata !{i32 1038, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !856, i32 1037, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!862 = metadata !{i32 1040, i32 0, metadata !856, null}
!863 = metadata !{i32 1042, i32 0, metadata !856, null}
!864 = metadata !{i32 1043, i32 0, metadata !865, null}
!865 = metadata !{i32 786443, metadata !1, metadata !856, i32 1042, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!866 = metadata !{i32 1047, i32 0, metadata !207, null}
!867 = metadata !{i32 1048, i32 0, metadata !207, null}
!868 = metadata !{i32 1051, i32 0, metadata !207, null}
!869 = metadata !{i32 1052, i32 0, metadata !870, null}
!870 = metadata !{i32 786443, metadata !1, metadata !207, i32 1051, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!871 = metadata !{i32 1054, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !207, i32 1053, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!873 = metadata !{i32 1058, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !207, i32 1058, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!875 = metadata !{i32 1059, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !874, i32 1058, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!877 = metadata !{i32 1060, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !876, i32 1059, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!879 = metadata !{i32 1062, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !876, i32 1061, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!881 = metadata !{i32 1064, i32 0, metadata !876, null}
!882 = metadata !{i32 1066, i32 0, metadata !876, null}
!883 = metadata !{i32 1067, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !876, i32 1066, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!885 = metadata !{i32 1069, i32 0, metadata !876, null}
!886 = metadata !{i32 1071, i32 0, metadata !876, null}
!887 = metadata !{i32 1072, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !876, i32 1071, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!889 = metadata !{i32 1076, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !180, i32 1075, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!891 = metadata !{i32 1078, i32 0, metadata !890, null}
!892 = metadata !{i32 1080, i32 0, metadata !180, null}
!893 = metadata !{i32 1080, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !180, i32 1080, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!895 = metadata !{i32 1081, i32 0, metadata !180, null}
!896 = metadata !{i32 1081, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !180, i32 1081, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!898 = metadata !{i32 1082, i32 0, metadata !180, null}
!899 = metadata !{i32 1082, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !180, i32 1082, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!901 = metadata !{i32 1083, i32 0, metadata !180, null}
!902 = metadata !{i32 1083, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !180, i32 1083, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c]
!904 = metadata !{i32 1085, i32 0, metadata !180, null}

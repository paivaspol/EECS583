; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in BKL_setRandomColors(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in BKL_setColorsWeights(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"\0A fatal error in BKL_setColorWeights(%p)\0A region %d has color %d\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in BKL_segColor(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in BKL_flipDomain(%p,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in BKL_flipDomain(%p,%d)\0A colors[%d] = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BKL_greyCodeDomain(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BKL_setInitPart(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [69 x i8] c"\0A fatal error in BKL_setInitPart(%p,%d,%d,%p)\0A list[] size exceeded\0A\00", align 1
@.str9 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BKL_domAdjToSep(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @BKL_setRandomColors(%struct._BKL* %bkl, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !78), !dbg !179
  call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !79), !dbg !180
  %0 = bitcast %struct._Drand* %drand to i8*, !dbg !181
  call void @llvm.lifetime.start(i64 72, i8* %0) #2, !dbg !181
  call void @llvm.dbg.declare(metadata !{%struct._Drand* %drand}, metadata !84), !dbg !181
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !182
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !182

lor.lhs.false:                                    ; preds = %entry
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !182
  %1 = load %struct._BPG** %bpg, align 8, !dbg !182, !tbaa !183
  %cmp1 = icmp eq %struct._BPG* %1, null, !dbg !182
  br i1 %cmp1, label %if.then, label %if.end, !dbg !182

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !186, !tbaa !183
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, i32 %seed) #6, !dbg !186
  call void @exit(i32 -1) #7, !dbg !188
  unreachable, !dbg !188

if.end:                                           ; preds = %lor.lhs.false
  %ndom2 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !189
  %3 = load i32* %ndom2, align 4, !dbg !189, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !81), !dbg !189
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !191
  %4 = load i32** %colors4, align 8, !dbg !191, !tbaa !183
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !83), !dbg !191
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !192
  call void @Drand_init(%struct._Drand* %drand) #6, !dbg !193
  call void @Drand_setUniform(%struct._Drand* %drand, double 0.000000e+00, double 1.000000e+00) #6, !dbg !194
  %cmp5 = icmp sgt i32 %seed, 0, !dbg !195
  br i1 %cmp5, label %if.then6, label %for.cond.preheader, !dbg !195

if.then6:                                         ; preds = %if.end
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6, !dbg !196
  br label %for.cond.preheader, !dbg !198

for.cond.preheader:                               ; preds = %if.then6, %if.end
  %cmp821 = icmp sgt i32 %3, 0, !dbg !199
  br i1 %cmp821, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call9 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !201
  %cmp10 = fcmp olt double %call9, 5.000000e-01, !dbg !201
  %cond = select i1 %cmp10, i32 1, i32 2, !dbg !201
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !201
  store i32 %cond, i32* %arrayidx, align 4, !dbg !201, !tbaa !190
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !199
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !199
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !199
  br i1 %exitcond, label %for.end, label %for.body, !dbg !199

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !203
  call void @llvm.lifetime.end(i64 72, i8* %0) #2, !dbg !204
  ret void, !dbg !204
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #5

; Function Attrs: optsize
declare void @Drand_init(%struct._Drand*) #5

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #5

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #5

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #5

; Function Attrs: nounwind optsize uwtable
define void @BKL_setColorWeights(%struct._BKL* %bkl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !103), !dbg !205
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !206
  br i1 %cmp, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !207, !tbaa !183
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._BKL* null) #6, !dbg !207
  tail call void @exit(i32 -1) #7, !dbg !209
  unreachable, !dbg !209

if.end:                                           ; preds = %entry
  %colors1 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !210
  %1 = load i32** %colors1, align 8, !dbg !210, !tbaa !183
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !106), !dbg !210
  %arrayidx = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !211
  store i32 0, i32* %arrayidx, align 4, !dbg !211, !tbaa !190
  %arrayidx3 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !211
  store i32 0, i32* %arrayidx3, align 4, !dbg !211, !tbaa !190
  %arrayidx5 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0, !dbg !211
  store i32 0, i32* %arrayidx5, align 4, !dbg !211, !tbaa !190
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !105), !dbg !212
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !212
  %2 = load i32* %ndom, align 4, !dbg !212, !tbaa !190
  %cmp680 = icmp sgt i32 %2, 0, !dbg !212
  br i1 %cmp680, label %for.body.lr.ph, label %for.cond19.preheader, !dbg !212

for.body.lr.ph:                                   ; preds = %if.end
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !214
  br label %for.body, !dbg !212

for.cond19.preheader:                             ; preds = %if.end12, %if.end
  %.lcssa = phi i32 [ %2, %if.end ], [ %11, %if.end12 ]
  %nreg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3, !dbg !216
  %3 = load i32* %nreg, align 4, !dbg !216, !tbaa !190
  %cmp2075 = icmp slt i32 %.lcssa, %3, !dbg !216
  br i1 %cmp2075, label %for.body21.lr.ph, label %for.end40, !dbg !216

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %regwghts32 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !218
  %4 = sext i32 %.lcssa to i64
  br label %for.body21, !dbg !216

for.body:                                         ; preds = %for.body.lr.ph, %if.end12
  %indvars.iv88 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next89, %if.end12 ]
  %ireg.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12 ]
  %arrayidx7 = getelementptr inbounds i32* %1, i64 %indvars.iv88, !dbg !220
  %5 = load i32* %arrayidx7, align 4, !dbg !220, !tbaa !190
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !104), !dbg !220
  %.off = add i32 %5, -1, !dbg !220
  %6 = icmp ugt i32 %.off, 1, !dbg !220
  br i1 %6, label %if.then10, label %if.end12, !dbg !220

if.then10:                                        ; preds = %for.body
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !183
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), %struct._BKL* %bkl, i32 %ireg.081, i32 %5) #6, !dbg !221
  tail call void @exit(i32 -1) #7, !dbg !223
  unreachable, !dbg !223

if.end12:                                         ; preds = %for.body
  %8 = load i32** %regwghts, align 8, !dbg !214, !tbaa !183
  %arrayidx14 = getelementptr inbounds i32* %8, i64 %indvars.iv88, !dbg !214
  %9 = load i32* %arrayidx14, align 4, !dbg !214, !tbaa !190
  %idxprom15 = sext i32 %5 to i64, !dbg !214
  %arrayidx17 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom15, !dbg !214
  %10 = load i32* %arrayidx17, align 4, !dbg !214, !tbaa !190
  %add = add nsw i32 %10, %9, !dbg !214
  store i32 %add, i32* %arrayidx17, align 4, !dbg !214, !tbaa !190
  %indvars.iv.next89 = add i64 %indvars.iv88, 1, !dbg !212
  %inc = add nsw i32 %ireg.081, 1, !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !105), !dbg !212
  %11 = load i32* %ndom, align 4, !dbg !212, !tbaa !190
  %12 = trunc i64 %indvars.iv.next89 to i32, !dbg !212
  %cmp6 = icmp slt i32 %12, %11, !dbg !212
  br i1 %cmp6, label %for.body, label %for.cond19.preheader, !dbg !212

for.body21:                                       ; preds = %for.body21.lr.ph, %if.end28
  %indvars.iv = phi i64 [ %4, %for.body21.lr.ph ], [ %indvars.iv.next, %if.end28 ]
  %ireg.176 = phi i32 [ %.lcssa, %for.body21.lr.ph ], [ %inc39, %if.end28 ]
  %13 = trunc i64 %indvars.iv to i32, !dbg !224
  %call22 = tail call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %13) #8, !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !104), !dbg !224
  %14 = icmp ugt i32 %call22, 2, !dbg !224
  br i1 %14, label %if.then26, label %if.end28, !dbg !224

if.then26:                                        ; preds = %for.body21
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !225, !tbaa !183
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), %struct._BKL* %bkl, i32 %ireg.176, i32 %call22) #6, !dbg !225
  tail call void @exit(i32 -1) #7, !dbg !227
  unreachable, !dbg !227

if.end28:                                         ; preds = %for.body21
  %arrayidx30 = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !228
  store i32 %call22, i32* %arrayidx30, align 4, !dbg !228, !tbaa !190
  %16 = load i32** %regwghts32, align 8, !dbg !218, !tbaa !183
  %arrayidx33 = getelementptr inbounds i32* %16, i64 %indvars.iv, !dbg !218
  %17 = load i32* %arrayidx33, align 4, !dbg !218, !tbaa !190
  %idxprom34 = sext i32 %call22 to i64, !dbg !218
  %arrayidx36 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom34, !dbg !218
  %18 = load i32* %arrayidx36, align 4, !dbg !218, !tbaa !190
  %add37 = add nsw i32 %18, %17, !dbg !218
  store i32 %add37, i32* %arrayidx36, align 4, !dbg !218, !tbaa !190
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !216
  %inc39 = add nsw i32 %ireg.176, 1, !dbg !216
  tail call void @llvm.dbg.value(metadata !{i32 %inc39}, i64 0, metadata !105), !dbg !216
  %19 = load i32* %nreg, align 4, !dbg !216, !tbaa !190
  %20 = trunc i64 %indvars.iv.next to i32, !dbg !216
  %cmp20 = icmp slt i32 %20, %19, !dbg !216
  br i1 %cmp20, label %for.body21, label %for.end40, !dbg !216

for.end40:                                        ; preds = %if.end28, %for.cond19.preheader
  ret void, !dbg !229
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @BKL_segColor(%struct._BKL* %bkl, i32 %iseg) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !111), !dbg !230
  call void @llvm.dbg.value(metadata !{i32 %iseg}, i64 0, metadata !112), !dbg !231
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !115), !dbg !232
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !116), !dbg !233
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !234
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !234

lor.lhs.false:                                    ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !234
  %0 = load i32* %ndom, align 4, !dbg !234, !tbaa !190
  %cmp1 = icmp sgt i32 %0, %iseg, !dbg !234
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !234

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nreg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3, !dbg !234
  %1 = load i32* %nreg, align 4, !dbg !234, !tbaa !190
  %cmp3 = icmp sgt i32 %1, %iseg, !dbg !234
  br i1 %cmp3, label %if.end, label %if.then, !dbg !234

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !235, !tbaa !183
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._BKL* %bkl, i32 %iseg) #6, !dbg !235
  call void @exit(i32 -1) #7, !dbg !237
  unreachable, !dbg !237

if.end:                                           ; preds = %lor.lhs.false2
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !238
  %3 = load i32** %colors4, align 8, !dbg !238, !tbaa !183
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !117), !dbg !238
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !239
  %4 = load %struct._BPG** %bpg, align 8, !dbg !239, !tbaa !183
  %graph = getelementptr inbounds %struct._BPG* %4, i64 0, i32 2, !dbg !239
  %5 = load %struct._Graph** %graph, align 8, !dbg !239, !tbaa !183
  call void @Graph_adjAndSize(%struct._Graph* %5, i32 %iseg, i32* %size, i32** %adj) #6, !dbg !239
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !113), !dbg !240
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !115), !dbg !241
  %6 = load i32* %size, align 4, !dbg !241, !tbaa !190
  %cmp5 = icmp sgt i32 %6, 0, !dbg !241
  br i1 %cmp5, label %if.then6, label %if.end16, !dbg !241

if.then6:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !116), !dbg !242
  %7 = load i32** %adj, align 8, !dbg !242, !tbaa !183
  %8 = load i32* %7, align 4, !dbg !242, !tbaa !190
  %idxprom = sext i32 %8 to i64, !dbg !242
  %arrayidx7 = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !242
  %9 = load i32* %arrayidx7, align 4, !dbg !242, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !113), !dbg !242
  call void @llvm.dbg.value(metadata !244, i64 0, metadata !114), !dbg !245
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !115), !dbg !245
  %cmp829 = icmp sgt i32 %6, 1, !dbg !245
  br i1 %cmp829, label %for.body, label %if.end16, !dbg !245

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !115), !dbg !245
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !245
  %cmp8 = icmp slt i32 %10, %6, !dbg !245
  br i1 %cmp8, label %for.body, label %if.end16, !dbg !245

for.body:                                         ; preds = %if.then6, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %if.then6 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !116), !dbg !247
  %arrayidx10 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !247
  %11 = load i32* %arrayidx10, align 4, !dbg !247, !tbaa !190
  %idxprom11 = sext i32 %11 to i64, !dbg !247
  %arrayidx12 = getelementptr inbounds i32* %3, i64 %idxprom11, !dbg !247
  %12 = load i32* %arrayidx12, align 4, !dbg !247, !tbaa !190
  %cmp13 = icmp eq i32 %9, %12, !dbg !247
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !245
  br i1 %cmp13, label %for.cond, label %if.end16, !dbg !247

if.end16:                                         ; preds = %if.then6, %for.body, %for.cond, %if.end
  %color.0 = phi i32 [ 0, %if.end ], [ %9, %if.then6 ], [ 0, %for.body ], [ %9, %for.cond ]
  ret i32 %color.0, !dbg !249
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #5

; Function Attrs: nounwind optsize uwtable
define void @BKL_flipDomain(%struct._BKL* %bkl, i32 %idom) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !120), !dbg !250
  call void @llvm.dbg.value(metadata !{i32 %idom}, i64 0, metadata !121), !dbg !251
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !126), !dbg !252
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !129), !dbg !253
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !254
  %cmp1 = icmp slt i32 %idom, 0, !dbg !254
  %or.cond = or i1 %cmp, %cmp1, !dbg !254
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !254

lor.lhs.false2:                                   ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !254
  %0 = load i32* %ndom, align 4, !dbg !254, !tbaa !190
  %cmp3 = icmp sgt i32 %0, %idom, !dbg !254
  br i1 %cmp3, label %if.end, label %if.then, !dbg !254

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !255, !tbaa !183
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._BKL* %bkl, i32 %idom) #6, !dbg !255
  call void @exit(i32 -1) #7, !dbg !257
  unreachable, !dbg !257

if.end:                                           ; preds = %lor.lhs.false2
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !258
  %2 = load i32** %colors4, align 8, !dbg !258, !tbaa !183
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !130), !dbg !258
  %regwghts5 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !259
  %3 = load i32** %regwghts5, align 8, !dbg !259, !tbaa !183
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !131), !dbg !259
  %idxprom = sext i32 %idom to i64, !dbg !260
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !260
  %4 = load i32* %arrayidx, align 4, !dbg !260, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !125), !dbg !260
  switch i32 %4, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb6
  ], !dbg !260

sw.bb6:                                           ; preds = %if.end
  call void @llvm.dbg.value(metadata !244, i64 0, metadata !124), !dbg !261
  br label %sw.epilog, !dbg !263

sw.default:                                       ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !264, !tbaa !183
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._BKL* %bkl, i32 %idom, i32 %idom, i32 %4) #6, !dbg !264
  call void @exit(i32 -1) #7, !dbg !265
  unreachable, !dbg !265

sw.epilog:                                        ; preds = %if.end, %sw.bb6
  %newcolor.0 = phi i32 [ 1, %sw.bb6 ], [ 2, %if.end ]
  store i32 %newcolor.0, i32* %arrayidx, align 4, !dbg !266, !tbaa !190
  %arrayidx13 = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !267
  %6 = load i32* %arrayidx13, align 4, !dbg !267, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !127), !dbg !267
  %idxprom14 = sext i32 %4 to i64, !dbg !268
  %arrayidx15 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom14, !dbg !268
  %7 = load i32* %arrayidx15, align 4, !dbg !268, !tbaa !190
  %sub = sub nsw i32 %7, %6, !dbg !268
  store i32 %sub, i32* %arrayidx15, align 4, !dbg !268, !tbaa !190
  %idxprom1678 = zext i32 %newcolor.0 to i64, !dbg !269
  %arrayidx18 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom1678, !dbg !269
  %8 = load i32* %arrayidx18, align 4, !dbg !269, !tbaa !190
  %add = add nsw i32 %8, %6, !dbg !269
  store i32 %add, i32* %arrayidx18, align 4, !dbg !269, !tbaa !190
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !270
  %9 = load %struct._BPG** %bpg, align 8, !dbg !270, !tbaa !183
  %graph = getelementptr inbounds %struct._BPG* %9, i64 0, i32 2, !dbg !270
  %10 = load %struct._Graph** %graph, align 8, !dbg !270, !tbaa !183
  call void @Graph_adjAndSize(%struct._Graph* %10, i32 %idom, i32* %size, i32** %adj) #6, !dbg !270
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !271
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !126), !dbg !271
  %11 = load i32* %size, align 4, !dbg !271, !tbaa !190
  %cmp1979 = icmp sgt i32 %11, 0, !dbg !271
  br i1 %cmp1979, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %sw.epilog, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %sw.epilog ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !129), !dbg !273
  %12 = load i32** %adj, align 8, !dbg !273, !tbaa !183
  %arrayidx21 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !273
  %13 = load i32* %arrayidx21, align 4, !dbg !273, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !123), !dbg !273
  %idxprom22 = sext i32 %13 to i64, !dbg !275
  %arrayidx23 = getelementptr inbounds i32* %3, i64 %idxprom22, !dbg !275
  %14 = load i32* %arrayidx23, align 4, !dbg !275, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !128), !dbg !275
  %arrayidx25 = getelementptr inbounds i32* %2, i64 %idxprom22, !dbg !276
  %15 = load i32* %arrayidx25, align 4, !dbg !276, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !125), !dbg !276
  %call26 = call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %13) #8, !dbg !277
  call void @llvm.dbg.value(metadata !{i32 %call26}, i64 0, metadata !124), !dbg !277
  %cmp27 = icmp eq i32 %15, %call26, !dbg !277
  br i1 %cmp27, label %for.inc, label %if.then28, !dbg !277

if.then28:                                        ; preds = %for.body
  %idxprom29 = sext i32 %15 to i64, !dbg !278
  %arrayidx31 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom29, !dbg !278
  %16 = load i32* %arrayidx31, align 4, !dbg !278, !tbaa !190
  %sub32 = sub nsw i32 %16, %14, !dbg !278
  store i32 %sub32, i32* %arrayidx31, align 4, !dbg !278, !tbaa !190
  %idxprom33 = sext i32 %call26 to i64, !dbg !280
  %arrayidx35 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom33, !dbg !280
  %17 = load i32* %arrayidx35, align 4, !dbg !280, !tbaa !190
  %add36 = add nsw i32 %17, %14, !dbg !280
  store i32 %add36, i32* %arrayidx35, align 4, !dbg !280, !tbaa !190
  store i32 %call26, i32* %arrayidx25, align 4, !dbg !281, !tbaa !190
  br label %for.inc, !dbg !282

for.inc:                                          ; preds = %for.body, %if.then28
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !271
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !126), !dbg !271
  %18 = load i32* %size, align 4, !dbg !271, !tbaa !190
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !271
  %cmp19 = icmp slt i32 %19, %18, !dbg !271
  br i1 %cmp19, label %for.body, label %for.end, !dbg !271

for.end:                                          ; preds = %for.inc, %sw.epilog
  %nflips = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 7, !dbg !283
  %20 = load i32* %nflips, align 4, !dbg !283, !tbaa !190
  %inc40 = add nsw i32 %20, 1, !dbg !283
  store i32 %inc40, i32* %nflips, align 4, !dbg !283, !tbaa !190
  ret void, !dbg !284
}

; Function Attrs: nounwind optsize uwtable
define i32 @BKL_greyCodeDomain(%struct._BKL* %bkl, i32 %count) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !134), !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %count}, i64 0, metadata !135), !dbg !286
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !287
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !287

for.cond.preheader:                               ; preds = %entry
  %rem7 = srem i32 %count, 2, !dbg !288
  %cmp18 = icmp eq i32 %rem7, 1, !dbg !288
  br i1 %cmp18, label %if.then2, label %for.inc, !dbg !288

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !291, !tbaa !183
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), %struct._BKL* null) #6, !dbg !291
  tail call void @exit(i32 -1) #7, !dbg !293
  unreachable, !dbg !293

if.then2:                                         ; preds = %for.inc, %for.cond.preheader
  %idom.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  ret i32 %idom.0.lcssa, !dbg !294

for.inc:                                          ; preds = %for.cond.preheader, %for.inc
  %idom.010 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %chk.09 = phi i32 [ %mul, %for.inc ], [ 2, %for.cond.preheader ]
  %inc = add nsw i32 %idom.010, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !137), !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32 %chk.09}, i64 0, metadata !138), !dbg !296
  %mul = shl nsw i32 %chk.09, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !136), !dbg !296
  %rem = srem i32 %count, %mul, !dbg !288
  %cmp1 = icmp eq i32 %rem, %chk.09, !dbg !288
  br i1 %cmp1, label %if.then2, label %for.inc, !dbg !288
}

; Function Attrs: nounwind optsize uwtable
define float @BKL_setInitPart(%struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #0 {
entry:
  %dsize = alloca i32, align 4
  %ssize = alloca i32, align 4
  %dadj = alloca i32*, align 8
  %sadj = alloca i32*, align 8
  %drand = alloca %struct._Drand, align 8
  call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !143), !dbg !297
  call void @llvm.dbg.value(metadata !{i32 %flag}, i64 0, metadata !144), !dbg !298
  call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !145), !dbg !299
  call void @llvm.dbg.value(metadata !{i32* %domcolors}, i64 0, metadata !146), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %dsize}, metadata !151), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32* %ssize}, metadata !160), !dbg !302
  call void @llvm.dbg.declare(metadata !{i32** %dadj}, metadata !163), !dbg !303
  call void @llvm.dbg.declare(metadata !{i32** %sadj}, metadata !166), !dbg !303
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !304
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !304

lor.lhs.false:                                    ; preds = %entry
  %flag.off = add i32 %flag, -1, !dbg !304
  %0 = icmp ugt i32 %flag.off, 5, !dbg !304
  br i1 %0, label %if.then, label %lor.lhs.false4, !dbg !304

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp5 = icmp eq i32 %flag, 6, !dbg !304
  %cmp6 = icmp eq i32* %domcolors, null, !dbg !304
  %or.cond = and i1 %cmp5, %cmp6, !dbg !304
  br i1 %or.cond, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !305, !tbaa !183
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), %struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #6, !dbg !305
  call void @exit(i32 -1) #7, !dbg !307
  unreachable, !dbg !307

if.end:                                           ; preds = %lor.lhs.false4
  %bpg7 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !308
  %2 = load %struct._BPG** %bpg7, align 8, !dbg !308, !tbaa !183
  call void @llvm.dbg.value(metadata !{%struct._BPG* %2}, i64 0, metadata !147), !dbg !308
  %ndom8 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !309
  %3 = load i32* %ndom8, align 4, !dbg !309, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !156), !dbg !309
  %colors9 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !310
  %4 = load i32** %colors9, align 8, !dbg !310, !tbaa !183
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !161), !dbg !310
  switch i32 %3, label %if.else17 [
    i32 1, label %if.then12
    i32 2, label %if.then14
  ], !dbg !311

if.then12:                                        ; preds = %if.end
  store i32 1, i32* %4, align 4, !dbg !312, !tbaa !190
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !314
  br label %if.end95, !dbg !315

if.then14:                                        ; preds = %if.end
  store i32 1, i32* %4, align 4, !dbg !316, !tbaa !190
  %arrayidx16 = getelementptr inbounds i32* %4, i64 1, !dbg !318
  store i32 2, i32* %arrayidx16, align 4, !dbg !318, !tbaa !190
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !319
  br label %if.end95, !dbg !320

if.else17:                                        ; preds = %if.end
  switch i32 %flag, label %if.end95 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb25
    i32 4, label %sw.bb37
    i32 5, label %sw.bb37
    i32 6, label %sw.bb93
  ], !dbg !321

sw.bb:                                            ; preds = %if.else17
  %5 = bitcast %struct._Drand* %drand to i8*, !dbg !322
  call void @llvm.lifetime.start(i64 72, i8* %5) #2, !dbg !322
  call void @llvm.dbg.declare(metadata !{%struct._Drand* %drand}, metadata !167), !dbg !322
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !323
  call void @Drand_init(%struct._Drand* %drand) #6, !dbg !324
  call void @Drand_setUniform(%struct._Drand* %drand, double 0.000000e+00, double 1.000000e+00) #6, !dbg !325
  %cmp18 = icmp sgt i32 %seed, 0, !dbg !326
  br i1 %cmp18, label %if.then19, label %for.cond.preheader, !dbg !326

if.then19:                                        ; preds = %sw.bb
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6, !dbg !327
  br label %for.cond.preheader, !dbg !329

for.cond.preheader:                               ; preds = %if.then19, %sw.bb
  %cmp21173 = icmp sgt i32 %3, 0, !dbg !330
  br i1 %cmp21173, label %for.body, label %for.end, !dbg !330

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call22 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !332
  %cmp23 = fcmp olt double %call22, 5.000000e-01, !dbg !332
  %cond = select i1 %cmp23, i32 1, i32 2, !dbg !332
  %arrayidx24 = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !332
  store i32 %cond, i32* %arrayidx24, align 4, !dbg !332, !tbaa !190
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !330
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !330
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !330
  br i1 %exitcond, label %for.end, label %for.body, !dbg !330

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !334
  call void @llvm.lifetime.end(i64 72, i8* %5) #2, !dbg !335
  br label %if.end95

sw.bb25:                                          ; preds = %if.else17, %if.else17
  call void @IVfill(i32 %3, i32* %4, i32 2) #6, !dbg !336
  %cmp26 = icmp eq i32 %flag, 2, !dbg !337
  br i1 %cmp26, label %if.then27, label %if.else30, !dbg !337

if.then27:                                        ; preds = %sw.bb25
  %rem = srem i32 %seed, %3, !dbg !338
  %idxprom28 = sext i32 %rem to i64, !dbg !338
  %arrayidx29 = getelementptr inbounds i32* %4, i64 %idxprom28, !dbg !338
  store i32 1, i32* %arrayidx29, align 4, !dbg !338, !tbaa !190
  br label %if.end36, !dbg !340

if.else30:                                        ; preds = %sw.bb25
  %6 = load %struct._BPG** %bpg7, align 8, !dbg !341, !tbaa !183
  %rem32 = srem i32 %seed, %3, !dbg !341
  %call33 = call i32 @BPG_pseudoperipheralnode(%struct._BPG* %6, i32 %rem32) #6, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %call33}, i64 0, metadata !158), !dbg !341
  %idxprom34 = sext i32 %call33 to i64, !dbg !343
  %arrayidx35 = getelementptr inbounds i32* %4, i64 %idxprom34, !dbg !343
  store i32 1, i32* %arrayidx35, align 4, !dbg !343, !tbaa !190
  br label %if.end36

if.end36:                                         ; preds = %if.else30, %if.then27
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !344
  br label %if.end95, !dbg !345

sw.bb37:                                          ; preds = %if.else17, %if.else17
  call void @IVfill(i32 %3, i32* %4, i32 2) #6, !dbg !346
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !347
  %call38 = call i32* @IVinit(i32 %3, i32 -1) #6, !dbg !348
  call void @llvm.dbg.value(metadata !{i32* %call38}, i64 0, metadata !164), !dbg !348
  %call39 = call i32* @IVinit(i32 %3, i32 -1) #6, !dbg !349
  call void @llvm.dbg.value(metadata !{i32* %call39}, i64 0, metadata !165), !dbg !349
  %cmp40 = icmp eq i32 %flag, 4, !dbg !350
  br i1 %cmp40, label %if.then41, label %if.else44, !dbg !350

if.then41:                                        ; preds = %sw.bb37
  %rem42 = srem i32 %seed, %3, !dbg !351
  br label %if.end49, !dbg !353

if.else44:                                        ; preds = %sw.bb37
  %7 = load %struct._BPG** %bpg7, align 8, !dbg !354, !tbaa !183
  %rem46 = srem i32 %seed, %3, !dbg !354
  %call47 = call i32 @BPG_pseudoperipheralnode(%struct._BPG* %7, i32 %rem46) #6, !dbg !354
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then41
  %storemerge = phi i32 [ %call47, %if.else44 ], [ %rem42, %if.then41 ]
  store i32 %storemerge, i32* %call38, align 4, !dbg !351, !tbaa !190
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !155), !dbg !356
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !356
  %idxprom51 = sext i32 %storemerge to i64, !dbg !357
  %arrayidx52 = getelementptr inbounds i32* %call39, i64 %idxprom51, !dbg !357
  store i32 1, i32* %arrayidx52, align 4, !dbg !357, !tbaa !190
  %arrayidx57 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !358
  %arrayidx58 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !358
  %graph = getelementptr inbounds %struct._BPG* %2, i64 0, i32 2, !dbg !360
  %sub = add nsw i32 %3, -1, !dbg !361
  br label %while.body, !dbg !367

while.cond.loopexit:                              ; preds = %for.inc90, %if.end61
  %last.1.lcssa = phi i32 [ %last.0185, %if.end61 ], [ %last.2.lcssa, %for.inc90 ]
  %8 = trunc i64 %indvars.iv190 to i32, !dbg !367
  %cmp53 = icmp slt i32 %8, %last.1.lcssa, !dbg !367
  br i1 %cmp53, label %while.body, label %while.end, !dbg !367

while.body:                                       ; preds = %while.cond.loopexit, %if.end49
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %while.cond.loopexit ], [ 0, %if.end49 ]
  %last.0185 = phi i32 [ %last.1.lcssa, %while.cond.loopexit ], [ 0, %if.end49 ]
  %indvars.iv.next191 = add i64 %indvars.iv190, 1, !dbg !367
  %arrayidx56 = getelementptr inbounds i32* %call38, i64 %indvars.iv190, !dbg !368
  %9 = load i32* %arrayidx56, align 4, !dbg !368, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !149), !dbg !368
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %9) #8, !dbg !369
  %10 = load i32* %arrayidx57, align 4, !dbg !358, !tbaa !190
  %11 = load i32* %arrayidx58, align 4, !dbg !358, !tbaa !190
  %cmp59 = icmp slt i32 %10, %11, !dbg !358
  br i1 %cmp59, label %if.end61, label %while.end, !dbg !358

if.end61:                                         ; preds = %while.body
  %12 = load %struct._Graph** %graph, align 8, !dbg !360, !tbaa !183
  call void @Graph_adjAndSize(%struct._Graph* %12, i32 %9, i32* %dsize, i32** %dadj) #6, !dbg !360
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !153), !dbg !370
  call void @llvm.dbg.value(metadata !{i32* %dsize}, i64 0, metadata !151), !dbg !370
  %13 = load i32* %dsize, align 4, !dbg !370, !tbaa !190
  %cmp63180 = icmp sgt i32 %13, 0, !dbg !370
  br i1 %cmp63180, label %for.body64, label %while.cond.loopexit, !dbg !370

for.body64:                                       ; preds = %if.end61, %for.inc90
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %for.inc90 ], [ 0, %if.end61 ]
  %last.1181 = phi i32 [ %last.2.lcssa, %for.inc90 ], [ %last.0185, %if.end61 ]
  call void @llvm.dbg.value(metadata !{i32** %dadj}, i64 0, metadata !163), !dbg !371
  %14 = load i32** %dadj, align 8, !dbg !371, !tbaa !183
  %arrayidx66 = getelementptr inbounds i32* %14, i64 %indvars.iv188, !dbg !371
  %15 = load i32* %arrayidx66, align 4, !dbg !371, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !159), !dbg !371
  %16 = load %struct._Graph** %graph, align 8, !dbg !372, !tbaa !183
  call void @Graph_adjAndSize(%struct._Graph* %16, i32 %15, i32* %ssize, i32** %sadj) #6, !dbg !372
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !154), !dbg !373
  call void @llvm.dbg.value(metadata !{i32* %ssize}, i64 0, metadata !160), !dbg !373
  %17 = load i32* %ssize, align 4, !dbg !373, !tbaa !190
  %cmp69176 = icmp sgt i32 %17, 0, !dbg !373
  br i1 %cmp69176, label %for.body70.lr.ph, label %for.inc90, !dbg !373

for.body70.lr.ph:                                 ; preds = %for.body64
  call void @llvm.dbg.value(metadata !{i32** %sadj}, i64 0, metadata !166), !dbg !374
  %18 = load i32** %sadj, align 8, !dbg !374, !tbaa !183
  br label %for.body70, !dbg !373

for.body70:                                       ; preds = %for.body70.lr.ph, %for.inc87
  %19 = phi i32 [ %17, %for.body70.lr.ph ], [ %23, %for.inc87 ]
  %indvars.iv186 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next187, %for.inc87 ]
  %last.2177 = phi i32 [ %last.1181, %for.body70.lr.ph ], [ %last.3, %for.inc87 ]
  call void @llvm.dbg.value(metadata !{i32** %sadj}, i64 0, metadata !166), !dbg !374
  %arrayidx72 = getelementptr inbounds i32* %18, i64 %indvars.iv186, !dbg !374
  %20 = load i32* %arrayidx72, align 4, !dbg !374, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !150), !dbg !374
  %idxprom73 = sext i32 %20 to i64, !dbg !375
  %arrayidx74 = getelementptr inbounds i32* %call39, i64 %idxprom73, !dbg !375
  %21 = load i32* %arrayidx74, align 4, !dbg !375, !tbaa !190
  %cmp75 = icmp eq i32 %21, -1, !dbg !375
  br i1 %cmp75, label %if.then76, label %for.inc87, !dbg !375

if.then76:                                        ; preds = %for.body70
  %cmp77 = icmp eq i32 %last.2177, %sub, !dbg !361
  br i1 %cmp77, label %if.then78, label %if.end80, !dbg !361

if.then78:                                        ; preds = %if.then76
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !376, !tbaa !183
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), %struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #6, !dbg !376
  call void @exit(i32 -1) #7, !dbg !378
  unreachable, !dbg !378

if.end80:                                         ; preds = %if.then76
  store i32 1, i32* %arrayidx74, align 4, !dbg !379, !tbaa !190
  %inc83 = add nsw i32 %last.2177, 1, !dbg !380
  call void @llvm.dbg.value(metadata !{i32 %inc83}, i64 0, metadata !155), !dbg !380
  %idxprom84 = sext i32 %inc83 to i64, !dbg !380
  %arrayidx85 = getelementptr inbounds i32* %call38, i64 %idxprom84, !dbg !380
  store i32 %20, i32* %arrayidx85, align 4, !dbg !380, !tbaa !190
  call void @llvm.dbg.value(metadata !{i32* %ssize}, i64 0, metadata !160), !dbg !373
  %.pre = load i32* %ssize, align 4, !dbg !373, !tbaa !190
  br label %for.inc87, !dbg !381

for.inc87:                                        ; preds = %for.body70, %if.end80
  %23 = phi i32 [ %.pre, %if.end80 ], [ %19, %for.body70 ], !dbg !373
  %last.3 = phi i32 [ %inc83, %if.end80 ], [ %last.2177, %for.body70 ]
  %indvars.iv.next187 = add i64 %indvars.iv186, 1, !dbg !373
  call void @llvm.dbg.value(metadata !{i32* %ssize}, i64 0, metadata !160), !dbg !373
  %24 = trunc i64 %indvars.iv.next187 to i32, !dbg !373
  %cmp69 = icmp slt i32 %24, %23, !dbg !373
  br i1 %cmp69, label %for.body70, label %for.inc90, !dbg !373

for.inc90:                                        ; preds = %for.inc87, %for.body64
  %last.2.lcssa = phi i32 [ %last.1181, %for.body64 ], [ %last.3, %for.inc87 ]
  %indvars.iv.next189 = add i64 %indvars.iv188, 1, !dbg !370
  call void @llvm.dbg.value(metadata !{i32* %dsize}, i64 0, metadata !151), !dbg !370
  %25 = load i32* %dsize, align 4, !dbg !370, !tbaa !190
  %26 = trunc i64 %indvars.iv.next189 to i32, !dbg !370
  %cmp63 = icmp slt i32 %26, %25, !dbg !370
  br i1 %cmp63, label %for.body64, label %while.cond.loopexit, !dbg !370

while.end:                                        ; preds = %while.cond.loopexit, %while.body
  call void @IVfree(i32* %call38) #6, !dbg !382
  call void @IVfree(i32* %call39) #6, !dbg !383
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !384
  br label %if.end95, !dbg !385

sw.bb93:                                          ; preds = %if.else17
  call void @IVcopy(i32 %3, i32* %4, i32* %domcolors) #6, !dbg !386
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !387
  br label %if.end95, !dbg !388

if.end95:                                         ; preds = %if.then14, %if.else17, %sw.bb93, %while.end, %if.end36, %for.end, %if.then12
  %call96 = call float @BKL_evalfcn(%struct._BKL* %bkl) #6, !dbg !389
  call void @llvm.dbg.value(metadata !{float %call96}, i64 0, metadata !148), !dbg !389
  ret float %call96, !dbg !390
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #5

; Function Attrs: optsize
declare i32 @BPG_pseudoperipheralnode(%struct._BPG*, i32) #5

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #5

; Function Attrs: optsize
declare void @IVfree(i32*) #5

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #5

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #5

; Function Attrs: nounwind optsize uwtable
define i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %dom) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !173), !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %dom}, i64 0, metadata !174), !dbg !392
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !176), !dbg !393
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !177), !dbg !394
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !395
  %cmp1 = icmp slt i32 %dom, 0, !dbg !395
  %or.cond = or i1 %cmp, %cmp1, !dbg !395
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !395

lor.lhs.false2:                                   ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !395
  %0 = load i32* %ndom, align 4, !dbg !395, !tbaa !190
  %cmp3 = icmp sgt i32 %0, %dom, !dbg !395
  br i1 %cmp3, label %if.end, label %if.then, !dbg !395

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !396, !tbaa !183
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str9, i64 0, i64 0), %struct._BKL* %bkl, i32 %dom) #6, !dbg !396
  call void @exit(i32 -1) #7, !dbg !398
  unreachable, !dbg !398

if.end:                                           ; preds = %lor.lhs.false2
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !399
  %2 = load i32** %colors4, align 8, !dbg !399, !tbaa !183
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !178), !dbg !399
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !400
  %3 = load %struct._BPG** %bpg, align 8, !dbg !400, !tbaa !183
  %graph = getelementptr inbounds %struct._BPG* %3, i64 0, i32 2, !dbg !400
  %4 = load %struct._Graph** %graph, align 8, !dbg !400, !tbaa !183
  call void @Graph_adjAndSize(%struct._Graph* %4, i32 %dom, i32* %size, i32** %adj) #6, !dbg !400
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !175), !dbg !401
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !176), !dbg !401
  %5 = load i32* %size, align 4, !dbg !401, !tbaa !190
  %cmp520 = icmp sgt i32 %5, 0, !dbg !401
  br i1 %cmp520, label %for.body.lr.ph, label %return, !dbg !401

for.body.lr.ph:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !177), !dbg !403
  %6 = load i32** %adj, align 8, !dbg !403, !tbaa !183
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !176), !dbg !401
  br label %for.body, !dbg !401

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !176), !dbg !401
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !401
  %cmp5 = icmp slt i32 %7, %5, !dbg !401
  br i1 %cmp5, label %for.body, label %return, !dbg !401

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !177), !dbg !403
  %arrayidx = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !403
  %8 = load i32* %arrayidx, align 4, !dbg !403, !tbaa !190
  %idxprom6 = sext i32 %8 to i64, !dbg !403
  %arrayidx7 = getelementptr inbounds i32* %2, i64 %idxprom6, !dbg !403
  %9 = load i32* %arrayidx7, align 4, !dbg !403, !tbaa !190
  %cmp8 = icmp eq i32 %9, 0, !dbg !403
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !401
  br i1 %cmp8, label %return, label %for.cond, !dbg !403

return:                                           ; preds = %for.cond, %for.body, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0, !dbg !405
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !99, metadata !107, metadata !118, metadata !132, metadata !139, metadata !171}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_setRandomColors", metadata !"BKL_setRandomColors", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*, i32)* @BKL_setRandomColors, null, null, metadata !77, i32 21} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 21] [BKL_setRandomColors]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !20}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BKL]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"BKL", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [BKL] [line 45, size 0, align 0, offset 0] [from _BKL]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_BKL", i32 46, i64 704, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BKL] [line 46, size 704, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !74, metadata !75}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bpg", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [bpg] [line 47, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!24 = metadata !{i32 786454, metadata !17, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!25 = metadata !{i32 786451, metadata !26, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!26 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !58, metadata !59}
!28 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!30 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!31 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!32 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!33 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!34 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!36 = metadata !{i32 786454, metadata !26, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!37 = metadata !{i32 786451, metadata !38, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!38 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !46, metadata !48, metadata !49}
!40 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!43 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!44 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!49 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !50} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!51 = metadata !{i32 786454, metadata !38, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!52 = metadata !{i32 786451, metadata !38, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !53, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57}
!54 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!55 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!56 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!57 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!58 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !45} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!59 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!60 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ndom", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [ndom] [line 48, size 32, align 32, offset 64] [from int]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseg", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nseg] [line 49, size 32, align 32, offset 96] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nreg", i32 50, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [nreg] [line 50, size 32, align 32, offset 128] [from int]
!63 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totweight", i32 51, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [totweight] [line 51, size 32, align 32, offset 160] [from int]
!64 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"npass", i32 52, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [npass] [line 52, size 32, align 32, offset 192] [from int]
!65 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"npatch", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [npatch] [line 53, size 32, align 32, offset 224] [from int]
!66 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nflips", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [nflips] [line 54, size 32, align 32, offset 256] [from int]
!67 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nimprove", i32 55, i64 32, i64 32, i64 288, i32 0, metadata !20} ; [ DW_TAG_member ] [nimprove] [line 55, size 32, align 32, offset 288] [from int]
!68 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngaineval", i32 56, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [ngaineval] [line 56, size 32, align 32, offset 320] [from int]
!69 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colors", i32 57, i64 64, i64 64, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ] [colors] [line 57, size 64, align 64, offset 384] [from ]
!70 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cweights", i32 58, i64 96, i64 32, i64 448, i32 0, metadata !71} ; [ DW_TAG_member ] [cweights] [line 58, size 96, align 32, offset 448] [from ]
!71 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !20, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!74 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"regwghts", i32 59, i64 64, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ] [regwghts] [line 59, size 64, align 64, offset 576] [from ]
!75 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alpha", i32 60, i64 32, i64 32, i64 640, i32 0, metadata !76} ; [ DW_TAG_member ] [alpha] [line 60, size 32, align 32, offset 640] [from float]
!76 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!78 = metadata !{i32 786689, metadata !4, metadata !"bkl", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 19]
!79 = metadata !{i32 786689, metadata !4, metadata !"seed", metadata !5, i32 33554452, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 20]
!80 = metadata !{i32 786688, metadata !4, metadata !"ireg", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ireg] [line 22]
!81 = metadata !{i32 786688, metadata !4, metadata !"ndom", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 22]
!82 = metadata !{i32 786688, metadata !4, metadata !"nreg", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nreg] [line 22]
!83 = metadata !{i32 786688, metadata !4, metadata !"colors", metadata !5, i32 23, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 23]
!84 = metadata !{i32 786688, metadata !4, metadata !"drand", metadata !5, i32 24, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [drand] [line 24]
!85 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!86 = metadata !{i32 786451, metadata !87, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !88, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!87 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Drand/Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!88 = metadata !{metadata !89, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!89 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!90 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!91 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !90} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!92 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !90} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!93 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !90} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!94 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !90} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!95 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !90} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!96 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !90} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!97 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !90} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!98 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !20} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_setColorWeights", metadata !"BKL_setColorWeights", metadata !"", i32 78, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*)* @BKL_setColorWeights, null, null, metadata !102, i32 80} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 80] [BKL_setColorWeights]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{null, metadata !8}
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106}
!103 = metadata !{i32 786689, metadata !99, metadata !"bkl", metadata !5, i32 16777295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 79]
!104 = metadata !{i32 786688, metadata !99, metadata !"c", metadata !5, i32 81, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 81]
!105 = metadata !{i32 786688, metadata !99, metadata !"ireg", metadata !5, i32 81, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ireg] [line 81]
!106 = metadata !{i32 786688, metadata !99, metadata !"colors", metadata !5, i32 82, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 82]
!107 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_segColor", metadata !"BKL_segColor", metadata !"", i32 134, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BKL*, i32)* @BKL_segColor, null, null, metadata !110, i32 137} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 137] [BKL_segColor]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !20, metadata !8, metadata !20}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!111 = metadata !{i32 786689, metadata !107, metadata !"bkl", metadata !5, i32 16777351, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 135]
!112 = metadata !{i32 786689, metadata !107, metadata !"iseg", metadata !5, i32 33554568, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iseg] [line 136]
!113 = metadata !{i32 786688, metadata !107, metadata !"color", metadata !5, i32 138, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [color] [line 138]
!114 = metadata !{i32 786688, metadata !107, metadata !"ii", metadata !5, i32 138, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 138]
!115 = metadata !{i32 786688, metadata !107, metadata !"size", metadata !5, i32 138, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 138]
!116 = metadata !{i32 786688, metadata !107, metadata !"adj", metadata !5, i32 139, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 139]
!117 = metadata !{i32 786688, metadata !107, metadata !"colors", metadata !5, i32 139, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 139]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_flipDomain", metadata !"BKL_flipDomain", metadata !"", i32 181, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*, i32)* @BKL_flipDomain, null, null, metadata !119, i32 184} ; [ DW_TAG_subprogram ] [line 181] [def] [scope 184] [BKL_flipDomain]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!120 = metadata !{i32 786689, metadata !118, metadata !"bkl", metadata !5, i32 16777398, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 182]
!121 = metadata !{i32 786689, metadata !118, metadata !"idom", metadata !5, i32 33554615, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idom] [line 183]
!122 = metadata !{i32 786688, metadata !118, metadata !"ii", metadata !5, i32 185, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 185]
!123 = metadata !{i32 786688, metadata !118, metadata !"iseg", metadata !5, i32 185, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iseg] [line 185]
!124 = metadata !{i32 786688, metadata !118, metadata !"newcolor", metadata !5, i32 185, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newcolor] [line 185]
!125 = metadata !{i32 786688, metadata !118, metadata !"oldcolor", metadata !5, i32 185, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldcolor] [line 185]
!126 = metadata !{i32 786688, metadata !118, metadata !"size", metadata !5, i32 185, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 185]
!127 = metadata !{i32 786688, metadata !118, metadata !"wdom", metadata !5, i32 185, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wdom] [line 185]
!128 = metadata !{i32 786688, metadata !118, metadata !"wseg", metadata !5, i32 185, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wseg] [line 185]
!129 = metadata !{i32 786688, metadata !118, metadata !"adj", metadata !5, i32 186, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 186]
!130 = metadata !{i32 786688, metadata !118, metadata !"colors", metadata !5, i32 186, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 186]
!131 = metadata !{i32 786688, metadata !118, metadata !"regwghts", metadata !5, i32 186, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regwghts] [line 186]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_greyCodeDomain", metadata !"BKL_greyCodeDomain", metadata !"", i32 261, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BKL*, i32)* @BKL_greyCodeDomain, null, null, metadata !133, i32 264} ; [ DW_TAG_subprogram ] [line 261] [def] [scope 264] [BKL_greyCodeDomain]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!134 = metadata !{i32 786689, metadata !132, metadata !"bkl", metadata !5, i32 16777478, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 262]
!135 = metadata !{i32 786689, metadata !132, metadata !"count", metadata !5, i32 33554695, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 263]
!136 = metadata !{i32 786688, metadata !132, metadata !"chk", metadata !5, i32 265, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chk] [line 265]
!137 = metadata !{i32 786688, metadata !132, metadata !"idom", metadata !5, i32 265, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idom] [line 265]
!138 = metadata !{i32 786688, metadata !132, metadata !"res", metadata !5, i32 265, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 265]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_setInitPart", metadata !"BKL_setInitPart", metadata !"", i32 316, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._BKL*, i32, i32, i32*)* @BKL_setInitPart, null, null, metadata !142, i32 321} ; [ DW_TAG_subprogram ] [line 316] [def] [scope 321] [BKL_setInitPart]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !76, metadata !8, metadata !20, metadata !20, metadata !45}
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167}
!143 = metadata !{i32 786689, metadata !139, metadata !"bkl", metadata !5, i32 16777533, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 317]
!144 = metadata !{i32 786689, metadata !139, metadata !"flag", metadata !5, i32 33554750, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 318]
!145 = metadata !{i32 786689, metadata !139, metadata !"seed", metadata !5, i32 50331967, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 319]
!146 = metadata !{i32 786689, metadata !139, metadata !"domcolors", metadata !5, i32 67109184, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [domcolors] [line 320]
!147 = metadata !{i32 786688, metadata !139, metadata !"bpg", metadata !5, i32 322, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpg] [line 322]
!148 = metadata !{i32 786688, metadata !139, metadata !"cost", metadata !5, i32 323, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 323]
!149 = metadata !{i32 786688, metadata !139, metadata !"dom", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dom] [line 324]
!150 = metadata !{i32 786688, metadata !139, metadata !"dom2", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dom2] [line 324]
!151 = metadata !{i32 786688, metadata !139, metadata !"dsize", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsize] [line 324]
!152 = metadata !{i32 786688, metadata !139, metadata !"idom", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idom] [line 324]
!153 = metadata !{i32 786688, metadata !139, metadata !"ii", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 324]
!154 = metadata !{i32 786688, metadata !139, metadata !"jj", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 324]
!155 = metadata !{i32 786688, metadata !139, metadata !"last", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 324]
!156 = metadata !{i32 786688, metadata !139, metadata !"ndom", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 324]
!157 = metadata !{i32 786688, metadata !139, metadata !"now", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 324]
!158 = metadata !{i32 786688, metadata !139, metadata !"root", metadata !5, i32 324, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 324]
!159 = metadata !{i32 786688, metadata !139, metadata !"seg", metadata !5, i32 325, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seg] [line 325]
!160 = metadata !{i32 786688, metadata !139, metadata !"ssize", metadata !5, i32 325, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ssize] [line 325]
!161 = metadata !{i32 786688, metadata !139, metadata !"colors", metadata !5, i32 326, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 326]
!162 = metadata !{i32 786688, metadata !139, metadata !"cweights", metadata !5, i32 326, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cweights] [line 326]
!163 = metadata !{i32 786688, metadata !139, metadata !"dadj", metadata !5, i32 326, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dadj] [line 326]
!164 = metadata !{i32 786688, metadata !139, metadata !"list", metadata !5, i32 326, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 326]
!165 = metadata !{i32 786688, metadata !139, metadata !"mark", metadata !5, i32 326, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 326]
!166 = metadata !{i32 786688, metadata !139, metadata !"sadj", metadata !5, i32 326, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sadj] [line 326]
!167 = metadata !{i32 786688, metadata !168, metadata !"drand", metadata !5, i32 357, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [drand] [line 357]
!168 = metadata !{i32 786443, metadata !1, metadata !169, i32 356, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!169 = metadata !{i32 786443, metadata !1, metadata !170, i32 355, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!170 = metadata !{i32 786443, metadata !1, metadata !139, i32 349, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!171 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_domAdjToSep", metadata !"BKL_domAdjToSep", metadata !"", i32 477, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BKL*, i32)* @BKL_domAdjToSep, null, null, metadata !172, i32 480} ; [ DW_TAG_subprogram ] [line 477] [def] [scope 480] [BKL_domAdjToSep]
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178}
!173 = metadata !{i32 786689, metadata !171, metadata !"bkl", metadata !5, i32 16777694, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 478]
!174 = metadata !{i32 786689, metadata !171, metadata !"dom", metadata !5, i32 33554911, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dom] [line 479]
!175 = metadata !{i32 786688, metadata !171, metadata !"ii", metadata !5, i32 481, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 481]
!176 = metadata !{i32 786688, metadata !171, metadata !"size", metadata !5, i32 481, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 481]
!177 = metadata !{i32 786688, metadata !171, metadata !"adj", metadata !5, i32 482, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 482]
!178 = metadata !{i32 786688, metadata !171, metadata !"colors", metadata !5, i32 482, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 482]
!179 = metadata !{i32 19, i32 0, metadata !4, null}
!180 = metadata !{i32 20, i32 0, metadata !4, null}
!181 = metadata !{i32 24, i32 0, metadata !4, null}
!182 = metadata !{i32 30, i32 0, metadata !4, null}
!183 = metadata !{metadata !"any pointer", metadata !184}
!184 = metadata !{metadata !"omnipotent char", metadata !185}
!185 = metadata !{metadata !"Simple C/C++ TBAA"}
!186 = metadata !{i32 31, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !4, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!188 = metadata !{i32 33, i32 0, metadata !187, null}
!189 = metadata !{i32 35, i32 0, metadata !4, null}
!190 = metadata !{metadata !"int", metadata !184}
!191 = metadata !{i32 37, i32 0, metadata !4, null}
!192 = metadata !{i32 38, i32 0, metadata !4, null}
!193 = metadata !{i32 39, i32 0, metadata !4, null}
!194 = metadata !{i32 40, i32 0, metadata !4, null}
!195 = metadata !{i32 41, i32 0, metadata !4, null}
!196 = metadata !{i32 47, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !4, i32 41, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!198 = metadata !{i32 48, i32 0, metadata !197, null}
!199 = metadata !{i32 54, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!201 = metadata !{i32 55, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !200, i32 54, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!203 = metadata !{i32 62, i32 0, metadata !4, null}
!204 = metadata !{i32 64, i32 0, metadata !4, null}
!205 = metadata !{i32 79, i32 0, metadata !99, null}
!206 = metadata !{i32 88, i32 0, metadata !99, null}
!207 = metadata !{i32 89, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !99, i32 88, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!209 = metadata !{i32 91, i32 0, metadata !208, null}
!210 = metadata !{i32 93, i32 0, metadata !99, null}
!211 = metadata !{i32 94, i32 0, metadata !99, null}
!212 = metadata !{i32 100, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !99, i32 100, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!214 = metadata !{i32 106, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 100, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!216 = metadata !{i32 113, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !99, i32 113, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!218 = metadata !{i32 120, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !217, i32 113, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!220 = metadata !{i32 101, i32 0, metadata !215, null}
!221 = metadata !{i32 102, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !215, i32 101, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!223 = metadata !{i32 104, i32 0, metadata !222, null}
!224 = metadata !{i32 114, i32 0, metadata !219, null}
!225 = metadata !{i32 115, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !219, i32 114, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!227 = metadata !{i32 117, i32 0, metadata !226, null}
!228 = metadata !{i32 119, i32 0, metadata !219, null}
!229 = metadata !{i32 122, i32 0, metadata !99, null}
!230 = metadata !{i32 135, i32 0, metadata !107, null}
!231 = metadata !{i32 136, i32 0, metadata !107, null}
!232 = metadata !{i32 138, i32 0, metadata !107, null}
!233 = metadata !{i32 139, i32 0, metadata !107, null}
!234 = metadata !{i32 145, i32 0, metadata !107, null}
!235 = metadata !{i32 146, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !107, i32 145, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!237 = metadata !{i32 148, i32 0, metadata !236, null}
!238 = metadata !{i32 150, i32 0, metadata !107, null}
!239 = metadata !{i32 157, i32 0, metadata !107, null}
!240 = metadata !{i32 158, i32 0, metadata !107, null}
!241 = metadata !{i32 159, i32 0, metadata !107, null}
!242 = metadata !{i32 160, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !107, i32 159, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!244 = metadata !{i32 1}
!245 = metadata !{i32 161, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !243, i32 161, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!247 = metadata !{i32 162, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !246, i32 161, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!249 = metadata !{i32 168, i32 0, metadata !107, null}
!250 = metadata !{i32 182, i32 0, metadata !118, null}
!251 = metadata !{i32 183, i32 0, metadata !118, null}
!252 = metadata !{i32 185, i32 0, metadata !118, null}
!253 = metadata !{i32 186, i32 0, metadata !118, null}
!254 = metadata !{i32 192, i32 0, metadata !118, null}
!255 = metadata !{i32 193, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !118, i32 192, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!257 = metadata !{i32 195, i32 0, metadata !256, null}
!258 = metadata !{i32 197, i32 0, metadata !118, null}
!259 = metadata !{i32 198, i32 0, metadata !118, null}
!260 = metadata !{i32 199, i32 0, metadata !118, null}
!261 = metadata !{i32 204, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !118, i32 199, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!263 = metadata !{i32 205, i32 0, metadata !262, null}
!264 = metadata !{i32 207, i32 0, metadata !262, null}
!265 = metadata !{i32 209, i32 0, metadata !262, null}
!266 = metadata !{i32 211, i32 0, metadata !118, null}
!267 = metadata !{i32 217, i32 0, metadata !118, null}
!268 = metadata !{i32 218, i32 0, metadata !118, null}
!269 = metadata !{i32 219, i32 0, metadata !118, null}
!270 = metadata !{i32 225, i32 0, metadata !118, null}
!271 = metadata !{i32 226, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !118, i32 226, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!273 = metadata !{i32 227, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !272, i32 226, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!275 = metadata !{i32 228, i32 0, metadata !274, null}
!276 = metadata !{i32 233, i32 0, metadata !274, null}
!277 = metadata !{i32 234, i32 0, metadata !274, null}
!278 = metadata !{i32 235, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !274, i32 234, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!280 = metadata !{i32 236, i32 0, metadata !279, null}
!281 = metadata !{i32 237, i32 0, metadata !279, null}
!282 = metadata !{i32 238, i32 0, metadata !279, null}
!283 = metadata !{i32 245, i32 0, metadata !118, null}
!284 = metadata !{i32 247, i32 0, metadata !118, null}
!285 = metadata !{i32 262, i32 0, metadata !132, null}
!286 = metadata !{i32 263, i32 0, metadata !132, null}
!287 = metadata !{i32 271, i32 0, metadata !132, null}
!288 = metadata !{i32 280, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 279, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!290 = metadata !{i32 786443, metadata !1, metadata !132, i32 277, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!291 = metadata !{i32 272, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !132, i32 271, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!293 = metadata !{i32 274, i32 0, metadata !292, null}
!294 = metadata !{i32 281, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !289, i32 280, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!296 = metadata !{i32 279, i32 0, metadata !290, null}
!297 = metadata !{i32 317, i32 0, metadata !139, null}
!298 = metadata !{i32 318, i32 0, metadata !139, null}
!299 = metadata !{i32 319, i32 0, metadata !139, null}
!300 = metadata !{i32 320, i32 0, metadata !139, null}
!301 = metadata !{i32 324, i32 0, metadata !139, null}
!302 = metadata !{i32 325, i32 0, metadata !139, null}
!303 = metadata !{i32 326, i32 0, metadata !139, null}
!304 = metadata !{i32 332, i32 0, metadata !139, null}
!305 = metadata !{i32 334, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !139, i32 333, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!307 = metadata !{i32 336, i32 0, metadata !306, null}
!308 = metadata !{i32 338, i32 0, metadata !139, null}
!309 = metadata !{i32 339, i32 0, metadata !139, null}
!310 = metadata !{i32 340, i32 0, metadata !139, null}
!311 = metadata !{i32 342, i32 0, metadata !139, null}
!312 = metadata !{i32 343, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !139, i32 342, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!314 = metadata !{i32 344, i32 0, metadata !313, null}
!315 = metadata !{i32 345, i32 0, metadata !313, null}
!316 = metadata !{i32 346, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !139, i32 345, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!318 = metadata !{i32 347, i32 0, metadata !317, null}
!319 = metadata !{i32 348, i32 0, metadata !317, null}
!320 = metadata !{i32 349, i32 0, metadata !317, null}
!321 = metadata !{i32 355, i32 0, metadata !170, null}
!322 = metadata !{i32 357, i32 0, metadata !168, null}
!323 = metadata !{i32 363, i32 0, metadata !168, null}
!324 = metadata !{i32 364, i32 0, metadata !168, null}
!325 = metadata !{i32 365, i32 0, metadata !168, null}
!326 = metadata !{i32 366, i32 0, metadata !168, null}
!327 = metadata !{i32 372, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !168, i32 366, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!329 = metadata !{i32 373, i32 0, metadata !328, null}
!330 = metadata !{i32 374, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !168, i32 374, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!332 = metadata !{i32 375, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !331, i32 374, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!334 = metadata !{i32 377, i32 0, metadata !168, null}
!335 = metadata !{i32 378, i32 0, metadata !168, null}
!336 = metadata !{i32 388, i32 0, metadata !169, null}
!337 = metadata !{i32 389, i32 0, metadata !169, null}
!338 = metadata !{i32 390, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !169, i32 389, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!340 = metadata !{i32 391, i32 0, metadata !339, null}
!341 = metadata !{i32 392, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !169, i32 391, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!343 = metadata !{i32 393, i32 0, metadata !342, null}
!344 = metadata !{i32 395, i32 0, metadata !169, null}
!345 = metadata !{i32 396, i32 0, metadata !169, null}
!346 = metadata !{i32 412, i32 0, metadata !169, null}
!347 = metadata !{i32 413, i32 0, metadata !169, null}
!348 = metadata !{i32 414, i32 0, metadata !169, null}
!349 = metadata !{i32 415, i32 0, metadata !169, null}
!350 = metadata !{i32 416, i32 0, metadata !169, null}
!351 = metadata !{i32 417, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !169, i32 416, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!353 = metadata !{i32 418, i32 0, metadata !352, null}
!354 = metadata !{i32 419, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !169, i32 418, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!356 = metadata !{i32 421, i32 0, metadata !169, null}
!357 = metadata !{i32 422, i32 0, metadata !169, null}
!358 = metadata !{i32 426, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !169, i32 423, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!360 = metadata !{i32 429, i32 0, metadata !359, null}
!361 = metadata !{i32 436, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !363, i32 435, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!363 = metadata !{i32 786443, metadata !1, metadata !364, i32 433, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!364 = metadata !{i32 786443, metadata !1, metadata !365, i32 433, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!365 = metadata !{i32 786443, metadata !1, metadata !366, i32 430, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!366 = metadata !{i32 786443, metadata !1, metadata !359, i32 430, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!367 = metadata !{i32 423, i32 0, metadata !169, null}
!368 = metadata !{i32 424, i32 0, metadata !359, null}
!369 = metadata !{i32 425, i32 0, metadata !359, null}
!370 = metadata !{i32 430, i32 0, metadata !366, null}
!371 = metadata !{i32 431, i32 0, metadata !365, null}
!372 = metadata !{i32 432, i32 0, metadata !365, null}
!373 = metadata !{i32 433, i32 0, metadata !364, null}
!374 = metadata !{i32 434, i32 0, metadata !363, null}
!375 = metadata !{i32 435, i32 0, metadata !363, null}
!376 = metadata !{i32 437, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !362, i32 436, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!378 = metadata !{i32 441, i32 0, metadata !377, null}
!379 = metadata !{i32 443, i32 0, metadata !362, null}
!380 = metadata !{i32 444, i32 0, metadata !362, null}
!381 = metadata !{i32 445, i32 0, metadata !362, null}
!382 = metadata !{i32 449, i32 0, metadata !169, null}
!383 = metadata !{i32 450, i32 0, metadata !169, null}
!384 = metadata !{i32 451, i32 0, metadata !169, null}
!385 = metadata !{i32 452, i32 0, metadata !169, null}
!386 = metadata !{i32 459, i32 0, metadata !169, null}
!387 = metadata !{i32 460, i32 0, metadata !169, null}
!388 = metadata !{i32 461, i32 0, metadata !169, null}
!389 = metadata !{i32 464, i32 0, metadata !139, null}
!390 = metadata !{i32 466, i32 0, metadata !139, null}
!391 = metadata !{i32 478, i32 0, metadata !171, null}
!392 = metadata !{i32 479, i32 0, metadata !171, null}
!393 = metadata !{i32 481, i32 0, metadata !171, null}
!394 = metadata !{i32 482, i32 0, metadata !171, null}
!395 = metadata !{i32 488, i32 0, metadata !171, null}
!396 = metadata !{i32 489, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !171, i32 488, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!398 = metadata !{i32 491, i32 0, metadata !397, null}
!399 = metadata !{i32 493, i32 0, metadata !171, null}
!400 = metadata !{i32 495, i32 0, metadata !171, null}
!401 = metadata !{i32 496, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !171, i32 496, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!403 = metadata !{i32 497, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !402, i32 496, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c]
!405 = metadata !{i32 506, i32 0, metadata !171, null}

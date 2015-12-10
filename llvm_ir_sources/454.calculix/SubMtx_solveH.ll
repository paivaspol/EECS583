; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A mtxB has bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A mtxB has bad mode %d\0A\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A mtxA->nrow = %d, mtxB->nrwo = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtx_solveH(%p,%p)\0A bad mode %d\0A\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error, irowA = %d, kk =%d, ii = %d, jj = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_solveH(%struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #0 {
entry:
  %entriesA.i187 = alloca double*, align 8
  %entriesB.i188 = alloca double*, align 8
  %inc1.i189 = alloca i32, align 4
  %inc2.i190 = alloca i32, align 4
  %ncolB.i191 = alloca i32, align 4
  %nentA.i192 = alloca i32, align 4
  %nrowA.i193 = alloca i32, align 4
  %nrowB.i194 = alloca i32, align 4
  %indicesA.i195 = alloca i32*, align 8
  %sizesA.i196 = alloca i32*, align 8
  %entriesA.i123 = alloca double*, align 8
  %entriesB.i124 = alloca double*, align 8
  %inc1.i125 = alloca i32, align 4
  %inc2.i126 = alloca i32, align 4
  %ncolB.i127 = alloca i32, align 4
  %nentA.i128 = alloca i32, align 4
  %nrowA.i129 = alloca i32, align 4
  %nrowB.i130 = alloca i32, align 4
  %firstlocsA.i131 = alloca i32*, align 8
  %sizesA.i132 = alloca i32*, align 8
  %entriesA.i53 = alloca double*, align 8
  %entriesB.i54 = alloca double*, align 8
  %inc1.i55 = alloca i32, align 4
  %inc2.i56 = alloca i32, align 4
  %ncolB.i57 = alloca i32, align 4
  %nentA.i58 = alloca i32, align 4
  %nrowA.i59 = alloca i32, align 4
  %nrowB.i60 = alloca i32, align 4
  %indicesA.i = alloca i32*, align 8
  %sizesA.i61 = alloca i32*, align 8
  %entriesA.i = alloca double*, align 8
  %entriesB.i = alloca double*, align 8
  %inc1.i = alloca i32, align 4
  %inc2.i = alloca i32, align 4
  %ncolB.i = alloca i32, align 4
  %nentA.i = alloca i32, align 4
  %nrowA.i = alloca i32, align 4
  %nrowB.i = alloca i32, align 4
  %firstlocsA.i = alloca i32*, align 8
  %sizesA.i = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !37), !dbg !186
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !38), !dbg !187
  %cmp = icmp eq %struct._SubMtx* %mtxA, null, !dbg !188
  %cmp1 = icmp eq %struct._SubMtx* %mtxB, null, !dbg !188
  %or.cond = or i1 %cmp, %cmp1, !dbg !188
  br i1 %or.cond, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !191
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #6, !dbg !189
  call void @exit(i32 -1) #7, !dbg !194
  unreachable, !dbg !194

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 0, !dbg !195
  %1 = load i32* %type, align 4, !dbg !195, !tbaa !196
  %cmp2 = icmp eq i32 %1, 2, !dbg !195
  br i1 %cmp2, label %if.end6, label %if.then3, !dbg !195

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !197, !tbaa !191
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %1) #6, !dbg !197
  call void @exit(i32 -1) #7, !dbg !199
  unreachable, !dbg !199

if.end6:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 1, !dbg !200
  %3 = load i32* %mode, align 4, !dbg !200, !tbaa !196
  %cmp7 = icmp eq i32 %3, 1, !dbg !200
  br i1 %cmp7, label %if.end11, label %if.then8, !dbg !200

if.then8:                                         ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !201, !tbaa !191
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %3) #6, !dbg !201
  call void @exit(i32 -1) #7, !dbg !203
  unreachable, !dbg !203

if.end11:                                         ; preds = %if.end6
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4, !dbg !204
  %5 = load i32* %nrow, align 4, !dbg !204, !tbaa !196
  %nrow12 = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 4, !dbg !204
  %6 = load i32* %nrow12, align 4, !dbg !204, !tbaa !196
  %cmp13 = icmp eq i32 %5, %6, !dbg !204
  br i1 %cmp13, label %if.end18, label %if.then14, !dbg !204

if.then14:                                        ; preds = %if.end11
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !205, !tbaa !191
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %5, i32 %6) #6, !dbg !205
  call void @exit(i32 -1) #7, !dbg !207
  unreachable, !dbg !207

if.end18:                                         ; preds = %if.end11
  %mode19 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !208
  %8 = load i32* %mode19, align 4, !dbg !208, !tbaa !196
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb
    i32 2, label %sw.bb20
    i32 6, label %sw.bb21
    i32 3, label %sw.bb22
  ], !dbg !208

sw.bb:                                            ; preds = %if.end18
  %9 = bitcast double** %entriesA.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 8, i8* %9) #5, !dbg !209
  %10 = bitcast double** %entriesB.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 8, i8* %10) #5, !dbg !209
  %11 = bitcast i32* %inc1.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 4, i8* %11) #5, !dbg !209
  %12 = bitcast i32* %inc2.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 4, i8* %12) #5, !dbg !209
  %13 = bitcast i32* %ncolB.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 4, i8* %13) #5, !dbg !209
  %14 = bitcast i32* %nentA.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 4, i8* %14) #5, !dbg !209
  %15 = bitcast i32* %nrowA.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 4, i8* %15) #5, !dbg !209
  %16 = bitcast i32* %nrowB.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 4, i8* %16) #5, !dbg !209
  %17 = bitcast i32** %firstlocsA.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 8, i8* %17) #5, !dbg !209
  %18 = bitcast i32** %sizesA.i to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 8, i8* %18) #5, !dbg !209
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !212) #5, !dbg !209
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !213) #5, !dbg !214
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i}, metadata !89) #5, !dbg !215
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i}, metadata !90) #5, !dbg !215
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i}, metadata !94) #5, !dbg !216
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i}, metadata !95) #5, !dbg !216
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i}, metadata !101) #5, !dbg !217
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i}, metadata !102) #5, !dbg !217
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i}, metadata !103) #5, !dbg !217
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i}, metadata !104) #5, !dbg !217
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i}, metadata !106) #5, !dbg !218
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i}, metadata !107) #5, !dbg !218
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, i32* %nentA.i, i32** %firstlocsA.i, i32** %sizesA.i, double** %entriesA.i) #6, !dbg !219
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i, i32* %ncolB.i, i32* %inc1.i, i32* %inc2.i, double** %entriesB.i) #6, !dbg !220
  call void @llvm.dbg.value(metadata !{double** %entriesB.i}, i64 0, metadata !221) #5, !dbg !222
  call void @llvm.dbg.value(metadata !{double** %entriesB.i}, i64 0, metadata !90), !dbg !222
  %19 = load double** %entriesB.i, align 8, !dbg !222, !tbaa !191
  call void @llvm.dbg.value(metadata !{double* %19}, i64 0, metadata !223) #5, !dbg !222
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !224) #5, !dbg !225
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !227) #5, !dbg !225
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !101), !dbg !225
  %20 = load i32* %ncolB.i, align 4, !dbg !225, !tbaa !196
  %sub410.i = add nsw i32 %20, -2, !dbg !225
  %cmp411.i = icmp sgt i32 %sub410.i, 0, !dbg !225
  br i1 %cmp411.i, label %for.body.lr.ph.i, label %for.end87.i, !dbg !225

for.body.lr.ph.i:                                 ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !228) #5, !dbg !229
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !104), !dbg !229
  %21 = load i32* %nrowB.i, align 4, !dbg !229, !tbaa !196
  %mul.i = shl nsw i32 %21, 1, !dbg !229
  %idx.ext.i = sext i32 %mul.i to i64, !dbg !229
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1, !dbg !231
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !232) #5, !dbg !233
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !103), !dbg !233
  %22 = load i32* %nrowA.i, align 4, !dbg !233, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !235) #5, !dbg !233
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !102), !dbg !233
  %23 = load i32* %nentA.i, align 4, !dbg !233, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !236) #5, !dbg !237
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !107), !dbg !237
  %24 = load i32** %sizesA.i, align 8, !dbg !237, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !239) #5, !dbg !240
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !106), !dbg !240
  %25 = load i32** %firstlocsA.i, align 8, !dbg !240, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !242) #5, !dbg !243
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !89), !dbg !243
  %26 = load double** %entriesA.i, align 8, !dbg !243, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !228) #5, !dbg !246
  %add.ptr3.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i, !dbg !246
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !227) #5, !dbg !225
  br label %for.body.i, !dbg !225

for.body.i:                                       ; preds = %for.end81.i, %for.body.lr.ph.i
  %jcolB.0413.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add86.i, %for.end81.i ]
  %colB0.0412.i = phi double* [ %19, %for.body.lr.ph.i ], [ %add.ptr84.i, %for.end81.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !228) #5, !dbg !229
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !232) #5, !dbg !233
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !235) #5, !dbg !233
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !247) #5, !dbg !233
  br label %for.cond5.outer.i, !dbg !233

for.cond5.outer.i:                                ; preds = %if.then.i, %for.body33.i, %for.body.i
  %colstart.0.ph.i = phi i32 [ %23, %for.body.i ], [ %sub16.i, %for.body33.i ], [ %sub16.i, %if.then.i ]
  %irowA.0.in.ph.i = phi i32 [ %22, %for.body.i ], [ %irowA.0.i, %for.body33.i ], [ %irowA.0.i, %if.then.i ]
  %27 = sext i32 %irowA.0.in.ph.i to i64
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.body7.i, %for.cond5.outer.i
  %indvars.iv432.i = phi i64 [ %27, %for.cond5.outer.i ], [ %indvars.iv.next433.i, %for.body7.i ]
  %irowA.0.in.i = phi i32 [ %irowA.0.in.ph.i, %for.cond5.outer.i ], [ %irowA.0.i, %for.body7.i ]
  %indvars.iv.next433.i = add i64 %indvars.iv432.i, -1, !dbg !237
  %irowA.0.i = add nsw i32 %irowA.0.in.i, -1, !dbg !233
  %28 = trunc i64 %indvars.iv432.i to i32, !dbg !233
  %cmp6.i = icmp sgt i32 %28, 0, !dbg !233
  br i1 %cmp6.i, label %for.body7.i, label %for.end81.i, !dbg !233

for.body7.i:                                      ; preds = %for.cond5.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !236) #5, !dbg !237
  %arrayidx.i = getelementptr inbounds i32* %24, i64 %indvars.iv.next433.i, !dbg !237
  %29 = load i32* %arrayidx.i, align 4, !dbg !237, !tbaa !196
  %cmp8.i = icmp sgt i32 %29, 0, !dbg !237
  br i1 %cmp8.i, label %if.then.i, label %for.cond5.i, !dbg !237

if.then.i:                                        ; preds = %for.body7.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !239) #5, !dbg !240
  %arrayidx10.i = getelementptr inbounds i32* %25, i64 %indvars.iv.next433.i, !dbg !240
  %30 = load i32* %arrayidx10.i, align 4, !dbg !240, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !248) #5, !dbg !240
  %add.i = add i32 %29, -1, !dbg !249
  %sub13.i = add i32 %add.i, %30, !dbg !249
  call void @llvm.dbg.value(metadata !{i32 %sub13.i}, i64 0, metadata !250) #5, !dbg !249
  %sub14.neg.i = add i32 %colstart.0.ph.i, -1, !dbg !251
  %add15.neg.i = add i32 %sub14.neg.i, %30, !dbg !251
  %sub16.i = sub i32 %add15.neg.i, %sub13.i, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %sub16.i}, i64 0, metadata !247) #5, !dbg !251
  %mul17.i = shl nsw i32 %irowA.0.i, 1, !dbg !252
  call void @llvm.dbg.value(metadata !{i32 %mul17.i}, i64 0, metadata !253) #5, !dbg !252
  %add18381.i = or i32 %mul17.i, 1, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %add18381.i}, i64 0, metadata !255) #5, !dbg !254
  %idxprom19.i = sext i32 %mul17.i to i64, !dbg !256
  %arrayidx20.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom19.i, !dbg !256
  %31 = load double* %arrayidx20.i, align 8, !dbg !256, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %31}, i64 0, metadata !258) #5, !dbg !256
  %idxprom21.i = sext i32 %add18381.i to i64, !dbg !256
  %arrayidx22.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom21.i, !dbg !256
  %32 = load double* %arrayidx22.i, align 8, !dbg !256, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %32}, i64 0, metadata !259) #5, !dbg !256
  %add.ptr.sum382.i = add i64 %idxprom19.i, %idx.ext.i, !dbg !260
  %arrayidx24.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum382.i, !dbg !260
  %33 = load double* %arrayidx24.i, align 8, !dbg !260, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %33}, i64 0, metadata !261) #5, !dbg !260
  %add.ptr.sum383.i = add i64 %idxprom21.i, %idx.ext.i, !dbg !260
  %arrayidx26.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum383.i, !dbg !260
  %34 = load double* %arrayidx26.i, align 8, !dbg !260, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %34}, i64 0, metadata !262) #5, !dbg !260
  %add.ptr3.sum384.i = add i64 %idxprom19.i, %add.ptr.sum.i, !dbg !263
  %arrayidx28.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum384.i, !dbg !263
  %35 = load double* %arrayidx28.i, align 8, !dbg !263, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %35}, i64 0, metadata !264) #5, !dbg !263
  %add.ptr3.sum385.i = add i64 %idxprom21.i, %add.ptr.sum.i, !dbg !263
  %arrayidx30.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum385.i, !dbg !263
  %36 = load double* %arrayidx30.i, align 8, !dbg !263, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %36}, i64 0, metadata !265) #5, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !266) #5, !dbg !267
  call void @llvm.dbg.value(metadata !{i32 %sub16.i}, i64 0, metadata !268) #5, !dbg !267
  %cmp32404.i = icmp sgt i32 %30, %sub13.i, !dbg !267
  br i1 %cmp32404.i, label %for.cond5.outer.i, label %for.body33.lr.ph.i, !dbg !267

for.body33.lr.ph.i:                               ; preds = %if.then.i
  %37 = sub i32 %colstart.0.ph.i, %29, !dbg !267
  %38 = sext i32 %37 to i64
  %39 = sext i32 %30 to i64, !dbg !267
  br label %for.body33.i, !dbg !267

for.body33.i:                                     ; preds = %for.body33.i, %for.body33.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i, %for.body33.i ], [ %39, %for.body33.lr.ph.i ], !dbg !267
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i, %for.body33.i ], [ %38, %for.body33.lr.ph.i ]
  %40 = trunc i64 %indvars.iv434.i to i32, !dbg !243
  %mul34.i = shl nsw i32 %40, 1, !dbg !243
  %idxprom35.i = sext i32 %mul34.i to i64, !dbg !243
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !242) #5, !dbg !243
  %arrayidx36.i = getelementptr inbounds double* %26, i64 %idxprom35.i, !dbg !243
  %41 = load double* %arrayidx36.i, align 8, !dbg !243, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %41}, i64 0, metadata !269) #5, !dbg !243
  %add38386.i = or i32 %mul34.i, 1, !dbg !270
  %idxprom39.i = sext i32 %add38386.i to i64, !dbg !270
  %arrayidx40.i = getelementptr inbounds double* %26, i64 %idxprom39.i, !dbg !270
  %42 = load double* %arrayidx40.i, align 8, !dbg !270, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %42}, i64 0, metadata !271) #5, !dbg !270
  %43 = trunc i64 %indvars.iv436.i to i32, !dbg !272
  %mul41.i = shl nsw i32 %43, 1, !dbg !272
  call void @llvm.dbg.value(metadata !{i32 %mul41.i}, i64 0, metadata !253) #5, !dbg !272
  %add42387.i = or i32 %mul41.i, 1, !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %add42387.i}, i64 0, metadata !255) #5, !dbg !273
  %mul43.i = fmul double %31, %41, !dbg !274
  %mul44.i = fmul double %32, %42, !dbg !274
  %add45.i = fadd double %mul43.i, %mul44.i, !dbg !274
  %idxprom46.i = sext i32 %mul41.i to i64, !dbg !274
  %arrayidx47.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom46.i, !dbg !274
  %44 = load double* %arrayidx47.i, align 8, !dbg !274, !tbaa !257
  %sub48.i = fsub double %44, %add45.i, !dbg !274
  store double %sub48.i, double* %arrayidx47.i, align 8, !dbg !274, !tbaa !257
  %mul49.i = fmul double %32, %41, !dbg !275
  %mul50.i = fmul double %31, %42, !dbg !275
  %sub51.i = fsub double %mul49.i, %mul50.i, !dbg !275
  %idxprom52.i = sext i32 %add42387.i to i64, !dbg !275
  %arrayidx53.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom52.i, !dbg !275
  %45 = load double* %arrayidx53.i, align 8, !dbg !275, !tbaa !257
  %sub54.i = fsub double %45, %sub51.i, !dbg !275
  store double %sub54.i, double* %arrayidx53.i, align 8, !dbg !275, !tbaa !257
  %mul55.i = fmul double %33, %41, !dbg !276
  %mul56.i = fmul double %34, %42, !dbg !276
  %add57.i = fadd double %mul55.i, %mul56.i, !dbg !276
  %add.ptr.sum388.i = add i64 %idxprom46.i, %idx.ext.i, !dbg !276
  %arrayidx59.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum388.i, !dbg !276
  %46 = load double* %arrayidx59.i, align 8, !dbg !276, !tbaa !257
  %sub60.i = fsub double %46, %add57.i, !dbg !276
  store double %sub60.i, double* %arrayidx59.i, align 8, !dbg !276, !tbaa !257
  %mul61.i = fmul double %34, %41, !dbg !277
  %mul62.i = fmul double %33, %42, !dbg !277
  %sub63.i = fsub double %mul61.i, %mul62.i, !dbg !277
  %add.ptr.sum389.i = add i64 %idxprom52.i, %idx.ext.i, !dbg !277
  %arrayidx65.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum389.i, !dbg !277
  %47 = load double* %arrayidx65.i, align 8, !dbg !277, !tbaa !257
  %sub66.i = fsub double %47, %sub63.i, !dbg !277
  store double %sub66.i, double* %arrayidx65.i, align 8, !dbg !277, !tbaa !257
  %mul67.i = fmul double %35, %41, !dbg !278
  %mul68.i = fmul double %36, %42, !dbg !278
  %add69.i = fadd double %mul67.i, %mul68.i, !dbg !278
  %add.ptr3.sum390.i = add i64 %idxprom46.i, %add.ptr.sum.i, !dbg !278
  %arrayidx71.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum390.i, !dbg !278
  %48 = load double* %arrayidx71.i, align 8, !dbg !278, !tbaa !257
  %sub72.i = fsub double %48, %add69.i, !dbg !278
  store double %sub72.i, double* %arrayidx71.i, align 8, !dbg !278, !tbaa !257
  %mul73.i = fmul double %36, %41, !dbg !279
  %mul74.i = fmul double %35, %42, !dbg !279
  %sub75.i = fsub double %mul73.i, %mul74.i, !dbg !279
  %add.ptr3.sum391.i = add i64 %idxprom52.i, %add.ptr.sum.i, !dbg !279
  %arrayidx77.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum391.i, !dbg !279
  %49 = load double* %arrayidx77.i, align 8, !dbg !279, !tbaa !257
  %sub78.i = fsub double %49, %sub75.i, !dbg !279
  store double %sub78.i, double* %arrayidx77.i, align 8, !dbg !279, !tbaa !257
  %indvars.iv.next437.i = add i64 %indvars.iv436.i, 1, !dbg !267
  %indvars.iv.next435.i = add i64 %indvars.iv434.i, 1, !dbg !267
  %cmp32.i = icmp slt i32 %43, %sub13.i, !dbg !267
  br i1 %cmp32.i, label %for.body33.i, label %for.cond5.outer.i, !dbg !267

for.end81.i:                                      ; preds = %for.cond5.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !228) #5, !dbg !246
  %add.ptr84.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum.i, !dbg !246
  call void @llvm.dbg.value(metadata !{double* %add.ptr84.i}, i64 0, metadata !223) #5, !dbg !246
  %add86.i = add nsw i32 %jcolB.0413.i, 3, !dbg !225
  call void @llvm.dbg.value(metadata !{i32 %add86.i}, i64 0, metadata !224) #5, !dbg !225
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !227) #5, !dbg !225
  %cmp.i = icmp slt i32 %add86.i, %sub410.i, !dbg !225
  br i1 %cmp.i, label %for.body.i, label %for.end87.i, !dbg !225

for.end87.i:                                      ; preds = %for.end81.i, %sw.bb
  %jcolB.0.lcssa.i = phi i32 [ 0, %sw.bb ], [ %add86.i, %for.end81.i ]
  %colB0.0.lcssa.i = phi double* [ %19, %sw.bb ], [ %add.ptr84.i, %for.end81.i ]
  %cmp89.i = icmp eq i32 %jcolB.0.lcssa.i, %sub410.i, !dbg !280
  br i1 %cmp89.i, label %if.then90.i, label %if.else.i, !dbg !280

if.then90.i:                                      ; preds = %for.end87.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !228) #5, !dbg !281
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !104), !dbg !281
  %50 = load i32* %nrowB.i, align 4, !dbg !281, !tbaa !196
  %mul91.i = shl nsw i32 %50, 1, !dbg !281
  %idx.ext92.i = sext i32 %mul91.i to i64, !dbg !281
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !232) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !103), !dbg !283
  %51 = load i32* %nrowA.i, align 4, !dbg !283, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !235) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !102), !dbg !283
  %52 = load i32* %nentA.i, align 4, !dbg !283, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !247) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !236) #5, !dbg !285
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !107), !dbg !285
  %53 = load i32** %sizesA.i, align 8, !dbg !285, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !239) #5, !dbg !287
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !106), !dbg !287
  %54 = load i32** %firstlocsA.i, align 8, !dbg !287, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !242) #5, !dbg !289
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !89), !dbg !289
  %55 = load double** %entriesA.i, align 8, !dbg !289, !tbaa !191
  br label %for.cond95.outer.i, !dbg !283

for.cond95.outer.i:                               ; preds = %if.then101.i, %for.body123.i, %if.then90.i
  %colstart.2.ph.i = phi i32 [ %52, %if.then90.i ], [ %sub110.i, %for.body123.i ], [ %sub110.i, %if.then101.i ]
  %irowA.1.in.ph.i = phi i32 [ %51, %if.then90.i ], [ %irowA.1.i, %for.body123.i ], [ %irowA.1.i, %if.then101.i ]
  %56 = sext i32 %irowA.1.in.ph.i to i64
  br label %for.cond95.i

for.cond95.i:                                     ; preds = %for.body97.i, %for.cond95.outer.i
  %indvars.iv.i = phi i64 [ %56, %for.cond95.outer.i ], [ %indvars.iv.next.i, %for.body97.i ]
  %irowA.1.in.i = phi i32 [ %irowA.1.in.ph.i, %for.cond95.outer.i ], [ %irowA.1.i, %for.body97.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1, !dbg !285
  %irowA.1.i = add nsw i32 %irowA.1.in.i, -1, !dbg !283
  %57 = trunc i64 %indvars.iv.i to i32, !dbg !283
  %cmp96.i = icmp sgt i32 %57, 0, !dbg !283
  br i1 %cmp96.i, label %for.body97.i, label %sw.epilog, !dbg !283

for.body97.i:                                     ; preds = %for.cond95.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !236) #5, !dbg !285
  %arrayidx99.i = getelementptr inbounds i32* %53, i64 %indvars.iv.next.i, !dbg !285
  %58 = load i32* %arrayidx99.i, align 4, !dbg !285, !tbaa !196
  %cmp100.i = icmp sgt i32 %58, 0, !dbg !285
  br i1 %cmp100.i, label %if.then101.i, label %for.cond95.i, !dbg !285

if.then101.i:                                     ; preds = %for.body97.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !239) #5, !dbg !287
  %arrayidx103.i = getelementptr inbounds i32* %54, i64 %indvars.iv.next.i, !dbg !287
  %59 = load i32* %arrayidx103.i, align 4, !dbg !287, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !248) #5, !dbg !287
  %add106.i = add i32 %58, -1, !dbg !292
  %sub107.i = add i32 %add106.i, %59, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %sub107.i}, i64 0, metadata !250) #5, !dbg !292
  %sub108.neg.i = add i32 %colstart.2.ph.i, -1, !dbg !293
  %add109.neg.i = add i32 %sub108.neg.i, %59, !dbg !293
  %sub110.i = sub i32 %add109.neg.i, %sub107.i, !dbg !293
  call void @llvm.dbg.value(metadata !{i32 %sub110.i}, i64 0, metadata !247) #5, !dbg !293
  %mul111.i = shl nsw i32 %irowA.1.i, 1, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %mul111.i}, i64 0, metadata !253) #5, !dbg !294
  %add112375.i = or i32 %mul111.i, 1, !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %add112375.i}, i64 0, metadata !255) #5, !dbg !295
  %idxprom113.i = sext i32 %mul111.i to i64, !dbg !296
  %arrayidx114.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom113.i, !dbg !296
  %60 = load double* %arrayidx114.i, align 8, !dbg !296, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %60}, i64 0, metadata !258) #5, !dbg !296
  %idxprom115.i = sext i32 %add112375.i to i64, !dbg !296
  %arrayidx116.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom115.i, !dbg !296
  %61 = load double* %arrayidx116.i, align 8, !dbg !296, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %61}, i64 0, metadata !259) #5, !dbg !296
  %add.ptr93.sum.i = add i64 %idxprom113.i, %idx.ext92.i, !dbg !297
  %arrayidx118.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum.i, !dbg !297
  %62 = load double* %arrayidx118.i, align 8, !dbg !297, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %62}, i64 0, metadata !261) #5, !dbg !297
  %add.ptr93.sum376.i = add i64 %idxprom115.i, %idx.ext92.i, !dbg !297
  %arrayidx120.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum376.i, !dbg !297
  %63 = load double* %arrayidx120.i, align 8, !dbg !297, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %63}, i64 0, metadata !262) #5, !dbg !297
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !266) #5, !dbg !298
  call void @llvm.dbg.value(metadata !{i32 %sub110.i}, i64 0, metadata !268) #5, !dbg !298
  %cmp122394.i = icmp sgt i32 %59, %sub107.i, !dbg !298
  br i1 %cmp122394.i, label %for.cond95.outer.i, label %for.body123.lr.ph.i, !dbg !298

for.body123.lr.ph.i:                              ; preds = %if.then101.i
  %64 = sub i32 %colstart.2.ph.i, %58, !dbg !298
  %65 = sext i32 %64 to i64
  %66 = sext i32 %59 to i64, !dbg !298
  br label %for.body123.i, !dbg !298

for.body123.i:                                    ; preds = %for.body123.i, %for.body123.lr.ph.i
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %for.body123.i ], [ %66, %for.body123.lr.ph.i ], !dbg !298
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i, %for.body123.i ], [ %65, %for.body123.lr.ph.i ]
  %67 = trunc i64 %indvars.iv418.i to i32, !dbg !289
  %mul124.i = shl nsw i32 %67, 1, !dbg !289
  %idxprom125.i = sext i32 %mul124.i to i64, !dbg !289
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !242) #5, !dbg !289
  %arrayidx126.i = getelementptr inbounds double* %55, i64 %idxprom125.i, !dbg !289
  %68 = load double* %arrayidx126.i, align 8, !dbg !289, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %68}, i64 0, metadata !269) #5, !dbg !289
  %add128377.i = or i32 %mul124.i, 1, !dbg !299
  %idxprom129.i = sext i32 %add128377.i to i64, !dbg !299
  %arrayidx130.i = getelementptr inbounds double* %55, i64 %idxprom129.i, !dbg !299
  %69 = load double* %arrayidx130.i, align 8, !dbg !299, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %69}, i64 0, metadata !271) #5, !dbg !299
  %70 = trunc i64 %indvars.iv420.i to i32, !dbg !300
  %mul131.i = shl nsw i32 %70, 1, !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %mul131.i}, i64 0, metadata !253) #5, !dbg !300
  %add132378.i = or i32 %mul131.i, 1, !dbg !301
  call void @llvm.dbg.value(metadata !{i32 %add132378.i}, i64 0, metadata !255) #5, !dbg !301
  %mul133.i = fmul double %60, %68, !dbg !302
  %mul134.i = fmul double %61, %69, !dbg !302
  %add135.i = fadd double %mul133.i, %mul134.i, !dbg !302
  %idxprom136.i = sext i32 %mul131.i to i64, !dbg !302
  %arrayidx137.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom136.i, !dbg !302
  %71 = load double* %arrayidx137.i, align 8, !dbg !302, !tbaa !257
  %sub138.i = fsub double %71, %add135.i, !dbg !302
  store double %sub138.i, double* %arrayidx137.i, align 8, !dbg !302, !tbaa !257
  %mul139.i = fmul double %61, %68, !dbg !303
  %mul140.i = fmul double %60, %69, !dbg !303
  %sub141.i = fsub double %mul139.i, %mul140.i, !dbg !303
  %idxprom142.i = sext i32 %add132378.i to i64, !dbg !303
  %arrayidx143.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom142.i, !dbg !303
  %72 = load double* %arrayidx143.i, align 8, !dbg !303, !tbaa !257
  %sub144.i = fsub double %72, %sub141.i, !dbg !303
  store double %sub144.i, double* %arrayidx143.i, align 8, !dbg !303, !tbaa !257
  %mul145.i = fmul double %62, %68, !dbg !304
  %mul146.i = fmul double %63, %69, !dbg !304
  %add147.i = fadd double %mul145.i, %mul146.i, !dbg !304
  %add.ptr93.sum379.i = add i64 %idxprom136.i, %idx.ext92.i, !dbg !304
  %arrayidx149.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum379.i, !dbg !304
  %73 = load double* %arrayidx149.i, align 8, !dbg !304, !tbaa !257
  %sub150.i = fsub double %73, %add147.i, !dbg !304
  store double %sub150.i, double* %arrayidx149.i, align 8, !dbg !304, !tbaa !257
  %mul151.i = fmul double %63, %68, !dbg !305
  %mul152.i = fmul double %62, %69, !dbg !305
  %sub153.i = fsub double %mul151.i, %mul152.i, !dbg !305
  %add.ptr93.sum380.i = add i64 %idxprom142.i, %idx.ext92.i, !dbg !305
  %arrayidx155.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr93.sum380.i, !dbg !305
  %74 = load double* %arrayidx155.i, align 8, !dbg !305, !tbaa !257
  %sub156.i = fsub double %74, %sub153.i, !dbg !305
  store double %sub156.i, double* %arrayidx155.i, align 8, !dbg !305, !tbaa !257
  %indvars.iv.next421.i = add i64 %indvars.iv420.i, 1, !dbg !298
  %indvars.iv.next419.i = add i64 %indvars.iv418.i, 1, !dbg !298
  %cmp122.i = icmp slt i32 %70, %sub107.i, !dbg !298
  br i1 %cmp122.i, label %for.body123.i, label %for.cond95.outer.i, !dbg !298

if.else.i:                                        ; preds = %for.end87.i
  %sub165.i = add nsw i32 %20, -1, !dbg !306
  %cmp166.i = icmp eq i32 %jcolB.0.lcssa.i, %sub165.i, !dbg !306
  br i1 %cmp166.i, label %if.then167.i, label %sw.epilog, !dbg !306

if.then167.i:                                     ; preds = %if.else.i
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !232) #5, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !103), !dbg !307
  %75 = load i32* %nrowA.i, align 4, !dbg !307, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !235) #5, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !102), !dbg !307
  %76 = load i32* %nentA.i, align 4, !dbg !307, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !247) #5, !dbg !307
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !236) #5, !dbg !310
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !107), !dbg !310
  %77 = load i32** %sizesA.i, align 8, !dbg !310, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !239) #5, !dbg !312
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !106), !dbg !312
  %78 = load i32** %firstlocsA.i, align 8, !dbg !312, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !242) #5, !dbg !314
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !89), !dbg !314
  %79 = load double** %entriesA.i, align 8, !dbg !314, !tbaa !191
  br label %for.cond169.outer.i, !dbg !307

for.cond169.outer.i:                              ; preds = %if.then175.i, %for.body193.i, %if.then167.i
  %colstart.4.ph.i = phi i32 [ %76, %if.then167.i ], [ %sub184.i, %for.body193.i ], [ %sub184.i, %if.then175.i ]
  %irowA.2.in.ph.i = phi i32 [ %75, %if.then167.i ], [ %irowA.2.i, %for.body193.i ], [ %irowA.2.i, %if.then175.i ]
  %80 = sext i32 %irowA.2.in.ph.i to i64
  br label %for.cond169.i

for.cond169.i:                                    ; preds = %for.body171.i, %for.cond169.outer.i
  %indvars.iv424.i = phi i64 [ %80, %for.cond169.outer.i ], [ %indvars.iv.next425.i, %for.body171.i ]
  %irowA.2.in.i = phi i32 [ %irowA.2.in.ph.i, %for.cond169.outer.i ], [ %irowA.2.i, %for.body171.i ]
  %indvars.iv.next425.i = add i64 %indvars.iv424.i, -1, !dbg !310
  %irowA.2.i = add nsw i32 %irowA.2.in.i, -1, !dbg !307
  %81 = trunc i64 %indvars.iv424.i to i32, !dbg !307
  %cmp170.i = icmp sgt i32 %81, 0, !dbg !307
  br i1 %cmp170.i, label %for.body171.i, label %sw.epilog, !dbg !307

for.body171.i:                                    ; preds = %for.cond169.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !236) #5, !dbg !310
  %arrayidx173.i = getelementptr inbounds i32* %77, i64 %indvars.iv.next425.i, !dbg !310
  %82 = load i32* %arrayidx173.i, align 4, !dbg !310, !tbaa !196
  %cmp174.i = icmp sgt i32 %82, 0, !dbg !310
  br i1 %cmp174.i, label %if.then175.i, label %for.cond169.i, !dbg !310

if.then175.i:                                     ; preds = %for.body171.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !239) #5, !dbg !312
  %arrayidx177.i = getelementptr inbounds i32* %78, i64 %indvars.iv.next425.i, !dbg !312
  %83 = load i32* %arrayidx177.i, align 4, !dbg !312, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !248) #5, !dbg !312
  %add180.i = add i32 %82, -1, !dbg !317
  %sub181.i = add i32 %add180.i, %83, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %sub181.i}, i64 0, metadata !250) #5, !dbg !317
  %sub182.neg.i = add i32 %colstart.4.ph.i, -1, !dbg !318
  %add183.neg.i = add i32 %sub182.neg.i, %83, !dbg !318
  %sub184.i = sub i32 %add183.neg.i, %sub181.i, !dbg !318
  call void @llvm.dbg.value(metadata !{i32 %sub184.i}, i64 0, metadata !247) #5, !dbg !318
  %mul185.i = shl nsw i32 %irowA.2.i, 1, !dbg !319
  call void @llvm.dbg.value(metadata !{i32 %mul185.i}, i64 0, metadata !253) #5, !dbg !319
  %add186372.i = or i32 %mul185.i, 1, !dbg !320
  call void @llvm.dbg.value(metadata !{i32 %add186372.i}, i64 0, metadata !255) #5, !dbg !320
  %idxprom187.i = sext i32 %mul185.i to i64, !dbg !321
  %arrayidx188.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom187.i, !dbg !321
  %84 = load double* %arrayidx188.i, align 8, !dbg !321, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %84}, i64 0, metadata !258) #5, !dbg !321
  %idxprom189.i = sext i32 %add186372.i to i64, !dbg !321
  %arrayidx190.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom189.i, !dbg !321
  %85 = load double* %arrayidx190.i, align 8, !dbg !321, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %85}, i64 0, metadata !259) #5, !dbg !321
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !266) #5, !dbg !322
  call void @llvm.dbg.value(metadata !{i32 %sub184.i}, i64 0, metadata !268) #5, !dbg !322
  %cmp192398.i = icmp sgt i32 %83, %sub181.i, !dbg !322
  br i1 %cmp192398.i, label %for.cond169.outer.i, label %for.body193.lr.ph.i, !dbg !322

for.body193.lr.ph.i:                              ; preds = %if.then175.i
  %86 = sub i32 %colstart.4.ph.i, %82, !dbg !322
  %87 = sext i32 %86 to i64
  %88 = sext i32 %83 to i64, !dbg !322
  br label %for.body193.i, !dbg !322

for.body193.i:                                    ; preds = %for.body193.i, %for.body193.lr.ph.i
  %indvars.iv428.i = phi i64 [ %indvars.iv.next429.i, %for.body193.i ], [ %88, %for.body193.lr.ph.i ], !dbg !322
  %indvars.iv426.i = phi i64 [ %indvars.iv.next427.i, %for.body193.i ], [ %87, %for.body193.lr.ph.i ]
  %89 = trunc i64 %indvars.iv426.i to i32, !dbg !314
  %mul194.i = shl nsw i32 %89, 1, !dbg !314
  %idxprom195.i = sext i32 %mul194.i to i64, !dbg !314
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !242) #5, !dbg !314
  %arrayidx196.i = getelementptr inbounds double* %79, i64 %idxprom195.i, !dbg !314
  %90 = load double* %arrayidx196.i, align 8, !dbg !314, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %90}, i64 0, metadata !269) #5, !dbg !314
  %add198373.i = or i32 %mul194.i, 1, !dbg !323
  %idxprom199.i = sext i32 %add198373.i to i64, !dbg !323
  %arrayidx200.i = getelementptr inbounds double* %79, i64 %idxprom199.i, !dbg !323
  %91 = load double* %arrayidx200.i, align 8, !dbg !323, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %91}, i64 0, metadata !271) #5, !dbg !323
  %92 = trunc i64 %indvars.iv428.i to i32, !dbg !324
  %mul201.i = shl nsw i32 %92, 1, !dbg !324
  call void @llvm.dbg.value(metadata !{i32 %mul201.i}, i64 0, metadata !253) #5, !dbg !324
  %add202374.i = or i32 %mul201.i, 1, !dbg !325
  call void @llvm.dbg.value(metadata !{i32 %add202374.i}, i64 0, metadata !255) #5, !dbg !325
  %mul203.i = fmul double %84, %90, !dbg !326
  %mul204.i = fmul double %85, %91, !dbg !326
  %add205.i = fadd double %mul203.i, %mul204.i, !dbg !326
  %idxprom206.i = sext i32 %mul201.i to i64, !dbg !326
  %arrayidx207.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom206.i, !dbg !326
  %93 = load double* %arrayidx207.i, align 8, !dbg !326, !tbaa !257
  %sub208.i = fsub double %93, %add205.i, !dbg !326
  store double %sub208.i, double* %arrayidx207.i, align 8, !dbg !326, !tbaa !257
  %mul209.i = fmul double %85, %90, !dbg !327
  %mul210.i = fmul double %84, %91, !dbg !327
  %sub211.i = fsub double %mul209.i, %mul210.i, !dbg !327
  %idxprom212.i = sext i32 %add202374.i to i64, !dbg !327
  %arrayidx213.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %idxprom212.i, !dbg !327
  %94 = load double* %arrayidx213.i, align 8, !dbg !327, !tbaa !257
  %sub214.i = fsub double %94, %sub211.i, !dbg !327
  store double %sub214.i, double* %arrayidx213.i, align 8, !dbg !327, !tbaa !257
  %indvars.iv.next429.i = add i64 %indvars.iv428.i, 1, !dbg !322
  %indvars.iv.next427.i = add i64 %indvars.iv426.i, 1, !dbg !322
  %cmp192.i = icmp slt i32 %92, %sub181.i, !dbg !322
  br i1 %cmp192.i, label %for.body193.i, label %for.cond169.outer.i, !dbg !322

sw.bb20:                                          ; preds = %if.end18
  %95 = bitcast double** %entriesA.i53 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 8, i8* %95) #5, !dbg !328
  %96 = bitcast double** %entriesB.i54 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 8, i8* %96) #5, !dbg !328
  %97 = bitcast i32* %inc1.i55 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 4, i8* %97) #5, !dbg !328
  %98 = bitcast i32* %inc2.i56 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 4, i8* %98) #5, !dbg !328
  %99 = bitcast i32* %ncolB.i57 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 4, i8* %99) #5, !dbg !328
  %100 = bitcast i32* %nentA.i58 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 4, i8* %100) #5, !dbg !328
  %101 = bitcast i32* %nrowA.i59 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 4, i8* %101) #5, !dbg !328
  %102 = bitcast i32* %nrowB.i60 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 4, i8* %102) #5, !dbg !328
  %103 = bitcast i32** %indicesA.i to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 8, i8* %103) #5, !dbg !328
  %104 = bitcast i32** %sizesA.i61 to i8*, !dbg !328
  call void @llvm.lifetime.start(i64 8, i8* %104) #5, !dbg !328
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !330) #5, !dbg !328
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !331) #5, !dbg !332
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i53}, metadata !54) #5, !dbg !333
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i54}, metadata !55) #5, !dbg !333
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i55}, metadata !59) #5, !dbg !334
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i56}, metadata !60) #5, !dbg !334
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i57}, metadata !65) #5, !dbg !335
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i58}, metadata !66) #5, !dbg !335
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i59}, metadata !67) #5, !dbg !335
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i60}, metadata !68) #5, !dbg !335
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i}, metadata !71) #5, !dbg !336
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i61}, metadata !73) #5, !dbg !336
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i59, i32* %nentA.i58, i32** %sizesA.i61, i32** %indicesA.i, double** %entriesA.i53) #6, !dbg !337
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i60, i32* %ncolB.i57, i32* %inc1.i55, i32* %inc2.i56, double** %entriesB.i54) #6, !dbg !338
  call void @llvm.dbg.value(metadata !{double** %entriesB.i54}, i64 0, metadata !339) #5, !dbg !340
  call void @llvm.dbg.value(metadata !{double** %entriesB.i54}, i64 0, metadata !55), !dbg !340
  %105 = load double** %entriesB.i54, align 8, !dbg !340, !tbaa !191
  call void @llvm.dbg.value(metadata !{double* %105}, i64 0, metadata !341) #5, !dbg !340
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !342) #5, !dbg !343
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i57}, i64 0, metadata !345) #5, !dbg !343
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i57}, i64 0, metadata !65), !dbg !343
  %106 = load i32* %ncolB.i57, align 4, !dbg !343, !tbaa !196
  %sub378.i = add nsw i32 %106, -2, !dbg !343
  %cmp379.i = icmp sgt i32 %sub378.i, 0, !dbg !343
  br i1 %cmp379.i, label %for.body.lr.ph.i66, label %for.end81.i102, !dbg !343

for.body.lr.ph.i66:                               ; preds = %sw.bb20
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i60}, i64 0, metadata !346) #5, !dbg !347
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i60}, i64 0, metadata !68), !dbg !347
  %107 = load i32* %nrowB.i60, align 4, !dbg !347, !tbaa !196
  %mul.i62 = shl nsw i32 %107, 1, !dbg !347
  %idx.ext.i63 = sext i32 %mul.i62 to i64, !dbg !347
  %add.ptr.sum.i64 = shl nsw i64 %idx.ext.i63, 1, !dbg !349
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i59}, i64 0, metadata !350) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i59}, i64 0, metadata !67), !dbg !351
  %108 = load i32* %nrowA.i59, align 4, !dbg !351, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32* %nentA.i58}, i64 0, metadata !353) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{i32* %nentA.i58}, i64 0, metadata !66), !dbg !351
  %109 = load i32* %nentA.i58, align 4, !dbg !351, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !354) #5, !dbg !355
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !73), !dbg !355
  %110 = load i32** %sizesA.i61, align 8, !dbg !355, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !357) #5, !dbg !358
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !54), !dbg !358
  %111 = load double** %entriesA.i53, align 8, !dbg !358, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !362) #5, !dbg !363
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !71), !dbg !363
  %112 = load i32** %indicesA.i, align 8, !dbg !363, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i60}, i64 0, metadata !346) #5, !dbg !364
  %add.ptr3.sum.i65 = add i64 %add.ptr.sum.i64, %idx.ext.i63, !dbg !364
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i57}, i64 0, metadata !345) #5, !dbg !343
  br label %for.body.i67, !dbg !343

for.body.i67:                                     ; preds = %for.end75.i, %for.body.lr.ph.i66
  %jcolB.0381.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %add80.i, %for.end75.i ]
  %colB0.0380.i = phi double* [ %105, %for.body.lr.ph.i66 ], [ %add.ptr78.i, %for.end75.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i60}, i64 0, metadata !346) #5, !dbg !347
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i59}, i64 0, metadata !350) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{i32* %nentA.i58}, i64 0, metadata !353) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !365) #5, !dbg !351
  br label %for.cond5.outer.i69, !dbg !351

for.cond5.outer.i69:                              ; preds = %for.body25.i, %for.body.i67
  %colstart.0.ph.i68 = phi i32 [ %109, %for.body.i67 ], [ %sub9.i, %for.body25.i ]
  %jcolA.0.in.ph.i = phi i32 [ %108, %for.body.i67 ], [ %jcolA.0.i, %for.body25.i ]
  %113 = sext i32 %jcolA.0.in.ph.i to i64
  br label %for.cond5.i71

for.cond5.i71:                                    ; preds = %for.body7.i74, %for.cond5.outer.i69
  %indvars.iv397.i = phi i64 [ %113, %for.cond5.outer.i69 ], [ %indvars.iv.next398.i, %for.body7.i74 ]
  %jcolA.0.in.i = phi i32 [ %jcolA.0.in.ph.i, %for.cond5.outer.i69 ], [ %jcolA.0.i, %for.body7.i74 ]
  %indvars.iv.next398.i = add i64 %indvars.iv397.i, -1, !dbg !355
  %jcolA.0.i = add nsw i32 %jcolA.0.in.i, -1, !dbg !351
  %114 = trunc i64 %indvars.iv397.i to i32, !dbg !351
  %cmp6.i70 = icmp sgt i32 %114, 0, !dbg !351
  br i1 %cmp6.i70, label %for.body7.i74, label %for.end75.i, !dbg !351

for.body7.i74:                                    ; preds = %for.cond5.i71
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !354) #5, !dbg !355
  %arrayidx.i72 = getelementptr inbounds i32* %110, i64 %indvars.iv.next398.i, !dbg !355
  %115 = load i32* %arrayidx.i72, align 4, !dbg !355, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %115}, i64 0, metadata !366) #5, !dbg !355
  %cmp8.i73 = icmp sgt i32 %115, 0, !dbg !355
  br i1 %cmp8.i73, label %for.body25.lr.ph.i, label %for.cond5.i71, !dbg !355

for.body25.lr.ph.i:                               ; preds = %for.body7.i74
  %sub9.i = sub i32 %colstart.0.ph.i68, %115, !dbg !367
  call void @llvm.dbg.value(metadata !{i32 %sub9.i}, i64 0, metadata !365) #5, !dbg !367
  %mul10.i = shl nsw i32 %jcolA.0.i, 1, !dbg !368
  call void @llvm.dbg.value(metadata !{i32 %mul10.i}, i64 0, metadata !369) #5, !dbg !368
  %add351.i = or i32 %mul10.i, 1, !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %add351.i}, i64 0, metadata !371) #5, !dbg !370
  %idxprom11.i = sext i32 %mul10.i to i64, !dbg !372
  %arrayidx12.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom11.i, !dbg !372
  %116 = load double* %arrayidx12.i, align 8, !dbg !372, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %116}, i64 0, metadata !373) #5, !dbg !372
  %idxprom13.i = sext i32 %add351.i to i64, !dbg !372
  %arrayidx14.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom13.i, !dbg !372
  %117 = load double* %arrayidx14.i, align 8, !dbg !372, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %117}, i64 0, metadata !374) #5, !dbg !372
  %add.ptr.sum352.i = add i64 %idxprom11.i, %idx.ext.i63, !dbg !375
  %arrayidx16.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum352.i, !dbg !375
  %118 = load double* %arrayidx16.i, align 8, !dbg !375, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %118}, i64 0, metadata !376) #5, !dbg !375
  %add.ptr.sum353.i = add i64 %idxprom13.i, %idx.ext.i63, !dbg !375
  %arrayidx18.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum353.i, !dbg !375
  %119 = load double* %arrayidx18.i, align 8, !dbg !375, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %119}, i64 0, metadata !377) #5, !dbg !375
  %add.ptr3.sum354.i = add i64 %idxprom11.i, %add.ptr.sum.i64, !dbg !378
  %arrayidx20.i75 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum354.i, !dbg !378
  %120 = load double* %arrayidx20.i75, align 8, !dbg !378, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %120}, i64 0, metadata !379) #5, !dbg !378
  %add.ptr3.sum355.i = add i64 %idxprom13.i, %add.ptr.sum.i64, !dbg !378
  %arrayidx22.i76 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum355.i, !dbg !378
  %121 = load double* %arrayidx22.i76, align 8, !dbg !378, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %121}, i64 0, metadata !380) #5, !dbg !378
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !381) #5, !dbg !382
  call void @llvm.dbg.value(metadata !{i32 %sub9.i}, i64 0, metadata !383) #5, !dbg !382
  %122 = sext i32 %sub9.i to i64
  br label %for.body25.i, !dbg !382

for.body25.i:                                     ; preds = %for.body25.i, %for.body25.lr.ph.i
  %indvars.iv399.i = phi i64 [ %122, %for.body25.lr.ph.i ], [ %indvars.iv.next400.i, %for.body25.i ]
  %ii.0373.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i, %for.body25.i ]
  %123 = trunc i64 %indvars.iv399.i to i32, !dbg !358
  %mul26.i = shl nsw i32 %123, 1, !dbg !358
  %idxprom27.i = sext i32 %mul26.i to i64, !dbg !358
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !357) #5, !dbg !358
  %arrayidx28.i77 = getelementptr inbounds double* %111, i64 %idxprom27.i, !dbg !358
  %124 = load double* %arrayidx28.i77, align 8, !dbg !358, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %124}, i64 0, metadata !384) #5, !dbg !358
  %add30356.i = or i32 %mul26.i, 1, !dbg !358
  %idxprom31.i = sext i32 %add30356.i to i64, !dbg !358
  %arrayidx32.i = getelementptr inbounds double* %111, i64 %idxprom31.i, !dbg !358
  %125 = load double* %arrayidx32.i, align 8, !dbg !358, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %125}, i64 0, metadata !385) #5, !dbg !358
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !362) #5, !dbg !363
  %arrayidx34.i = getelementptr inbounds i32* %112, i64 %indvars.iv399.i, !dbg !363
  %126 = load i32* %arrayidx34.i, align 4, !dbg !363, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !386) #5, !dbg !363
  %mul35.i = shl nsw i32 %126, 1, !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %mul35.i}, i64 0, metadata !369) #5, !dbg !387
  %add36357.i = or i32 %mul35.i, 1, !dbg !388
  call void @llvm.dbg.value(metadata !{i32 %add36357.i}, i64 0, metadata !371) #5, !dbg !388
  %mul37.i = fmul double %116, %124, !dbg !389
  %mul38.i = fmul double %117, %125, !dbg !389
  %add39.i = fadd double %mul37.i, %mul38.i, !dbg !389
  %idxprom40.i = sext i32 %mul35.i to i64, !dbg !389
  %arrayidx41.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom40.i, !dbg !389
  %127 = load double* %arrayidx41.i, align 8, !dbg !389, !tbaa !257
  %sub42.i = fsub double %127, %add39.i, !dbg !389
  store double %sub42.i, double* %arrayidx41.i, align 8, !dbg !389, !tbaa !257
  %mul43.i78 = fmul double %117, %124, !dbg !390
  %mul44.i79 = fmul double %116, %125, !dbg !390
  %sub45.i = fsub double %mul43.i78, %mul44.i79, !dbg !390
  %idxprom46.i80 = sext i32 %add36357.i to i64, !dbg !390
  %arrayidx47.i81 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom46.i80, !dbg !390
  %128 = load double* %arrayidx47.i81, align 8, !dbg !390, !tbaa !257
  %sub48.i82 = fsub double %128, %sub45.i, !dbg !390
  store double %sub48.i82, double* %arrayidx47.i81, align 8, !dbg !390, !tbaa !257
  %mul49.i83 = fmul double %118, %124, !dbg !391
  %mul50.i84 = fmul double %119, %125, !dbg !391
  %add51.i = fadd double %mul49.i83, %mul50.i84, !dbg !391
  %add.ptr.sum358.i = add i64 %idxprom40.i, %idx.ext.i63, !dbg !391
  %arrayidx53.i85 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum358.i, !dbg !391
  %129 = load double* %arrayidx53.i85, align 8, !dbg !391, !tbaa !257
  %sub54.i86 = fsub double %129, %add51.i, !dbg !391
  store double %sub54.i86, double* %arrayidx53.i85, align 8, !dbg !391, !tbaa !257
  %mul55.i87 = fmul double %119, %124, !dbg !392
  %mul56.i88 = fmul double %118, %125, !dbg !392
  %sub57.i = fsub double %mul55.i87, %mul56.i88, !dbg !392
  %add.ptr.sum359.i = add i64 %idxprom46.i80, %idx.ext.i63, !dbg !392
  %arrayidx59.i89 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum359.i, !dbg !392
  %130 = load double* %arrayidx59.i89, align 8, !dbg !392, !tbaa !257
  %sub60.i90 = fsub double %130, %sub57.i, !dbg !392
  store double %sub60.i90, double* %arrayidx59.i89, align 8, !dbg !392, !tbaa !257
  %mul61.i91 = fmul double %120, %124, !dbg !393
  %mul62.i92 = fmul double %121, %125, !dbg !393
  %add63.i = fadd double %mul61.i91, %mul62.i92, !dbg !393
  %add.ptr3.sum360.i = add i64 %idxprom40.i, %add.ptr.sum.i64, !dbg !393
  %arrayidx65.i93 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum360.i, !dbg !393
  %131 = load double* %arrayidx65.i93, align 8, !dbg !393, !tbaa !257
  %sub66.i94 = fsub double %131, %add63.i, !dbg !393
  store double %sub66.i94, double* %arrayidx65.i93, align 8, !dbg !393, !tbaa !257
  %mul67.i95 = fmul double %121, %124, !dbg !394
  %mul68.i96 = fmul double %120, %125, !dbg !394
  %sub69.i = fsub double %mul67.i95, %mul68.i96, !dbg !394
  %add.ptr3.sum361.i = add i64 %idxprom46.i80, %add.ptr.sum.i64, !dbg !394
  %arrayidx71.i97 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum361.i, !dbg !394
  %132 = load double* %arrayidx71.i97, align 8, !dbg !394, !tbaa !257
  %sub72.i98 = fsub double %132, %sub69.i, !dbg !394
  store double %sub72.i98, double* %arrayidx71.i97, align 8, !dbg !394, !tbaa !257
  %inc.i = add nsw i32 %ii.0373.i, 1, !dbg !382
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !381) #5, !dbg !382
  %indvars.iv.next400.i = add i64 %indvars.iv399.i, 1, !dbg !382
  %exitcond401.i = icmp eq i32 %inc.i, %115, !dbg !382
  br i1 %exitcond401.i, label %for.cond5.outer.i69, label %for.body25.i, !dbg !382

for.end75.i:                                      ; preds = %for.cond5.i71
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i60}, i64 0, metadata !346) #5, !dbg !364
  %add.ptr78.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum.i65, !dbg !364
  call void @llvm.dbg.value(metadata !{double* %add.ptr78.i}, i64 0, metadata !341) #5, !dbg !364
  %add80.i = add nsw i32 %jcolB.0381.i, 3, !dbg !343
  call void @llvm.dbg.value(metadata !{i32 %add80.i}, i64 0, metadata !342) #5, !dbg !343
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i57}, i64 0, metadata !345) #5, !dbg !343
  %cmp.i99 = icmp slt i32 %add80.i, %sub378.i, !dbg !343
  br i1 %cmp.i99, label %for.body.i67, label %for.end81.i102, !dbg !343

for.end81.i102:                                   ; preds = %for.end75.i, %sw.bb20
  %jcolB.0.lcssa.i100 = phi i32 [ 0, %sw.bb20 ], [ %add80.i, %for.end75.i ]
  %colB0.0.lcssa.i101 = phi double* [ %105, %sw.bb20 ], [ %add.ptr78.i, %for.end75.i ]
  %cmp83.i = icmp eq i32 %jcolB.0.lcssa.i100, %sub378.i, !dbg !395
  br i1 %cmp83.i, label %if.then84.i, label %if.else.i120, !dbg !395

if.then84.i:                                      ; preds = %for.end81.i102
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i60}, i64 0, metadata !346) #5, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i60}, i64 0, metadata !68), !dbg !396
  %133 = load i32* %nrowB.i60, align 4, !dbg !396, !tbaa !196
  %mul85.i = shl nsw i32 %133, 1, !dbg !396
  %idx.ext86.i = sext i32 %mul85.i to i64, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i59}, i64 0, metadata !350) #5, !dbg !398
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i59}, i64 0, metadata !67), !dbg !398
  %134 = load i32* %nrowA.i59, align 4, !dbg !398, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32* %nentA.i58}, i64 0, metadata !353) #5, !dbg !398
  call void @llvm.dbg.value(metadata !{i32* %nentA.i58}, i64 0, metadata !66), !dbg !398
  %135 = load i32* %nentA.i58, align 4, !dbg !398, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %135}, i64 0, metadata !365) #5, !dbg !398
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !354) #5, !dbg !400
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !73), !dbg !400
  %136 = load i32** %sizesA.i61, align 8, !dbg !400, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !357) #5, !dbg !402
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !54), !dbg !402
  %137 = load double** %entriesA.i53, align 8, !dbg !402, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !362) #5, !dbg !406
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !71), !dbg !406
  %138 = load i32** %indicesA.i, align 8, !dbg !406, !tbaa !191
  br label %for.cond89.outer.i, !dbg !398

for.cond89.outer.i:                               ; preds = %for.body109.i, %if.then84.i
  %colstart.2.ph.i103 = phi i32 [ %135, %if.then84.i ], [ %sub96.i, %for.body109.i ]
  %jcolA.1.in.ph.i = phi i32 [ %134, %if.then84.i ], [ %jcolA.1.i, %for.body109.i ]
  %139 = sext i32 %jcolA.1.in.ph.i to i64
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body91.i, %for.cond89.outer.i
  %indvars.iv.i104 = phi i64 [ %139, %for.cond89.outer.i ], [ %indvars.iv.next.i105, %for.body91.i ]
  %jcolA.1.in.i = phi i32 [ %jcolA.1.in.ph.i, %for.cond89.outer.i ], [ %jcolA.1.i, %for.body91.i ]
  %indvars.iv.next.i105 = add i64 %indvars.iv.i104, -1, !dbg !400
  %jcolA.1.i = add nsw i32 %jcolA.1.in.i, -1, !dbg !398
  %140 = trunc i64 %indvars.iv.i104 to i32, !dbg !398
  %cmp90.i = icmp sgt i32 %140, 0, !dbg !398
  br i1 %cmp90.i, label %for.body91.i, label %sw.epilog, !dbg !398

for.body91.i:                                     ; preds = %for.cond89.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !354) #5, !dbg !400
  %arrayidx93.i = getelementptr inbounds i32* %136, i64 %indvars.iv.next.i105, !dbg !400
  %141 = load i32* %arrayidx93.i, align 4, !dbg !400, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %141}, i64 0, metadata !366) #5, !dbg !400
  %cmp94.i = icmp sgt i32 %141, 0, !dbg !400
  br i1 %cmp94.i, label %for.body109.lr.ph.i, label %for.cond89.i, !dbg !400

for.body109.lr.ph.i:                              ; preds = %for.body91.i
  %sub96.i = sub i32 %colstart.2.ph.i103, %141, !dbg !407
  call void @llvm.dbg.value(metadata !{i32 %sub96.i}, i64 0, metadata !365) #5, !dbg !407
  %mul97.i = shl nsw i32 %jcolA.1.i, 1, !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %mul97.i}, i64 0, metadata !369) #5, !dbg !408
  %add98345.i = or i32 %mul97.i, 1, !dbg !409
  call void @llvm.dbg.value(metadata !{i32 %add98345.i}, i64 0, metadata !371) #5, !dbg !409
  %idxprom99.i = sext i32 %mul97.i to i64, !dbg !410
  %arrayidx100.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom99.i, !dbg !410
  %142 = load double* %arrayidx100.i, align 8, !dbg !410, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %142}, i64 0, metadata !373) #5, !dbg !410
  %idxprom101.i = sext i32 %add98345.i to i64, !dbg !410
  %arrayidx102.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom101.i, !dbg !410
  %143 = load double* %arrayidx102.i, align 8, !dbg !410, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %143}, i64 0, metadata !374) #5, !dbg !410
  %add.ptr87.sum.i = add i64 %idxprom99.i, %idx.ext86.i, !dbg !411
  %arrayidx104.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum.i, !dbg !411
  %144 = load double* %arrayidx104.i, align 8, !dbg !411, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %144}, i64 0, metadata !376) #5, !dbg !411
  %add.ptr87.sum346.i = add i64 %idxprom101.i, %idx.ext86.i, !dbg !411
  %arrayidx106.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum346.i, !dbg !411
  %145 = load double* %arrayidx106.i, align 8, !dbg !411, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %145}, i64 0, metadata !377) #5, !dbg !411
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !381) #5, !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %sub96.i}, i64 0, metadata !383) #5, !dbg !412
  %146 = sext i32 %sub96.i to i64
  br label %for.body109.i, !dbg !412

for.body109.i:                                    ; preds = %for.body109.i, %for.body109.lr.ph.i
  %indvars.iv386.i = phi i64 [ %146, %for.body109.lr.ph.i ], [ %indvars.iv.next387.i, %for.body109.i ]
  %ii.1363.i = phi i32 [ 0, %for.body109.lr.ph.i ], [ %inc146.i, %for.body109.i ]
  %147 = trunc i64 %indvars.iv386.i to i32, !dbg !402
  %mul110.i = shl nsw i32 %147, 1, !dbg !402
  %idxprom111.i = sext i32 %mul110.i to i64, !dbg !402
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !357) #5, !dbg !402
  %arrayidx112.i = getelementptr inbounds double* %137, i64 %idxprom111.i, !dbg !402
  %148 = load double* %arrayidx112.i, align 8, !dbg !402, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %148}, i64 0, metadata !384) #5, !dbg !402
  %add114347.i = or i32 %mul110.i, 1, !dbg !402
  %idxprom115.i106 = sext i32 %add114347.i to i64, !dbg !402
  %arrayidx116.i107 = getelementptr inbounds double* %137, i64 %idxprom115.i106, !dbg !402
  %149 = load double* %arrayidx116.i107, align 8, !dbg !402, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %149}, i64 0, metadata !385) #5, !dbg !402
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !362) #5, !dbg !406
  %arrayidx118.i108 = getelementptr inbounds i32* %138, i64 %indvars.iv386.i, !dbg !406
  %150 = load i32* %arrayidx118.i108, align 4, !dbg !406, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %150}, i64 0, metadata !386) #5, !dbg !406
  %mul119.i = shl nsw i32 %150, 1, !dbg !413
  call void @llvm.dbg.value(metadata !{i32 %mul119.i}, i64 0, metadata !369) #5, !dbg !413
  %add120348.i = or i32 %mul119.i, 1, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %add120348.i}, i64 0, metadata !371) #5, !dbg !414
  %mul121.i = fmul double %142, %148, !dbg !415
  %mul122.i = fmul double %143, %149, !dbg !415
  %add123.i = fadd double %mul121.i, %mul122.i, !dbg !415
  %idxprom124.i = sext i32 %mul119.i to i64, !dbg !415
  %arrayidx125.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom124.i, !dbg !415
  %151 = load double* %arrayidx125.i, align 8, !dbg !415, !tbaa !257
  %sub126.i = fsub double %151, %add123.i, !dbg !415
  store double %sub126.i, double* %arrayidx125.i, align 8, !dbg !415, !tbaa !257
  %mul127.i = fmul double %143, %148, !dbg !416
  %mul128.i = fmul double %142, %149, !dbg !416
  %sub129.i = fsub double %mul127.i, %mul128.i, !dbg !416
  %idxprom130.i = sext i32 %add120348.i to i64, !dbg !416
  %arrayidx131.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom130.i, !dbg !416
  %152 = load double* %arrayidx131.i, align 8, !dbg !416, !tbaa !257
  %sub132.i = fsub double %152, %sub129.i, !dbg !416
  store double %sub132.i, double* %arrayidx131.i, align 8, !dbg !416, !tbaa !257
  %mul133.i109 = fmul double %144, %148, !dbg !417
  %mul134.i110 = fmul double %145, %149, !dbg !417
  %add135.i111 = fadd double %mul133.i109, %mul134.i110, !dbg !417
  %add.ptr87.sum349.i = add i64 %idxprom124.i, %idx.ext86.i, !dbg !417
  %arrayidx137.i112 = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum349.i, !dbg !417
  %153 = load double* %arrayidx137.i112, align 8, !dbg !417, !tbaa !257
  %sub138.i113 = fsub double %153, %add135.i111, !dbg !417
  store double %sub138.i113, double* %arrayidx137.i112, align 8, !dbg !417, !tbaa !257
  %mul139.i114 = fmul double %145, %148, !dbg !418
  %mul140.i115 = fmul double %144, %149, !dbg !418
  %sub141.i116 = fsub double %mul139.i114, %mul140.i115, !dbg !418
  %add.ptr87.sum350.i = add i64 %idxprom130.i, %idx.ext86.i, !dbg !418
  %arrayidx143.i117 = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %add.ptr87.sum350.i, !dbg !418
  %154 = load double* %arrayidx143.i117, align 8, !dbg !418, !tbaa !257
  %sub144.i118 = fsub double %154, %sub141.i116, !dbg !418
  store double %sub144.i118, double* %arrayidx143.i117, align 8, !dbg !418, !tbaa !257
  %inc146.i = add nsw i32 %ii.1363.i, 1, !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %inc146.i}, i64 0, metadata !381) #5, !dbg !412
  %indvars.iv.next387.i = add i64 %indvars.iv386.i, 1, !dbg !412
  %exitcond.i = icmp eq i32 %inc146.i, %141, !dbg !412
  br i1 %exitcond.i, label %for.cond89.outer.i, label %for.body109.i, !dbg !412

if.else.i120:                                     ; preds = %for.end81.i102
  %sub153.i119 = add nsw i32 %106, -1, !dbg !419
  %cmp154.i = icmp eq i32 %jcolB.0.lcssa.i100, %sub153.i119, !dbg !419
  br i1 %cmp154.i, label %if.then155.i, label %sw.epilog, !dbg !419

if.then155.i:                                     ; preds = %if.else.i120
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i59}, i64 0, metadata !350) #5, !dbg !420
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i59}, i64 0, metadata !67), !dbg !420
  %155 = load i32* %nrowA.i59, align 4, !dbg !420, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32* %nentA.i58}, i64 0, metadata !353) #5, !dbg !420
  call void @llvm.dbg.value(metadata !{i32* %nentA.i58}, i64 0, metadata !66), !dbg !420
  %156 = load i32* %nentA.i58, align 4, !dbg !420, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %156}, i64 0, metadata !365) #5, !dbg !420
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !354) #5, !dbg !423
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !73), !dbg !423
  %157 = load i32** %sizesA.i61, align 8, !dbg !423, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !357) #5, !dbg !425
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !54), !dbg !425
  %158 = load double** %entriesA.i53, align 8, !dbg !425, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !362) #5, !dbg !429
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !71), !dbg !429
  %159 = load i32** %indicesA.i, align 8, !dbg !429, !tbaa !191
  br label %for.cond157.outer.i, !dbg !420

for.cond157.outer.i:                              ; preds = %for.body173.i, %if.then155.i
  %colstart.4.ph.i121 = phi i32 [ %156, %if.then155.i ], [ %sub164.i, %for.body173.i ]
  %jcolA.2.in.ph.i = phi i32 [ %155, %if.then155.i ], [ %jcolA.2.i, %for.body173.i ]
  %160 = sext i32 %jcolA.2.in.ph.i to i64
  br label %for.cond157.i

for.cond157.i:                                    ; preds = %for.body159.i, %for.cond157.outer.i
  %indvars.iv390.i = phi i64 [ %160, %for.cond157.outer.i ], [ %indvars.iv.next391.i, %for.body159.i ]
  %jcolA.2.in.i = phi i32 [ %jcolA.2.in.ph.i, %for.cond157.outer.i ], [ %jcolA.2.i, %for.body159.i ]
  %indvars.iv.next391.i = add i64 %indvars.iv390.i, -1, !dbg !423
  %jcolA.2.i = add nsw i32 %jcolA.2.in.i, -1, !dbg !420
  %161 = trunc i64 %indvars.iv390.i to i32, !dbg !420
  %cmp158.i = icmp sgt i32 %161, 0, !dbg !420
  br i1 %cmp158.i, label %for.body159.i, label %sw.epilog, !dbg !420

for.body159.i:                                    ; preds = %for.cond157.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i61}, i64 0, metadata !354) #5, !dbg !423
  %arrayidx161.i = getelementptr inbounds i32* %157, i64 %indvars.iv.next391.i, !dbg !423
  %162 = load i32* %arrayidx161.i, align 4, !dbg !423, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %162}, i64 0, metadata !366) #5, !dbg !423
  %cmp162.i = icmp sgt i32 %162, 0, !dbg !423
  br i1 %cmp162.i, label %for.body173.lr.ph.i, label %for.cond157.i, !dbg !423

for.body173.lr.ph.i:                              ; preds = %for.body159.i
  %sub164.i = sub i32 %colstart.4.ph.i121, %162, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %sub164.i}, i64 0, metadata !365) #5, !dbg !430
  %mul165.i = shl nsw i32 %jcolA.2.i, 1, !dbg !431
  call void @llvm.dbg.value(metadata !{i32 %mul165.i}, i64 0, metadata !369) #5, !dbg !431
  %add166342.i = or i32 %mul165.i, 1, !dbg !432
  call void @llvm.dbg.value(metadata !{i32 %add166342.i}, i64 0, metadata !371) #5, !dbg !432
  %idxprom167.i = sext i32 %mul165.i to i64, !dbg !433
  %arrayidx168.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom167.i, !dbg !433
  %163 = load double* %arrayidx168.i, align 8, !dbg !433, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %163}, i64 0, metadata !373) #5, !dbg !433
  %idxprom169.i = sext i32 %add166342.i to i64, !dbg !433
  %arrayidx170.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom169.i, !dbg !433
  %164 = load double* %arrayidx170.i, align 8, !dbg !433, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %164}, i64 0, metadata !374) #5, !dbg !433
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !381) #5, !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %sub164.i}, i64 0, metadata !383) #5, !dbg !434
  %165 = sext i32 %sub164.i to i64
  br label %for.body173.i, !dbg !434

for.body173.i:                                    ; preds = %for.body173.i, %for.body173.lr.ph.i
  %indvars.iv392.i = phi i64 [ %165, %for.body173.lr.ph.i ], [ %indvars.iv.next393.i, %for.body173.i ]
  %ii.2367.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %inc198.i, %for.body173.i ]
  %166 = trunc i64 %indvars.iv392.i to i32, !dbg !425
  %mul174.i = shl nsw i32 %166, 1, !dbg !425
  %idxprom175.i = sext i32 %mul174.i to i64, !dbg !425
  call void @llvm.dbg.value(metadata !{double** %entriesA.i53}, i64 0, metadata !357) #5, !dbg !425
  %arrayidx176.i = getelementptr inbounds double* %158, i64 %idxprom175.i, !dbg !425
  %167 = load double* %arrayidx176.i, align 8, !dbg !425, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %167}, i64 0, metadata !384) #5, !dbg !425
  %add178343.i = or i32 %mul174.i, 1, !dbg !425
  %idxprom179.i = sext i32 %add178343.i to i64, !dbg !425
  %arrayidx180.i = getelementptr inbounds double* %158, i64 %idxprom179.i, !dbg !425
  %168 = load double* %arrayidx180.i, align 8, !dbg !425, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %168}, i64 0, metadata !385) #5, !dbg !425
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !362) #5, !dbg !429
  %arrayidx182.i = getelementptr inbounds i32* %159, i64 %indvars.iv392.i, !dbg !429
  %169 = load i32* %arrayidx182.i, align 4, !dbg !429, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %169}, i64 0, metadata !386) #5, !dbg !429
  %mul183.i = shl nsw i32 %169, 1, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %mul183.i}, i64 0, metadata !369) #5, !dbg !435
  %add184344.i = or i32 %mul183.i, 1, !dbg !436
  call void @llvm.dbg.value(metadata !{i32 %add184344.i}, i64 0, metadata !371) #5, !dbg !436
  %mul185.i122 = fmul double %163, %167, !dbg !437
  %mul186.i = fmul double %164, %168, !dbg !437
  %add187.i = fadd double %mul185.i122, %mul186.i, !dbg !437
  %idxprom188.i = sext i32 %mul183.i to i64, !dbg !437
  %arrayidx189.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom188.i, !dbg !437
  %170 = load double* %arrayidx189.i, align 8, !dbg !437, !tbaa !257
  %sub190.i = fsub double %170, %add187.i, !dbg !437
  store double %sub190.i, double* %arrayidx189.i, align 8, !dbg !437, !tbaa !257
  %mul191.i = fmul double %164, %167, !dbg !438
  %mul192.i = fmul double %163, %168, !dbg !438
  %sub193.i = fsub double %mul191.i, %mul192.i, !dbg !438
  %idxprom194.i = sext i32 %add184344.i to i64, !dbg !438
  %arrayidx195.i = getelementptr inbounds double* %colB0.0.lcssa.i101, i64 %idxprom194.i, !dbg !438
  %171 = load double* %arrayidx195.i, align 8, !dbg !438, !tbaa !257
  %sub196.i = fsub double %171, %sub193.i, !dbg !438
  store double %sub196.i, double* %arrayidx195.i, align 8, !dbg !438, !tbaa !257
  %inc198.i = add nsw i32 %ii.2367.i, 1, !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %inc198.i}, i64 0, metadata !381) #5, !dbg !434
  %indvars.iv.next393.i = add i64 %indvars.iv392.i, 1, !dbg !434
  %exitcond394.i = icmp eq i32 %inc198.i, %162, !dbg !434
  br i1 %exitcond394.i, label %for.cond157.outer.i, label %for.body173.i, !dbg !434

sw.bb21:                                          ; preds = %if.end18
  %172 = bitcast double** %entriesA.i123 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 8, i8* %172) #5, !dbg !439
  %173 = bitcast double** %entriesB.i124 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 8, i8* %173) #5, !dbg !439
  %174 = bitcast i32* %inc1.i125 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 4, i8* %174) #5, !dbg !439
  %175 = bitcast i32* %inc2.i126 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 4, i8* %175) #5, !dbg !439
  %176 = bitcast i32* %ncolB.i127 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 4, i8* %176) #5, !dbg !439
  %177 = bitcast i32* %nentA.i128 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 4, i8* %177) #5, !dbg !439
  %178 = bitcast i32* %nrowA.i129 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 4, i8* %178) #5, !dbg !439
  %179 = bitcast i32* %nrowB.i130 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 4, i8* %179) #5, !dbg !439
  %180 = bitcast i32** %firstlocsA.i131 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 8, i8* %180) #5, !dbg !439
  %181 = bitcast i32** %sizesA.i132 to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 8, i8* %181) #5, !dbg !439
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !441) #5, !dbg !439
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !442) #5, !dbg !443
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i123}, metadata !168) #5, !dbg !444
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i124}, metadata !169) #5, !dbg !444
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i125}, metadata !173) #5, !dbg !445
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i126}, metadata !174) #5, !dbg !445
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i127}, metadata !179) #5, !dbg !446
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i128}, metadata !180) #5, !dbg !446
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i129}, metadata !181) #5, !dbg !446
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i130}, metadata !182) #5, !dbg !446
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i131}, metadata !184) #5, !dbg !447
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i132}, metadata !185) #5, !dbg !447
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i129, i32* %nentA.i128, i32** %firstlocsA.i131, i32** %sizesA.i132, double** %entriesA.i123) #6, !dbg !448
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i130, i32* %ncolB.i127, i32* %inc1.i125, i32* %inc2.i126, double** %entriesB.i124) #6, !dbg !449
  call void @llvm.dbg.value(metadata !{double** %entriesB.i124}, i64 0, metadata !450) #5, !dbg !451
  call void @llvm.dbg.value(metadata !{double** %entriesB.i124}, i64 0, metadata !169), !dbg !451
  %182 = load double** %entriesB.i124, align 8, !dbg !451, !tbaa !191
  call void @llvm.dbg.value(metadata !{double* %182}, i64 0, metadata !452) #5, !dbg !451
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !453) #5, !dbg !454
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i127}, i64 0, metadata !456) #5, !dbg !454
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i127}, i64 0, metadata !179), !dbg !454
  %183 = load i32* %ncolB.i127, align 4, !dbg !454, !tbaa !196
  %sub448.i = add nsw i32 %183, -2, !dbg !454
  %cmp449.i = icmp sgt i32 %sub448.i, 0, !dbg !454
  br i1 %cmp449.i, label %for.body.lr.ph.i137, label %for.end90.i, !dbg !454

for.body.lr.ph.i137:                              ; preds = %sw.bb21
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i130}, i64 0, metadata !457) #5, !dbg !458
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i130}, i64 0, metadata !182), !dbg !458
  %184 = load i32* %nrowB.i130, align 4, !dbg !458, !tbaa !196
  %mul.i133 = shl nsw i32 %184, 1, !dbg !458
  %idx.ext.i134 = sext i32 %mul.i133 to i64, !dbg !458
  %add.ptr.sum.i135 = shl nsw i64 %idx.ext.i134, 1, !dbg !460
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !181), !dbg !462
  %185 = load i32* %nrowA.i129, align 4, !dbg !462, !tbaa !196
  %cmp5444.i = icmp sgt i32 %185, 0, !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i130}, i64 0, metadata !457) #5, !dbg !464
  %add.ptr3.sum.i136 = add i64 %add.ptr.sum.i135, %idx.ext.i134, !dbg !464
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i127}, i64 0, metadata !456) #5, !dbg !454
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !465) #5, !dbg !466
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !185), !dbg !466
  %186 = load i32** %sizesA.i132, align 8, !dbg !466, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !468) #5, !dbg !469
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !184), !dbg !469
  %187 = load i32** %firstlocsA.i131, align 8, !dbg !469, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !471) #5, !dbg !472
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !168), !dbg !472
  %188 = load double** %entriesA.i123, align 8, !dbg !472, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !462
  br label %for.body.i138, !dbg !454

for.body.i138:                                    ; preds = %for.end84.i, %for.body.lr.ph.i137
  %jcolB.0452.i = phi i32 [ 0, %for.body.lr.ph.i137 ], [ %add89.i, %for.end84.i ]
  %colB0.0450.i = phi double* [ %182, %for.body.lr.ph.i137 ], [ %add.ptr87.i, %for.end84.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i130}, i64 0, metadata !457) #5, !dbg !458
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !475) #5, !dbg !462
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !476) #5, !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !462
  br i1 %cmp5444.i, label %for.body6.i, label %for.end84.i, !dbg !462

for.body6.i:                                      ; preds = %for.body.i138, %for.inc82.i
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.inc82.i ], [ 0, %for.body.i138 ]
  %kk.0447.i = phi i32 [ %kk.2.i, %for.inc82.i ], [ 0, %for.body.i138 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !465) #5, !dbg !466
  %arrayidx.i139 = getelementptr inbounds i32* %186, i64 %indvars.iv473.i, !dbg !466
  %189 = load i32* %arrayidx.i139, align 4, !dbg !466, !tbaa !196
  %cmp7.i = icmp sgt i32 %189, 0, !dbg !466
  br i1 %cmp7.i, label %if.then.i141, label %for.inc82.i, !dbg !466

if.then.i141:                                     ; preds = %for.body6.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !468) #5, !dbg !469
  %arrayidx9.i = getelementptr inbounds i32* %187, i64 %indvars.iv473.i, !dbg !469
  %190 = load i32* %arrayidx9.i, align 4, !dbg !469, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %190}, i64 0, metadata !477) #5, !dbg !469
  %add.i140 = add i32 %189, -1, !dbg !478
  %sub12.i = add i32 %add.i140, %190, !dbg !478
  call void @llvm.dbg.value(metadata !{i32 %sub12.i}, i64 0, metadata !479) #5, !dbg !478
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !481) #5, !dbg !482
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !483) #5, !dbg !482
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !484) #5, !dbg !485
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !486) #5, !dbg !485
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !487) #5, !dbg !488
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !489) #5, !dbg !488
  call void @llvm.dbg.value(metadata !{i32 %190}, i64 0, metadata !490) #5, !dbg !491
  %cmp14428.i = icmp sgt i32 %190, %sub12.i, !dbg !491
  br i1 %cmp14428.i, label %for.end.i, label %for.body15.lr.ph.i, !dbg !491

for.body15.lr.ph.i:                               ; preds = %if.then.i141
  %191 = sext i32 %kk.0447.i to i64
  %192 = sext i32 %190 to i64, !dbg !491
  br label %for.body15.i, !dbg !491

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i, %for.body15.i ], [ %192, %for.body15.lr.ph.i ], !dbg !491
  %indvars.iv468.i = phi i64 [ %indvars.iv.next469.i, %for.body15.i ], [ %191, %for.body15.lr.ph.i ]
  %rsum2.0434.i = phi double [ %add56.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum1.0433.i = phi double [ %add48.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum0.0432.i = phi double [ %add40.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum2.0431.i = phi double [ %add60.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum1.0430.i = phi double [ %add52.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum0.0429.i = phi double [ %add44.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %193 = trunc i64 %indvars.iv468.i to i32, !dbg !472
  %mul16.i = shl nsw i32 %193, 1, !dbg !472
  %idxprom17.i = sext i32 %mul16.i to i64, !dbg !472
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !471) #5, !dbg !472
  %arrayidx18.i142 = getelementptr inbounds double* %188, i64 %idxprom17.i, !dbg !472
  %194 = load double* %arrayidx18.i142, align 8, !dbg !472, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %194}, i64 0, metadata !492) #5, !dbg !472
  %add20394.i = or i32 %mul16.i, 1, !dbg !472
  %idxprom21.i143 = sext i32 %add20394.i to i64, !dbg !472
  %arrayidx22.i144 = getelementptr inbounds double* %188, i64 %idxprom21.i143, !dbg !472
  %195 = load double* %arrayidx22.i144, align 8, !dbg !472, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %195}, i64 0, metadata !493) #5, !dbg !472
  %196 = trunc i64 %indvars.iv470.i to i32, !dbg !494
  %mul23.i = shl nsw i32 %196, 1, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %mul23.i}, i64 0, metadata !495) #5, !dbg !494
  %add24395.i = or i32 %mul23.i, 1, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %add24395.i}, i64 0, metadata !496) #5, !dbg !494
  %idxprom25.i = sext i32 %mul23.i to i64, !dbg !497
  %arrayidx26.i145 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom25.i, !dbg !497
  %197 = load double* %arrayidx26.i145, align 8, !dbg !497, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %197}, i64 0, metadata !498) #5, !dbg !497
  %idxprom27.i146 = sext i32 %add24395.i to i64, !dbg !497
  %arrayidx28.i147 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom27.i146, !dbg !497
  %198 = load double* %arrayidx28.i147, align 8, !dbg !497, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %198}, i64 0, metadata !499) #5, !dbg !497
  %add.ptr.sum396.i = add i64 %idxprom25.i, %idx.ext.i134, !dbg !500
  %arrayidx30.i148 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum396.i, !dbg !500
  %199 = load double* %arrayidx30.i148, align 8, !dbg !500, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %199}, i64 0, metadata !501) #5, !dbg !500
  %add.ptr.sum397.i = add i64 %idxprom27.i146, %idx.ext.i134, !dbg !500
  %arrayidx32.i149 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum397.i, !dbg !500
  %200 = load double* %arrayidx32.i149, align 8, !dbg !500, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %200}, i64 0, metadata !502) #5, !dbg !500
  %add.ptr3.sum398.i = add i64 %idxprom25.i, %add.ptr.sum.i135, !dbg !503
  %arrayidx34.i150 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum398.i, !dbg !503
  %201 = load double* %arrayidx34.i150, align 8, !dbg !503, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %201}, i64 0, metadata !504) #5, !dbg !503
  %add.ptr3.sum399.i = add i64 %idxprom27.i146, %add.ptr.sum.i135, !dbg !503
  %arrayidx36.i151 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum399.i, !dbg !503
  %202 = load double* %arrayidx36.i151, align 8, !dbg !503, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %202}, i64 0, metadata !505) #5, !dbg !503
  %mul37.i152 = fmul double %194, %197, !dbg !506
  %mul38.i153 = fmul double %195, %198, !dbg !506
  %add39.i154 = fadd double %mul37.i152, %mul38.i153, !dbg !506
  %add40.i = fadd double %rsum0.0432.i, %add39.i154, !dbg !506
  call void @llvm.dbg.value(metadata !{double %add40.i}, i64 0, metadata !483) #5, !dbg !506
  %mul41.i155 = fmul double %194, %198, !dbg !506
  %mul42.i = fmul double %195, %197, !dbg !506
  %sub43.i = fsub double %mul41.i155, %mul42.i, !dbg !506
  %add44.i = fadd double %isum0.0429.i, %sub43.i, !dbg !506
  call void @llvm.dbg.value(metadata !{double %add44.i}, i64 0, metadata !481) #5, !dbg !506
  %mul45.i = fmul double %194, %199, !dbg !507
  %mul46.i = fmul double %195, %200, !dbg !507
  %add47.i = fadd double %mul45.i, %mul46.i, !dbg !507
  %add48.i = fadd double %rsum1.0433.i, %add47.i, !dbg !507
  call void @llvm.dbg.value(metadata !{double %add48.i}, i64 0, metadata !486) #5, !dbg !507
  %mul49.i156 = fmul double %194, %200, !dbg !507
  %mul50.i157 = fmul double %195, %199, !dbg !507
  %sub51.i158 = fsub double %mul49.i156, %mul50.i157, !dbg !507
  %add52.i = fadd double %isum1.0430.i, %sub51.i158, !dbg !507
  call void @llvm.dbg.value(metadata !{double %add52.i}, i64 0, metadata !484) #5, !dbg !507
  %mul53.i = fmul double %194, %201, !dbg !508
  %mul54.i = fmul double %195, %202, !dbg !508
  %add55.i = fadd double %mul53.i, %mul54.i, !dbg !508
  %add56.i = fadd double %rsum2.0434.i, %add55.i, !dbg !508
  call void @llvm.dbg.value(metadata !{double %add56.i}, i64 0, metadata !489) #5, !dbg !508
  %mul57.i = fmul double %194, %202, !dbg !508
  %mul58.i = fmul double %195, %201, !dbg !508
  %sub59.i = fsub double %mul57.i, %mul58.i, !dbg !508
  %add60.i = fadd double %isum2.0431.i, %sub59.i, !dbg !508
  call void @llvm.dbg.value(metadata !{double %add60.i}, i64 0, metadata !487) #5, !dbg !508
  %indvars.iv.next471.i = add i64 %indvars.iv470.i, 1, !dbg !491
  %indvars.iv.next469.i = add i64 %indvars.iv468.i, 1, !dbg !491
  %cmp14.i = icmp slt i32 %196, %sub12.i, !dbg !491
  br i1 %cmp14.i, label %for.body15.i, label %for.cond13.for.end_crit_edge.i, !dbg !491

for.cond13.for.end_crit_edge.i:                   ; preds = %for.body15.i
  %203 = add i32 %189, %kk.0447.i, !dbg !491
  br label %for.end.i, !dbg !491

for.end.i:                                        ; preds = %for.cond13.for.end_crit_edge.i, %if.then.i141
  %kk.1.lcssa.i = phi i32 [ %203, %for.cond13.for.end_crit_edge.i ], [ %kk.0447.i, %if.then.i141 ]
  %rsum2.0.lcssa.i = phi double [ %add56.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %rsum1.0.lcssa.i = phi double [ %add48.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %rsum0.0.lcssa.i = phi double [ %add40.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %isum2.0.lcssa.i = phi double [ %add60.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %isum1.0.lcssa.i = phi double [ %add52.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %isum0.0.lcssa.i = phi double [ %add44.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i141 ]
  %204 = trunc i64 %indvars.iv473.i to i32, !dbg !509
  %mul62.i159 = shl nsw i32 %204, 1, !dbg !509
  call void @llvm.dbg.value(metadata !{i32 %mul62.i159}, i64 0, metadata !495) #5, !dbg !509
  %add63389.i = or i32 %mul62.i159, 1, !dbg !509
  call void @llvm.dbg.value(metadata !{i32 %add63389.i}, i64 0, metadata !496) #5, !dbg !509
  %idxprom64.i = sext i32 %mul62.i159 to i64, !dbg !510
  %arrayidx65.i160 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom64.i, !dbg !510
  %205 = load double* %arrayidx65.i160, align 8, !dbg !510, !tbaa !257
  %sub66.i161 = fsub double %205, %rsum0.0.lcssa.i, !dbg !510
  store double %sub66.i161, double* %arrayidx65.i160, align 8, !dbg !510, !tbaa !257
  %idxprom67.i = sext i32 %add63389.i to i64, !dbg !510
  %arrayidx68.i = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom67.i, !dbg !510
  %206 = load double* %arrayidx68.i, align 8, !dbg !510, !tbaa !257
  %sub69.i162 = fsub double %206, %isum0.0.lcssa.i, !dbg !510
  store double %sub69.i162, double* %arrayidx68.i, align 8, !dbg !510, !tbaa !257
  %add.ptr.sum390.i = add i64 %idxprom64.i, %idx.ext.i134, !dbg !511
  %arrayidx71.i163 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum390.i, !dbg !511
  %207 = load double* %arrayidx71.i163, align 8, !dbg !511, !tbaa !257
  %sub72.i164 = fsub double %207, %rsum1.0.lcssa.i, !dbg !511
  store double %sub72.i164, double* %arrayidx71.i163, align 8, !dbg !511, !tbaa !257
  %add.ptr.sum391.i = add i64 %idxprom67.i, %idx.ext.i134, !dbg !511
  %arrayidx74.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum391.i, !dbg !511
  %208 = load double* %arrayidx74.i, align 8, !dbg !511, !tbaa !257
  %sub75.i165 = fsub double %208, %isum1.0.lcssa.i, !dbg !511
  store double %sub75.i165, double* %arrayidx74.i, align 8, !dbg !511, !tbaa !257
  %add.ptr3.sum392.i = add i64 %idxprom64.i, %add.ptr.sum.i135, !dbg !512
  %arrayidx77.i166 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum392.i, !dbg !512
  %209 = load double* %arrayidx77.i166, align 8, !dbg !512, !tbaa !257
  %sub78.i167 = fsub double %209, %rsum2.0.lcssa.i, !dbg !512
  store double %sub78.i167, double* %arrayidx77.i166, align 8, !dbg !512, !tbaa !257
  %add.ptr3.sum393.i = add i64 %idxprom67.i, %add.ptr.sum.i135, !dbg !512
  %arrayidx80.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum393.i, !dbg !512
  %210 = load double* %arrayidx80.i, align 8, !dbg !512, !tbaa !257
  %sub81.i = fsub double %210, %isum2.0.lcssa.i, !dbg !512
  store double %sub81.i, double* %arrayidx80.i, align 8, !dbg !512, !tbaa !257
  br label %for.inc82.i, !dbg !513

for.inc82.i:                                      ; preds = %for.end.i, %for.body6.i
  %kk.2.i = phi i32 [ %kk.1.lcssa.i, %for.end.i ], [ %kk.0447.i, %for.body6.i ]
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1, !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !462
  %lftr.wideiv335 = trunc i64 %indvars.iv.next474.i to i32, !dbg !462
  %exitcond336 = icmp eq i32 %lftr.wideiv335, %185, !dbg !462
  br i1 %exitcond336, label %for.end84.i, label %for.body6.i, !dbg !462

for.end84.i:                                      ; preds = %for.inc82.i, %for.body.i138
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i130}, i64 0, metadata !457) #5, !dbg !464
  %add.ptr87.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum.i136, !dbg !464
  call void @llvm.dbg.value(metadata !{double* %add.ptr87.i}, i64 0, metadata !452) #5, !dbg !464
  %add89.i = add nsw i32 %jcolB.0452.i, 3, !dbg !454
  call void @llvm.dbg.value(metadata !{i32 %add89.i}, i64 0, metadata !453) #5, !dbg !454
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i127}, i64 0, metadata !456) #5, !dbg !454
  %cmp.i168 = icmp slt i32 %add89.i, %sub448.i, !dbg !454
  br i1 %cmp.i168, label %for.body.i138, label %for.end90.i, !dbg !454

for.end90.i:                                      ; preds = %for.end84.i, %sw.bb21
  %jcolB.0.lcssa.i169 = phi i32 [ 0, %sw.bb21 ], [ %add89.i, %for.end84.i ]
  %colB0.0.lcssa.i170 = phi double* [ %182, %sw.bb21 ], [ %add.ptr87.i, %for.end84.i ]
  %cmp92.i = icmp eq i32 %jcolB.0.lcssa.i169, %sub448.i, !dbg !514
  br i1 %cmp92.i, label %if.then93.i, label %if.else.i179, !dbg !514

if.then93.i:                                      ; preds = %for.end90.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i130}, i64 0, metadata !457) #5, !dbg !515
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i130}, i64 0, metadata !182), !dbg !515
  %211 = load i32* %nrowB.i130, align 4, !dbg !515, !tbaa !196
  %mul94.i = shl nsw i32 %211, 1, !dbg !515
  %idx.ext95.i = sext i32 %mul94.i to i64, !dbg !515
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !475) #5, !dbg !517
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !476) #5, !dbg !517
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !517
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !181), !dbg !517
  %212 = load i32* %nrowA.i129, align 4, !dbg !517, !tbaa !196
  %cmp98411.i = icmp sgt i32 %212, 0, !dbg !517
  br i1 %cmp98411.i, label %for.body99.lr.ph.i, label %sw.epilog, !dbg !517

for.body99.lr.ph.i:                               ; preds = %if.then93.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !465) #5, !dbg !519
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !185), !dbg !519
  %213 = load i32** %sizesA.i132, align 8, !dbg !519, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !468) #5, !dbg !521
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !184), !dbg !521
  %214 = load i32** %firstlocsA.i131, align 8, !dbg !521, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !471) #5, !dbg !523
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !168), !dbg !523
  %215 = load double** %entriesA.i123, align 8, !dbg !523, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !517
  br label %for.body99.i, !dbg !517

for.body99.i:                                     ; preds = %for.inc165.i, %for.body99.lr.ph.i
  %indvars.iv459.i = phi i64 [ 0, %for.body99.lr.ph.i ], [ %indvars.iv.next460.i, %for.inc165.i ]
  %kk.3414.i = phi i32 [ 0, %for.body99.lr.ph.i ], [ %kk.5.i, %for.inc165.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !465) #5, !dbg !519
  %arrayidx101.i = getelementptr inbounds i32* %213, i64 %indvars.iv459.i, !dbg !519
  %216 = load i32* %arrayidx101.i, align 4, !dbg !519, !tbaa !196
  %cmp102.i = icmp sgt i32 %216, 0, !dbg !519
  br i1 %cmp102.i, label %if.then103.i, label %for.inc165.i, !dbg !519

if.then103.i:                                     ; preds = %for.body99.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !468) #5, !dbg !521
  %arrayidx105.i = getelementptr inbounds i32* %214, i64 %indvars.iv459.i, !dbg !521
  %217 = load i32* %arrayidx105.i, align 4, !dbg !521, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %217}, i64 0, metadata !477) #5, !dbg !521
  %add108.i = add i32 %216, -1, !dbg !526
  %sub109.i = add i32 %add108.i, %217, !dbg !526
  call void @llvm.dbg.value(metadata !{i32 %sub109.i}, i64 0, metadata !479) #5, !dbg !526
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !481) #5, !dbg !527
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !483) #5, !dbg !527
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !484) #5, !dbg !528
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !486) #5, !dbg !528
  call void @llvm.dbg.value(metadata !{i32 %217}, i64 0, metadata !490) #5, !dbg !529
  %cmp111400.i = icmp sgt i32 %217, %sub109.i, !dbg !529
  br i1 %cmp111400.i, label %for.end149.i, label %for.body112.lr.ph.i, !dbg !529

for.body112.lr.ph.i:                              ; preds = %if.then103.i
  %218 = sext i32 %kk.3414.i to i64
  %219 = sext i32 %217 to i64, !dbg !529
  br label %for.body112.i, !dbg !529

for.body112.i:                                    ; preds = %for.body112.i, %for.body112.lr.ph.i
  %indvars.iv457.i = phi i64 [ %indvars.iv.next458.i, %for.body112.i ], [ %219, %for.body112.lr.ph.i ], !dbg !529
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i178, %for.body112.i ], [ %218, %for.body112.lr.ph.i ]
  %rsum1.1404.i = phi double [ %add141.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %rsum0.1403.i = phi double [ %add133.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum1.1402.i = phi double [ %add145.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum0.1401.i = phi double [ %add137.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %220 = trunc i64 %indvars.iv.i171 to i32, !dbg !523
  %mul113.i = shl nsw i32 %220, 1, !dbg !523
  %idxprom114.i = sext i32 %mul113.i to i64, !dbg !523
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !471) #5, !dbg !523
  %arrayidx115.i = getelementptr inbounds double* %215, i64 %idxprom114.i, !dbg !523
  %221 = load double* %arrayidx115.i, align 8, !dbg !523, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %221}, i64 0, metadata !492) #5, !dbg !523
  %add117385.i = or i32 %mul113.i, 1, !dbg !523
  %idxprom118.i = sext i32 %add117385.i to i64, !dbg !523
  %arrayidx119.i = getelementptr inbounds double* %215, i64 %idxprom118.i, !dbg !523
  %222 = load double* %arrayidx119.i, align 8, !dbg !523, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %222}, i64 0, metadata !493) #5, !dbg !523
  %223 = trunc i64 %indvars.iv457.i to i32, !dbg !530
  %mul120.i = shl nsw i32 %223, 1, !dbg !530
  call void @llvm.dbg.value(metadata !{i32 %mul120.i}, i64 0, metadata !495) #5, !dbg !530
  %add121386.i = or i32 %mul120.i, 1, !dbg !530
  call void @llvm.dbg.value(metadata !{i32 %add121386.i}, i64 0, metadata !496) #5, !dbg !530
  %idxprom122.i = sext i32 %mul120.i to i64, !dbg !531
  %arrayidx123.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom122.i, !dbg !531
  %224 = load double* %arrayidx123.i, align 8, !dbg !531, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %224}, i64 0, metadata !498) #5, !dbg !531
  %idxprom124.i172 = sext i32 %add121386.i to i64, !dbg !531
  %arrayidx125.i173 = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom124.i172, !dbg !531
  %225 = load double* %arrayidx125.i173, align 8, !dbg !531, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %225}, i64 0, metadata !499) #5, !dbg !531
  %add.ptr96.sum387.i = add i64 %idxprom122.i, %idx.ext95.i, !dbg !532
  %arrayidx127.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum387.i, !dbg !532
  %226 = load double* %arrayidx127.i, align 8, !dbg !532, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %226}, i64 0, metadata !501) #5, !dbg !532
  %add.ptr96.sum388.i = add i64 %idxprom124.i172, %idx.ext95.i, !dbg !532
  %arrayidx129.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum388.i, !dbg !532
  %227 = load double* %arrayidx129.i, align 8, !dbg !532, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %227}, i64 0, metadata !502) #5, !dbg !532
  %mul130.i = fmul double %221, %224, !dbg !533
  %mul131.i174 = fmul double %222, %225, !dbg !533
  %add132.i = fadd double %mul130.i, %mul131.i174, !dbg !533
  %add133.i = fadd double %rsum0.1403.i, %add132.i, !dbg !533
  call void @llvm.dbg.value(metadata !{double %add133.i}, i64 0, metadata !483) #5, !dbg !533
  %mul134.i175 = fmul double %221, %225, !dbg !533
  %mul135.i = fmul double %222, %224, !dbg !533
  %sub136.i = fsub double %mul134.i175, %mul135.i, !dbg !533
  %add137.i = fadd double %isum0.1401.i, %sub136.i, !dbg !533
  call void @llvm.dbg.value(metadata !{double %add137.i}, i64 0, metadata !481) #5, !dbg !533
  %mul138.i = fmul double %221, %226, !dbg !534
  %mul139.i176 = fmul double %222, %227, !dbg !534
  %add140.i = fadd double %mul138.i, %mul139.i176, !dbg !534
  %add141.i = fadd double %rsum1.1404.i, %add140.i, !dbg !534
  call void @llvm.dbg.value(metadata !{double %add141.i}, i64 0, metadata !486) #5, !dbg !534
  %mul142.i = fmul double %221, %227, !dbg !534
  %mul143.i = fmul double %222, %226, !dbg !534
  %sub144.i177 = fsub double %mul142.i, %mul143.i, !dbg !534
  %add145.i = fadd double %isum1.1402.i, %sub144.i177, !dbg !534
  call void @llvm.dbg.value(metadata !{double %add145.i}, i64 0, metadata !484) #5, !dbg !534
  %indvars.iv.next458.i = add i64 %indvars.iv457.i, 1, !dbg !529
  %indvars.iv.next.i178 = add i64 %indvars.iv.i171, 1, !dbg !529
  %cmp111.i = icmp slt i32 %223, %sub109.i, !dbg !529
  br i1 %cmp111.i, label %for.body112.i, label %for.cond110.for.end149_crit_edge.i, !dbg !529

for.cond110.for.end149_crit_edge.i:               ; preds = %for.body112.i
  %228 = add i32 %216, %kk.3414.i, !dbg !529
  br label %for.end149.i, !dbg !529

for.end149.i:                                     ; preds = %for.cond110.for.end149_crit_edge.i, %if.then103.i
  %kk.4.lcssa.i = phi i32 [ %228, %for.cond110.for.end149_crit_edge.i ], [ %kk.3414.i, %if.then103.i ]
  %rsum1.1.lcssa.i = phi double [ %add141.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %rsum0.1.lcssa.i = phi double [ %add133.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %isum1.1.lcssa.i = phi double [ %add145.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %isum0.1.lcssa.i = phi double [ %add137.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i ]
  %229 = trunc i64 %indvars.iv459.i to i32, !dbg !535
  %mul150.i = shl nsw i32 %229, 1, !dbg !535
  call void @llvm.dbg.value(metadata !{i32 %mul150.i}, i64 0, metadata !495) #5, !dbg !535
  %add151383.i = or i32 %mul150.i, 1, !dbg !535
  call void @llvm.dbg.value(metadata !{i32 %add151383.i}, i64 0, metadata !496) #5, !dbg !535
  %idxprom152.i = sext i32 %mul150.i to i64, !dbg !536
  %arrayidx153.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom152.i, !dbg !536
  %230 = load double* %arrayidx153.i, align 8, !dbg !536, !tbaa !257
  %sub154.i = fsub double %230, %rsum0.1.lcssa.i, !dbg !536
  store double %sub154.i, double* %arrayidx153.i, align 8, !dbg !536, !tbaa !257
  %idxprom155.i = sext i32 %add151383.i to i64, !dbg !536
  %arrayidx156.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom155.i, !dbg !536
  %231 = load double* %arrayidx156.i, align 8, !dbg !536, !tbaa !257
  %sub157.i = fsub double %231, %isum0.1.lcssa.i, !dbg !536
  store double %sub157.i, double* %arrayidx156.i, align 8, !dbg !536, !tbaa !257
  %add.ptr96.sum.i = add i64 %idxprom152.i, %idx.ext95.i, !dbg !537
  %arrayidx159.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum.i, !dbg !537
  %232 = load double* %arrayidx159.i, align 8, !dbg !537, !tbaa !257
  %sub160.i = fsub double %232, %rsum1.1.lcssa.i, !dbg !537
  store double %sub160.i, double* %arrayidx159.i, align 8, !dbg !537, !tbaa !257
  %add.ptr96.sum384.i = add i64 %idxprom155.i, %idx.ext95.i, !dbg !537
  %arrayidx162.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %add.ptr96.sum384.i, !dbg !537
  %233 = load double* %arrayidx162.i, align 8, !dbg !537, !tbaa !257
  %sub163.i = fsub double %233, %isum1.1.lcssa.i, !dbg !537
  store double %sub163.i, double* %arrayidx162.i, align 8, !dbg !537, !tbaa !257
  br label %for.inc165.i, !dbg !538

for.inc165.i:                                     ; preds = %for.end149.i, %for.body99.i
  %kk.5.i = phi i32 [ %kk.4.lcssa.i, %for.end149.i ], [ %kk.3414.i, %for.body99.i ]
  %indvars.iv.next460.i = add i64 %indvars.iv459.i, 1, !dbg !517
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !517
  %lftr.wideiv = trunc i64 %indvars.iv.next460.i to i32, !dbg !517
  %exitcond = icmp eq i32 %lftr.wideiv, %212, !dbg !517
  br i1 %exitcond, label %sw.epilog, label %for.body99.i, !dbg !517

if.else.i179:                                     ; preds = %for.end90.i
  %sub168.i = add nsw i32 %183, -1, !dbg !539
  %cmp169.i = icmp eq i32 %jcolB.0.lcssa.i169, %sub168.i, !dbg !539
  br i1 %cmp169.i, label %for.cond171.preheader.i, label %sw.epilog, !dbg !539

for.cond171.preheader.i:                          ; preds = %if.else.i179
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !540
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !181), !dbg !540
  %234 = load i32* %nrowA.i129, align 4, !dbg !540, !tbaa !196
  %cmp172424.i = icmp sgt i32 %234, 0, !dbg !540
  br i1 %cmp172424.i, label %for.body173.lr.ph.i180, label %sw.epilog, !dbg !540

for.body173.lr.ph.i180:                           ; preds = %for.cond171.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !465) #5, !dbg !543
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !185), !dbg !543
  %235 = load i32** %sizesA.i132, align 8, !dbg !543, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !468) #5, !dbg !545
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !184), !dbg !545
  %236 = load i32** %firstlocsA.i131, align 8, !dbg !545, !tbaa !191
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !471) #5, !dbg !547
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !168), !dbg !547
  %237 = load double** %entriesA.i123, align 8, !dbg !547, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !540
  br label %for.body173.i181, !dbg !540

for.body173.i181:                                 ; preds = %for.inc221.i, %for.body173.lr.ph.i180
  %indvars.iv466.i = phi i64 [ 0, %for.body173.lr.ph.i180 ], [ %indvars.iv.next467.i, %for.inc221.i ]
  %kk.6427.i = phi i32 [ 0, %for.body173.lr.ph.i180 ], [ %kk.8.i, %for.inc221.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i132}, i64 0, metadata !465) #5, !dbg !543
  %arrayidx175.i = getelementptr inbounds i32* %235, i64 %indvars.iv466.i, !dbg !543
  %238 = load i32* %arrayidx175.i, align 4, !dbg !543, !tbaa !196
  %cmp176.i = icmp sgt i32 %238, 0, !dbg !543
  br i1 %cmp176.i, label %if.then177.i, label %for.inc221.i, !dbg !543

if.then177.i:                                     ; preds = %for.body173.i181
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i131}, i64 0, metadata !468) #5, !dbg !545
  %arrayidx179.i = getelementptr inbounds i32* %236, i64 %indvars.iv466.i, !dbg !545
  %239 = load i32* %arrayidx179.i, align 4, !dbg !545, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %239}, i64 0, metadata !477) #5, !dbg !545
  %add182.i = add i32 %238, -1, !dbg !550
  %sub183.i = add i32 %add182.i, %239, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %sub183.i}, i64 0, metadata !479) #5, !dbg !550
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !481) #5, !dbg !551
  call void @llvm.dbg.value(metadata !480, i64 0, metadata !483) #5, !dbg !551
  call void @llvm.dbg.value(metadata !{i32 %239}, i64 0, metadata !490) #5, !dbg !552
  %cmp185415.i = icmp sgt i32 %239, %sub183.i, !dbg !552
  br i1 %cmp185415.i, label %for.end211.i, label %for.body186.lr.ph.i, !dbg !552

for.body186.lr.ph.i:                              ; preds = %if.then177.i
  %240 = sext i32 %kk.6427.i to i64
  %241 = sext i32 %239 to i64, !dbg !552
  br label %for.body186.i, !dbg !552

for.body186.i:                                    ; preds = %for.body186.i, %for.body186.lr.ph.i
  %indvars.iv463.i = phi i64 [ %indvars.iv.next464.i, %for.body186.i ], [ %241, %for.body186.lr.ph.i ], !dbg !552
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %for.body186.i ], [ %240, %for.body186.lr.ph.i ]
  %rsum0.2417.i = phi double [ %add203.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %isum0.2416.i = phi double [ %add207.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %242 = trunc i64 %indvars.iv461.i to i32, !dbg !547
  %mul187.i = shl nsw i32 %242, 1, !dbg !547
  %idxprom188.i182 = sext i32 %mul187.i to i64, !dbg !547
  call void @llvm.dbg.value(metadata !{double** %entriesA.i123}, i64 0, metadata !471) #5, !dbg !547
  %arrayidx189.i183 = getelementptr inbounds double* %237, i64 %idxprom188.i182, !dbg !547
  %243 = load double* %arrayidx189.i183, align 8, !dbg !547, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %243}, i64 0, metadata !492) #5, !dbg !547
  %add191381.i = or i32 %mul187.i, 1, !dbg !547
  %idxprom192.i = sext i32 %add191381.i to i64, !dbg !547
  %arrayidx193.i = getelementptr inbounds double* %237, i64 %idxprom192.i, !dbg !547
  %244 = load double* %arrayidx193.i, align 8, !dbg !547, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %244}, i64 0, metadata !493) #5, !dbg !547
  %245 = trunc i64 %indvars.iv463.i to i32, !dbg !553
  %mul194.i184 = shl nsw i32 %245, 1, !dbg !553
  call void @llvm.dbg.value(metadata !{i32 %mul194.i184}, i64 0, metadata !495) #5, !dbg !553
  %add195382.i = or i32 %mul194.i184, 1, !dbg !553
  call void @llvm.dbg.value(metadata !{i32 %add195382.i}, i64 0, metadata !496) #5, !dbg !553
  %idxprom196.i = sext i32 %mul194.i184 to i64, !dbg !554
  %arrayidx197.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom196.i, !dbg !554
  %246 = load double* %arrayidx197.i, align 8, !dbg !554, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %246}, i64 0, metadata !498) #5, !dbg !554
  %idxprom198.i = sext i32 %add195382.i to i64, !dbg !554
  %arrayidx199.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom198.i, !dbg !554
  %247 = load double* %arrayidx199.i, align 8, !dbg !554, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %247}, i64 0, metadata !499) #5, !dbg !554
  %mul200.i = fmul double %243, %246, !dbg !555
  %mul201.i185 = fmul double %244, %247, !dbg !555
  %add202.i = fadd double %mul200.i, %mul201.i185, !dbg !555
  %add203.i = fadd double %rsum0.2417.i, %add202.i, !dbg !555
  call void @llvm.dbg.value(metadata !{double %add203.i}, i64 0, metadata !483) #5, !dbg !555
  %mul204.i186 = fmul double %243, %247, !dbg !555
  %mul205.i = fmul double %244, %246, !dbg !555
  %sub206.i = fsub double %mul204.i186, %mul205.i, !dbg !555
  %add207.i = fadd double %isum0.2416.i, %sub206.i, !dbg !555
  call void @llvm.dbg.value(metadata !{double %add207.i}, i64 0, metadata !481) #5, !dbg !555
  %indvars.iv.next464.i = add i64 %indvars.iv463.i, 1, !dbg !552
  %indvars.iv.next462.i = add i64 %indvars.iv461.i, 1, !dbg !552
  %cmp185.i = icmp slt i32 %245, %sub183.i, !dbg !552
  br i1 %cmp185.i, label %for.body186.i, label %for.cond184.for.end211_crit_edge.i, !dbg !552

for.cond184.for.end211_crit_edge.i:               ; preds = %for.body186.i
  %248 = add i32 %238, %kk.6427.i, !dbg !552
  br label %for.end211.i, !dbg !552

for.end211.i:                                     ; preds = %for.cond184.for.end211_crit_edge.i, %if.then177.i
  %kk.7.lcssa.i = phi i32 [ %248, %for.cond184.for.end211_crit_edge.i ], [ %kk.6427.i, %if.then177.i ]
  %rsum0.2.lcssa.i = phi double [ %add203.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %isum0.2.lcssa.i = phi double [ %add207.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %249 = trunc i64 %indvars.iv466.i to i32, !dbg !556
  %mul212.i = shl nsw i32 %249, 1, !dbg !556
  call void @llvm.dbg.value(metadata !{i32 %mul212.i}, i64 0, metadata !495) #5, !dbg !556
  %add213380.i = or i32 %mul212.i, 1, !dbg !556
  call void @llvm.dbg.value(metadata !{i32 %add213380.i}, i64 0, metadata !496) #5, !dbg !556
  %idxprom214.i = sext i32 %mul212.i to i64, !dbg !557
  %arrayidx215.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom214.i, !dbg !557
  %250 = load double* %arrayidx215.i, align 8, !dbg !557, !tbaa !257
  %sub216.i = fsub double %250, %rsum0.2.lcssa.i, !dbg !557
  store double %sub216.i, double* %arrayidx215.i, align 8, !dbg !557, !tbaa !257
  %idxprom217.i = sext i32 %add213380.i to i64, !dbg !557
  %arrayidx218.i = getelementptr inbounds double* %colB0.0.lcssa.i170, i64 %idxprom217.i, !dbg !557
  %251 = load double* %arrayidx218.i, align 8, !dbg !557, !tbaa !257
  %sub219.i = fsub double %251, %isum0.2.lcssa.i, !dbg !557
  store double %sub219.i, double* %arrayidx218.i, align 8, !dbg !557, !tbaa !257
  br label %for.inc221.i, !dbg !558

for.inc221.i:                                     ; preds = %for.end211.i, %for.body173.i181
  %kk.8.i = phi i32 [ %kk.7.lcssa.i, %for.end211.i ], [ %kk.6427.i, %for.body173.i181 ]
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1, !dbg !540
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i129}, i64 0, metadata !461) #5, !dbg !540
  %lftr.wideiv333 = trunc i64 %indvars.iv.next467.i to i32, !dbg !540
  %exitcond334 = icmp eq i32 %lftr.wideiv333, %234, !dbg !540
  br i1 %exitcond334, label %sw.epilog, label %for.body173.i181, !dbg !540

sw.bb22:                                          ; preds = %if.end18
  %252 = bitcast double** %entriesA.i187 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 8, i8* %252) #5, !dbg !559
  %253 = bitcast double** %entriesB.i188 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 8, i8* %253) #5, !dbg !559
  %254 = bitcast i32* %inc1.i189 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 4, i8* %254) #5, !dbg !559
  %255 = bitcast i32* %inc2.i190 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 4, i8* %255) #5, !dbg !559
  %256 = bitcast i32* %ncolB.i191 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 4, i8* %256) #5, !dbg !559
  %257 = bitcast i32* %nentA.i192 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 4, i8* %257) #5, !dbg !559
  %258 = bitcast i32* %nrowA.i193 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 4, i8* %258) #5, !dbg !559
  %259 = bitcast i32* %nrowB.i194 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 4, i8* %259) #5, !dbg !559
  %260 = bitcast i32** %indicesA.i195 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 8, i8* %260) #5, !dbg !559
  %261 = bitcast i32** %sizesA.i196 to i8*, !dbg !559
  call void @llvm.lifetime.start(i64 8, i8* %261) #5, !dbg !559
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !561) #5, !dbg !559
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !562) #5, !dbg !563
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i187}, metadata !129) #5, !dbg !564
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i188}, metadata !130) #5, !dbg !564
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i189}, metadata !133) #5, !dbg !565
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i190}, metadata !134) #5, !dbg !565
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i191}, metadata !139) #5, !dbg !566
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i192}, metadata !140) #5, !dbg !566
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i193}, metadata !141) #5, !dbg !566
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i194}, metadata !142) #5, !dbg !566
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i195}, metadata !145) #5, !dbg !567
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i196}, metadata !146) #5, !dbg !567
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i193, i32* %nentA.i192, i32** %sizesA.i196, i32** %indicesA.i195, double** %entriesA.i187) #6, !dbg !568
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i194, i32* %ncolB.i191, i32* %inc1.i189, i32* %inc2.i190, double** %entriesB.i188) #6, !dbg !569
  call void @llvm.dbg.value(metadata !{double** %entriesB.i188}, i64 0, metadata !570) #5, !dbg !571
  call void @llvm.dbg.value(metadata !{double** %entriesB.i188}, i64 0, metadata !130), !dbg !571
  %262 = load double** %entriesB.i188, align 8, !dbg !571, !tbaa !191
  call void @llvm.dbg.value(metadata !{double* %262}, i64 0, metadata !572) #5, !dbg !571
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !573) #5, !dbg !574
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i191}, i64 0, metadata !576) #5, !dbg !574
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i191}, i64 0, metadata !139), !dbg !574
  %263 = load i32* %ncolB.i191, align 4, !dbg !574, !tbaa !196
  %sub497.i = add nsw i32 %263, -2, !dbg !574
  %cmp498.i = icmp sgt i32 %sub497.i, 0, !dbg !574
  br i1 %cmp498.i, label %for.body.lr.ph.i201, label %for.end90.i233, !dbg !574

for.body.lr.ph.i201:                              ; preds = %sw.bb22
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i194}, i64 0, metadata !577) #5, !dbg !578
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i194}, i64 0, metadata !142), !dbg !578
  %264 = load i32* %nrowB.i194, align 4, !dbg !578, !tbaa !196
  %mul.i197 = shl nsw i32 %264, 1, !dbg !578
  %idx.ext.i198 = sext i32 %mul.i197 to i64, !dbg !578
  %add.ptr.sum.i199 = shl nsw i64 %idx.ext.i198, 1, !dbg !580
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !582
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !141), !dbg !582
  %265 = load i32* %nrowA.i193, align 4, !dbg !582, !tbaa !196
  %cmp5487.i = icmp sgt i32 %265, 0, !dbg !582
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i194}, i64 0, metadata !577) #5, !dbg !584
  %add.ptr3.sum.i200 = add i64 %add.ptr.sum.i199, %idx.ext.i198, !dbg !584
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i191}, i64 0, metadata !576) #5, !dbg !574
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !585) #5, !dbg !586
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !146), !dbg !586
  %266 = load i32** %sizesA.i196, align 8, !dbg !586, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !582
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !588) #5, !dbg !589
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !129), !dbg !589
  %267 = load double** %entriesA.i187, align 8, !dbg !589, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !593) #5, !dbg !594
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !145), !dbg !594
  %268 = load i32** %indicesA.i195, align 8, !dbg !594, !tbaa !191
  br label %for.body.i202, !dbg !574

for.body.i202:                                    ; preds = %for.end84.i229, %for.body.lr.ph.i201
  %jcolB.0501.i = phi i32 [ 0, %for.body.lr.ph.i201 ], [ %add89.i227, %for.end84.i229 ]
  %colB0.0499.i = phi double* [ %262, %for.body.lr.ph.i201 ], [ %add.ptr87.i226, %for.end84.i229 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i194}, i64 0, metadata !577) #5, !dbg !578
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !595) #5, !dbg !582
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !596) #5, !dbg !582
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !582
  br i1 %cmp5487.i, label %for.body6.i205, label %for.end84.i229, !dbg !582

for.body6.i205:                                   ; preds = %for.body.i202, %for.inc82.i225
  %indvars.iv528.i = phi i64 [ %indvars.iv.next529.i, %for.inc82.i225 ], [ 0, %for.body.i202 ]
  %kk.0491.i = phi i32 [ %kk.2.i223, %for.inc82.i225 ], [ 0, %for.body.i202 ]
  %irowA.0488.i = phi i32 [ %inc83.i, %for.inc82.i225 ], [ 0, %for.body.i202 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !585) #5, !dbg !586
  %arrayidx.i203 = getelementptr inbounds i32* %266, i64 %indvars.iv528.i, !dbg !586
  %269 = load i32* %arrayidx.i203, align 4, !dbg !586, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %269}, i64 0, metadata !597) #5, !dbg !586
  %cmp7.i204 = icmp sgt i32 %269, 0, !dbg !586
  br i1 %cmp7.i204, label %for.body10.lr.ph.i, label %for.inc82.i225, !dbg !586

for.body10.lr.ph.i:                               ; preds = %for.body6.i205
  %270 = sext i32 %kk.0491.i to i64
  %271 = trunc i64 %indvars.iv528.i to i32, !dbg !598
  br label %for.body10.i, !dbg !599

for.body10.i:                                     ; preds = %if.end.i, %for.body10.lr.ph.i
  %indvars.iv525.i = phi i64 [ %270, %for.body10.lr.ph.i ], [ %indvars.iv.next526.i, %if.end.i ]
  %kk.1478.i = phi i32 [ %kk.0491.i, %for.body10.lr.ph.i ], [ %inc60.i, %if.end.i ]
  %ii.0477.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i221, %if.end.i ]
  %rsum2.0476.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add55.i218, %if.end.i ]
  %rsum1.0475.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add47.i214, %if.end.i ]
  %rsum0.0474.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add39.i209, %if.end.i ]
  %isum2.0473.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add59.i, %if.end.i ]
  %isum1.0472.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add51.i216, %if.end.i ]
  %isum0.0471.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add43.i, %if.end.i ]
  %272 = trunc i64 %indvars.iv525.i to i32, !dbg !589
  %mul11.i = shl nsw i32 %272, 1, !dbg !589
  %idxprom12.i = sext i32 %mul11.i to i64, !dbg !589
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !588) #5, !dbg !589
  %arrayidx13.i = getelementptr inbounds double* %267, i64 %idxprom12.i, !dbg !589
  %273 = load double* %arrayidx13.i, align 8, !dbg !589, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %273}, i64 0, metadata !600) #5, !dbg !589
  %add410.i = or i32 %mul11.i, 1, !dbg !601
  %idxprom15.i = sext i32 %add410.i to i64, !dbg !601
  %arrayidx16.i206 = getelementptr inbounds double* %267, i64 %idxprom15.i, !dbg !601
  %274 = load double* %arrayidx16.i206, align 8, !dbg !601, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %274}, i64 0, metadata !602) #5, !dbg !601
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !593) #5, !dbg !594
  %arrayidx18.i207 = getelementptr inbounds i32* %268, i64 %indvars.iv525.i, !dbg !594
  %275 = load i32* %arrayidx18.i207, align 4, !dbg !594, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %275}, i64 0, metadata !603) #5, !dbg !594
  %cmp19.i = icmp sgt i32 %275, -1, !dbg !598
  %cmp20.i = icmp slt i32 %275, %271, !dbg !598
  %or.cond.i = and i1 %cmp19.i, %cmp20.i, !dbg !598
  br i1 %or.cond.i, label %if.end.i, label %if.then21.i, !dbg !598

if.then21.i:                                      ; preds = %for.body10.i
  %276 = load %struct._IO_FILE** @stderr, align 8, !dbg !604, !tbaa !191
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %276, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.0488.i, i32 %kk.1478.i, i32 %ii.0477.i, i32 %275) #6, !dbg !604
  call void @exit(i32 -1) #7, !dbg !606
  unreachable, !dbg !606

if.end.i:                                         ; preds = %for.body10.i
  %mul22.i = shl nsw i32 %275, 1, !dbg !607
  call void @llvm.dbg.value(metadata !{i32 %mul22.i}, i64 0, metadata !608) #5, !dbg !607
  %add23411.i = or i32 %mul22.i, 1, !dbg !609
  call void @llvm.dbg.value(metadata !{i32 %add23411.i}, i64 0, metadata !610) #5, !dbg !609
  %idxprom24.i = sext i32 %mul22.i to i64, !dbg !611
  %arrayidx25.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom24.i, !dbg !611
  %277 = load double* %arrayidx25.i, align 8, !dbg !611, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %277}, i64 0, metadata !612) #5, !dbg !611
  %idxprom26.i = sext i32 %add23411.i to i64, !dbg !611
  %arrayidx27.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom26.i, !dbg !611
  %278 = load double* %arrayidx27.i, align 8, !dbg !611, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %278}, i64 0, metadata !613) #5, !dbg !611
  %add.ptr.sum412.i = add i64 %idxprom24.i, %idx.ext.i198, !dbg !614
  %arrayidx29.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum412.i, !dbg !614
  %279 = load double* %arrayidx29.i, align 8, !dbg !614, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %279}, i64 0, metadata !615) #5, !dbg !614
  %add.ptr.sum413.i = add i64 %idxprom26.i, %idx.ext.i198, !dbg !614
  %arrayidx31.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum413.i, !dbg !614
  %280 = load double* %arrayidx31.i, align 8, !dbg !614, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %280}, i64 0, metadata !616) #5, !dbg !614
  %add.ptr3.sum414.i = add i64 %idxprom24.i, %add.ptr.sum.i199, !dbg !617
  %arrayidx33.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum414.i, !dbg !617
  %281 = load double* %arrayidx33.i, align 8, !dbg !617, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %281}, i64 0, metadata !618) #5, !dbg !617
  %add.ptr3.sum415.i = add i64 %idxprom26.i, %add.ptr.sum.i199, !dbg !617
  %arrayidx35.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum415.i, !dbg !617
  %282 = load double* %arrayidx35.i, align 8, !dbg !617, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %282}, i64 0, metadata !619) #5, !dbg !617
  %mul36.i = fmul double %273, %277, !dbg !620
  %mul37.i208 = fmul double %274, %278, !dbg !620
  %add38.i = fadd double %mul36.i, %mul37.i208, !dbg !620
  %add39.i209 = fadd double %rsum0.0474.i, %add38.i, !dbg !620
  call void @llvm.dbg.value(metadata !{double %add39.i209}, i64 0, metadata !621) #5, !dbg !620
  %mul40.i = fmul double %273, %278, !dbg !620
  %mul41.i210 = fmul double %274, %277, !dbg !620
  %sub42.i211 = fsub double %mul40.i, %mul41.i210, !dbg !620
  %add43.i = fadd double %isum0.0471.i, %sub42.i211, !dbg !620
  call void @llvm.dbg.value(metadata !{double %add43.i}, i64 0, metadata !622) #5, !dbg !620
  %mul44.i212 = fmul double %273, %279, !dbg !623
  %mul45.i213 = fmul double %274, %280, !dbg !623
  %add46.i = fadd double %mul44.i212, %mul45.i213, !dbg !623
  %add47.i214 = fadd double %rsum1.0475.i, %add46.i, !dbg !623
  call void @llvm.dbg.value(metadata !{double %add47.i214}, i64 0, metadata !624) #5, !dbg !623
  %mul48.i = fmul double %273, %280, !dbg !623
  %mul49.i215 = fmul double %274, %279, !dbg !623
  %sub50.i = fsub double %mul48.i, %mul49.i215, !dbg !623
  %add51.i216 = fadd double %isum1.0472.i, %sub50.i, !dbg !623
  call void @llvm.dbg.value(metadata !{double %add51.i216}, i64 0, metadata !625) #5, !dbg !623
  %mul52.i = fmul double %273, %281, !dbg !626
  %mul53.i217 = fmul double %274, %282, !dbg !626
  %add54.i = fadd double %mul52.i, %mul53.i217, !dbg !626
  %add55.i218 = fadd double %rsum2.0476.i, %add54.i, !dbg !626
  call void @llvm.dbg.value(metadata !{double %add55.i218}, i64 0, metadata !627) #5, !dbg !626
  %mul56.i219 = fmul double %273, %282, !dbg !626
  %mul57.i220 = fmul double %274, %281, !dbg !626
  %sub58.i = fsub double %mul56.i219, %mul57.i220, !dbg !626
  %add59.i = fadd double %isum2.0473.i, %sub58.i, !dbg !626
  call void @llvm.dbg.value(metadata !{double %add59.i}, i64 0, metadata !628) #5, !dbg !626
  %inc.i221 = add nsw i32 %ii.0477.i, 1, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %inc.i221}, i64 0, metadata !629) #5, !dbg !599
  %indvars.iv.next526.i = add i64 %indvars.iv525.i, 1, !dbg !599
  %inc60.i = add nsw i32 %kk.1478.i, 1, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %inc60.i}, i64 0, metadata !595) #5, !dbg !599
  %cmp9.i = icmp slt i32 %inc.i221, %269, !dbg !599
  br i1 %cmp9.i, label %for.body10.i, label %for.end.i222, !dbg !599

for.end.i222:                                     ; preds = %if.end.i
  %phitmp535.i = shl i32 %271, 1, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %phitmp535.i}, i64 0, metadata !608) #5, !dbg !630
  %add62405.i = or i32 %phitmp535.i, 1, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %add62405.i}, i64 0, metadata !610) #5, !dbg !631
  %idxprom63.i = sext i32 %phitmp535.i to i64, !dbg !632
  %arrayidx64.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom63.i, !dbg !632
  %283 = load double* %arrayidx64.i, align 8, !dbg !632, !tbaa !257
  %sub65.i = fsub double %283, %add39.i209, !dbg !632
  store double %sub65.i, double* %arrayidx64.i, align 8, !dbg !632, !tbaa !257
  %idxprom66.i = sext i32 %add62405.i to i64, !dbg !632
  %arrayidx67.i = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom66.i, !dbg !632
  %284 = load double* %arrayidx67.i, align 8, !dbg !632, !tbaa !257
  %sub68.i = fsub double %284, %add43.i, !dbg !632
  store double %sub68.i, double* %arrayidx67.i, align 8, !dbg !632, !tbaa !257
  %add.ptr.sum406.i = add i64 %idxprom63.i, %idx.ext.i198, !dbg !633
  %arrayidx70.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum406.i, !dbg !633
  %285 = load double* %arrayidx70.i, align 8, !dbg !633, !tbaa !257
  %sub71.i = fsub double %285, %add47.i214, !dbg !633
  store double %sub71.i, double* %arrayidx70.i, align 8, !dbg !633, !tbaa !257
  %add.ptr.sum407.i = add i64 %idxprom66.i, %idx.ext.i198, !dbg !633
  %arrayidx73.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum407.i, !dbg !633
  %286 = load double* %arrayidx73.i, align 8, !dbg !633, !tbaa !257
  %sub74.i = fsub double %286, %add51.i216, !dbg !633
  store double %sub74.i, double* %arrayidx73.i, align 8, !dbg !633, !tbaa !257
  %add.ptr3.sum408.i = add i64 %idxprom63.i, %add.ptr.sum.i199, !dbg !634
  %arrayidx76.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum408.i, !dbg !634
  %287 = load double* %arrayidx76.i, align 8, !dbg !634, !tbaa !257
  %sub77.i = fsub double %287, %add55.i218, !dbg !634
  store double %sub77.i, double* %arrayidx76.i, align 8, !dbg !634, !tbaa !257
  %add.ptr3.sum409.i = add i64 %idxprom66.i, %add.ptr.sum.i199, !dbg !634
  %arrayidx79.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum409.i, !dbg !634
  %288 = load double* %arrayidx79.i, align 8, !dbg !634, !tbaa !257
  %sub80.i = fsub double %288, %add59.i, !dbg !634
  store double %sub80.i, double* %arrayidx79.i, align 8, !dbg !634, !tbaa !257
  br label %for.inc82.i225, !dbg !635

for.inc82.i225:                                   ; preds = %for.end.i222, %for.body6.i205
  %kk.2.i223 = phi i32 [ %inc60.i, %for.end.i222 ], [ %kk.0491.i, %for.body6.i205 ]
  %indvars.iv.next529.i = add i64 %indvars.iv528.i, 1, !dbg !582
  %inc83.i = add nsw i32 %irowA.0488.i, 1, !dbg !582
  call void @llvm.dbg.value(metadata !{i32 %inc83.i}, i64 0, metadata !596) #5, !dbg !582
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !582
  %289 = trunc i64 %indvars.iv.next529.i to i32, !dbg !582
  %cmp5.i224 = icmp slt i32 %289, %265, !dbg !582
  br i1 %cmp5.i224, label %for.body6.i205, label %for.end84.i229, !dbg !582

for.end84.i229:                                   ; preds = %for.inc82.i225, %for.body.i202
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i194}, i64 0, metadata !577) #5, !dbg !584
  %add.ptr87.i226 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum.i200, !dbg !584
  call void @llvm.dbg.value(metadata !{double* %add.ptr87.i226}, i64 0, metadata !572) #5, !dbg !584
  %add89.i227 = add nsw i32 %jcolB.0501.i, 3, !dbg !574
  call void @llvm.dbg.value(metadata !{i32 %add89.i227}, i64 0, metadata !573) #5, !dbg !574
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i191}, i64 0, metadata !576) #5, !dbg !574
  %cmp.i228 = icmp slt i32 %add89.i227, %sub497.i, !dbg !574
  br i1 %cmp.i228, label %for.body.i202, label %for.end90.i233, !dbg !574

for.end90.i233:                                   ; preds = %for.end84.i229, %sw.bb22
  %jcolB.0.lcssa.i230 = phi i32 [ 0, %sw.bb22 ], [ %add89.i227, %for.end84.i229 ]
  %colB0.0.lcssa.i231 = phi double* [ %262, %sw.bb22 ], [ %add.ptr87.i226, %for.end84.i229 ]
  %cmp92.i232 = icmp eq i32 %jcolB.0.lcssa.i230, %sub497.i, !dbg !636
  br i1 %cmp92.i232, label %if.then93.i236, label %if.else.i263, !dbg !636

if.then93.i236:                                   ; preds = %for.end90.i233
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i194}, i64 0, metadata !577) #5, !dbg !637
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i194}, i64 0, metadata !142), !dbg !637
  %290 = load i32* %nrowB.i194, align 4, !dbg !637, !tbaa !196
  %mul94.i234 = shl nsw i32 %290, 1, !dbg !637
  %idx.ext95.i235 = sext i32 %mul94.i234 to i64, !dbg !637
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !595) #5, !dbg !639
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !596) #5, !dbg !639
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !639
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !141), !dbg !639
  %291 = load i32* %nrowA.i193, align 4, !dbg !639, !tbaa !196
  %cmp98436.i = icmp sgt i32 %291, 0, !dbg !639
  br i1 %cmp98436.i, label %for.body99.lr.ph.i237, label %sw.epilog, !dbg !639

for.body99.lr.ph.i237:                            ; preds = %if.then93.i236
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !585) #5, !dbg !641
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !146), !dbg !641
  %292 = load i32** %sizesA.i196, align 8, !dbg !641, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !639
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !588) #5, !dbg !643
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !129), !dbg !643
  %293 = load double** %entriesA.i187, align 8, !dbg !643, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !593) #5, !dbg !647
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !145), !dbg !647
  %294 = load i32** %indicesA.i195, align 8, !dbg !647, !tbaa !191
  br label %for.body99.i240, !dbg !639

for.body99.i240:                                  ; preds = %for.inc167.i, %for.body99.lr.ph.i237
  %indvars.iv510.i = phi i64 [ 0, %for.body99.lr.ph.i237 ], [ %indvars.iv.next511.i, %for.inc167.i ]
  %kk.3440.i = phi i32 [ 0, %for.body99.lr.ph.i237 ], [ %kk.5.i261, %for.inc167.i ]
  %irowA.1437.i = phi i32 [ 0, %for.body99.lr.ph.i237 ], [ %inc168.i, %for.inc167.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !585) #5, !dbg !641
  %arrayidx101.i238 = getelementptr inbounds i32* %292, i64 %indvars.iv510.i, !dbg !641
  %295 = load i32* %arrayidx101.i238, align 4, !dbg !641, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %295}, i64 0, metadata !597) #5, !dbg !641
  %cmp102.i239 = icmp sgt i32 %295, 0, !dbg !641
  br i1 %cmp102.i239, label %for.body106.lr.ph.i, label %for.inc167.i, !dbg !641

for.body106.lr.ph.i:                              ; preds = %for.body99.i240
  %296 = sext i32 %kk.3440.i to i64
  %297 = trunc i64 %indvars.iv510.i to i32, !dbg !648
  br label %for.body106.i, !dbg !649

for.body106.i:                                    ; preds = %if.end121.i, %for.body106.lr.ph.i
  %indvars.iv.i241 = phi i64 [ %296, %for.body106.lr.ph.i ], [ %indvars.iv.next.i255, %if.end121.i ]
  %kk.4430.i = phi i32 [ %kk.3440.i, %for.body106.lr.ph.i ], [ %inc150.i, %if.end121.i ]
  %ii.1429.i = phi i32 [ 0, %for.body106.lr.ph.i ], [ %inc149.i, %if.end121.i ]
  %rsum1.1428.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add143.i, %if.end121.i ]
  %rsum0.1427.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add135.i250, %if.end121.i ]
  %isum1.1426.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add147.i254, %if.end121.i ]
  %isum0.1425.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add139.i, %if.end121.i ]
  %298 = trunc i64 %indvars.iv.i241 to i32, !dbg !643
  %mul107.i = shl nsw i32 %298, 1, !dbg !643
  %idxprom108.i = sext i32 %mul107.i to i64, !dbg !643
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !588) #5, !dbg !643
  %arrayidx109.i = getelementptr inbounds double* %293, i64 %idxprom108.i, !dbg !643
  %299 = load double* %arrayidx109.i, align 8, !dbg !643, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %299}, i64 0, metadata !600) #5, !dbg !643
  %add111401.i = or i32 %mul107.i, 1, !dbg !650
  %idxprom112.i = sext i32 %add111401.i to i64, !dbg !650
  %arrayidx113.i = getelementptr inbounds double* %293, i64 %idxprom112.i, !dbg !650
  %300 = load double* %arrayidx113.i, align 8, !dbg !650, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %300}, i64 0, metadata !602) #5, !dbg !650
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !593) #5, !dbg !647
  %arrayidx115.i242 = getelementptr inbounds i32* %294, i64 %indvars.iv.i241, !dbg !647
  %301 = load i32* %arrayidx115.i242, align 4, !dbg !647, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %301}, i64 0, metadata !603) #5, !dbg !647
  %cmp116.i = icmp sgt i32 %301, -1, !dbg !648
  %cmp118.i = icmp slt i32 %301, %297, !dbg !648
  %or.cond416.i = and i1 %cmp116.i, %cmp118.i, !dbg !648
  br i1 %or.cond416.i, label %if.end121.i, label %if.then119.i, !dbg !648

if.then119.i:                                     ; preds = %for.body106.i
  %302 = load %struct._IO_FILE** @stderr, align 8, !dbg !651, !tbaa !191
  %call120.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.1437.i, i32 %kk.4430.i, i32 %ii.1429.i, i32 %301) #6, !dbg !651
  call void @exit(i32 -1) #7, !dbg !653
  unreachable, !dbg !653

if.end121.i:                                      ; preds = %for.body106.i
  %mul122.i243 = shl nsw i32 %301, 1, !dbg !654
  call void @llvm.dbg.value(metadata !{i32 %mul122.i243}, i64 0, metadata !608) #5, !dbg !654
  %add123402.i = or i32 %mul122.i243, 1, !dbg !655
  call void @llvm.dbg.value(metadata !{i32 %add123402.i}, i64 0, metadata !610) #5, !dbg !655
  %idxprom124.i244 = sext i32 %mul122.i243 to i64, !dbg !656
  %arrayidx125.i245 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom124.i244, !dbg !656
  %303 = load double* %arrayidx125.i245, align 8, !dbg !656, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %303}, i64 0, metadata !612) #5, !dbg !656
  %idxprom126.i = sext i32 %add123402.i to i64, !dbg !656
  %arrayidx127.i246 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom126.i, !dbg !656
  %304 = load double* %arrayidx127.i246, align 8, !dbg !656, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %304}, i64 0, metadata !613) #5, !dbg !656
  %add.ptr96.sum403.i = add i64 %idxprom124.i244, %idx.ext95.i235, !dbg !657
  %arrayidx129.i247 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum403.i, !dbg !657
  %305 = load double* %arrayidx129.i247, align 8, !dbg !657, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %305}, i64 0, metadata !615) #5, !dbg !657
  %add.ptr96.sum404.i = add i64 %idxprom126.i, %idx.ext95.i235, !dbg !657
  %arrayidx131.i248 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum404.i, !dbg !657
  %306 = load double* %arrayidx131.i248, align 8, !dbg !657, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %306}, i64 0, metadata !616) #5, !dbg !657
  %mul132.i = fmul double %299, %303, !dbg !658
  %mul133.i249 = fmul double %300, %304, !dbg !658
  %add134.i = fadd double %mul132.i, %mul133.i249, !dbg !658
  %add135.i250 = fadd double %rsum0.1427.i, %add134.i, !dbg !658
  call void @llvm.dbg.value(metadata !{double %add135.i250}, i64 0, metadata !621) #5, !dbg !658
  %mul136.i = fmul double %299, %304, !dbg !658
  %mul137.i = fmul double %300, %303, !dbg !658
  %sub138.i251 = fsub double %mul136.i, %mul137.i, !dbg !658
  %add139.i = fadd double %isum0.1425.i, %sub138.i251, !dbg !658
  call void @llvm.dbg.value(metadata !{double %add139.i}, i64 0, metadata !622) #5, !dbg !658
  %mul140.i252 = fmul double %299, %305, !dbg !659
  %mul141.i = fmul double %300, %306, !dbg !659
  %add142.i = fadd double %mul140.i252, %mul141.i, !dbg !659
  %add143.i = fadd double %rsum1.1428.i, %add142.i, !dbg !659
  call void @llvm.dbg.value(metadata !{double %add143.i}, i64 0, metadata !624) #5, !dbg !659
  %mul144.i = fmul double %299, %306, !dbg !659
  %mul145.i253 = fmul double %300, %305, !dbg !659
  %sub146.i = fsub double %mul144.i, %mul145.i253, !dbg !659
  %add147.i254 = fadd double %isum1.1426.i, %sub146.i, !dbg !659
  call void @llvm.dbg.value(metadata !{double %add147.i254}, i64 0, metadata !625) #5, !dbg !659
  %inc149.i = add nsw i32 %ii.1429.i, 1, !dbg !649
  call void @llvm.dbg.value(metadata !{i32 %inc149.i}, i64 0, metadata !629) #5, !dbg !649
  %indvars.iv.next.i255 = add i64 %indvars.iv.i241, 1, !dbg !649
  %inc150.i = add nsw i32 %kk.4430.i, 1, !dbg !649
  call void @llvm.dbg.value(metadata !{i32 %inc150.i}, i64 0, metadata !595) #5, !dbg !649
  %cmp105.i = icmp slt i32 %inc149.i, %295, !dbg !649
  br i1 %cmp105.i, label %for.body106.i, label %for.end151.i, !dbg !649

for.end151.i:                                     ; preds = %if.end121.i
  %phitmp534.i = shl i32 %297, 1, !dbg !649
  call void @llvm.dbg.value(metadata !{i32 %phitmp534.i}, i64 0, metadata !608) #5, !dbg !660
  %add153399.i = or i32 %phitmp534.i, 1, !dbg !661
  call void @llvm.dbg.value(metadata !{i32 %add153399.i}, i64 0, metadata !610) #5, !dbg !661
  %idxprom154.i = sext i32 %phitmp534.i to i64, !dbg !662
  %arrayidx155.i256 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom154.i, !dbg !662
  %307 = load double* %arrayidx155.i256, align 8, !dbg !662, !tbaa !257
  %sub156.i257 = fsub double %307, %add135.i250, !dbg !662
  store double %sub156.i257, double* %arrayidx155.i256, align 8, !dbg !662, !tbaa !257
  %idxprom157.i = sext i32 %add153399.i to i64, !dbg !662
  %arrayidx158.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom157.i, !dbg !662
  %308 = load double* %arrayidx158.i, align 8, !dbg !662, !tbaa !257
  %sub159.i = fsub double %308, %add139.i, !dbg !662
  store double %sub159.i, double* %arrayidx158.i, align 8, !dbg !662, !tbaa !257
  %add.ptr96.sum.i258 = add i64 %idxprom154.i, %idx.ext95.i235, !dbg !663
  %arrayidx161.i259 = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum.i258, !dbg !663
  %309 = load double* %arrayidx161.i259, align 8, !dbg !663, !tbaa !257
  %sub162.i = fsub double %309, %add143.i, !dbg !663
  store double %sub162.i, double* %arrayidx161.i259, align 8, !dbg !663, !tbaa !257
  %add.ptr96.sum400.i = add i64 %idxprom157.i, %idx.ext95.i235, !dbg !663
  %arrayidx164.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %add.ptr96.sum400.i, !dbg !663
  %310 = load double* %arrayidx164.i, align 8, !dbg !663, !tbaa !257
  %sub165.i260 = fsub double %310, %add147.i254, !dbg !663
  store double %sub165.i260, double* %arrayidx164.i, align 8, !dbg !663, !tbaa !257
  br label %for.inc167.i, !dbg !664

for.inc167.i:                                     ; preds = %for.end151.i, %for.body99.i240
  %kk.5.i261 = phi i32 [ %inc150.i, %for.end151.i ], [ %kk.3440.i, %for.body99.i240 ]
  %indvars.iv.next511.i = add i64 %indvars.iv510.i, 1, !dbg !639
  %inc168.i = add nsw i32 %irowA.1437.i, 1, !dbg !639
  call void @llvm.dbg.value(metadata !{i32 %inc168.i}, i64 0, metadata !596) #5, !dbg !639
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !639
  %311 = trunc i64 %indvars.iv.next511.i to i32, !dbg !639
  %cmp98.i262 = icmp slt i32 %311, %291, !dbg !639
  br i1 %cmp98.i262, label %for.body99.i240, label %sw.epilog, !dbg !639

if.else.i263:                                     ; preds = %for.end90.i233
  %sub170.i = add nsw i32 %263, -1, !dbg !665
  %cmp171.i = icmp eq i32 %jcolB.0.lcssa.i230, %sub170.i, !dbg !665
  br i1 %cmp171.i, label %for.cond173.preheader.i, label %sw.epilog, !dbg !665

for.cond173.preheader.i:                          ; preds = %if.else.i263
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !666
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !141), !dbg !666
  %312 = load i32* %nrowA.i193, align 4, !dbg !666, !tbaa !196
  %cmp174456.i = icmp sgt i32 %312, 0, !dbg !666
  br i1 %cmp174456.i, label %for.body175.lr.ph.i, label %sw.epilog, !dbg !666

for.body175.lr.ph.i:                              ; preds = %for.cond173.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !585) #5, !dbg !669
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !146), !dbg !669
  %313 = load i32** %sizesA.i196, align 8, !dbg !669, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !666
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !588) #5, !dbg !671
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !129), !dbg !671
  %314 = load double** %entriesA.i187, align 8, !dbg !671, !tbaa !191
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !593) #5, !dbg !675
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !145), !dbg !675
  %315 = load i32** %indicesA.i195, align 8, !dbg !675, !tbaa !191
  br label %for.body175.i, !dbg !666

for.body175.i:                                    ; preds = %for.inc225.i, %for.body175.lr.ph.i
  %indvars.iv519.i = phi i64 [ 0, %for.body175.lr.ph.i ], [ %indvars.iv.next520.i, %for.inc225.i ]
  %kk.6460.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %kk.8.i273, %for.inc225.i ]
  %irowA.2457.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %inc226.i, %for.inc225.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i196}, i64 0, metadata !585) #5, !dbg !669
  %arrayidx177.i264 = getelementptr inbounds i32* %313, i64 %indvars.iv519.i, !dbg !669
  %316 = load i32* %arrayidx177.i264, align 4, !dbg !669, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %316}, i64 0, metadata !597) #5, !dbg !669
  %cmp178.i = icmp sgt i32 %316, 0, !dbg !669
  br i1 %cmp178.i, label %for.body182.lr.ph.i, label %for.inc225.i, !dbg !669

for.body182.lr.ph.i:                              ; preds = %for.body175.i
  %317 = sext i32 %kk.6460.i to i64
  %318 = trunc i64 %indvars.iv519.i to i32, !dbg !676
  br label %for.body182.i, !dbg !677

for.body182.i:                                    ; preds = %if.end197.i, %for.body182.lr.ph.i
  %indvars.iv516.i = phi i64 [ %317, %for.body182.lr.ph.i ], [ %indvars.iv.next517.i, %if.end197.i ]
  %kk.7450.i = phi i32 [ %kk.6460.i, %for.body182.lr.ph.i ], [ %inc214.i, %if.end197.i ]
  %ii.2449.i = phi i32 [ 0, %for.body182.lr.ph.i ], [ %inc213.i, %if.end197.i ]
  %rsum0.2448.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add207.i271, %if.end197.i ]
  %isum0.2447.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add211.i, %if.end197.i ]
  %319 = trunc i64 %indvars.iv516.i to i32, !dbg !671
  %mul183.i265 = shl nsw i32 %319, 1, !dbg !671
  %idxprom184.i = sext i32 %mul183.i265 to i64, !dbg !671
  call void @llvm.dbg.value(metadata !{double** %entriesA.i187}, i64 0, metadata !588) #5, !dbg !671
  %arrayidx185.i = getelementptr inbounds double* %314, i64 %idxprom184.i, !dbg !671
  %320 = load double* %arrayidx185.i, align 8, !dbg !671, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %320}, i64 0, metadata !600) #5, !dbg !671
  %add187397.i = or i32 %mul183.i265, 1, !dbg !678
  %idxprom188.i266 = sext i32 %add187397.i to i64, !dbg !678
  %arrayidx189.i267 = getelementptr inbounds double* %314, i64 %idxprom188.i266, !dbg !678
  %321 = load double* %arrayidx189.i267, align 8, !dbg !678, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %321}, i64 0, metadata !602) #5, !dbg !678
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i195}, i64 0, metadata !593) #5, !dbg !675
  %arrayidx191.i = getelementptr inbounds i32* %315, i64 %indvars.iv516.i, !dbg !675
  %322 = load i32* %arrayidx191.i, align 4, !dbg !675, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %322}, i64 0, metadata !603) #5, !dbg !675
  %cmp192.i268 = icmp sgt i32 %322, -1, !dbg !676
  %cmp194.i = icmp slt i32 %322, %318, !dbg !676
  %or.cond417.i = and i1 %cmp192.i268, %cmp194.i, !dbg !676
  br i1 %or.cond417.i, label %if.end197.i, label %if.then195.i, !dbg !676

if.then195.i:                                     ; preds = %for.body182.i
  %323 = load %struct._IO_FILE** @stderr, align 8, !dbg !679, !tbaa !191
  %call196.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %323, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.2457.i, i32 %kk.7450.i, i32 %ii.2449.i, i32 %322) #6, !dbg !679
  call void @exit(i32 -1) #7, !dbg !681
  unreachable, !dbg !681

if.end197.i:                                      ; preds = %for.body182.i
  %mul198.i = shl nsw i32 %322, 1, !dbg !682
  call void @llvm.dbg.value(metadata !{i32 %mul198.i}, i64 0, metadata !608) #5, !dbg !682
  %add199398.i = or i32 %mul198.i, 1, !dbg !683
  call void @llvm.dbg.value(metadata !{i32 %add199398.i}, i64 0, metadata !610) #5, !dbg !683
  %idxprom200.i = sext i32 %mul198.i to i64, !dbg !684
  %arrayidx201.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom200.i, !dbg !684
  %324 = load double* %arrayidx201.i, align 8, !dbg !684, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %324}, i64 0, metadata !612) #5, !dbg !684
  %idxprom202.i = sext i32 %add199398.i to i64, !dbg !684
  %arrayidx203.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom202.i, !dbg !684
  %325 = load double* %arrayidx203.i, align 8, !dbg !684, !tbaa !257
  call void @llvm.dbg.value(metadata !{double %325}, i64 0, metadata !613) #5, !dbg !684
  %mul204.i269 = fmul double %320, %324, !dbg !685
  %mul205.i270 = fmul double %321, %325, !dbg !685
  %add206.i = fadd double %mul204.i269, %mul205.i270, !dbg !685
  %add207.i271 = fadd double %rsum0.2448.i, %add206.i, !dbg !685
  call void @llvm.dbg.value(metadata !{double %add207.i271}, i64 0, metadata !621) #5, !dbg !685
  %mul208.i = fmul double %320, %325, !dbg !685
  %mul209.i272 = fmul double %321, %324, !dbg !685
  %sub210.i = fsub double %mul208.i, %mul209.i272, !dbg !685
  %add211.i = fadd double %isum0.2447.i, %sub210.i, !dbg !685
  call void @llvm.dbg.value(metadata !{double %add211.i}, i64 0, metadata !622) #5, !dbg !685
  %inc213.i = add nsw i32 %ii.2449.i, 1, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %inc213.i}, i64 0, metadata !629) #5, !dbg !677
  %indvars.iv.next517.i = add i64 %indvars.iv516.i, 1, !dbg !677
  %inc214.i = add nsw i32 %kk.7450.i, 1, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %inc214.i}, i64 0, metadata !595) #5, !dbg !677
  %cmp181.i = icmp slt i32 %inc213.i, %316, !dbg !677
  br i1 %cmp181.i, label %for.body182.i, label %for.end215.i, !dbg !677

for.end215.i:                                     ; preds = %if.end197.i
  %phitmp.i = shl i32 %318, 1, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %phitmp.i}, i64 0, metadata !608) #5, !dbg !686
  %add217396.i = or i32 %phitmp.i, 1, !dbg !687
  call void @llvm.dbg.value(metadata !{i32 %add217396.i}, i64 0, metadata !610) #5, !dbg !687
  %idxprom218.i = sext i32 %phitmp.i to i64, !dbg !688
  %arrayidx219.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom218.i, !dbg !688
  %326 = load double* %arrayidx219.i, align 8, !dbg !688, !tbaa !257
  %sub220.i = fsub double %326, %add207.i271, !dbg !688
  store double %sub220.i, double* %arrayidx219.i, align 8, !dbg !688, !tbaa !257
  %idxprom221.i = sext i32 %add217396.i to i64, !dbg !688
  %arrayidx222.i = getelementptr inbounds double* %colB0.0.lcssa.i231, i64 %idxprom221.i, !dbg !688
  %327 = load double* %arrayidx222.i, align 8, !dbg !688, !tbaa !257
  %sub223.i = fsub double %327, %add211.i, !dbg !688
  store double %sub223.i, double* %arrayidx222.i, align 8, !dbg !688, !tbaa !257
  br label %for.inc225.i, !dbg !689

for.inc225.i:                                     ; preds = %for.end215.i, %for.body175.i
  %kk.8.i273 = phi i32 [ %inc214.i, %for.end215.i ], [ %kk.6460.i, %for.body175.i ]
  %indvars.iv.next520.i = add i64 %indvars.iv519.i, 1, !dbg !666
  %inc226.i = add nsw i32 %irowA.2457.i, 1, !dbg !666
  call void @llvm.dbg.value(metadata !{i32 %inc226.i}, i64 0, metadata !596) #5, !dbg !666
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i193}, i64 0, metadata !581) #5, !dbg !666
  %328 = trunc i64 %indvars.iv.next520.i to i32, !dbg !666
  %cmp174.i274 = icmp slt i32 %328, %312, !dbg !666
  br i1 %cmp174.i274, label %for.body175.i, label %sw.epilog, !dbg !666

sw.default:                                       ; preds = %if.end18
  %329 = load %struct._IO_FILE** @stderr, align 8, !dbg !690, !tbaa !191
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %8) #6, !dbg !690
  call void @exit(i32 -1) #7, !dbg !691
  unreachable, !dbg !691

sw.epilog:                                        ; preds = %for.inc225.i, %for.inc167.i, %for.inc221.i, %for.inc165.i, %for.cond157.i, %for.cond89.i, %for.cond169.i, %for.cond95.i, %for.cond173.preheader.i, %if.else.i263, %if.then93.i236, %for.cond171.preheader.i, %if.else.i179, %if.then93.i, %if.else.i120, %if.else.i
  ret void, !dbg !692
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !39, metadata !74, metadata !108, metadata !147}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_solveH", metadata !"SubMtx_solveH", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, %struct._SubMtx*)* @SubMtx_solveH, null, null, metadata !36, i32 35} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 35] [SubMtx_solveH]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !4, metadata !"mtxA", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 33]
!38 = metadata !{i32 786689, metadata !4, metadata !"mtxB", metadata !5, i32 33554466, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 34]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"solveSparseRows", metadata !"solveSparseRows", metadata !"", i32 515, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !40, i32 518} ; [ DW_TAG_subprogram ] [line 515] [local] [def] [scope 518] [solveSparseRows]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !73}
!41 = metadata !{i32 786689, metadata !39, metadata !"mtxA", metadata !5, i32 16777732, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 516]
!42 = metadata !{i32 786689, metadata !39, metadata !"mtxB", metadata !5, i32 33554949, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 517]
!43 = metadata !{i32 786688, metadata !39, metadata !"ai", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 519]
!44 = metadata !{i32 786688, metadata !39, metadata !"ar", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 519]
!45 = metadata !{i32 786688, metadata !39, metadata !"bi0", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 519]
!46 = metadata !{i32 786688, metadata !39, metadata !"bi1", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 519]
!47 = metadata !{i32 786688, metadata !39, metadata !"bi2", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 519]
!48 = metadata !{i32 786688, metadata !39, metadata !"br0", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 519]
!49 = metadata !{i32 786688, metadata !39, metadata !"br1", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 519]
!50 = metadata !{i32 786688, metadata !39, metadata !"br2", metadata !5, i32 519, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 519]
!51 = metadata !{i32 786688, metadata !39, metadata !"colB0", metadata !5, i32 520, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 520]
!52 = metadata !{i32 786688, metadata !39, metadata !"colB1", metadata !5, i32 520, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 520]
!53 = metadata !{i32 786688, metadata !39, metadata !"colB2", metadata !5, i32 520, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 520]
!54 = metadata !{i32 786688, metadata !39, metadata !"entriesA", metadata !5, i32 520, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 520]
!55 = metadata !{i32 786688, metadata !39, metadata !"entriesB", metadata !5, i32 520, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 520]
!56 = metadata !{i32 786688, metadata !39, metadata !"colstart", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 521]
!57 = metadata !{i32 786688, metadata !39, metadata !"ii", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 521]
!58 = metadata !{i32 786688, metadata !39, metadata !"iloc", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 521]
!59 = metadata !{i32 786688, metadata !39, metadata !"inc1", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 521]
!60 = metadata !{i32 786688, metadata !39, metadata !"inc2", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 521]
!61 = metadata !{i32 786688, metadata !39, metadata !"jcolA", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolA] [line 521]
!62 = metadata !{i32 786688, metadata !39, metadata !"jcolB", metadata !5, i32 521, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 521]
!63 = metadata !{i32 786688, metadata !39, metadata !"jj", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 522]
!64 = metadata !{i32 786688, metadata !39, metadata !"kk", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 522]
!65 = metadata !{i32 786688, metadata !39, metadata !"ncolB", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 522]
!66 = metadata !{i32 786688, metadata !39, metadata !"nentA", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 522]
!67 = metadata !{i32 786688, metadata !39, metadata !"nrowA", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 522]
!68 = metadata !{i32 786688, metadata !39, metadata !"nrowB", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 522]
!69 = metadata !{i32 786688, metadata !39, metadata !"rloc", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 522]
!70 = metadata !{i32 786688, metadata !39, metadata !"size", metadata !5, i32 522, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 522]
!71 = metadata !{i32 786688, metadata !39, metadata !"indicesA", metadata !5, i32 523, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 523]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!73 = metadata !{i32 786688, metadata !39, metadata !"sizesA", metadata !5, i32 523, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 523]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"solveDenseSubrows", metadata !"solveDenseSubrows", metadata !"", i32 389, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !75, i32 392} ; [ DW_TAG_subprogram ] [line 389] [local] [def] [scope 392] [solveDenseSubrows]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!76 = metadata !{i32 786689, metadata !74, metadata !"mtxA", metadata !5, i32 16777606, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 390]
!77 = metadata !{i32 786689, metadata !74, metadata !"mtxB", metadata !5, i32 33554823, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 391]
!78 = metadata !{i32 786688, metadata !74, metadata !"ai", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 393]
!79 = metadata !{i32 786688, metadata !74, metadata !"ar", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 393]
!80 = metadata !{i32 786688, metadata !74, metadata !"bi0", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 393]
!81 = metadata !{i32 786688, metadata !74, metadata !"bi1", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 393]
!82 = metadata !{i32 786688, metadata !74, metadata !"bi2", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 393]
!83 = metadata !{i32 786688, metadata !74, metadata !"br0", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 393]
!84 = metadata !{i32 786688, metadata !74, metadata !"br1", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 393]
!85 = metadata !{i32 786688, metadata !74, metadata !"br2", metadata !5, i32 393, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 393]
!86 = metadata !{i32 786688, metadata !74, metadata !"colB0", metadata !5, i32 394, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 394]
!87 = metadata !{i32 786688, metadata !74, metadata !"colB1", metadata !5, i32 394, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 394]
!88 = metadata !{i32 786688, metadata !74, metadata !"colB2", metadata !5, i32 394, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 394]
!89 = metadata !{i32 786688, metadata !74, metadata !"entriesA", metadata !5, i32 394, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 394]
!90 = metadata !{i32 786688, metadata !74, metadata !"entriesB", metadata !5, i32 394, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 394]
!91 = metadata !{i32 786688, metadata !74, metadata !"colstart", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 395]
!92 = metadata !{i32 786688, metadata !74, metadata !"first", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 395]
!93 = metadata !{i32 786688, metadata !74, metadata !"iloc", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 395]
!94 = metadata !{i32 786688, metadata !74, metadata !"inc1", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 395]
!95 = metadata !{i32 786688, metadata !74, metadata !"inc2", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 395]
!96 = metadata !{i32 786688, metadata !74, metadata !"irowA", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 395]
!97 = metadata !{i32 786688, metadata !74, metadata !"jcolB", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 395]
!98 = metadata !{i32 786688, metadata !74, metadata !"jj", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 396]
!99 = metadata !{i32 786688, metadata !74, metadata !"kk", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 396]
!100 = metadata !{i32 786688, metadata !74, metadata !"last", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 396]
!101 = metadata !{i32 786688, metadata !74, metadata !"ncolB", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 396]
!102 = metadata !{i32 786688, metadata !74, metadata !"nentA", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 396]
!103 = metadata !{i32 786688, metadata !74, metadata !"nrowA", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 396]
!104 = metadata !{i32 786688, metadata !74, metadata !"nrowB", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 396]
!105 = metadata !{i32 786688, metadata !74, metadata !"rloc", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 396]
!106 = metadata !{i32 786688, metadata !74, metadata !"firstlocsA", metadata !5, i32 397, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 397]
!107 = metadata !{i32 786688, metadata !74, metadata !"sizesA", metadata !5, i32 397, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 397]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"solveSparseColumns", metadata !"solveSparseColumns", metadata !"", i32 258, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !109, i32 261} ; [ DW_TAG_subprogram ] [line 258] [local] [def] [scope 261] [solveSparseColumns]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146}
!110 = metadata !{i32 786689, metadata !108, metadata !"mtxA", metadata !5, i32 16777475, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 259]
!111 = metadata !{i32 786689, metadata !108, metadata !"mtxB", metadata !5, i32 33554692, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 260]
!112 = metadata !{i32 786688, metadata !108, metadata !"ai", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 262]
!113 = metadata !{i32 786688, metadata !108, metadata !"ar", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 262]
!114 = metadata !{i32 786688, metadata !108, metadata !"bi0", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 262]
!115 = metadata !{i32 786688, metadata !108, metadata !"bi1", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 262]
!116 = metadata !{i32 786688, metadata !108, metadata !"bi2", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 262]
!117 = metadata !{i32 786688, metadata !108, metadata !"br0", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 262]
!118 = metadata !{i32 786688, metadata !108, metadata !"br1", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 262]
!119 = metadata !{i32 786688, metadata !108, metadata !"br2", metadata !5, i32 262, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 262]
!120 = metadata !{i32 786688, metadata !108, metadata !"isum0", metadata !5, i32 263, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum0] [line 263]
!121 = metadata !{i32 786688, metadata !108, metadata !"isum1", metadata !5, i32 263, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum1] [line 263]
!122 = metadata !{i32 786688, metadata !108, metadata !"isum2", metadata !5, i32 263, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum2] [line 263]
!123 = metadata !{i32 786688, metadata !108, metadata !"rsum0", metadata !5, i32 263, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum0] [line 263]
!124 = metadata !{i32 786688, metadata !108, metadata !"rsum1", metadata !5, i32 263, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum1] [line 263]
!125 = metadata !{i32 786688, metadata !108, metadata !"rsum2", metadata !5, i32 263, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum2] [line 263]
!126 = metadata !{i32 786688, metadata !108, metadata !"colB0", metadata !5, i32 264, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 264]
!127 = metadata !{i32 786688, metadata !108, metadata !"colB1", metadata !5, i32 264, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 264]
!128 = metadata !{i32 786688, metadata !108, metadata !"colB2", metadata !5, i32 264, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 264]
!129 = metadata !{i32 786688, metadata !108, metadata !"entriesA", metadata !5, i32 264, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 264]
!130 = metadata !{i32 786688, metadata !108, metadata !"entriesB", metadata !5, i32 264, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 264]
!131 = metadata !{i32 786688, metadata !108, metadata !"ii", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 265]
!132 = metadata !{i32 786688, metadata !108, metadata !"iloc", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 265]
!133 = metadata !{i32 786688, metadata !108, metadata !"inc1", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 265]
!134 = metadata !{i32 786688, metadata !108, metadata !"inc2", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 265]
!135 = metadata !{i32 786688, metadata !108, metadata !"irowA", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 265]
!136 = metadata !{i32 786688, metadata !108, metadata !"jcolB", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 265]
!137 = metadata !{i32 786688, metadata !108, metadata !"jj", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 265]
!138 = metadata !{i32 786688, metadata !108, metadata !"kk", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 265]
!139 = metadata !{i32 786688, metadata !108, metadata !"ncolB", metadata !5, i32 266, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 266]
!140 = metadata !{i32 786688, metadata !108, metadata !"nentA", metadata !5, i32 266, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 266]
!141 = metadata !{i32 786688, metadata !108, metadata !"nrowA", metadata !5, i32 266, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 266]
!142 = metadata !{i32 786688, metadata !108, metadata !"nrowB", metadata !5, i32 266, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 266]
!143 = metadata !{i32 786688, metadata !108, metadata !"rloc", metadata !5, i32 266, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 266]
!144 = metadata !{i32 786688, metadata !108, metadata !"size", metadata !5, i32 266, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 266]
!145 = metadata !{i32 786688, metadata !108, metadata !"indicesA", metadata !5, i32 267, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 267]
!146 = metadata !{i32 786688, metadata !108, metadata !"sizesA", metadata !5, i32 267, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 267]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"solveDenseSubcolumns", metadata !"solveDenseSubcolumns", metadata !"", i32 100, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !148, i32 103} ; [ DW_TAG_subprogram ] [line 100] [local] [def] [scope 103] [solveDenseSubcolumns]
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185}
!149 = metadata !{i32 786689, metadata !147, metadata !"mtxA", metadata !5, i32 16777317, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 101]
!150 = metadata !{i32 786689, metadata !147, metadata !"mtxB", metadata !5, i32 33554534, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 102]
!151 = metadata !{i32 786688, metadata !147, metadata !"ai", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 104]
!152 = metadata !{i32 786688, metadata !147, metadata !"ar", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 104]
!153 = metadata !{i32 786688, metadata !147, metadata !"bi0", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 104]
!154 = metadata !{i32 786688, metadata !147, metadata !"bi1", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 104]
!155 = metadata !{i32 786688, metadata !147, metadata !"bi2", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 104]
!156 = metadata !{i32 786688, metadata !147, metadata !"br0", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 104]
!157 = metadata !{i32 786688, metadata !147, metadata !"br1", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 104]
!158 = metadata !{i32 786688, metadata !147, metadata !"br2", metadata !5, i32 104, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 104]
!159 = metadata !{i32 786688, metadata !147, metadata !"isum0", metadata !5, i32 105, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum0] [line 105]
!160 = metadata !{i32 786688, metadata !147, metadata !"isum1", metadata !5, i32 105, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum1] [line 105]
!161 = metadata !{i32 786688, metadata !147, metadata !"isum2", metadata !5, i32 105, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum2] [line 105]
!162 = metadata !{i32 786688, metadata !147, metadata !"rsum0", metadata !5, i32 105, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum0] [line 105]
!163 = metadata !{i32 786688, metadata !147, metadata !"rsum1", metadata !5, i32 105, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum1] [line 105]
!164 = metadata !{i32 786688, metadata !147, metadata !"rsum2", metadata !5, i32 105, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum2] [line 105]
!165 = metadata !{i32 786688, metadata !147, metadata !"colB0", metadata !5, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 106]
!166 = metadata !{i32 786688, metadata !147, metadata !"colB1", metadata !5, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 106]
!167 = metadata !{i32 786688, metadata !147, metadata !"colB2", metadata !5, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 106]
!168 = metadata !{i32 786688, metadata !147, metadata !"entriesA", metadata !5, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 106]
!169 = metadata !{i32 786688, metadata !147, metadata !"entriesB", metadata !5, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 106]
!170 = metadata !{i32 786688, metadata !147, metadata !"first", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 107]
!171 = metadata !{i32 786688, metadata !147, metadata !"ii", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 107]
!172 = metadata !{i32 786688, metadata !147, metadata !"iloc", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 107]
!173 = metadata !{i32 786688, metadata !147, metadata !"inc1", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 107]
!174 = metadata !{i32 786688, metadata !147, metadata !"inc2", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 107]
!175 = metadata !{i32 786688, metadata !147, metadata !"irowA", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 107]
!176 = metadata !{i32 786688, metadata !147, metadata !"jcolB", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 107]
!177 = metadata !{i32 786688, metadata !147, metadata !"kk", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 107]
!178 = metadata !{i32 786688, metadata !147, metadata !"last", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 107]
!179 = metadata !{i32 786688, metadata !147, metadata !"ncolB", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 108]
!180 = metadata !{i32 786688, metadata !147, metadata !"nentA", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 108]
!181 = metadata !{i32 786688, metadata !147, metadata !"nrowA", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 108]
!182 = metadata !{i32 786688, metadata !147, metadata !"nrowB", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 108]
!183 = metadata !{i32 786688, metadata !147, metadata !"rloc", metadata !5, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 108]
!184 = metadata !{i32 786688, metadata !147, metadata !"firstlocsA", metadata !5, i32 109, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 109]
!185 = metadata !{i32 786688, metadata !147, metadata !"sizesA", metadata !5, i32 109, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 109]
!186 = metadata !{i32 33, i32 0, metadata !4, null}
!187 = metadata !{i32 34, i32 0, metadata !4, null}
!188 = metadata !{i32 41, i32 0, metadata !4, null}
!189 = metadata !{i32 42, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !4, i32 41, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!191 = metadata !{metadata !"any pointer", metadata !192}
!192 = metadata !{metadata !"omnipotent char", metadata !193}
!193 = metadata !{metadata !"Simple C/C++ TBAA"}
!194 = metadata !{i32 44, i32 0, metadata !190, null}
!195 = metadata !{i32 46, i32 0, metadata !4, null}
!196 = metadata !{metadata !"int", metadata !192}
!197 = metadata !{i32 47, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!199 = metadata !{i32 49, i32 0, metadata !198, null}
!200 = metadata !{i32 51, i32 0, metadata !4, null}
!201 = metadata !{i32 52, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!203 = metadata !{i32 54, i32 0, metadata !202, null}
!204 = metadata !{i32 56, i32 0, metadata !4, null}
!205 = metadata !{i32 57, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!207 = metadata !{i32 60, i32 0, metadata !206, null}
!208 = metadata !{i32 67, i32 0, metadata !4, null}
!209 = metadata !{i32 390, i32 0, metadata !74, metadata !210}
!210 = metadata !{i32 69, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !4, i32 67, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!212 = metadata !{i32 786689, metadata !74, metadata !"mtxA", metadata !5, i32 16777606, metadata !8, i32 0, metadata !210} ; [ DW_TAG_arg_variable ] [mtxA] [line 390]
!213 = metadata !{i32 786689, metadata !74, metadata !"mtxB", metadata !5, i32 33554823, metadata !8, i32 0, metadata !210} ; [ DW_TAG_arg_variable ] [mtxB] [line 391]
!214 = metadata !{i32 391, i32 0, metadata !74, metadata !210}
!215 = metadata !{i32 394, i32 0, metadata !74, metadata !210}
!216 = metadata !{i32 395, i32 0, metadata !74, metadata !210}
!217 = metadata !{i32 396, i32 0, metadata !74, metadata !210}
!218 = metadata !{i32 397, i32 0, metadata !74, metadata !210}
!219 = metadata !{i32 403, i32 0, metadata !74, metadata !210}
!220 = metadata !{i32 405, i32 0, metadata !74, metadata !210}
!221 = metadata !{i32 786688, metadata !74, metadata !"entriesB", metadata !5, i32 394, metadata !22, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [entriesB] [line 394]
!222 = metadata !{i32 410, i32 0, metadata !74, metadata !210}
!223 = metadata !{i32 786688, metadata !74, metadata !"colB0", metadata !5, i32 394, metadata !22, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [colB0] [line 394]
!224 = metadata !{i32 786688, metadata !74, metadata !"jcolB", metadata !5, i32 395, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [jcolB] [line 395]
!225 = metadata !{i32 411, i32 0, metadata !226, metadata !210}
!226 = metadata !{i32 786443, metadata !1, metadata !74, i32 411, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!227 = metadata !{i32 786688, metadata !74, metadata !"ncolB", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [ncolB] [line 396]
!228 = metadata !{i32 786688, metadata !74, metadata !"nrowB", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [nrowB] [line 396]
!229 = metadata !{i32 412, i32 0, metadata !230, metadata !210}
!230 = metadata !{i32 786443, metadata !1, metadata !226, i32 411, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!231 = metadata !{i32 413, i32 0, metadata !230, metadata !210}
!232 = metadata !{i32 786688, metadata !74, metadata !"nrowA", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [nrowA] [line 396]
!233 = metadata !{i32 418, i32 0, metadata !234, metadata !210}
!234 = metadata !{i32 786443, metadata !1, metadata !230, i32 418, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!235 = metadata !{i32 786688, metadata !74, metadata !"nentA", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [nentA] [line 396]
!236 = metadata !{i32 786688, metadata !74, metadata !"sizesA", metadata !5, i32 397, metadata !72, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [sizesA] [line 397]
!237 = metadata !{i32 421, i32 0, metadata !238, metadata !210}
!238 = metadata !{i32 786443, metadata !1, metadata !234, i32 420, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!239 = metadata !{i32 786688, metadata !74, metadata !"firstlocsA", metadata !5, i32 397, metadata !72, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 397]
!240 = metadata !{i32 422, i32 0, metadata !241, metadata !210}
!241 = metadata !{i32 786443, metadata !1, metadata !238, i32 421, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!242 = metadata !{i32 786688, metadata !74, metadata !"entriesA", metadata !5, i32 394, metadata !22, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [entriesA] [line 394]
!243 = metadata !{i32 431, i32 0, metadata !244, metadata !210}
!244 = metadata !{i32 786443, metadata !1, metadata !245, i32 430, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!245 = metadata !{i32 786443, metadata !1, metadata !241, i32 430, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!246 = metadata !{i32 444, i32 0, metadata !230, metadata !210}
!247 = metadata !{i32 786688, metadata !74, metadata !"colstart", metadata !5, i32 395, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [colstart] [line 395]
!248 = metadata !{i32 786688, metadata !74, metadata !"first", metadata !5, i32 395, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [first] [line 395]
!249 = metadata !{i32 423, i32 0, metadata !241, metadata !210}
!250 = metadata !{i32 786688, metadata !74, metadata !"last", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [last] [line 396]
!251 = metadata !{i32 424, i32 0, metadata !241, metadata !210}
!252 = metadata !{i32 425, i32 0, metadata !241, metadata !210}
!253 = metadata !{i32 786688, metadata !74, metadata !"rloc", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [rloc] [line 396]
!254 = metadata !{i32 426, i32 0, metadata !241, metadata !210}
!255 = metadata !{i32 786688, metadata !74, metadata !"iloc", metadata !5, i32 395, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [iloc] [line 395]
!256 = metadata !{i32 427, i32 0, metadata !241, metadata !210}
!257 = metadata !{metadata !"double", metadata !192}
!258 = metadata !{i32 786688, metadata !74, metadata !"br0", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [br0] [line 393]
!259 = metadata !{i32 786688, metadata !74, metadata !"bi0", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [bi0] [line 393]
!260 = metadata !{i32 428, i32 0, metadata !241, metadata !210}
!261 = metadata !{i32 786688, metadata !74, metadata !"br1", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [br1] [line 393]
!262 = metadata !{i32 786688, metadata !74, metadata !"bi1", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [bi1] [line 393]
!263 = metadata !{i32 429, i32 0, metadata !241, metadata !210}
!264 = metadata !{i32 786688, metadata !74, metadata !"br2", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [br2] [line 393]
!265 = metadata !{i32 786688, metadata !74, metadata !"bi2", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [bi2] [line 393]
!266 = metadata !{i32 786688, metadata !74, metadata !"jj", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [jj] [line 396]
!267 = metadata !{i32 430, i32 0, metadata !245, metadata !210}
!268 = metadata !{i32 786688, metadata !74, metadata !"kk", metadata !5, i32 396, metadata !14, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [kk] [line 396]
!269 = metadata !{i32 786688, metadata !74, metadata !"ar", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [ar] [line 393]
!270 = metadata !{i32 432, i32 0, metadata !244, metadata !210}
!271 = metadata !{i32 786688, metadata !74, metadata !"ai", metadata !5, i32 393, metadata !23, i32 0, metadata !210} ; [ DW_TAG_auto_variable ] [ai] [line 393]
!272 = metadata !{i32 433, i32 0, metadata !244, metadata !210}
!273 = metadata !{i32 434, i32 0, metadata !244, metadata !210}
!274 = metadata !{i32 435, i32 0, metadata !244, metadata !210}
!275 = metadata !{i32 436, i32 0, metadata !244, metadata !210}
!276 = metadata !{i32 437, i32 0, metadata !244, metadata !210}
!277 = metadata !{i32 438, i32 0, metadata !244, metadata !210}
!278 = metadata !{i32 439, i32 0, metadata !244, metadata !210}
!279 = metadata !{i32 440, i32 0, metadata !244, metadata !210}
!280 = metadata !{i32 446, i32 0, metadata !74, metadata !210}
!281 = metadata !{i32 447, i32 0, metadata !282, metadata !210}
!282 = metadata !{i32 786443, metadata !1, metadata !74, i32 446, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!283 = metadata !{i32 452, i32 0, metadata !284, metadata !210}
!284 = metadata !{i32 786443, metadata !1, metadata !282, i32 452, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!285 = metadata !{i32 455, i32 0, metadata !286, metadata !210}
!286 = metadata !{i32 786443, metadata !1, metadata !284, i32 454, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!287 = metadata !{i32 456, i32 0, metadata !288, metadata !210}
!288 = metadata !{i32 786443, metadata !1, metadata !286, i32 455, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!289 = metadata !{i32 464, i32 0, metadata !290, metadata !210}
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 463, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 463, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!292 = metadata !{i32 457, i32 0, metadata !288, metadata !210}
!293 = metadata !{i32 458, i32 0, metadata !288, metadata !210}
!294 = metadata !{i32 459, i32 0, metadata !288, metadata !210}
!295 = metadata !{i32 460, i32 0, metadata !288, metadata !210}
!296 = metadata !{i32 461, i32 0, metadata !288, metadata !210}
!297 = metadata !{i32 462, i32 0, metadata !288, metadata !210}
!298 = metadata !{i32 463, i32 0, metadata !291, metadata !210}
!299 = metadata !{i32 465, i32 0, metadata !290, metadata !210}
!300 = metadata !{i32 466, i32 0, metadata !290, metadata !210}
!301 = metadata !{i32 467, i32 0, metadata !290, metadata !210}
!302 = metadata !{i32 468, i32 0, metadata !290, metadata !210}
!303 = metadata !{i32 469, i32 0, metadata !290, metadata !210}
!304 = metadata !{i32 470, i32 0, metadata !290, metadata !210}
!305 = metadata !{i32 471, i32 0, metadata !290, metadata !210}
!306 = metadata !{i32 475, i32 0, metadata !74, metadata !210}
!307 = metadata !{i32 480, i32 0, metadata !308, metadata !210}
!308 = metadata !{i32 786443, metadata !1, metadata !309, i32 480, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!309 = metadata !{i32 786443, metadata !1, metadata !74, i32 475, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!310 = metadata !{i32 483, i32 0, metadata !311, metadata !210}
!311 = metadata !{i32 786443, metadata !1, metadata !308, i32 482, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!312 = metadata !{i32 484, i32 0, metadata !313, metadata !210}
!313 = metadata !{i32 786443, metadata !1, metadata !311, i32 483, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!314 = metadata !{i32 491, i32 0, metadata !315, metadata !210}
!315 = metadata !{i32 786443, metadata !1, metadata !316, i32 490, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!316 = metadata !{i32 786443, metadata !1, metadata !313, i32 490, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!317 = metadata !{i32 485, i32 0, metadata !313, metadata !210}
!318 = metadata !{i32 486, i32 0, metadata !313, metadata !210}
!319 = metadata !{i32 487, i32 0, metadata !313, metadata !210}
!320 = metadata !{i32 488, i32 0, metadata !313, metadata !210}
!321 = metadata !{i32 489, i32 0, metadata !313, metadata !210}
!322 = metadata !{i32 490, i32 0, metadata !316, metadata !210}
!323 = metadata !{i32 492, i32 0, metadata !315, metadata !210}
!324 = metadata !{i32 493, i32 0, metadata !315, metadata !210}
!325 = metadata !{i32 494, i32 0, metadata !315, metadata !210}
!326 = metadata !{i32 495, i32 0, metadata !315, metadata !210}
!327 = metadata !{i32 496, i32 0, metadata !315, metadata !210}
!328 = metadata !{i32 516, i32 0, metadata !39, metadata !329}
!329 = metadata !{i32 72, i32 0, metadata !211, null}
!330 = metadata !{i32 786689, metadata !39, metadata !"mtxA", metadata !5, i32 16777732, metadata !8, i32 0, metadata !329} ; [ DW_TAG_arg_variable ] [mtxA] [line 516]
!331 = metadata !{i32 786689, metadata !39, metadata !"mtxB", metadata !5, i32 33554949, metadata !8, i32 0, metadata !329} ; [ DW_TAG_arg_variable ] [mtxB] [line 517]
!332 = metadata !{i32 517, i32 0, metadata !39, metadata !329}
!333 = metadata !{i32 520, i32 0, metadata !39, metadata !329}
!334 = metadata !{i32 521, i32 0, metadata !39, metadata !329}
!335 = metadata !{i32 522, i32 0, metadata !39, metadata !329}
!336 = metadata !{i32 523, i32 0, metadata !39, metadata !329}
!337 = metadata !{i32 529, i32 0, metadata !39, metadata !329}
!338 = metadata !{i32 531, i32 0, metadata !39, metadata !329}
!339 = metadata !{i32 786688, metadata !39, metadata !"entriesB", metadata !5, i32 520, metadata !22, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [entriesB] [line 520]
!340 = metadata !{i32 536, i32 0, metadata !39, metadata !329}
!341 = metadata !{i32 786688, metadata !39, metadata !"colB0", metadata !5, i32 520, metadata !22, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [colB0] [line 520]
!342 = metadata !{i32 786688, metadata !39, metadata !"jcolB", metadata !5, i32 521, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [jcolB] [line 521]
!343 = metadata !{i32 537, i32 0, metadata !344, metadata !329}
!344 = metadata !{i32 786443, metadata !1, metadata !39, i32 537, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!345 = metadata !{i32 786688, metadata !39, metadata !"ncolB", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [ncolB] [line 522]
!346 = metadata !{i32 786688, metadata !39, metadata !"nrowB", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [nrowB] [line 522]
!347 = metadata !{i32 538, i32 0, metadata !348, metadata !329}
!348 = metadata !{i32 786443, metadata !1, metadata !344, i32 537, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!349 = metadata !{i32 539, i32 0, metadata !348, metadata !329}
!350 = metadata !{i32 786688, metadata !39, metadata !"nrowA", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [nrowA] [line 522]
!351 = metadata !{i32 544, i32 0, metadata !352, metadata !329}
!352 = metadata !{i32 786443, metadata !1, metadata !348, i32 544, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!353 = metadata !{i32 786688, metadata !39, metadata !"nentA", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [nentA] [line 522]
!354 = metadata !{i32 786688, metadata !39, metadata !"sizesA", metadata !5, i32 523, metadata !72, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [sizesA] [line 523]
!355 = metadata !{i32 547, i32 0, metadata !356, metadata !329}
!356 = metadata !{i32 786443, metadata !1, metadata !352, i32 546, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!357 = metadata !{i32 786688, metadata !39, metadata !"entriesA", metadata !5, i32 520, metadata !22, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [entriesA] [line 520]
!358 = metadata !{i32 555, i32 0, metadata !359, metadata !329}
!359 = metadata !{i32 786443, metadata !1, metadata !360, i32 554, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!360 = metadata !{i32 786443, metadata !1, metadata !361, i32 554, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!361 = metadata !{i32 786443, metadata !1, metadata !356, i32 547, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!362 = metadata !{i32 786688, metadata !39, metadata !"indicesA", metadata !5, i32 523, metadata !72, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [indicesA] [line 523]
!363 = metadata !{i32 556, i32 0, metadata !359, metadata !329}
!364 = metadata !{i32 568, i32 0, metadata !348, metadata !329}
!365 = metadata !{i32 786688, metadata !39, metadata !"colstart", metadata !5, i32 521, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [colstart] [line 521]
!366 = metadata !{i32 786688, metadata !39, metadata !"size", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [size] [line 522]
!367 = metadata !{i32 548, i32 0, metadata !361, metadata !329}
!368 = metadata !{i32 549, i32 0, metadata !361, metadata !329}
!369 = metadata !{i32 786688, metadata !39, metadata !"rloc", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [rloc] [line 522]
!370 = metadata !{i32 550, i32 0, metadata !361, metadata !329}
!371 = metadata !{i32 786688, metadata !39, metadata !"iloc", metadata !5, i32 521, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [iloc] [line 521]
!372 = metadata !{i32 551, i32 0, metadata !361, metadata !329}
!373 = metadata !{i32 786688, metadata !39, metadata !"br0", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [br0] [line 519]
!374 = metadata !{i32 786688, metadata !39, metadata !"bi0", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [bi0] [line 519]
!375 = metadata !{i32 552, i32 0, metadata !361, metadata !329}
!376 = metadata !{i32 786688, metadata !39, metadata !"br1", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [br1] [line 519]
!377 = metadata !{i32 786688, metadata !39, metadata !"bi1", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [bi1] [line 519]
!378 = metadata !{i32 553, i32 0, metadata !361, metadata !329}
!379 = metadata !{i32 786688, metadata !39, metadata !"br2", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [br2] [line 519]
!380 = metadata !{i32 786688, metadata !39, metadata !"bi2", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [bi2] [line 519]
!381 = metadata !{i32 786688, metadata !39, metadata !"ii", metadata !5, i32 521, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [ii] [line 521]
!382 = metadata !{i32 554, i32 0, metadata !360, metadata !329}
!383 = metadata !{i32 786688, metadata !39, metadata !"kk", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [kk] [line 522]
!384 = metadata !{i32 786688, metadata !39, metadata !"ar", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [ar] [line 519]
!385 = metadata !{i32 786688, metadata !39, metadata !"ai", metadata !5, i32 519, metadata !23, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [ai] [line 519]
!386 = metadata !{i32 786688, metadata !39, metadata !"jj", metadata !5, i32 522, metadata !14, i32 0, metadata !329} ; [ DW_TAG_auto_variable ] [jj] [line 522]
!387 = metadata !{i32 557, i32 0, metadata !359, metadata !329}
!388 = metadata !{i32 558, i32 0, metadata !359, metadata !329}
!389 = metadata !{i32 559, i32 0, metadata !359, metadata !329}
!390 = metadata !{i32 560, i32 0, metadata !359, metadata !329}
!391 = metadata !{i32 561, i32 0, metadata !359, metadata !329}
!392 = metadata !{i32 562, i32 0, metadata !359, metadata !329}
!393 = metadata !{i32 563, i32 0, metadata !359, metadata !329}
!394 = metadata !{i32 564, i32 0, metadata !359, metadata !329}
!395 = metadata !{i32 570, i32 0, metadata !39, metadata !329}
!396 = metadata !{i32 571, i32 0, metadata !397, metadata !329}
!397 = metadata !{i32 786443, metadata !1, metadata !39, i32 570, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!398 = metadata !{i32 576, i32 0, metadata !399, metadata !329}
!399 = metadata !{i32 786443, metadata !1, metadata !397, i32 576, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!400 = metadata !{i32 579, i32 0, metadata !401, metadata !329}
!401 = metadata !{i32 786443, metadata !1, metadata !399, i32 578, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!402 = metadata !{i32 586, i32 0, metadata !403, metadata !329}
!403 = metadata !{i32 786443, metadata !1, metadata !404, i32 585, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!404 = metadata !{i32 786443, metadata !1, metadata !405, i32 585, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!405 = metadata !{i32 786443, metadata !1, metadata !401, i32 579, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!406 = metadata !{i32 587, i32 0, metadata !403, metadata !329}
!407 = metadata !{i32 580, i32 0, metadata !405, metadata !329}
!408 = metadata !{i32 581, i32 0, metadata !405, metadata !329}
!409 = metadata !{i32 582, i32 0, metadata !405, metadata !329}
!410 = metadata !{i32 583, i32 0, metadata !405, metadata !329}
!411 = metadata !{i32 584, i32 0, metadata !405, metadata !329}
!412 = metadata !{i32 585, i32 0, metadata !404, metadata !329}
!413 = metadata !{i32 588, i32 0, metadata !403, metadata !329}
!414 = metadata !{i32 589, i32 0, metadata !403, metadata !329}
!415 = metadata !{i32 590, i32 0, metadata !403, metadata !329}
!416 = metadata !{i32 591, i32 0, metadata !403, metadata !329}
!417 = metadata !{i32 592, i32 0, metadata !403, metadata !329}
!418 = metadata !{i32 593, i32 0, metadata !403, metadata !329}
!419 = metadata !{i32 597, i32 0, metadata !39, metadata !329}
!420 = metadata !{i32 602, i32 0, metadata !421, metadata !329}
!421 = metadata !{i32 786443, metadata !1, metadata !422, i32 602, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!422 = metadata !{i32 786443, metadata !1, metadata !39, i32 597, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!423 = metadata !{i32 605, i32 0, metadata !424, metadata !329}
!424 = metadata !{i32 786443, metadata !1, metadata !421, i32 604, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!425 = metadata !{i32 611, i32 0, metadata !426, metadata !329}
!426 = metadata !{i32 786443, metadata !1, metadata !427, i32 610, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!427 = metadata !{i32 786443, metadata !1, metadata !428, i32 610, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!428 = metadata !{i32 786443, metadata !1, metadata !424, i32 605, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!429 = metadata !{i32 612, i32 0, metadata !426, metadata !329}
!430 = metadata !{i32 606, i32 0, metadata !428, metadata !329}
!431 = metadata !{i32 607, i32 0, metadata !428, metadata !329}
!432 = metadata !{i32 608, i32 0, metadata !428, metadata !329}
!433 = metadata !{i32 609, i32 0, metadata !428, metadata !329}
!434 = metadata !{i32 610, i32 0, metadata !427, metadata !329}
!435 = metadata !{i32 613, i32 0, metadata !426, metadata !329}
!436 = metadata !{i32 614, i32 0, metadata !426, metadata !329}
!437 = metadata !{i32 615, i32 0, metadata !426, metadata !329}
!438 = metadata !{i32 616, i32 0, metadata !426, metadata !329}
!439 = metadata !{i32 101, i32 0, metadata !147, metadata !440}
!440 = metadata !{i32 75, i32 0, metadata !211, null}
!441 = metadata !{i32 786689, metadata !147, metadata !"mtxA", metadata !5, i32 16777317, metadata !8, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [mtxA] [line 101]
!442 = metadata !{i32 786689, metadata !147, metadata !"mtxB", metadata !5, i32 33554534, metadata !8, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [mtxB] [line 102]
!443 = metadata !{i32 102, i32 0, metadata !147, metadata !440}
!444 = metadata !{i32 106, i32 0, metadata !147, metadata !440}
!445 = metadata !{i32 107, i32 0, metadata !147, metadata !440}
!446 = metadata !{i32 108, i32 0, metadata !147, metadata !440}
!447 = metadata !{i32 109, i32 0, metadata !147, metadata !440}
!448 = metadata !{i32 115, i32 0, metadata !147, metadata !440}
!449 = metadata !{i32 117, i32 0, metadata !147, metadata !440}
!450 = metadata !{i32 786688, metadata !147, metadata !"entriesB", metadata !5, i32 106, metadata !22, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [entriesB] [line 106]
!451 = metadata !{i32 122, i32 0, metadata !147, metadata !440}
!452 = metadata !{i32 786688, metadata !147, metadata !"colB0", metadata !5, i32 106, metadata !22, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [colB0] [line 106]
!453 = metadata !{i32 786688, metadata !147, metadata !"jcolB", metadata !5, i32 107, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [jcolB] [line 107]
!454 = metadata !{i32 123, i32 0, metadata !455, metadata !440}
!455 = metadata !{i32 786443, metadata !1, metadata !147, i32 123, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!456 = metadata !{i32 786688, metadata !147, metadata !"ncolB", metadata !5, i32 108, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [ncolB] [line 108]
!457 = metadata !{i32 786688, metadata !147, metadata !"nrowB", metadata !5, i32 108, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [nrowB] [line 108]
!458 = metadata !{i32 124, i32 0, metadata !459, metadata !440}
!459 = metadata !{i32 786443, metadata !1, metadata !455, i32 123, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!460 = metadata !{i32 125, i32 0, metadata !459, metadata !440}
!461 = metadata !{i32 786688, metadata !147, metadata !"nrowA", metadata !5, i32 108, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [nrowA] [line 108]
!462 = metadata !{i32 130, i32 0, metadata !463, metadata !440}
!463 = metadata !{i32 786443, metadata !1, metadata !459, i32 130, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!464 = metadata !{i32 170, i32 0, metadata !459, metadata !440}
!465 = metadata !{i32 786688, metadata !147, metadata !"sizesA", metadata !5, i32 109, metadata !72, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [sizesA] [line 109]
!466 = metadata !{i32 135, i32 0, metadata !467, metadata !440}
!467 = metadata !{i32 786443, metadata !1, metadata !463, i32 130, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!468 = metadata !{i32 786688, metadata !147, metadata !"firstlocsA", metadata !5, i32 109, metadata !72, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 109]
!469 = metadata !{i32 136, i32 0, metadata !470, metadata !440}
!470 = metadata !{i32 786443, metadata !1, metadata !467, i32 135, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!471 = metadata !{i32 786688, metadata !147, metadata !"entriesA", metadata !5, i32 106, metadata !22, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [entriesA] [line 106]
!472 = metadata !{i32 146, i32 0, metadata !473, metadata !440}
!473 = metadata !{i32 786443, metadata !1, metadata !474, i32 145, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!474 = metadata !{i32 786443, metadata !1, metadata !470, i32 145, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!475 = metadata !{i32 786688, metadata !147, metadata !"kk", metadata !5, i32 107, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [kk] [line 107]
!476 = metadata !{i32 786688, metadata !147, metadata !"irowA", metadata !5, i32 107, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [irowA] [line 107]
!477 = metadata !{i32 786688, metadata !147, metadata !"first", metadata !5, i32 107, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [first] [line 107]
!478 = metadata !{i32 137, i32 0, metadata !470, metadata !440}
!479 = metadata !{i32 786688, metadata !147, metadata !"last", metadata !5, i32 107, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [last] [line 107]
!480 = metadata !{double 0.000000e+00}
!481 = metadata !{i32 786688, metadata !147, metadata !"isum0", metadata !5, i32 105, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [isum0] [line 105]
!482 = metadata !{i32 142, i32 0, metadata !470, metadata !440}
!483 = metadata !{i32 786688, metadata !147, metadata !"rsum0", metadata !5, i32 105, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [rsum0] [line 105]
!484 = metadata !{i32 786688, metadata !147, metadata !"isum1", metadata !5, i32 105, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [isum1] [line 105]
!485 = metadata !{i32 143, i32 0, metadata !470, metadata !440}
!486 = metadata !{i32 786688, metadata !147, metadata !"rsum1", metadata !5, i32 105, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [rsum1] [line 105]
!487 = metadata !{i32 786688, metadata !147, metadata !"isum2", metadata !5, i32 105, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [isum2] [line 105]
!488 = metadata !{i32 144, i32 0, metadata !470, metadata !440}
!489 = metadata !{i32 786688, metadata !147, metadata !"rsum2", metadata !5, i32 105, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [rsum2] [line 105]
!490 = metadata !{i32 786688, metadata !147, metadata !"ii", metadata !5, i32 107, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [ii] [line 107]
!491 = metadata !{i32 145, i32 0, metadata !474, metadata !440}
!492 = metadata !{i32 786688, metadata !147, metadata !"ar", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [ar] [line 104]
!493 = metadata !{i32 786688, metadata !147, metadata !"ai", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [ai] [line 104]
!494 = metadata !{i32 152, i32 0, metadata !473, metadata !440}
!495 = metadata !{i32 786688, metadata !147, metadata !"rloc", metadata !5, i32 108, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [rloc] [line 108]
!496 = metadata !{i32 786688, metadata !147, metadata !"iloc", metadata !5, i32 107, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [iloc] [line 107]
!497 = metadata !{i32 153, i32 0, metadata !473, metadata !440}
!498 = metadata !{i32 786688, metadata !147, metadata !"br0", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [br0] [line 104]
!499 = metadata !{i32 786688, metadata !147, metadata !"bi0", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [bi0] [line 104]
!500 = metadata !{i32 154, i32 0, metadata !473, metadata !440}
!501 = metadata !{i32 786688, metadata !147, metadata !"br1", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [br1] [line 104]
!502 = metadata !{i32 786688, metadata !147, metadata !"bi1", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [bi1] [line 104]
!503 = metadata !{i32 155, i32 0, metadata !473, metadata !440}
!504 = metadata !{i32 786688, metadata !147, metadata !"br2", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [br2] [line 104]
!505 = metadata !{i32 786688, metadata !147, metadata !"bi2", metadata !5, i32 104, metadata !23, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [bi2] [line 104]
!506 = metadata !{i32 156, i32 0, metadata !473, metadata !440}
!507 = metadata !{i32 157, i32 0, metadata !473, metadata !440}
!508 = metadata !{i32 158, i32 0, metadata !473, metadata !440}
!509 = metadata !{i32 160, i32 0, metadata !470, metadata !440}
!510 = metadata !{i32 161, i32 0, metadata !470, metadata !440}
!511 = metadata !{i32 162, i32 0, metadata !470, metadata !440}
!512 = metadata !{i32 163, i32 0, metadata !470, metadata !440}
!513 = metadata !{i32 164, i32 0, metadata !470, metadata !440}
!514 = metadata !{i32 172, i32 0, metadata !147, metadata !440}
!515 = metadata !{i32 173, i32 0, metadata !516, metadata !440}
!516 = metadata !{i32 786443, metadata !1, metadata !147, i32 172, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!517 = metadata !{i32 174, i32 0, metadata !518, metadata !440}
!518 = metadata !{i32 786443, metadata !1, metadata !516, i32 174, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!519 = metadata !{i32 179, i32 0, metadata !520, metadata !440}
!520 = metadata !{i32 786443, metadata !1, metadata !518, i32 174, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!521 = metadata !{i32 180, i32 0, metadata !522, metadata !440}
!522 = metadata !{i32 786443, metadata !1, metadata !520, i32 179, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!523 = metadata !{i32 189, i32 0, metadata !524, metadata !440}
!524 = metadata !{i32 786443, metadata !1, metadata !525, i32 188, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!525 = metadata !{i32 786443, metadata !1, metadata !522, i32 188, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!526 = metadata !{i32 181, i32 0, metadata !522, metadata !440}
!527 = metadata !{i32 186, i32 0, metadata !522, metadata !440}
!528 = metadata !{i32 187, i32 0, metadata !522, metadata !440}
!529 = metadata !{i32 188, i32 0, metadata !525, metadata !440}
!530 = metadata !{i32 195, i32 0, metadata !524, metadata !440}
!531 = metadata !{i32 196, i32 0, metadata !524, metadata !440}
!532 = metadata !{i32 197, i32 0, metadata !524, metadata !440}
!533 = metadata !{i32 198, i32 0, metadata !524, metadata !440}
!534 = metadata !{i32 199, i32 0, metadata !524, metadata !440}
!535 = metadata !{i32 201, i32 0, metadata !522, metadata !440}
!536 = metadata !{i32 202, i32 0, metadata !522, metadata !440}
!537 = metadata !{i32 203, i32 0, metadata !522, metadata !440}
!538 = metadata !{i32 204, i32 0, metadata !522, metadata !440}
!539 = metadata !{i32 210, i32 0, metadata !147, metadata !440}
!540 = metadata !{i32 211, i32 0, metadata !541, metadata !440}
!541 = metadata !{i32 786443, metadata !1, metadata !542, i32 211, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!542 = metadata !{i32 786443, metadata !1, metadata !147, i32 210, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!543 = metadata !{i32 216, i32 0, metadata !544, metadata !440}
!544 = metadata !{i32 786443, metadata !1, metadata !541, i32 211, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!545 = metadata !{i32 217, i32 0, metadata !546, metadata !440}
!546 = metadata !{i32 786443, metadata !1, metadata !544, i32 216, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!547 = metadata !{i32 225, i32 0, metadata !548, metadata !440}
!548 = metadata !{i32 786443, metadata !1, metadata !549, i32 224, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!549 = metadata !{i32 786443, metadata !1, metadata !546, i32 224, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!550 = metadata !{i32 218, i32 0, metadata !546, metadata !440}
!551 = metadata !{i32 223, i32 0, metadata !546, metadata !440}
!552 = metadata !{i32 224, i32 0, metadata !549, metadata !440}
!553 = metadata !{i32 231, i32 0, metadata !548, metadata !440}
!554 = metadata !{i32 232, i32 0, metadata !548, metadata !440}
!555 = metadata !{i32 233, i32 0, metadata !548, metadata !440}
!556 = metadata !{i32 235, i32 0, metadata !546, metadata !440}
!557 = metadata !{i32 236, i32 0, metadata !546, metadata !440}
!558 = metadata !{i32 237, i32 0, metadata !546, metadata !440}
!559 = metadata !{i32 259, i32 0, metadata !108, metadata !560}
!560 = metadata !{i32 78, i32 0, metadata !211, null}
!561 = metadata !{i32 786689, metadata !108, metadata !"mtxA", metadata !5, i32 16777475, metadata !8, i32 0, metadata !560} ; [ DW_TAG_arg_variable ] [mtxA] [line 259]
!562 = metadata !{i32 786689, metadata !108, metadata !"mtxB", metadata !5, i32 33554692, metadata !8, i32 0, metadata !560} ; [ DW_TAG_arg_variable ] [mtxB] [line 260]
!563 = metadata !{i32 260, i32 0, metadata !108, metadata !560}
!564 = metadata !{i32 264, i32 0, metadata !108, metadata !560}
!565 = metadata !{i32 265, i32 0, metadata !108, metadata !560}
!566 = metadata !{i32 266, i32 0, metadata !108, metadata !560}
!567 = metadata !{i32 267, i32 0, metadata !108, metadata !560}
!568 = metadata !{i32 273, i32 0, metadata !108, metadata !560}
!569 = metadata !{i32 275, i32 0, metadata !108, metadata !560}
!570 = metadata !{i32 786688, metadata !108, metadata !"entriesB", metadata !5, i32 264, metadata !22, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [entriesB] [line 264]
!571 = metadata !{i32 276, i32 0, metadata !108, metadata !560}
!572 = metadata !{i32 786688, metadata !108, metadata !"colB0", metadata !5, i32 264, metadata !22, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [colB0] [line 264]
!573 = metadata !{i32 786688, metadata !108, metadata !"jcolB", metadata !5, i32 265, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [jcolB] [line 265]
!574 = metadata !{i32 277, i32 0, metadata !575, metadata !560}
!575 = metadata !{i32 786443, metadata !1, metadata !108, i32 277, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!576 = metadata !{i32 786688, metadata !108, metadata !"ncolB", metadata !5, i32 266, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [ncolB] [line 266]
!577 = metadata !{i32 786688, metadata !108, metadata !"nrowB", metadata !5, i32 266, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [nrowB] [line 266]
!578 = metadata !{i32 278, i32 0, metadata !579, metadata !560}
!579 = metadata !{i32 786443, metadata !1, metadata !575, i32 277, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!580 = metadata !{i32 279, i32 0, metadata !579, metadata !560}
!581 = metadata !{i32 786688, metadata !108, metadata !"nrowA", metadata !5, i32 266, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [nrowA] [line 266]
!582 = metadata !{i32 284, i32 0, metadata !583, metadata !560}
!583 = metadata !{i32 786443, metadata !1, metadata !579, i32 284, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!584 = metadata !{i32 315, i32 0, metadata !579, metadata !560}
!585 = metadata !{i32 786688, metadata !108, metadata !"sizesA", metadata !5, i32 267, metadata !72, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [sizesA] [line 267]
!586 = metadata !{i32 285, i32 0, metadata !587, metadata !560}
!587 = metadata !{i32 786443, metadata !1, metadata !583, i32 284, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!588 = metadata !{i32 786688, metadata !108, metadata !"entriesA", metadata !5, i32 264, metadata !22, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [entriesA] [line 264]
!589 = metadata !{i32 290, i32 0, metadata !590, metadata !560}
!590 = metadata !{i32 786443, metadata !1, metadata !591, i32 289, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!591 = metadata !{i32 786443, metadata !1, metadata !592, i32 289, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!592 = metadata !{i32 786443, metadata !1, metadata !587, i32 285, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!593 = metadata !{i32 786688, metadata !108, metadata !"indicesA", metadata !5, i32 267, metadata !72, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [indicesA] [line 267]
!594 = metadata !{i32 292, i32 0, metadata !590, metadata !560}
!595 = metadata !{i32 786688, metadata !108, metadata !"kk", metadata !5, i32 265, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [kk] [line 265]
!596 = metadata !{i32 786688, metadata !108, metadata !"irowA", metadata !5, i32 265, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [irowA] [line 265]
!597 = metadata !{i32 786688, metadata !108, metadata !"size", metadata !5, i32 266, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [size] [line 266]
!598 = metadata !{i32 293, i32 0, metadata !590, metadata !560}
!599 = metadata !{i32 289, i32 0, metadata !591, metadata !560}
!600 = metadata !{i32 786688, metadata !108, metadata !"ar", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [ar] [line 262]
!601 = metadata !{i32 291, i32 0, metadata !590, metadata !560}
!602 = metadata !{i32 786688, metadata !108, metadata !"ai", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [ai] [line 262]
!603 = metadata !{i32 786688, metadata !108, metadata !"jj", metadata !5, i32 265, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [jj] [line 265]
!604 = metadata !{i32 294, i32 0, metadata !605, metadata !560}
!605 = metadata !{i32 786443, metadata !1, metadata !590, i32 293, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!606 = metadata !{i32 297, i32 0, metadata !605, metadata !560}
!607 = metadata !{i32 299, i32 0, metadata !590, metadata !560}
!608 = metadata !{i32 786688, metadata !108, metadata !"rloc", metadata !5, i32 266, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [rloc] [line 266]
!609 = metadata !{i32 300, i32 0, metadata !590, metadata !560}
!610 = metadata !{i32 786688, metadata !108, metadata !"iloc", metadata !5, i32 265, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [iloc] [line 265]
!611 = metadata !{i32 301, i32 0, metadata !590, metadata !560}
!612 = metadata !{i32 786688, metadata !108, metadata !"br0", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [br0] [line 262]
!613 = metadata !{i32 786688, metadata !108, metadata !"bi0", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [bi0] [line 262]
!614 = metadata !{i32 302, i32 0, metadata !590, metadata !560}
!615 = metadata !{i32 786688, metadata !108, metadata !"br1", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [br1] [line 262]
!616 = metadata !{i32 786688, metadata !108, metadata !"bi1", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [bi1] [line 262]
!617 = metadata !{i32 303, i32 0, metadata !590, metadata !560}
!618 = metadata !{i32 786688, metadata !108, metadata !"br2", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [br2] [line 262]
!619 = metadata !{i32 786688, metadata !108, metadata !"bi2", metadata !5, i32 262, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [bi2] [line 262]
!620 = metadata !{i32 304, i32 0, metadata !590, metadata !560}
!621 = metadata !{i32 786688, metadata !108, metadata !"rsum0", metadata !5, i32 263, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [rsum0] [line 263]
!622 = metadata !{i32 786688, metadata !108, metadata !"isum0", metadata !5, i32 263, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [isum0] [line 263]
!623 = metadata !{i32 305, i32 0, metadata !590, metadata !560}
!624 = metadata !{i32 786688, metadata !108, metadata !"rsum1", metadata !5, i32 263, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [rsum1] [line 263]
!625 = metadata !{i32 786688, metadata !108, metadata !"isum1", metadata !5, i32 263, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [isum1] [line 263]
!626 = metadata !{i32 306, i32 0, metadata !590, metadata !560}
!627 = metadata !{i32 786688, metadata !108, metadata !"rsum2", metadata !5, i32 263, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [rsum2] [line 263]
!628 = metadata !{i32 786688, metadata !108, metadata !"isum2", metadata !5, i32 263, metadata !23, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [isum2] [line 263]
!629 = metadata !{i32 786688, metadata !108, metadata !"ii", metadata !5, i32 265, metadata !14, i32 0, metadata !560} ; [ DW_TAG_auto_variable ] [ii] [line 265]
!630 = metadata !{i32 308, i32 0, metadata !592, metadata !560}
!631 = metadata !{i32 309, i32 0, metadata !592, metadata !560}
!632 = metadata !{i32 310, i32 0, metadata !592, metadata !560}
!633 = metadata !{i32 311, i32 0, metadata !592, metadata !560}
!634 = metadata !{i32 312, i32 0, metadata !592, metadata !560}
!635 = metadata !{i32 313, i32 0, metadata !592, metadata !560}
!636 = metadata !{i32 317, i32 0, metadata !108, metadata !560}
!637 = metadata !{i32 318, i32 0, metadata !638, metadata !560}
!638 = metadata !{i32 786443, metadata !1, metadata !108, i32 317, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!639 = metadata !{i32 323, i32 0, metadata !640, metadata !560}
!640 = metadata !{i32 786443, metadata !1, metadata !638, i32 323, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!641 = metadata !{i32 324, i32 0, metadata !642, metadata !560}
!642 = metadata !{i32 786443, metadata !1, metadata !640, i32 323, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!643 = metadata !{i32 328, i32 0, metadata !644, metadata !560}
!644 = metadata !{i32 786443, metadata !1, metadata !645, i32 327, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!645 = metadata !{i32 786443, metadata !1, metadata !646, i32 327, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!646 = metadata !{i32 786443, metadata !1, metadata !642, i32 324, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!647 = metadata !{i32 330, i32 0, metadata !644, metadata !560}
!648 = metadata !{i32 331, i32 0, metadata !644, metadata !560}
!649 = metadata !{i32 327, i32 0, metadata !645, metadata !560}
!650 = metadata !{i32 329, i32 0, metadata !644, metadata !560}
!651 = metadata !{i32 332, i32 0, metadata !652, metadata !560}
!652 = metadata !{i32 786443, metadata !1, metadata !644, i32 331, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!653 = metadata !{i32 335, i32 0, metadata !652, metadata !560}
!654 = metadata !{i32 337, i32 0, metadata !644, metadata !560}
!655 = metadata !{i32 338, i32 0, metadata !644, metadata !560}
!656 = metadata !{i32 339, i32 0, metadata !644, metadata !560}
!657 = metadata !{i32 340, i32 0, metadata !644, metadata !560}
!658 = metadata !{i32 341, i32 0, metadata !644, metadata !560}
!659 = metadata !{i32 342, i32 0, metadata !644, metadata !560}
!660 = metadata !{i32 344, i32 0, metadata !646, metadata !560}
!661 = metadata !{i32 345, i32 0, metadata !646, metadata !560}
!662 = metadata !{i32 346, i32 0, metadata !646, metadata !560}
!663 = metadata !{i32 347, i32 0, metadata !646, metadata !560}
!664 = metadata !{i32 348, i32 0, metadata !646, metadata !560}
!665 = metadata !{i32 350, i32 0, metadata !108, metadata !560}
!666 = metadata !{i32 351, i32 0, metadata !667, metadata !560}
!667 = metadata !{i32 786443, metadata !1, metadata !668, i32 351, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!668 = metadata !{i32 786443, metadata !1, metadata !108, i32 350, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!669 = metadata !{i32 352, i32 0, metadata !670, metadata !560}
!670 = metadata !{i32 786443, metadata !1, metadata !667, i32 351, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!671 = metadata !{i32 355, i32 0, metadata !672, metadata !560}
!672 = metadata !{i32 786443, metadata !1, metadata !673, i32 354, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!673 = metadata !{i32 786443, metadata !1, metadata !674, i32 354, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!674 = metadata !{i32 786443, metadata !1, metadata !670, i32 352, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!675 = metadata !{i32 357, i32 0, metadata !672, metadata !560}
!676 = metadata !{i32 358, i32 0, metadata !672, metadata !560}
!677 = metadata !{i32 354, i32 0, metadata !673, metadata !560}
!678 = metadata !{i32 356, i32 0, metadata !672, metadata !560}
!679 = metadata !{i32 359, i32 0, metadata !680, metadata !560}
!680 = metadata !{i32 786443, metadata !1, metadata !672, i32 358, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveH.c]
!681 = metadata !{i32 362, i32 0, metadata !680, metadata !560}
!682 = metadata !{i32 364, i32 0, metadata !672, metadata !560}
!683 = metadata !{i32 365, i32 0, metadata !672, metadata !560}
!684 = metadata !{i32 366, i32 0, metadata !672, metadata !560}
!685 = metadata !{i32 367, i32 0, metadata !672, metadata !560}
!686 = metadata !{i32 369, i32 0, metadata !674, metadata !560}
!687 = metadata !{i32 370, i32 0, metadata !674, metadata !560}
!688 = metadata !{i32 371, i32 0, metadata !674, metadata !560}
!689 = metadata !{i32 372, i32 0, metadata !674, metadata !560}
!690 = metadata !{i32 81, i32 0, metadata !211, null}
!691 = metadata !{i32 83, i32 0, metadata !211, null}
!692 = metadata !{i32 86, i32 0, metadata !4, null}

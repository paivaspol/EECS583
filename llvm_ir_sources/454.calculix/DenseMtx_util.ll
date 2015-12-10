; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_sort(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_copyRow(%p,%d,%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_addRow(%p,%d,%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_zero(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_fillRandomEntries(%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_checksums(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DenseMtx_maxabs(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DenseMtx_maxabs(%p)\0A bad type %d\0A\00", align 1
@.str8 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->type = %d, mtxA->type = %d\0A\00", align 1
@.str10 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->nrow = %d, mtxA->nrow = %d\0A\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->ncol = %d, mtxA->ncol = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->entries = %p, mtxA->entries = %p\0A\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_copyRowIntoVector()\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DenseMtx_copyRowIntoVector()\0A irow = %d, nrow = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [83 x i8] c"\0A fatal error in DenseMtx_copyVectorIntoRow()\0A bad input, mtx %p, irow %d, vec %p\0A\00", align 1
@.str16 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DenseMtx_copyVectorIntoRow()\0A irow = %d, nrow = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [82 x i8] c"\0A fatal error in DenseMtx_addVectorIntoRow()\0A bad input, mtx %p, irow %d, vec %p\0A\00", align 1
@.str18 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DenseMtx_addVectorIntoRow()\0A irow = %d, nrow = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_sort(%struct._DenseMtx* %mtx) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !40), !dbg !192
  call void @llvm.dbg.declare(metadata !{%struct._A2* %a2}, metadata !41), !dbg !193
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !54), !dbg !194
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !55), !dbg !194
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !58), !dbg !195
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !59), !dbg !195
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !196
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !197, !tbaa !199
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* null) #7, !dbg !197
  call void @exit(i32 -1) #8, !dbg !202
  unreachable, !dbg !202

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !203
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !204
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !55), !dbg !205
  %1 = load i32* %nrow, align 4, !dbg !205, !tbaa !206
  %cmp1 = icmp slt i32 %1, 1, !dbg !205
  br i1 %cmp1, label %return, label %lor.lhs.false, !dbg !205

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !54), !dbg !205
  %2 = load i32* %ncol, align 4, !dbg !205, !tbaa !206
  %cmp2 = icmp slt i32 %2, 1, !dbg !205
  br i1 %cmp2, label %return, label %for.cond.preheader, !dbg !205

for.cond.preheader:                               ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !55), !dbg !207
  %cmp556 = icmp sgt i32 %1, 1, !dbg !207
  br i1 %cmp556, label %for.body.lr.ph, label %for.end, !dbg !207

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !59), !dbg !209
  %3 = load i32** %rowind, align 8, !dbg !209, !tbaa !199
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !55), !dbg !207
  %.pre62 = load i32* %3, align 4, !dbg !209, !tbaa !206
  br label %for.body, !dbg !207

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !55), !dbg !207
  %4 = trunc i64 %indvars.iv.next60 to i32, !dbg !207
  %cmp5 = icmp slt i32 %4, %1, !dbg !207
  br i1 %cmp5, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %5 = phi i32 [ %.pre62, %for.body.lr.ph ], [ %6, %for.cond ], !dbg !209
  %indvars.iv59 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next60, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !59), !dbg !209
  %arrayidx7 = getelementptr inbounds i32* %3, i64 %indvars.iv59, !dbg !209
  %6 = load i32* %arrayidx7, align 4, !dbg !209, !tbaa !206
  %cmp8 = icmp sgt i32 %5, %6, !dbg !209
  %indvars.iv.next60 = add i64 %indvars.iv59, 1, !dbg !207
  br i1 %cmp8, label %for.end, label %for.cond, !dbg !209

for.end:                                          ; preds = %for.cond, %for.body, %for.cond.preheader
  %sortRows.0 = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  call void @llvm.dbg.value(metadata !211, i64 0, metadata !53), !dbg !212
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !54), !dbg !212
  %cmp1254 = icmp sgt i32 %2, 1, !dbg !212
  br i1 %cmp1254, label %for.body13.lr.ph, label %for.end24, !dbg !212

for.body13.lr.ph:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !58), !dbg !214
  %7 = load i32** %colind, align 8, !dbg !214, !tbaa !199
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !54), !dbg !212
  %.pre = load i32* %7, align 4, !dbg !214, !tbaa !206
  br label %for.body13, !dbg !212

for.cond11:                                       ; preds = %for.body13
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !54), !dbg !212
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !212
  %cmp12 = icmp slt i32 %8, %2, !dbg !212
  br i1 %cmp12, label %for.body13, label %for.end24, !dbg !212

for.body13:                                       ; preds = %for.body13.lr.ph, %for.cond11
  %9 = phi i32 [ %.pre, %for.body13.lr.ph ], [ %10, %for.cond11 ], !dbg !214
  %indvars.iv = phi i64 [ 1, %for.body13.lr.ph ], [ %indvars.iv.next, %for.cond11 ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !58), !dbg !214
  %arrayidx18 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !214
  %10 = load i32* %arrayidx18, align 4, !dbg !214, !tbaa !206
  %cmp19 = icmp sgt i32 %9, %10, !dbg !214
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !212
  br i1 %cmp19, label %if.end28, label %for.cond11, !dbg !214

for.end24:                                        ; preds = %for.cond11, %for.end
  %cmp25 = icmp eq i32 %sortRows.0, 0, !dbg !216
  br i1 %cmp25, label %return, label %if.end28, !dbg !216

if.end28:                                         ; preds = %for.body13, %for.end24
  %sortColumns.053 = phi i32 [ 0, %for.end24 ], [ 1, %for.body13 ]
  call void @A2_setDefaultFields(%struct._A2* %a2) #7, !dbg !217
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #7, !dbg !218
  %cmp29 = icmp eq i32 %sortRows.0, 1, !dbg !219
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !219

if.then30:                                        ; preds = %if.end28
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !55), !dbg !220
  %11 = load i32* %nrow, align 4, !dbg !220, !tbaa !206
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !59), !dbg !220
  %12 = load i32** %rowind, align 8, !dbg !220, !tbaa !199
  %call31 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %11, i32* %12) #7, !dbg !220
  br label %if.end32, !dbg !222

if.end32:                                         ; preds = %if.then30, %if.end28
  %cmp33 = icmp eq i32 %sortColumns.053, 1, !dbg !223
  br i1 %cmp33, label %if.then34, label %return, !dbg !223

if.then34:                                        ; preds = %if.end32
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !54), !dbg !224
  %13 = load i32* %ncol, align 4, !dbg !224, !tbaa !206
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !58), !dbg !224
  %14 = load i32** %colind, align 8, !dbg !224, !tbaa !199
  %call35 = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %13, i32* %14) #7, !dbg !224
  br label %return, !dbg !226

return:                                           ; preds = %for.end24, %if.end32, %if.then34, %if.end, %lor.lhs.false
  ret void, !dbg !227
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #4

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #4

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #4

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxB}, i64 0, metadata !64), !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %irowB}, i64 0, metadata !65), !dbg !229
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxA}, i64 0, metadata !66), !dbg !230
  tail call void @llvm.dbg.value(metadata !{i32 %irowA}, i64 0, metadata !67), !dbg !231
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !232
  %cmp1 = icmp slt i32 %irowB, 0, !dbg !232
  %or.cond = or i1 %cmp, %cmp1, !dbg !232
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !232

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !232
  %0 = load i32* %nrow, align 4, !dbg !232, !tbaa !206
  %cmp3 = icmp sle i32 %0, %irowB, !dbg !232
  %cmp5 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !232
  %or.cond121 = or i1 %cmp3, %cmp5, !dbg !232
  %cmp7 = icmp slt i32 %irowA, 0, !dbg !232
  %or.cond122 = or i1 %or.cond121, %cmp7, !dbg !232
  br i1 %or.cond122, label %if.then, label %lor.lhs.false8, !dbg !232

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !232
  %1 = load i32* %nrow9, align 4, !dbg !232, !tbaa !206
  %cmp10 = icmp sgt i32 %1, %irowA, !dbg !232
  br i1 %cmp10, label %lor.lhs.false11, label %if.then, !dbg !232

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %ncol12 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !232
  %2 = load i32* %ncol12, align 4, !dbg !232, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !75), !dbg !232
  %ncol13 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !232
  %3 = load i32* %ncol13, align 4, !dbg !232, !tbaa !206
  %cmp14 = icmp eq i32 %2, %3, !dbg !232
  br i1 %cmp14, label %if.end, label %if.then, !dbg !232

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false11, %lor.lhs.false8, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !233, !tbaa !199
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #7, !dbg !233
  tail call void @exit(i32 -1) #8, !dbg !235
  unreachable, !dbg !235

if.end:                                           ; preds = %lor.lhs.false11
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 6, !dbg !236
  %5 = load i32* %inc2, align 4, !dbg !236, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !71), !dbg !236
  %inc215 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 6, !dbg !237
  %6 = load i32* %inc215, align 4, !dbg !237, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !72), !dbg !237
  %type = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0, !dbg !238
  %7 = load i32* %type, align 4, !dbg !238, !tbaa !206
  switch i32 %7, label %if.end70 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true31
  ], !dbg !238

land.lhs.true:                                    ; preds = %if.end
  %type17 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !238
  %8 = load i32* %type17, align 4, !dbg !238, !tbaa !206
  %cmp18 = icmp eq i32 %8, 1, !dbg !238
  br i1 %cmp18, label %if.then19, label %if.end70, !dbg !238

if.then19:                                        ; preds = %land.lhs.true
  %entries = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !239
  %9 = load double** %entries, align 8, !dbg !239, !tbaa !199
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !239
  %10 = load i32* %inc1, align 4, !dbg !239, !tbaa !206
  %mul = mul nsw i32 %10, %irowA, !dbg !239
  %idx.ext = sext i32 %mul to i64, !dbg !239
  %entries20 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !241
  %11 = load double** %entries20, align 8, !dbg !241, !tbaa !199
  %inc121 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !241
  %12 = load i32* %inc121, align 4, !dbg !241, !tbaa !206
  %mul22 = mul nsw i32 %12, %irowB, !dbg !241
  %idx.ext23 = sext i32 %mul22 to i64, !dbg !241
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !242
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !242
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !242
  %cmp25123 = icmp sgt i32 %2, 0, !dbg !242
  br i1 %cmp25123, label %for.body.lr.ph, label %if.end70, !dbg !242

for.body.lr.ph:                                   ; preds = %if.then19
  %13 = sext i32 %6 to i64
  %14 = sext i32 %5 to i64, !dbg !242
  br label %for.body, !dbg !242

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv132 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next133, %for.body ], !dbg !242
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ii.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add.ptr.sum = add i64 %indvars.iv132, %idx.ext, !dbg !244
  %arrayidx = getelementptr inbounds double* %9, i64 %add.ptr.sum, !dbg !244
  %15 = load double* %arrayidx, align 8, !dbg !244, !tbaa !246
  %add.ptr24.sum = add i64 %indvars.iv, %idx.ext23, !dbg !244
  %arrayidx27 = getelementptr inbounds double* %11, i64 %add.ptr24.sum, !dbg !244
  store double %15, double* %arrayidx27, align 8, !dbg !244, !tbaa !246
  %inc = add nsw i32 %ii.0124, 1, !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !70), !dbg !242
  %indvars.iv.next133 = add i64 %indvars.iv132, %14, !dbg !242
  %indvars.iv.next = add i64 %indvars.iv, %13, !dbg !242
  %exitcond = icmp eq i32 %inc, %2, !dbg !242
  br i1 %exitcond, label %if.end70, label %for.body, !dbg !242

land.lhs.true31:                                  ; preds = %if.end
  %type32 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !247
  %16 = load i32* %type32, align 4, !dbg !247, !tbaa !206
  %cmp33 = icmp eq i32 %16, 2, !dbg !247
  br i1 %cmp33, label %if.then34, label %if.end70, !dbg !247

if.then34:                                        ; preds = %land.lhs.true31
  %entries35 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !248
  %17 = load double** %entries35, align 8, !dbg !248, !tbaa !199
  %mul36 = shl i32 %irowA, 1, !dbg !248
  %inc137 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !248
  %18 = load i32* %inc137, align 4, !dbg !248, !tbaa !206
  %mul38 = mul nsw i32 %mul36, %18, !dbg !248
  %idx.ext39 = sext i32 %mul38 to i64, !dbg !248
  %entries41 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !250
  %19 = load double** %entries41, align 8, !dbg !250, !tbaa !199
  %mul42 = shl i32 %irowB, 1, !dbg !250
  %inc143 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !250
  %20 = load i32* %inc143, align 4, !dbg !250, !tbaa !206
  %mul44 = mul nsw i32 %mul42, %20, !dbg !250
  %idx.ext45 = sext i32 %mul44 to i64, !dbg !250
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !251
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !251
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !251
  %cmp48128 = icmp sgt i32 %2, 0, !dbg !251
  br i1 %cmp48128, label %for.body49.lr.ph, label %if.end70, !dbg !251

for.body49.lr.ph:                                 ; preds = %if.then34
  %21 = sext i32 %6 to i64
  %22 = sext i32 %5 to i64, !dbg !251
  br label %for.body49, !dbg !251

for.body49:                                       ; preds = %for.body49, %for.body49.lr.ph
  %indvars.iv136 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next137, %for.body49 ], !dbg !251
  %indvars.iv134 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next135, %for.body49 ]
  %ii.1129 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc65, %for.body49 ]
  %23 = trunc i64 %indvars.iv136 to i32, !dbg !253
  %mul50 = shl nsw i32 %23, 1, !dbg !253
  %idxprom51 = sext i32 %mul50 to i64, !dbg !253
  %add.ptr40.sum = add i64 %idxprom51, %idx.ext39, !dbg !253
  %arrayidx52 = getelementptr inbounds double* %17, i64 %add.ptr40.sum, !dbg !253
  %24 = load double* %arrayidx52, align 8, !dbg !253, !tbaa !246
  %25 = trunc i64 %indvars.iv134 to i32, !dbg !253
  %mul53 = shl nsw i32 %25, 1, !dbg !253
  %idxprom54 = sext i32 %mul53 to i64, !dbg !253
  %add.ptr46.sum = add i64 %idxprom54, %idx.ext45, !dbg !253
  %arrayidx55 = getelementptr inbounds double* %19, i64 %add.ptr46.sum, !dbg !253
  store double %24, double* %arrayidx55, align 8, !dbg !253, !tbaa !246
  %add57117 = or i32 %mul50, 1, !dbg !255
  %idxprom58 = sext i32 %add57117 to i64, !dbg !255
  %add.ptr40.sum118 = add i64 %idxprom58, %idx.ext39, !dbg !255
  %arrayidx59 = getelementptr inbounds double* %17, i64 %add.ptr40.sum118, !dbg !255
  %26 = load double* %arrayidx59, align 8, !dbg !255, !tbaa !246
  %add61119 = or i32 %mul53, 1, !dbg !255
  %idxprom62 = sext i32 %add61119 to i64, !dbg !255
  %add.ptr46.sum120 = add i64 %idxprom62, %idx.ext45, !dbg !255
  %arrayidx63 = getelementptr inbounds double* %19, i64 %add.ptr46.sum120, !dbg !255
  store double %26, double* %arrayidx63, align 8, !dbg !255, !tbaa !246
  %inc65 = add nsw i32 %ii.1129, 1, !dbg !251
  tail call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !70), !dbg !251
  %indvars.iv.next137 = add i64 %indvars.iv136, %22, !dbg !251
  %indvars.iv.next135 = add i64 %indvars.iv134, %21, !dbg !251
  %exitcond138 = icmp eq i32 %inc65, %2, !dbg !251
  br i1 %exitcond138, label %if.end70, label %for.body49, !dbg !251

if.end70:                                         ; preds = %if.end, %land.lhs.true, %if.then34, %for.body49, %if.then19, %for.body, %land.lhs.true31
  ret void, !dbg !256
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyRowAndIndex(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxB}, i64 0, metadata !78), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32 %irowB}, i64 0, metadata !79), !dbg !258
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxA}, i64 0, metadata !80), !dbg !259
  tail call void @llvm.dbg.value(metadata !{i32 %irowA}, i64 0, metadata !81), !dbg !260
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !261
  %cmp1 = icmp slt i32 %irowB, 0, !dbg !261
  %or.cond = or i1 %cmp, %cmp1, !dbg !261
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !261

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !261
  %0 = load i32* %nrow, align 4, !dbg !261, !tbaa !206
  %cmp3 = icmp sle i32 %0, %irowB, !dbg !261
  %cmp5 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !261
  %or.cond35 = or i1 %cmp3, %cmp5, !dbg !261
  %cmp7 = icmp slt i32 %irowA, 0, !dbg !261
  %or.cond36 = or i1 %or.cond35, %cmp7, !dbg !261
  br i1 %or.cond36, label %if.then, label %lor.lhs.false8, !dbg !261

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !261
  %1 = load i32* %nrow9, align 4, !dbg !261, !tbaa !206
  %cmp10 = icmp sgt i32 %1, %irowA, !dbg !261
  br i1 %cmp10, label %lor.lhs.false11, label %if.then, !dbg !261

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !261
  %2 = load i32* %ncol, align 4, !dbg !261, !tbaa !206
  %ncol12 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !261
  %3 = load i32* %ncol12, align 4, !dbg !261, !tbaa !206
  %cmp13 = icmp eq i32 %2, %3, !dbg !261
  br i1 %cmp13, label %if.end, label %if.then, !dbg !261

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false11, %lor.lhs.false8, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !262, !tbaa !199
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #7, !dbg !262
  tail call void @exit(i32 -1) #8, !dbg !264
  unreachable, !dbg !264

if.end:                                           ; preds = %lor.lhs.false11
  tail call void @DenseMtx_copyRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #9, !dbg !265
  %idxprom = sext i32 %irowA to i64, !dbg !266
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 7, !dbg !266
  %5 = load i32** %rowind, align 8, !dbg !266, !tbaa !199
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom, !dbg !266
  %6 = load i32* %arrayidx, align 4, !dbg !266, !tbaa !206
  %idxprom14 = sext i32 %irowB to i64, !dbg !266
  %rowind15 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 7, !dbg !266
  %7 = load i32** %rowind15, align 8, !dbg !266, !tbaa !199
  %arrayidx16 = getelementptr inbounds i32* %7, i64 %idxprom14, !dbg !266
  store i32 %6, i32* %arrayidx16, align 4, !dbg !266, !tbaa !206
  ret void, !dbg !267
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_addRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxB}, i64 0, metadata !84), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %irowB}, i64 0, metadata !85), !dbg !269
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxA}, i64 0, metadata !86), !dbg !270
  tail call void @llvm.dbg.value(metadata !{i32 %irowA}, i64 0, metadata !87), !dbg !271
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !272
  %cmp1 = icmp slt i32 %irowB, 0, !dbg !272
  %or.cond = or i1 %cmp, %cmp1, !dbg !272
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !272

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !272
  %0 = load i32* %nrow, align 4, !dbg !272, !tbaa !206
  %cmp3 = icmp sle i32 %0, %irowB, !dbg !272
  %cmp5 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !272
  %or.cond124 = or i1 %cmp3, %cmp5, !dbg !272
  %cmp7 = icmp slt i32 %irowA, 0, !dbg !272
  %or.cond125 = or i1 %or.cond124, %cmp7, !dbg !272
  br i1 %or.cond125, label %if.then, label %lor.lhs.false8, !dbg !272

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !272
  %1 = load i32* %nrow9, align 4, !dbg !272, !tbaa !206
  %cmp10 = icmp sgt i32 %1, %irowA, !dbg !272
  br i1 %cmp10, label %lor.lhs.false11, label %if.then, !dbg !272

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %ncol12 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !272
  %2 = load i32* %ncol12, align 4, !dbg !272, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !95), !dbg !272
  %ncol13 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !272
  %3 = load i32* %ncol13, align 4, !dbg !272, !tbaa !206
  %cmp14 = icmp eq i32 %2, %3, !dbg !272
  br i1 %cmp14, label %if.end, label %if.then, !dbg !272

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false11, %lor.lhs.false8, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !273, !tbaa !199
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #7, !dbg !273
  tail call void @exit(i32 -1) #8, !dbg !275
  unreachable, !dbg !275

if.end:                                           ; preds = %lor.lhs.false11
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 6, !dbg !276
  %5 = load i32* %inc2, align 4, !dbg !276, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !91), !dbg !276
  %inc215 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 6, !dbg !277
  %6 = load i32* %inc215, align 4, !dbg !277, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !92), !dbg !277
  %type = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0, !dbg !278
  %7 = load i32* %type, align 4, !dbg !278, !tbaa !206
  switch i32 %7, label %if.end73 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true32
  ], !dbg !278

land.lhs.true:                                    ; preds = %if.end
  %type17 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !278
  %8 = load i32* %type17, align 4, !dbg !278, !tbaa !206
  %cmp18 = icmp eq i32 %8, 1, !dbg !278
  br i1 %cmp18, label %if.then19, label %if.end73, !dbg !278

if.then19:                                        ; preds = %land.lhs.true
  %entries = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !279
  %9 = load double** %entries, align 8, !dbg !279, !tbaa !199
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !279
  %10 = load i32* %inc1, align 4, !dbg !279, !tbaa !206
  %mul = mul nsw i32 %10, %irowA, !dbg !279
  %idx.ext = sext i32 %mul to i64, !dbg !279
  %entries20 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !281
  %11 = load double** %entries20, align 8, !dbg !281, !tbaa !199
  %inc121 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !281
  %12 = load i32* %inc121, align 4, !dbg !281, !tbaa !206
  %mul22 = mul nsw i32 %12, %irowB, !dbg !281
  %idx.ext23 = sext i32 %mul22 to i64, !dbg !281
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !282
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !282
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !282
  %cmp25126 = icmp sgt i32 %2, 0, !dbg !282
  br i1 %cmp25126, label %for.body.lr.ph, label %if.end73, !dbg !282

for.body.lr.ph:                                   ; preds = %if.then19
  %13 = sext i32 %6 to i64
  %14 = sext i32 %5 to i64, !dbg !282
  br label %for.body, !dbg !282

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv135 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next136, %for.body ], !dbg !282
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ii.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add.ptr.sum = add i64 %indvars.iv135, %idx.ext, !dbg !284
  %arrayidx = getelementptr inbounds double* %9, i64 %add.ptr.sum, !dbg !284
  %15 = load double* %arrayidx, align 8, !dbg !284, !tbaa !246
  %add.ptr24.sum = add i64 %indvars.iv, %idx.ext23, !dbg !284
  %arrayidx27 = getelementptr inbounds double* %11, i64 %add.ptr24.sum, !dbg !284
  %16 = load double* %arrayidx27, align 8, !dbg !284, !tbaa !246
  %add = fadd double %15, %16, !dbg !284
  store double %add, double* %arrayidx27, align 8, !dbg !284, !tbaa !246
  %inc = add nsw i32 %ii.0127, 1, !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !90), !dbg !282
  %indvars.iv.next136 = add i64 %indvars.iv135, %14, !dbg !282
  %indvars.iv.next = add i64 %indvars.iv, %13, !dbg !282
  %exitcond = icmp eq i32 %inc, %2, !dbg !282
  br i1 %exitcond, label %if.end73, label %for.body, !dbg !282

land.lhs.true32:                                  ; preds = %if.end
  %type33 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !286
  %17 = load i32* %type33, align 4, !dbg !286, !tbaa !206
  %cmp34 = icmp eq i32 %17, 2, !dbg !286
  br i1 %cmp34, label %if.then35, label %if.end73, !dbg !286

if.then35:                                        ; preds = %land.lhs.true32
  %entries36 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !287
  %18 = load double** %entries36, align 8, !dbg !287, !tbaa !199
  %mul37 = shl i32 %irowA, 1, !dbg !287
  %inc138 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !287
  %19 = load i32* %inc138, align 4, !dbg !287, !tbaa !206
  %mul39 = mul nsw i32 %mul37, %19, !dbg !287
  %idx.ext40 = sext i32 %mul39 to i64, !dbg !287
  %entries42 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !289
  %20 = load double** %entries42, align 8, !dbg !289, !tbaa !199
  %mul43 = shl i32 %irowB, 1, !dbg !289
  %inc144 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !289
  %21 = load i32* %inc144, align 4, !dbg !289, !tbaa !206
  %mul45 = mul nsw i32 %mul43, %21, !dbg !289
  %idx.ext46 = sext i32 %mul45 to i64, !dbg !289
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !290
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !290
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !290
  %cmp49131 = icmp sgt i32 %2, 0, !dbg !290
  br i1 %cmp49131, label %for.body50.lr.ph, label %if.end73, !dbg !290

for.body50.lr.ph:                                 ; preds = %if.then35
  %22 = sext i32 %6 to i64
  %23 = sext i32 %5 to i64, !dbg !290
  br label %for.body50, !dbg !290

for.body50:                                       ; preds = %for.body50, %for.body50.lr.ph
  %indvars.iv139 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next140, %for.body50 ], !dbg !290
  %indvars.iv137 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next138, %for.body50 ]
  %ii.1132 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc68, %for.body50 ]
  %24 = trunc i64 %indvars.iv139 to i32, !dbg !292
  %mul51 = shl nsw i32 %24, 1, !dbg !292
  %idxprom52 = sext i32 %mul51 to i64, !dbg !292
  %add.ptr41.sum = add i64 %idxprom52, %idx.ext40, !dbg !292
  %arrayidx53 = getelementptr inbounds double* %18, i64 %add.ptr41.sum, !dbg !292
  %25 = load double* %arrayidx53, align 8, !dbg !292, !tbaa !246
  %26 = trunc i64 %indvars.iv137 to i32, !dbg !292
  %mul54 = shl nsw i32 %26, 1, !dbg !292
  %idxprom55 = sext i32 %mul54 to i64, !dbg !292
  %add.ptr47.sum = add i64 %idxprom55, %idx.ext46, !dbg !292
  %arrayidx56 = getelementptr inbounds double* %20, i64 %add.ptr47.sum, !dbg !292
  %27 = load double* %arrayidx56, align 8, !dbg !292, !tbaa !246
  %add57 = fadd double %25, %27, !dbg !292
  store double %add57, double* %arrayidx56, align 8, !dbg !292, !tbaa !246
  %add59120 = or i32 %mul51, 1, !dbg !294
  %idxprom60 = sext i32 %add59120 to i64, !dbg !294
  %add.ptr41.sum121 = add i64 %idxprom60, %idx.ext40, !dbg !294
  %arrayidx61 = getelementptr inbounds double* %18, i64 %add.ptr41.sum121, !dbg !294
  %28 = load double* %arrayidx61, align 8, !dbg !294, !tbaa !246
  %add63122 = or i32 %mul54, 1, !dbg !294
  %idxprom64 = sext i32 %add63122 to i64, !dbg !294
  %add.ptr47.sum123 = add i64 %idxprom64, %idx.ext46, !dbg !294
  %arrayidx65 = getelementptr inbounds double* %20, i64 %add.ptr47.sum123, !dbg !294
  %29 = load double* %arrayidx65, align 8, !dbg !294, !tbaa !246
  %add66 = fadd double %28, %29, !dbg !294
  store double %add66, double* %arrayidx65, align 8, !dbg !294, !tbaa !246
  %inc68 = add nsw i32 %ii.1132, 1, !dbg !290
  tail call void @llvm.dbg.value(metadata !{i32 %inc68}, i64 0, metadata !90), !dbg !290
  %indvars.iv.next140 = add i64 %indvars.iv139, %23, !dbg !290
  %indvars.iv.next138 = add i64 %indvars.iv137, %22, !dbg !290
  %exitcond141 = icmp eq i32 %inc68, %2, !dbg !290
  br i1 %exitcond141, label %if.end73, label %for.body50, !dbg !290

if.end73:                                         ; preds = %if.end, %land.lhs.true, %if.then35, %for.body50, %if.then19, %for.body, %land.lhs.true32
  ret void, !dbg !295
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_zero(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !98), !dbg !296
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !297
  br i1 %cmp, label %if.then, label %if.end, !dbg !297

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !298, !tbaa !199
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #7, !dbg !298
  tail call void @exit(i32 -1) #8, !dbg !300
  unreachable, !dbg !300

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !301
  %1 = load i32* %type, align 4, !dbg !301, !tbaa !206
  switch i32 %1, label %if.end12 [
    i32 1, label %if.then2
    i32 2, label %if.then5
  ], !dbg !301

if.then2:                                         ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !302
  %2 = load i32* %nrow, align 4, !dbg !302, !tbaa !206
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !302
  %3 = load i32* %ncol, align 4, !dbg !302, !tbaa !206
  %mul = mul nsw i32 %3, %2, !dbg !302
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !302
  %4 = load double** %entries, align 8, !dbg !302, !tbaa !199
  tail call void @DVzero(i32 %mul, double* %4) #7, !dbg !302
  br label %if.end12, !dbg !304

if.then5:                                         ; preds = %if.end
  %nrow6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !305
  %5 = load i32* %nrow6, align 4, !dbg !305, !tbaa !206
  %mul7 = shl i32 %5, 1, !dbg !305
  %ncol8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !305
  %6 = load i32* %ncol8, align 4, !dbg !305, !tbaa !206
  %mul9 = mul nsw i32 %mul7, %6, !dbg !305
  %entries10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !305
  %7 = load double** %entries10, align 8, !dbg !305, !tbaa !199
  tail call void @DVzero(i32 %mul9, double* %7) #7, !dbg !305
  br label %if.end12, !dbg !307

if.end12:                                         ; preds = %if.end, %if.then5, %if.then2
  ret void, !dbg !308
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_fillRandomEntries(%struct._DenseMtx* %mtx, %struct._Drand* %drand) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !117), !dbg !309
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !118), !dbg !310
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !311
  %cmp1 = icmp eq %struct._Drand* %drand, null, !dbg !311
  %or.cond = or i1 %cmp, %cmp1, !dbg !311
  br i1 %or.cond, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !312, !tbaa !199
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._Drand* %drand) #7, !dbg !312
  tail call void @exit(i32 -1) #8, !dbg !314
  unreachable, !dbg !314

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !315
  %1 = load i32* %type, align 4, !dbg !315, !tbaa !206
  switch i32 %1, label %if.end13 [
    i32 1, label %if.then3
    i32 2, label %if.then6
  ], !dbg !315

if.then3:                                         ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !316
  %2 = load i32* %nrow, align 4, !dbg !316, !tbaa !206
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !316
  %3 = load i32* %ncol, align 4, !dbg !316, !tbaa !206
  %mul = mul nsw i32 %3, %2, !dbg !316
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !316
  %4 = load double** %entries, align 8, !dbg !316, !tbaa !199
  tail call void @Drand_fillDvector(%struct._Drand* %drand, i32 %mul, double* %4) #7, !dbg !316
  br label %if.end13, !dbg !318

if.then6:                                         ; preds = %if.end
  %nrow7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !319
  %5 = load i32* %nrow7, align 4, !dbg !319, !tbaa !206
  %mul8 = shl i32 %5, 1, !dbg !319
  %ncol9 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !319
  %6 = load i32* %ncol9, align 4, !dbg !319, !tbaa !206
  %mul10 = mul nsw i32 %mul8, %6, !dbg !319
  %entries11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !319
  %7 = load double** %entries11, align 8, !dbg !319, !tbaa !199
  tail call void @Drand_fillDvector(%struct._Drand* %drand, i32 %mul10, double* %7) #7, !dbg !319
  br label %if.end13, !dbg !321

if.end13:                                         ; preds = %if.end, %if.then6, %if.then3
  ret void, !dbg !322
}

; Function Attrs: optsize
declare void @Drand_fillDvector(%struct._Drand*, i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_checksums(%struct._DenseMtx* %mtx, double* %sums) #0 {
entry:
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !123), !dbg !323
  call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !124), !dbg !324
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !127), !dbg !325
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !129), !dbg !325
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !130), !dbg !326
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !131), !dbg !326
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !327
  %cmp1 = icmp eq double* %sums, null, !dbg !327
  %or.cond = or i1 %cmp, %cmp1, !dbg !327
  br i1 %or.cond, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !328, !tbaa !199
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, double* %sums) #7, !dbg !328
  call void @exit(i32 -1) #8, !dbg !330
  unreachable, !dbg !330

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds double* %sums, i64 2, !dbg !331
  %arrayidx2 = getelementptr inbounds double* %sums, i64 1, !dbg !331
  %1 = bitcast double* %sums to i8*, !dbg !332
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !331
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !332
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !129), !dbg !333
  %2 = load i32* %nrow, align 4, !dbg !333, !tbaa !206
  %cmp495 = icmp sgt i32 %2, 0, !dbg !333
  br i1 %cmp495, label %for.body.lr.ph, label %for.end, !dbg !333

for.body.lr.ph:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !131), !dbg !335
  %3 = load i32** %rowind, align 8, !dbg !335, !tbaa !199
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !129), !dbg !333
  %sums.promoted = load double* %sums, align 8, !dbg !335, !tbaa !246
  br label %for.body, !dbg !333

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv103 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next104, %for.body ]
  %4 = phi double [ %sums.promoted, %for.body.lr.ph ], [ %add, %for.body ], !dbg !335
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !131), !dbg !335
  %arrayidx5 = getelementptr inbounds i32* %3, i64 %indvars.iv103, !dbg !335
  %5 = load i32* %arrayidx5, align 4, !dbg !335, !tbaa !206
  %conv = sitofp i32 %5 to double, !dbg !335
  %add = fadd double %4, %conv, !dbg !335
  %indvars.iv.next104 = add i64 %indvars.iv103, 1, !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !129), !dbg !333
  %6 = trunc i64 %indvars.iv.next104 to i32, !dbg !333
  %cmp4 = icmp slt i32 %6, %2, !dbg !333
  br i1 %cmp4, label %for.body, label %for.cond.for.end_crit_edge, !dbg !333

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store double %add, double* %sums, align 8, !dbg !335, !tbaa !246
  br label %for.end, !dbg !333

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !337
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !127), !dbg !338
  %7 = load i32* %ncol, align 4, !dbg !338, !tbaa !206
  %cmp893 = icmp sgt i32 %7, 0, !dbg !338
  br i1 %cmp893, label %for.body10.lr.ph, label %for.end18, !dbg !338

for.body10.lr.ph:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !130), !dbg !340
  %8 = load i32** %colind, align 8, !dbg !340, !tbaa !199
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !127), !dbg !338
  %arrayidx2.promoted = load double* %arrayidx2, align 8, !dbg !340, !tbaa !246
  br label %for.body10, !dbg !338

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %indvars.iv101 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next102, %for.body10 ]
  %9 = phi double [ %arrayidx2.promoted, %for.body10.lr.ph ], [ %add15, %for.body10 ], !dbg !340
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !130), !dbg !340
  %arrayidx12 = getelementptr inbounds i32* %8, i64 %indvars.iv101, !dbg !340
  %10 = load i32* %arrayidx12, align 4, !dbg !340, !tbaa !206
  %conv13 = sitofp i32 %10 to double, !dbg !340
  %add15 = fadd double %9, %conv13, !dbg !340
  %indvars.iv.next102 = add i64 %indvars.iv101, 1, !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !127), !dbg !338
  %11 = trunc i64 %indvars.iv.next102 to i32, !dbg !338
  %cmp8 = icmp slt i32 %11, %7, !dbg !338
  br i1 %cmp8, label %for.body10, label %for.cond7.for.end18_crit_edge, !dbg !338

for.cond7.for.end18_crit_edge:                    ; preds = %for.body10
  store double %add15, double* %arrayidx2, align 8, !dbg !340, !tbaa !246
  br label %for.end18, !dbg !338

for.end18:                                        ; preds = %for.cond7.for.end18_crit_edge, %for.end
  %call19 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !342
  call void @llvm.dbg.value(metadata !{double* %call19}, i64 0, metadata !125), !dbg !342
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !129), !dbg !343
  %12 = load i32* %nrow, align 4, !dbg !343, !tbaa !206
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !127), !dbg !343
  %13 = load i32* %ncol, align 4, !dbg !343, !tbaa !206
  %mul = mul i32 %13, %12, !dbg !343
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !128), !dbg !343
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !344
  %14 = load i32* %type, align 4, !dbg !344, !tbaa !206
  switch i32 %14, label %if.end57 [
    i32 1, label %for.cond23.preheader
    i32 2, label %for.cond39.preheader
  ], !dbg !344

for.cond39.preheader:                             ; preds = %for.end18
  %cmp4091 = icmp sgt i32 %mul, 0, !dbg !345
  br i1 %cmp4091, label %for.body42, label %if.end57, !dbg !345

for.cond23.preheader:                             ; preds = %for.end18
  %cmp2488 = icmp sgt i32 %mul, 0, !dbg !348
  br i1 %cmp2488, label %for.body26.lr.ph, label %if.end57, !dbg !348

for.body26.lr.ph:                                 ; preds = %for.cond23.preheader
  %.pre = load double* %arrayidx, align 8, !dbg !351, !tbaa !246
  br label %for.body26, !dbg !348

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %15 = phi double [ %.pre, %for.body26.lr.ph ], [ %add31, %for.body26 ], !dbg !351
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.body26 ]
  %arrayidx28 = getelementptr inbounds double* %call19, i64 %indvars.iv, !dbg !351
  %16 = load double* %arrayidx28, align 8, !dbg !351, !tbaa !246
  %call29 = call double @fabs(double %16) #10, !dbg !351
  %add31 = fadd double %call29, %15, !dbg !351
  store double %add31, double* %arrayidx, align 8, !dbg !351, !tbaa !246
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !348
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !348
  %exitcond = icmp eq i32 %lftr.wideiv, %mul, !dbg !348
  br i1 %exitcond, label %if.end57, label %for.body26, !dbg !348

for.body42:                                       ; preds = %for.cond39.preheader, %for.body42
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.body42 ], [ 0, %for.cond39.preheader ]
  %17 = trunc i64 %indvars.iv97 to i32, !dbg !353
  %mul43 = shl nsw i32 %17, 1, !dbg !353
  %idxprom44 = sext i32 %mul43 to i64, !dbg !353
  %arrayidx45 = getelementptr inbounds double* %call19, i64 %idxprom44, !dbg !353
  %18 = load double* %arrayidx45, align 8, !dbg !353, !tbaa !246
  %add4787 = or i32 %mul43, 1, !dbg !353
  %idxprom48 = sext i32 %add4787 to i64, !dbg !353
  %arrayidx49 = getelementptr inbounds double* %call19, i64 %idxprom48, !dbg !353
  %19 = load double* %arrayidx49, align 8, !dbg !353, !tbaa !246
  %call50 = call double @Zabs(double %18, double %19) #7, !dbg !353
  %20 = load double* %arrayidx, align 8, !dbg !353, !tbaa !246
  %add52 = fadd double %call50, %20, !dbg !353
  store double %add52, double* %arrayidx, align 8, !dbg !353, !tbaa !246
  %indvars.iv.next98 = add i64 %indvars.iv97, 1, !dbg !345
  %lftr.wideiv99 = trunc i64 %indvars.iv.next98 to i32, !dbg !345
  %exitcond100 = icmp eq i32 %lftr.wideiv99, %mul, !dbg !345
  br i1 %exitcond100, label %if.end57, label %for.body42, !dbg !345

if.end57:                                         ; preds = %for.cond39.preheader, %for.body42, %for.cond23.preheader, %for.body26, %for.end18
  ret void, !dbg !355
}

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #4

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: optsize
declare double @Zabs(double, double) #4

; Function Attrs: nounwind optsize uwtable
define double @DenseMtx_maxabs(%struct._DenseMtx* %mtx) #0 {
entry:
  %loc = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !136), !dbg !356
  call void @llvm.dbg.declare(metadata !{i32* %loc}, metadata !138), !dbg !357
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !358
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !359, !tbaa !199
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* null) #7, !dbg !359
  call void @exit(i32 -1) #8, !dbg !361
  unreachable, !dbg !361

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !362
  %1 = load i32* %type, align 4, !dbg !362, !tbaa !206
  switch i32 %1, label %if.else12 [
    i32 1, label %if.then2
    i32 2, label %if.then6
  ], !dbg !362

if.then2:                                         ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !363
  %2 = load i32* %nrow, align 4, !dbg !363, !tbaa !206
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !363
  %3 = load i32* %ncol, align 4, !dbg !363, !tbaa !206
  %mul = mul nsw i32 %3, %2, !dbg !363
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !363
  %4 = load double** %entries, align 8, !dbg !363, !tbaa !199
  %call3 = call double @DVmaxabs(i32 %mul, double* %4, i32* %loc) #7, !dbg !363
  call void @llvm.dbg.value(metadata !{double %call3}, i64 0, metadata !137), !dbg !363
  br label %if.end16, !dbg !365

if.then6:                                         ; preds = %if.end
  %nrow7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !366
  %5 = load i32* %nrow7, align 4, !dbg !366, !tbaa !206
  %ncol8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !366
  %6 = load i32* %ncol8, align 4, !dbg !366, !tbaa !206
  %mul9 = mul nsw i32 %6, %5, !dbg !366
  %entries10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !366
  %7 = load double** %entries10, align 8, !dbg !366, !tbaa !199
  %call11 = call double @ZVmaxabs(i32 %mul9, double* %7) #7, !dbg !366
  call void @llvm.dbg.value(metadata !{double %call11}, i64 0, metadata !137), !dbg !366
  br label %if.end16

if.else12:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !368, !tbaa !199
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([51 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %1) #7, !dbg !368
  call void @exit(i32 -1) #8, !dbg !370
  unreachable, !dbg !370

if.end16:                                         ; preds = %if.then6, %if.then2
  %maxabs.0 = phi double [ %call3, %if.then2 ], [ %call11, %if.then6 ]
  ret double %maxabs.0, !dbg !371
}

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #4

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_sub(%struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxB}, i64 0, metadata !143), !dbg !372
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtxA}, i64 0, metadata !144), !dbg !373
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !374
  %cmp1 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !374
  %or.cond = or i1 %cmp, %cmp1, !dbg !374
  br i1 %or.cond, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !375, !tbaa !199
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA) #7, !dbg !375
  tail call void @exit(i32 -1) #8, !dbg !377
  unreachable, !dbg !377

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0, !dbg !378
  %1 = load i32* %type, align 4, !dbg !378, !tbaa !206
  %type2 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !378
  %2 = load i32* %type2, align 4, !dbg !378, !tbaa !206
  %cmp3 = icmp eq i32 %1, %2, !dbg !378
  br i1 %cmp3, label %if.end8, label %if.then4, !dbg !378

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !379, !tbaa !199
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %1, i32 %2) #7, !dbg !379
  tail call void @exit(i32 -1) #8, !dbg !381
  unreachable, !dbg !381

if.end8:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !382
  %4 = load i32* %nrow, align 4, !dbg !382, !tbaa !206
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !382
  %5 = load i32* %nrow9, align 4, !dbg !382, !tbaa !206
  %cmp10 = icmp eq i32 %4, %5, !dbg !382
  br i1 %cmp10, label %if.end15, label %if.then11, !dbg !382

if.then11:                                        ; preds = %if.end8
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !383, !tbaa !199
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([72 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %4, i32 %5) #7, !dbg !383
  tail call void @exit(i32 -1) #8, !dbg !385
  unreachable, !dbg !385

if.end15:                                         ; preds = %if.end8
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !386
  %7 = load i32* %ncol, align 4, !dbg !386, !tbaa !206
  %ncol16 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !386
  %8 = load i32* %ncol16, align 4, !dbg !386, !tbaa !206
  %cmp17 = icmp eq i32 %7, %8, !dbg !386
  br i1 %cmp17, label %if.end22, label %if.then18, !dbg !386

if.then18:                                        ; preds = %if.end15
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !387, !tbaa !199
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %7, i32 %8) #7, !dbg !387
  tail call void @exit(i32 -1) #8, !dbg !389
  unreachable, !dbg !389

if.end22:                                         ; preds = %if.end15
  %entries = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !390
  %10 = load double** %entries, align 8, !dbg !390, !tbaa !199
  %cmp23 = icmp eq double* %10, null, !dbg !390
  %entries29.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9
  %.pre = load double** %entries29.phi.trans.insert, align 8, !dbg !391, !tbaa !199
  br i1 %cmp23, label %if.then27, label %lor.lhs.false24, !dbg !390

lor.lhs.false24:                                  ; preds = %if.end22
  %cmp26 = icmp eq double* %.pre, null, !dbg !390
  br i1 %cmp26, label %if.then27, label %if.end31, !dbg !390

if.then27:                                        ; preds = %if.end22, %lor.lhs.false24
  %11 = phi double* [ null, %lor.lhs.false24 ], [ %.pre, %if.end22 ]
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !391, !tbaa !199
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([78 x i8]* @.str12, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, double* %10, double* %11) #7, !dbg !391
  tail call void @exit(i32 -1) #8, !dbg !393
  unreachable, !dbg !393

if.end31:                                         ; preds = %lor.lhs.false24
  switch i32 %1, label %if.else47 [
    i32 1, label %if.then34
    i32 2, label %if.then41
  ], !dbg !394

if.then34:                                        ; preds = %if.end31
  %mul = mul nsw i32 %7, %4, !dbg !395
  tail call void @DVsub(i32 %mul, double* %10, double* %.pre) #7, !dbg !395
  br label %if.end52, !dbg !397

if.then41:                                        ; preds = %if.end31
  %mul44 = mul nsw i32 %7, %4, !dbg !398
  tail call void @ZVsub(i32 %mul44, double* %10, double* %.pre) #7, !dbg !398
  br label %if.end52

if.else47:                                        ; preds = %if.end31
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !400, !tbaa !199
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %1, i32 %1) #7, !dbg !400
  tail call void @exit(i32 -1) #8, !dbg !402
  unreachable, !dbg !402

if.end52:                                         ; preds = %if.then41, %if.then34
  ret void, !dbg !403
}

; Function Attrs: optsize
declare void @DVsub(i32, double*, double*) #4

; Function Attrs: optsize
declare void @ZVsub(i32, double*, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyRowIntoVector(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
entry:
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !149), !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !150), !dbg !405
  call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !151), !dbg !406
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !158), !dbg !407
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !159), !dbg !407
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !160), !dbg !408
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !161), !dbg !408
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !409
  %cmp1 = icmp slt i32 %irow, 0, !dbg !409
  %or.cond = or i1 %cmp, %cmp1, !dbg !409
  %cmp3 = icmp eq double* %vec, null, !dbg !409
  %or.cond76 = or i1 %or.cond, %cmp3, !dbg !409
  br i1 %or.cond76, label %if.then, label %if.end, !dbg !409

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !410, !tbaa !199
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %0), !dbg !410
  call void @exit(i32 -1) #8, !dbg !412
  unreachable, !dbg !412

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !158), !dbg !414
  %2 = load i32* %nrow, align 4, !dbg !414, !tbaa !206
  %cmp4 = icmp sgt i32 %2, %irow, !dbg !414
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !414

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !415, !tbaa !199
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([69 x i8]* @.str14, i64 0, i64 0), i32 %irow, i32 %2) #7, !dbg !415
  call void @exit(i32 -1) #8, !dbg !417
  unreachable, !dbg !417

if.end7:                                          ; preds = %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !418
  %call8 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #7, !dbg !419
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !153), !dbg !419
  %call9 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #7, !dbg !420
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !154), !dbg !420
  %call10 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !421
  call void @llvm.dbg.value(metadata !{double* %call10}, i64 0, metadata !152), !dbg !421
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !422
  %4 = load i32* %type, align 4, !dbg !422, !tbaa !206
  switch i32 %4, label %if.end44 [
    i32 1, label %if.then12
    i32 2, label %if.then19
  ], !dbg !422

if.then12:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !423
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !155), !dbg !423
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !157), !dbg !423
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !159), !dbg !423
  %5 = load i32* %ncol, align 4, !dbg !423, !tbaa !206
  %cmp1377 = icmp sgt i32 %5, 0, !dbg !423
  br i1 %cmp1377, label %for.body.lr.ph, label %if.end44, !dbg !423

for.body.lr.ph:                                   ; preds = %if.then12
  %mul = mul nsw i32 %call8, %irow, !dbg !423
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !159), !dbg !423
  %6 = sext i32 %mul to i64
  %7 = sext i32 %call9 to i64
  br label %for.body, !dbg !423

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv86 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next87, %for.body ], !dbg !423
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %jj.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.body ]
  %arrayidx = getelementptr inbounds double* %call10, i64 %indvars.iv, !dbg !426
  %8 = load double* %arrayidx, align 8, !dbg !426, !tbaa !246
  %arrayidx15 = getelementptr inbounds double* %vec, i64 %indvars.iv86, !dbg !426
  store double %8, double* %arrayidx15, align 8, !dbg !426, !tbaa !246
  %inc16 = add nsw i32 %jj.079, 1, !dbg !428
  call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !155), !dbg !428
  %indvars.iv.next87 = add i64 %indvars.iv86, 1, !dbg !423
  call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !156), !dbg !428
  %indvars.iv.next = add i64 %indvars.iv, %7, !dbg !423
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !159), !dbg !423
  %cmp13 = icmp slt i32 %inc16, %5, !dbg !423
  br i1 %cmp13, label %for.body, label %if.end44, !dbg !423

if.then19:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !429
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !155), !dbg !429
  call void @llvm.dbg.value(metadata !{i32 %mul20}, i64 0, metadata !157), !dbg !429
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !159), !dbg !429
  %9 = load i32* %ncol, align 4, !dbg !429, !tbaa !206
  %cmp2282 = icmp sgt i32 %9, 0, !dbg !429
  br i1 %cmp2282, label %for.body23.lr.ph, label %if.end44, !dbg !429

for.body23.lr.ph:                                 ; preds = %if.then19
  %mul20 = mul nsw i32 %call8, %irow, !dbg !429
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !159), !dbg !429
  %10 = sext i32 %mul20 to i64
  %11 = sext i32 %call9 to i64
  br label %for.body23, !dbg !429

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv90 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next91, %for.body23 ], !dbg !429
  %indvars.iv88 = phi i64 [ %10, %for.body23.lr.ph ], [ %indvars.iv.next89, %for.body23 ]
  %jj.184 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc40, %for.body23 ]
  %12 = trunc i64 %indvars.iv88 to i32, !dbg !432
  %mul24 = shl nsw i32 %12, 1, !dbg !432
  %idxprom25 = sext i32 %mul24 to i64, !dbg !432
  %arrayidx26 = getelementptr inbounds double* %call10, i64 %idxprom25, !dbg !432
  %13 = load double* %arrayidx26, align 8, !dbg !432, !tbaa !246
  %14 = trunc i64 %indvars.iv90 to i32, !dbg !432
  %mul27 = shl nsw i32 %14, 1, !dbg !432
  %idxprom28 = sext i32 %mul27 to i64, !dbg !432
  %arrayidx29 = getelementptr inbounds double* %vec, i64 %idxprom28, !dbg !432
  store double %13, double* %arrayidx29, align 8, !dbg !432, !tbaa !246
  %add3174 = or i32 %mul24, 1, !dbg !434
  %idxprom32 = sext i32 %add3174 to i64, !dbg !434
  %arrayidx33 = getelementptr inbounds double* %call10, i64 %idxprom32, !dbg !434
  %15 = load double* %arrayidx33, align 8, !dbg !434, !tbaa !246
  %add3575 = or i32 %mul27, 1, !dbg !434
  %idxprom36 = sext i32 %add3575 to i64, !dbg !434
  %arrayidx37 = getelementptr inbounds double* %vec, i64 %idxprom36, !dbg !434
  store double %15, double* %arrayidx37, align 8, !dbg !434, !tbaa !246
  %inc40 = add nsw i32 %jj.184, 1, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %inc40}, i64 0, metadata !155), !dbg !435
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !429
  call void @llvm.dbg.value(metadata !{i32 %inc40}, i64 0, metadata !156), !dbg !435
  %indvars.iv.next89 = add i64 %indvars.iv88, %11, !dbg !429
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !159), !dbg !429
  %cmp22 = icmp slt i32 %inc40, %9, !dbg !429
  br i1 %cmp22, label %for.body23, label %if.end44, !dbg !429

if.end44:                                         ; preds = %if.then19, %for.body23, %if.then12, %for.body, %if.end7
  ret void, !dbg !436
}

; Function Attrs: optsize
declare i32 @DenseMtx_rowIncrement(%struct._DenseMtx*) #4

; Function Attrs: optsize
declare i32 @DenseMtx_columnIncrement(%struct._DenseMtx*) #4

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyVectorIntoRow(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
entry:
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !164), !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !165), !dbg !438
  call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !166), !dbg !439
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !173), !dbg !440
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !174), !dbg !440
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !175), !dbg !441
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !176), !dbg !441
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !442
  %cmp1 = icmp slt i32 %irow, 0, !dbg !442
  %or.cond = or i1 %cmp, %cmp1, !dbg !442
  %cmp3 = icmp eq double* %vec, null, !dbg !442
  %or.cond79 = or i1 %or.cond, %cmp3, !dbg !442
  br i1 %or.cond79, label %if.then, label %if.end, !dbg !442

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !443, !tbaa !199
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %irow, double* %vec) #7, !dbg !443
  call void @exit(i32 -1) #8, !dbg !445
  unreachable, !dbg !445

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !446
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !173), !dbg !447
  %1 = load i32* %nrow, align 4, !dbg !447, !tbaa !206
  %cmp4 = icmp sgt i32 %1, %irow, !dbg !447
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !447

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !448, !tbaa !199
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8]* @.str16, i64 0, i64 0), i32 %irow, i32 %1) #7, !dbg !448
  call void @exit(i32 -1) #8, !dbg !450
  unreachable, !dbg !450

if.end7:                                          ; preds = %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !451
  %call8 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #7, !dbg !452
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !168), !dbg !452
  %call9 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #7, !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !169), !dbg !453
  %call10 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !454
  call void @llvm.dbg.value(metadata !{double* %call10}, i64 0, metadata !167), !dbg !454
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !455
  %3 = load i32* %type, align 4, !dbg !455, !tbaa !206
  switch i32 %3, label %if.end44 [
    i32 1, label %if.then12
    i32 2, label %if.then19
  ], !dbg !455

if.then12:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !171), !dbg !456
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !170), !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !172), !dbg !456
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !174), !dbg !456
  %4 = load i32* %ncol, align 4, !dbg !456, !tbaa !206
  %cmp1380 = icmp sgt i32 %4, 0, !dbg !456
  br i1 %cmp1380, label %for.body.lr.ph, label %if.end44, !dbg !456

for.body.lr.ph:                                   ; preds = %if.then12
  %mul = mul nsw i32 %call8, %irow, !dbg !456
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !174), !dbg !456
  %5 = sext i32 %mul to i64
  %6 = sext i32 %call9 to i64
  br label %for.body, !dbg !456

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv89 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next90, %for.body ], !dbg !456
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %jj.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.body ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv89, !dbg !459
  %7 = load double* %arrayidx, align 8, !dbg !459, !tbaa !246
  %arrayidx15 = getelementptr inbounds double* %call10, i64 %indvars.iv, !dbg !459
  store double %7, double* %arrayidx15, align 8, !dbg !459, !tbaa !246
  %inc16 = add nsw i32 %jj.082, 1, !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !170), !dbg !461
  %indvars.iv.next90 = add i64 %indvars.iv89, 1, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !171), !dbg !461
  %indvars.iv.next = add i64 %indvars.iv, %6, !dbg !456
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !174), !dbg !456
  %cmp13 = icmp slt i32 %inc16, %4, !dbg !456
  br i1 %cmp13, label %for.body, label %if.end44, !dbg !456

if.then19:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !171), !dbg !462
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !170), !dbg !462
  call void @llvm.dbg.value(metadata !{i32 %mul20}, i64 0, metadata !172), !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !174), !dbg !462
  %8 = load i32* %ncol, align 4, !dbg !462, !tbaa !206
  %cmp2285 = icmp sgt i32 %8, 0, !dbg !462
  br i1 %cmp2285, label %for.body23.lr.ph, label %if.end44, !dbg !462

for.body23.lr.ph:                                 ; preds = %if.then19
  %mul20 = mul nsw i32 %call8, %irow, !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !174), !dbg !462
  %9 = sext i32 %mul20 to i64
  %10 = sext i32 %call9 to i64
  br label %for.body23, !dbg !462

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv93 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next94, %for.body23 ], !dbg !462
  %indvars.iv91 = phi i64 [ %9, %for.body23.lr.ph ], [ %indvars.iv.next92, %for.body23 ]
  %jj.187 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc40, %for.body23 ]
  %11 = trunc i64 %indvars.iv93 to i32, !dbg !465
  %mul24 = shl nsw i32 %11, 1, !dbg !465
  %idxprom25 = sext i32 %mul24 to i64, !dbg !465
  %arrayidx26 = getelementptr inbounds double* %vec, i64 %idxprom25, !dbg !465
  %12 = load double* %arrayidx26, align 8, !dbg !465, !tbaa !246
  %13 = trunc i64 %indvars.iv91 to i32, !dbg !465
  %mul27 = shl nsw i32 %13, 1, !dbg !465
  %idxprom28 = sext i32 %mul27 to i64, !dbg !465
  %arrayidx29 = getelementptr inbounds double* %call10, i64 %idxprom28, !dbg !465
  store double %12, double* %arrayidx29, align 8, !dbg !465, !tbaa !246
  %add3177 = or i32 %mul24, 1, !dbg !467
  %idxprom32 = sext i32 %add3177 to i64, !dbg !467
  %arrayidx33 = getelementptr inbounds double* %vec, i64 %idxprom32, !dbg !467
  %14 = load double* %arrayidx33, align 8, !dbg !467, !tbaa !246
  %add3578 = or i32 %mul27, 1, !dbg !467
  %idxprom36 = sext i32 %add3578 to i64, !dbg !467
  %arrayidx37 = getelementptr inbounds double* %call10, i64 %idxprom36, !dbg !467
  store double %14, double* %arrayidx37, align 8, !dbg !467, !tbaa !246
  %inc40 = add nsw i32 %jj.187, 1, !dbg !468
  call void @llvm.dbg.value(metadata !{i32 %inc40}, i64 0, metadata !170), !dbg !468
  %indvars.iv.next94 = add i64 %indvars.iv93, 1, !dbg !462
  call void @llvm.dbg.value(metadata !{i32 %inc40}, i64 0, metadata !171), !dbg !468
  %indvars.iv.next92 = add i64 %indvars.iv91, %10, !dbg !462
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !174), !dbg !462
  %cmp22 = icmp slt i32 %inc40, %8, !dbg !462
  br i1 %cmp22, label %for.body23, label %if.end44, !dbg !462

if.end44:                                         ; preds = %if.then19, %for.body23, %if.then12, %for.body, %if.end7
  ret void, !dbg !469
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_addVectorIntoRow(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
entry:
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !179), !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !180), !dbg !471
  call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !181), !dbg !472
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !188), !dbg !473
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !189), !dbg !473
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !190), !dbg !474
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !191), !dbg !474
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !475
  %cmp1 = icmp slt i32 %irow, 0, !dbg !475
  %or.cond = or i1 %cmp, %cmp1, !dbg !475
  %cmp3 = icmp eq double* %vec, null, !dbg !475
  %or.cond82 = or i1 %or.cond, %cmp3, !dbg !475
  br i1 %or.cond82, label %if.then, label %if.end, !dbg !475

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !476, !tbaa !199
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([82 x i8]* @.str17, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %irow, double* %vec) #7, !dbg !476
  call void @exit(i32 -1) #8, !dbg !478
  unreachable, !dbg !478

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !479
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !188), !dbg !480
  %1 = load i32* %nrow, align 4, !dbg !480, !tbaa !206
  %cmp4 = icmp sgt i32 %1, %irow, !dbg !480
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !480

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !481, !tbaa !199
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([68 x i8]* @.str18, i64 0, i64 0), i32 %irow, i32 %1) #7, !dbg !481
  call void @exit(i32 -1) #8, !dbg !483
  unreachable, !dbg !483

if.end7:                                          ; preds = %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !484
  %call8 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #7, !dbg !485
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !183), !dbg !485
  %call9 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #7, !dbg !486
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !184), !dbg !486
  %call10 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !487
  call void @llvm.dbg.value(metadata !{double* %call10}, i64 0, metadata !182), !dbg !487
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !488
  %3 = load i32* %type, align 4, !dbg !488, !tbaa !206
  switch i32 %3, label %if.end47 [
    i32 1, label %if.then12
    i32 2, label %if.then20
  ], !dbg !488

if.then12:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !186), !dbg !489
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !185), !dbg !489
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !187), !dbg !489
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !189), !dbg !489
  %4 = load i32* %ncol, align 4, !dbg !489, !tbaa !206
  %cmp1383 = icmp sgt i32 %4, 0, !dbg !489
  br i1 %cmp1383, label %for.body.lr.ph, label %if.end47, !dbg !489

for.body.lr.ph:                                   ; preds = %if.then12
  %mul = mul nsw i32 %call8, %irow, !dbg !489
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !189), !dbg !489
  %5 = sext i32 %mul to i64
  %6 = sext i32 %call9 to i64
  br label %for.body, !dbg !489

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %for.body ], !dbg !489
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %jj.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.body ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv92, !dbg !492
  %7 = load double* %arrayidx, align 8, !dbg !492, !tbaa !246
  %arrayidx15 = getelementptr inbounds double* %call10, i64 %indvars.iv, !dbg !492
  %8 = load double* %arrayidx15, align 8, !dbg !492, !tbaa !246
  %add = fadd double %7, %8, !dbg !492
  store double %add, double* %arrayidx15, align 8, !dbg !492, !tbaa !246
  %inc16 = add nsw i32 %jj.085, 1, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !185), !dbg !494
  %indvars.iv.next93 = add i64 %indvars.iv92, 1, !dbg !489
  call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !186), !dbg !494
  %indvars.iv.next = add i64 %indvars.iv, %6, !dbg !489
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !189), !dbg !489
  %cmp13 = icmp slt i32 %inc16, %4, !dbg !489
  br i1 %cmp13, label %for.body, label %if.end47, !dbg !489

if.then20:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !186), !dbg !495
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !185), !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %mul21}, i64 0, metadata !187), !dbg !495
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !189), !dbg !495
  %9 = load i32* %ncol, align 4, !dbg !495, !tbaa !206
  %cmp2388 = icmp sgt i32 %9, 0, !dbg !495
  br i1 %cmp2388, label %for.body24.lr.ph, label %if.end47, !dbg !495

for.body24.lr.ph:                                 ; preds = %if.then20
  %mul21 = mul nsw i32 %call8, %irow, !dbg !495
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !189), !dbg !495
  %10 = sext i32 %mul21 to i64
  %11 = sext i32 %call9 to i64
  br label %for.body24, !dbg !495

for.body24:                                       ; preds = %for.body24.lr.ph, %for.body24
  %indvars.iv96 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next97, %for.body24 ], !dbg !495
  %indvars.iv94 = phi i64 [ %10, %for.body24.lr.ph ], [ %indvars.iv.next95, %for.body24 ]
  %jj.190 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc43, %for.body24 ]
  %12 = trunc i64 %indvars.iv96 to i32, !dbg !498
  %mul25 = shl nsw i32 %12, 1, !dbg !498
  %idxprom26 = sext i32 %mul25 to i64, !dbg !498
  %arrayidx27 = getelementptr inbounds double* %vec, i64 %idxprom26, !dbg !498
  %13 = load double* %arrayidx27, align 8, !dbg !498, !tbaa !246
  %14 = trunc i64 %indvars.iv94 to i32, !dbg !498
  %mul28 = shl nsw i32 %14, 1, !dbg !498
  %idxprom29 = sext i32 %mul28 to i64, !dbg !498
  %arrayidx30 = getelementptr inbounds double* %call10, i64 %idxprom29, !dbg !498
  %15 = load double* %arrayidx30, align 8, !dbg !498, !tbaa !246
  %add31 = fadd double %13, %15, !dbg !498
  store double %add31, double* %arrayidx30, align 8, !dbg !498, !tbaa !246
  %add3380 = or i32 %mul25, 1, !dbg !500
  %idxprom34 = sext i32 %add3380 to i64, !dbg !500
  %arrayidx35 = getelementptr inbounds double* %vec, i64 %idxprom34, !dbg !500
  %16 = load double* %arrayidx35, align 8, !dbg !500, !tbaa !246
  %add3781 = or i32 %mul28, 1, !dbg !500
  %idxprom38 = sext i32 %add3781 to i64, !dbg !500
  %arrayidx39 = getelementptr inbounds double* %call10, i64 %idxprom38, !dbg !500
  %17 = load double* %arrayidx39, align 8, !dbg !500, !tbaa !246
  %add40 = fadd double %16, %17, !dbg !500
  store double %add40, double* %arrayidx39, align 8, !dbg !500, !tbaa !246
  %inc43 = add nsw i32 %jj.190, 1, !dbg !501
  call void @llvm.dbg.value(metadata !{i32 %inc43}, i64 0, metadata !185), !dbg !501
  %indvars.iv.next97 = add i64 %indvars.iv96, 1, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %inc43}, i64 0, metadata !186), !dbg !501
  %indvars.iv.next95 = add i64 %indvars.iv94, %11, !dbg !495
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !189), !dbg !495
  %cmp23 = icmp slt i32 %inc43, %9, !dbg !495
  br i1 %cmp23, label %for.body24, label %if.end47, !dbg !495

if.end47:                                         ; preds = %if.then20, %for.body24, %if.then12, %for.body, %if.end7
  ret void, !dbg !502
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !60, metadata !76, metadata !82, metadata !96, metadata !99, metadata !119, metadata !132, metadata !139, metadata !145, metadata !162, metadata !177}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_sort", metadata !"DenseMtx_sort", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*)* @DenseMtx_sort, null, null, metadata !39, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [DenseMtx_sort]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_DenseMtx", i32 29, i64 704, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DenseMtx] [line 29, size 704, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !27, metadata !36}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 30, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 31, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 32, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 33, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 34, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 34, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc1", i32 35, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 35, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc2", i32 36, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 36, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [rowind] [line 37, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [colind] [line 38, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [entries] [line 39, size 64, align 64, offset 384] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!26 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 40, i64 192, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [wrkDV] [line 40, size 192, align 64, offset 448] [from DV]
!28 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [next] [line 41, size 64, align 64, offset 640] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!38 = metadata !{i32 786454, metadata !11, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!39 = metadata !{metadata !40, metadata !41, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!40 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 18]
!41 = metadata !{i32 786688, metadata !4, metadata !"a2", metadata !5, i32 20, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 20]
!42 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!43 = metadata !{i32 786451, metadata !44, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!44 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!45 = metadata !{metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!46 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!47 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!48 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!49 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!50 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!51 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!52 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!53 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 21]
!54 = metadata !{i32 786688, metadata !4, metadata !"ncol", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 21]
!55 = metadata !{i32 786688, metadata !4, metadata !"nrow", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 21]
!56 = metadata !{i32 786688, metadata !4, metadata !"sortColumns", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sortColumns] [line 21]
!57 = metadata !{i32 786688, metadata !4, metadata !"sortRows", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sortRows] [line 21]
!58 = metadata !{i32 786688, metadata !4, metadata !"colind", metadata !5, i32 22, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 22]
!59 = metadata !{i32 786688, metadata !4, metadata !"rowind", metadata !5, i32 22, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 22]
!60 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_copyRow", metadata !"DenseMtx_copyRow", metadata !"", i32 73, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, %struct._DenseMtx*, i32)* @DenseMtx_copyRow, null, null, metadata !63, i32 78} ; [ DW_TAG_subprogram ] [line 73] [def] [scope 78] [DenseMtx_copyRow]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{null, metadata !8, metadata !14, metadata !8, metadata !14}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!64 = metadata !{i32 786689, metadata !60, metadata !"mtxB", metadata !5, i32 16777290, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 74]
!65 = metadata !{i32 786689, metadata !60, metadata !"irowB", metadata !5, i32 33554507, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowB] [line 75]
!66 = metadata !{i32 786689, metadata !60, metadata !"mtxA", metadata !5, i32 50331724, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 76]
!67 = metadata !{i32 786689, metadata !60, metadata !"irowA", metadata !5, i32 67108941, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowA] [line 77]
!68 = metadata !{i32 786688, metadata !60, metadata !"rowA", metadata !5, i32 79, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowA] [line 79]
!69 = metadata !{i32 786688, metadata !60, metadata !"rowB", metadata !5, i32 79, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowB] [line 79]
!70 = metadata !{i32 786688, metadata !60, metadata !"ii", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 80]
!71 = metadata !{i32 786688, metadata !60, metadata !"inc2A", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2A] [line 80]
!72 = metadata !{i32 786688, metadata !60, metadata !"inc2B", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2B] [line 80]
!73 = metadata !{i32 786688, metadata !60, metadata !"iA", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iA] [line 80]
!74 = metadata !{i32 786688, metadata !60, metadata !"iB", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iB] [line 80]
!75 = metadata !{i32 786688, metadata !60, metadata !"ncol", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 80]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_copyRowAndIndex", metadata !"DenseMtx_copyRowAndIndex", metadata !"", i32 124, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, %struct._DenseMtx*, i32)* @DenseMtx_copyRowAndIndex, null, null, metadata !77, i32 129} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 129] [DenseMtx_copyRowAndIndex]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81}
!78 = metadata !{i32 786689, metadata !76, metadata !"mtxB", metadata !5, i32 16777341, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 125]
!79 = metadata !{i32 786689, metadata !76, metadata !"irowB", metadata !5, i32 33554558, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowB] [line 126]
!80 = metadata !{i32 786689, metadata !76, metadata !"mtxA", metadata !5, i32 50331775, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 127]
!81 = metadata !{i32 786689, metadata !76, metadata !"irowA", metadata !5, i32 67108992, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowA] [line 128]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_addRow", metadata !"DenseMtx_addRow", metadata !"", i32 156, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, %struct._DenseMtx*, i32)* @DenseMtx_addRow, null, null, metadata !83, i32 161} ; [ DW_TAG_subprogram ] [line 156] [def] [scope 161] [DenseMtx_addRow]
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!84 = metadata !{i32 786689, metadata !82, metadata !"mtxB", metadata !5, i32 16777373, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 157]
!85 = metadata !{i32 786689, metadata !82, metadata !"irowB", metadata !5, i32 33554590, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowB] [line 158]
!86 = metadata !{i32 786689, metadata !82, metadata !"mtxA", metadata !5, i32 50331807, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 159]
!87 = metadata !{i32 786689, metadata !82, metadata !"irowA", metadata !5, i32 67109024, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowA] [line 160]
!88 = metadata !{i32 786688, metadata !82, metadata !"rowA", metadata !5, i32 162, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowA] [line 162]
!89 = metadata !{i32 786688, metadata !82, metadata !"rowB", metadata !5, i32 162, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowB] [line 162]
!90 = metadata !{i32 786688, metadata !82, metadata !"ii", metadata !5, i32 163, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 163]
!91 = metadata !{i32 786688, metadata !82, metadata !"inc2A", metadata !5, i32 163, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2A] [line 163]
!92 = metadata !{i32 786688, metadata !82, metadata !"inc2B", metadata !5, i32 163, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2B] [line 163]
!93 = metadata !{i32 786688, metadata !82, metadata !"iA", metadata !5, i32 163, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iA] [line 163]
!94 = metadata !{i32 786688, metadata !82, metadata !"iB", metadata !5, i32 163, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iB] [line 163]
!95 = metadata !{i32 786688, metadata !82, metadata !"ncol", metadata !5, i32 163, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 163]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_zero", metadata !"DenseMtx_zero", metadata !"", i32 203, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*)* @DenseMtx_zero, null, null, metadata !97, i32 205} ; [ DW_TAG_subprogram ] [line 203] [def] [scope 205] [DenseMtx_zero]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786689, metadata !96, metadata !"mtx", metadata !5, i32 16777420, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 204]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_fillRandomEntries", metadata !"DenseMtx_fillRandomEntries", metadata !"", i32 232, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, %struct._Drand*)* @DenseMtx_fillRandomEntries, null, null, metadata !116, i32 235} ; [ DW_TAG_subprogram ] [line 232] [def] [scope 235] [DenseMtx_fillRandomEntries]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{null, metadata !8, metadata !102}
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Drand]
!103 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!104 = metadata !{i32 786451, metadata !105, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!105 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../Drand/Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!107 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!108 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!109 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!110 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!111 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!112 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!113 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!114 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!115 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!116 = metadata !{metadata !117, metadata !118}
!117 = metadata !{i32 786689, metadata !99, metadata !"mtx", metadata !5, i32 16777449, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 233]
!118 = metadata !{i32 786689, metadata !99, metadata !"drand", metadata !5, i32 33554666, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 234]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_checksums", metadata !"DenseMtx_checksums", metadata !"", i32 265, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, double*)* @DenseMtx_checksums, null, null, metadata !122, i32 268} ; [ DW_TAG_subprogram ] [line 265] [def] [scope 268] [DenseMtx_checksums]
!120 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!121 = metadata !{null, metadata !8, metadata !25}
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!123 = metadata !{i32 786689, metadata !119, metadata !"mtx", metadata !5, i32 16777482, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 266]
!124 = metadata !{i32 786689, metadata !119, metadata !"sums", metadata !5, i32 33554699, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 267]
!125 = metadata !{i32 786688, metadata !119, metadata !"entries", metadata !5, i32 269, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 269]
!126 = metadata !{i32 786688, metadata !119, metadata !"ii", metadata !5, i32 270, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 270]
!127 = metadata !{i32 786688, metadata !119, metadata !"ncol", metadata !5, i32 270, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 270]
!128 = metadata !{i32 786688, metadata !119, metadata !"nent", metadata !5, i32 270, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 270]
!129 = metadata !{i32 786688, metadata !119, metadata !"nrow", metadata !5, i32 270, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 270]
!130 = metadata !{i32 786688, metadata !119, metadata !"colind", metadata !5, i32 271, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 271]
!131 = metadata !{i32 786688, metadata !119, metadata !"rowind", metadata !5, i32 271, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 271]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_maxabs", metadata !"DenseMtx_maxabs", metadata !"", i32 313, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._DenseMtx*)* @DenseMtx_maxabs, null, null, metadata !135, i32 315} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 315] [DenseMtx_maxabs]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{metadata !26, metadata !8}
!135 = metadata !{metadata !136, metadata !137, metadata !138}
!136 = metadata !{i32 786689, metadata !132, metadata !"mtx", metadata !5, i32 16777530, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 314]
!137 = metadata !{i32 786688, metadata !132, metadata !"maxabs", metadata !5, i32 316, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxabs] [line 316]
!138 = metadata !{i32 786688, metadata !132, metadata !"loc", metadata !5, i32 317, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 317]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_sub", metadata !"DenseMtx_sub", metadata !"", i32 348, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, %struct._DenseMtx*)* @DenseMtx_sub, null, null, metadata !142, i32 351} ; [ DW_TAG_subprogram ] [line 348] [def] [scope 351] [DenseMtx_sub]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{null, metadata !8, metadata !8}
!142 = metadata !{metadata !143, metadata !144}
!143 = metadata !{i32 786689, metadata !139, metadata !"mtxB", metadata !5, i32 16777565, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 349]
!144 = metadata !{i32 786689, metadata !139, metadata !"mtxA", metadata !5, i32 33554782, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 350]
!145 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_copyRowIntoVector", metadata !"DenseMtx_copyRowIntoVector", metadata !"", i32 410, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, double*)* @DenseMtx_copyRowIntoVector, null, null, metadata !148, i32 414} ; [ DW_TAG_subprogram ] [line 410] [def] [scope 414] [DenseMtx_copyRowIntoVector]
!146 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{null, metadata !8, metadata !14, metadata !25}
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!149 = metadata !{i32 786689, metadata !145, metadata !"mtx", metadata !5, i32 16777627, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 411]
!150 = metadata !{i32 786689, metadata !145, metadata !"irow", metadata !5, i32 33554844, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 412]
!151 = metadata !{i32 786689, metadata !145, metadata !"vec", metadata !5, i32 50332061, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 413]
!152 = metadata !{i32 786688, metadata !145, metadata !"entries", metadata !5, i32 415, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 415]
!153 = metadata !{i32 786688, metadata !145, metadata !"inc1", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 416]
!154 = metadata !{i32 786688, metadata !145, metadata !"inc2", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 416]
!155 = metadata !{i32 786688, metadata !145, metadata !"jcol", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 416]
!156 = metadata !{i32 786688, metadata !145, metadata !"jj", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 416]
!157 = metadata !{i32 786688, metadata !145, metadata !"kk", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 416]
!158 = metadata !{i32 786688, metadata !145, metadata !"nrow", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 416]
!159 = metadata !{i32 786688, metadata !145, metadata !"ncol", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 416]
!160 = metadata !{i32 786688, metadata !145, metadata !"colind", metadata !5, i32 417, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 417]
!161 = metadata !{i32 786688, metadata !145, metadata !"rowind", metadata !5, i32 417, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 417]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_copyVectorIntoRow", metadata !"DenseMtx_copyVectorIntoRow", metadata !"", i32 468, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, double*)* @DenseMtx_copyVectorIntoRow, null, null, metadata !163, i32 472} ; [ DW_TAG_subprogram ] [line 468] [def] [scope 472] [DenseMtx_copyVectorIntoRow]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176}
!164 = metadata !{i32 786689, metadata !162, metadata !"mtx", metadata !5, i32 16777685, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 469]
!165 = metadata !{i32 786689, metadata !162, metadata !"irow", metadata !5, i32 33554902, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 470]
!166 = metadata !{i32 786689, metadata !162, metadata !"vec", metadata !5, i32 50332119, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 471]
!167 = metadata !{i32 786688, metadata !162, metadata !"entries", metadata !5, i32 473, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 473]
!168 = metadata !{i32 786688, metadata !162, metadata !"inc1", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 474]
!169 = metadata !{i32 786688, metadata !162, metadata !"inc2", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 474]
!170 = metadata !{i32 786688, metadata !162, metadata !"jcol", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 474]
!171 = metadata !{i32 786688, metadata !162, metadata !"jj", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 474]
!172 = metadata !{i32 786688, metadata !162, metadata !"kk", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 474]
!173 = metadata !{i32 786688, metadata !162, metadata !"nrow", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 474]
!174 = metadata !{i32 786688, metadata !162, metadata !"ncol", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 474]
!175 = metadata !{i32 786688, metadata !162, metadata !"colind", metadata !5, i32 475, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 475]
!176 = metadata !{i32 786688, metadata !162, metadata !"rowind", metadata !5, i32 475, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 475]
!177 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_addVectorIntoRow", metadata !"DenseMtx_addVectorIntoRow", metadata !"", i32 527, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, double*)* @DenseMtx_addVectorIntoRow, null, null, metadata !178, i32 531} ; [ DW_TAG_subprogram ] [line 527] [def] [scope 531] [DenseMtx_addVectorIntoRow]
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!179 = metadata !{i32 786689, metadata !177, metadata !"mtx", metadata !5, i32 16777744, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 528]
!180 = metadata !{i32 786689, metadata !177, metadata !"irow", metadata !5, i32 33554961, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 529]
!181 = metadata !{i32 786689, metadata !177, metadata !"vec", metadata !5, i32 50332178, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 530]
!182 = metadata !{i32 786688, metadata !177, metadata !"entries", metadata !5, i32 532, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 532]
!183 = metadata !{i32 786688, metadata !177, metadata !"inc1", metadata !5, i32 533, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 533]
!184 = metadata !{i32 786688, metadata !177, metadata !"inc2", metadata !5, i32 533, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 533]
!185 = metadata !{i32 786688, metadata !177, metadata !"jcol", metadata !5, i32 533, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 533]
!186 = metadata !{i32 786688, metadata !177, metadata !"jj", metadata !5, i32 533, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 533]
!187 = metadata !{i32 786688, metadata !177, metadata !"kk", metadata !5, i32 533, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 533]
!188 = metadata !{i32 786688, metadata !177, metadata !"nrow", metadata !5, i32 533, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 533]
!189 = metadata !{i32 786688, metadata !177, metadata !"ncol", metadata !5, i32 533, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 533]
!190 = metadata !{i32 786688, metadata !177, metadata !"colind", metadata !5, i32 534, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 534]
!191 = metadata !{i32 786688, metadata !177, metadata !"rowind", metadata !5, i32 534, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 534]
!192 = metadata !{i32 18, i32 0, metadata !4, null}
!193 = metadata !{i32 20, i32 0, metadata !4, null}
!194 = metadata !{i32 21, i32 0, metadata !4, null}
!195 = metadata !{i32 22, i32 0, metadata !4, null}
!196 = metadata !{i32 28, i32 0, metadata !4, null}
!197 = metadata !{i32 29, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!199 = metadata !{metadata !"any pointer", metadata !200}
!200 = metadata !{metadata !"omnipotent char", metadata !201}
!201 = metadata !{metadata !"Simple C/C++ TBAA"}
!202 = metadata !{i32 31, i32 0, metadata !198, null}
!203 = metadata !{i32 33, i32 0, metadata !4, null}
!204 = metadata !{i32 34, i32 0, metadata !4, null}
!205 = metadata !{i32 35, i32 0, metadata !4, null}
!206 = metadata !{metadata !"int", metadata !200}
!207 = metadata !{i32 39, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!209 = metadata !{i32 40, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !208, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!211 = metadata !{i32 1}
!212 = metadata !{i32 45, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!214 = metadata !{i32 46, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 45, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!216 = metadata !{i32 51, i32 0, metadata !4, null}
!217 = metadata !{i32 54, i32 0, metadata !4, null}
!218 = metadata !{i32 55, i32 0, metadata !4, null}
!219 = metadata !{i32 56, i32 0, metadata !4, null}
!220 = metadata !{i32 57, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!222 = metadata !{i32 58, i32 0, metadata !221, null} ; [ DW_TAG_imported_module ]
!223 = metadata !{i32 59, i32 0, metadata !4, null}
!224 = metadata !{i32 60, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !4, i32 59, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!226 = metadata !{i32 61, i32 0, metadata !225, null}
!227 = metadata !{i32 62, i32 0, metadata !4, null}
!228 = metadata !{i32 74, i32 0, metadata !60, null}
!229 = metadata !{i32 75, i32 0, metadata !60, null}
!230 = metadata !{i32 76, i32 0, metadata !60, null}
!231 = metadata !{i32 77, i32 0, metadata !60, null}
!232 = metadata !{i32 86, i32 0, metadata !60, null}
!233 = metadata !{i32 89, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !60, i32 88, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!235 = metadata !{i32 91, i32 0, metadata !234, null}
!236 = metadata !{i32 93, i32 0, metadata !60, null}
!237 = metadata !{i32 94, i32 0, metadata !60, null}
!238 = metadata !{i32 98, i32 0, metadata !60, null}
!239 = metadata !{i32 99, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !60, i32 98, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!241 = metadata !{i32 100, i32 0, metadata !240, null}
!242 = metadata !{i32 101, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !240, i32 101, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!244 = metadata !{i32 102, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !243, i32 101, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!246 = metadata !{metadata !"double", metadata !200}
!247 = metadata !{i32 104, i32 0, metadata !60, null}
!248 = metadata !{i32 105, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !60, i32 104, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!250 = metadata !{i32 106, i32 0, metadata !249, null}
!251 = metadata !{i32 107, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !249, i32 107, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!253 = metadata !{i32 108, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !252, i32 107, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!255 = metadata !{i32 109, i32 0, metadata !254, null}
!256 = metadata !{i32 112, i32 0, metadata !60, null}
!257 = metadata !{i32 125, i32 0, metadata !76, null}
!258 = metadata !{i32 126, i32 0, metadata !76, null}
!259 = metadata !{i32 127, i32 0, metadata !76, null}
!260 = metadata !{i32 128, i32 0, metadata !76, null}
!261 = metadata !{i32 135, i32 0, metadata !76, null}
!262 = metadata !{i32 138, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !76, i32 137, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!264 = metadata !{i32 140, i32 0, metadata !263, null}
!265 = metadata !{i32 142, i32 0, metadata !76, null}
!266 = metadata !{i32 143, i32 0, metadata !76, null}
!267 = metadata !{i32 145, i32 0, metadata !76, null}
!268 = metadata !{i32 157, i32 0, metadata !82, null}
!269 = metadata !{i32 158, i32 0, metadata !82, null}
!270 = metadata !{i32 159, i32 0, metadata !82, null}
!271 = metadata !{i32 160, i32 0, metadata !82, null}
!272 = metadata !{i32 169, i32 0, metadata !82, null}
!273 = metadata !{i32 172, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !82, i32 171, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!275 = metadata !{i32 174, i32 0, metadata !274, null}
!276 = metadata !{i32 176, i32 0, metadata !82, null}
!277 = metadata !{i32 177, i32 0, metadata !82, null}
!278 = metadata !{i32 178, i32 0, metadata !82, null}
!279 = metadata !{i32 179, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !82, i32 178, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!281 = metadata !{i32 180, i32 0, metadata !280, null}
!282 = metadata !{i32 181, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !280, i32 181, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!284 = metadata !{i32 182, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !283, i32 181, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!286 = metadata !{i32 184, i32 0, metadata !82, null}
!287 = metadata !{i32 185, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !82, i32 184, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!289 = metadata !{i32 186, i32 0, metadata !288, null}
!290 = metadata !{i32 187, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 187, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!292 = metadata !{i32 188, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 187, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!294 = metadata !{i32 189, i32 0, metadata !293, null}
!295 = metadata !{i32 192, i32 0, metadata !82, null}
!296 = metadata !{i32 204, i32 0, metadata !96, null}
!297 = metadata !{i32 211, i32 0, metadata !96, null}
!298 = metadata !{i32 212, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !96, i32 211, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!300 = metadata !{i32 214, i32 0, metadata !299, null}
!301 = metadata !{i32 216, i32 0, metadata !96, null}
!302 = metadata !{i32 217, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !96, i32 216, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!304 = metadata !{i32 218, i32 0, metadata !303, null}
!305 = metadata !{i32 219, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !96, i32 218, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!307 = metadata !{i32 220, i32 0, metadata !306, null}
!308 = metadata !{i32 221, i32 0, metadata !96, null}
!309 = metadata !{i32 233, i32 0, metadata !99, null}
!310 = metadata !{i32 234, i32 0, metadata !99, null}
!311 = metadata !{i32 241, i32 0, metadata !99, null}
!312 = metadata !{i32 242, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !99, i32 241, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!314 = metadata !{i32 244, i32 0, metadata !313, null}
!315 = metadata !{i32 246, i32 0, metadata !99, null}
!316 = metadata !{i32 247, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !99, i32 246, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!318 = metadata !{i32 248, i32 0, metadata !317, null}
!319 = metadata !{i32 249, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !99, i32 248, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!321 = metadata !{i32 250, i32 0, metadata !320, null}
!322 = metadata !{i32 251, i32 0, metadata !99, null}
!323 = metadata !{i32 266, i32 0, metadata !119, null}
!324 = metadata !{i32 267, i32 0, metadata !119, null}
!325 = metadata !{i32 270, i32 0, metadata !119, null}
!326 = metadata !{i32 271, i32 0, metadata !119, null}
!327 = metadata !{i32 277, i32 0, metadata !119, null}
!328 = metadata !{i32 278, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !119, i32 277, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!330 = metadata !{i32 280, i32 0, metadata !329, null}
!331 = metadata !{i32 282, i32 0, metadata !119, null}
!332 = metadata !{i32 283, i32 0, metadata !119, null}
!333 = metadata !{i32 284, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !119, i32 284, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!335 = metadata !{i32 285, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !334, i32 284, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!337 = metadata !{i32 287, i32 0, metadata !119, null}
!338 = metadata !{i32 288, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !119, i32 288, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!340 = metadata !{i32 289, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 288, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!342 = metadata !{i32 291, i32 0, metadata !119, null}
!343 = metadata !{i32 292, i32 0, metadata !119, null}
!344 = metadata !{i32 293, i32 0, metadata !119, null}
!345 = metadata !{i32 298, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !347, i32 298, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!347 = metadata !{i32 786443, metadata !1, metadata !119, i32 297, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!348 = metadata !{i32 294, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !350, i32 294, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!350 = metadata !{i32 786443, metadata !1, metadata !119, i32 293, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!351 = metadata !{i32 295, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !349, i32 294, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!353 = metadata !{i32 299, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !346, i32 298, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!355 = metadata !{i32 302, i32 0, metadata !119, null}
!356 = metadata !{i32 314, i32 0, metadata !132, null}
!357 = metadata !{i32 317, i32 0, metadata !132, null}
!358 = metadata !{i32 323, i32 0, metadata !132, null}
!359 = metadata !{i32 324, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !132, i32 323, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!361 = metadata !{i32 326, i32 0, metadata !360, null}
!362 = metadata !{i32 328, i32 0, metadata !132, null}
!363 = metadata !{i32 329, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !132, i32 328, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!365 = metadata !{i32 330, i32 0, metadata !364, null}
!366 = metadata !{i32 331, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !132, i32 330, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!368 = metadata !{i32 333, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !132, i32 332, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!370 = metadata !{i32 335, i32 0, metadata !369, null}
!371 = metadata !{i32 337, i32 0, metadata !132, null}
!372 = metadata !{i32 349, i32 0, metadata !139, null}
!373 = metadata !{i32 350, i32 0, metadata !139, null}
!374 = metadata !{i32 357, i32 0, metadata !139, null}
!375 = metadata !{i32 358, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !139, i32 357, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!377 = metadata !{i32 360, i32 0, metadata !376, null}
!378 = metadata !{i32 362, i32 0, metadata !139, null}
!379 = metadata !{i32 363, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !139, i32 362, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!381 = metadata !{i32 366, i32 0, metadata !380, null}
!382 = metadata !{i32 368, i32 0, metadata !139, null}
!383 = metadata !{i32 369, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !139, i32 368, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!385 = metadata !{i32 372, i32 0, metadata !384, null}
!386 = metadata !{i32 374, i32 0, metadata !139, null}
!387 = metadata !{i32 375, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !139, i32 374, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!389 = metadata !{i32 378, i32 0, metadata !388, null}
!390 = metadata !{i32 380, i32 0, metadata !139, null}
!391 = metadata !{i32 381, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !139, i32 380, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!393 = metadata !{i32 384, i32 0, metadata !392, null}
!394 = metadata !{i32 386, i32 0, metadata !139, null}
!395 = metadata !{i32 387, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !139, i32 386, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!397 = metadata !{i32 388, i32 0, metadata !396, null}
!398 = metadata !{i32 389, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !139, i32 388, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!400 = metadata !{i32 391, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !139, i32 390, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!402 = metadata !{i32 394, i32 0, metadata !401, null}
!403 = metadata !{i32 396, i32 0, metadata !139, null}
!404 = metadata !{i32 411, i32 0, metadata !145, null}
!405 = metadata !{i32 412, i32 0, metadata !145, null}
!406 = metadata !{i32 413, i32 0, metadata !145, null}
!407 = metadata !{i32 416, i32 0, metadata !145, null}
!408 = metadata !{i32 417, i32 0, metadata !145, null}
!409 = metadata !{i32 423, i32 0, metadata !145, null}
!410 = metadata !{i32 424, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !145, i32 423, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!412 = metadata !{i32 427, i32 0, metadata !411, null}
!413 = metadata !{i32 429, i32 0, metadata !145, null}
!414 = metadata !{i32 430, i32 0, metadata !145, null}
!415 = metadata !{i32 431, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !145, i32 430, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!417 = metadata !{i32 434, i32 0, metadata !416, null}
!418 = metadata !{i32 436, i32 0, metadata !145, null}
!419 = metadata !{i32 437, i32 0, metadata !145, null}
!420 = metadata !{i32 438, i32 0, metadata !145, null}
!421 = metadata !{i32 439, i32 0, metadata !145, null}
!422 = metadata !{i32 440, i32 0, metadata !145, null}
!423 = metadata !{i32 441, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !425, i32 441, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!425 = metadata !{i32 786443, metadata !1, metadata !145, i32 440, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!426 = metadata !{i32 444, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !424, i32 443, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!428 = metadata !{i32 443, i32 0, metadata !424, null}
!429 = metadata !{i32 447, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !431, i32 447, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!431 = metadata !{i32 786443, metadata !1, metadata !145, i32 446, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!432 = metadata !{i32 450, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !430, i32 449, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!434 = metadata !{i32 451, i32 0, metadata !433, null}
!435 = metadata !{i32 449, i32 0, metadata !430, null}
!436 = metadata !{i32 454, i32 0, metadata !145, null}
!437 = metadata !{i32 469, i32 0, metadata !162, null}
!438 = metadata !{i32 470, i32 0, metadata !162, null}
!439 = metadata !{i32 471, i32 0, metadata !162, null}
!440 = metadata !{i32 474, i32 0, metadata !162, null}
!441 = metadata !{i32 475, i32 0, metadata !162, null}
!442 = metadata !{i32 481, i32 0, metadata !162, null}
!443 = metadata !{i32 482, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !162, i32 481, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!445 = metadata !{i32 486, i32 0, metadata !444, null}
!446 = metadata !{i32 488, i32 0, metadata !162, null}
!447 = metadata !{i32 489, i32 0, metadata !162, null}
!448 = metadata !{i32 490, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !162, i32 489, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!450 = metadata !{i32 493, i32 0, metadata !449, null}
!451 = metadata !{i32 495, i32 0, metadata !162, null}
!452 = metadata !{i32 496, i32 0, metadata !162, null}
!453 = metadata !{i32 497, i32 0, metadata !162, null}
!454 = metadata !{i32 498, i32 0, metadata !162, null}
!455 = metadata !{i32 499, i32 0, metadata !162, null}
!456 = metadata !{i32 500, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !458, i32 500, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!458 = metadata !{i32 786443, metadata !1, metadata !162, i32 499, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!459 = metadata !{i32 503, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !457, i32 502, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!461 = metadata !{i32 502, i32 0, metadata !457, null}
!462 = metadata !{i32 506, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !464, i32 506, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!464 = metadata !{i32 786443, metadata !1, metadata !162, i32 505, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!465 = metadata !{i32 509, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !463, i32 508, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!467 = metadata !{i32 510, i32 0, metadata !466, null}
!468 = metadata !{i32 508, i32 0, metadata !463, null}
!469 = metadata !{i32 513, i32 0, metadata !162, null}
!470 = metadata !{i32 528, i32 0, metadata !177, null}
!471 = metadata !{i32 529, i32 0, metadata !177, null}
!472 = metadata !{i32 530, i32 0, metadata !177, null}
!473 = metadata !{i32 533, i32 0, metadata !177, null}
!474 = metadata !{i32 534, i32 0, metadata !177, null}
!475 = metadata !{i32 540, i32 0, metadata !177, null}
!476 = metadata !{i32 541, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !177, i32 540, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!478 = metadata !{i32 545, i32 0, metadata !477, null}
!479 = metadata !{i32 547, i32 0, metadata !177, null}
!480 = metadata !{i32 548, i32 0, metadata !177, null}
!481 = metadata !{i32 549, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !177, i32 548, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!483 = metadata !{i32 552, i32 0, metadata !482, null}
!484 = metadata !{i32 554, i32 0, metadata !177, null}
!485 = metadata !{i32 555, i32 0, metadata !177, null}
!486 = metadata !{i32 556, i32 0, metadata !177, null}
!487 = metadata !{i32 557, i32 0, metadata !177, null}
!488 = metadata !{i32 558, i32 0, metadata !177, null}
!489 = metadata !{i32 559, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !491, i32 559, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!491 = metadata !{i32 786443, metadata !1, metadata !177, i32 558, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!492 = metadata !{i32 562, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !490, i32 561, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!494 = metadata !{i32 561, i32 0, metadata !490, null}
!495 = metadata !{i32 565, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !497, i32 565, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!497 = metadata !{i32 786443, metadata !1, metadata !177, i32 564, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!498 = metadata !{i32 568, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !496, i32 567, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c]
!500 = metadata !{i32 569, i32 0, metadata !499, null}
!501 = metadata !{i32 567, i32 0, metadata !496, null}
!502 = metadata !{i32 572, i32 0, metadata !177, null}

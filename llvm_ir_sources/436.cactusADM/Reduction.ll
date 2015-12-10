; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [70 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str2 = private unnamed_addr constant [121 x i8] c"PUGH_ReductionArrays: Don't know how to reduce a %d-dimensional array with %d elements to an output array of %d elements\00", align 1
@CCTK_nProcs = external global i32 (%struct.cGH*)*
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str3 = private unnamed_addr constant [65 x i8] c"PUGH_ReductionGVs: Only one output value per input array allowed\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"PUGH_ReductionGVs: Invalid output variable type\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"PUGH_ReductionGVs: Invalid variable index\00", align 1
@.str6 = private unnamed_addr constant [46 x i8] c"copy_real_to_outtype: Unsupported output type\00", align 1
@.str7 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusPUGH/PUGHReduce/src/Reduction.c,v 1.8 2001/10/09 14:04:10 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str7, i64 0, i64 0), !dbg !244
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* nocapture %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* nocapture %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* nocapture %reduction_fn) #1 {
entry:
  %from = alloca [1 x i32], align 4
  %to = alloca [1 x i32], align 4
  %iterator = alloca [1 x i32], align 4
  %points_per_dim = alloca [1 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !57), !dbg !245
  call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !58), !dbg !246
  call void @llvm.dbg.value(metadata !{i32 %num_dims}, i64 0, metadata !59), !dbg !247
  call void @llvm.dbg.value(metadata !{i32* %dims}, i64 0, metadata !60), !dbg !248
  call void @llvm.dbg.value(metadata !{i32 %intype}, i64 0, metadata !61), !dbg !249
  call void @llvm.dbg.value(metadata !{i32 %num_inarrays}, i64 0, metadata !62), !dbg !250
  call void @llvm.dbg.value(metadata !{i8** %inarrays}, i64 0, metadata !63), !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %outtype}, i64 0, metadata !64), !dbg !252
  call void @llvm.dbg.value(metadata !{i32 %num_outvals}, i64 0, metadata !65), !dbg !253
  call void @llvm.dbg.value(metadata !{i8* %outvals}, i64 0, metadata !66), !dbg !254
  call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn}, i64 0, metadata !67), !dbg !255
  call void @llvm.dbg.declare(metadata !{[1 x i32]* %from}, metadata !71), !dbg !256
  call void @llvm.dbg.declare(metadata !{[1 x i32]* %to}, metadata !75), !dbg !256
  call void @llvm.dbg.declare(metadata !{[1 x i32]* %iterator}, metadata !76), !dbg !256
  call void @llvm.dbg.declare(metadata !{[1 x i32]* %points_per_dim}, metadata !77), !dbg !256
  %arrayidx = getelementptr inbounds [1 x i32]* %points_per_dim, i64 0, i64 0, !dbg !257
  store i32 1, i32* %arrayidx, align 4, !dbg !257, !tbaa !258
  %arrayidx2 = getelementptr inbounds [1 x i32]* %from, i64 0, i64 0, !dbg !261
  store i32 0, i32* %arrayidx2, align 4, !dbg !261, !tbaa !258
  %0 = load i32* %dims, align 4, !dbg !262, !tbaa !258
  %arrayidx4 = getelementptr inbounds [1 x i32]* %to, i64 0, i64 0, !dbg !262
  store i32 %0, i32* %arrayidx4, align 4, !dbg !262, !tbaa !258
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !68), !dbg !264
  %cmp73 = icmp sgt i32 %num_dims, 1, !dbg !264
  br i1 %cmp73, label %for.body, label %for.end, !dbg !264

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body ], [ 1, %entry ]
  %1 = phi i32 [ %mul, %for.body ], [ %0, %entry ], !dbg !266
  %arrayidx5 = getelementptr inbounds i32* %dims, i64 %indvars.iv75, !dbg !266
  %2 = load i32* %arrayidx5, align 4, !dbg !266, !tbaa !258
  %mul = mul nsw i32 %1, %2, !dbg !266
  %indvars.iv.next76 = add i64 %indvars.iv75, 1, !dbg !264
  %lftr.wideiv77 = trunc i64 %indvars.iv.next76 to i32, !dbg !264
  %exitcond78 = icmp eq i32 %lftr.wideiv77, %num_dims, !dbg !264
  br i1 %exitcond78, label %for.cond.for.end_crit_edge, label %for.body, !dbg !264

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !266, !tbaa !258
  br label %for.end, !dbg !264

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %3 = phi i32 [ %mul, %for.cond.for.end_crit_edge ], [ %0, %entry ]
  %cmp7 = icmp eq i32 %num_outvals, 1, !dbg !268
  br i1 %cmp7, label %if.end13, label %if.then, !dbg !268

if.then:                                          ; preds = %for.end
  %cmp9 = icmp eq i32 %3, %num_outvals, !dbg !269
  br i1 %cmp9, label %if.end, label %if.then10, !dbg !269

if.then10:                                        ; preds = %if.then
  %call = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([121 x i8]* @.str2, i64 0, i64 0), i32 %num_dims, i32 %3, i32 %num_outvals) #6, !dbg !271
  br label %return, !dbg !273

if.end:                                           ; preds = %if.then
  store i32 1, i32* %arrayidx4, align 4, !dbg !274, !tbaa !258
  br label %if.end13, !dbg !275

if.end13:                                         ; preds = %for.end, %if.end
  %4 = phi i32 [ %3, %for.end ], [ 1, %if.end ]
  %5 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !276, !tbaa !277
  %call15 = call i32 %5(%struct.cGH* %GH) #6, !dbg !276
  %mul16 = mul nsw i32 %call15, %4, !dbg !276
  call void @llvm.dbg.value(metadata !{i32 %mul16}, i64 0, metadata !69), !dbg !276
  %conv = sext i32 %num_inarrays to i64, !dbg !278
  %mul17 = shl nsw i64 %conv, 2, !dbg !278
  %call18 = call noalias i8* @malloc(i64 %mul17) #6, !dbg !278
  %6 = bitcast i8* %call18 to i32*, !dbg !278
  call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !78), !dbg !278
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !68), !dbg !279
  %cmp2071 = icmp sgt i32 %num_inarrays, 0, !dbg !279
  br i1 %cmp2071, label %for.body22, label %for.end27, !dbg !279

for.body22:                                       ; preds = %if.end13, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ 0, %if.end13 ]
  %arrayidx24 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !281
  store i32 %intype, i32* %arrayidx24, align 4, !dbg !281, !tbaa !258
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !279
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !279
  %exitcond = icmp eq i32 %lftr.wideiv, %num_inarrays, !dbg !279
  br i1 %exitcond, label %for.end27, label %for.body22, !dbg !279

for.end27:                                        ; preds = %for.body22, %if.end13
  %conv28 = sext i32 %num_outvals to i64, !dbg !283
  %mul29 = shl nsw i64 %conv28, 3, !dbg !283
  %call30 = call noalias i8* @malloc(i64 %mul29) #6, !dbg !283
  %7 = bitcast i8* %call30 to double*, !dbg !283
  call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !79), !dbg !283
  %arraydecay32 = getelementptr inbounds [1 x i32]* %iterator, i64 0, i64 0, !dbg !284
  %call34 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %arrayidx2, i32* %arrayidx4, i32* %arraydecay32, i32* %arrayidx, i32 %mul16, i32 %num_inarrays, i32* %6, i8** %inarrays, i32 %num_outvals, double* %7) #6, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !70), !dbg !284
  %cmp35 = icmp eq i32 %call34, 0, !dbg !285
  br i1 %cmp35, label %land.lhs.true, label %if.end45, !dbg !285

land.lhs.true:                                    ; preds = %for.end27
  %cmp37 = icmp slt i32 %proc, 0, !dbg !285
  br i1 %cmp37, label %if.then42, label %lor.lhs.false, !dbg !285

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !285, !tbaa !277
  %call39 = call i32 %8(%struct.cGH* %GH) #6, !dbg !285
  %cmp40 = icmp eq i32 %call39, %proc, !dbg !285
  br i1 %cmp40, label %if.then42, label %if.end45, !dbg !285

if.then42:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %mul43 = mul nsw i32 %num_outvals, %num_inarrays, !dbg !286
  %call44 = call fastcc i32 @copy_real_to_outtype(i32 %mul43, double* %7, i32 %outtype, i8* %outvals) #7, !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !70), !dbg !286
  br label %if.end45, !dbg !288

if.end45:                                         ; preds = %if.then42, %lor.lhs.false, %for.end27
  %retval1.0 = phi i32 [ %call44, %if.then42 ], [ 0, %lor.lhs.false ], [ %call34, %for.end27 ]
  call void @free(i8* %call18) #6, !dbg !289
  call void @free(i8* %call30) #6, !dbg !290
  br label %return, !dbg !291

return:                                           ; preds = %if.end45, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ %retval1.0, %if.end45 ]
  ret i32 %retval.0, !dbg !292
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @copy_real_to_outtype(i32 %num_elems, double* nocapture %inarray, i32 %outtype, i8* nocapture %outarray) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %num_elems}, i64 0, metadata !102), !dbg !293
  tail call void @llvm.dbg.value(metadata !{double* %inarray}, i64 0, metadata !103), !dbg !294
  tail call void @llvm.dbg.value(metadata !{i32 %outtype}, i64 0, metadata !104), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i8* %outarray}, i64 0, metadata !105), !dbg !296
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !297
  switch i32 %outtype, label %if.else138 [
    i32 1, label %for.cond.preheader
    i32 2, label %if.then7
    i32 3, label %if.then24
    i32 4, label %if.then41
    i32 5, label %if.then58
    i32 6, label %if.then75
    i32 7, label %if.then91
    i32 8, label %if.then108
    i32 9, label %if.then124
  ], !dbg !298

for.cond.preheader:                               ; preds = %entry
  %cmp2214 = icmp sgt i32 %num_elems, 0, !dbg !299
  br i1 %cmp2214, label %for.body, label %if.end146, !dbg !299

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %inarray, i64 %indvars.iv, !dbg !301
  %0 = load double* %arrayidx, align 8, !dbg !301, !tbaa !303
  %conv = fptoui double %0 to i8, !dbg !301
  %arrayidx4 = getelementptr inbounds i8* %outarray, i64 %indvars.iv, !dbg !301
  store i8 %conv, i8* %arrayidx4, align 1, !dbg !301, !tbaa !259
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !299
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !299
  %exitcond = icmp eq i32 %lftr.wideiv, %num_elems, !dbg !299
  br i1 %exitcond, label %if.end146, label %for.body, !dbg !299

if.then7:                                         ; preds = %entry
  %1 = bitcast i8* %outarray to i32*, !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !113), !dbg !304
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !305
  %cmp10217 = icmp sgt i32 %num_elems, 0, !dbg !305
  br i1 %cmp10217, label %for.body12, label %if.end146, !dbg !305

for.body12:                                       ; preds = %if.then7, %for.body12
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %for.body12 ], [ 0, %if.then7 ]
  %arrayidx14 = getelementptr inbounds double* %inarray, i64 %indvars.iv240, !dbg !307
  %2 = load double* %arrayidx14, align 8, !dbg !307, !tbaa !303
  %conv15 = fptosi double %2 to i32, !dbg !307
  %arrayidx17 = getelementptr inbounds i32* %1, i64 %indvars.iv240, !dbg !307
  store i32 %conv15, i32* %arrayidx17, align 4, !dbg !307, !tbaa !258
  %indvars.iv.next241 = add i64 %indvars.iv240, 1, !dbg !305
  %lftr.wideiv242 = trunc i64 %indvars.iv.next241 to i32, !dbg !305
  %exitcond243 = icmp eq i32 %lftr.wideiv242, %num_elems, !dbg !305
  br i1 %exitcond243, label %if.end146, label %for.body12, !dbg !305

if.then24:                                        ; preds = %entry
  %3 = bitcast i8* %outarray to i16*, !dbg !309
  tail call void @llvm.dbg.value(metadata !{i16* %3}, i64 0, metadata !115), !dbg !309
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !310
  %cmp27220 = icmp sgt i32 %num_elems, 0, !dbg !310
  br i1 %cmp27220, label %for.body29, label %if.end146, !dbg !310

for.body29:                                       ; preds = %if.then24, %for.body29
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.body29 ], [ 0, %if.then24 ]
  %arrayidx31 = getelementptr inbounds double* %inarray, i64 %indvars.iv244, !dbg !312
  %4 = load double* %arrayidx31, align 8, !dbg !312, !tbaa !303
  %conv32 = fptosi double %4 to i16, !dbg !312
  %arrayidx34 = getelementptr inbounds i16* %3, i64 %indvars.iv244, !dbg !312
  store i16 %conv32, i16* %arrayidx34, align 2, !dbg !312, !tbaa !314
  %indvars.iv.next245 = add i64 %indvars.iv244, 1, !dbg !310
  %lftr.wideiv246 = trunc i64 %indvars.iv.next245 to i32, !dbg !310
  %exitcond247 = icmp eq i32 %lftr.wideiv246, %num_elems, !dbg !310
  br i1 %exitcond247, label %if.end146, label %for.body29, !dbg !310

if.then41:                                        ; preds = %entry
  %5 = bitcast i8* %outarray to i32*, !dbg !315
  tail call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !119), !dbg !315
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !316
  %cmp44223 = icmp sgt i32 %num_elems, 0, !dbg !316
  br i1 %cmp44223, label %for.body46, label %if.end146, !dbg !316

for.body46:                                       ; preds = %if.then41, %for.body46
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.body46 ], [ 0, %if.then41 ]
  %arrayidx48 = getelementptr inbounds double* %inarray, i64 %indvars.iv248, !dbg !318
  %6 = load double* %arrayidx48, align 8, !dbg !318, !tbaa !303
  %conv49 = fptosi double %6 to i32, !dbg !318
  %arrayidx51 = getelementptr inbounds i32* %5, i64 %indvars.iv248, !dbg !318
  store i32 %conv49, i32* %arrayidx51, align 4, !dbg !318, !tbaa !258
  %indvars.iv.next249 = add i64 %indvars.iv248, 1, !dbg !316
  %lftr.wideiv250 = trunc i64 %indvars.iv.next249 to i32, !dbg !316
  %exitcond251 = icmp eq i32 %lftr.wideiv250, %num_elems, !dbg !316
  br i1 %exitcond251, label %if.end146, label %for.body46, !dbg !316

if.then58:                                        ; preds = %entry
  %7 = bitcast i8* %outarray to i64*, !dbg !320
  tail call void @llvm.dbg.value(metadata !{i64* %7}, i64 0, metadata !121), !dbg !320
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !321
  %cmp61226 = icmp sgt i32 %num_elems, 0, !dbg !321
  br i1 %cmp61226, label %for.body63, label %if.end146, !dbg !321

for.body63:                                       ; preds = %if.then58, %for.body63
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.body63 ], [ 0, %if.then58 ]
  %arrayidx65 = getelementptr inbounds double* %inarray, i64 %indvars.iv252, !dbg !323
  %8 = load double* %arrayidx65, align 8, !dbg !323, !tbaa !303
  %conv66 = fptosi double %8 to i64, !dbg !323
  %arrayidx68 = getelementptr inbounds i64* %7, i64 %indvars.iv252, !dbg !323
  store i64 %conv66, i64* %arrayidx68, align 8, !dbg !323, !tbaa !325
  %indvars.iv.next253 = add i64 %indvars.iv252, 1, !dbg !321
  %lftr.wideiv254 = trunc i64 %indvars.iv.next253 to i32, !dbg !321
  %exitcond255 = icmp eq i32 %lftr.wideiv254, %num_elems, !dbg !321
  br i1 %exitcond255, label %if.end146, label %for.body63, !dbg !321

if.then75:                                        ; preds = %entry
  %9 = bitcast i8* %outarray to double*, !dbg !326
  tail call void @llvm.dbg.value(metadata !{double* %9}, i64 0, metadata !125), !dbg !326
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !327
  %cmp78229 = icmp sgt i32 %num_elems, 0, !dbg !327
  br i1 %cmp78229, label %for.body80, label %if.end146, !dbg !327

for.body80:                                       ; preds = %if.then75, %for.body80
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %for.body80 ], [ 0, %if.then75 ]
  %arrayidx82 = getelementptr inbounds double* %inarray, i64 %indvars.iv256, !dbg !329
  %10 = load double* %arrayidx82, align 8, !dbg !329, !tbaa !303
  %arrayidx84 = getelementptr inbounds double* %9, i64 %indvars.iv256, !dbg !329
  store double %10, double* %arrayidx84, align 8, !dbg !329, !tbaa !303
  %indvars.iv.next257 = add i64 %indvars.iv256, 1, !dbg !327
  %lftr.wideiv258 = trunc i64 %indvars.iv.next257 to i32, !dbg !327
  %exitcond259 = icmp eq i32 %lftr.wideiv258, %num_elems, !dbg !327
  br i1 %exitcond259, label %if.end146, label %for.body80, !dbg !327

if.then91:                                        ; preds = %entry
  %11 = bitcast i8* %outarray to float*, !dbg !331
  tail call void @llvm.dbg.value(metadata !{float* %11}, i64 0, metadata !127), !dbg !331
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !332
  %cmp94232 = icmp sgt i32 %num_elems, 0, !dbg !332
  br i1 %cmp94232, label %for.body96, label %if.end146, !dbg !332

for.body96:                                       ; preds = %if.then91, %for.body96
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %for.body96 ], [ 0, %if.then91 ]
  %arrayidx98 = getelementptr inbounds double* %inarray, i64 %indvars.iv260, !dbg !334
  %12 = load double* %arrayidx98, align 8, !dbg !334, !tbaa !303
  %conv99 = fptrunc double %12 to float, !dbg !334
  %arrayidx101 = getelementptr inbounds float* %11, i64 %indvars.iv260, !dbg !334
  store float %conv99, float* %arrayidx101, align 4, !dbg !334, !tbaa !336
  %indvars.iv.next261 = add i64 %indvars.iv260, 1, !dbg !332
  %lftr.wideiv262 = trunc i64 %indvars.iv.next261 to i32, !dbg !332
  %exitcond263 = icmp eq i32 %lftr.wideiv262, %num_elems, !dbg !332
  br i1 %exitcond263, label %if.end146, label %for.body96, !dbg !332

if.then108:                                       ; preds = %entry
  %13 = bitcast i8* %outarray to double*, !dbg !337
  tail call void @llvm.dbg.value(metadata !{double* %13}, i64 0, metadata !131), !dbg !337
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !338
  %cmp111235 = icmp sgt i32 %num_elems, 0, !dbg !338
  br i1 %cmp111235, label %for.body113, label %if.end146, !dbg !338

for.body113:                                      ; preds = %if.then108, %for.body113
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %for.body113 ], [ 0, %if.then108 ]
  %arrayidx115 = getelementptr inbounds double* %inarray, i64 %indvars.iv264, !dbg !340
  %14 = load double* %arrayidx115, align 8, !dbg !340, !tbaa !303
  %arrayidx117 = getelementptr inbounds double* %13, i64 %indvars.iv264, !dbg !340
  store double %14, double* %arrayidx117, align 8, !dbg !340, !tbaa !303
  %indvars.iv.next265 = add i64 %indvars.iv264, 1, !dbg !338
  %lftr.wideiv266 = trunc i64 %indvars.iv.next265 to i32, !dbg !338
  %exitcond267 = icmp eq i32 %lftr.wideiv266, %num_elems, !dbg !338
  br i1 %exitcond267, label %if.end146, label %for.body113, !dbg !338

if.then124:                                       ; preds = %entry
  %15 = bitcast i8* %outarray to x86_fp80*, !dbg !342
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %15}, i64 0, metadata !133), !dbg !342
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !343
  %cmp127238 = icmp sgt i32 %num_elems, 0, !dbg !343
  br i1 %cmp127238, label %for.body129, label %if.end146, !dbg !343

for.body129:                                      ; preds = %if.then124, %for.body129
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %for.body129 ], [ 0, %if.then124 ]
  %arrayidx131 = getelementptr inbounds double* %inarray, i64 %indvars.iv268, !dbg !345
  %16 = load double* %arrayidx131, align 8, !dbg !345, !tbaa !303
  %conv132 = fpext double %16 to x86_fp80, !dbg !345
  %arrayidx134 = getelementptr inbounds x86_fp80* %15, i64 %indvars.iv268, !dbg !345
  store x86_fp80 %conv132, x86_fp80* %arrayidx134, align 16, !dbg !345, !tbaa !347
  %indvars.iv.next269 = add i64 %indvars.iv268, 1, !dbg !343
  %lftr.wideiv270 = trunc i64 %indvars.iv.next269 to i32, !dbg !343
  %exitcond271 = icmp eq i32 %lftr.wideiv270, %num_elems, !dbg !343
  br i1 %exitcond271, label %if.end146, label %for.body129, !dbg !343

if.else138:                                       ; preds = %entry
  %call = tail call i32 @CCTK_Warn(i32 1, i32 655, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !348
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !107), !dbg !351
  br label %if.end146

if.end146:                                        ; preds = %if.then124, %for.body129, %if.then108, %for.body113, %if.then91, %for.body96, %if.then75, %for.body80, %if.then58, %for.body63, %if.then41, %for.body46, %if.then24, %for.body29, %if.then7, %for.body12, %for.cond.preheader, %for.body, %if.else138
  %retval1.0 = phi i32 [ -1, %if.else138 ], [ 0, %for.body ], [ 0, %for.cond.preheader ], [ 0, %for.body12 ], [ 0, %if.then7 ], [ 0, %for.body29 ], [ 0, %if.then24 ], [ 0, %for.body46 ], [ 0, %if.then41 ], [ 0, %for.body63 ], [ 0, %if.then58 ], [ 0, %for.body80 ], [ 0, %if.then75 ], [ 0, %for.body96 ], [ 0, %if.then91 ], [ 0, %for.body113 ], [ 0, %if.then108 ], [ 0, %for.body129 ], [ 0, %if.then124 ]
  ret i32 %retval1.0, !dbg !352
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* nocapture %invars, i32 %outtype, i32 %num_outvals, i8* nocapture %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* nocapture %reduction_fn) #1 {
entry:
  %from.i = alloca i32, align 4
  %to.i = alloca i32, align 4
  %iterator.i = alloca i32, align 4
  %points_per_dim.i = alloca i32, align 4
  %type.i = alloca i32, align 4
  %data.i41 = alloca i8*, align 8
  %result = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !84), !dbg !353
  call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !85), !dbg !354
  call void @llvm.dbg.value(metadata !{i32 %num_invars}, i64 0, metadata !86), !dbg !355
  call void @llvm.dbg.value(metadata !{i32* %invars}, i64 0, metadata !87), !dbg !356
  call void @llvm.dbg.value(metadata !{i32 %outtype}, i64 0, metadata !88), !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %num_outvals}, i64 0, metadata !89), !dbg !358
  call void @llvm.dbg.value(metadata !{i8* %outvals}, i64 0, metadata !90), !dbg !359
  call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn}, i64 0, metadata !91), !dbg !360
  call void @llvm.dbg.declare(metadata !{double* %result}, metadata !97), !dbg !361
  %cmp = icmp eq i32 %num_outvals, 1, !dbg !362
  br i1 %cmp, label %if.end, label %if.then, !dbg !362

if.then:                                          ; preds = %entry
  %call = call i32 @CCTK_Warn(i32 1, i32 280, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !363
  br label %return, !dbg !365

if.end:                                           ; preds = %entry
  %call2 = call i32 @CCTK_VarTypeSize(i32 %outtype) #6, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !94), !dbg !366
  %cmp3 = icmp slt i32 %call2, 1, !dbg !367
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !367

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @CCTK_Warn(i32 1, i32 287, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !368
  br label %return, !dbg !370

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !96), !dbg !371
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !372, !tbaa !277
  %call7 = call i32 %0(%struct.cGH* %GH) #6, !dbg !372
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !93), !dbg !372
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !373
  %cmp847 = icmp sgt i32 %num_invars, 0, !dbg !373
  br i1 %cmp847, label %for.body.lr.ph, label %return, !dbg !373

for.body.lr.ph:                                   ; preds = %if.end6
  %1 = bitcast i32* %from.i to i8*, !dbg !375
  %2 = bitcast i32* %to.i to i8*, !dbg !375
  %3 = bitcast i32* %iterator.i to i8*, !dbg !375
  %4 = bitcast i32* %points_per_dim.i to i8*, !dbg !375
  %5 = bitcast i32* %type.i to i8*, !dbg !375
  %6 = bitcast i8** %data.i41 to i8*, !dbg !375
  br label %for.body, !dbg !373

for.body:                                         ; preds = %if.end23, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end23 ]
  %retval1.049 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %if.end23 ]
  %arrayidx = getelementptr inbounds i32* %invars, i64 %indvars.iv, !dbg !379
  %7 = load i32* %arrayidx, align 4, !dbg !379, !tbaa !258
  %call9 = call i32 @CCTK_GroupTypeFromVarI(i32 %7) #6, !dbg !379
  switch i32 %call9, label %sw.epilog.thread [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb13
  ], !dbg !379

sw.bb:                                            ; preds = %for.body, %for.body
  %8 = load i32* %arrayidx, align 4, !dbg !380, !tbaa !258
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !381) #5, !dbg !382
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !383) #5, !dbg !382
  call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !384) #5, !dbg !382
  call void @llvm.dbg.value(metadata !{double* %result}, i64 0, metadata !385) #5, !dbg !382
  call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn}, i64 0, metadata !386) #5, !dbg !387
  %idxprom.i = sext i32 %8 to i64, !dbg !388
  %call.i = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !388
  %variables.i = getelementptr inbounds %struct.PGH* %call.i, i64 0, i32 7, !dbg !388
  %9 = load i8**** %variables.i, align 8, !dbg !388, !tbaa !277
  %arrayidx112.i = getelementptr inbounds i8*** %9, i64 %idxprom.i, !dbg !388
  %arrayidx113.i = load i8*** %arrayidx112.i, align 8, !dbg !388
  %10 = load i8** %arrayidx113.i, align 8, !dbg !388
  %connectivity.i = getelementptr inbounds i8* %10, i64 64, !dbg !389
  %11 = bitcast i8* %connectivity.i to %struct.PConnectivity**, !dbg !389
  %12 = load %struct.PConnectivity** %11, align 8, !dbg !389, !tbaa !277
  %dim.i = getelementptr inbounds %struct.PConnectivity* %12, i64 0, i32 0, !dbg !389
  %13 = load i32* %dim.i, align 4, !dbg !389, !tbaa !258
  %mul.i = shl nsw i32 %13, 2, !dbg !389
  %conv.i = sext i32 %mul.i to i64, !dbg !389
  %mul3.i = shl nsw i64 %conv.i, 2, !dbg !389
  %call4.i = call noalias i8* @malloc(i64 %mul3.i) #6, !dbg !389
  %14 = bitcast i8* %call4.i to i32*, !dbg !389
  call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !390) #5, !dbg !389
  %15 = load %struct.PConnectivity** %11, align 8, !dbg !391, !tbaa !277
  %dim6.i = getelementptr inbounds %struct.PConnectivity* %15, i64 0, i32 0, !dbg !391
  %16 = load i32* %dim6.i, align 4, !dbg !391, !tbaa !258
  %idx.ext.i = sext i32 %16 to i64, !dbg !391
  %add.ptr.i = getelementptr inbounds i32* %14, i64 %idx.ext.i, !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %add.ptr.i}, i64 0, metadata !392) #5, !dbg !391
  %mul10.i = shl nsw i32 %16, 1, !dbg !393
  %idx.ext11.i = sext i32 %mul10.i to i64, !dbg !393
  %add.ptr12.i = getelementptr inbounds i32* %14, i64 %idx.ext11.i, !dbg !393
  call void @llvm.dbg.value(metadata !{i32* %add.ptr12.i}, i64 0, metadata !394) #5, !dbg !393
  %mul15.i = mul nsw i32 %16, 3, !dbg !395
  %idx.ext16.i = sext i32 %mul15.i to i64, !dbg !395
  %add.ptr17.i = getelementptr inbounds i32* %14, i64 %idx.ext16.i, !dbg !395
  call void @llvm.dbg.value(metadata !{i32* %add.ptr17.i}, i64 0, metadata !396) #5, !dbg !395
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !397) #5, !dbg !398
  store i32 1, i32* %add.ptr17.i, align 4, !dbg !399, !tbaa !258
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !400) #5, !dbg !401
  %17 = load i32* %dim6.i, align 4, !dbg !401, !tbaa !258
  %cmp116.i = icmp sgt i32 %17, 0, !dbg !401
  br i1 %cmp116.i, label %for.body.lr.ph.i, label %PUGH_ReductionGA.exit, !dbg !401

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %stagger.i = getelementptr inbounds i8* %10, i64 36, !dbg !403
  %18 = bitcast i8* %stagger.i to i32*, !dbg !403
  %extras.i = getelementptr inbounds i8* %10, i64 56, !dbg !405
  %19 = bitcast i8* %extras.i to %struct.PGExtras**, !dbg !405
  br label %for.body.i, !dbg !401

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %num_points.0117.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %mul52.i, %for.inc.i ]
  %20 = load i32* %18, align 4, !dbg !403, !tbaa !258
  %21 = trunc i64 %indvars.iv.i to i32, !dbg !403
  %call22.i = call i32 @CCTK_StaggerDirIndex(i32 %21, i32 %20) #6, !dbg !403
  call void @llvm.dbg.value(metadata !{i32 %call22.i}, i64 0, metadata !406) #5, !dbg !403
  %idxprom24.i = sext i32 %call22.i to i64, !dbg !405
  %22 = load %struct.PGExtras** %19, align 8, !dbg !405, !tbaa !277
  %arrayidx26.i = getelementptr inbounds %struct.PGExtras* %22, i64 0, i32 13, i64 %idxprom24.i, i64 0, !dbg !405
  %23 = load i32** %arrayidx26.i, align 8, !dbg !405, !tbaa !277
  %arrayidx27.i = getelementptr inbounds i32* %23, i64 %indvars.iv.i, !dbg !405
  %24 = load i32* %arrayidx27.i, align 4, !dbg !405, !tbaa !258
  %arrayidx29.i = getelementptr inbounds i32* %14, i64 %indvars.iv.i, !dbg !405
  store i32 %24, i32* %arrayidx29.i, align 4, !dbg !405, !tbaa !258
  %arrayidx35.i = getelementptr inbounds %struct.PGExtras* %22, i64 0, i32 13, i64 %idxprom24.i, i64 1, !dbg !407
  %25 = load i32** %arrayidx35.i, align 8, !dbg !407, !tbaa !277
  %arrayidx36.i = getelementptr inbounds i32* %25, i64 %indvars.iv.i, !dbg !407
  %26 = load i32* %arrayidx36.i, align 4, !dbg !407, !tbaa !258
  %add.ptr.sum.i = add i64 %indvars.iv.i, %idx.ext.i, !dbg !407
  %arrayidx38.i = getelementptr inbounds i32* %14, i64 %add.ptr.sum.i, !dbg !407
  store i32 %26, i32* %arrayidx38.i, align 4, !dbg !407, !tbaa !258
  %nsize.i = getelementptr inbounds %struct.PGExtras* %22, i64 0, i32 1, !dbg !408
  %27 = load i32** %nsize.i, align 8, !dbg !408, !tbaa !277
  %arrayidx41.i = getelementptr inbounds i32* %27, i64 %indvars.iv.i, !dbg !408
  %28 = load i32* %arrayidx41.i, align 4, !dbg !408, !tbaa !258
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !409) #5, !dbg !408
  %29 = load %struct.PConnectivity** %11, align 8, !dbg !410, !tbaa !277
  %perme.i = getelementptr inbounds %struct.PConnectivity* %29, i64 0, i32 3, !dbg !410
  %30 = load i32** %perme.i, align 8, !dbg !410, !tbaa !277
  %arrayidx44.i = getelementptr inbounds i32* %30, i64 %indvars.iv.i, !dbg !410
  %31 = load i32* %arrayidx44.i, align 4, !dbg !410, !tbaa !258
  %tobool.i = icmp eq i32 %31, 0, !dbg !410
  br i1 %tobool.i, label %if.end.i, label %if.then.i, !dbg !410

if.then.i:                                        ; preds = %for.body.i
  %nghostzones.i = getelementptr inbounds %struct.PGExtras* %22, i64 0, i32 12, !dbg !411
  %32 = load i32** %nghostzones.i, align 8, !dbg !411, !tbaa !277
  %arrayidx47.i = getelementptr inbounds i32* %32, i64 %indvars.iv.i, !dbg !411
  %33 = load i32* %arrayidx47.i, align 4, !dbg !411, !tbaa !258
  %mul48.i = shl nsw i32 %33, 1, !dbg !411
  %sub.i = sub nsw i32 %28, %mul48.i, !dbg !411
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !409) #5, !dbg !411
  br label %if.end.i, !dbg !413

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %dir_points.0.i = phi i32 [ %sub.i, %if.then.i ], [ %28, %for.body.i ]
  %not.tobool49.i = icmp ne i32 %call22.i, 0, !dbg !414
  %dec.i = sext i1 %not.tobool49.i to i32, !dbg !414
  %dir_points.0.dec.i = add nsw i32 %dir_points.0.i, %dec.i, !dbg !414
  %mul52.i = mul nsw i32 %dir_points.0.dec.i, %num_points.0117.i, !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %mul52.i}, i64 0, metadata !397) #5, !dbg !415
  %cmp53.i = icmp sgt i32 %21, 0, !dbg !416
  br i1 %cmp53.i, label %if.then55.i, label %for.inc.i, !dbg !416

if.then55.i:                                      ; preds = %if.end.i
  %34 = add nsw i64 %indvars.iv.i, -1, !dbg !417
  %add.ptr17.sum.i = add i64 %34, %idx.ext16.i, !dbg !417
  %arrayidx58.i = getelementptr inbounds i32* %14, i64 %add.ptr17.sum.i, !dbg !417
  %35 = load i32* %arrayidx58.i, align 4, !dbg !417, !tbaa !258
  %lnsize.i = getelementptr inbounds %struct.PGExtras* %22, i64 0, i32 6, !dbg !417
  %36 = load i32** %lnsize.i, align 8, !dbg !417, !tbaa !277
  %arrayidx62.i = getelementptr inbounds i32* %36, i64 %34, !dbg !417
  %37 = load i32* %arrayidx62.i, align 4, !dbg !417, !tbaa !258
  %mul63.i = mul nsw i32 %37, %35, !dbg !417
  %add.ptr17.sum114.i = add i64 %indvars.iv.i, %idx.ext16.i, !dbg !417
  %arrayidx65.i = getelementptr inbounds i32* %14, i64 %add.ptr17.sum114.i, !dbg !417
  store i32 %mul63.i, i32* %arrayidx65.i, align 4, !dbg !417, !tbaa !258
  br label %for.inc.i, !dbg !419

for.inc.i:                                        ; preds = %if.then55.i, %if.end.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !401
  %dim20.i = getelementptr inbounds %struct.PConnectivity* %29, i64 0, i32 0, !dbg !401
  %38 = load i32* %dim20.i, align 4, !dbg !401, !tbaa !258
  %39 = trunc i64 %indvars.iv.next.i to i32, !dbg !401
  %cmp.i = icmp slt i32 %39, %38, !dbg !401
  br i1 %cmp.i, label %for.body.i, label %PUGH_ReductionGA.exit, !dbg !401

PUGH_ReductionGA.exit:                            ; preds = %for.inc.i, %sw.bb
  %.lcssa.i = phi i32 [ %17, %sw.bb ], [ %38, %for.inc.i ]
  %num_points.0.lcssa.i = phi i32 [ 1, %sw.bb ], [ %mul52.i, %for.inc.i ]
  %vtype.i = getelementptr inbounds i8* %10, i64 52, !dbg !420
  %40 = bitcast i8* %vtype.i to i32*, !dbg !420
  %data.i = getelementptr inbounds i8* %10, i64 24, !dbg !420
  %41 = bitcast i8* %data.i to i8**, !dbg !420
  %call69.i = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 %.lcssa.i, i32* %14, i32* %add.ptr.i, i32* %add.ptr12.i, i32* %add.ptr17.i, i32 %num_points.0.lcssa.i, i32 1, i32* %40, i8** %41, i32 1, double* %result) #6, !dbg !420
  call void @llvm.dbg.value(metadata !{i32 %call69.i}, i64 0, metadata !421) #5, !dbg !420
  call void @free(i8* %call4.i) #6, !dbg !422
  call void @llvm.dbg.value(metadata !{i32 %call69.i}, i64 0, metadata !95), !dbg !380
  br label %sw.epilog, !dbg !423

sw.bb13:                                          ; preds = %for.body
  %42 = load i32* %arrayidx, align 4, !dbg !376, !tbaa !258
  call void @llvm.lifetime.start(i64 4, i8* %1) #5, !dbg !375
  call void @llvm.lifetime.start(i64 4, i8* %2) #5, !dbg !375
  call void @llvm.lifetime.start(i64 4, i8* %3) #5, !dbg !375
  call void @llvm.lifetime.start(i64 4, i8* %4) #5, !dbg !375
  call void @llvm.lifetime.start(i64 4, i8* %5) #5, !dbg !375
  call void @llvm.lifetime.start(i64 8, i8* %6) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !424) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !425) #5, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !427) #5, !dbg !428
  call void @llvm.dbg.value(metadata !{double* %result}, i64 0, metadata !429) #5, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn}, i64 0, metadata !431) #5, !dbg !432
  call void @llvm.dbg.declare(metadata !{i32* %from.i}, metadata !148) #5, !dbg !433
  call void @llvm.dbg.declare(metadata !{i32* %to.i}, metadata !149) #5, !dbg !433
  call void @llvm.dbg.declare(metadata !{i32* %iterator.i}, metadata !150) #5, !dbg !433
  call void @llvm.dbg.declare(metadata !{i32* %points_per_dim.i}, metadata !151) #5, !dbg !433
  call void @llvm.dbg.declare(metadata !{i32* %type.i}, metadata !152) #5, !dbg !433
  call void @llvm.dbg.declare(metadata !{i8** %data.i41}, metadata !153) #5, !dbg !434
  %idxprom.i42 = sext i32 %42 to i64, !dbg !435
  %call.i43 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !435
  %variables.i44 = getelementptr inbounds %struct.PGH* %call.i43, i64 0, i32 7, !dbg !435
  %43 = load i8**** %variables.i44, align 8, !dbg !435, !tbaa !277
  %arrayidx.i = getelementptr inbounds i8*** %43, i64 %idxprom.i42, !dbg !435
  %44 = load i8*** %arrayidx.i, align 8, !dbg !435, !tbaa !277
  %45 = load i8** %44, align 8, !dbg !435, !tbaa !277
  call void @llvm.dbg.value(metadata !{i8* %45}, i64 0, metadata !436) #5, !dbg !435
  call void @llvm.dbg.value(metadata !{i8* %45}, i64 0, metadata !153), !dbg !435
  store i8* %45, i8** %data.i41, align 8, !dbg !435, !tbaa !277
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !437) #5, !dbg !438
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !438
  store i32 0, i32* %from.i, align 4, !dbg !438, !tbaa !258
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !439) #5, !dbg !440
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !149), !dbg !440
  store i32 1, i32* %to.i, align 4, !dbg !440, !tbaa !258
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !441) #5, !dbg !442
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !150), !dbg !442
  store i32 1, i32* %iterator.i, align 4, !dbg !442, !tbaa !258
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !443) #5, !dbg !444
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !151), !dbg !444
  store i32 1, i32* %points_per_dim.i, align 4, !dbg !444, !tbaa !258
  %call3.i = call i32 @CCTK_VarTypeI(i32 %42) #6, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %call3.i}, i64 0, metadata !446) #5, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %call3.i}, i64 0, metadata !152), !dbg !445
  store i32 %call3.i, i32* %type.i, align 4, !dbg !445, !tbaa !258
  call void @llvm.dbg.value(metadata !263, i64 0, metadata !447) #5, !dbg !448
  %call4.i45 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 1, i32* %from.i, i32* %to.i, i32* %iterator.i, i32* %points_per_dim.i, i32 1, i32 1, i32* %type.i, i8** %data.i41, i32 1, double* %result) #6, !dbg !449
  call void @llvm.dbg.value(metadata !{i32 %call4.i45}, i64 0, metadata !450) #5, !dbg !449
  call void @llvm.lifetime.end(i64 4, i8* %1) #5, !dbg !451
  call void @llvm.lifetime.end(i64 4, i8* %2) #5, !dbg !451
  call void @llvm.lifetime.end(i64 4, i8* %3) #5, !dbg !451
  call void @llvm.lifetime.end(i64 4, i8* %4) #5, !dbg !451
  call void @llvm.lifetime.end(i64 4, i8* %5) #5, !dbg !451
  call void @llvm.lifetime.end(i64 8, i8* %6) #5, !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %call4.i45}, i64 0, metadata !95), !dbg !376
  br label %sw.epilog, !dbg !452

sw.epilog.thread:                                 ; preds = %for.body
  %call17 = call i32 @CCTK_Warn(i32 1, i32 310, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !453
  call void @llvm.dbg.value(metadata !350, i64 0, metadata !95), !dbg !454
  br label %if.end23, !dbg !455

sw.epilog:                                        ; preds = %sw.bb13, %PUGH_ReductionGA.exit
  %this_retval.0 = phi i32 [ %call4.i45, %sw.bb13 ], [ %call69.i, %PUGH_ReductionGA.exit ]
  %cmp18.not = icmp ne i32 %this_retval.0, 0, !dbg !455
  %notlhs = icmp sgt i32 %proc, -1, !dbg !455
  %notrhs = icmp ne i32 %call7, %proc, !dbg !455
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !455
  %brmerge = or i1 %cmp18.not, %or.cond.not, !dbg !455
  br i1 %brmerge, label %if.end23, label %if.then21, !dbg !455

if.then21:                                        ; preds = %sw.epilog
  %46 = trunc i64 %indvars.iv to i32, !dbg !456
  %mul = mul nsw i32 %46, %call2, !dbg !456
  %idx.ext = sext i32 %mul to i64, !dbg !456
  %add.ptr = getelementptr inbounds i8* %outvals, i64 %idx.ext, !dbg !456
  %call22 = call fastcc i32 @copy_real_to_outtype(i32 1, double* %result, i32 %outtype, i8* %add.ptr) #7, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !95), !dbg !456
  br label %if.end23, !dbg !458

if.end23:                                         ; preds = %sw.epilog, %sw.epilog.thread, %if.then21
  %this_retval.1 = phi i32 [ %call22, %if.then21 ], [ %this_retval.0, %sw.epilog ], [ -1, %sw.epilog.thread ]
  %or = or i32 %this_retval.1, %retval1.049, !dbg !459
  call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !96), !dbg !459
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !373
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !373
  %exitcond = icmp eq i32 %lftr.wideiv, %num_invars, !dbg !373
  br i1 %exitcond, label %return, label %for.body, !dbg !373

return:                                           ; preds = %if.end6, %if.end23, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then4 ], [ 0, %if.end6 ], [ %or, %if.end23 ]
  ret i32 %retval.0, !dbg !460
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #3

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !242, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !80, metadata !98, metadata !137, metadata !154}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c", metadata !"CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionArrays", metadata !"PUGH_ReductionArrays", metadata !"", i32 119, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*)* @PUGH_ReductionArrays, null, null, metadata !56, i32 130} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 130] [PUGH_ReductionArrays]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !23, metadata !14, metadata !14, metadata !42, metadata !14, metadata !14, metadata !43, metadata !52}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !18, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{i32 786454, metadata !1, null, metadata !"reduction_fn_t", i32 150, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [reduction_fn_t] [line 150, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !23, metadata !23, metadata !23, metadata !23, metadata !14, metadata !14, metadata !23, metadata !42, metadata !14, metadata !33}
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!57 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777335, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 119]
!58 = metadata !{i32 786689, metadata !11, metadata !"proc", metadata !5, i32 33554552, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 120]
!59 = metadata !{i32 786689, metadata !11, metadata !"num_dims", metadata !5, i32 50331769, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_dims] [line 121]
!60 = metadata !{i32 786689, metadata !11, metadata !"dims", metadata !5, i32 67108986, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dims] [line 122]
!61 = metadata !{i32 786689, metadata !11, metadata !"intype", metadata !5, i32 83886203, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [intype] [line 123]
!62 = metadata !{i32 786689, metadata !11, metadata !"num_inarrays", metadata !5, i32 100663420, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_inarrays] [line 124]
!63 = metadata !{i32 786689, metadata !11, metadata !"inarrays", metadata !5, i32 117440637, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inarrays] [line 125]
!64 = metadata !{i32 786689, metadata !11, metadata !"outtype", metadata !5, i32 134217854, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outtype] [line 126]
!65 = metadata !{i32 786689, metadata !11, metadata !"num_outvals", metadata !5, i32 150995071, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 127]
!66 = metadata !{i32 786689, metadata !11, metadata !"outvals", metadata !5, i32 167772288, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 128]
!67 = metadata !{i32 786689, metadata !11, metadata !"reduction_fn", metadata !5, i32 184549505, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reduction_fn] [line 129]
!68 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 131, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 131]
!69 = metadata !{i32 786688, metadata !11, metadata !"num_points", metadata !5, i32 131, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_points] [line 131]
!70 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 131, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 131]
!71 = metadata !{i32 786688, metadata !11, metadata !"from", metadata !5, i32 132, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 132]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !14, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from int]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!75 = metadata !{i32 786688, metadata !11, metadata !"to", metadata !5, i32 132, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [to] [line 132]
!76 = metadata !{i32 786688, metadata !11, metadata !"iterator", metadata !5, i32 132, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iterator] [line 132]
!77 = metadata !{i32 786688, metadata !11, metadata !"points_per_dim", metadata !5, i32 132, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 132]
!78 = metadata !{i32 786688, metadata !11, metadata !"intypes", metadata !5, i32 133, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intypes] [line 133]
!79 = metadata !{i32 786688, metadata !11, metadata !"buffer", metadata !5, i32 134, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 134]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionGVs", metadata !"PUGH_ReductionGVs", metadata !"", i32 264, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*)* @PUGH_ReductionGVs, null, null, metadata !83, i32 272} ; [ DW_TAG_subprogram ] [line 264] [def] [scope 272] [PUGH_ReductionGVs]
!81 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !23, metadata !14, metadata !14, metadata !43, metadata !52}
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!84 = metadata !{i32 786689, metadata !80, metadata !"GH", metadata !5, i32 16777480, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 264]
!85 = metadata !{i32 786689, metadata !80, metadata !"proc", metadata !5, i32 33554697, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 265]
!86 = metadata !{i32 786689, metadata !80, metadata !"num_invars", metadata !5, i32 50331914, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_invars] [line 266]
!87 = metadata !{i32 786689, metadata !80, metadata !"invars", metadata !5, i32 67109131, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invars] [line 267]
!88 = metadata !{i32 786689, metadata !80, metadata !"outtype", metadata !5, i32 83886348, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outtype] [line 268]
!89 = metadata !{i32 786689, metadata !80, metadata !"num_outvals", metadata !5, i32 100663565, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 269]
!90 = metadata !{i32 786689, metadata !80, metadata !"outvals", metadata !5, i32 117440782, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 270]
!91 = metadata !{i32 786689, metadata !80, metadata !"reduction_fn", metadata !5, i32 134217999, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reduction_fn] [line 271]
!92 = metadata !{i32 786688, metadata !80, metadata !"i", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 273]
!93 = metadata !{i32 786688, metadata !80, metadata !"myproc", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 273]
!94 = metadata !{i32 786688, metadata !80, metadata !"outtypesize", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outtypesize] [line 273]
!95 = metadata !{i32 786688, metadata !80, metadata !"this_retval", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_retval] [line 273]
!96 = metadata !{i32 786688, metadata !80, metadata !"retval", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 273]
!97 = metadata !{i32 786688, metadata !80, metadata !"result", metadata !5, i32 274, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 274]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"copy_real_to_outtype", metadata !"copy_real_to_outtype", metadata !"", i32 541, metadata !99, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, double*, i32, i8*)* @copy_real_to_outtype, null, null, metadata !101, i32 545} ; [ DW_TAG_subprogram ] [line 541] [local] [def] [scope 545] [copy_real_to_outtype]
!99 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{metadata !14, metadata !14, metadata !33, metadata !14, metadata !43}
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !113, metadata !115, metadata !119, metadata !121, metadata !125, metadata !127, metadata !131, metadata !133}
!102 = metadata !{i32 786689, metadata !98, metadata !"num_elems", metadata !5, i32 16777757, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_elems] [line 541]
!103 = metadata !{i32 786689, metadata !98, metadata !"inarray", metadata !5, i32 33554974, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inarray] [line 542]
!104 = metadata !{i32 786689, metadata !98, metadata !"outtype", metadata !5, i32 50332191, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outtype] [line 543]
!105 = metadata !{i32 786689, metadata !98, metadata !"outarray", metadata !5, i32 67109408, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outarray] [line 544]
!106 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !5, i32 546, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 546]
!107 = metadata !{i32 786688, metadata !98, metadata !"retval", metadata !5, i32 546, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 546]
!108 = metadata !{i32 786688, metadata !109, metadata !"_outarray", metadata !5, i32 553, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 553]
!109 = metadata !{i32 786443, metadata !1, metadata !98, i32 552, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_BYTE]
!111 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_BYTE", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [CCTK_BYTE] [line 59, size 0, align 0, offset 0] [from unsigned char]
!112 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!113 = metadata !{i32 786688, metadata !114, metadata !"_outarray", metadata !5, i32 563, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 563]
!114 = metadata !{i32 786443, metadata !1, metadata !98, i32 562, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!115 = metadata !{i32 786688, metadata !116, metadata !"_outarray", metadata !5, i32 574, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 574]
!116 = metadata !{i32 786443, metadata !1, metadata !98, i32 573, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!118 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!119 = metadata !{i32 786688, metadata !120, metadata !"_outarray", metadata !5, i32 586, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 586]
!120 = metadata !{i32 786443, metadata !1, metadata !98, i32 585, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!121 = metadata !{i32 786688, metadata !122, metadata !"_outarray", metadata !5, i32 598, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 598]
!122 = metadata !{i32 786443, metadata !1, metadata !98, i32 597, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!124 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!125 = metadata !{i32 786688, metadata !126, metadata !"_outarray", metadata !5, i32 609, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 609]
!126 = metadata !{i32 786443, metadata !1, metadata !98, i32 608, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!127 = metadata !{i32 786688, metadata !128, metadata !"_outarray", metadata !5, i32 620, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 620]
!128 = metadata !{i32 786443, metadata !1, metadata !98, i32 619, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!130 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!131 = metadata !{i32 786688, metadata !132, metadata !"_outarray", metadata !5, i32 632, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 632]
!132 = metadata !{i32 786443, metadata !1, metadata !98, i32 631, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!133 = metadata !{i32 786688, metadata !134, metadata !"_outarray", metadata !5, i32 644, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_outarray] [line 644]
!134 = metadata !{i32 786443, metadata !1, metadata !98, i32 643, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long double]
!136 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!137 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionScalar", metadata !"PUGH_ReductionScalar", metadata !"", i32 468, metadata !138, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !140, i32 473} ; [ DW_TAG_subprogram ] [line 468] [local] [def] [scope 473] [PUGH_ReductionScalar]
!138 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!139 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !33, metadata !52}
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!141 = metadata !{i32 786689, metadata !137, metadata !"GH", metadata !5, i32 16777684, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 468]
!142 = metadata !{i32 786689, metadata !137, metadata !"index", metadata !5, i32 33554901, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 469]
!143 = metadata !{i32 786689, metadata !137, metadata !"proc", metadata !5, i32 50332118, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 470]
!144 = metadata !{i32 786689, metadata !137, metadata !"outval", metadata !5, i32 67109335, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outval] [line 471]
!145 = metadata !{i32 786689, metadata !137, metadata !"reduction_fn", metadata !5, i32 83886552, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reduction_fn] [line 472]
!146 = metadata !{i32 786688, metadata !137, metadata !"retval", metadata !5, i32 474, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 474]
!147 = metadata !{i32 786688, metadata !137, metadata !"num_points", metadata !5, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_points] [line 476]
!148 = metadata !{i32 786688, metadata !137, metadata !"from", metadata !5, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 476]
!149 = metadata !{i32 786688, metadata !137, metadata !"to", metadata !5, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [to] [line 476]
!150 = metadata !{i32 786688, metadata !137, metadata !"iterator", metadata !5, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iterator] [line 476]
!151 = metadata !{i32 786688, metadata !137, metadata !"points_per_dim", metadata !5, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 476]
!152 = metadata !{i32 786688, metadata !137, metadata !"type", metadata !5, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 476]
!153 = metadata !{i32 786688, metadata !137, metadata !"data", metadata !5, i32 478, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 478]
!154 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionGA", metadata !"PUGH_ReductionGA", metadata !"", i32 371, metadata !138, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !155, i32 373} ; [ DW_TAG_subprogram ] [line 371] [local] [def] [scope 373] [PUGH_ReductionGA]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !238, metadata !239, metadata !240, metadata !241}
!156 = metadata !{i32 786689, metadata !154, metadata !"GH", metadata !5, i32 16777587, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 371]
!157 = metadata !{i32 786689, metadata !154, metadata !"index", metadata !5, i32 33554803, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 371]
!158 = metadata !{i32 786689, metadata !154, metadata !"proc", metadata !5, i32 50332019, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 371]
!159 = metadata !{i32 786689, metadata !154, metadata !"outval", metadata !5, i32 67109235, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outval] [line 371]
!160 = metadata !{i32 786689, metadata !154, metadata !"reduction_fn", metadata !5, i32 83886452, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reduction_fn] [line 372]
!161 = metadata !{i32 786688, metadata !154, metadata !"i", metadata !5, i32 374, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 374]
!162 = metadata !{i32 786688, metadata !154, metadata !"stagger_index", metadata !5, i32 374, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagger_index] [line 374]
!163 = metadata !{i32 786688, metadata !154, metadata !"num_points", metadata !5, i32 374, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_points] [line 374]
!164 = metadata !{i32 786688, metadata !154, metadata !"dir_points", metadata !5, i32 374, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir_points] [line 374]
!165 = metadata !{i32 786688, metadata !154, metadata !"retval", metadata !5, i32 374, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 374]
!166 = metadata !{i32 786688, metadata !154, metadata !"GA", metadata !5, i32 375, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 375]
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!168 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!169 = metadata !{i32 786451, metadata !170, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !171, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!170 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!171 = metadata !{metadata !172, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !211, metadata !220, metadata !233, metadata !234, metadata !235, metadata !236}
!172 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!174 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!175 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!176 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!177 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !43} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!178 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!179 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!180 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !43} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!181 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!182 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!183 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !184} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!185 = metadata !{i32 786454, metadata !186, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!186 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!187 = metadata !{i32 786451, metadata !170, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !188, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !208, metadata !210}
!189 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!190 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!191 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!192 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !193} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!194 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !193} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!195 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!196 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!197 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!198 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!199 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !193} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!200 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!201 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!202 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!203 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !204} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !23, metadata !205, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!205 = metadata !{metadata !206, metadata !207}
!206 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!207 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!208 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !209} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!209 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !193, metadata !205, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!210 = metadata !{i32 786445, metadata !170, metadata !187, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !209} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!211 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !212} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!213 = metadata !{i32 786454, metadata !186, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!214 = metadata !{i32 786451, metadata !170, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219}
!216 = metadata !{i32 786445, metadata !170, metadata !214, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!217 = metadata !{i32 786445, metadata !170, metadata !214, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!218 = metadata !{i32 786445, metadata !170, metadata !214, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !193} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!219 = metadata !{i32 786445, metadata !170, metadata !214, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!220 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !221} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!221 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !222} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!222 = metadata !{i32 786454, metadata !170, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!223 = metadata !{i32 786451, metadata !170, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232}
!225 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!226 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!227 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!228 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!229 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!230 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!231 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!232 = metadata !{i32 786445, metadata !170, metadata !223, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!233 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !221} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!234 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!235 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!236 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !237} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!237 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!238 = metadata !{i32 786688, metadata !154, metadata !"from", metadata !5, i32 376, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [from] [line 376]
!239 = metadata !{i32 786688, metadata !154, metadata !"to", metadata !5, i32 376, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [to] [line 376]
!240 = metadata !{i32 786688, metadata !154, metadata !"iterator", metadata !5, i32 376, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iterator] [line 376]
!241 = metadata !{i32 786688, metadata !154, metadata !"points_per_dim", metadata !5, i32 376, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 376]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 18, metadata !8, i32 1, i32 1, null, null}
!244 = metadata !{i32 20, i32 0, metadata !4, null}
!245 = metadata !{i32 119, i32 0, metadata !11, null}
!246 = metadata !{i32 120, i32 0, metadata !11, null}
!247 = metadata !{i32 121, i32 0, metadata !11, null}
!248 = metadata !{i32 122, i32 0, metadata !11, null}
!249 = metadata !{i32 123, i32 0, metadata !11, null}
!250 = metadata !{i32 124, i32 0, metadata !11, null}
!251 = metadata !{i32 125, i32 0, metadata !11, null}
!252 = metadata !{i32 126, i32 0, metadata !11, null}
!253 = metadata !{i32 127, i32 0, metadata !11, null}
!254 = metadata !{i32 128, i32 0, metadata !11, null}
!255 = metadata !{i32 129, i32 0, metadata !11, null}
!256 = metadata !{i32 132, i32 0, metadata !11, null}
!257 = metadata !{i32 137, i32 0, metadata !11, null}
!258 = metadata !{metadata !"int", metadata !259}
!259 = metadata !{metadata !"omnipotent char", metadata !260}
!260 = metadata !{metadata !"Simple C/C++ TBAA"}
!261 = metadata !{i32 138, i32 0, metadata !11, null}
!262 = metadata !{i32 139, i32 0, metadata !11, null}
!263 = metadata !{i32 1}
!264 = metadata !{i32 141, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !11, i32 141, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!266 = metadata !{i32 143, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 142, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!268 = metadata !{i32 146, i32 0, metadata !11, null}
!269 = metadata !{i32 148, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !11, i32 147, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!271 = metadata !{i32 150, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !270, i32 149, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!273 = metadata !{i32 155, i32 0, metadata !272, null}
!274 = metadata !{i32 157, i32 0, metadata !270, null}
!275 = metadata !{i32 158, i32 0, metadata !270, null}
!276 = metadata !{i32 159, i32 0, metadata !11, null}
!277 = metadata !{metadata !"any pointer", metadata !259}
!278 = metadata !{i32 163, i32 0, metadata !11, null}
!279 = metadata !{i32 164, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !11, i32 164, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!281 = metadata !{i32 166, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !280, i32 165, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!283 = metadata !{i32 169, i32 0, metadata !11, null}
!284 = metadata !{i32 172, i32 0, metadata !11, null}
!285 = metadata !{i32 186, i32 0, metadata !11, null}
!286 = metadata !{i32 189, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !11, i32 187, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!288 = metadata !{i32 193, i32 0, metadata !287, null}
!289 = metadata !{i32 195, i32 0, metadata !11, null}
!290 = metadata !{i32 196, i32 0, metadata !11, null}
!291 = metadata !{i32 198, i32 0, metadata !11, null}
!292 = metadata !{i32 199, i32 0, metadata !11, null}
!293 = metadata !{i32 541, i32 0, metadata !98, null}
!294 = metadata !{i32 542, i32 0, metadata !98, null}
!295 = metadata !{i32 543, i32 0, metadata !98, null}
!296 = metadata !{i32 544, i32 0, metadata !98, null}
!297 = metadata !{i32 549, i32 0, metadata !98, null}
!298 = metadata !{i32 551, i32 0, metadata !98, null}
!299 = metadata !{i32 556, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !109, i32 556, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!301 = metadata !{i32 558, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !300, i32 557, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!303 = metadata !{metadata !"double", metadata !259}
!304 = metadata !{i32 563, i32 0, metadata !114, null}
!305 = metadata !{i32 566, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !114, i32 566, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!307 = metadata !{i32 568, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !306, i32 567, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!309 = metadata !{i32 574, i32 0, metadata !116, null}
!310 = metadata !{i32 577, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !116, i32 577, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!312 = metadata !{i32 579, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !311, i32 578, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!314 = metadata !{metadata !"short", metadata !259}
!315 = metadata !{i32 586, i32 0, metadata !120, null}
!316 = metadata !{i32 589, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !120, i32 589, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!318 = metadata !{i32 591, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !317, i32 590, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!320 = metadata !{i32 598, i32 0, metadata !122, null}
!321 = metadata !{i32 601, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !122, i32 601, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!323 = metadata !{i32 603, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !322, i32 602, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!325 = metadata !{metadata !"long", metadata !259}
!326 = metadata !{i32 609, i32 0, metadata !126, null}
!327 = metadata !{i32 612, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !126, i32 612, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!329 = metadata !{i32 614, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !328, i32 613, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!331 = metadata !{i32 620, i32 0, metadata !128, null}
!332 = metadata !{i32 623, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !128, i32 623, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!334 = metadata !{i32 625, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !333, i32 624, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!336 = metadata !{metadata !"float", metadata !259}
!337 = metadata !{i32 632, i32 0, metadata !132, null}
!338 = metadata !{i32 635, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !132, i32 635, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!340 = metadata !{i32 637, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 636, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!342 = metadata !{i32 644, i32 0, metadata !134, null}
!343 = metadata !{i32 647, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !134, i32 647, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!345 = metadata !{i32 649, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !344, i32 648, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!347 = metadata !{metadata !"long double", metadata !259}
!348 = metadata !{i32 655, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !98, i32 654, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!350 = metadata !{i32 -1}
!351 = metadata !{i32 656, i32 0, metadata !349, null}
!352 = metadata !{i32 659, i32 0, metadata !98, null}
!353 = metadata !{i32 264, i32 0, metadata !80, null}
!354 = metadata !{i32 265, i32 0, metadata !80, null}
!355 = metadata !{i32 266, i32 0, metadata !80, null}
!356 = metadata !{i32 267, i32 0, metadata !80, null}
!357 = metadata !{i32 268, i32 0, metadata !80, null}
!358 = metadata !{i32 269, i32 0, metadata !80, null}
!359 = metadata !{i32 270, i32 0, metadata !80, null}
!360 = metadata !{i32 271, i32 0, metadata !80, null}
!361 = metadata !{i32 274, i32 0, metadata !80, null}
!362 = metadata !{i32 277, i32 0, metadata !80, null}
!363 = metadata !{i32 279, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !80, i32 278, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!365 = metadata !{i32 281, i32 0, metadata !364, null}
!366 = metadata !{i32 284, i32 0, metadata !80, null}
!367 = metadata !{i32 285, i32 0, metadata !80, null}
!368 = metadata !{i32 287, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !80, i32 286, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!370 = metadata !{i32 288, i32 0, metadata !369, null}
!371 = metadata !{i32 291, i32 0, metadata !80, null}
!372 = metadata !{i32 292, i32 0, metadata !80, null}
!373 = metadata !{i32 294, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !80, i32 294, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!375 = metadata !{i32 468, i32 0, metadata !137, metadata !376}
!376 = metadata !{i32 305, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !378, i32 297, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!378 = metadata !{i32 786443, metadata !1, metadata !374, i32 295, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!379 = metadata !{i32 296, i32 0, metadata !378, null}
!380 = metadata !{i32 300, i32 0, metadata !377, null}
!381 = metadata !{i32 786689, metadata !154, metadata !"GH", metadata !5, i32 16777587, metadata !15, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [GH] [line 371]
!382 = metadata !{i32 371, i32 0, metadata !154, metadata !380}
!383 = metadata !{i32 786689, metadata !154, metadata !"index", metadata !5, i32 33554803, metadata !14, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [index] [line 371]
!384 = metadata !{i32 786689, metadata !154, metadata !"proc", metadata !5, i32 50332019, metadata !14, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [proc] [line 371]
!385 = metadata !{i32 786689, metadata !154, metadata !"outval", metadata !5, i32 67109235, metadata !33, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [outval] [line 371]
!386 = metadata !{i32 786689, metadata !154, metadata !"reduction_fn", metadata !5, i32 83886452, metadata !52, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [reduction_fn] [line 372]
!387 = metadata !{i32 372, i32 0, metadata !154, metadata !380}
!388 = metadata !{i32 380, i32 0, metadata !154, metadata !380}
!389 = metadata !{i32 383, i32 0, metadata !154, metadata !380}
!390 = metadata !{i32 786688, metadata !154, metadata !"from", metadata !5, i32 376, metadata !23, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [from] [line 376]
!391 = metadata !{i32 384, i32 0, metadata !154, metadata !380}
!392 = metadata !{i32 786688, metadata !154, metadata !"to", metadata !5, i32 376, metadata !23, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [to] [line 376]
!393 = metadata !{i32 385, i32 0, metadata !154, metadata !380}
!394 = metadata !{i32 786688, metadata !154, metadata !"iterator", metadata !5, i32 376, metadata !23, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [iterator] [line 376]
!395 = metadata !{i32 386, i32 0, metadata !154, metadata !380}
!396 = metadata !{i32 786688, metadata !154, metadata !"points_per_dim", metadata !5, i32 376, metadata !23, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 376]
!397 = metadata !{i32 786688, metadata !154, metadata !"num_points", metadata !5, i32 374, metadata !14, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [num_points] [line 374]
!398 = metadata !{i32 390, i32 0, metadata !154, metadata !380}
!399 = metadata !{i32 391, i32 0, metadata !154, metadata !380}
!400 = metadata !{i32 786688, metadata !154, metadata !"i", metadata !5, i32 374, metadata !14, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [i] [line 374]
!401 = metadata !{i32 392, i32 0, metadata !402, metadata !380}
!402 = metadata !{i32 786443, metadata !1, metadata !154, i32 392, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!403 = metadata !{i32 394, i32 0, metadata !404, metadata !380}
!404 = metadata !{i32 786443, metadata !1, metadata !402, i32 393, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!405 = metadata !{i32 396, i32 0, metadata !404, metadata !380}
!406 = metadata !{i32 786688, metadata !154, metadata !"stagger_index", metadata !5, i32 374, metadata !14, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [stagger_index] [line 374]
!407 = metadata !{i32 397, i32 0, metadata !404, metadata !380}
!408 = metadata !{i32 399, i32 0, metadata !404, metadata !380}
!409 = metadata !{i32 786688, metadata !154, metadata !"dir_points", metadata !5, i32 374, metadata !14, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [dir_points] [line 374]
!410 = metadata !{i32 400, i32 0, metadata !404, metadata !380}
!411 = metadata !{i32 402, i32 0, metadata !412, metadata !380}
!412 = metadata !{i32 786443, metadata !1, metadata !404, i32 401, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!413 = metadata !{i32 403, i32 0, metadata !412, metadata !380}
!414 = metadata !{i32 404, i32 0, metadata !404, metadata !380}
!415 = metadata !{i32 408, i32 0, metadata !404, metadata !380}
!416 = metadata !{i32 410, i32 0, metadata !404, metadata !380}
!417 = metadata !{i32 412, i32 0, metadata !418, metadata !380}
!418 = metadata !{i32 786443, metadata !1, metadata !404, i32 411, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!419 = metadata !{i32 413, i32 0, metadata !418, metadata !380}
!420 = metadata !{i32 417, i32 0, metadata !154, metadata !380}
!421 = metadata !{i32 786688, metadata !154, metadata !"retval", metadata !5, i32 374, metadata !14, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [retval] [line 374]
!422 = metadata !{i32 422, i32 0, metadata !154, metadata !380}
!423 = metadata !{i32 302, i32 0, metadata !377, null}
!424 = metadata !{i32 786689, metadata !137, metadata !"GH", metadata !5, i32 16777684, metadata !15, i32 0, metadata !376} ; [ DW_TAG_arg_variable ] [GH] [line 468]
!425 = metadata !{i32 786689, metadata !137, metadata !"index", metadata !5, i32 33554901, metadata !14, i32 0, metadata !376} ; [ DW_TAG_arg_variable ] [index] [line 469]
!426 = metadata !{i32 469, i32 0, metadata !137, metadata !376}
!427 = metadata !{i32 786689, metadata !137, metadata !"proc", metadata !5, i32 50332118, metadata !14, i32 0, metadata !376} ; [ DW_TAG_arg_variable ] [proc] [line 470]
!428 = metadata !{i32 470, i32 0, metadata !137, metadata !376}
!429 = metadata !{i32 786689, metadata !137, metadata !"outval", metadata !5, i32 67109335, metadata !33, i32 0, metadata !376} ; [ DW_TAG_arg_variable ] [outval] [line 471]
!430 = metadata !{i32 471, i32 0, metadata !137, metadata !376}
!431 = metadata !{i32 786689, metadata !137, metadata !"reduction_fn", metadata !5, i32 83886552, metadata !52, i32 0, metadata !376} ; [ DW_TAG_arg_variable ] [reduction_fn] [line 472]
!432 = metadata !{i32 472, i32 0, metadata !137, metadata !376}
!433 = metadata !{i32 476, i32 0, metadata !137, metadata !376}
!434 = metadata !{i32 478, i32 0, metadata !137, metadata !376}
!435 = metadata !{i32 481, i32 0, metadata !137, metadata !376}
!436 = metadata !{i32 786688, metadata !137, metadata !"data", metadata !5, i32 478, metadata !43, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [data] [line 478]
!437 = metadata !{i32 786688, metadata !137, metadata !"from", metadata !5, i32 476, metadata !14, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [from] [line 476]
!438 = metadata !{i32 483, i32 0, metadata !137, metadata !376}
!439 = metadata !{i32 786688, metadata !137, metadata !"to", metadata !5, i32 476, metadata !14, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [to] [line 476]
!440 = metadata !{i32 484, i32 0, metadata !137, metadata !376}
!441 = metadata !{i32 786688, metadata !137, metadata !"iterator", metadata !5, i32 476, metadata !14, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [iterator] [line 476]
!442 = metadata !{i32 485, i32 0, metadata !137, metadata !376}
!443 = metadata !{i32 786688, metadata !137, metadata !"points_per_dim", metadata !5, i32 476, metadata !14, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 476]
!444 = metadata !{i32 486, i32 0, metadata !137, metadata !376}
!445 = metadata !{i32 487, i32 0, metadata !137, metadata !376}
!446 = metadata !{i32 786688, metadata !137, metadata !"type", metadata !5, i32 476, metadata !14, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [type] [line 476]
!447 = metadata !{i32 786688, metadata !137, metadata !"num_points", metadata !5, i32 476, metadata !14, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [num_points] [line 476]
!448 = metadata !{i32 489, i32 0, metadata !137, metadata !376}
!449 = metadata !{i32 492, i32 0, metadata !137, metadata !376}
!450 = metadata !{i32 786688, metadata !137, metadata !"retval", metadata !5, i32 474, metadata !14, i32 0, metadata !376} ; [ DW_TAG_auto_variable ] [retval] [line 474]
!451 = metadata !{i32 496, i32 0, metadata !137, metadata !376}
!452 = metadata !{i32 307, i32 0, metadata !377, null}
!453 = metadata !{i32 310, i32 0, metadata !377, null}
!454 = metadata !{i32 311, i32 0, metadata !377, null}
!455 = metadata !{i32 315, i32 0, metadata !378, null}
!456 = metadata !{i32 318, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !378, i32 316, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c]
!458 = metadata !{i32 320, i32 0, metadata !457, null}
!459 = metadata !{i32 322, i32 0, metadata !378, null}
!460 = metadata !{i32 326, i32 0, metadata !80, null}
